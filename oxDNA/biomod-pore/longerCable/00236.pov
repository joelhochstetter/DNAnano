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
	<24.030573, 35.250206, 35.032696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389034, 35.154224, 35.182003>,  <24.604111, 35.096638, 35.271587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389034, 35.154224, 35.182003>,  <24.030573, 35.250206, 35.032696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.389034, 35.154224, 35.182003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439782, 0.592379, -0.675040,
		-0.059142, 0.769098, 0.636389,
		0.896155, -0.239949, 0.373270,
		24.657881, 35.082241, 35.293983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.486986, 35.899967, 35.050140>,  <24.030573, 35.250206, 35.032696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.486986, 35.899967, 35.050140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.669046, 35.546967, 35.002769>,  <24.778282, 35.335167, 34.974346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.669046, 35.546967, 35.002769>,  <24.486986, 35.899967, 35.050140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.669046, 35.546967, 35.002769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518981, 0.371007, -0.770073,
		0.723529, 0.289038, 0.626867,
		0.455153, -0.882502, -0.118429,
		24.805592, 35.282215, 34.967239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.128271, 36.063740, 34.982807>,  <24.486986, 35.899967, 35.050140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.128271, 36.063740, 34.982807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.106831, 35.699402, 34.819103>,  <25.093966, 35.480801, 34.720879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.106831, 35.699402, 34.819103>,  <25.128271, 36.063740, 34.982807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.106831, 35.699402, 34.819103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598234, 0.298869, -0.743501,
		0.799527, -0.284689, 0.528875,
		-0.053602, -0.910840, -0.409264,
		25.090750, 35.426151, 34.696323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851768, 35.814842, 34.830158>,  <25.128271, 36.063740, 34.982807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851768, 35.814842, 34.830158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570717, 35.644611, 34.602055>,  <25.402086, 35.542473, 34.465191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570717, 35.644611, 34.602055>,  <25.851768, 35.814842, 34.830158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.570717, 35.644611, 34.602055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464093, 0.333412, -0.820643,
		0.539381, -0.841260, -0.036756,
		-0.702628, -0.425580, -0.570259,
		25.359928, 35.516937, 34.430977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163717, 35.459118, 34.335712>,  <25.851768, 35.814842, 34.830158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163717, 35.459118, 34.335712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808058, 35.485489, 34.154575>,  <25.594662, 35.501312, 34.045895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.808058, 35.485489, 34.154575>,  <26.163717, 35.459118, 34.335712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808058, 35.485489, 34.154575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456458, 0.198141, -0.867402,
		0.032539, -0.977954, -0.206272,
		-0.889150, 0.065930, -0.452842,
		25.541313, 35.505268, 34.018723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213593, 35.201279, 33.633972>,  <26.163717, 35.459118, 34.335712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213593, 35.201279, 33.633972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920671, 35.469837, 33.679497>,  <25.744919, 35.630974, 33.706814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920671, 35.469837, 33.679497>,  <26.213593, 35.201279, 33.633972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920671, 35.469837, 33.679497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336072, 0.501681, -0.797102,
		-0.592271, -0.545472, -0.593022,
		-0.732305, 0.671399, 0.113813,
		25.700979, 35.671257, 33.713642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792461, 35.365589, 32.968384>,  <26.213593, 35.201279, 33.633972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792461, 35.365589, 32.968384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812441, 35.681499, 33.212929>,  <25.824429, 35.871044, 33.359657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812441, 35.681499, 33.212929>,  <25.792461, 35.365589, 32.968384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.812441, 35.681499, 33.212929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449908, 0.528710, -0.719756,
		-0.891677, 0.311007, -0.328917,
		0.049947, 0.789772, 0.611363,
		25.827425, 35.918430, 33.396339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658705, 35.941017, 32.525627>,  <25.792461, 35.365589, 32.968384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658705, 35.941017, 32.525627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822680, 36.093925, 32.856884>,  <25.921064, 36.185673, 33.055637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822680, 36.093925, 32.856884>,  <25.658705, 35.941017, 32.525627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.822680, 36.093925, 32.856884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360742, 0.765958, -0.532140,
		-0.837744, 0.516890, 0.176094,
		0.409938, 0.382273, 0.828142,
		25.945662, 36.208607, 33.105328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524103, 36.720364, 32.429825>,  <25.658705, 35.941017, 32.525627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524103, 36.720364, 32.429825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827122, 36.695850, 32.689785>,  <26.008934, 36.681145, 32.845760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827122, 36.695850, 32.689785>,  <25.524103, 36.720364, 32.429825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827122, 36.695850, 32.689785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479940, 0.727115, -0.490878,
		-0.442469, 0.683775, 0.580235,
		0.757548, -0.061280, 0.649897,
		26.054386, 36.677467, 32.884754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648554, 37.383472, 32.525047>,  <25.524103, 36.720364, 32.429825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648554, 37.383472, 32.525047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986139, 37.209217, 32.650230>,  <26.188690, 37.104664, 32.725342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986139, 37.209217, 32.650230>,  <25.648554, 37.383472, 32.525047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986139, 37.209217, 32.650230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536131, 0.703640, -0.466321,
		-0.017060, 0.561343, 0.827407,
		0.843963, -0.435643, 0.312957,
		26.239328, 37.078526, 32.744118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059835, 37.942612, 32.829216>,  <25.648554, 37.383472, 32.525047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059835, 37.942612, 32.829216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273943, 37.641033, 32.676872>,  <26.402409, 37.460087, 32.585468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273943, 37.641033, 32.676872>,  <26.059835, 37.942612, 32.829216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273943, 37.641033, 32.676872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443492, 0.634589, -0.632939,
		0.718889, 0.169887, 0.674046,
		0.535270, -0.753946, -0.380856,
		26.434525, 37.414848, 32.562614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822512, 38.103439, 32.909481>,  <26.059835, 37.942612, 32.829216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822512, 38.103439, 32.909481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749310, 37.840664, 32.616924>,  <26.705387, 37.682999, 32.441391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749310, 37.840664, 32.616924>,  <26.822512, 38.103439, 32.909481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749310, 37.840664, 32.616924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475787, 0.591848, -0.650648,
		0.860311, -0.467061, 0.204252,
		-0.183006, -0.656940, -0.731395,
		26.694408, 37.643581, 32.397507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424870, 37.757591, 32.547764>,  <26.822512, 38.103439, 32.909481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424870, 37.757591, 32.547764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107868, 37.824768, 32.313248>,  <26.917667, 37.865074, 32.172539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107868, 37.824768, 32.313248>,  <27.424870, 37.757591, 32.547764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107868, 37.824768, 32.313248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552303, 0.605358, -0.573152,
		0.258656, -0.778033, -0.572505,
		-0.792501, 0.167947, -0.586289,
		26.870117, 37.875153, 32.137360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465963, 37.465900, 31.730537>,  <27.424870, 37.757591, 32.547764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465963, 37.465900, 31.730537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261398, 37.800541, 31.809076>,  <27.138659, 38.001328, 31.856199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261398, 37.800541, 31.809076>,  <27.465963, 37.465900, 31.730537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261398, 37.800541, 31.809076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517786, 0.482351, -0.706566,
		-0.685825, -0.259680, -0.679861,
		-0.511412, 0.836603, 0.196349,
		27.107975, 38.051521, 31.867981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189125, 37.113266, 31.196417>,  <27.465963, 37.465900, 31.730537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189125, 37.113266, 31.196417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.050064, 36.755775, 31.309835>,  <26.966627, 36.541283, 31.377886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.050064, 36.755775, 31.309835>,  <27.189125, 37.113266, 31.196417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050064, 36.755775, 31.309835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937123, -0.341079, 0.073937,
		0.030632, 0.291421, 0.956104,
		-0.347654, -0.893722, 0.283545,
		26.945768, 36.487659, 31.394899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.478769, 36.765747, 31.885231>,  <27.189125, 37.113266, 31.196417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.478769, 36.765747, 31.885231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374531, 36.516426, 31.590321>,  <27.311987, 36.366833, 31.413374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374531, 36.516426, 31.590321>,  <27.478769, 36.765747, 31.885231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374531, 36.516426, 31.590321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922016, -0.387150, 0.001410,
		-0.286316, -0.679415, 0.675588,
		-0.260596, -0.623306, -0.737278,
		27.296352, 36.329433, 31.369137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309095, 36.369190, 32.407242>,  <27.478769, 36.765747, 31.885231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309095, 36.369190, 32.407242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077639, 36.689030, 32.471504>,  <26.938765, 36.880936, 32.510059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077639, 36.689030, 32.471504>,  <27.309095, 36.369190, 32.407242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077639, 36.689030, 32.471504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307215, -0.396164, 0.865259,
		0.755507, 0.451321, 0.474887,
		-0.578643, 0.799602, 0.160652,
		26.904045, 36.928909, 32.519699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401329, 36.546581, 33.113483>,  <27.309095, 36.369190, 32.407242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401329, 36.546581, 33.113483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045746, 36.707726, 33.026348>,  <26.832396, 36.804413, 32.974068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045746, 36.707726, 33.026348>,  <27.401329, 36.546581, 33.113483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045746, 36.707726, 33.026348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424879, -0.547883, 0.720626,
		0.170962, 0.733163, 0.658213,
		-0.888960, 0.402861, -0.217838,
		26.779058, 36.828583, 32.960999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026178, 36.607941, 33.714756>,  <27.401329, 36.546581, 33.113483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026178, 36.607941, 33.714756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716476, 36.650776, 33.465256>,  <26.530655, 36.676476, 33.315556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716476, 36.650776, 33.465256>,  <27.026178, 36.607941, 33.714756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716476, 36.650776, 33.465256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581369, -0.509800, 0.634124,
		-0.250082, 0.853602, 0.456971,
		-0.774254, 0.107086, -0.623750,
		26.484200, 36.682903, 33.278130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497595, 37.029831, 34.008942>,  <27.026178, 36.607941, 33.714756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497595, 37.029831, 34.008942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346277, 36.771049, 33.744110>,  <26.255486, 36.615780, 33.585213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.346277, 36.771049, 33.744110>,  <26.497595, 37.029831, 34.008942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.346277, 36.771049, 33.744110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518087, -0.444745, 0.730608,
		-0.767124, 0.619399, -0.166932,
		-0.378296, -0.646952, -0.662077,
		26.232788, 36.576965, 33.545486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098358, 37.287724, 34.549767>,  <26.497595, 37.029831, 34.008942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098358, 37.287724, 34.549767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012682, 37.402222, 34.176205>,  <25.961277, 37.470921, 33.952068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.012682, 37.402222, 34.176205>,  <26.098358, 37.287724, 34.549767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012682, 37.402222, 34.176205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973907, -0.136017, 0.181672,
		-0.075025, 0.948452, 0.307913,
		-0.214188, 0.286249, -0.933908,
		25.948425, 37.488098, 33.896030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680038, 36.987087, 34.079082>,  <26.098358, 37.287724, 34.549767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.680038, 36.987087, 34.079082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.728310, 36.649750, 33.869621>,  <25.757273, 36.447350, 33.743942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.728310, 36.649750, 33.869621>,  <25.680038, 36.987087, 34.079082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.728310, 36.649750, 33.869621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635375, -0.470921, 0.611990,
		-0.762716, 0.258865, -0.592666,
		0.120676, -0.843340, -0.523655,
		25.764513, 36.396748, 33.712524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.058552, 36.770821, 33.842674>,  <25.680038, 36.987087, 34.079082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.058552, 36.770821, 33.842674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254730, 36.422455, 33.830235>,  <25.372437, 36.213436, 33.822769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.254730, 36.422455, 33.830235>,  <25.058552, 36.770821, 33.842674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.254730, 36.422455, 33.830235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707980, -0.418992, 0.568516,
		-0.508163, -0.256805, -0.822084,
		0.490444, -0.870917, -0.031103,
		25.401863, 36.161179, 33.820904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.621815, 36.317825, 33.636761>,  <25.058552, 36.770821, 33.842674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.621815, 36.317825, 33.636761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894493, 36.103928, 33.836494>,  <25.058100, 35.975590, 33.956337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894493, 36.103928, 33.836494>,  <24.621815, 36.317825, 33.636761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.894493, 36.103928, 33.836494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712965, -0.332331, 0.617444,
		-0.164229, -0.776920, -0.607802,
		0.681696, -0.534744, 0.499339,
		25.099003, 35.943504, 33.986298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.301594, 35.606678, 33.700851>,  <24.621815, 36.317825, 33.636761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.301594, 35.606678, 33.700851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.690989, 35.552814, 33.774815>,  <24.924625, 35.520496, 33.819195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.690989, 35.552814, 33.774815>,  <24.301594, 35.606678, 33.700851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.690989, 35.552814, 33.774815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222560, -0.744285, 0.629688,
		0.052836, -0.654147, -0.754520,
		0.973486, -0.134656, 0.184912,
		24.983034, 35.512417, 33.830288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.471087, 34.854858, 33.619701>,  <24.301594, 35.606678, 33.700851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.471087, 34.854858, 33.619701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.747032, 35.035946, 33.845669>,  <24.912600, 35.144596, 33.981251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.747032, 35.035946, 33.845669>,  <24.471087, 34.854858, 33.619701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.747032, 35.035946, 33.845669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234844, -0.598197, 0.766165,
		0.684789, -0.661218, -0.306358,
		0.689865, 0.452715, 0.564921,
		24.953991, 35.171761, 34.015144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.843668, 34.342636, 34.036686>,  <24.471087, 34.854858, 33.619701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.843668, 34.342636, 34.036686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933712, 34.677921, 34.235374>,  <24.987738, 34.879093, 34.354588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933712, 34.677921, 34.235374>,  <24.843668, 34.342636, 34.036686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.933712, 34.677921, 34.235374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127290, -0.480133, 0.867911,
		0.965983, -0.258602, -0.001387,
		0.225110, 0.838211, 0.496718,
		25.001245, 34.929386, 34.384388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.392422, 34.341610, 34.474831>,  <24.843668, 34.342636, 34.036686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.392422, 34.341610, 34.474831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149168, 34.613731, 34.638470>,  <25.003216, 34.777004, 34.736652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.149168, 34.613731, 34.638470>,  <25.392422, 34.341610, 34.474831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.149168, 34.613731, 34.638470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053745, -0.549444, 0.833800,
		0.792013, 0.485075, 0.370698,
		-0.608134, 0.680304, 0.409097,
		24.966728, 34.817822, 34.761200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755442, 34.562592, 35.029537>,  <25.392422, 34.341610, 34.474831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.755442, 34.562592, 35.029537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367308, 34.556545, 35.126057>,  <25.134428, 34.552917, 35.183968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367308, 34.556545, 35.126057>,  <25.755442, 34.562592, 35.029537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367308, 34.556545, 35.126057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202910, -0.593567, 0.778785,
		0.131450, 0.804643, 0.579026,
		-0.970334, -0.015119, 0.241294,
		25.076208, 34.552010, 35.198444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.231472, 34.297596, 35.589809>,  <25.755442, 34.562592, 35.029537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.231472, 34.297596, 35.589809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423218, 34.635174, 35.686119>,  <26.538265, 34.837719, 35.743904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423218, 34.635174, 35.686119>,  <26.231472, 34.297596, 35.589809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423218, 34.635174, 35.686119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594959, 0.110822, 0.796079,
		0.645163, -0.524860, 0.555236,
		0.479363, 0.843943, 0.240773,
		26.567026, 34.888355, 35.758350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285124, 34.308006, 36.288250>,  <26.231472, 34.297596, 35.589809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285124, 34.308006, 36.288250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345848, 34.692543, 36.196358>,  <26.382282, 34.923264, 36.141224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345848, 34.692543, 36.196358>,  <26.285124, 34.308006, 36.288250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.345848, 34.692543, 36.196358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551705, 0.275265, 0.787306,
		0.820107, 0.007223, 0.572165,
		0.151810, 0.961341, -0.229732,
		26.391392, 34.980946, 36.127438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619387, 34.619450, 36.812950>,  <26.285124, 34.308006, 36.288250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619387, 34.619450, 36.812950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416410, 34.908340, 36.624954>,  <26.294624, 35.081676, 36.512157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416410, 34.908340, 36.624954>,  <26.619387, 34.619450, 36.812950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.416410, 34.908340, 36.624954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483995, 0.212372, 0.848909,
		0.712918, 0.658245, 0.241788,
		-0.507442, 0.722227, -0.469991,
		26.264177, 35.125008, 36.483955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520735, 35.116852, 37.353054>,  <26.619387, 34.619450, 36.812950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520735, 35.116852, 37.353054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247004, 35.202702, 37.074306>,  <26.082764, 35.254211, 36.907059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247004, 35.202702, 37.074306>,  <26.520735, 35.116852, 37.353054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247004, 35.202702, 37.074306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593178, 0.391955, 0.703215,
		0.424067, 0.894600, -0.140918,
		-0.684330, 0.214621, -0.696872,
		26.041704, 35.267086, 36.865246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442568, 35.858250, 37.448864>,  <26.520735, 35.116852, 37.353054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442568, 35.858250, 37.448864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117283, 35.706081, 37.272697>,  <25.922112, 35.614780, 37.167000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117283, 35.706081, 37.272697>,  <26.442568, 35.858250, 37.448864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.117283, 35.706081, 37.272697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563608, 0.326241, 0.758889,
		-0.145018, 0.865358, -0.479713,
		-0.813213, -0.380423, -0.440412,
		25.873320, 35.591953, 37.140575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968960, 36.425404, 37.458172>,  <26.442568, 35.858250, 37.448864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.968960, 36.425404, 37.458172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769793, 36.079006, 37.439705>,  <25.650293, 35.871166, 37.428623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769793, 36.079006, 37.439705>,  <25.968960, 36.425404, 37.458172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769793, 36.079006, 37.439705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548198, 0.273049, 0.790521,
		-0.671981, 0.418923, -0.610692,
		-0.497916, -0.865996, -0.046169,
		25.620419, 35.819206, 37.425854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.505167, 36.577137, 36.820103>,  <25.968960, 36.425404, 37.458172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.505167, 36.577137, 36.820103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.299770, 36.243210, 36.899509>,  <25.176533, 36.042854, 36.947151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.299770, 36.243210, 36.899509>,  <25.505167, 36.577137, 36.820103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.299770, 36.243210, 36.899509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254197, 0.368946, 0.894015,
		-0.819578, 0.408609, -0.401659,
		-0.513493, -0.834816, 0.198513,
		25.145723, 35.992764, 36.959064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.873531, 36.770756, 36.972462>,  <25.505167, 36.577137, 36.820103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.873531, 36.770756, 36.972462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914410, 36.427368, 37.173492>,  <24.938936, 36.221336, 37.294109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914410, 36.427368, 37.173492>,  <24.873531, 36.770756, 36.972462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.914410, 36.427368, 37.173492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385173, 0.431664, 0.815664,
		-0.917168, -0.276936, -0.286546,
		0.102195, -0.858471, 0.502577,
		24.945068, 36.169827, 37.324265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.238146, 36.746979, 37.236897>,  <24.873531, 36.770756, 36.972462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.238146, 36.746979, 37.236897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474396, 36.500740, 37.445591>,  <24.616146, 36.352997, 37.570808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.474396, 36.500740, 37.445591>,  <24.238146, 36.746979, 37.236897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.474396, 36.500740, 37.445591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443826, 0.292160, 0.847148,
		-0.673930, -0.731905, -0.100660,
		0.590623, -0.615595, 0.521735,
		24.651583, 36.316063, 37.602112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.908831, 36.397495, 37.848522>,  <24.238146, 36.746979, 37.236897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.908831, 36.397495, 37.848522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.299707, 36.451336, 37.914219>,  <24.534233, 36.483643, 37.953636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.299707, 36.451336, 37.914219>,  <23.908831, 36.397495, 37.848522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.299707, 36.451336, 37.914219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203162, 0.367473, 0.907573,
		0.061806, -0.920242, 0.386438,
		0.977193, 0.134603, 0.164246,
		24.592865, 36.491718, 37.963493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.894360, 36.326725, 38.436928>,  <23.908831, 36.397495, 37.848522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.894360, 36.326725, 38.436928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267965, 36.467388, 38.411785>,  <24.492130, 36.551785, 38.396698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267965, 36.467388, 38.411785>,  <23.894360, 36.326725, 38.436928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.267965, 36.467388, 38.411785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027036, 0.105868, 0.994013,
		0.356206, -0.930123, 0.089375,
		0.934016, 0.351657, -0.062858,
		24.548170, 36.572884, 38.392929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.339262, 36.027866, 38.877457>,  <23.894360, 36.326725, 38.436928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.339262, 36.027866, 38.877457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.426693, 36.410881, 38.802246>,  <24.479151, 36.640690, 38.757122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.426693, 36.410881, 38.802246>,  <24.339262, 36.027866, 38.877457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.426693, 36.410881, 38.802246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031704, 0.199550, 0.979375,
		0.975305, -0.208107, 0.073974,
		0.218576, 0.957534, -0.188024,
		24.492266, 36.698143, 38.745838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.041500, 36.208347, 39.185703>,  <24.339262, 36.027866, 38.877457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.041500, 36.208347, 39.185703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788197, 36.515461, 39.146740>,  <24.636215, 36.699730, 39.123360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788197, 36.515461, 39.146740>,  <25.041500, 36.208347, 39.185703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.788197, 36.515461, 39.146740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053920, 0.169326, 0.984084,
		0.772061, 0.617926, -0.148626,
		-0.633257, 0.767787, -0.097412,
		24.598219, 36.745796, 39.117516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.431170, 36.359688, 38.504833>,  <25.041500, 36.208347, 39.185703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.431170, 36.359688, 38.504833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.066189, 36.282681, 38.360409>,  <24.847200, 36.236477, 38.273754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.066189, 36.282681, 38.360409>,  <25.431170, 36.359688, 38.504833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.066189, 36.282681, 38.360409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407107, -0.515907, -0.753727,
		-0.041166, -0.834731, 0.549117,
		-0.912453, -0.192522, -0.361062,
		24.792454, 36.224922, 38.252090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376816, 35.611565, 38.403118>,  <25.431170, 36.359688, 38.504833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376816, 35.611565, 38.403118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133604, 35.789604, 38.140156>,  <24.987677, 35.896427, 37.982376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133604, 35.789604, 38.140156>,  <25.376816, 35.611565, 38.403118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133604, 35.789604, 38.140156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403914, -0.539453, -0.738813,
		-0.683488, -0.714755, 0.148220,
		-0.608027, 0.445102, -0.657409,
		24.951197, 35.923134, 37.942932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.068159, 35.130775, 38.001446>,  <25.376816, 35.611565, 38.403118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.068159, 35.130775, 38.001446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039871, 35.456509, 37.771015>,  <25.022898, 35.651947, 37.632755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039871, 35.456509, 37.771015>,  <25.068159, 35.130775, 38.001446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.039871, 35.456509, 37.771015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524115, -0.461040, -0.716063,
		-0.848706, -0.352571, -0.394197,
		-0.070722, 0.814331, -0.576075,
		25.018654, 35.700809, 37.598194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.815153, 34.948338, 37.354095>,  <25.068159, 35.130775, 38.001446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.815153, 34.948338, 37.354095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009325, 35.286938, 37.266644>,  <25.125828, 35.490097, 37.214172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009325, 35.286938, 37.266644>,  <24.815153, 34.948338, 37.354095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009325, 35.286938, 37.266644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463554, -0.461231, -0.756561,
		-0.741266, 0.265911, -0.616292,
		0.485431, 0.846497, -0.218631,
		25.154955, 35.540886, 37.201054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.811399, 35.091290, 36.587635>,  <24.815153, 34.948338, 37.354095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.811399, 35.091290, 36.587635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133831, 35.273647, 36.738575>,  <25.327290, 35.383060, 36.829140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133831, 35.273647, 36.738575>,  <24.811399, 35.091290, 36.587635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133831, 35.273647, 36.738575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534539, -0.287234, -0.794836,
		-0.253974, 0.842411, -0.475227,
		0.806080, 0.455896, 0.377352,
		25.375654, 35.410416, 36.851780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.097189, 35.411930, 36.000477>,  <24.811399, 35.091290, 36.587635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.097189, 35.411930, 36.000477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388704, 35.379269, 36.272419>,  <25.563614, 35.359673, 36.435585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388704, 35.379269, 36.272419>,  <25.097189, 35.411930, 36.000477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.388704, 35.379269, 36.272419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683820, 0.035426, -0.728790,
		0.035426, 0.996031, 0.081657,
		0.728790, -0.081657, 0.679851,
		25.607342, 35.354771, 36.476376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.552610, 35.982452, 35.850788>,  <25.097189, 35.411930, 36.000477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.552610, 35.982452, 35.850788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765028, 35.713322, 36.056816>,  <25.892479, 35.551842, 36.180435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765028, 35.713322, 36.056816>,  <25.552610, 35.982452, 35.850788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765028, 35.713322, 36.056816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703280, 0.010913, -0.710830,
		0.472644, 0.739720, 0.478980,
		0.531042, -0.672826, 0.515072,
		25.924341, 35.511475, 36.211338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236462, 36.175495, 35.792789>,  <25.552610, 35.982452, 35.850788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236462, 36.175495, 35.792789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307764, 35.797844, 35.903679>,  <26.350546, 35.571255, 35.970211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307764, 35.797844, 35.903679>,  <26.236462, 36.175495, 35.792789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307764, 35.797844, 35.903679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781259, -0.035482, -0.623198,
		0.598214, 0.327668, 0.731282,
		0.178254, -0.944126, 0.277219,
		26.361240, 35.514606, 35.986843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033884, 36.071293, 35.995434>,  <26.236462, 36.175495, 35.792789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033884, 36.071293, 35.995434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892628, 35.704060, 35.923416>,  <26.807873, 35.483719, 35.880207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892628, 35.704060, 35.923416>,  <27.033884, 36.071293, 35.995434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892628, 35.704060, 35.923416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790598, -0.189943, -0.582131,
		0.500246, -0.347918, 0.792911,
		-0.353142, -0.918082, -0.180045,
		26.786686, 35.428635, 35.869404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488140, 35.630344, 36.138237>,  <27.033884, 36.071293, 35.995434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488140, 35.630344, 36.138237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294592, 35.393616, 35.880363>,  <27.178463, 35.251579, 35.725639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.294592, 35.393616, 35.880363>,  <27.488140, 35.630344, 36.138237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294592, 35.393616, 35.880363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764765, 0.072168, -0.640255,
		0.425444, -0.802829, 0.417688,
		-0.483871, -0.591825, -0.644679,
		27.149431, 35.216068, 35.686958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637175, 34.844475, 35.966881>,  <27.488140, 35.630344, 36.138237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637175, 34.844475, 35.966881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482155, 34.991776, 35.628841>,  <27.389143, 35.080154, 35.426018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482155, 34.991776, 35.628841>,  <27.637175, 34.844475, 35.966881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482155, 34.991776, 35.628841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848251, -0.216485, -0.483327,
		-0.360937, -0.904172, -0.228469,
		-0.387550, 0.368250, -0.845102,
		27.365891, 35.102249, 35.375309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235922, 34.345722, 36.278027>,  <27.637175, 34.844475, 35.966881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235922, 34.345722, 36.278027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304783, 34.165646, 35.927555>,  <28.346100, 34.057598, 35.717274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304783, 34.165646, 35.927555>,  <28.235922, 34.345722, 36.278027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304783, 34.165646, 35.927555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786771, 0.472380, -0.397301,
		0.592752, 0.757748, -0.272878,
		0.172152, -0.450193, -0.876179,
		28.356428, 34.030586, 35.664700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799559, 33.958233, 35.995911>,  <28.235922, 34.345722, 36.278027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799559, 33.958233, 35.995911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858063, 33.757545, 36.336941>,  <28.893166, 33.637135, 36.541557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858063, 33.757545, 36.336941>,  <28.799559, 33.958233, 35.995911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858063, 33.757545, 36.336941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812469, 0.430753, 0.392868,
		-0.564359, -0.750154, -0.344627,
		0.146262, -0.501717, 0.852577,
		28.901941, 33.607029, 36.592712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185066, 33.440453, 36.176476>,  <28.799559, 33.958233, 35.995911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185066, 33.440453, 36.176476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372309, 33.471149, 36.528610>,  <28.484655, 33.489567, 36.739891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.372309, 33.471149, 36.528610>,  <28.185066, 33.440453, 36.176476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372309, 33.471149, 36.528610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799865, 0.460258, 0.385199,
		-0.375621, -0.884462, 0.276831,
		0.468108, 0.076739, 0.880333,
		28.512741, 33.494171, 36.792709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682169, 33.274929, 36.602291>,  <28.185066, 33.440453, 36.176476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682169, 33.274929, 36.602291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943342, 33.492855, 36.812759>,  <28.100046, 33.623611, 36.939041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943342, 33.492855, 36.812759>,  <27.682169, 33.274929, 36.602291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943342, 33.492855, 36.812759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752375, 0.546543, 0.367726,
		-0.087236, -0.635981, 0.766758,
		0.652933, 0.544811, 0.526174,
		28.139221, 33.656300, 36.970612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488607, 33.332718, 37.419865>,  <27.682169, 33.274929, 36.602291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488607, 33.332718, 37.419865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703461, 33.645435, 37.293190>,  <27.832373, 33.833065, 37.217186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703461, 33.645435, 37.293190>,  <27.488607, 33.332718, 37.419865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703461, 33.645435, 37.293190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568036, 0.612806, 0.549367,
		0.623568, -0.115179, 0.773238,
		0.537121, 0.781794, -0.316701,
		27.864601, 33.879974, 37.198185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694210, 33.828484, 38.046009>,  <27.488607, 33.332718, 37.419865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694210, 33.828484, 38.046009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680622, 34.012512, 37.691116>,  <27.672470, 34.122929, 37.478180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680622, 34.012512, 37.691116>,  <27.694210, 33.828484, 38.046009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680622, 34.012512, 37.691116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678114, 0.641522, 0.358623,
		0.734171, 0.613827, 0.290189,
		-0.033970, 0.460072, -0.887231,
		27.670431, 34.150536, 37.424946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747383, 34.531910, 38.149284>,  <27.694210, 33.828484, 38.046009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747383, 34.531910, 38.149284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531488, 34.432465, 37.827568>,  <27.401951, 34.372799, 37.634541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.531488, 34.432465, 37.827568>,  <27.747383, 34.531910, 38.149284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531488, 34.432465, 37.827568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768032, 0.536609, 0.349538,
		0.344689, 0.806377, -0.480568,
		-0.539737, -0.248610, -0.804287,
		27.369568, 34.357883, 37.586281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628061, 35.216118, 37.643433>,  <27.747383, 34.531910, 38.149284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628061, 35.216118, 37.643433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385447, 34.906525, 37.716171>,  <27.239878, 34.720768, 37.759815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385447, 34.906525, 37.716171>,  <27.628061, 35.216118, 37.643433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385447, 34.906525, 37.716171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615429, 0.601861, 0.508931,
		-0.503346, 0.196775, -0.841381,
		-0.606539, -0.773979, 0.181843,
		27.203485, 34.674332, 37.770725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863049, 34.804470, 37.000088>,  <27.628061, 35.216118, 37.643433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863049, 34.804470, 37.000088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877489, 34.557907, 37.314728>,  <27.886152, 34.409969, 37.503513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877489, 34.557907, 37.314728>,  <27.863049, 34.804470, 37.000088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877489, 34.557907, 37.314728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741496, -0.511176, -0.434606,
		0.669985, 0.598949, 0.438611,
		0.036100, -0.616408, 0.786599,
		27.888319, 34.372986, 37.550709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534370, 34.750244, 37.410683>,  <27.863049, 34.804470, 37.000088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534370, 34.750244, 37.410683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338633, 34.401585, 37.421783>,  <28.221189, 34.192390, 37.428444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338633, 34.401585, 37.421783>,  <28.534370, 34.750244, 37.410683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338633, 34.401585, 37.421783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841385, -0.480246, -0.247862,
		0.229374, -0.097943, 0.968398,
		-0.489346, -0.871648, 0.027748,
		28.191830, 34.140091, 37.430107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891354, 34.372288, 37.823750>,  <28.534370, 34.750244, 37.410683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891354, 34.372288, 37.823750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694040, 34.126141, 37.577824>,  <28.575653, 33.978455, 37.430267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694040, 34.126141, 37.577824>,  <28.891354, 34.372288, 37.823750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694040, 34.126141, 37.577824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824831, -0.555370, -0.105917,
		-0.276272, -0.559365, 0.781527,
		-0.493283, -0.615366, -0.614815,
		28.546055, 33.941532, 37.393379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377480, 33.825741, 37.803574>,  <28.891354, 34.372288, 37.823750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377480, 33.825741, 37.803574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093046, 33.731529, 37.538582>,  <28.922386, 33.675003, 37.379585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093046, 33.731529, 37.538582>,  <29.377480, 33.825741, 37.803574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093046, 33.731529, 37.538582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614834, -0.665377, -0.423382,
		-0.341080, -0.708378, 0.617953,
		-0.711086, -0.235531, -0.662482,
		28.879721, 33.660870, 37.339836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240915, 33.110798, 37.755535>,  <29.377480, 33.825741, 37.803574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240915, 33.110798, 37.755535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123949, 33.269917, 37.407684>,  <29.053770, 33.365387, 37.198975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123949, 33.269917, 37.407684>,  <29.240915, 33.110798, 37.755535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123949, 33.269917, 37.407684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598626, -0.633016, -0.490855,
		-0.745748, -0.664114, -0.053029,
		-0.292416, 0.397799, -0.869626,
		29.036224, 33.389256, 37.146797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219646, 32.519886, 37.225147>,  <29.240915, 33.110798, 37.755535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219646, 32.519886, 37.225147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244181, 32.874527, 37.041771>,  <29.258902, 33.087311, 36.931744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244181, 32.874527, 37.041771>,  <29.219646, 32.519886, 37.225147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244181, 32.874527, 37.041771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673401, -0.375780, -0.636648,
		-0.736729, -0.269667, -0.620089,
		0.061335, 0.886605, -0.458442,
		29.262581, 33.140507, 36.904240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992350, 32.518543, 36.447033>,  <29.219646, 32.519886, 37.225147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992350, 32.518543, 36.447033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273733, 32.798222, 36.498055>,  <29.442562, 32.966030, 36.528667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273733, 32.798222, 36.498055>,  <28.992350, 32.518543, 36.447033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273733, 32.798222, 36.498055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444513, -0.292778, -0.846575,
		-0.554577, 0.652230, -0.516759,
		0.703458, 0.699197, 0.127557,
		29.484770, 33.007980, 36.536320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224518, 32.788673, 35.742844>,  <28.992350, 32.518543, 36.447033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224518, 32.788673, 35.742844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528303, 32.913841, 35.970985>,  <29.710575, 32.988941, 36.107868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528303, 32.913841, 35.970985>,  <29.224518, 32.788673, 35.742844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528303, 32.913841, 35.970985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604277, -0.014578, -0.796640,
		-0.240967, 0.949669, -0.200159,
		0.759462, 0.312916, 0.570351,
		29.756142, 33.007717, 36.142090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449139, 33.405132, 35.404793>,  <29.224518, 32.788673, 35.742844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449139, 33.405132, 35.404793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779959, 33.298729, 35.602875>,  <29.978451, 33.234886, 35.721725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779959, 33.298729, 35.602875>,  <29.449139, 33.405132, 35.404793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779959, 33.298729, 35.602875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500337, -0.053196, -0.864195,
		0.256228, 0.962501, 0.089099,
		0.827049, -0.266011, 0.495206,
		30.028074, 33.218925, 35.751438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961327, 33.820614, 35.134373>,  <29.449139, 33.405132, 35.404793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961327, 33.820614, 35.134373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157890, 33.520653, 35.311535>,  <30.275827, 33.340675, 35.417831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157890, 33.520653, 35.311535>,  <29.961327, 33.820614, 35.134373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157890, 33.520653, 35.311535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562975, -0.114504, -0.818504,
		0.664513, 0.651562, 0.365909,
		0.491408, -0.749904, 0.442903,
		30.305313, 33.295681, 35.444405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668194, 34.042862, 35.063202>,  <29.961327, 33.820614, 35.134373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668194, 34.042862, 35.063202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682503, 33.647598, 35.122875>,  <30.691088, 33.410439, 35.158680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682503, 33.647598, 35.122875>,  <30.668194, 34.042862, 35.063202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682503, 33.647598, 35.122875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615681, -0.095791, -0.782151,
		0.787183, 0.119825, 0.604967,
		0.035771, -0.988163, 0.149179,
		30.693233, 33.351151, 35.167629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347857, 33.971779, 35.075268>,  <30.668194, 34.042862, 35.063202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347857, 33.971779, 35.075268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155930, 33.631191, 34.990627>,  <31.040773, 33.426838, 34.939842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155930, 33.631191, 34.990627>,  <31.347857, 33.971779, 35.075268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155930, 33.631191, 34.990627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604361, -0.145924, -0.783233,
		0.636021, -0.503693, 0.584612,
		-0.479818, -0.851469, -0.211601,
		31.011984, 33.375751, 34.927147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832666, 33.672623, 34.607635>,  <31.347857, 33.971779, 35.075268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832666, 33.672623, 34.607635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504457, 33.459591, 34.524593>,  <31.307531, 33.331772, 34.474770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504457, 33.459591, 34.524593>,  <31.832666, 33.672623, 34.607635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504457, 33.459591, 34.524593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302068, -0.095664, -0.948474,
		0.485282, -0.840953, 0.239371,
		-0.820522, -0.532584, -0.207601,
		31.258301, 33.299816, 34.462315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108246, 33.087349, 34.302235>,  <31.832666, 33.672623, 34.607635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108246, 33.087349, 34.302235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724512, 33.120075, 34.194172>,  <31.494272, 33.139709, 34.129333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724512, 33.120075, 34.194172>,  <32.108246, 33.087349, 34.302235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724512, 33.120075, 34.194172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263658, -0.082046, -0.961121,
		-0.100815, -0.993263, 0.057134,
		-0.959334, 0.081832, -0.270153,
		31.436712, 33.144619, 34.113125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028114, 32.633266, 33.812077>,  <32.108246, 33.087349, 34.302235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028114, 32.633266, 33.812077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730021, 32.895348, 33.762527>,  <31.551165, 33.052597, 33.732800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730021, 32.895348, 33.762527>,  <32.028114, 32.633266, 33.812077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730021, 32.895348, 33.762527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188686, 0.029033, -0.981608,
		-0.639553, -0.754898, -0.145263,
		-0.745231, 0.655200, -0.123871,
		31.506451, 33.091908, 33.725365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913139, 32.419006, 33.063797>,  <32.028114, 32.633266, 33.812077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913139, 32.419006, 33.063797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701511, 32.751537, 33.131886>,  <31.574535, 32.951057, 33.172737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.701511, 32.751537, 33.131886>,  <31.913139, 32.419006, 33.063797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701511, 32.751537, 33.131886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219413, 0.327793, -0.918918,
		-0.819721, -0.448823, -0.355830,
		-0.529070, 0.831330, 0.170222,
		31.542789, 33.000935, 33.182953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388159, 32.489582, 32.432941>,  <31.913139, 32.419006, 33.063797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388159, 32.489582, 32.432941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492418, 32.827465, 32.619934>,  <31.554974, 33.030193, 32.732128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492418, 32.827465, 32.619934>,  <31.388159, 32.489582, 32.432941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492418, 32.827465, 32.619934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186743, 0.430958, -0.882837,
		-0.947201, 0.317409, -0.045414,
		0.260649, 0.844705, 0.467478,
		31.570614, 33.080875, 32.760178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042627, 32.915543, 32.016926>,  <31.388159, 32.489582, 32.432941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042627, 32.915543, 32.016926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297901, 33.152981, 32.213032>,  <31.451065, 33.295444, 32.330696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297901, 33.152981, 32.213032>,  <31.042627, 32.915543, 32.016926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297901, 33.152981, 32.213032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205931, 0.481988, -0.851634,
		-0.741830, 0.644461, 0.185357,
		0.638185, 0.593597, 0.490268,
		31.489357, 33.331059, 32.360111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916742, 33.541721, 31.732294>,  <31.042627, 32.915543, 32.016926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916742, 33.541721, 31.732294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286106, 33.555256, 31.885221>,  <31.507725, 33.563377, 31.976978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286106, 33.555256, 31.885221>,  <30.916742, 33.541721, 31.732294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286106, 33.555256, 31.885221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322549, 0.471481, -0.820773,
		-0.208027, 0.881227, 0.424457,
		0.923410, 0.033835, 0.382320,
		31.563129, 33.565407, 31.999918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039803, 34.141560, 31.608423>,  <30.916742, 33.541721, 31.732294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039803, 34.141560, 31.608423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415461, 34.019058, 31.670670>,  <31.640856, 33.945557, 31.708017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415461, 34.019058, 31.670670>,  <31.039803, 34.141560, 31.608423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415461, 34.019058, 31.670670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273931, 0.394290, -0.877210,
		0.207292, 0.866454, 0.454188,
		0.939144, -0.306255, 0.155616,
		31.697205, 33.927181, 31.717354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440754, 34.674168, 31.432932>,  <31.039803, 34.141560, 31.608423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440754, 34.674168, 31.432932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727654, 34.395554, 31.440828>,  <31.899794, 34.228386, 31.445566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727654, 34.395554, 31.440828>,  <31.440754, 34.674168, 31.432932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727654, 34.395554, 31.440828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452896, 0.444457, -0.772880,
		0.529568, 0.563286, 0.634245,
		0.717247, -0.696540, 0.019740,
		31.942827, 34.186592, 31.446751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041477, 35.009510, 31.392448>,  <31.440754, 34.674168, 31.432932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041477, 35.009510, 31.392448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098133, 34.643452, 31.241478>,  <32.132126, 34.423817, 31.150896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098133, 34.643452, 31.241478>,  <32.041477, 35.009510, 31.392448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098133, 34.643452, 31.241478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321328, 0.403131, -0.856875,
		0.936315, 0.000093, 0.351161,
		0.141643, -0.915142, -0.377427,
		32.140625, 34.368908, 31.128250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634396, 35.049252, 31.017780>,  <32.041477, 35.009510, 31.392448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634396, 35.049252, 31.017780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439461, 34.732388, 30.870819>,  <32.322502, 34.542267, 30.782642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439461, 34.732388, 30.870819>,  <32.634396, 35.049252, 31.017780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439461, 34.732388, 30.870819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176364, 0.322784, -0.929896,
		0.855221, -0.517965, -0.017594,
		-0.487333, -0.792163, -0.367401,
		32.293262, 34.494740, 30.760599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926048, 34.916664, 30.415106>,  <32.634396, 35.049252, 31.017780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926048, 34.916664, 30.415106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587940, 34.707993, 30.368855>,  <32.385075, 34.582790, 30.341105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587940, 34.707993, 30.368855>,  <32.926048, 34.916664, 30.415106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587940, 34.707993, 30.368855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030023, 0.262420, -0.964487,
		0.533494, -0.811781, -0.237478,
		-0.845271, -0.521678, -0.115628,
		32.334358, 34.551491, 30.334166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958412, 34.467422, 29.800564>,  <32.926048, 34.916664, 30.415106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958412, 34.467422, 29.800564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573513, 34.548271, 29.873476>,  <32.342575, 34.596783, 29.917223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573513, 34.548271, 29.873476>,  <32.958412, 34.467422, 29.800564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573513, 34.548271, 29.873476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139283, 0.209696, -0.967795,
		-0.233840, -0.956647, -0.173627,
		-0.962247, 0.202126, 0.182280,
		32.284840, 34.608910, 29.928160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662159, 34.161999, 29.188389>,  <32.958412, 34.467422, 29.800564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662159, 34.161999, 29.188389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367317, 34.374535, 29.355412>,  <32.190411, 34.502056, 29.455626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367317, 34.374535, 29.355412>,  <32.662159, 34.161999, 29.188389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367317, 34.374535, 29.355412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371456, 0.197606, -0.907178,
		-0.564531, -0.823790, 0.051713,
		-0.737105, 0.531339, 0.417557,
		32.146187, 34.533936, 29.480679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064404, 33.910149, 28.910728>,  <32.662159, 34.161999, 29.188389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064404, 33.910149, 28.910728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037125, 34.290039, 29.032957>,  <32.020760, 34.517975, 29.106295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037125, 34.290039, 29.032957>,  <32.064404, 33.910149, 28.910728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037125, 34.290039, 29.032957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107125, 0.297542, -0.948680,
		-0.991904, -0.097427, 0.081449,
		-0.068193, 0.949724, 0.305570,
		32.016666, 34.574955, 29.124628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551136, 34.188427, 28.499943>,  <32.064404, 33.910149, 28.910728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551136, 34.188427, 28.499943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752928, 34.501118, 28.646591>,  <31.874002, 34.688732, 28.734581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752928, 34.501118, 28.646591>,  <31.551136, 34.188427, 28.499943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752928, 34.501118, 28.646591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006099, 0.421375, -0.906866,
		-0.863403, 0.459729, 0.207807,
		0.504478, 0.781724, 0.366621,
		31.904270, 34.735634, 28.756577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165800, 34.836830, 28.117344>,  <31.551136, 34.188427, 28.499943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165800, 34.836830, 28.117344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517605, 34.960400, 28.262131>,  <31.728687, 35.034542, 28.349003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517605, 34.960400, 28.262131>,  <31.165800, 34.836830, 28.117344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517605, 34.960400, 28.262131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064647, 0.676021, -0.734041,
		-0.471465, 0.668999, 0.574597,
		0.879512, 0.308929, 0.361969,
		31.781458, 35.053078, 28.370722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173864, 35.553547, 28.027300>,  <31.165800, 34.836830, 28.117344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173864, 35.553547, 28.027300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557182, 35.449657, 28.074982>,  <31.787174, 35.387321, 28.103590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557182, 35.449657, 28.074982>,  <31.173864, 35.553547, 28.027300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557182, 35.449657, 28.074982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251275, 0.567115, -0.784373,
		0.136121, 0.781615, 0.608727,
		0.958296, -0.259728, 0.119204,
		31.844671, 35.371738, 28.110743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523727, 36.178978, 27.984177>,  <31.173864, 35.553547, 28.027300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523727, 36.178978, 27.984177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790030, 35.890442, 27.907816>,  <31.949810, 35.717319, 27.862000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790030, 35.890442, 27.907816>,  <31.523727, 36.178978, 27.984177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790030, 35.890442, 27.907816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305860, 0.497172, -0.811954,
		0.680605, 0.482172, 0.551623,
		0.665753, -0.721339, -0.190901,
		31.989756, 35.674042, 27.850546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091221, 36.510311, 27.756567>,  <31.523727, 36.178978, 27.984177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091221, 36.510311, 27.756567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162487, 36.133770, 27.641943>,  <32.205246, 35.907845, 27.573168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162487, 36.133770, 27.641943>,  <32.091221, 36.510311, 27.756567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162487, 36.133770, 27.641943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454552, 0.337019, -0.824500,
		0.872720, 0.016637, 0.487937,
		0.178161, -0.941351, -0.286561,
		32.215935, 35.851364, 27.555975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752689, 36.495499, 27.662613>,  <32.091221, 36.510311, 27.756567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752689, 36.495499, 27.662613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585114, 36.213123, 27.434177>,  <32.484570, 36.043697, 27.297117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585114, 36.213123, 27.434177>,  <32.752689, 36.495499, 27.662613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585114, 36.213123, 27.434177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371805, 0.440432, -0.817179,
		0.828405, -0.554679, 0.077959,
		-0.418936, -0.705941, -0.571088,
		32.459435, 36.001343, 27.262852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109043, 36.440540, 27.100142>,  <32.752689, 36.495499, 27.662613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109043, 36.440540, 27.100142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801052, 36.228821, 26.957605>,  <32.616257, 36.101788, 26.872084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801052, 36.228821, 26.957605>,  <33.109043, 36.440540, 27.100142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801052, 36.228821, 26.957605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240209, 0.276923, -0.930383,
		0.591133, -0.801968, -0.086080,
		-0.769975, -0.529303, -0.356338,
		32.570061, 36.070030, 26.850704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338764, 35.877262, 26.549406>,  <33.109043, 36.440540, 27.100142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338764, 35.877262, 26.549406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963806, 35.998299, 26.480431>,  <32.738831, 36.070919, 26.439045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963806, 35.998299, 26.480431>,  <33.338764, 35.877262, 26.549406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963806, 35.998299, 26.480431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268073, 0.310798, -0.911889,
		-0.222334, -0.901024, -0.372455,
		-0.937392, 0.302589, -0.172439,
		32.682587, 36.089077, 26.428699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404884, 35.815262, 25.897999>,  <33.338764, 35.877262, 26.549406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404884, 35.815262, 25.897999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052422, 35.995323, 25.955862>,  <32.840946, 36.103359, 25.990580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052422, 35.995323, 25.955862>,  <33.404884, 35.815262, 25.897999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052422, 35.995323, 25.955862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098657, 0.474247, -0.874846,
		-0.462423, -0.756603, -0.462296,
		-0.881154, 0.450158, 0.144659,
		32.788074, 36.130371, 25.999260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151379, 35.885475, 25.242668>,  <33.404884, 35.815262, 25.897999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151379, 35.885475, 25.242668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965073, 36.165791, 25.458801>,  <32.853291, 36.333981, 25.588482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965073, 36.165791, 25.458801>,  <33.151379, 35.885475, 25.242668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965073, 36.165791, 25.458801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035238, 0.624812, -0.779980,
		-0.884209, -0.344244, -0.315708,
		-0.465762, 0.700790, 0.540334,
		32.825344, 36.376026, 25.620901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679409, 36.204121, 24.726088>,  <33.151379, 35.885475, 25.242668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679409, 36.204121, 24.726088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709839, 36.485332, 25.008921>,  <32.728096, 36.654060, 25.178621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709839, 36.485332, 25.008921>,  <32.679409, 36.204121, 24.726088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709839, 36.485332, 25.008921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032592, 0.707005, -0.706457,
		-0.996570, 0.076786, 0.030869,
		0.076070, 0.703028, 0.707082,
		32.732658, 36.696239, 25.221045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175682, 36.760246, 24.602398>,  <32.679409, 36.204121, 24.726088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175682, 36.760246, 24.602398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478428, 36.902050, 24.822029>,  <32.660076, 36.987133, 24.953808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478428, 36.902050, 24.822029>,  <32.175682, 36.760246, 24.602398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478428, 36.902050, 24.822029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175446, 0.699074, -0.693191,
		-0.629587, 0.620983, 0.466906,
		0.756862, 0.354507, 0.549077,
		32.705486, 37.008404, 24.986752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161037, 37.423176, 24.470303>,  <32.175682, 36.760246, 24.602398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161037, 37.423176, 24.470303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513866, 37.417057, 24.658648>,  <32.725563, 37.413387, 24.771654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513866, 37.417057, 24.658648>,  <32.161037, 37.423176, 24.470303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513866, 37.417057, 24.658648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228371, 0.888076, -0.398958,
		-0.412059, 0.459442, 0.786842,
		0.882074, -0.015298, 0.470863,
		32.778488, 37.412468, 24.799906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263374, 38.058159, 24.805971>,  <32.161037, 37.423176, 24.470303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263374, 38.058159, 24.805971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638664, 37.923706, 24.773117>,  <32.863838, 37.843033, 24.753405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638664, 37.923706, 24.773117>,  <32.263374, 38.058159, 24.805971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638664, 37.923706, 24.773117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258477, 0.838633, -0.479463,
		0.230044, 0.428615, 0.873710,
		0.938227, -0.336132, -0.082136,
		32.920132, 37.822868, 24.748476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751160, 38.630787, 25.071901>,  <32.263374, 38.058159, 24.805971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751160, 38.630787, 25.071901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957150, 38.399155, 24.819090>,  <33.080746, 38.260174, 24.667402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957150, 38.399155, 24.819090>,  <32.751160, 38.630787, 25.071901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957150, 38.399155, 24.819090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369789, 0.815258, -0.445658,
		0.773339, -0.004212, 0.633979,
		0.514979, -0.579083, -0.632028,
		33.111645, 38.225430, 24.629482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450222, 38.978344, 25.013840>,  <32.751160, 38.630787, 25.071901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450222, 38.978344, 25.013840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484077, 38.724976, 24.706173>,  <33.504391, 38.572956, 24.521572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484077, 38.724976, 24.706173>,  <33.450222, 38.978344, 25.013840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484077, 38.724976, 24.706173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516503, 0.688021, -0.509757,
		0.852092, -0.354135, 0.385392,
		0.084635, -0.633416, -0.769169,
		33.509468, 38.534950, 24.475422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117859, 38.854465, 24.838261>,  <33.450222, 38.978344, 25.013840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117859, 38.854465, 24.838261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916763, 38.757538, 24.506350>,  <33.796104, 38.699383, 24.307203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.916763, 38.757538, 24.506350>,  <34.117859, 38.854465, 24.838261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916763, 38.757538, 24.506350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488960, 0.711875, -0.504135,
		0.712839, -0.659188, -0.239440,
		-0.502771, -0.242290, -0.829769,
		33.765942, 38.684845, 24.257416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679413, 38.886173, 24.438951>,  <34.117859, 38.854465, 24.838261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679413, 38.886173, 24.438951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352364, 38.912106, 24.210115>,  <34.156136, 38.927666, 24.072813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352364, 38.912106, 24.210115>,  <34.679413, 38.886173, 24.438951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352364, 38.912106, 24.210115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442780, 0.705931, -0.552817,
		0.368016, -0.705307, -0.605893,
		-0.817625, 0.064832, -0.572090,
		34.107075, 38.931557, 24.038488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815216, 38.670879, 23.776621>,  <34.679413, 38.886173, 24.438951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815216, 38.670879, 23.776621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524345, 38.938927, 23.717079>,  <34.349823, 39.099754, 23.681355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524345, 38.938927, 23.717079>,  <34.815216, 38.670879, 23.776621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524345, 38.938927, 23.717079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560200, 0.453983, -0.692875,
		-0.396732, -0.587228, -0.705526,
		-0.727172, 0.670121, -0.148856,
		34.306194, 39.139961, 23.672422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950546, 38.888912, 23.082458>,  <34.815216, 38.670879, 23.776621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950546, 38.888912, 23.082458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669731, 39.135899, 23.224371>,  <34.501240, 39.284092, 23.309519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669731, 39.135899, 23.224371>,  <34.950546, 38.888912, 23.082458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669731, 39.135899, 23.224371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333046, 0.725033, -0.602832,
		-0.629460, -0.305053, -0.714648,
		-0.702039, 0.617470, 0.354783,
		34.459118, 39.321140, 23.330807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654381, 39.123844, 22.461578>,  <34.950546, 38.888912, 23.082458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654381, 39.123844, 22.461578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572285, 39.392471, 22.746359>,  <34.523026, 39.553646, 22.917227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572285, 39.392471, 22.746359>,  <34.654381, 39.123844, 22.461578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572285, 39.392471, 22.746359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167763, 0.740810, -0.650428,
		-0.964226, -0.014056, -0.264709,
		-0.205241, 0.671568, 0.711950,
		34.510712, 39.593941, 22.959944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131474, 39.636986, 22.195366>,  <34.654381, 39.123844, 22.461578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131474, 39.636986, 22.195366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325203, 39.850014, 22.473011>,  <34.441441, 39.977833, 22.639597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325203, 39.850014, 22.473011>,  <34.131474, 39.636986, 22.195366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325203, 39.850014, 22.473011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047837, 0.808307, -0.586815,
		-0.873578, 0.251007, 0.416962,
		0.484328, 0.532574, 0.694111,
		34.470501, 40.009785, 22.681244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817196, 40.265068, 22.396948>,  <34.131474, 39.636986, 22.195366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817196, 40.265068, 22.396948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205437, 40.351963, 22.438387>,  <34.438381, 40.404099, 22.463251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205437, 40.351963, 22.438387>,  <33.817196, 40.265068, 22.396948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205437, 40.351963, 22.438387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088433, 0.722250, -0.685955,
		-0.223837, 0.656631, 0.720231,
		0.970606, 0.217235, 0.103598,
		34.496620, 40.417133, 22.469467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854881, 40.951538, 22.344248>,  <33.817196, 40.265068, 22.396948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854881, 40.951538, 22.344248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224583, 40.825317, 22.258291>,  <34.446404, 40.749584, 22.206717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224583, 40.825317, 22.258291>,  <33.854881, 40.951538, 22.344248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224583, 40.825317, 22.258291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038804, 0.637614, -0.769379,
		0.379795, 0.702764, 0.601563,
		0.924256, -0.315549, -0.214892,
		34.501858, 40.730652, 22.193823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794281, 41.447659, 22.974718>,  <33.854881, 40.951538, 22.344248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794281, 41.447659, 22.974718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870110, 41.783287, 23.178684>,  <33.915607, 41.984665, 23.301064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870110, 41.783287, 23.178684>,  <33.794281, 41.447659, 22.974718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870110, 41.783287, 23.178684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019390, 0.522432, -0.852460,
		-0.981676, 0.151713, 0.115307,
		0.189570, 0.839076, 0.509917,
		33.926979, 42.035011, 23.331659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224537, 41.996662, 22.863489>,  <33.794281, 41.447659, 22.974718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224537, 41.996662, 22.863489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578026, 42.160366, 22.954296>,  <33.790119, 42.258591, 23.008780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578026, 42.160366, 22.954296>,  <33.224537, 41.996662, 22.863489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578026, 42.160366, 22.954296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057409, 0.386610, -0.920455,
		-0.464475, 0.826460, 0.318161,
		0.883723, 0.409263, 0.227017,
		33.843143, 42.283146, 23.022402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338432, 42.300926, 22.199806>,  <33.224537, 41.996662, 22.863489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338432, 42.300926, 22.199806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665573, 42.381493, 22.415421>,  <33.861858, 42.429832, 22.544788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665573, 42.381493, 22.415421>,  <33.338432, 42.300926, 22.199806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665573, 42.381493, 22.415421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429634, 0.409433, -0.804847,
		-0.382806, 0.889830, 0.248320,
		0.817847, 0.201413, 0.539035,
		33.910927, 42.441917, 22.577131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031441, 41.978703, 21.867332>,  <33.338432, 42.300926, 22.199806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031441, 41.978703, 21.867332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127953, 42.365978, 21.893867>,  <34.185860, 42.598343, 21.909788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127953, 42.365978, 21.893867>,  <34.031441, 41.978703, 21.867332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127953, 42.365978, 21.893867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100520, -0.092924, 0.990586,
		0.965237, -0.232336, -0.119742,
		0.241276, 0.968187, 0.066339,
		34.200336, 42.656433, 21.913769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581146, 42.057243, 22.379011>,  <34.031441, 41.978703, 21.867332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581146, 42.057243, 22.379011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401920, 42.414627, 22.391531>,  <34.294384, 42.629055, 22.399042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401920, 42.414627, 22.391531>,  <34.581146, 42.057243, 22.379011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401920, 42.414627, 22.391531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016235, -0.026871, 0.999507,
		0.893856, 0.448348, -0.002465,
		-0.448061, 0.893455, 0.031297,
		34.267502, 42.682663, 22.400921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969555, 42.441448, 22.836378>,  <34.581146, 42.057243, 22.379011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969555, 42.441448, 22.836378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598530, 42.590919, 22.836636>,  <34.375916, 42.680603, 22.836790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598530, 42.590919, 22.836636>,  <34.969555, 42.441448, 22.836378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598530, 42.590919, 22.836636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087446, -0.218737, 0.971858,
		0.363304, 0.901398, 0.235568,
		-0.927558, 0.373679, 0.000645,
		34.320263, 42.703022, 22.836828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897827, 42.944332, 23.309225>,  <34.969555, 42.441448, 22.836378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897827, 42.944332, 23.309225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556187, 42.749649, 23.235867>,  <34.351204, 42.632839, 23.191851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556187, 42.749649, 23.235867>,  <34.897827, 42.944332, 23.309225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556187, 42.749649, 23.235867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086373, -0.214988, 0.972790,
		-0.512892, 0.846697, 0.141582,
		-0.854097, -0.486707, -0.183398,
		34.299957, 42.603638, 23.180847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404377, 43.061180, 23.945929>,  <34.897827, 42.944332, 23.309225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404377, 43.061180, 23.945929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247189, 42.743862, 23.759914>,  <34.152874, 42.553471, 23.648306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247189, 42.743862, 23.759914>,  <34.404377, 43.061180, 23.945929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247189, 42.743862, 23.759914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079487, -0.474525, 0.876646,
		-0.916108, 0.381462, 0.123419,
		-0.392972, -0.793293, -0.465037,
		34.129295, 42.505875, 23.620403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646107, 42.860123, 24.256411>,  <34.404377, 43.061180, 23.945929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646107, 42.860123, 24.256411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843212, 42.550873, 24.096676>,  <33.961475, 42.365322, 24.000835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843212, 42.550873, 24.096676>,  <33.646107, 42.860123, 24.256411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843212, 42.550873, 24.096676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130773, -0.519504, 0.844401,
		-0.860281, -0.363867, -0.357096,
		0.492762, -0.773121, -0.399335,
		33.991039, 42.318935, 23.976875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226688, 42.254128, 24.394567>,  <33.646107, 42.860123, 24.256411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226688, 42.254128, 24.394567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587940, 42.098675, 24.321545>,  <33.804691, 42.005402, 24.277731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587940, 42.098675, 24.321545>,  <33.226688, 42.254128, 24.394567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587940, 42.098675, 24.321545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113311, -0.625813, 0.771698,
		-0.414154, -0.676255, -0.609225,
		0.903126, -0.388634, -0.182556,
		33.858879, 41.982086, 24.266777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114361, 41.498241, 24.407152>,  <33.226688, 42.254128, 24.394567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114361, 41.498241, 24.407152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503929, 41.554852, 24.478094>,  <33.737671, 41.588818, 24.520658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503929, 41.554852, 24.478094>,  <33.114361, 41.498241, 24.407152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503929, 41.554852, 24.478094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033879, -0.682172, 0.730406,
		0.224355, -0.717364, -0.659585,
		0.973918, 0.141524, 0.177353,
		33.796104, 41.597309, 24.531300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332077, 40.779903, 24.586512>,  <33.114361, 41.498241, 24.407152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332077, 40.779903, 24.586512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632072, 41.017151, 24.703636>,  <33.812069, 41.159500, 24.773911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632072, 41.017151, 24.703636>,  <33.332077, 40.779903, 24.586512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632072, 41.017151, 24.703636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007420, -0.450191, 0.892901,
		0.661413, -0.667490, -0.342038,
		0.749985, 0.593114, 0.292809,
		33.857067, 41.195084, 24.791479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840023, 40.327621, 24.866316>,  <33.332077, 40.779903, 24.586512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840023, 40.327621, 24.866316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923565, 40.687687, 25.019205>,  <33.973690, 40.903725, 25.110939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923565, 40.687687, 25.019205>,  <33.840023, 40.327621, 24.866316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923565, 40.687687, 25.019205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090217, -0.406908, 0.909003,
		0.973777, -0.155365, -0.166193,
		0.208853, 0.900159, 0.382221,
		33.986221, 40.957733, 25.133871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336403, 40.160404, 25.341908>,  <33.840023, 40.327621, 24.866316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336403, 40.160404, 25.341908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219841, 40.523495, 25.462656>,  <34.149906, 40.741348, 25.535105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219841, 40.523495, 25.462656>,  <34.336403, 40.160404, 25.341908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219841, 40.523495, 25.462656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037911, -0.326277, 0.944514,
		0.955849, 0.263789, 0.129491,
		-0.291402, 0.907722, 0.301872,
		34.132420, 40.795811, 25.553217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840702, 40.313618, 25.864750>,  <34.336403, 40.160404, 25.341908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840702, 40.313618, 25.864750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509583, 40.531616, 25.918020>,  <34.310913, 40.662415, 25.949982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509583, 40.531616, 25.918020>,  <34.840702, 40.313618, 25.864750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509583, 40.531616, 25.918020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011408, -0.253680, 0.967221,
		0.560914, 0.799142, 0.216212,
		-0.827796, 0.544994, 0.133177,
		34.261242, 40.695114, 25.957973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959354, 40.650158, 26.512276>,  <34.840702, 40.313618, 25.864750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959354, 40.650158, 26.512276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564827, 40.679726, 26.453325>,  <34.328110, 40.697468, 26.417955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564827, 40.679726, 26.453325>,  <34.959354, 40.650158, 26.512276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564827, 40.679726, 26.453325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156596, -0.140342, 0.977641,
		0.051588, 0.987340, 0.149998,
		-0.986315, 0.073923, -0.147374,
		34.268932, 40.701904, 26.409113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594349, 41.134766, 26.995724>,  <34.959354, 40.650158, 26.512276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594349, 41.134766, 26.995724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314610, 40.874687, 26.876961>,  <34.146767, 40.718639, 26.805702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314610, 40.874687, 26.876961>,  <34.594349, 41.134766, 26.995724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314610, 40.874687, 26.876961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114309, -0.308303, 0.944395,
		-0.705578, 0.694405, 0.141289,
		-0.699352, -0.650194, -0.296909,
		34.104805, 40.679630, 26.787888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163864, 41.214020, 27.593609>,  <34.594349, 41.134766, 26.995724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163864, 41.214020, 27.593609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045219, 40.874687, 27.418177>,  <33.974033, 40.671089, 27.312918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045219, 40.874687, 27.418177>,  <34.163864, 41.214020, 27.593609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045219, 40.874687, 27.418177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160889, -0.408295, 0.898560,
		-0.941348, 0.337087, -0.015382,
		-0.296612, -0.848332, -0.438581,
		33.956234, 40.620186, 27.286602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650188, 40.992855, 27.979980>,  <34.163864, 41.214020, 27.593609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650188, 40.992855, 27.979980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735477, 40.656612, 27.780813>,  <33.786652, 40.454868, 27.661312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735477, 40.656612, 27.780813>,  <33.650188, 40.992855, 27.979980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735477, 40.656612, 27.780813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229229, -0.538456, 0.810875,
		-0.949731, -0.058762, -0.307503,
		0.213226, -0.840602, -0.497919,
		33.799446, 40.404430, 27.631437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076645, 40.498745, 28.043129>,  <33.650188, 40.992855, 27.979980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076645, 40.498745, 28.043129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415043, 40.298588, 27.969486>,  <33.618084, 40.178493, 27.925301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415043, 40.298588, 27.969486>,  <33.076645, 40.498745, 28.043129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415043, 40.298588, 27.969486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122784, -0.518856, 0.845998,
		-0.518856, -0.693107, -0.500391,
		-0.845998, 0.500391, 0.184109,
		33.668842, 40.148472, 27.914253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866840, 39.907269, 28.258595>,  <33.076645, 40.498745, 28.043129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866840, 39.907269, 28.258595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266514, 39.891884, 28.253803>,  <33.506317, 39.882652, 28.250929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266514, 39.891884, 28.253803>,  <32.866840, 39.907269, 28.258595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266514, 39.891884, 28.253803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009786, -0.520149, 0.854020,
		-0.039079, -0.853209, -0.520103,
		0.999188, -0.038464, -0.011978,
		33.566269, 39.880344, 28.250210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000248, 39.246445, 28.100418>,  <32.866840, 39.907269, 28.258595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000248, 39.246445, 28.100418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289482, 39.421051, 28.314556>,  <33.463024, 39.525814, 28.443039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289482, 39.421051, 28.314556>,  <33.000248, 39.246445, 28.100418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289482, 39.421051, 28.314556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161517, -0.646681, 0.745464,
		0.671607, -0.625503, -0.397101,
		0.723088, 0.436521, 0.535345,
		33.506409, 39.552006, 28.475159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271725, 38.749912, 28.527632>,  <33.000248, 39.246445, 28.100418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271725, 38.749912, 28.527632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444649, 39.053658, 28.722145>,  <33.548405, 39.235905, 28.838852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444649, 39.053658, 28.722145>,  <33.271725, 38.749912, 28.527632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444649, 39.053658, 28.722145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227643, -0.429903, 0.873706,
		0.872515, -0.488414, -0.012989,
		0.432315, 0.759365, 0.486281,
		33.574345, 39.281467, 28.868029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696877, 38.470737, 29.046267>,  <33.271725, 38.749912, 28.527632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696877, 38.470737, 29.046267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666061, 38.844826, 29.184498>,  <33.647572, 39.069279, 29.267437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666061, 38.844826, 29.184498>,  <33.696877, 38.470737, 29.046267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666061, 38.844826, 29.184498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207712, -0.354058, 0.911865,
		0.975151, -0.001530, 0.221534,
		-0.077041, 0.935222, 0.345578,
		33.642948, 39.125393, 29.288172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112129, 38.518745, 29.669676>,  <33.696877, 38.470737, 29.046267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112129, 38.518745, 29.669676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848072, 38.818279, 29.693182>,  <33.689636, 38.998001, 29.707285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848072, 38.818279, 29.693182>,  <34.112129, 38.518745, 29.669676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848072, 38.818279, 29.693182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278491, -0.316660, 0.906736,
		0.697606, 0.582210, 0.417585,
		-0.660143, 0.748837, 0.058763,
		33.650028, 39.042931, 29.710812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289806, 38.964409, 30.155333>,  <34.112129, 38.518745, 29.669676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289806, 38.964409, 30.155333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899971, 39.048939, 30.125616>,  <33.666069, 39.099655, 30.107786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899971, 39.048939, 30.125616>,  <34.289806, 38.964409, 30.155333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899971, 39.048939, 30.125616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129156, -0.259148, 0.957163,
		0.183018, 0.942436, 0.279857,
		-0.974589, 0.211323, -0.074292,
		33.607594, 39.112335, 30.103329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071732, 39.277386, 30.824713>,  <34.289806, 38.964409, 30.155333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071732, 39.277386, 30.824713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729477, 39.157566, 30.655876>,  <33.524124, 39.085674, 30.554573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729477, 39.157566, 30.655876>,  <34.071732, 39.277386, 30.824713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729477, 39.157566, 30.655876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344669, -0.278625, 0.896421,
		-0.386130, 0.912489, 0.135154,
		-0.855632, -0.299552, -0.422092,
		33.472786, 39.067699, 30.529249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562740, 39.644424, 31.197859>,  <34.071732, 39.277386, 30.824713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562740, 39.644424, 31.197859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376019, 39.330902, 31.034033>,  <33.263985, 39.142788, 30.935738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376019, 39.330902, 31.034033>,  <33.562740, 39.644424, 31.197859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376019, 39.330902, 31.034033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408368, -0.219740, 0.885974,
		-0.784428, 0.580831, -0.217505,
		-0.466807, -0.783804, -0.409563,
		33.235977, 39.095760, 30.911163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031223, 39.514900, 31.652357>,  <33.562740, 39.644424, 31.197859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031223, 39.514900, 31.652357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024555, 39.175449, 31.440865>,  <33.020554, 38.971779, 31.313969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024555, 39.175449, 31.440865>,  <33.031223, 39.514900, 31.652357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024555, 39.175449, 31.440865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500490, -0.450703, 0.739173,
		-0.865582, 0.276950, -0.417213,
		-0.016675, -0.848626, -0.528731,
		33.019554, 38.920860, 31.282246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295925, 39.263985, 31.719065>,  <33.031223, 39.514900, 31.652357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295925, 39.263985, 31.719065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560383, 38.977543, 31.629539>,  <32.719055, 38.805679, 31.575825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560383, 38.977543, 31.629539>,  <32.295925, 39.263985, 31.719065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560383, 38.977543, 31.629539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377216, -0.575139, 0.725895,
		-0.648539, -0.395491, -0.650372,
		0.661139, -0.716102, -0.223815,
		32.758724, 38.762711, 31.562395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849390, 38.795216, 31.582703>,  <32.295925, 39.263985, 31.719065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849390, 38.795216, 31.582703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197647, 38.628609, 31.687389>,  <32.406601, 38.528645, 31.750200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197647, 38.628609, 31.687389>,  <31.849390, 38.795216, 31.582703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197647, 38.628609, 31.687389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446838, -0.447152, 0.774849,
		-0.205713, -0.791560, -0.575426,
		0.870642, -0.416519, 0.261714,
		32.458839, 38.503654, 31.765903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718033, 38.109184, 31.791142>,  <31.849390, 38.795216, 31.582703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718033, 38.109184, 31.791142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084091, 38.131409, 31.950853>,  <32.303726, 38.144745, 32.046680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084091, 38.131409, 31.950853>,  <31.718033, 38.109184, 31.791142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084091, 38.131409, 31.950853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304147, -0.554907, 0.774321,
		0.264587, -0.830055, -0.490920,
		0.915144, 0.055563, 0.399280,
		32.358635, 38.148079, 32.070637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856552, 37.406502, 32.039501>,  <31.718033, 38.109184, 31.791142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856552, 37.406502, 32.039501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119568, 37.650192, 32.216805>,  <32.277378, 37.796406, 32.323189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119568, 37.650192, 32.216805>,  <31.856552, 37.406502, 32.039501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119568, 37.650192, 32.216805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308179, -0.319376, 0.896116,
		0.687508, -0.725836, -0.022250,
		0.657539, 0.609230, 0.443261,
		32.316830, 37.832962, 32.349781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166275, 37.028622, 32.599751>,  <31.856552, 37.406502, 32.039501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166275, 37.028622, 32.599751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205669, 37.418644, 32.679321>,  <32.229305, 37.652657, 32.727062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205669, 37.418644, 32.679321>,  <32.166275, 37.028622, 32.599751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205669, 37.418644, 32.679321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245900, -0.169857, 0.954297,
		0.964279, -0.142900, 0.223037,
		0.098485, 0.975053, 0.198928,
		32.235214, 37.711159, 32.738998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675133, 37.085201, 33.080685>,  <32.166275, 37.028622, 32.599751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675133, 37.085201, 33.080685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474720, 37.431183, 33.092148>,  <32.354473, 37.638771, 33.099026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474720, 37.431183, 33.092148>,  <32.675133, 37.085201, 33.080685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474720, 37.431183, 33.092148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204243, -0.150358, 0.967304,
		0.840982, 0.478798, 0.251995,
		-0.501033, 0.864954, 0.028657,
		32.324409, 37.690670, 33.100746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846756, 37.364567, 33.735657>,  <32.675133, 37.085201, 33.080685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846756, 37.364567, 33.735657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511860, 37.549717, 33.619198>,  <32.310921, 37.660809, 33.549320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511860, 37.549717, 33.619198>,  <32.846756, 37.364567, 33.735657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511860, 37.549717, 33.619198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439671, -0.253250, 0.861715,
		0.325135, 0.849476, 0.415546,
		-0.837243, 0.462878, -0.291149,
		32.260689, 37.688580, 33.531853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711250, 37.919170, 34.178051>,  <32.846756, 37.364567, 33.735657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711250, 37.919170, 34.178051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362968, 37.814251, 34.011646>,  <32.153999, 37.751301, 33.911804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362968, 37.814251, 34.011646>,  <32.711250, 37.919170, 34.178051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362968, 37.814251, 34.011646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349190, -0.265932, 0.898525,
		-0.346312, 0.927621, 0.139958,
		-0.870709, -0.262298, -0.416012,
		32.101757, 37.735561, 33.886845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141750, 37.899475, 34.781578>,  <32.711250, 37.919170, 34.178051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141750, 37.899475, 34.781578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909105, 37.741596, 34.497059>,  <31.769518, 37.646870, 34.326347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909105, 37.741596, 34.497059>,  <32.141750, 37.899475, 34.781578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909105, 37.741596, 34.497059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419475, -0.603655, 0.677968,
		-0.696969, 0.692686, 0.185528,
		-0.581614, -0.394698, -0.711293,
		31.734621, 37.623188, 34.283672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435112, 37.996307, 35.009163>,  <32.141750, 37.899475, 34.781578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435112, 37.996307, 35.009163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451715, 37.680511, 34.764217>,  <31.461678, 37.491035, 34.617252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451715, 37.680511, 34.764217>,  <31.435112, 37.996307, 35.009163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451715, 37.680511, 34.764217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388899, -0.577322, 0.717953,
		-0.920345, 0.208344, -0.330996,
		0.041510, -0.789488, -0.612360,
		31.464169, 37.443665, 34.580509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869829, 37.626812, 35.017002>,  <31.435112, 37.996307, 35.009163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869829, 37.626812, 35.017002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078016, 37.324608, 34.857841>,  <31.202929, 37.143288, 34.762344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078016, 37.324608, 34.857841>,  <30.869829, 37.626812, 35.017002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078016, 37.324608, 34.857841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525195, -0.650662, 0.548460,
		-0.673264, -0.076479, -0.735436,
		0.520466, -0.755506, -0.397901,
		31.234158, 37.097958, 34.738472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427641, 37.038242, 35.070652>,  <30.869829, 37.626812, 35.017002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427641, 37.038242, 35.070652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773529, 36.851311, 34.997047>,  <30.981062, 36.739151, 34.952885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773529, 36.851311, 34.997047>,  <30.427641, 37.038242, 35.070652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773529, 36.851311, 34.997047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247420, -0.715197, 0.653664,
		-0.437085, -0.519707, -0.734072,
		0.864720, -0.467331, -0.184016,
		31.032946, 36.711113, 34.941841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293550, 36.343670, 35.125843>,  <30.427641, 37.038242, 35.070652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293550, 36.343670, 35.125843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692019, 36.340534, 35.160675>,  <30.931099, 36.338654, 35.181576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692019, 36.340534, 35.160675>,  <30.293550, 36.343670, 35.125843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692019, 36.340534, 35.160675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062298, -0.762447, 0.644044,
		0.061346, -0.647003, -0.760016,
		0.996170, -0.007838, 0.087080,
		30.990870, 36.338184, 35.186798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489435, 35.655396, 35.172028>,  <30.293550, 36.343670, 35.125843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489435, 35.655396, 35.172028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810963, 35.847672, 35.312206>,  <31.003880, 35.963039, 35.396313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810963, 35.847672, 35.312206>,  <30.489435, 35.655396, 35.172028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810963, 35.847672, 35.312206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163969, -0.745320, 0.646229,
		0.571833, -0.461987, -0.677920,
		0.803817, 0.480693, 0.350447,
		31.052107, 35.991879, 35.417339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944679, 35.226238, 35.201126>,  <30.489435, 35.655396, 35.172028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944679, 35.226238, 35.201126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064650, 35.506737, 35.459831>,  <31.136631, 35.675037, 35.615055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064650, 35.506737, 35.459831>,  <30.944679, 35.226238, 35.201126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064650, 35.506737, 35.459831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064023, -0.691240, 0.719783,
		0.951812, -0.174474, -0.252216,
		0.299925, 0.701246, 0.646760,
		31.154627, 35.717110, 35.653858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166172, 34.740841, 35.710171>,  <30.944679, 35.226238, 35.201126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166172, 34.740841, 35.710171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182793, 35.093498, 35.898201>,  <31.192766, 35.305092, 36.011021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182793, 35.093498, 35.898201>,  <31.166172, 34.740841, 35.710171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182793, 35.093498, 35.898201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049705, -0.468077, 0.882289,
		0.997899, -0.060027, 0.024372,
		0.041553, 0.881647, 0.470077,
		31.195259, 35.357994, 36.039223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702341, 34.695480, 36.354870>,  <31.166172, 34.740841, 35.710171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702341, 34.695480, 36.354870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443939, 34.989605, 36.436848>,  <31.288898, 35.166080, 36.486034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443939, 34.989605, 36.436848>,  <31.702341, 34.695480, 36.354870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443939, 34.989605, 36.436848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103373, -0.350280, 0.930923,
		0.756302, 0.580194, 0.302294,
		-0.646003, 0.735308, 0.204941,
		31.250137, 35.210197, 36.498329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962215, 35.125492, 36.974346>,  <31.702341, 34.695480, 36.354870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962215, 35.125492, 36.974346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569910, 35.199795, 36.998341>,  <31.334528, 35.244377, 37.012737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569910, 35.199795, 36.998341>,  <31.962215, 35.125492, 36.974346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569910, 35.199795, 36.998341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039856, -0.110275, 0.993102,
		0.191093, 0.976388, 0.100750,
		-0.980763, 0.185759, 0.059988,
		31.275681, 35.255524, 37.016338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268017, 35.673435, 36.597115>,  <31.962215, 35.125492, 36.974346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268017, 35.673435, 36.597115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592899, 35.623627, 36.825085>,  <32.787830, 35.593742, 36.961864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592899, 35.623627, 36.825085>,  <32.268017, 35.673435, 36.597115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592899, 35.623627, 36.825085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515867, 0.609482, -0.602007,
		-0.272396, 0.782959, 0.559263,
		0.812208, -0.124521, 0.569923,
		32.836563, 35.586269, 36.996063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531006, 36.456093, 36.768318>,  <32.268017, 35.673435, 36.597115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531006, 36.456093, 36.768318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844910, 36.213284, 36.818398>,  <33.033253, 36.067600, 36.848446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844910, 36.213284, 36.818398>,  <32.531006, 36.456093, 36.768318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844910, 36.213284, 36.818398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595649, 0.682800, -0.423067,
		0.171321, 0.406584, 0.897407,
		0.784761, -0.607020, 0.125203,
		33.080338, 36.031178, 36.855957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997730, 36.768223, 37.265316>,  <32.531006, 36.456093, 36.768318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997730, 36.768223, 37.265316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221180, 36.506172, 37.061844>,  <33.355247, 36.348942, 36.939762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221180, 36.506172, 37.061844>,  <32.997730, 36.768223, 37.265316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221180, 36.506172, 37.061844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589096, 0.745112, -0.312687,
		0.583873, -0.124989, 0.802166,
		0.558621, -0.655123, -0.508681,
		33.388767, 36.309635, 36.909241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524948, 37.022980, 37.135628>,  <32.997730, 36.768223, 37.265316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524948, 37.022980, 37.135628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611401, 36.722519, 36.886127>,  <33.663273, 36.542244, 36.736427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611401, 36.722519, 36.886127>,  <33.524948, 37.022980, 37.135628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611401, 36.722519, 36.886127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666482, 0.580358, -0.467960,
		0.713505, -0.314576, 0.626061,
		0.216130, -0.751150, -0.623748,
		33.676239, 36.497173, 36.699001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291927, 37.073330, 37.175159>,  <33.524948, 37.022980, 37.135628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291927, 37.073330, 37.175159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180069, 36.882065, 36.842136>,  <34.112953, 36.767307, 36.642323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180069, 36.882065, 36.842136>,  <34.291927, 37.073330, 37.175159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180069, 36.882065, 36.842136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653378, 0.540604, -0.529948,
		0.703487, -0.692175, 0.161243,
		-0.279648, -0.478164, -0.832560,
		34.096176, 36.738617, 36.592369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965084, 36.908058, 36.755760>,  <34.291927, 37.073330, 37.175159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965084, 36.908058, 36.755760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662380, 36.875401, 36.496330>,  <34.480759, 36.855808, 36.340672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662380, 36.875401, 36.496330>,  <34.965084, 36.908058, 36.755760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662380, 36.875401, 36.496330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490356, 0.585214, -0.645814,
		0.432280, -0.806759, -0.402833,
		-0.756760, -0.081641, -0.648575,
		34.435352, 36.850906, 36.301758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238148, 36.802925, 36.146198>,  <34.965084, 36.908058, 36.755760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238148, 36.802925, 36.146198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878796, 36.944958, 36.042786>,  <34.663185, 37.030178, 35.980740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878796, 36.944958, 36.042786>,  <35.238148, 36.802925, 36.146198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878796, 36.944958, 36.042786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435164, 0.639664, -0.633611,
		-0.059611, -0.681724, -0.729177,
		-0.898376, 0.355082, -0.258530,
		34.609283, 37.051483, 35.965225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174877, 36.845978, 35.412296>,  <35.238148, 36.802925, 36.146198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174877, 36.845978, 35.412296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916965, 37.114891, 35.557785>,  <34.762218, 37.276237, 35.645081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916965, 37.114891, 35.557785>,  <35.174877, 36.845978, 35.412296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916965, 37.114891, 35.557785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316381, 0.667902, -0.673654,
		-0.695821, -0.319281, -0.643345,
		-0.644777, 0.672285, 0.363726,
		34.723534, 37.316578, 35.666904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649899, 37.035351, 34.872726>,  <35.174877, 36.845978, 35.412296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649899, 37.035351, 34.872726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675697, 37.348431, 35.120346>,  <34.691177, 37.536278, 35.268917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675697, 37.348431, 35.120346>,  <34.649899, 37.035351, 34.872726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675697, 37.348431, 35.120346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052896, 0.616792, -0.785347,
		-0.996515, 0.083397, -0.001621,
		0.064496, 0.782696, 0.619054,
		34.695045, 37.583241, 35.306061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300606, 37.574402, 34.483238>,  <34.649899, 37.035351, 34.872726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300606, 37.574402, 34.483238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472813, 37.762280, 34.791534>,  <34.576138, 37.875008, 34.976513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472813, 37.762280, 34.791534>,  <34.300606, 37.574402, 34.483238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472813, 37.762280, 34.791534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073637, 0.832805, -0.548647,
		-0.899574, 0.292957, 0.323950,
		0.430517, 0.469694, 0.770742,
		34.601967, 37.903187, 35.022758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241779, 38.101574, 34.176128>,  <34.300606, 37.574402, 34.483238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241779, 38.101574, 34.176128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448952, 38.177025, 34.509876>,  <34.573254, 38.222298, 34.710125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448952, 38.177025, 34.509876>,  <34.241779, 38.101574, 34.176128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448952, 38.177025, 34.509876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189574, 0.925820, -0.326986,
		-0.834152, 0.327530, 0.443751,
		0.517931, 0.188632, 0.834365,
		34.604332, 38.233616, 34.760185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013657, 38.737240, 34.462639>,  <34.241779, 38.101574, 34.176128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013657, 38.737240, 34.462639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404270, 38.685143, 34.531250>,  <34.638638, 38.653885, 34.572418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404270, 38.685143, 34.531250>,  <34.013657, 38.737240, 34.462639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404270, 38.685143, 34.531250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205266, 0.803939, -0.558164,
		-0.065200, 0.580274, 0.811807,
		0.976532, -0.130244, 0.171527,
		34.697231, 38.646069, 34.582706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241470, 39.359493, 34.522469>,  <34.013657, 38.737240, 34.462639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241470, 39.359493, 34.522469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578327, 39.162037, 34.435642>,  <34.780441, 39.043564, 34.383545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578327, 39.162037, 34.435642>,  <34.241470, 39.359493, 34.522469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578327, 39.162037, 34.435642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239446, 0.702972, -0.669699,
		0.483184, 0.512003, 0.710201,
		0.842139, -0.493643, -0.217068,
		34.830971, 39.013943, 34.370522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741058, 39.791008, 34.623707>,  <34.241470, 39.359493, 34.522469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741058, 39.791008, 34.623707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904057, 39.528961, 34.369221>,  <35.001854, 39.371731, 34.216530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904057, 39.528961, 34.369221>,  <34.741058, 39.791008, 34.623707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904057, 39.528961, 34.369221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188208, 0.741969, -0.643475,
		0.893603, 0.142472, 0.425647,
		0.407494, -0.655121, -0.636211,
		35.026306, 39.332424, 34.178356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440334, 40.099472, 34.388367>,  <34.741058, 39.791008, 34.623707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440334, 40.099472, 34.388367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345673, 39.805733, 34.133896>,  <35.288876, 39.629490, 33.981213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345673, 39.805733, 34.133896>,  <35.440334, 40.099472, 34.388367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345673, 39.805733, 34.133896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319047, 0.559732, -0.764793,
		0.917716, -0.383964, 0.101828,
		-0.236657, -0.734351, -0.636177,
		35.274677, 39.585426, 33.943043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957985, 40.120346, 33.854263>,  <35.440334, 40.099472, 34.388367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957985, 40.120346, 33.854263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649143, 39.932259, 33.683270>,  <35.463837, 39.819405, 33.580673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649143, 39.932259, 33.683270>,  <35.957985, 40.120346, 33.854263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649143, 39.932259, 33.683270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240969, 0.405815, -0.881617,
		0.588032, -0.783715, -0.200025,
		-0.772109, -0.470219, -0.427483,
		35.417511, 39.791191, 33.555023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258511, 39.926064, 33.252899>,  <35.957985, 40.120346, 33.854263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258511, 39.926064, 33.252899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870258, 39.873394, 33.172352>,  <35.637306, 39.841793, 33.124023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870258, 39.873394, 33.172352>,  <36.258511, 39.926064, 33.252899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870258, 39.873394, 33.172352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155954, 0.292987, -0.943312,
		0.183203, -0.947007, -0.263847,
		-0.970626, -0.131669, -0.201365,
		35.579071, 39.833893, 33.111942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227745, 39.560078, 32.548466>,  <36.258511, 39.926064, 33.252899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227745, 39.560078, 32.548466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872162, 39.731899, 32.612019>,  <35.658813, 39.834991, 32.650150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872162, 39.731899, 32.612019>,  <36.227745, 39.560078, 32.548466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872162, 39.731899, 32.612019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053182, 0.247739, -0.967366,
		-0.454895, -0.868395, -0.197385,
		-0.888955, 0.429552, 0.158878,
		35.605476, 39.860764, 32.659683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672314, 39.223572, 32.139675>,  <36.227745, 39.560078, 32.548466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672314, 39.223572, 32.139675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554630, 39.595436, 32.228378>,  <35.484020, 39.818554, 32.281601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554630, 39.595436, 32.228378>,  <35.672314, 39.223572, 32.139675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554630, 39.595436, 32.228378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259599, 0.145571, -0.954682,
		-0.919811, -0.338440, 0.198511,
		-0.294205, 0.929660, 0.221757,
		35.466370, 39.874332, 32.294907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111553, 39.319763, 31.559940>,  <35.672314, 39.223572, 32.139675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111553, 39.319763, 31.559940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178738, 39.690952, 31.693003>,  <35.219048, 39.913666, 31.772840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178738, 39.690952, 31.693003>,  <35.111553, 39.319763, 31.559940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178738, 39.690952, 31.693003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047172, 0.344628, -0.937554,
		-0.984664, 0.141785, 0.101660,
		0.167966, 0.927970, 0.332654,
		35.229126, 39.969345, 31.792799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742741, 39.709106, 31.142965>,  <35.111553, 39.319763, 31.559940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742741, 39.709106, 31.142965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012939, 39.952423, 31.309668>,  <35.175060, 40.098412, 31.409689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012939, 39.952423, 31.309668>,  <34.742741, 39.709106, 31.142965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012939, 39.952423, 31.309668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073994, 0.506421, -0.859105,
		-0.733641, 0.611160, 0.297076,
		0.675497, 0.608293, 0.416754,
		35.215588, 40.134911, 31.434694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544346, 40.412605, 30.905378>,  <34.742741, 39.709106, 31.142965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544346, 40.412605, 30.905378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936691, 40.378246, 30.975262>,  <35.172100, 40.357632, 31.017191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936691, 40.378246, 30.975262>,  <34.544346, 40.412605, 30.905378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936691, 40.378246, 30.975262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194565, 0.401322, -0.895033,
		0.006769, 0.911900, 0.410357,
		0.980866, -0.085900, 0.174707,
		35.230949, 40.352478, 31.027674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855694, 41.130657, 30.650902>,  <34.544346, 40.412605, 30.905378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855694, 41.130657, 30.650902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173809, 40.892914, 30.698664>,  <35.364677, 40.750267, 30.727322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173809, 40.892914, 30.698664>,  <34.855694, 41.130657, 30.650902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173809, 40.892914, 30.698664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419092, 0.396698, -0.816696,
		0.438040, 0.699551, 0.564578,
		0.795288, -0.594356, 0.119407,
		35.412395, 40.714607, 30.734486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394348, 41.504753, 30.449581>,  <34.855694, 41.130657, 30.650902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394348, 41.504753, 30.449581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533558, 41.130344, 30.428612>,  <35.617085, 40.905701, 30.416031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533558, 41.130344, 30.428612>,  <35.394348, 41.504753, 30.449581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533558, 41.130344, 30.428612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345715, 0.180118, -0.920890,
		0.871412, 0.302369, 0.386282,
		0.348025, -0.936018, -0.052424,
		35.637966, 40.849541, 30.412884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869705, 41.585472, 30.009933>,  <35.394348, 41.504753, 30.449581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869705, 41.585472, 30.009933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862129, 41.185593, 30.003660>,  <35.857586, 40.945663, 29.999897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862129, 41.185593, 30.003660>,  <35.869705, 41.585472, 30.009933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862129, 41.185593, 30.003660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248387, 0.010491, -0.968604,
		0.968476, -0.022237, 0.248113,
		-0.018936, -0.999698, -0.015684,
		35.856449, 40.885685, 29.998955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517448, 41.365139, 29.813679>,  <35.869705, 41.585472, 30.009933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517448, 41.365139, 29.813679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256924, 41.082531, 29.702963>,  <36.100609, 40.912964, 29.636534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256924, 41.082531, 29.702963>,  <36.517448, 41.365139, 29.813679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256924, 41.082531, 29.702963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222133, 0.171263, -0.959857,
		0.725565, -0.686654, 0.045396,
		-0.651316, -0.706523, -0.276791,
		36.061527, 40.870575, 29.619926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977833, 40.989140, 29.265486>,  <36.517448, 41.365139, 29.813679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977833, 40.989140, 29.265486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610416, 40.840519, 29.211475>,  <36.389965, 40.751347, 29.179070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610416, 40.840519, 29.211475>,  <36.977833, 40.989140, 29.265486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610416, 40.840519, 29.211475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096329, 0.120901, -0.987980,
		0.383408, -0.920508, -0.075261,
		-0.918542, -0.371549, -0.135026,
		36.334854, 40.729053, 29.170967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093750, 40.453533, 28.714149>,  <36.977833, 40.989140, 29.265486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093750, 40.453533, 28.714149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701405, 40.530758, 28.704134>,  <36.465996, 40.577095, 28.698126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701405, 40.530758, 28.704134>,  <37.093750, 40.453533, 28.714149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701405, 40.530758, 28.704134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027624, 0.010715, -0.999561,
		-0.192712, -0.981127, -0.015844,
		-0.980867, 0.193065, -0.025038,
		36.407143, 40.588676, 28.696623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859501, 40.007893, 28.203527>,  <37.093750, 40.453533, 28.714149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859501, 40.007893, 28.203527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579426, 40.292534, 28.226719>,  <36.411381, 40.463318, 28.240633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579426, 40.292534, 28.226719>,  <36.859501, 40.007893, 28.203527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579426, 40.292534, 28.226719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017207, 0.064362, -0.997778,
		-0.713755, -0.699626, -0.032820,
		-0.700184, 0.711605, 0.057977,
		36.369370, 40.506016, 28.244112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210369, 39.762074, 27.878572>,  <36.859501, 40.007893, 28.203527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210369, 39.762074, 27.878572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242489, 40.160633, 27.867710>,  <36.261761, 40.399769, 27.861193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.242489, 40.160633, 27.867710>,  <36.210369, 39.762074, 27.878572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242489, 40.160633, 27.867710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074149, -0.021199, -0.997022,
		-0.994009, 0.082077, 0.072180,
		0.080302, 0.996401, -0.027158,
		36.266579, 40.459553, 27.859562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824749, 39.962509, 27.300247>,  <36.210369, 39.762074, 27.878572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824749, 39.962509, 27.300247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062073, 40.265446, 27.409370>,  <36.204468, 40.447208, 27.474844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062073, 40.265446, 27.409370>,  <35.824749, 39.962509, 27.300247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062073, 40.265446, 27.409370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272059, 0.130305, -0.953417,
		-0.757609, 0.639889, -0.128730,
		0.593307, 0.757340, 0.272807,
		36.240067, 40.492649, 27.491213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789234, 40.429974, 26.742760>,  <35.824749, 39.962509, 27.300247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789234, 40.429974, 26.742760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123405, 40.551781, 26.925772>,  <36.323906, 40.624863, 27.035580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123405, 40.551781, 26.925772>,  <35.789234, 40.429974, 26.742760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123405, 40.551781, 26.925772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379494, 0.282553, -0.880993,
		-0.397552, 0.909634, 0.120491,
		0.835426, 0.304515, 0.457530,
		36.374035, 40.643135, 27.063030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978912, 41.067638, 26.427595>,  <35.789234, 40.429974, 26.742760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978912, 41.067638, 26.427595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329002, 40.967976, 26.593441>,  <36.539055, 40.908176, 26.692947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329002, 40.967976, 26.593441>,  <35.978912, 41.067638, 26.427595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329002, 40.967976, 26.593441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481154, 0.360256, -0.799191,
		0.049759, 0.898963, 0.435189,
		0.875223, -0.249160, 0.414614,
		36.591568, 40.893227, 26.717825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442104, 41.627621, 26.522148>,  <35.978912, 41.067638, 26.427595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442104, 41.627621, 26.522148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681221, 41.306965, 26.520691>,  <36.824692, 41.114571, 26.519817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681221, 41.306965, 26.520691>,  <36.442104, 41.627621, 26.522148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681221, 41.306965, 26.520691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561447, 0.421913, -0.711876,
		0.572206, 0.423510, 0.702296,
		0.597795, -0.801641, -0.003643,
		36.860558, 41.066471, 26.519598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091396, 41.867718, 26.406155>,  <36.442104, 41.627621, 26.522148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091396, 41.867718, 26.406155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171238, 41.481300, 26.340540>,  <37.219143, 41.249451, 26.301170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171238, 41.481300, 26.340540>,  <37.091396, 41.867718, 26.406155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171238, 41.481300, 26.340540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192718, 0.202842, -0.960060,
		0.960737, 0.160023, 0.226663,
		0.199609, -0.966047, -0.164039,
		37.231121, 41.191486, 26.291328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834846, 41.816654, 26.060194>,  <37.091396, 41.867718, 26.406155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834846, 41.816654, 26.060194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649567, 41.467754, 25.997416>,  <37.538399, 41.258415, 25.959749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649567, 41.467754, 25.997416>,  <37.834846, 41.816654, 26.060194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649567, 41.467754, 25.997416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204161, 0.067307, -0.976621,
		0.862420, -0.484408, 0.146903,
		-0.463195, -0.872249, -0.156944,
		37.510609, 41.206081, 25.950333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347332, 41.391933, 25.669237>,  <37.834846, 41.816654, 26.060194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347332, 41.391933, 25.669237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975491, 41.263073, 25.597626>,  <37.752384, 41.185757, 25.554659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975491, 41.263073, 25.597626>,  <38.347332, 41.391933, 25.669237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975491, 41.263073, 25.597626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193387, -0.012846, -0.981039,
		0.313742, -0.946601, 0.074241,
		-0.929606, -0.322150, -0.179030,
		37.696609, 41.166428, 25.543917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424500, 40.798157, 25.317465>,  <38.347332, 41.391933, 25.669237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424500, 40.798157, 25.317465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079681, 40.969646, 25.209339>,  <37.872791, 41.072540, 25.144464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079681, 40.969646, 25.209339>,  <38.424500, 40.798157, 25.317465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079681, 40.969646, 25.209339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354271, 0.128304, -0.926299,
		-0.362444, -0.894279, -0.262488,
		-0.862048, 0.428723, -0.270314,
		37.821068, 41.098263, 25.128244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483360, 40.307381, 24.665295>,  <38.424500, 40.798157, 25.317465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483360, 40.307381, 24.665295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782127, 40.042667, 24.639505>,  <38.961388, 39.883839, 24.624031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782127, 40.042667, 24.639505>,  <38.483360, 40.307381, 24.665295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782127, 40.042667, 24.639505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092507, -0.199447, 0.975532,
		-0.658453, -0.722675, -0.210190,
		0.746915, -0.661786, -0.064475,
		39.006203, 39.844131, 24.620163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286366, 39.683971, 25.042477>,  <38.483360, 40.307381, 24.665295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286366, 39.683971, 25.042477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686317, 39.689960, 25.040770>,  <38.926289, 39.693554, 25.039745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686317, 39.689960, 25.040770>,  <38.286366, 39.683971, 25.042477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686317, 39.689960, 25.040770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007229, -0.203857, 0.978974,
		0.013790, -0.978886, -0.203941,
		0.999879, 0.014975, -0.004265,
		38.986282, 39.694454, 25.039490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561314, 38.997375, 25.307606>,  <38.286366, 39.683971, 25.042477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561314, 38.997375, 25.307606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873276, 39.245953, 25.337425>,  <39.060455, 39.395100, 25.355316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873276, 39.245953, 25.337425>,  <38.561314, 38.997375, 25.307606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873276, 39.245953, 25.337425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108589, -0.251648, 0.961707,
		0.616404, -0.741947, -0.263744,
		0.779907, 0.621440, 0.074550,
		39.107246, 39.432384, 25.359791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054958, 38.630779, 25.646070>,  <38.561314, 38.997375, 25.307606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054958, 38.630779, 25.646070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173260, 39.008087, 25.706430>,  <39.244240, 39.234470, 25.742645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173260, 39.008087, 25.706430>,  <39.054958, 38.630779, 25.646070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173260, 39.008087, 25.706430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136380, -0.198042, 0.970659,
		0.945478, -0.266499, -0.187215,
		0.295757, 0.943270, 0.150899,
		39.261986, 39.291069, 25.751699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712986, 38.614685, 25.855394>,  <39.054958, 38.630779, 25.646070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712986, 38.614685, 25.855394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585938, 38.976242, 25.970005>,  <39.509708, 39.193176, 26.038771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585938, 38.976242, 25.970005>,  <39.712986, 38.614685, 25.855394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585938, 38.976242, 25.970005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145373, -0.252182, 0.956698,
		0.937008, 0.345519, -0.051304,
		-0.317620, 0.903892, 0.286526,
		39.490650, 39.247410, 26.055964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105328, 38.794594, 26.445019>,  <39.712986, 38.614685, 25.855394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105328, 38.794594, 26.445019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804428, 39.058002, 26.453779>,  <39.623890, 39.216049, 26.459036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804428, 39.058002, 26.453779>,  <40.105328, 38.794594, 26.445019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804428, 39.058002, 26.453779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104382, -0.151925, 0.982865,
		0.650563, 0.737069, 0.183023,
		-0.752244, 0.658520, 0.021900,
		39.578754, 39.255558, 26.460350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203117, 39.237579, 27.078062>,  <40.105328, 38.794594, 26.445019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203117, 39.237579, 27.078062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817997, 39.287251, 26.982059>,  <39.586926, 39.317051, 26.924458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817997, 39.287251, 26.982059>,  <40.203117, 39.237579, 27.078062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817997, 39.287251, 26.982059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258253, -0.161373, 0.952504,
		0.079545, 0.979050, 0.187438,
		-0.962797, 0.124173, -0.240006,
		39.529160, 39.324501, 26.910057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931328, 39.656212, 27.636444>,  <40.203117, 39.237579, 27.078062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931328, 39.656212, 27.636444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642826, 39.441132, 27.461784>,  <39.469723, 39.312080, 27.356989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642826, 39.441132, 27.461784>,  <39.931328, 39.656212, 27.636444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642826, 39.441132, 27.461784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322315, -0.297445, 0.898688,
		-0.613108, 0.788923, 0.041223,
		-0.721257, -0.537705, -0.436647,
		39.426449, 39.279819, 27.330790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316216, 39.746483, 28.121260>,  <39.931328, 39.656212, 27.636444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316216, 39.746483, 28.121260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225510, 39.434605, 27.887798>,  <39.171085, 39.247478, 27.747721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225510, 39.434605, 27.887798>,  <39.316216, 39.746483, 28.121260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225510, 39.434605, 27.887798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387295, -0.477658, 0.788572,
		-0.893633, 0.404867, -0.193656,
		-0.226766, -0.779696, -0.583654,
		39.157478, 39.200695, 27.712702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664528, 39.572041, 28.343369>,  <39.316216, 39.746483, 28.121260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664528, 39.572041, 28.343369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813538, 39.244911, 28.167917>,  <38.902943, 39.048634, 28.062647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813538, 39.244911, 28.167917>,  <38.664528, 39.572041, 28.343369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813538, 39.244911, 28.167917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313696, -0.555797, 0.769860,
		-0.873396, -0.149194, -0.463594,
		0.372523, -0.817821, -0.438629,
		38.925293, 38.999565, 28.036329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235031, 39.084320, 28.442247>,  <38.664528, 39.572041, 28.343369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235031, 39.084320, 28.442247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562386, 38.877808, 28.341290>,  <38.758797, 38.753902, 28.280716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562386, 38.877808, 28.341290>,  <38.235031, 39.084320, 28.442247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562386, 38.877808, 28.341290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087205, -0.545682, 0.833443,
		-0.568023, -0.660062, -0.491598,
		0.818380, -0.516284, -0.252399,
		38.807899, 38.722923, 28.265572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006905, 38.412285, 28.509378>,  <38.235031, 39.084320, 28.442247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006905, 38.412285, 28.509378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406796, 38.412518, 28.518644>,  <38.646732, 38.412659, 28.524204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406796, 38.412518, 28.518644>,  <38.006905, 38.412285, 28.509378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406796, 38.412518, 28.518644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017921, -0.614404, 0.788788,
		0.014692, -0.788992, -0.614228,
		0.999731, 0.000581, 0.023166,
		38.706715, 38.412693, 28.525595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316723, 37.649036, 28.599728>,  <38.006905, 38.412285, 28.509378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316723, 37.649036, 28.599728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550819, 37.925182, 28.769850>,  <38.691277, 38.090870, 28.871923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550819, 37.925182, 28.769850>,  <38.316723, 37.649036, 28.599728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550819, 37.925182, 28.769850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131196, -0.436983, 0.889850,
		0.800175, -0.576575, -0.165167,
		0.585241, 0.690367, 0.425307,
		38.726391, 38.132294, 28.897442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739704, 37.260124, 29.099411>,  <38.316723, 37.649036, 28.599728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739704, 37.260124, 29.099411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686413, 37.637882, 29.219652>,  <38.654438, 37.864536, 29.291798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686413, 37.637882, 29.219652>,  <38.739704, 37.260124, 29.099411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686413, 37.637882, 29.219652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266311, -0.326267, 0.906989,
		0.954635, 0.040785, 0.294972,
		-0.133231, 0.944397, 0.300604,
		38.646442, 37.921200, 29.309834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964336, 37.268372, 29.773832>,  <38.739704, 37.260124, 29.099411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964336, 37.268372, 29.773832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764206, 37.614620, 29.781605>,  <38.644127, 37.822369, 29.786268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764206, 37.614620, 29.781605>,  <38.964336, 37.268372, 29.773832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764206, 37.614620, 29.781605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364207, -0.230768, 0.902274,
		0.785508, 0.444357, 0.430724,
		-0.500329, 0.865617, 0.019432,
		38.614105, 37.874306, 29.787434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065372, 37.585724, 30.426985>,  <38.964336, 37.268372, 29.773832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065372, 37.585724, 30.426985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755405, 37.803112, 30.297897>,  <38.569424, 37.933544, 30.220446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755405, 37.803112, 30.297897>,  <39.065372, 37.585724, 30.426985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755405, 37.803112, 30.297897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387456, -0.005045, 0.921874,
		0.499379, 0.839416, 0.214478,
		-0.774918, 0.543466, -0.322718,
		38.522930, 37.966152, 30.201082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997742, 38.134796, 30.919888>,  <39.065372, 37.585724, 30.426985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997742, 38.134796, 30.919888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633591, 38.102993, 30.757460>,  <38.415100, 38.083912, 30.660002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633591, 38.102993, 30.757460>,  <38.997742, 38.134796, 30.919888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633591, 38.102993, 30.757460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409906, 0.039282, 0.911282,
		-0.056501, 0.996060, -0.068352,
		-0.910376, -0.079506, -0.406071,
		38.360477, 38.079140, 30.635639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643070, 38.687637, 31.217382>,  <38.997742, 38.134796, 30.919888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643070, 38.687637, 31.217382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351452, 38.460289, 31.064837>,  <38.176479, 38.323879, 30.973309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351452, 38.460289, 31.064837>,  <38.643070, 38.687637, 31.217382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351452, 38.460289, 31.064837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432977, -0.048564, 0.900096,
		-0.530111, 0.821337, -0.210686,
		-0.729050, -0.568373, -0.381364,
		38.132736, 38.289776, 30.950428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994797, 38.934155, 31.457209>,  <38.643070, 38.687637, 31.217382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994797, 38.934155, 31.457209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913231, 38.559746, 31.342468>,  <37.864292, 38.335102, 31.273624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913231, 38.559746, 31.342468>,  <37.994797, 38.934155, 31.457209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913231, 38.559746, 31.342468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596227, -0.113661, 0.794729,
		-0.776486, 0.333089, -0.534903,
		-0.203918, -0.936020, -0.286853,
		37.852055, 38.278938, 31.256413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297070, 38.818829, 31.712812>,  <37.994797, 38.934155, 31.457209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297070, 38.818829, 31.712812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400841, 38.435341, 31.666252>,  <37.463104, 38.205246, 31.638317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400841, 38.435341, 31.666252>,  <37.297070, 38.818829, 31.712812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400841, 38.435341, 31.666252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536252, -0.243241, 0.808249,
		-0.803199, -0.147266, -0.577221,
		0.259431, -0.958721, -0.116399,
		37.478672, 38.147724, 31.631332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710159, 38.447239, 31.919518>,  <37.297070, 38.818829, 31.712812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710159, 38.447239, 31.919518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026821, 38.202881, 31.923248>,  <37.216820, 38.056267, 31.925488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026821, 38.202881, 31.923248>,  <36.710159, 38.447239, 31.919518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026821, 38.202881, 31.923248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379070, -0.479149, 0.791657,
		-0.479149, -0.630257, -0.610894,
		-0.791657, 0.610894, -0.009328,
		37.264317, 38.019611, 31.926046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372681, 37.869732, 32.251320>,  <36.710159, 38.447239, 31.919518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372681, 37.869732, 32.251320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769196, 37.821918, 32.273453>,  <37.007103, 37.793232, 32.286732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769196, 37.821918, 32.273453>,  <36.372681, 37.869732, 32.251320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769196, 37.821918, 32.273453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099202, -0.401205, 0.910601,
		-0.086647, -0.908156, -0.409567,
		0.991288, -0.119531, 0.055327,
		37.066582, 37.786060, 32.290051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473545, 37.236412, 32.594772>,  <36.372681, 37.869732, 32.251320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473545, 37.236412, 32.594772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815620, 37.439415, 32.636890>,  <37.020866, 37.561214, 32.662159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815620, 37.439415, 32.636890>,  <36.473545, 37.236412, 32.594772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815620, 37.439415, 32.636890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038358, -0.264558, 0.963607,
		0.516890, -0.820030, -0.245714,
		0.855192, 0.507504, 0.105293,
		37.072178, 37.591667, 32.668480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002064, 36.759632, 32.835007>,  <36.473545, 37.236412, 32.594772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002064, 36.759632, 32.835007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112980, 37.120449, 32.967327>,  <37.179531, 37.336941, 33.046719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112980, 37.120449, 32.967327>,  <37.002064, 36.759632, 32.835007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112980, 37.120449, 32.967327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208727, -0.392638, 0.895694,
		0.937840, -0.179319, -0.297155,
		0.277289, 0.902042, 0.330803,
		37.196167, 37.391060, 33.066566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379745, 36.603428, 33.457890>,  <37.002064, 36.759632, 32.835007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379745, 36.603428, 33.457890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374088, 37.000278, 33.507675>,  <37.370693, 37.238388, 33.537548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374088, 37.000278, 33.507675>,  <37.379745, 36.603428, 33.457890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374088, 37.000278, 33.507675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155271, -0.120789, 0.980460,
		0.987771, 0.033189, -0.152340,
		-0.014140, 0.992123, 0.124465,
		37.369846, 37.297916, 33.545013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962624, 36.906685, 33.710175>,  <37.379745, 36.603428, 33.457890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962624, 36.906685, 33.710175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692722, 37.184830, 33.809113>,  <37.530781, 37.351719, 33.868477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692722, 37.184830, 33.809113>,  <37.962624, 36.906685, 33.710175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692722, 37.184830, 33.809113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299010, -0.048843, 0.952999,
		0.674763, 0.716995, -0.174964,
		-0.674750, 0.695365, 0.247346,
		37.490295, 37.393440, 33.883316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279701, 37.517056, 34.026527>,  <37.962624, 36.906685, 33.710175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279701, 37.517056, 34.026527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904472, 37.472775, 34.157845>,  <37.679337, 37.446205, 34.236633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904472, 37.472775, 34.157845>,  <38.279701, 37.517056, 34.026527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904472, 37.472775, 34.157845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333512, -0.031988, 0.942203,
		-0.093804, 0.993339, 0.066928,
		-0.938068, -0.110704, 0.328290,
		37.623051, 37.439564, 34.256332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250927, 37.671814, 34.673492>,  <38.279701, 37.517056, 34.026527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250927, 37.671814, 34.673492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871059, 37.546558, 34.677128>,  <37.643139, 37.471405, 34.679310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871059, 37.546558, 34.677128>,  <38.250927, 37.671814, 34.673492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871059, 37.546558, 34.677128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073168, -0.193507, 0.978367,
		-0.304602, 0.929786, 0.206679,
		-0.949665, -0.313135, 0.009088,
		37.586159, 37.452618, 34.679855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065666, 37.931927, 35.328625>,  <38.250927, 37.671814, 34.673492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065666, 37.931927, 35.328625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792183, 37.659088, 35.224861>,  <37.628094, 37.495384, 35.162601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792183, 37.659088, 35.224861>,  <38.065666, 37.931927, 35.328625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792183, 37.659088, 35.224861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076669, -0.286371, 0.955047,
		-0.725721, 0.672858, 0.143498,
		-0.683704, -0.682095, -0.259412,
		37.587070, 37.454460, 35.147038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371330, 38.086765, 35.592743>,  <38.065666, 37.931927, 35.328625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371330, 38.086765, 35.592743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416176, 37.692513, 35.542206>,  <37.443085, 37.455959, 35.511883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416176, 37.692513, 35.542206>,  <37.371330, 38.086765, 35.592743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416176, 37.692513, 35.542206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149064, -0.142384, 0.978523,
		-0.982451, -0.090874, -0.162885,
		0.112114, -0.985631, -0.126340,
		37.449810, 37.396824, 35.504303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046913, 37.770969, 36.105206>,  <37.371330, 38.086765, 35.592743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046913, 37.770969, 36.105206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242355, 37.451603, 35.964466>,  <37.359619, 37.259983, 35.880024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242355, 37.451603, 35.964466>,  <37.046913, 37.770969, 36.105206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242355, 37.451603, 35.964466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105395, -0.454313, 0.884586,
		-0.866118, -0.395127, -0.306127,
		0.488601, -0.798420, -0.351844,
		37.388935, 37.212078, 35.858913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797554, 37.242214, 36.516281>,  <37.046913, 37.770969, 36.105206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797554, 37.242214, 36.516281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114452, 37.080944, 36.333069>,  <37.304592, 36.984180, 36.223141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114452, 37.080944, 36.333069>,  <36.797554, 37.242214, 36.516281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114452, 37.080944, 36.333069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005279, -0.746064, 0.665853,
		-0.610173, -0.529940, -0.588941,
		0.792251, -0.403177, -0.458026,
		37.352127, 36.959991, 36.195660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685616, 36.511574, 36.355682>,  <36.797554, 37.242214, 36.516281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685616, 36.511574, 36.355682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080742, 36.573750, 36.358883>,  <37.317818, 36.611057, 36.360806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080742, 36.573750, 36.358883>,  <36.685616, 36.511574, 36.355682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080742, 36.573750, 36.358883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126864, -0.833860, 0.537199,
		0.090180, -0.529636, -0.843418,
		0.987812, 0.155444, 0.008006,
		37.377087, 36.620384, 36.361286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960899, 35.915581, 36.351555>,  <36.685616, 36.511574, 36.355682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960899, 35.915581, 36.351555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298180, 36.102459, 36.457951>,  <37.500546, 36.214584, 36.521786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298180, 36.102459, 36.457951>,  <36.960899, 35.915581, 36.351555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298180, 36.102459, 36.457951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248096, -0.777087, 0.578433,
		0.476933, -0.421743, -0.771147,
		0.843198, 0.467192, 0.265986,
		37.551140, 36.242615, 36.537746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454430, 35.443829, 36.224274>,  <36.960899, 35.915581, 36.351555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454430, 35.443829, 36.224274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604904, 35.697224, 36.494732>,  <37.695190, 35.849262, 36.657005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604904, 35.697224, 36.494732>,  <37.454430, 35.443829, 36.224274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604904, 35.697224, 36.494732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385708, -0.770585, 0.507374,
		0.842445, 0.069928, -0.534226,
		0.376187, 0.633489, 0.676147,
		37.717762, 35.887272, 36.697575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139847, 35.129326, 36.423725>,  <37.454430, 35.443829, 36.224274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139847, 35.129326, 36.423725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029060, 35.386475, 36.709385>,  <37.962589, 35.540764, 36.880779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029060, 35.386475, 36.709385>,  <38.139847, 35.129326, 36.423725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029060, 35.386475, 36.709385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282200, -0.656025, 0.699996,
		0.918506, 0.395407, 0.000278,
		-0.276966, 0.642872, 0.714147,
		37.945972, 35.579338, 36.923630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660477, 35.025764, 36.894184>,  <38.139847, 35.129326, 36.423725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660477, 35.025764, 36.894184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359474, 35.190559, 37.099709>,  <38.178871, 35.289436, 37.223022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359474, 35.190559, 37.099709>,  <38.660477, 35.025764, 36.894184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359474, 35.190559, 37.099709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153619, -0.648849, 0.745249,
		0.640413, 0.639738, 0.424978,
		-0.752511, 0.411983, 0.513807,
		38.133720, 35.314156, 37.253849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859058, 34.997826, 37.602497>,  <38.660477, 35.025764, 36.894184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859058, 34.997826, 37.602497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466568, 35.074551, 37.610538>,  <38.231075, 35.120586, 37.615364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466568, 35.074551, 37.610538>,  <38.859058, 34.997826, 37.602497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466568, 35.074551, 37.610538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102532, -0.607105, 0.787979,
		0.163353, 0.771123, 0.615374,
		-0.981225, 0.191815, 0.020108,
		38.172199, 35.132095, 37.616570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782337, 35.246941, 38.259937>,  <38.859058, 34.997826, 37.602497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782337, 35.246941, 38.259937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434105, 35.107124, 38.121422>,  <38.225166, 35.023235, 38.038315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434105, 35.107124, 38.121422>,  <38.782337, 35.246941, 38.259937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434105, 35.107124, 38.121422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045942, -0.642965, 0.764516,
		-0.489881, 0.681480, 0.543693,
		-0.870578, -0.349544, -0.346285,
		38.172932, 35.002262, 38.017536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434635, 35.179600, 38.891361>,  <38.782337, 35.246941, 38.259937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434635, 35.179600, 38.891361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252075, 34.945999, 38.622841>,  <38.142540, 34.805840, 38.461727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252075, 34.945999, 38.622841>,  <38.434635, 35.179600, 38.891361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252075, 34.945999, 38.622841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108153, -0.712458, 0.693330,
		-0.883179, 0.389037, 0.262003,
		-0.456397, -0.583998, -0.671303,
		38.115154, 34.770802, 38.421452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698704, 35.060905, 38.943245>,  <38.434635, 35.179600, 38.891361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698704, 35.060905, 38.943245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895172, 34.755814, 38.774963>,  <38.013054, 34.572758, 38.673996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895172, 34.755814, 38.774963>,  <37.698704, 35.060905, 38.943245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895172, 34.755814, 38.774963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331317, -0.610260, 0.719592,
		-0.805593, -0.214058, -0.552448,
		0.491171, -0.762734, -0.420700,
		38.042522, 34.526993, 38.648754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244720, 34.501553, 38.888210>,  <37.698704, 35.060905, 38.943245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244720, 34.501553, 38.888210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615459, 34.351391, 38.890133>,  <37.837902, 34.261292, 38.891289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615459, 34.351391, 38.890133>,  <37.244720, 34.501553, 38.888210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615459, 34.351391, 38.890133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274886, -0.669830, 0.689757,
		-0.255717, -0.640623, -0.724025,
		0.926848, -0.375406, 0.004811,
		37.893513, 34.238770, 38.891575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241020, 33.766441, 38.704029>,  <37.244720, 34.501553, 38.888210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241020, 33.766441, 38.704029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561836, 33.866978, 38.920750>,  <37.754326, 33.927299, 39.050781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561836, 33.866978, 38.920750>,  <37.241020, 33.766441, 38.704029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561836, 33.866978, 38.920750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278526, -0.645068, 0.711555,
		0.528347, -0.721605, -0.447366,
		0.802043, 0.251345, 0.541805,
		37.802448, 33.942383, 39.083290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535927, 33.108601, 38.958389>,  <37.241020, 33.766441, 38.704029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535927, 33.108601, 38.958389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619781, 33.420773, 39.194008>,  <37.670094, 33.608074, 39.335381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619781, 33.420773, 39.194008>,  <37.535927, 33.108601, 38.958389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619781, 33.420773, 39.194008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138326, -0.572705, 0.808007,
		0.967945, -0.250870, -0.012107,
		0.209639, 0.780431, 0.589049,
		37.682674, 33.654903, 39.370724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054226, 32.827114, 39.444748>,  <37.535927, 33.108601, 38.958389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054226, 32.827114, 39.444748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903889, 33.155895, 39.615929>,  <37.813686, 33.353165, 39.718639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903889, 33.155895, 39.615929>,  <38.054226, 32.827114, 39.444748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903889, 33.155895, 39.615929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008595, -0.464884, 0.885330,
		0.926645, 0.329063, 0.181787,
		-0.375839, 0.821949, 0.427954,
		37.791138, 33.402481, 39.744316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239841, 32.800678, 40.207352>,  <38.054226, 32.827114, 39.444748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239841, 32.800678, 40.207352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947128, 33.073170, 40.199192>,  <37.771500, 33.236664, 40.194298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.947128, 33.073170, 40.199192>,  <38.239841, 32.800678, 40.207352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947128, 33.073170, 40.199192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292926, -0.287363, 0.911930,
		0.615373, 0.673312, 0.409837,
		-0.731786, 0.681230, -0.020395,
		37.727592, 33.277538, 40.193073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448170, 33.081123, 40.811588>,  <38.239841, 32.800678, 40.207352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448170, 33.081123, 40.811588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065670, 33.149376, 40.716530>,  <37.836170, 33.190327, 40.659492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065670, 33.149376, 40.716530>,  <38.448170, 33.081123, 40.811588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065670, 33.149376, 40.716530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283634, -0.341550, 0.896044,
		0.071725, 0.924245, 0.375003,
		-0.956246, 0.170633, -0.237649,
		37.778797, 33.200565, 40.645233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091469, 33.576969, 41.186653>,  <38.448170, 33.081123, 40.811588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091469, 33.576969, 41.186653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761189, 33.388325, 41.062840>,  <37.563023, 33.275139, 40.988552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761189, 33.388325, 41.062840>,  <38.091469, 33.576969, 41.186653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761189, 33.388325, 41.062840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354584, 0.007145, 0.934997,
		-0.438740, 0.881780, -0.173125,
		-0.825698, -0.471607, -0.309530,
		37.513477, 33.246841, 40.969982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594814, 33.743076, 41.629375>,  <38.091469, 33.576969, 41.186653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594814, 33.743076, 41.629375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439209, 33.412956, 41.465645>,  <37.345848, 33.214882, 41.367409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439209, 33.412956, 41.465645>,  <37.594814, 33.743076, 41.629375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439209, 33.412956, 41.465645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424726, -0.233607, 0.874663,
		-0.817484, 0.514102, -0.259653,
		-0.389009, -0.825304, -0.409323,
		37.322506, 33.165363, 41.342850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096428, 34.427345, 41.835152>,  <37.594814, 33.743076, 41.629375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096428, 34.427345, 41.835152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487232, 34.342506, 41.843807>,  <37.721714, 34.291603, 41.849003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487232, 34.342506, 41.843807>,  <37.096428, 34.427345, 41.835152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487232, 34.342506, 41.843807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034385, 0.056576, -0.997806,
		0.210409, 0.975609, 0.062568,
		0.977009, -0.212099, 0.021642,
		37.780334, 34.278877, 41.850300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361237, 34.183460, 41.547455>,  <37.096428, 34.427345, 41.835152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361237, 34.183460, 41.547455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142918, 33.921547, 41.756592>,  <36.011929, 33.764397, 41.882072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142918, 33.921547, 41.756592>,  <36.361237, 34.183460, 41.547455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142918, 33.921547, 41.756592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831540, 0.500108, -0.241730,
		-0.103196, -0.566698, -0.817437,
		-0.545794, -0.654786, 0.522842,
		35.979179, 33.725113, 41.913445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771957, 34.123028, 41.212650>,  <36.361237, 34.183460, 41.547455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771957, 34.123028, 41.212650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697300, 34.030090, 41.594475>,  <35.652508, 33.974327, 41.823570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697300, 34.030090, 41.594475>,  <35.771957, 34.123028, 41.212650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697300, 34.030090, 41.594475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711006, 0.702459, 0.031964,
		-0.677964, -0.672730, -0.296309,
		-0.186642, -0.232347, 0.954557,
		35.641308, 33.960384, 41.880840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019623, 33.898418, 41.382580>,  <35.771957, 34.123028, 41.212650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019623, 33.898418, 41.382580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226322, 34.074783, 41.676128>,  <35.350342, 34.180603, 41.852257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226322, 34.074783, 41.676128>,  <35.019623, 33.898418, 41.382580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226322, 34.074783, 41.676128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635109, 0.772241, -0.016764,
		-0.574119, -0.457427, 0.679079,
		0.516744, 0.440913, 0.733874,
		35.381344, 34.207058, 41.896290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616005, 34.050785, 41.955093>,  <35.019623, 33.898418, 41.382580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616005, 34.050785, 41.955093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930573, 34.297710, 41.963829>,  <35.119312, 34.445866, 41.969070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930573, 34.297710, 41.963829>,  <34.616005, 34.050785, 41.955093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930573, 34.297710, 41.963829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617406, 0.786639, -0.002993,
		-0.019027, -0.011130, 0.999757,
		0.786415, 0.617313, 0.021840,
		35.166496, 34.482903, 41.970383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488235, 34.542507, 42.454769>,  <34.616005, 34.050785, 41.955093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488235, 34.542507, 42.454769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788845, 34.724445, 42.263634>,  <34.969212, 34.833611, 42.148952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788845, 34.724445, 42.263634>,  <34.488235, 34.542507, 42.454769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788845, 34.724445, 42.263634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346628, 0.888525, 0.300619,
		0.561308, -0.060289, 0.825408,
		0.751520, 0.454849, -0.477839,
		35.014301, 34.860901, 42.120281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761074, 35.051765, 42.939663>,  <34.488235, 34.542507, 42.454769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761074, 35.051765, 42.939663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851460, 35.187363, 42.574364>,  <34.905689, 35.268719, 42.355183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851460, 35.187363, 42.574364>,  <34.761074, 35.051765, 42.939663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851460, 35.187363, 42.574364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220094, 0.931022, 0.291131,
		0.948947, 0.135217, 0.284986,
		0.225962, 0.338991, -0.913250,
		34.919247, 35.289059, 42.300388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000797, 35.707447, 43.201195>,  <34.761074, 35.051765, 42.939663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000797, 35.707447, 43.201195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991817, 35.748211, 42.803379>,  <34.986427, 35.772671, 42.564690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991817, 35.748211, 42.803379>,  <35.000797, 35.707447, 43.201195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991817, 35.748211, 42.803379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348681, 0.931529, 0.103325,
		0.936972, 0.349098, 0.014617,
		-0.022454, 0.101909, -0.994540,
		34.985081, 35.778782, 42.505016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353710, 36.299427, 42.949974>,  <35.000797, 35.707447, 43.201195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353710, 36.299427, 42.949974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128220, 36.272903, 42.620655>,  <34.992924, 36.256989, 42.423065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128220, 36.272903, 42.620655>,  <35.353710, 36.299427, 42.949974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128220, 36.272903, 42.620655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176176, 0.983487, 0.041419,
		0.806955, 0.168394, -0.566098,
		-0.563725, -0.066310, -0.823296,
		34.959103, 36.253010, 42.373665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405231, 36.946476, 42.511631>,  <35.353710, 36.299427, 42.949974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405231, 36.946476, 42.511631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064571, 36.785267, 42.377609>,  <34.860176, 36.688541, 42.297195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064571, 36.785267, 42.377609>,  <35.405231, 36.946476, 42.511631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064571, 36.785267, 42.377609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326167, 0.907961, -0.263099,
		0.410250, -0.114786, -0.904721,
		-0.851651, -0.403027, -0.335052,
		34.809074, 36.664360, 42.277092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216690, 37.201473, 41.871208>,  <35.405231, 36.946476, 42.511631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216690, 37.201473, 41.871208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877445, 37.073486, 42.040123>,  <34.673897, 36.996693, 42.141472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877445, 37.073486, 42.040123>,  <35.216690, 37.201473, 41.871208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877445, 37.073486, 42.040123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447585, 0.859190, -0.247912,
		-0.283500, -0.399266, -0.871902,
		-0.848112, -0.319967, 0.422286,
		34.623013, 36.977497, 42.166809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097519, 37.880295, 41.446945>,  <35.216690, 37.201473, 41.871208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097519, 37.880295, 41.446945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871750, 38.030537, 41.152912>,  <34.736286, 38.120682, 40.976494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871750, 38.030537, 41.152912>,  <35.097519, 37.880295, 41.446945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871750, 38.030537, 41.152912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417816, 0.897985, 0.138030,
		0.711937, -0.229221, -0.663780,
		-0.564425, 0.375606, -0.735081,
		34.702423, 38.143219, 40.932388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590775, 37.781971, 41.864029>,  <35.097519, 37.880295, 41.446945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590775, 37.781971, 41.864029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862095, 37.800385, 42.157368>,  <35.024887, 37.811432, 42.333370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862095, 37.800385, 42.157368>,  <34.590775, 37.781971, 41.864029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862095, 37.800385, 42.157368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015914, 0.996881, -0.077301,
		-0.734615, 0.064104, 0.675449,
		0.678297, 0.046037, 0.733344,
		35.065582, 37.814198, 42.377373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506855, 38.131863, 42.517879>,  <34.590775, 37.781971, 41.864029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506855, 38.131863, 42.517879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883873, 38.186592, 42.395969>,  <35.110085, 38.219429, 42.322823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883873, 38.186592, 42.395969>,  <34.506855, 38.131863, 42.517879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883873, 38.186592, 42.395969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166939, 0.983116, -0.074933,
		0.289377, 0.121507, 0.949472,
		0.942545, 0.136820, -0.304776,
		35.166637, 38.227638, 42.304535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012531, 37.707703, 42.893536>,  <34.506855, 38.131863, 42.517879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012531, 37.707703, 42.893536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893826, 37.559841, 42.541336>,  <33.822601, 37.471123, 42.330017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893826, 37.559841, 42.541336>,  <34.012531, 37.707703, 42.893536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893826, 37.559841, 42.541336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618713, -0.776769, 0.117576,
		-0.727410, -0.509886, 0.459230,
		-0.296765, -0.369658, -0.880502,
		33.804794, 37.448944, 42.277184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003452, 37.032528, 42.931263>,  <34.012531, 37.707703, 42.893536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003452, 37.032528, 42.931263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004566, 37.065479, 42.532623>,  <34.005234, 37.085251, 42.293442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004566, 37.065479, 42.532623>,  <34.003452, 37.032528, 42.931263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004566, 37.065479, 42.532623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563677, -0.823315, -0.066483,
		-0.825990, -0.561574, -0.048729,
		0.002784, 0.082382, -0.996597,
		34.005402, 37.090195, 42.233643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587669, 36.481754, 42.490059>,  <34.003452, 37.032528, 42.931263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587669, 36.481754, 42.490059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893513, 36.632641, 42.281033>,  <34.077019, 36.723171, 42.155617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893513, 36.632641, 42.281033>,  <33.587669, 36.481754, 42.490059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893513, 36.632641, 42.281033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479922, -0.874433, 0.071002,
		-0.430165, -0.305080, -0.849638,
		0.764613, 0.377217, -0.522565,
		34.122898, 36.745808, 42.124264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719948, 36.074982, 41.868237>,  <33.587669, 36.481754, 42.490059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719948, 36.074982, 41.868237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048683, 36.263302, 41.996567>,  <34.245926, 36.376293, 42.073563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048683, 36.263302, 41.996567>,  <33.719948, 36.074982, 41.868237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048683, 36.263302, 41.996567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497098, -0.867694, -0.000064,
		0.278345, 0.159532, -0.947140,
		0.821838, 0.470804, 0.320822,
		34.295235, 36.404545, 42.092812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132217, 35.898998, 41.449711>,  <33.719948, 36.074982, 41.868237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132217, 35.898998, 41.449711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371738, 36.017010, 41.747543>,  <34.515450, 36.087818, 41.926243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371738, 36.017010, 41.747543>,  <34.132217, 35.898998, 41.449711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371738, 36.017010, 41.747543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550358, -0.826981, -0.114926,
		0.581848, 0.478603, -0.657565,
		0.598798, 0.295027, 0.744580,
		34.551376, 36.105518, 41.970917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744343, 35.910980, 41.198418>,  <34.132217, 35.898998, 41.449711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744343, 35.910980, 41.198418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800694, 35.873348, 41.592636>,  <34.834503, 35.850769, 41.829166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800694, 35.873348, 41.592636>,  <34.744343, 35.910980, 41.198418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800694, 35.873348, 41.592636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523070, -0.838119, -0.154771,
		0.840567, 0.537313, -0.068862,
		0.140875, -0.094076, 0.985548,
		34.842957, 35.845127, 41.888302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516426, 35.922379, 41.353737>,  <34.744343, 35.910980, 41.198418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516426, 35.922379, 41.353737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309391, 35.713223, 41.624641>,  <35.185169, 35.587730, 41.787186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309391, 35.713223, 41.624641>,  <35.516426, 35.922379, 41.353737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309391, 35.713223, 41.624641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592597, -0.790037, -0.157069,
		0.617194, 0.320049, 0.718777,
		-0.517590, -0.522887, 0.677266,
		35.154114, 35.556355, 41.827820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965538, 35.391171, 41.452381>,  <35.516426, 35.922379, 41.353737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965538, 35.391171, 41.452381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683441, 35.247681, 41.696987>,  <35.514183, 35.161587, 41.843750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683441, 35.247681, 41.696987>,  <35.965538, 35.391171, 41.452381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683441, 35.247681, 41.696987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475875, -0.878884, 0.033244,
		0.525524, 0.314449, 0.790536,
		-0.705243, -0.358726, 0.611513,
		35.471867, 35.140064, 41.880440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245033, 35.205101, 42.129230>,  <35.965538, 35.391171, 41.452381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245033, 35.205101, 42.129230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913918, 34.991859, 42.059311>,  <35.715248, 34.863914, 42.017357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913918, 34.991859, 42.059311>,  <36.245033, 35.205101, 42.129230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913918, 34.991859, 42.059311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504612, -0.843659, 0.183318,
		-0.245201, 0.063543, 0.967388,
		-0.827794, -0.533105, -0.174802,
		35.665581, 34.831928, 42.006870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230553, 34.671745, 42.669170>,  <36.245033, 35.205101, 42.129230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230553, 34.671745, 42.669170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043827, 34.547913, 42.337811>,  <35.931793, 34.473614, 42.138996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043827, 34.547913, 42.337811>,  <36.230553, 34.671745, 42.669170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043827, 34.547913, 42.337811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549873, -0.835245, 0.002281,
		-0.692622, -0.454450, 0.560134,
		-0.466812, -0.309582, -0.828399,
		35.903782, 34.455036, 42.089291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488873, 33.859249, 42.540077>,  <36.230553, 34.671745, 42.669170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488873, 33.859249, 42.540077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329777, 33.492332, 42.547852>,  <36.234318, 33.272182, 42.552517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329777, 33.492332, 42.547852>,  <36.488873, 33.859249, 42.540077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329777, 33.492332, 42.547852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281512, -0.142173, -0.948967,
		0.873243, -0.371971, 0.314777,
		-0.397741, -0.917292, 0.019437,
		36.210453, 33.217144, 42.553684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913525, 33.262024, 42.618130>,  <36.488873, 33.859249, 42.540077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913525, 33.262024, 42.618130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595501, 33.214001, 42.380318>,  <36.404686, 33.185188, 42.237629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595501, 33.214001, 42.380318>,  <36.913525, 33.262024, 42.618130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595501, 33.214001, 42.380318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603321, -0.055775, -0.795545,
		0.062350, -0.991199, 0.116776,
		-0.795057, -0.120056, -0.594534,
		36.356983, 33.177986, 42.201958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201164, 32.845501, 42.019981>,  <36.913525, 33.262024, 42.618130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201164, 32.845501, 42.019981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847874, 32.990047, 41.900425>,  <36.635899, 33.076775, 41.828693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847874, 32.990047, 41.900425>,  <37.201164, 32.845501, 42.019981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847874, 32.990047, 41.900425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339289, 0.052430, -0.939220,
		-0.323732, -0.930948, -0.168915,
		-0.883222, 0.361367, -0.298887,
		36.582909, 33.098457, 41.810760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013271, 32.369957, 41.508957>,  <37.201164, 32.845501, 42.019981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013271, 32.369957, 41.508957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856117, 32.730518, 41.436165>,  <36.761826, 32.946854, 41.392490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856117, 32.730518, 41.436165>,  <37.013271, 32.369957, 41.508957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856117, 32.730518, 41.436165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272945, -0.074665, -0.959127,
		-0.878146, -0.426498, -0.216698,
		-0.392887, 0.901401, -0.181978,
		36.738251, 33.000938, 41.381573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869907, 32.313950, 40.764832>,  <37.013271, 32.369957, 41.508957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869907, 32.313950, 40.764832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869133, 32.685661, 40.912575>,  <36.868668, 32.908688, 41.001221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869133, 32.685661, 40.912575>,  <36.869907, 32.313950, 40.764832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869133, 32.685661, 40.912575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520503, 0.316322, -0.793106,
		-0.853858, 0.190717, -0.484308,
		-0.001938, 0.929283, 0.369363,
		36.868553, 32.964447, 41.023384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639065, 32.848942, 40.264801>,  <36.869907, 32.313950, 40.764832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639065, 32.848942, 40.264801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858223, 33.044003, 40.536686>,  <36.989716, 33.161037, 40.699818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858223, 33.044003, 40.536686>,  <36.639065, 32.848942, 40.264801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858223, 33.044003, 40.536686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475643, 0.486808, -0.732654,
		-0.688169, 0.724716, 0.034771,
		0.547893, 0.487651, 0.679713,
		37.022591, 33.190296, 40.740601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519897, 33.493343, 40.271301>,  <36.639065, 32.848942, 40.264801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519897, 33.493343, 40.271301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898384, 33.416840, 40.375675>,  <37.125477, 33.370937, 40.438297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898384, 33.416840, 40.375675>,  <36.519897, 33.493343, 40.271301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898384, 33.416840, 40.375675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323500, 0.568771, -0.756206,
		-0.003778, 0.799949, 0.600056,
		0.946221, -0.191262, 0.260932,
		37.182251, 33.359463, 40.453957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823956, 34.136482, 40.090786>,  <36.519897, 33.493343, 40.271301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823956, 34.136482, 40.090786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131290, 33.892033, 40.166866>,  <37.315693, 33.745361, 40.212513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131290, 33.892033, 40.166866>,  <36.823956, 34.136482, 40.090786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131290, 33.892033, 40.166866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515506, 0.414756, -0.749821,
		0.379350, 0.674166, 0.633714,
		0.768341, -0.611128, 0.190199,
		37.361794, 33.708694, 40.223927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429829, 34.546894, 40.214672>,  <36.823956, 34.136482, 40.090786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429829, 34.546894, 40.214672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514061, 34.185692, 40.064880>,  <37.564602, 33.968971, 39.975006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514061, 34.185692, 40.064880>,  <37.429829, 34.546894, 40.214672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514061, 34.185692, 40.064880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510507, 0.428269, -0.745633,
		0.833689, -0.034158, 0.551177,
		0.210583, -0.903005, -0.374481,
		37.577236, 33.914791, 39.952538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225994, 34.514206, 40.157623>,  <37.429829, 34.546894, 40.214672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225994, 34.514206, 40.157623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020767, 34.264744, 39.921722>,  <37.897629, 34.115067, 39.780182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020767, 34.264744, 39.921722>,  <38.225994, 34.514206, 40.157623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020767, 34.264744, 39.921722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562876, 0.274262, -0.779712,
		0.648018, -0.732008, 0.210324,
		-0.513072, -0.623654, -0.589757,
		37.866844, 34.077648, 39.744797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801323, 34.111057, 39.859154>,  <38.225994, 34.514206, 40.157623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801323, 34.111057, 39.859154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492573, 34.069386, 39.608280>,  <38.307323, 34.044380, 39.457756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492573, 34.069386, 39.608280>,  <38.801323, 34.111057, 39.859154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492573, 34.069386, 39.608280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524191, 0.453937, -0.720531,
		0.359764, -0.884923, -0.295774,
		-0.771877, -0.104179, -0.627179,
		38.261009, 34.038132, 39.420128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980843, 33.800461, 39.269508>,  <38.801323, 34.111057, 39.859154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980843, 33.800461, 39.269508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646084, 33.993477, 39.166153>,  <38.445229, 34.109287, 39.104141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646084, 33.993477, 39.166153>,  <38.980843, 33.800461, 39.269508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646084, 33.993477, 39.166153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510026, 0.516095, -0.688127,
		-0.198697, -0.707673, -0.678025,
		-0.836895, 0.482539, -0.258385,
		38.395016, 34.138237, 39.088638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992798, 33.698643, 38.570358>,  <38.980843, 33.800461, 39.269508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992798, 33.698643, 38.570358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805740, 34.021439, 38.714622>,  <38.693508, 34.215118, 38.801182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805740, 34.021439, 38.714622>,  <38.992798, 33.698643, 38.570358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805740, 34.021439, 38.714622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527161, 0.582141, -0.619042,
		-0.709517, -0.099363, -0.697648,
		-0.467639, 0.806994, 0.360659,
		38.665447, 34.263538, 38.822819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510666, 34.094513, 38.070709>,  <38.992798, 33.698643, 38.570358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510666, 34.094513, 38.070709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708309, 34.306305, 38.346539>,  <38.826897, 34.433380, 38.512035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708309, 34.306305, 38.346539>,  <38.510666, 34.094513, 38.070709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708309, 34.306305, 38.346539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593843, 0.373755, -0.712501,
		-0.634983, 0.761552, -0.129749,
		0.494112, 0.529477, 0.689571,
		38.856544, 34.465149, 38.553410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304207, 34.325764, 38.202168>,  <38.510666, 34.094513, 38.070709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304207, 34.325764, 38.202168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161484, 34.635883, 38.410625>,  <39.075848, 34.821957, 38.535702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161484, 34.635883, 38.410625>,  <39.304207, 34.325764, 38.202168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161484, 34.635883, 38.410625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934176, -0.296769, -0.198097,
		0.001075, -0.557526, 0.830159,
		-0.356810, 0.775301, 0.521147,
		39.054440, 34.868473, 38.566971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782169, 34.811886, 38.567230>,  <39.304207, 34.325764, 38.202168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782169, 34.811886, 38.567230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068714, 34.792286, 38.845631>,  <40.240643, 34.780525, 39.012672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068714, 34.792286, 38.845631>,  <39.782169, 34.811886, 38.567230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068714, 34.792286, 38.845631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697718, 0.055158, -0.714246,
		-0.003391, 0.997275, 0.073702,
		0.716365, -0.049001, 0.696003,
		40.283623, 34.777584, 39.054432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279396, 35.452995, 38.570950>,  <39.782169, 34.811886, 38.567230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279396, 35.452995, 38.570950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423931, 35.098568, 38.687096>,  <40.510654, 34.885910, 38.756783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423931, 35.098568, 38.687096>,  <40.279396, 35.452995, 38.570950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423931, 35.098568, 38.687096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729039, 0.074327, -0.680424,
		0.581321, 0.457555, 0.672837,
		0.361341, -0.886069, 0.290368,
		40.532333, 34.832748, 38.774204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027233, 35.370792, 38.840958>,  <40.279396, 35.452995, 38.570950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027233, 35.370792, 38.840958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931709, 35.037247, 38.641903>,  <40.874397, 34.837120, 38.522469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931709, 35.037247, 38.641903>,  <41.027233, 35.370792, 38.840958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931709, 35.037247, 38.641903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826496, 0.094494, -0.554955,
		0.509780, -0.543825, 0.666617,
		-0.238807, -0.833861, -0.497641,
		40.860065, 34.787086, 38.492611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533077, 34.905014, 38.904190>,  <41.027233, 35.370792, 38.840958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533077, 34.905014, 38.904190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358547, 34.857006, 38.547489>,  <41.253830, 34.828201, 38.333469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358547, 34.857006, 38.547489>,  <41.533077, 34.905014, 38.904190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358547, 34.857006, 38.547489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899119, -0.019918, -0.437251,
		0.034717, -0.992572, 0.116602,
		-0.436325, -0.120019, -0.891748,
		41.227650, 34.820999, 38.279964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582039, 34.246754, 38.549103>,  <41.533077, 34.905014, 38.904190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582039, 34.246754, 38.549103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577991, 34.573952, 38.319050>,  <41.575562, 34.770271, 38.181019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.577991, 34.573952, 38.319050>,  <41.582039, 34.246754, 38.549103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577991, 34.573952, 38.319050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975716, -0.117777, -0.184678,
		-0.218804, -0.563036, -0.796941,
		-0.010119, 0.817997, -0.575133,
		41.574955, 34.819351, 38.146511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175182, 34.210327, 38.018238>,  <41.582039, 34.246754, 38.549103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175182, 34.210327, 38.018238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080101, 34.594276, 37.958721>,  <42.023052, 34.824646, 37.923012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080101, 34.594276, 37.958721>,  <42.175182, 34.210327, 38.018238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080101, 34.594276, 37.958721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964234, 0.214692, -0.155432,
		-0.117252, -0.180415, -0.976577,
		-0.237706, 0.959874, -0.148789,
		42.008789, 34.882240, 37.914085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422672, 34.509331, 37.367161>,  <42.175182, 34.210327, 38.018238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422672, 34.509331, 37.367161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378956, 34.800686, 37.637718>,  <42.352726, 34.975498, 37.800053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378956, 34.800686, 37.637718>,  <42.422672, 34.509331, 37.367161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378956, 34.800686, 37.637718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968673, 0.230701, -0.091919,
		-0.222997, 0.645156, -0.730785,
		-0.109290, 0.728389, 0.676391,
		42.346169, 35.019203, 37.840637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742878, 35.096233, 37.032524>,  <42.422672, 34.509331, 37.367161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742878, 35.096233, 37.032524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742153, 35.089340, 37.432465>,  <42.741718, 35.085205, 37.672428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742153, 35.089340, 37.432465>,  <42.742878, 35.096233, 37.032524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742153, 35.089340, 37.432465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920966, 0.389552, 0.008385,
		-0.389638, 0.920844, 0.015158,
		-0.001816, -0.017227, 0.999850,
		42.741608, 35.084171, 37.732418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.816177, 35.784592, 37.476917>,  <42.742878, 35.096233, 37.032524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.816177, 35.784592, 37.476917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985844, 35.432735, 37.563000>,  <43.087643, 35.221622, 37.614647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985844, 35.432735, 37.563000>,  <42.816177, 35.784592, 37.476917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985844, 35.432735, 37.563000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897992, 0.377845, -0.225487,
		0.117035, 0.288894, 0.950181,
		0.424162, -0.879644, 0.215203,
		43.113091, 35.168842, 37.627560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403400, 35.791019, 37.990768>,  <42.816177, 35.784592, 37.476917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403400, 35.791019, 37.990768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.440205, 35.491100, 37.728676>,  <43.462288, 35.311150, 37.571419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.440205, 35.491100, 37.728676>,  <43.403400, 35.791019, 37.990768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.440205, 35.491100, 37.728676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854499, 0.397298, -0.334642,
		0.511238, -0.529105, 0.677262,
		0.092014, -0.749801, -0.655234,
		43.467808, 35.266159, 37.532104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104992, 35.489292, 38.039024>,  <43.403400, 35.791019, 37.990768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104992, 35.489292, 38.039024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958797, 35.424328, 37.672409>,  <43.871082, 35.385349, 37.452438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958797, 35.424328, 37.672409>,  <44.104992, 35.489292, 38.039024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958797, 35.424328, 37.672409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789709, 0.467125, -0.397685,
		0.492729, -0.869146, -0.042465,
		-0.365483, -0.162416, -0.916539,
		43.849152, 35.375603, 37.397446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628986, 34.965012, 37.659546>,  <44.104992, 35.489292, 38.039024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628986, 34.965012, 37.659546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.420418, 35.221504, 37.434357>,  <44.295277, 35.375401, 37.299244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.420418, 35.221504, 37.434357>,  <44.628986, 34.965012, 37.659546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.420418, 35.221504, 37.434357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852977, 0.373613, -0.364476,
		-0.023378, -0.670252, -0.741765,
		-0.521424, 0.641230, -0.562975,
		44.263992, 35.413872, 37.265465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.675270, 34.764927, 36.887177>,  <44.628986, 34.965012, 37.659546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.675270, 34.764927, 36.887177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.645298, 35.150185, 36.990517>,  <44.627316, 35.381340, 37.052521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.645298, 35.150185, 36.990517>,  <44.675270, 34.764927, 36.887177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645298, 35.150185, 36.990517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843921, 0.199259, -0.498089,
		-0.531208, 0.180704, -0.827746,
		-0.074929, 0.963142, 0.258348,
		44.622818, 35.439129, 37.068020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642426, 35.269524, 36.297009>,  <44.675270, 34.764927, 36.887177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642426, 35.269524, 36.297009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.812748, 35.454124, 36.608315>,  <44.914944, 35.564884, 36.795097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.812748, 35.454124, 36.608315>,  <44.642426, 35.269524, 36.297009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.812748, 35.454124, 36.608315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748753, 0.303188, -0.589446,
		-0.507992, 0.833722, -0.216451,
		0.425809, 0.461502, 0.778269,
		44.940491, 35.592575, 36.841797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.309795, 35.014069, 35.885574>,  <44.642426, 35.269524, 36.297009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.309795, 35.014069, 35.885574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534161, 35.232040, 35.636280>,  <45.668781, 35.362823, 35.486702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.534161, 35.232040, 35.636280>,  <45.309795, 35.014069, 35.885574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.534161, 35.232040, 35.636280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793142, -0.569488, 0.215891,
		-0.237280, -0.615413, -0.751642,
		0.560913, 0.544932, -0.623238,
		45.702435, 35.395519, 35.449310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.746838, 34.602715, 35.457603>,  <45.309795, 35.014069, 35.885574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.746838, 34.602715, 35.457603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903202, 34.966461, 35.514523>,  <45.997021, 35.184708, 35.548672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903202, 34.966461, 35.514523>,  <45.746838, 34.602715, 35.457603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.903202, 34.966461, 35.514523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843654, -0.415807, 0.339635,
		0.368019, -0.012720, -0.929731,
		0.390909, 0.909364, 0.142293,
		46.020473, 35.239269, 35.557209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.436752, 34.703377, 35.195705>,  <45.746838, 34.602715, 35.457603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.436752, 34.703377, 35.195705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.386452, 34.935970, 35.517220>,  <46.356274, 35.075527, 35.710129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.386452, 34.935970, 35.517220>,  <46.436752, 34.703377, 35.195705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.386452, 34.935970, 35.517220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867045, -0.329313, 0.373879,
		0.482100, 0.743931, -0.462759,
		-0.125748, 0.581481, 0.803784,
		46.348728, 35.110413, 35.758354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.942558, 35.295853, 35.230450>,  <46.436752, 34.703377, 35.195705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.942558, 35.295853, 35.230450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.834908, 35.227810, 35.609634>,  <46.770317, 35.186985, 35.837147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.834908, 35.227810, 35.609634>,  <46.942558, 35.295853, 35.230450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.834908, 35.227810, 35.609634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957380, -0.154402, 0.244096,
		0.104844, 0.973254, 0.204413,
		-0.269129, -0.170109, 0.947962,
		46.754169, 35.176777, 35.894024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.305389, 34.800766, 35.164783>,  <46.942558, 35.295853, 35.230450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.305389, 34.800766, 35.164783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.703377, 34.804054, 35.124851>,  <47.942169, 34.806026, 35.100891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.703377, 34.804054, 35.124851>,  <47.305389, 34.800766, 35.164783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.703377, 34.804054, 35.124851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042602, 0.936720, -0.347477,
		0.090662, 0.349983, 0.932358,
		0.994970, 0.008218, -0.099835,
		48.001869, 34.806519, 35.094902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.647606, 34.921371, 28.781412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.386761, 34.715439, 28.558813>,  <35.230251, 34.591877, 28.425253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.386761, 34.715439, 28.558813>,  <35.647606, 34.921371, 28.781412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386761, 34.715439, 28.558813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336299, -0.461430, 0.820966,
		-0.679446, 0.722515, 0.127768,
		-0.652116, -0.514834, -0.556498,
		35.191124, 34.560989, 28.391863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091713, 35.032211, 29.243956>,  <35.647606, 34.921371, 28.781412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091713, 35.032211, 29.243956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.999489, 34.737320, 28.989918>,  <34.944157, 34.560387, 28.837496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.999489, 34.737320, 28.989918>,  <35.091713, 35.032211, 29.243956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999489, 34.737320, 28.989918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505050, -0.467215, 0.725695,
		-0.831726, 0.488068, -0.264616,
		-0.230556, -0.737224, -0.635094,
		34.930321, 34.516151, 28.799389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619858, 34.800900, 29.606989>,  <35.091713, 35.032211, 29.243956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619858, 34.800900, 29.606989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.685028, 34.495441, 29.357092>,  <34.724129, 34.312168, 29.207153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.685028, 34.495441, 29.357092>,  <34.619858, 34.800900, 29.606989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685028, 34.495441, 29.357092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338286, -0.638054, 0.691700,
		-0.926833, 0.098648, -0.362283,
		0.162921, -0.763646, -0.624741,
		34.733906, 34.266346, 29.169670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941582, 34.406544, 29.374174>,  <34.619858, 34.800900, 29.606989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941582, 34.406544, 29.374174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.256237, 34.161015, 29.347565>,  <34.445030, 34.013695, 29.331598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.256237, 34.161015, 29.347565>,  <33.941582, 34.406544, 29.374174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256237, 34.161015, 29.347565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422148, -0.613338, 0.667539,
		-0.450553, -0.497027, -0.741597,
		0.786635, -0.613825, -0.066522,
		34.492226, 33.976868, 29.327608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618504, 33.739719, 29.486235>,  <33.941582, 34.406544, 29.374174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618504, 33.739719, 29.486235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.010078, 33.676384, 29.537798>,  <34.245022, 33.638382, 29.568735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.010078, 33.676384, 29.537798>,  <33.618504, 33.739719, 29.486235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010078, 33.676384, 29.537798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200325, -0.622769, 0.756325,
		-0.039474, -0.766216, -0.641369,
		0.978934, -0.158338, 0.128909,
		34.303761, 33.628883, 29.576471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783886, 33.038643, 29.617987>,  <33.618504, 33.739719, 29.486235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783886, 33.038643, 29.617987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.113365, 33.200283, 29.777100>,  <34.311054, 33.297268, 29.872568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.113365, 33.200283, 29.777100>,  <33.783886, 33.038643, 29.617987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113365, 33.200283, 29.777100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169674, -0.493720, 0.852907,
		0.541050, -0.770030, -0.338111,
		0.823697, 0.404096, 0.397782,
		34.360474, 33.321510, 29.896435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101410, 32.448841, 29.990419>,  <33.783886, 33.038643, 29.617987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101410, 32.448841, 29.990419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.273270, 32.782646, 30.128397>,  <34.376385, 32.982929, 30.211184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.273270, 32.782646, 30.128397>,  <34.101410, 32.448841, 29.990419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273270, 32.782646, 30.128397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062216, -0.353732, 0.933275,
		0.900852, -0.422439, -0.100060,
		0.429646, 0.834517, 0.344943,
		34.402164, 33.033001, 30.231880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561722, 32.272053, 30.438738>,  <34.101410, 32.448841, 29.990419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561722, 32.272053, 30.438738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.547779, 32.655865, 30.550514>,  <34.539413, 32.886150, 30.617580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.547779, 32.655865, 30.550514>,  <34.561722, 32.272053, 30.438738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547779, 32.655865, 30.550514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021640, -0.278820, 0.960100,
		0.999158, 0.039510, -0.011046,
		-0.034854, 0.959530, 0.279440,
		34.537323, 32.943726, 30.634346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975090, 32.298676, 31.008730>,  <34.561722, 32.272053, 30.438738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975090, 32.298676, 31.008730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.744747, 32.623810, 31.043793>,  <34.606541, 32.818890, 31.064831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.744747, 32.623810, 31.043793>,  <34.975090, 32.298676, 31.008730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744747, 32.623810, 31.043793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198550, -0.243057, 0.949474,
		0.793072, 0.529359, 0.301356,
		-0.575859, 0.812836, 0.087657,
		34.571991, 32.867661, 31.070089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205048, 32.728844, 31.512417>,  <34.975090, 32.298676, 31.008730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205048, 32.728844, 31.512417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.828007, 32.853374, 31.464134>,  <34.601780, 32.928093, 31.435163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.828007, 32.853374, 31.464134>,  <35.205048, 32.728844, 31.512417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828007, 32.853374, 31.464134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179036, -0.166087, 0.969722,
		0.281853, 0.935676, 0.212293,
		-0.942605, 0.311328, -0.120708,
		34.545227, 32.946774, 31.427921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222301, 33.332592, 31.680889>,  <35.205048, 32.728844, 31.512417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222301, 33.332592, 31.680889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.854900, 33.185776, 31.739725>,  <34.634460, 33.097687, 31.775026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.854900, 33.185776, 31.739725>,  <35.222301, 33.332592, 31.680889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854900, 33.185776, 31.739725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088982, 0.170582, 0.981318,
		-0.385275, 0.914430, -0.124020,
		-0.918502, -0.367042, 0.147089,
		34.579350, 33.075665, 31.783852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009079, 33.805111, 32.138119>,  <35.222301, 33.332592, 31.680889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009079, 33.805111, 32.138119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.733383, 33.520901, 32.194824>,  <34.567966, 33.350372, 32.228848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.733383, 33.520901, 32.194824>,  <35.009079, 33.805111, 32.138119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733383, 33.520901, 32.194824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000821, 0.196434, 0.980517,
		-0.724534, 0.675693, -0.135974,
		-0.689239, -0.710529, 0.141768,
		34.526611, 33.307743, 32.237354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602760, 34.099396, 32.623531>,  <35.009079, 33.805111, 32.138119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602760, 34.099396, 32.623531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.528091, 33.706711, 32.638458>,  <34.483292, 33.471100, 32.647415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.528091, 33.706711, 32.638458>,  <34.602760, 34.099396, 32.623531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528091, 33.706711, 32.638458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080312, 0.053104, 0.995354,
		-0.979135, 0.182804, -0.088756,
		-0.186668, -0.981714, 0.037315,
		34.472092, 33.412197, 32.649654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891705, 33.928066, 32.943329>,  <34.602760, 34.099396, 32.623531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891705, 33.928066, 32.943329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.131275, 33.609756, 32.979168>,  <34.275017, 33.418770, 33.000671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.131275, 33.609756, 32.979168>,  <33.891705, 33.928066, 32.943329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131275, 33.609756, 32.979168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160863, -0.009955, 0.986927,
		-0.784484, -0.605505, -0.133974,
		0.598923, -0.795779, 0.089594,
		34.310951, 33.371021, 33.006046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639038, 33.593357, 33.590290>,  <33.891705, 33.928066, 32.943329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639038, 33.593357, 33.590290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.983013, 33.397167, 33.533794>,  <34.189396, 33.279453, 33.499897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.983013, 33.397167, 33.533794>,  <33.639038, 33.593357, 33.590290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983013, 33.397167, 33.533794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015306, -0.251823, 0.967652,
		-0.510173, -0.834280, -0.209045,
		0.859936, -0.490471, -0.141243,
		34.240993, 33.250027, 33.491421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573891, 33.022388, 34.008537>,  <33.639038, 33.593357, 33.590290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573891, 33.022388, 34.008537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.968727, 33.039204, 33.946720>,  <34.205627, 33.049294, 33.909630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.968727, 33.039204, 33.946720>,  <33.573891, 33.022388, 34.008537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968727, 33.039204, 33.946720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154599, -0.502163, 0.850842,
		-0.041836, -0.863751, -0.502180,
		0.987091, 0.042040, -0.154543,
		34.264854, 33.051815, 33.900356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897026, 32.342541, 34.091930>,  <33.573891, 33.022388, 34.008537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897026, 32.342541, 34.091930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.158649, 32.633335, 34.175545>,  <34.315624, 32.807812, 34.225712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.158649, 32.633335, 34.175545>,  <33.897026, 32.342541, 34.091930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158649, 32.633335, 34.175545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185617, -0.422136, 0.887326,
		0.733316, -0.541564, -0.411044,
		0.654060, 0.726987, 0.209036,
		34.354866, 32.851433, 34.238255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314835, 32.077316, 34.657089>,  <33.897026, 32.342541, 34.091930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314835, 32.077316, 34.657089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.453312, 32.452122, 34.638535>,  <34.536400, 32.677006, 34.627403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.453312, 32.452122, 34.638535>,  <34.314835, 32.077316, 34.657089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453312, 32.452122, 34.638535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239846, -0.040602, 0.969962,
		0.906985, -0.346922, -0.238795,
		0.346197, 0.937015, -0.046383,
		34.557171, 32.733227, 34.624619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957481, 32.071972, 34.877945>,  <34.314835, 32.077316, 34.657089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957481, 32.071972, 34.877945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.836269, 32.450912, 34.919312>,  <34.763542, 32.678276, 34.944130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.836269, 32.450912, 34.919312>,  <34.957481, 32.071972, 34.877945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836269, 32.450912, 34.919312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348910, 0.009311, 0.937110,
		0.886811, 0.320055, -0.333362,
		-0.303031, 0.947353, 0.103413,
		34.745361, 32.735119, 34.950336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594841, 32.361183, 35.155842>,  <34.957481, 32.071972, 34.877945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594841, 32.361183, 35.155842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.291756, 32.603848, 35.252041>,  <35.109905, 32.749447, 35.309761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.291756, 32.603848, 35.252041>,  <35.594841, 32.361183, 35.155842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291756, 32.603848, 35.252041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300558, -0.002708, 0.953759,
		0.579259, 0.794957, -0.180285,
		-0.757710, 0.606660, 0.240499,
		35.064442, 32.785847, 35.324192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947117, 32.909798, 35.469048>,  <35.594841, 32.361183, 35.155842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947117, 32.909798, 35.469048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.570374, 32.943371, 35.599194>,  <35.344330, 32.963516, 35.677280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.570374, 32.943371, 35.599194>,  <35.947117, 32.909798, 35.469048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570374, 32.943371, 35.599194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297117, -0.244223, 0.923080,
		0.156939, 0.966080, 0.205085,
		-0.941855, 0.083933, 0.325367,
		35.287815, 32.968552, 35.696804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160789, 32.619328, 36.167522>,  <35.947117, 32.909798, 35.469048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160789, 32.619328, 36.167522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.476513, 32.780918, 36.352474>,  <36.665947, 32.877872, 36.463448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.476513, 32.780918, 36.352474>,  <36.160789, 32.619328, 36.167522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476513, 32.780918, 36.352474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015454, 0.739756, -0.672697,
		-0.613807, 0.538109, 0.577650,
		0.789305, 0.403979, 0.462384,
		36.713303, 32.902111, 36.491188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074345, 33.428562, 36.194889>,  <36.160789, 32.619328, 36.167522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074345, 33.428562, 36.194889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461605, 33.337395, 36.236317>,  <36.693962, 33.282692, 36.261173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461605, 33.337395, 36.236317>,  <36.074345, 33.428562, 36.194889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461605, 33.337395, 36.236317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243955, 0.765986, -0.594770,
		0.056228, 0.601096, 0.797196,
		0.968155, -0.227923, 0.103571,
		36.752052, 33.269016, 36.267387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359184, 34.068981, 36.049606>,  <36.074345, 33.428562, 36.194889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359184, 34.068981, 36.049606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.659893, 33.806023, 36.028957>,  <36.840317, 33.648247, 36.016567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.659893, 33.806023, 36.028957>,  <36.359184, 34.068981, 36.049606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659893, 33.806023, 36.028957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456906, 0.575746, -0.678051,
		0.475473, 0.486152, 0.733199,
		0.751773, -0.657398, -0.051626,
		36.885426, 33.608803, 36.013470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005608, 34.435608, 36.126621>,  <36.359184, 34.068981, 36.049606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005608, 34.435608, 36.126621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.077923, 34.097603, 35.925320>,  <37.121311, 33.894798, 35.804539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.077923, 34.097603, 35.925320>,  <37.005608, 34.435608, 36.126621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077923, 34.097603, 35.925320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359302, 0.533062, -0.765994,
		0.915542, -0.042338, 0.399987,
		0.180788, -0.845016, -0.503253,
		37.132160, 33.844097, 35.774345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515781, 34.695827, 35.739136>,  <37.005608, 34.435608, 36.126621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515781, 34.695827, 35.739136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.462524, 34.342796, 35.558765>,  <37.430569, 34.130978, 35.450542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.462524, 34.342796, 35.558765>,  <37.515781, 34.695827, 35.739136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462524, 34.342796, 35.558765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285853, 0.401447, -0.870131,
		0.948979, -0.244753, 0.198835,
		-0.133145, -0.882574, -0.450928,
		37.422581, 34.078026, 35.423489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019291, 34.609737, 35.357727>,  <37.515781, 34.695827, 35.739136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019291, 34.609737, 35.357727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.724915, 34.392342, 35.196232>,  <37.548290, 34.261902, 35.099335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.724915, 34.392342, 35.196232>,  <38.019291, 34.609737, 35.357727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724915, 34.392342, 35.196232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186045, 0.411031, -0.892435,
		0.650983, -0.731893, -0.201380,
		-0.735941, -0.543494, -0.403739,
		37.504131, 34.229294, 35.075111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300526, 34.370327, 34.826332>,  <38.019291, 34.609737, 35.357727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300526, 34.370327, 34.826332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.910320, 34.344204, 34.742325>,  <37.676197, 34.328529, 34.691921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.910320, 34.344204, 34.742325>,  <38.300526, 34.370327, 34.826332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910320, 34.344204, 34.742325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137353, 0.564918, -0.813635,
		0.171779, -0.822559, -0.542115,
		-0.975513, -0.065304, -0.210022,
		37.617668, 34.324612, 34.679317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328827, 34.226475, 34.185341>,  <38.300526, 34.370327, 34.826332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328827, 34.226475, 34.185341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.947605, 34.341587, 34.223003>,  <37.718872, 34.410656, 34.245602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.947605, 34.341587, 34.223003>,  <38.328827, 34.226475, 34.185341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947605, 34.341587, 34.223003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063445, 0.493845, -0.867232,
		-0.296070, -0.820548, -0.488921,
		-0.953057, 0.287781, 0.094153,
		37.661690, 34.427921, 34.251247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049042, 33.993164, 33.592041>,  <38.328827, 34.226475, 34.185341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049042, 33.993164, 33.592041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.837116, 34.301243, 33.734085>,  <37.709961, 34.486092, 33.819309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.837116, 34.301243, 33.734085>,  <38.049042, 33.993164, 33.592041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837116, 34.301243, 33.734085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073664, 0.375327, -0.923960,
		-0.844911, -0.515683, -0.142117,
		-0.529810, 0.770195, 0.355105,
		37.678173, 34.532303, 33.840618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440773, 33.911022, 33.257469>,  <38.049042, 33.993164, 33.592041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440773, 33.911022, 33.257469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.477577, 34.289349, 33.382027>,  <37.499660, 34.516346, 33.456760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.477577, 34.289349, 33.382027>,  <37.440773, 33.911022, 33.257469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477577, 34.289349, 33.382027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041236, 0.316072, -0.947839,
		-0.994904, 0.074370, 0.068083,
		0.092010, 0.945816, 0.311395,
		37.505180, 34.573093, 33.475445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955936, 34.260376, 32.933228>,  <37.440773, 33.911022, 33.257469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955936, 34.260376, 32.933228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.219891, 34.543369, 33.034435>,  <37.378265, 34.713165, 33.095161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.219891, 34.543369, 33.034435>,  <36.955936, 34.260376, 32.933228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219891, 34.543369, 33.034435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034830, 0.307583, -0.950883,
		-0.750555, 0.636291, 0.178330,
		0.659890, 0.707479, 0.253020,
		37.417858, 34.755611, 33.110340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682274, 34.831501, 32.598709>,  <36.955936, 34.260376, 32.933228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682274, 34.831501, 32.598709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.060955, 34.917988, 32.694214>,  <37.288162, 34.969879, 32.751514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.060955, 34.917988, 32.694214>,  <36.682274, 34.831501, 32.598709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060955, 34.917988, 32.694214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142939, 0.382262, -0.912932,
		-0.288659, 0.898402, 0.330983,
		0.946702, 0.216215, 0.238760,
		37.344967, 34.982853, 32.765842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731491, 35.521885, 32.361824>,  <36.682274, 34.831501, 32.598709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731491, 35.521885, 32.361824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.097076, 35.361568, 32.387253>,  <37.316425, 35.265377, 32.402508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.097076, 35.361568, 32.387253>,  <36.731491, 35.521885, 32.361824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097076, 35.361568, 32.387253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202079, 0.313662, -0.927782,
		0.351908, 0.860803, 0.367667,
		0.913961, -0.400792, 0.063570,
		37.371265, 35.241329, 32.406322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168564, 36.069439, 32.098209>,  <36.731491, 35.521885, 32.361824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168564, 36.069439, 32.098209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.377216, 35.728752, 32.078289>,  <37.502407, 35.524342, 32.066338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.377216, 35.728752, 32.078289>,  <37.168564, 36.069439, 32.098209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377216, 35.728752, 32.078289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338497, 0.260185, -0.904281,
		0.783150, 0.454840, 0.424024,
		0.521628, -0.851718, -0.049802,
		37.533703, 35.473236, 32.063347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845715, 36.261333, 31.787479>,  <37.168564, 36.069439, 32.098209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845715, 36.261333, 31.787479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767239, 35.873726, 31.727467>,  <37.720154, 35.641163, 31.691460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767239, 35.873726, 31.727467>,  <37.845715, 36.261333, 31.787479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767239, 35.873726, 31.727467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218103, 0.106049, -0.970147,
		0.956003, -0.223055, 0.190540,
		-0.196190, -0.969020, -0.150032,
		37.708382, 35.583019, 31.682457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214687, 36.144703, 31.203253>,  <37.845715, 36.261333, 31.787479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214687, 36.144703, 31.203253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.999043, 35.808212, 31.219765>,  <37.869656, 35.606319, 31.229671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.999043, 35.808212, 31.219765>,  <38.214687, 36.144703, 31.203253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999043, 35.808212, 31.219765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135018, -0.134697, -0.981645,
		0.831342, -0.523643, 0.186197,
		-0.539112, -0.841222, 0.041279,
		37.837311, 35.555847, 31.232149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567680, 35.826382, 30.736483>,  <38.214687, 36.144703, 31.203253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567680, 35.826382, 30.736483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194752, 35.688690, 30.780825>,  <37.970993, 35.606075, 30.807430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.194752, 35.688690, 30.780825>,  <38.567680, 35.826382, 30.736483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194752, 35.688690, 30.780825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060088, -0.154817, -0.986114,
		0.356607, -0.926035, 0.123655,
		-0.932320, -0.344225, 0.110853,
		37.915054, 35.585423, 30.814081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526760, 35.280457, 30.295845>,  <38.567680, 35.826382, 30.736483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526760, 35.280457, 30.295845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.139332, 35.365978, 30.346699>,  <37.906876, 35.417294, 30.377211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.139332, 35.365978, 30.346699>,  <38.526760, 35.280457, 30.295845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139332, 35.365978, 30.346699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182872, -0.265574, -0.946588,
		-0.168622, -0.940084, 0.296325,
		-0.968568, 0.213805, 0.127133,
		37.848763, 35.430122, 30.384838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142242, 34.731861, 30.050716>,  <38.526760, 35.280457, 30.295845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142242, 34.731861, 30.050716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.876308, 35.030464, 30.039991>,  <37.716747, 35.209625, 30.033556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.876308, 35.030464, 30.039991>,  <38.142242, 34.731861, 30.050716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876308, 35.030464, 30.039991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361103, -0.352604, -0.863293,
		-0.653912, -0.564263, 0.503990,
		-0.664833, 0.746510, -0.026815,
		37.676857, 35.254417, 30.031946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.121204, 34.488022, 29.458088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.164925, 34.881321, 29.516438>,  <37.191158, 35.117302, 29.551447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.164925, 34.881321, 29.516438>,  <37.121204, 34.488022, 29.458088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164925, 34.881321, 29.516438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216616, 0.166787, -0.961904,
		-0.970119, 0.073541, 0.231218,
		0.109304, 0.983247, 0.145873,
		37.197716, 35.176296, 29.560200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512707, 34.807575, 29.169374>,  <37.121204, 34.488022, 29.458088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512707, 34.807575, 29.169374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.816025, 35.067852, 29.185299>,  <36.998016, 35.224018, 29.194855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.816025, 35.067852, 29.185299>,  <36.512707, 34.807575, 29.169374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816025, 35.067852, 29.185299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139926, 0.222107, -0.964930,
		-0.636713, 0.726134, 0.259472,
		0.758299, 0.650690, 0.039813,
		37.043514, 35.263058, 29.197243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215580, 35.407417, 28.830559>,  <36.512707, 34.807575, 29.169374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215580, 35.407417, 28.830559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.615288, 35.417843, 28.841772>,  <36.855110, 35.424099, 28.848499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.615288, 35.417843, 28.841772>,  <36.215580, 35.407417, 28.830559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615288, 35.417843, 28.841772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018714, 0.306192, -0.951786,
		-0.033391, 0.951613, 0.305480,
		0.999267, 0.026064, 0.028033,
		36.915070, 35.425663, 28.850182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428780, 35.984341, 28.447559>,  <36.215580, 35.407417, 28.830559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428780, 35.984341, 28.447559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.744225, 35.738392, 28.445574>,  <36.933491, 35.590824, 28.444382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.744225, 35.738392, 28.445574>,  <36.428780, 35.984341, 28.447559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744225, 35.738392, 28.445574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110257, 0.149345, -0.982619,
		0.604926, 0.774357, 0.185569,
		0.788611, -0.614872, -0.004965,
		36.980808, 35.553928, 28.444084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815998, 36.355122, 27.969753>,  <36.428780, 35.984341, 28.447559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815998, 36.355122, 27.969753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.979961, 35.993706, 28.019693>,  <37.078339, 35.776855, 28.049658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.979961, 35.993706, 28.019693>,  <36.815998, 36.355122, 27.969753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979961, 35.993706, 28.019693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290578, -0.000392, -0.956851,
		0.864605, 0.428499, 0.262389,
		0.409907, -0.903542, 0.124851,
		37.102932, 35.722645, 28.057148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316730, 36.388634, 27.522816>,  <36.815998, 36.355122, 27.969753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316730, 36.388634, 27.522816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.308266, 35.998005, 27.608473>,  <37.303188, 35.763626, 27.659866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.308266, 35.998005, 27.608473>,  <37.316730, 36.388634, 27.522816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308266, 35.998005, 27.608473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191403, -0.214186, -0.957857,
		0.981283, 0.020718, 0.191452,
		-0.021162, -0.976573, 0.214142,
		37.301918, 35.705032, 27.672716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923542, 36.192139, 27.332558>,  <37.316730, 36.388634, 27.522816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923542, 36.192139, 27.332558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.689552, 35.868660, 27.307835>,  <37.549160, 35.674572, 27.293001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.689552, 35.868660, 27.307835>,  <37.923542, 36.192139, 27.332558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689552, 35.868660, 27.307835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438878, -0.251536, -0.862621,
		0.682050, -0.531736, 0.502060,
		-0.584973, -0.808695, -0.061807,
		37.514061, 35.626053, 27.289293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379761, 35.536160, 27.187309>,  <37.923542, 36.192139, 27.332558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379761, 35.536160, 27.187309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001568, 35.487881, 27.066319>,  <37.774651, 35.458912, 26.993725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001568, 35.487881, 27.066319>,  <38.379761, 35.536160, 27.187309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001568, 35.487881, 27.066319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318553, -0.149680, -0.936013,
		0.067699, -0.981340, 0.179968,
		-0.945484, -0.120696, -0.302476,
		37.717922, 35.451672, 26.975576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488941, 35.275303, 26.627634>,  <38.379761, 35.536160, 27.187309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488941, 35.275303, 26.627634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.101551, 35.373238, 26.609287>,  <37.869118, 35.431999, 26.598278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.101551, 35.373238, 26.609287>,  <38.488941, 35.275303, 26.627634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101551, 35.373238, 26.609287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057732, 0.041495, -0.997469,
		-0.242318, -0.968675, -0.054322,
		-0.968478, 0.244841, -0.045868,
		37.811008, 35.446690, 26.595528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265446, 35.026020, 25.949633>,  <38.488941, 35.275303, 26.627634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265446, 35.026020, 25.949633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.959675, 35.267166, 26.041025>,  <37.776211, 35.411854, 26.095861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.959675, 35.267166, 26.041025>,  <38.265446, 35.026020, 25.949633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959675, 35.267166, 26.041025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084516, 0.257631, -0.962540,
		-0.639146, -0.755102, -0.145988,
		-0.764427, 0.602866, 0.228482,
		37.730347, 35.448025, 26.109570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817215, 34.911072, 25.457960>,  <38.265446, 35.026020, 25.949633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817215, 34.911072, 25.457960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.753902, 35.274822, 25.611835>,  <37.715916, 35.493073, 25.704161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.753902, 35.274822, 25.611835>,  <37.817215, 34.911072, 25.457960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753902, 35.274822, 25.611835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090023, 0.374684, -0.922772,
		-0.983282, -0.180686, 0.022560,
		-0.158279, 0.909376, 0.384686,
		37.706417, 35.547634, 25.727242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328190, 35.194729, 25.025999>,  <37.817215, 34.911072, 25.457960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328190, 35.194729, 25.025999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462959, 35.515648, 25.223103>,  <37.543819, 35.708199, 25.341364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462959, 35.515648, 25.223103>,  <37.328190, 35.194729, 25.025999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462959, 35.515648, 25.223103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066113, 0.542224, -0.837629,
		-0.939209, 0.249637, 0.235728,
		0.336921, 0.802293, 0.492757,
		37.564037, 35.756336, 25.370930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980019, 35.723675, 24.706509>,  <37.328190, 35.194729, 25.025999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980019, 35.723675, 24.706509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.301125, 35.887836, 24.879545>,  <37.493790, 35.986336, 24.983368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.301125, 35.887836, 24.879545>,  <36.980019, 35.723675, 24.706509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301125, 35.887836, 24.879545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022541, 0.704062, -0.709781,
		-0.595871, 0.579537, 0.555944,
		0.802763, 0.410406, 0.432594,
		37.541954, 36.010960, 25.009323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962811, 36.478424, 24.563183>,  <36.980019, 35.723675, 24.706509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962811, 36.478424, 24.563183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.341827, 36.413956, 24.673586>,  <37.569237, 36.375275, 24.739828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.341827, 36.413956, 24.673586>,  <36.962811, 36.478424, 24.563183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341827, 36.413956, 24.673586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303553, 0.724154, -0.619239,
		-0.100069, 0.670540, 0.735093,
		0.947545, -0.161173, 0.276009,
		37.626091, 36.365604, 24.756390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179211, 37.140057, 24.784344>,  <36.962811, 36.478424, 24.563183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179211, 37.140057, 24.784344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.492897, 36.928493, 24.654570>,  <37.681110, 36.801556, 24.576704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.492897, 36.928493, 24.654570>,  <37.179211, 37.140057, 24.784344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492897, 36.928493, 24.654570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340385, 0.803888, -0.487753,
		0.518786, 0.272072, 0.810456,
		0.784219, -0.528906, -0.324436,
		37.728165, 36.769821, 24.557240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758995, 37.613514, 24.780663>,  <37.179211, 37.140057, 24.784344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758995, 37.613514, 24.780663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.875782, 37.322903, 24.531857>,  <37.945854, 37.148537, 24.382572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.875782, 37.322903, 24.531857>,  <37.758995, 37.613514, 24.780663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875782, 37.322903, 24.531857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361727, 0.685930, -0.631390,
		0.885385, -0.040652, 0.463078,
		0.291972, -0.726531, -0.622017,
		37.963375, 37.104942, 24.345251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382656, 37.913639, 24.477346>,  <37.758995, 37.613514, 24.780663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382656, 37.913639, 24.477346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.307175, 37.594200, 24.248739>,  <38.261887, 37.402538, 24.111574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.307175, 37.594200, 24.248739>,  <38.382656, 37.913639, 24.477346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307175, 37.594200, 24.248739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368642, 0.481807, -0.794962,
		0.910217, -0.360697, 0.203478,
		-0.188703, -0.798598, -0.571517,
		38.250565, 37.354622, 24.077284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979332, 37.706711, 23.937305>,  <38.382656, 37.913639, 24.477346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979332, 37.706711, 23.937305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.658131, 37.532467, 23.774609>,  <38.465412, 37.427921, 23.676991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.658131, 37.532467, 23.774609>,  <38.979332, 37.706711, 23.937305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658131, 37.532467, 23.774609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234590, 0.396358, -0.887619,
		0.547870, -0.808175, -0.216085,
		-0.802998, -0.435608, -0.406742,
		38.417233, 37.401783, 23.652586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178581, 37.389309, 23.274765>,  <38.979332, 37.706711, 23.937305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178581, 37.389309, 23.274765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.785336, 37.459625, 23.254463>,  <38.549389, 37.501816, 23.242281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.785336, 37.459625, 23.254463>,  <39.178581, 37.389309, 23.274765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785336, 37.459625, 23.254463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131857, 0.488345, -0.862631,
		-0.126856, -0.854761, -0.503280,
		-0.983118, 0.175791, -0.050756,
		38.490398, 37.512363, 23.239237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101673, 37.315609, 22.646339>,  <39.178581, 37.389309, 23.274765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101673, 37.315609, 22.646339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778469, 37.512280, 22.776178>,  <38.584545, 37.630283, 22.854082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778469, 37.512280, 22.776178>,  <39.101673, 37.315609, 22.646339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778469, 37.512280, 22.776178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044545, 0.498385, -0.865811,
		-0.587476, -0.714047, -0.380800,
		-0.808015, 0.491680, 0.324597,
		38.536064, 37.659782, 22.873558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745155, 37.453773, 22.022360>,  <39.101673, 37.315609, 22.646339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745155, 37.453773, 22.022360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.635033, 37.710670, 22.308500>,  <38.568958, 37.864811, 22.480185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.635033, 37.710670, 22.308500>,  <38.745155, 37.453773, 22.022360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635033, 37.710670, 22.308500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082039, 0.725696, -0.683107,
		-0.957849, -0.246751, -0.147101,
		-0.275308, 0.642245, 0.715351,
		38.552441, 37.903343, 22.523106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102657, 37.780304, 21.954556>,  <38.745155, 37.453773, 22.022360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102657, 37.780304, 21.954556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379681, 38.036808, 22.086712>,  <38.545895, 38.190708, 22.166006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379681, 38.036808, 22.086712>,  <38.102657, 37.780304, 21.954556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379681, 38.036808, 22.086712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329652, 0.688725, -0.645745,
		-0.641636, 0.338301, 0.688372,
		0.692556, 0.641256, 0.330389,
		38.587448, 38.229183, 22.185829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499504, 37.529709, 21.745403>,  <38.102657, 37.780304, 21.954556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499504, 37.529709, 21.745403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.175888, 37.687645, 21.919556>,  <36.981720, 37.782406, 22.024048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.175888, 37.687645, 21.919556>,  <37.499504, 37.529709, 21.745403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175888, 37.687645, 21.919556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099797, 0.637713, -0.763782,
		-0.579223, -0.661378, -0.476529,
		-0.809037, 0.394844, 0.435381,
		36.933178, 37.806099, 22.050171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945190, 37.321178, 21.344784>,  <37.499504, 37.529709, 21.745403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945190, 37.321178, 21.344784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906116, 37.671894, 21.533119>,  <36.882671, 37.882324, 21.646120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906116, 37.671894, 21.533119>,  <36.945190, 37.321178, 21.344784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906116, 37.671894, 21.533119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108738, 0.460867, -0.880783,
		-0.989259, -0.137240, 0.050320,
		-0.097688, 0.876794, 0.470839,
		36.876812, 37.934933, 21.674372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218002, 37.155560, 21.271578>,  <36.945190, 37.321178, 21.344784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218002, 37.155560, 21.271578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.894691, 37.255173, 21.058159>,  <35.700706, 37.314941, 20.930107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.894691, 37.255173, 21.058159>,  <36.218002, 37.155560, 21.271578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894691, 37.255173, 21.058159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473405, 0.263958, 0.840365,
		0.350113, 0.931831, -0.095458,
		-0.808275, 0.249032, -0.533549,
		35.652210, 37.329884, 20.898094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024483, 37.808170, 21.445564>,  <36.218002, 37.155560, 21.271578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024483, 37.808170, 21.445564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.704300, 37.615162, 21.303333>,  <35.512188, 37.499359, 21.217995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.704300, 37.615162, 21.303333>,  <36.024483, 37.808170, 21.445564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704300, 37.615162, 21.303333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435547, 0.060694, 0.898117,
		-0.411777, 0.873780, -0.258743,
		-0.800462, -0.482519, -0.355580,
		35.464161, 37.470406, 21.196659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471493, 38.071213, 21.892929>,  <36.024483, 37.808170, 21.445564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471493, 38.071213, 21.892929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.318707, 37.736279, 21.736486>,  <35.227036, 37.535316, 21.642620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.318707, 37.736279, 21.736486>,  <35.471493, 38.071213, 21.892929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318707, 37.736279, 21.736486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471045, -0.187708, 0.861906,
		-0.795121, 0.513451, -0.322725,
		-0.381968, -0.837338, -0.391108,
		35.204117, 37.485077, 21.619154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847496, 37.976822, 22.185963>,  <35.471493, 38.071213, 21.892929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847496, 37.976822, 22.185963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.929028, 37.606812, 22.057722>,  <34.977947, 37.384808, 21.980778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.929028, 37.606812, 22.057722>,  <34.847496, 37.976822, 22.185963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929028, 37.606812, 22.057722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470815, -0.379738, 0.796324,
		-0.858363, -0.011369, -0.512916,
		0.203827, -0.925024, -0.320600,
		34.990177, 37.329304, 21.961542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243340, 37.650066, 22.255234>,  <34.847496, 37.976822, 22.185963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243340, 37.650066, 22.255234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.541866, 37.384357, 22.272009>,  <34.720982, 37.224934, 22.282074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.541866, 37.384357, 22.272009>,  <34.243340, 37.650066, 22.255234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541866, 37.384357, 22.272009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293240, -0.271589, 0.916651,
		-0.597515, -0.696408, -0.397481,
		0.746315, -0.664271, 0.041936,
		34.765762, 37.185078, 22.284590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888565, 36.991982, 22.489834>,  <34.243340, 37.650066, 22.255234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888565, 36.991982, 22.489834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.284977, 36.977200, 22.541197>,  <34.522823, 36.968330, 22.572014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.284977, 36.977200, 22.541197>,  <33.888565, 36.991982, 22.489834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284977, 36.977200, 22.541197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133417, -0.326758, 0.935644,
		0.007381, -0.944385, -0.328758,
		0.991032, -0.036956, 0.128408,
		34.582287, 36.966114, 22.579720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881332, 36.422035, 22.982210>,  <33.888565, 36.991982, 22.489834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881332, 36.422035, 22.982210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.265297, 36.533684, 22.992466>,  <34.495678, 36.600674, 22.998619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.265297, 36.533684, 22.992466>,  <33.881332, 36.422035, 22.982210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265297, 36.533684, 22.992466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071787, -0.333234, 0.940107,
		0.270948, -0.900581, -0.339913,
		0.959913, 0.279121, 0.025639,
		34.553272, 36.617420, 23.000158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166866, 35.765385, 23.108547>,  <33.881332, 36.422035, 22.982210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166866, 35.765385, 23.108547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.382462, 36.074902, 23.241653>,  <34.511818, 36.260612, 23.321516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.382462, 36.074902, 23.241653>,  <34.166866, 35.765385, 23.108547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382462, 36.074902, 23.241653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204645, -0.503524, 0.839395,
		0.817073, -0.384329, -0.429749,
		0.538992, 0.773793, 0.332765,
		34.544159, 36.307041, 23.341482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904961, 35.494080, 23.385841>,  <34.166866, 35.765385, 23.108547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904961, 35.494080, 23.385841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.825333, 35.836559, 23.576540>,  <34.777557, 36.042049, 23.690960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.825333, 35.836559, 23.576540>,  <34.904961, 35.494080, 23.385841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825333, 35.836559, 23.576540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044972, -0.477990, 0.877213,
		0.978953, 0.196068, 0.056649,
		-0.199071, 0.856202, 0.476747,
		34.765610, 36.093422, 23.719564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441067, 35.663940, 23.799046>,  <34.904961, 35.494080, 23.385841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441067, 35.663940, 23.799046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.108307, 35.830872, 23.945353>,  <34.908653, 35.931030, 24.033136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.108307, 35.830872, 23.945353>,  <35.441067, 35.663940, 23.799046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108307, 35.830872, 23.945353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106820, -0.526371, 0.843518,
		0.544554, 0.740791, 0.393307,
		-0.831895, 0.417328, 0.365769,
		34.858738, 35.956070, 24.055084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550148, 36.064980, 24.422539>,  <35.441067, 35.663940, 23.799046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550148, 36.064980, 24.422539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168217, 35.946896, 24.436117>,  <34.939056, 35.876045, 24.444263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168217, 35.946896, 24.436117>,  <35.550148, 36.064980, 24.422539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168217, 35.946896, 24.436117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171847, -0.455376, 0.873557,
		-0.242426, 0.839930, 0.485537,
		-0.954829, -0.295211, 0.033944,
		34.881767, 35.858334, 24.446301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552193, 36.101364, 25.082434>,  <35.550148, 36.064980, 24.422539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552193, 36.101364, 25.082434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.204472, 35.925877, 24.991371>,  <34.995838, 35.820583, 24.936733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.204472, 35.925877, 24.991371>,  <35.552193, 36.101364, 25.082434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204472, 35.925877, 24.991371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047813, -0.383789, 0.922182,
		-0.491954, 0.812545, 0.312654,
		-0.869307, -0.438722, -0.227657,
		34.943680, 35.794258, 24.923075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103951, 36.258850, 25.545139>,  <35.552193, 36.101364, 25.082434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103951, 36.258850, 25.545139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.963291, 35.918415, 25.389194>,  <34.878895, 35.714153, 25.295628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.963291, 35.918415, 25.389194>,  <35.103951, 36.258850, 25.545139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963291, 35.918415, 25.389194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242629, -0.319370, 0.916042,
		-0.904143, 0.416718, -0.094192,
		-0.351650, -0.851087, -0.389864,
		34.857796, 35.663090, 25.272236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709415, 36.063915, 26.028345>,  <35.103951, 36.258850, 25.545139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709415, 36.063915, 26.028345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757004, 35.726891, 25.818230>,  <34.785557, 35.524673, 25.692162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757004, 35.726891, 25.818230>,  <34.709415, 36.063915, 26.028345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757004, 35.726891, 25.818230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035400, -0.525109, 0.850298,
		-0.992266, -0.119759, -0.032648,
		0.118975, -0.842566, -0.525288,
		34.792698, 35.474121, 25.660643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219254, 35.507061, 26.160942>,  <34.709415, 36.063915, 26.028345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219254, 35.507061, 26.160942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.554947, 35.325619, 26.040995>,  <34.756363, 35.216755, 25.969027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.554947, 35.325619, 26.040995>,  <34.219254, 35.507061, 26.160942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554947, 35.325619, 26.040995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029289, -0.588379, 0.808055,
		-0.542974, -0.669368, -0.507076,
		0.839239, -0.453604, -0.299869,
		34.806717, 35.189537, 25.951035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178596, 34.745331, 26.408113>,  <34.219254, 35.507061, 26.160942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178596, 34.745331, 26.408113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.560230, 34.853321, 26.356213>,  <34.789211, 34.918114, 26.325073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.560230, 34.853321, 26.356213>,  <34.178596, 34.745331, 26.408113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560230, 34.853321, 26.356213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263241, -0.549062, 0.793243,
		0.142913, -0.790978, -0.594920,
		0.954086, 0.269972, -0.129750,
		34.846455, 34.934311, 26.317287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441891, 34.156090, 26.422581>,  <34.178596, 34.745331, 26.408113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441891, 34.156090, 26.422581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.733051, 34.416615, 26.508322>,  <34.907749, 34.572929, 26.559767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.733051, 34.416615, 26.508322>,  <34.441891, 34.156090, 26.422581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733051, 34.416615, 26.508322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326747, -0.604321, 0.726658,
		0.602819, -0.458899, -0.652702,
		0.727905, 0.651312, 0.214352,
		34.951424, 34.612007, 26.572628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794254, 33.662624, 26.730766>,  <34.441891, 34.156090, 26.422581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794254, 33.662624, 26.730766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.967716, 34.010128, 26.826437>,  <35.071793, 34.218632, 26.883839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.967716, 34.010128, 26.826437>,  <34.794254, 33.662624, 26.730766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967716, 34.010128, 26.826437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136027, -0.325506, 0.935704,
		0.890754, -0.373236, -0.259331,
		0.433652, 0.868758, 0.239175,
		35.097813, 34.270756, 26.898190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513832, 33.572170, 26.922239>,  <34.794254, 33.662624, 26.730766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513832, 33.572170, 26.922239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.388206, 33.909332, 27.096996>,  <35.312832, 34.111629, 27.201851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.388206, 33.909332, 27.096996>,  <35.513832, 33.572170, 26.922239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388206, 33.909332, 27.096996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020962, -0.466221, 0.884420,
		0.949169, 0.268610, 0.164094,
		-0.314068, 0.842904, 0.436891,
		35.293987, 34.162205, 27.228064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978603, 33.725761, 27.453255>,  <35.513832, 33.572170, 26.922239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978603, 33.725761, 27.453255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.651913, 33.922916, 27.573265>,  <35.455898, 34.041210, 27.645271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.651913, 33.922916, 27.573265>,  <35.978603, 33.725761, 27.453255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651913, 33.922916, 27.573265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122462, -0.360047, 0.924862,
		0.563876, 0.792103, 0.233701,
		-0.816729, 0.492888, 0.300024,
		35.406895, 34.070782, 27.663273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.578312, 34.759552, 32.345875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.220615, 34.934948, 32.381767>,  <38.005997, 35.040184, 32.403305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.220615, 34.934948, 32.381767>,  <38.578312, 34.759552, 32.345875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220615, 34.934948, 32.381767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152142, 0.109252, 0.982302,
		0.420926, 0.892071, -0.164411,
		-0.894245, 0.438490, 0.089734,
		37.952343, 35.066494, 32.408688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585739, 35.291618, 32.872875>,  <38.578312, 34.759552, 32.345875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585739, 35.291618, 32.872875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.196789, 35.199169, 32.859795>,  <37.963417, 35.143700, 32.851948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.196789, 35.199169, 32.859795>,  <38.585739, 35.291618, 32.872875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196789, 35.199169, 32.859795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048172, 0.061609, 0.996937,
		-0.228401, 0.970972, -0.071041,
		-0.972375, -0.231124, -0.032702,
		37.905075, 35.129833, 32.849983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267021, 35.690533, 33.522415>,  <38.585739, 35.291618, 32.872875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267021, 35.690533, 33.522415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.993866, 35.422222, 33.406670>,  <37.829975, 35.261238, 33.337223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.993866, 35.422222, 33.406670>,  <38.267021, 35.690533, 33.522415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993866, 35.422222, 33.406670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291835, -0.112639, 0.949813,
		-0.669702, 0.733060, -0.118835,
		-0.682885, -0.670772, -0.289367,
		37.789001, 35.220989, 33.319859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567883, 35.798592, 33.882286>,  <38.267021, 35.690533, 33.522415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567883, 35.798592, 33.882286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.559334, 35.423805, 33.742783>,  <37.554203, 35.198933, 33.659081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.559334, 35.423805, 33.742783>,  <37.567883, 35.798592, 33.882286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559334, 35.423805, 33.742783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071736, -0.346504, 0.935302,
		-0.997195, 0.045012, -0.059807,
		-0.021376, -0.936968, -0.348761,
		37.552921, 35.142715, 33.638153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022392, 35.502327, 34.321674>,  <37.567883, 35.798592, 33.882286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022392, 35.502327, 34.321674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.238888, 35.206116, 34.162334>,  <37.368786, 35.028389, 34.066730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.238888, 35.206116, 34.162334>,  <37.022392, 35.502327, 34.321674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238888, 35.206116, 34.162334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015884, -0.464652, 0.885351,
		-0.840720, -0.485513, -0.239725,
		0.541238, -0.740524, -0.398354,
		37.401260, 34.983959, 34.042828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472752, 34.875126, 34.437992>,  <37.022392, 35.502327, 34.321674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472752, 34.875126, 34.437992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.844227, 34.742809, 34.370922>,  <37.067112, 34.663418, 34.330681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.844227, 34.742809, 34.370922>,  <36.472752, 34.875126, 34.437992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844227, 34.742809, 34.370922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083876, -0.627758, 0.773877,
		-0.361251, -0.704626, -0.610736,
		0.928689, -0.330790, -0.167677,
		37.122833, 34.643574, 34.320618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372513, 34.237427, 34.495052>,  <36.472752, 34.875126, 34.437992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372513, 34.237427, 34.495052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.769596, 34.250122, 34.541557>,  <37.007847, 34.257740, 34.569462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.769596, 34.250122, 34.541557>,  <36.372513, 34.237427, 34.495052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769596, 34.250122, 34.541557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055471, -0.736104, 0.674592,
		0.106991, -0.676124, -0.728978,
		0.992711, 0.031738, 0.116261,
		37.067410, 34.259644, 34.576435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542343, 33.580124, 34.501247>,  <36.372513, 34.237427, 34.495052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542343, 33.580124, 34.501247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.839867, 33.776485, 34.682693>,  <37.018379, 33.894302, 34.791561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.839867, 33.776485, 34.682693>,  <36.542343, 33.580124, 34.501247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839867, 33.776485, 34.682693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038272, -0.708826, 0.704344,
		0.667297, -0.506536, -0.546019,
		0.743808, 0.490904, 0.453611,
		37.063007, 33.923756, 34.818775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912895, 33.028728, 34.818085>,  <36.542343, 33.580124, 34.501247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912895, 33.028728, 34.818085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.051609, 33.358719, 34.996586>,  <37.134838, 33.556713, 35.103687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.051609, 33.358719, 34.996586>,  <36.912895, 33.028728, 34.818085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051609, 33.358719, 34.996586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145115, -0.517245, 0.843445,
		0.926649, -0.227739, -0.299092,
		0.346789, 0.824980, 0.446257,
		37.155647, 33.606213, 35.130463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453773, 32.724720, 35.234779>,  <36.912895, 33.028728, 34.818085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453773, 32.724720, 35.234779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.328144, 33.072269, 35.387833>,  <37.252766, 33.280800, 35.479664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.328144, 33.072269, 35.387833>,  <37.453773, 32.724720, 35.234779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328144, 33.072269, 35.387833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109807, -0.433570, 0.894404,
		0.943026, 0.238896, 0.231584,
		-0.314078, 0.868876, 0.382635,
		37.233921, 33.332932, 35.502625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842560, 32.735474, 35.844715>,  <37.453773, 32.724720, 35.234779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842560, 32.735474, 35.844715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.566212, 33.016994, 35.910873>,  <37.400402, 33.185909, 35.950569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.566212, 33.016994, 35.910873>,  <37.842560, 32.735474, 35.844715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566212, 33.016994, 35.910873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213481, -0.417159, 0.883405,
		0.690743, 0.575008, 0.438451,
		-0.690869, 0.703807, 0.165396,
		37.358952, 33.228138, 35.960491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988064, 33.058739, 36.486313>,  <37.842560, 32.735474, 35.844715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988064, 33.058739, 36.486313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.598125, 33.100319, 36.407459>,  <37.364162, 33.125267, 36.360146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.598125, 33.100319, 36.407459>,  <37.988064, 33.058739, 36.486313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598125, 33.100319, 36.407459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222260, -0.388525, 0.894231,
		0.016366, 0.915556, 0.401858,
		-0.974850, 0.103952, -0.197133,
		37.305672, 33.131504, 36.348320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799850, 33.401527, 37.043114>,  <37.988064, 33.058739, 36.486313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799850, 33.401527, 37.043114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.488331, 33.211624, 36.879128>,  <37.301418, 33.097683, 36.780735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.488331, 33.211624, 36.879128>,  <37.799850, 33.401527, 37.043114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488331, 33.211624, 36.879128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169972, -0.469401, 0.866471,
		-0.603805, 0.744491, 0.284874,
		-0.778800, -0.474759, -0.409969,
		37.254692, 33.069195, 36.756138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999649, 33.695034, 37.684780>,  <37.799850, 33.401527, 37.043114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999649, 33.695034, 37.684780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.924866, 33.928738, 38.000675>,  <37.879997, 34.068962, 38.190212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.924866, 33.928738, 38.000675>,  <37.999649, 33.695034, 37.684780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924866, 33.928738, 38.000675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148355, 0.777901, -0.610624,
		-0.971101, -0.231323, -0.058757,
		-0.186959, 0.584261, 0.789738,
		37.868778, 34.104015, 38.237598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393757, 34.138412, 37.549538>,  <37.999649, 33.695034, 37.684780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393757, 34.138412, 37.549538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.584404, 34.342445, 37.835938>,  <37.698792, 34.464867, 38.007778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.584404, 34.342445, 37.835938>,  <37.393757, 34.138412, 37.549538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584404, 34.342445, 37.835938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169561, 0.852502, -0.494459,
		-0.862605, 0.114261, 0.492805,
		0.476615, 0.510084, 0.715998,
		37.727390, 34.495472, 38.050735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975792, 34.647087, 37.706642>,  <37.393757, 34.138412, 37.549538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975792, 34.647087, 37.706642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.348576, 34.754753, 37.803810>,  <37.572247, 34.819355, 37.862110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.348576, 34.754753, 37.803810>,  <36.975792, 34.647087, 37.706642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348576, 34.754753, 37.803810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134008, 0.878253, -0.459035,
		-0.336900, 0.395248, 0.854563,
		0.931955, 0.269167, 0.242917,
		37.628162, 34.835503, 37.876686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926327, 35.307980, 37.686127>,  <36.975792, 34.647087, 37.706642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926327, 35.307980, 37.686127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.324848, 35.277317, 37.701649>,  <37.563961, 35.258919, 37.710960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.324848, 35.277317, 37.701649>,  <36.926327, 35.307980, 37.686127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324848, 35.277317, 37.701649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085902, 0.879584, -0.467923,
		0.001738, 0.469526, 0.882917,
		0.996302, -0.076658, 0.038805,
		37.623737, 35.254318, 37.713291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124943, 36.032871, 37.855843>,  <36.926327, 35.307980, 37.686127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124943, 36.032871, 37.855843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.422863, 35.818066, 37.697399>,  <37.601616, 35.689182, 37.602333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.422863, 35.818066, 37.697399>,  <37.124943, 36.032871, 37.855843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422863, 35.818066, 37.697399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184536, 0.736206, -0.651112,
		0.641268, 0.411850, 0.647421,
		0.744796, -0.537010, -0.396104,
		37.646301, 35.656963, 37.578568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801579, 36.364109, 37.934265>,  <37.124943, 36.032871, 37.855843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801579, 36.364109, 37.934265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.867229, 36.119251, 37.624855>,  <37.906620, 35.972336, 37.439209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.867229, 36.119251, 37.624855>,  <37.801579, 36.364109, 37.934265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867229, 36.119251, 37.624855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091301, 0.790218, -0.605987,
		0.982204, 0.028838, 0.185589,
		0.164131, -0.612147, -0.773522,
		37.916470, 35.935608, 37.392799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215118, 36.759365, 37.495228>,  <37.801579, 36.364109, 37.934265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215118, 36.759365, 37.495228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.075146, 36.487122, 37.237755>,  <37.991161, 36.323776, 37.083271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.075146, 36.487122, 37.237755>,  <38.215118, 36.759365, 37.495228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075146, 36.487122, 37.237755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148978, 0.637947, -0.755532,
		0.924854, -0.360277, -0.121840,
		-0.349929, -0.680606, -0.643681,
		37.970169, 36.282940, 37.044651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600857, 36.912800, 36.924492>,  <38.215118, 36.759365, 37.495228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600857, 36.912800, 36.924492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.292774, 36.683697, 36.812256>,  <38.107925, 36.546234, 36.744915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.292774, 36.683697, 36.812256>,  <38.600857, 36.912800, 36.924492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292774, 36.683697, 36.812256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119659, 0.561895, -0.818509,
		0.626472, -0.596843, -0.501310,
		-0.770205, -0.572759, -0.280594,
		38.061714, 36.511871, 36.728077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697598, 36.944725, 36.264648>,  <38.600857, 36.912800, 36.924492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697598, 36.944725, 36.264648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.327927, 36.793781, 36.288322>,  <38.106125, 36.703217, 36.302528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.327927, 36.793781, 36.288322>,  <38.697598, 36.944725, 36.264648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327927, 36.793781, 36.288322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228255, 0.421340, -0.877708,
		0.306273, -0.824665, -0.475525,
		-0.924173, -0.377360, 0.059189,
		38.050674, 36.680573, 36.306080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438915, 36.656303, 35.667400>,  <38.697598, 36.944725, 36.264648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438915, 36.656303, 35.667400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.089882, 36.732018, 35.847519>,  <37.880463, 36.777447, 35.955589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.089882, 36.732018, 35.847519>,  <38.438915, 36.656303, 35.667400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089882, 36.732018, 35.847519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443434, 0.079628, -0.892763,
		-0.204845, -0.978688, 0.014454,
		-0.872585, 0.189287, 0.450294,
		37.828106, 36.788803, 35.982609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005180, 36.197975, 35.348896>,  <38.438915, 36.656303, 35.667400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005180, 36.197975, 35.348896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.795853, 36.499229, 35.508354>,  <37.670258, 36.679981, 35.604031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.795853, 36.499229, 35.508354>,  <38.005180, 36.197975, 35.348896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795853, 36.499229, 35.508354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286734, 0.284910, -0.914664,
		-0.802448, -0.592965, 0.066852,
		-0.523317, 0.753139, 0.398649,
		37.638859, 36.725170, 35.627949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396103, 36.126133, 35.086555>,  <38.005180, 36.197975, 35.348896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396103, 36.126133, 35.086555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396477, 36.508705, 35.203335>,  <37.396702, 36.738251, 35.273403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396477, 36.508705, 35.203335>,  <37.396103, 36.126133, 35.086555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396477, 36.508705, 35.203335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300070, 0.278765, -0.912276,
		-0.953917, -0.086749, 0.287258,
		0.000938, 0.956433, 0.291949,
		37.396759, 36.795635, 35.290920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826214, 36.449799, 34.752758>,  <37.396103, 36.126133, 35.086555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826214, 36.449799, 34.752758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.009350, 36.774075, 34.898724>,  <37.119232, 36.968639, 34.986305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.009350, 36.774075, 34.898724>,  <36.826214, 36.449799, 34.752758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009350, 36.774075, 34.898724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196423, 0.492563, -0.847820,
		-0.867062, 0.316492, 0.384755,
		0.457845, 0.810688, 0.364916,
		37.146702, 37.017281, 35.008198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339413, 37.092850, 34.668190>,  <36.826214, 36.449799, 34.752758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339413, 37.092850, 34.668190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.720097, 37.213203, 34.692574>,  <36.948505, 37.285416, 34.707203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.720097, 37.213203, 34.692574>,  <36.339413, 37.092850, 34.668190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720097, 37.213203, 34.692574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115490, 0.534867, -0.837006,
		-0.284448, 0.789547, 0.543788,
		0.951710, 0.300887, 0.060957,
		37.005608, 37.303471, 34.710861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375042, 37.728718, 34.690659>,  <36.339413, 37.092850, 34.668190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375042, 37.728718, 34.690659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.735466, 37.643417, 34.539604>,  <36.951721, 37.592236, 34.448971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.735466, 37.643417, 34.539604>,  <36.375042, 37.728718, 34.690659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735466, 37.643417, 34.539604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189210, 0.590211, -0.784762,
		0.390238, 0.778572, 0.491467,
		0.901062, -0.213254, -0.377637,
		37.005783, 37.579441, 34.426311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859135, 38.222290, 34.852211>,  <36.375042, 37.728718, 34.690659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859135, 38.222290, 34.852211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.489872, 38.355568, 34.775528>,  <35.268314, 38.435535, 34.729519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.489872, 38.355568, 34.775528>,  <35.859135, 38.222290, 34.852211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489872, 38.355568, 34.775528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348185, -0.513413, 0.784330,
		0.162912, 0.790813, 0.589978,
		-0.923161, 0.333198, -0.191709,
		35.212925, 38.455528, 34.718014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695072, 38.447319, 35.500622>,  <35.859135, 38.222290, 34.852211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695072, 38.447319, 35.500622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.359180, 38.405563, 35.287476>,  <35.157646, 38.380508, 35.159588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.359180, 38.405563, 35.287476>,  <35.695072, 38.447319, 35.500622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359180, 38.405563, 35.287476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369193, -0.609847, 0.701273,
		-0.398177, 0.785614, 0.473567,
		-0.839733, -0.104393, -0.532870,
		35.107262, 38.374245, 35.127613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089447, 38.584114, 36.035484>,  <35.695072, 38.447319, 35.500622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089447, 38.584114, 36.035484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.963661, 38.374275, 35.719028>,  <34.888187, 38.248371, 35.529156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.963661, 38.374275, 35.719028>,  <35.089447, 38.584114, 36.035484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963661, 38.374275, 35.719028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462485, -0.643151, 0.610300,
		-0.828987, 0.557810, -0.040370,
		-0.314467, -0.524601, -0.791142,
		34.869320, 38.216896, 35.481686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373573, 38.527561, 36.047745>,  <35.089447, 38.584114, 36.035484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373573, 38.527561, 36.047745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.490906, 38.214539, 35.828087>,  <34.561306, 38.026726, 35.696293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.490906, 38.214539, 35.828087>,  <34.373573, 38.527561, 36.047745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490906, 38.214539, 35.828087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526782, -0.611646, 0.590246,
		-0.797784, 0.116141, -0.591652,
		0.293330, -0.782560, -0.549142,
		34.578903, 37.979771, 35.663345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727242, 38.121880, 35.914448>,  <34.373573, 38.527561, 36.047745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727242, 38.121880, 35.914448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.055168, 37.896244, 35.875023>,  <34.251923, 37.760864, 35.851368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.055168, 37.896244, 35.875023>,  <33.727242, 38.121880, 35.914448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055168, 37.896244, 35.875023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398786, -0.685928, 0.608665,
		-0.410947, -0.459685, -0.787282,
		0.819813, -0.564086, -0.098564,
		34.301113, 37.727016, 35.845455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407570, 37.507515, 35.726727>,  <33.727242, 38.121880, 35.914448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407570, 37.507515, 35.726727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.771908, 37.364983, 35.810040>,  <33.990513, 37.279465, 35.860027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.771908, 37.364983, 35.810040>,  <33.407570, 37.507515, 35.726727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771908, 37.364983, 35.810040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412608, -0.773342, 0.481349,
		-0.010444, -0.524377, -0.851422,
		0.910849, -0.356331, 0.208285,
		34.045162, 37.258083, 35.872524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372585, 36.780800, 35.483753>,  <33.407570, 37.507515, 35.726727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372585, 36.780800, 35.483753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.679680, 36.820255, 35.737003>,  <33.863937, 36.843929, 35.888954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.679680, 36.820255, 35.737003>,  <33.372585, 36.780800, 35.483753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679680, 36.820255, 35.737003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298655, -0.819105, 0.489767,
		0.566903, -0.565100, -0.599403,
		0.767741, 0.098636, 0.633123,
		33.910004, 36.849846, 35.926941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594791, 36.124828, 35.559544>,  <33.372585, 36.780800, 35.483753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594791, 36.124828, 35.559544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.763485, 36.301243, 35.876434>,  <33.864700, 36.407093, 36.066570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.763485, 36.301243, 35.876434>,  <33.594791, 36.124828, 35.559544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763485, 36.301243, 35.876434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306875, -0.752740, 0.582417,
		0.853212, -0.488739, -0.182110,
		0.421731, 0.441040, 0.792228,
		33.890003, 36.433556, 36.114101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076313, 35.580189, 35.889702>,  <33.594791, 36.124828, 35.559544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076313, 35.580189, 35.889702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.927181, 35.848694, 36.145954>,  <33.837700, 36.009796, 36.299706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.927181, 35.848694, 36.145954>,  <34.076313, 35.580189, 35.889702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927181, 35.848694, 36.145954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358353, -0.741007, 0.567883,
		0.855908, -0.017847, 0.516820,
		-0.372832, 0.671260, 0.640629,
		33.815331, 36.050072, 36.338142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063610, 35.261143, 36.531330>,  <34.076313, 35.580189, 35.889702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063610, 35.261143, 36.531330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.863785, 35.588764, 36.644176>,  <33.743889, 35.785336, 36.711884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.863785, 35.588764, 36.644176>,  <34.063610, 35.261143, 36.531330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863785, 35.588764, 36.644176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443534, -0.521574, 0.728861,
		0.744122, 0.238980, 0.623835,
		-0.499560, 0.819054, 0.282119,
		33.713917, 35.834480, 36.728813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100708, 35.297699, 37.242981>,  <34.063610, 35.261143, 36.531330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100708, 35.297699, 37.242981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.790100, 35.517990, 37.120529>,  <33.603733, 35.650166, 37.047058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.790100, 35.517990, 37.120529>,  <34.100708, 35.297699, 37.242981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790100, 35.517990, 37.120529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587964, -0.458671, 0.666272,
		0.226521, 0.697367, 0.679976,
		-0.776522, 0.550726, -0.306128,
		33.557144, 35.683208, 37.028690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820637, 35.569912, 37.855930>,  <34.100708, 35.297699, 37.242981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820637, 35.569912, 37.855930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.524033, 35.554462, 37.588001>,  <33.346069, 35.545193, 37.427242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.524033, 35.554462, 37.588001>,  <33.820637, 35.569912, 37.855930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524033, 35.554462, 37.588001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591332, -0.434062, 0.679644,
		-0.316993, 0.900055, 0.299025,
		-0.741513, -0.038619, -0.669827,
		33.301579, 35.542877, 37.387054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.146915, 40.861439, 31.950275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864372, 40.638817, 31.775320>,  <35.694847, 40.505245, 31.670347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864372, 40.638817, 31.775320>,  <36.146915, 40.861439, 31.950275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864372, 40.638817, 31.775320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315070, -0.306123, 0.898342,
		-0.633873, 0.772356, 0.040877,
		-0.706354, -0.556556, -0.437390,
		35.652466, 40.471851, 31.644104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502743, 41.077564, 32.340878>,  <36.146915, 40.861439, 31.950275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502743, 41.077564, 32.340878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429886, 40.726475, 32.163597>,  <35.386173, 40.515820, 32.057228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429886, 40.726475, 32.163597>,  <35.502743, 41.077564, 32.340878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429886, 40.726475, 32.163597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502505, -0.304341, 0.809238,
		-0.845170, 0.370107, -0.385627,
		-0.182143, -0.877723, -0.443200,
		35.375244, 40.463158, 32.030636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886776, 40.989380, 32.605747>,  <35.502743, 41.077564, 32.340878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886776, 40.989380, 32.605747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062805, 40.646385, 32.499115>,  <35.168423, 40.440590, 32.435135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062805, 40.646385, 32.499115>,  <34.886776, 40.989380, 32.605747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062805, 40.646385, 32.499115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131835, -0.355348, 0.925390,
		-0.888234, -0.372091, -0.269424,
		0.440069, -0.857482, -0.266578,
		35.194824, 40.389141, 32.419140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485645, 40.442379, 32.905544>,  <34.886776, 40.989380, 32.605747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485645, 40.442379, 32.905544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826668, 40.254124, 32.814640>,  <35.031281, 40.141171, 32.760098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826668, 40.254124, 32.814640>,  <34.485645, 40.442379, 32.905544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826668, 40.254124, 32.814640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123465, -0.603888, 0.787449,
		-0.507845, -0.643285, -0.572955,
		0.852554, -0.470642, -0.227258,
		35.082436, 40.112930, 32.746464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305676, 39.832901, 32.825836>,  <34.485645, 40.442379, 32.905544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305676, 39.832901, 32.825836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698322, 39.806622, 32.897522>,  <34.933910, 39.790855, 32.940533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698322, 39.806622, 32.897522>,  <34.305676, 39.832901, 32.825836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698322, 39.806622, 32.897522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177941, -0.654740, 0.734611,
		0.069077, -0.752994, -0.654392,
		0.981614, -0.065698, 0.179216,
		34.992805, 39.786911, 32.951286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517262, 39.180218, 32.890251>,  <34.305676, 39.832901, 32.825836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517262, 39.180218, 32.890251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804031, 39.359505, 33.103836>,  <34.976093, 39.467075, 33.231987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804031, 39.359505, 33.103836>,  <34.517262, 39.180218, 32.890251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804031, 39.359505, 33.103836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160373, -0.639354, 0.752002,
		0.678451, -0.624765, -0.386489,
		0.716928, 0.448214, 0.533965,
		35.019108, 39.493969, 33.264027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909023, 38.624233, 33.094463>,  <34.517262, 39.180218, 32.890251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909023, 38.624233, 33.094463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034489, 38.914104, 33.339886>,  <35.109768, 39.088028, 33.487141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034489, 38.914104, 33.339886>,  <34.909023, 38.624233, 33.094463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034489, 38.914104, 33.339886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063047, -0.660633, 0.748057,
		0.947438, -0.195957, -0.252907,
		0.313666, 0.724682, 0.613555,
		35.128590, 39.131508, 33.523952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526131, 38.440319, 33.420887>,  <34.909023, 38.624233, 33.094463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526131, 38.440319, 33.420887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357033, 38.711956, 33.660927>,  <35.255573, 38.874939, 33.804951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357033, 38.711956, 33.660927>,  <35.526131, 38.440319, 33.420887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357033, 38.711956, 33.660927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029617, -0.672181, 0.739794,
		0.905763, 0.294974, 0.304277,
		-0.422749, 0.679090, 0.600100,
		35.230209, 38.915684, 33.840958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781353, 38.244236, 33.997910>,  <35.526131, 38.440319, 33.420887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781353, 38.244236, 33.997910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490078, 38.494774, 34.109222>,  <35.315315, 38.645096, 34.176010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490078, 38.494774, 34.109222>,  <35.781353, 38.244236, 33.997910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490078, 38.494774, 34.109222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243484, -0.615944, 0.749218,
		0.640673, 0.477813, 0.601026,
		-0.728185, 0.626345, 0.278279,
		35.271622, 38.682678, 34.192707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593693, 38.346138, 34.108974>,  <35.781353, 38.244236, 33.997910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593693, 38.346138, 34.108974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868496, 38.063896, 34.039528>,  <37.033379, 37.894550, 33.997860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868496, 38.063896, 34.039528>,  <36.593693, 38.346138, 34.108974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868496, 38.063896, 34.039528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021688, 0.218914, -0.975503,
		0.726323, 0.673947, 0.135093,
		0.687012, -0.705600, -0.173619,
		37.074600, 37.852215, 33.987442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195564, 38.593044, 33.695477>,  <36.593693, 38.346138, 34.108974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195564, 38.593044, 33.695477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241646, 38.198521, 33.648273>,  <37.269295, 37.961807, 33.619953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241646, 38.198521, 33.648273>,  <37.195564, 38.593044, 33.695477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241646, 38.198521, 33.648273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038870, 0.123183, -0.991622,
		0.992581, 0.109656, 0.052530,
		0.115208, -0.986307, -0.118007,
		37.276207, 37.902630, 33.612873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691334, 38.533916, 33.328201>,  <37.195564, 38.593044, 33.695477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691334, 38.533916, 33.328201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512520, 38.183849, 33.254192>,  <37.405231, 37.973808, 33.209789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512520, 38.183849, 33.254192>,  <37.691334, 38.533916, 33.328201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512520, 38.183849, 33.254192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243261, 0.080102, -0.966648,
		0.860802, -0.477137, 0.177086,
		-0.447039, -0.875171, -0.185020,
		37.378407, 37.921299, 33.198685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151249, 38.221184, 32.958412>,  <37.691334, 38.533916, 33.328201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151249, 38.221184, 32.958412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821888, 38.018150, 32.856926>,  <37.624271, 37.896332, 32.796036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821888, 38.018150, 32.856926>,  <38.151249, 38.221184, 32.958412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821888, 38.018150, 32.856926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258604, 0.062326, -0.963970,
		0.505108, -0.859345, 0.079944,
		-0.823401, -0.507583, -0.253712,
		37.574867, 37.865875, 32.780811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351433, 37.723232, 32.382774>,  <38.151249, 38.221184, 32.958412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351433, 37.723232, 32.382774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952774, 37.749821, 32.363724>,  <37.713577, 37.765774, 32.352295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952774, 37.749821, 32.363724>,  <38.351433, 37.723232, 32.382774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952774, 37.749821, 32.363724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057839, 0.161330, -0.985204,
		-0.057808, -0.984659, -0.164634,
		-0.996651, 0.066475, -0.047626,
		37.653778, 37.769764, 32.349438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207764, 37.147797, 31.994200>,  <38.351433, 37.723232, 32.382774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207764, 37.147797, 31.994200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922981, 37.426598, 31.960005>,  <37.752113, 37.593880, 31.939487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922981, 37.426598, 31.960005>,  <38.207764, 37.147797, 31.994200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922981, 37.426598, 31.960005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194505, 0.078756, -0.977735,
		-0.674754, -0.712728, -0.191642,
		-0.711952, 0.697005, -0.085488,
		37.709396, 37.635700, 31.934359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804096, 36.914482, 31.521130>,  <38.207764, 37.147797, 31.994200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804096, 36.914482, 31.521130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722237, 37.305996, 31.525141>,  <37.673122, 37.540905, 31.527548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722237, 37.305996, 31.525141>,  <37.804096, 36.914482, 31.521130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722237, 37.305996, 31.525141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206633, 0.053214, -0.976970,
		-0.956777, -0.197862, -0.213139,
		-0.204647, 0.978785, 0.010029,
		37.660843, 37.599632, 31.528149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464001, 37.101994, 30.933929>,  <37.804096, 36.914482, 31.521130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464001, 37.101994, 30.933929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577156, 37.470058, 31.042204>,  <37.645050, 37.690899, 31.107168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577156, 37.470058, 31.042204>,  <37.464001, 37.101994, 30.933929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577156, 37.470058, 31.042204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333515, 0.170236, -0.927247,
		-0.899302, 0.352582, -0.258732,
		0.282885, 0.920166, 0.270684,
		37.662022, 37.746109, 31.123409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169601, 37.529358, 30.447533>,  <37.464001, 37.101994, 30.933929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169601, 37.529358, 30.447533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461586, 37.750919, 30.607708>,  <37.636776, 37.883858, 30.703814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461586, 37.750919, 30.607708>,  <37.169601, 37.529358, 30.447533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461586, 37.750919, 30.607708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334552, 0.221333, -0.916017,
		-0.596017, 0.802621, -0.023746,
		0.729958, 0.553905, 0.400437,
		37.680573, 37.917091, 30.727839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226070, 37.966343, 30.002892>,  <37.169601, 37.529358, 30.447533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226070, 37.966343, 30.002892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571484, 38.018276, 30.197807>,  <37.778732, 38.049435, 30.314756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571484, 38.018276, 30.197807>,  <37.226070, 37.966343, 30.002892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571484, 38.018276, 30.197807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450964, 0.233663, -0.861413,
		-0.225701, 0.963610, 0.143226,
		0.863534, 0.129832, 0.487292,
		37.830544, 38.057224, 30.343994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444298, 38.603722, 29.762402>,  <37.226070, 37.966343, 30.002892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444298, 38.603722, 29.762402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757717, 38.397274, 29.900780>,  <37.945766, 38.273407, 29.983807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757717, 38.397274, 29.900780>,  <37.444298, 38.603722, 29.762402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757717, 38.397274, 29.900780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555990, 0.333857, -0.761193,
		0.277369, 0.788771, 0.548549,
		0.783544, -0.516119, 0.345947,
		37.992779, 38.242439, 30.004564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009239, 38.962742, 29.869677>,  <37.444298, 38.603722, 29.762402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009239, 38.962742, 29.869677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186863, 38.609749, 29.807665>,  <38.293438, 38.397953, 29.770458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186863, 38.609749, 29.807665>,  <38.009239, 38.962742, 29.869677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186863, 38.609749, 29.807665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594620, 0.419679, -0.685781,
		0.670254, 0.212342, 0.711105,
		0.444056, -0.882485, -0.155029,
		38.320080, 38.345005, 29.761156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644981, 39.130749, 29.639910>,  <38.009239, 38.962742, 29.869677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644981, 39.130749, 29.639910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662819, 38.742470, 29.545450>,  <38.673523, 38.509502, 29.488775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662819, 38.742470, 29.545450>,  <38.644981, 39.130749, 29.639910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662819, 38.742470, 29.545450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708831, 0.197319, -0.677218,
		0.703967, -0.137187, 0.696857,
		0.044598, -0.970693, -0.236149,
		38.676197, 38.451263, 29.474606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450100, 38.963646, 29.558237>,  <38.644981, 39.130749, 29.639910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450100, 38.963646, 29.558237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229847, 38.699238, 29.354336>,  <39.097694, 38.540592, 29.231995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229847, 38.699238, 29.354336>,  <39.450100, 38.963646, 29.558237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229847, 38.699238, 29.354336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496826, 0.231205, -0.836486,
		0.670795, -0.713856, 0.201105,
		-0.550634, -0.661025, -0.509753,
		39.064655, 38.500931, 29.201410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.518610, 35.568542, 26.310934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.851061, 35.699112, 26.491011>,  <32.050533, 35.777454, 26.599056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.851061, 35.699112, 26.491011>,  <31.518610, 35.568542, 26.310934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851061, 35.699112, 26.491011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124006, -0.680400, 0.722274,
		0.542076, -0.656129, -0.525022,
		0.831129, 0.326421, 0.450192,
		32.100399, 35.797039, 26.626068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836079, 34.946766, 26.700369>,  <31.518610, 35.568542, 26.310934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836079, 34.946766, 26.700369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.036819, 35.251675, 26.863871>,  <32.157265, 35.434620, 26.961971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.036819, 35.251675, 26.863871>,  <31.836079, 34.946766, 26.700369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036819, 35.251675, 26.863871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014489, -0.479915, 0.877195,
		0.864832, -0.434300, -0.251891,
		0.501853, 0.762276, 0.408753,
		32.187374, 35.480358, 26.986496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469616, 34.703247, 27.039541>,  <31.836079, 34.946766, 26.700369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469616, 34.703247, 27.039541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.388821, 35.047874, 27.225832>,  <32.340343, 35.254650, 27.337606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.388821, 35.047874, 27.225832>,  <32.469616, 34.703247, 27.039541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388821, 35.047874, 27.225832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088813, -0.489683, 0.867365,
		0.975352, 0.133837, 0.175430,
		-0.201990, 0.861567, 0.465727,
		32.328224, 35.306343, 27.365551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829861, 34.674137, 27.616579>,  <32.469616, 34.703247, 27.039541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829861, 34.674137, 27.616579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.572296, 34.970360, 27.693478>,  <32.417759, 35.148094, 27.739616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.572296, 34.970360, 27.693478>,  <32.829861, 34.674137, 27.616579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572296, 34.970360, 27.693478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116709, -0.343403, 0.931908,
		0.756146, 0.577629, 0.307551,
		-0.643912, 0.740553, 0.192248,
		32.379124, 35.192524, 27.751152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110096, 35.062050, 28.251787>,  <32.829861, 34.674137, 27.616579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110096, 35.062050, 28.251787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.720722, 35.142384, 28.207785>,  <32.487099, 35.190582, 28.181383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.720722, 35.142384, 28.207785>,  <33.110096, 35.062050, 28.251787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720722, 35.142384, 28.207785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182809, -0.392268, 0.901503,
		0.137896, 0.897660, 0.418558,
		-0.973430, 0.200830, -0.110008,
		32.428692, 35.202633, 28.174782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943218, 35.420670, 28.875113>,  <33.110096, 35.062050, 28.251787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943218, 35.420670, 28.875113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.598682, 35.301029, 28.710850>,  <32.391960, 35.229244, 28.612293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.598682, 35.301029, 28.710850>,  <32.943218, 35.420670, 28.875113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598682, 35.301029, 28.710850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351412, -0.232984, 0.906768,
		-0.366893, 0.925341, 0.095569,
		-0.861336, -0.299102, -0.410656,
		32.340282, 35.211300, 28.587652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427559, 35.814579, 29.340725>,  <32.943218, 35.420670, 28.875113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427559, 35.814579, 29.340725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.260902, 35.500359, 29.157719>,  <32.160908, 35.311825, 29.047915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.260902, 35.500359, 29.157719>,  <32.427559, 35.814579, 29.340725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260902, 35.500359, 29.157719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277265, -0.369490, 0.886905,
		-0.865757, 0.496373, -0.063862,
		-0.416640, -0.785551, -0.457516,
		32.135910, 35.264694, 29.020464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826471, 35.739822, 29.690321>,  <32.427559, 35.814579, 29.340725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826471, 35.739822, 29.690321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.879827, 35.385132, 29.513266>,  <31.911842, 35.172318, 29.407032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.879827, 35.385132, 29.513266>,  <31.826471, 35.739822, 29.690321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879827, 35.385132, 29.513266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034441, -0.450506, 0.892109,
		-0.990465, -0.103755, -0.090633,
		0.133392, -0.886724, -0.442637,
		31.919846, 35.119114, 29.380474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273262, 35.352730, 29.942530>,  <31.826471, 35.739822, 29.690321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273262, 35.352730, 29.942530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.533922, 35.080410, 29.808743>,  <31.690317, 34.917019, 29.728470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.533922, 35.080410, 29.808743>,  <31.273262, 35.352730, 29.942530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533922, 35.080410, 29.808743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097719, -0.512619, 0.853037,
		-0.752200, -0.523197, -0.400575,
		0.651649, -0.680798, -0.334466,
		31.729418, 34.876171, 29.708403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031591, 34.649628, 30.082355>,  <31.273262, 35.352730, 29.942530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031591, 34.649628, 30.082355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.429031, 34.627640, 30.042883>,  <31.667496, 34.614445, 30.019199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.429031, 34.627640, 30.042883>,  <31.031591, 34.649628, 30.082355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429031, 34.627640, 30.042883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042229, -0.629464, 0.775881,
		-0.104769, -0.775082, -0.623113,
		0.993599, -0.054974, -0.098679,
		31.727112, 34.611149, 30.013279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220795, 33.944210, 30.203653>,  <31.031591, 34.649628, 30.082355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220795, 33.944210, 30.203653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.577980, 34.119827, 30.243368>,  <31.792292, 34.225197, 30.267197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.577980, 34.119827, 30.243368>,  <31.220795, 33.944210, 30.203653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577980, 34.119827, 30.243368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155136, -0.507236, 0.847729,
		0.422554, -0.741587, -0.521054,
		0.892962, 0.439046, 0.099288,
		31.845869, 34.251541, 30.273155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694866, 33.390972, 30.293356>,  <31.220795, 33.944210, 30.203653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694866, 33.390972, 30.293356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.888777, 33.712532, 30.431190>,  <32.005123, 33.905468, 30.513891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.888777, 33.712532, 30.431190>,  <31.694866, 33.390972, 30.293356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888777, 33.712532, 30.431190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149571, -0.464366, 0.872922,
		0.861755, -0.371631, -0.345353,
		0.484775, 0.803900, 0.344585,
		32.034210, 33.953701, 30.534565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249794, 33.146965, 30.786270>,  <31.694866, 33.390972, 30.293356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249794, 33.146965, 30.786270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.219059, 33.532391, 30.888746>,  <32.200619, 33.763645, 30.950232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.219059, 33.532391, 30.888746>,  <32.249794, 33.146965, 30.786270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219059, 33.532391, 30.888746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043639, -0.253453, 0.966363,
		0.996088, 0.085430, -0.022575,
		-0.076835, 0.963568, 0.256190,
		32.196007, 33.821461, 30.965603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732868, 33.172112, 31.272001>,  <32.249794, 33.146965, 30.786270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732868, 33.172112, 31.272001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.492931, 33.487587, 31.325911>,  <32.348969, 33.676872, 31.358255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.492931, 33.487587, 31.325911>,  <32.732868, 33.172112, 31.272001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492931, 33.487587, 31.325911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234137, -0.334090, 0.912997,
		0.765097, 0.516096, 0.385062,
		-0.599839, 0.788688, 0.134774,
		32.312981, 33.724194, 31.366343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347576, 33.384914, 31.374380>,  <32.732868, 33.172112, 31.272001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347576, 33.384914, 31.374380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.719711, 33.243996, 31.415085>,  <33.942993, 33.159447, 31.439508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.719711, 33.243996, 31.415085>,  <33.347576, 33.384914, 31.374380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719711, 33.243996, 31.415085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243921, 0.387333, -0.889087,
		0.273804, 0.851976, 0.446284,
		0.930341, -0.352293, 0.101761,
		33.998814, 33.138309, 31.445614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693886, 33.870251, 31.099970>,  <33.347576, 33.384914, 31.374380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693886, 33.870251, 31.099970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.960266, 33.571972, 31.108343>,  <34.120094, 33.393005, 31.113367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.960266, 33.571972, 31.108343>,  <33.693886, 33.870251, 31.099970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960266, 33.571972, 31.108343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430760, 0.361483, -0.826907,
		0.609057, 0.559699, 0.561948,
		0.665954, -0.745699, 0.020932,
		34.160053, 33.348263, 31.114622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301121, 34.159416, 30.993975>,  <33.693886, 33.870251, 31.099970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301121, 34.159416, 30.993975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.367199, 33.778900, 30.889860>,  <34.406845, 33.550591, 30.827391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.367199, 33.778900, 30.889860>,  <34.301121, 34.159416, 30.993975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367199, 33.778900, 30.889860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418268, 0.306580, -0.855021,
		0.893175, 0.032375, 0.448542,
		0.165195, -0.951294, -0.260288,
		34.416756, 33.493511, 30.811773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981606, 34.049625, 30.701460>,  <34.301121, 34.159416, 30.993975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981606, 34.049625, 30.701460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.789581, 33.730515, 30.555532>,  <34.674366, 33.539047, 30.467976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.789581, 33.730515, 30.555532>,  <34.981606, 34.049625, 30.701460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789581, 33.730515, 30.555532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446957, 0.135410, -0.884248,
		0.754835, -0.587548, 0.291569,
		-0.480057, -0.797779, -0.364821,
		34.645565, 33.491180, 30.446087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547432, 33.836121, 30.311161>,  <34.981606, 34.049625, 30.701460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547432, 33.836121, 30.311161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.189537, 33.692116, 30.205452>,  <34.974800, 33.605713, 30.142027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.189537, 33.692116, 30.205452>,  <35.547432, 33.836121, 30.311161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189537, 33.692116, 30.205452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232618, 0.129448, -0.963915,
		0.381228, -0.923924, -0.032077,
		-0.894737, -0.360009, -0.264271,
		34.921116, 33.584114, 30.126171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620533, 33.500778, 29.731083>,  <35.547432, 33.836121, 30.311161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620533, 33.500778, 29.731083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.222576, 33.510288, 29.691824>,  <34.983803, 33.515995, 29.668268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.222576, 33.510288, 29.691824>,  <35.620533, 33.500778, 29.731083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222576, 33.510288, 29.691824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100949, 0.261592, -0.959885,
		0.002850, -0.964886, -0.262655,
		-0.994888, 0.023779, -0.098150,
		34.924110, 33.517422, 29.662378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380890, 33.017925, 29.145807>,  <35.620533, 33.500778, 29.731083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380890, 33.017925, 29.145807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.133995, 33.326012, 29.210041>,  <34.985859, 33.510864, 29.248581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.133995, 33.326012, 29.210041>,  <35.380890, 33.017925, 29.145807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133995, 33.326012, 29.210041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279964, 0.405758, -0.870046,
		-0.735280, -0.492069, -0.466082,
		-0.617239, 0.770213, 0.160584,
		34.948822, 33.557076, 29.258217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151237, 33.223888, 28.571390>,  <35.380890, 33.017925, 29.145807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151237, 33.223888, 28.571390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.013885, 33.558666, 28.741854>,  <34.931473, 33.759533, 28.844131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.013885, 33.558666, 28.741854>,  <35.151237, 33.223888, 28.571390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013885, 33.558666, 28.741854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145459, 0.495665, -0.856246,
		-0.927863, -0.232033, -0.291945,
		-0.343384, 0.836945, 0.426157,
		34.910870, 33.809750, 28.869701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601433, 33.503368, 28.073437>,  <35.151237, 33.223888, 28.571390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601433, 33.503368, 28.073437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.728886, 33.812992, 28.292271>,  <34.805359, 33.998768, 28.423571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.728886, 33.812992, 28.292271>,  <34.601433, 33.503368, 28.073437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728886, 33.812992, 28.292271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161302, 0.524468, -0.836011,
		-0.934053, 0.354627, 0.042256,
		0.318633, 0.774063, 0.547082,
		34.824474, 34.045212, 28.456396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168861, 34.053627, 27.834461>,  <34.601433, 33.503368, 28.073437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168861, 34.053627, 27.834461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.508625, 34.184994, 27.999701>,  <34.712482, 34.263813, 28.098845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.508625, 34.184994, 27.999701>,  <34.168861, 34.053627, 27.834461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508625, 34.184994, 27.999701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227306, 0.478764, -0.848008,
		-0.476277, 0.814203, 0.332014,
		0.849407, 0.328418, 0.413098,
		34.763447, 34.283520, 28.123631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323334, 34.793819, 27.832514>,  <34.168861, 34.053627, 27.834461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323334, 34.793819, 27.832514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.671421, 34.598713, 27.804779>,  <34.880272, 34.481647, 27.788137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.671421, 34.598713, 27.804779>,  <34.323334, 34.793819, 27.832514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671421, 34.598713, 27.804779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102892, 0.317568, -0.942637,
		0.481805, 0.813164, 0.326540,
		0.870217, -0.487766, -0.069338,
		34.932487, 34.452385, 27.783978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889080, 35.332253, 27.686049>,  <34.323334, 34.793819, 27.832514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889080, 35.332253, 27.686049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.000660, 34.974350, 27.546562>,  <35.067608, 34.759609, 27.462870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.000660, 34.974350, 27.546562>,  <34.889080, 35.332253, 27.686049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000660, 34.974350, 27.546562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220355, 0.413082, -0.883633,
		0.934682, 0.169648, 0.312392,
		0.278950, -0.894753, -0.348718,
		35.084343, 34.705925, 27.441946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371964, 35.518326, 27.269991>,  <34.889080, 35.332253, 27.686049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371964, 35.518326, 27.269991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.276535, 35.147942, 27.152906>,  <35.219280, 34.925713, 27.082655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.276535, 35.147942, 27.152906>,  <35.371964, 35.518326, 27.269991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276535, 35.147942, 27.152906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237181, 0.236732, -0.942180,
		0.941717, -0.294200, 0.163144,
		-0.238568, -0.925961, -0.292713,
		35.204964, 34.870152, 27.065092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961071, 35.276802, 26.910656>,  <35.371964, 35.518326, 27.269991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961071, 35.276802, 26.910656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.653809, 35.052948, 26.786240>,  <35.469452, 34.918636, 26.711590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.653809, 35.052948, 26.786240>,  <35.961071, 35.276802, 26.910656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653809, 35.052948, 26.786240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125189, 0.345141, -0.930164,
		0.627910, -0.753446, -0.195060,
		-0.768152, -0.559640, -0.311041,
		35.423363, 34.885056, 26.692928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599133, 34.958290, 26.672840>,  <35.961071, 35.276802, 26.910656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599133, 34.958290, 26.672840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.937424, 35.156609, 26.751762>,  <37.140400, 35.275600, 26.799116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.937424, 35.156609, 26.751762>,  <36.599133, 34.958290, 26.672840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937424, 35.156609, 26.751762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120561, -0.182660, 0.975756,
		0.519813, -0.849014, -0.094707,
		0.845730, 0.495792, 0.197307,
		37.191143, 35.305347, 26.810955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771286, 34.558266, 27.174934>,  <36.599133, 34.958290, 26.672840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771286, 34.558266, 27.174934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.009365, 34.877689, 27.210804>,  <37.152214, 35.069344, 27.232325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.009365, 34.877689, 27.210804>,  <36.771286, 34.558266, 27.174934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009365, 34.877689, 27.210804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036267, -0.138172, 0.989744,
		0.802758, -0.585844, -0.111201,
		0.595200, 0.798558, 0.089672,
		37.187923, 35.117256, 27.237705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232605, 34.409420, 27.813084>,  <36.771286, 34.558266, 27.174934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232605, 34.409420, 27.813084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.235939, 34.806793, 27.767454>,  <37.237938, 35.045219, 27.740076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.235939, 34.806793, 27.767454>,  <37.232605, 34.409420, 27.813084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235939, 34.806793, 27.767454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089062, 0.112886, 0.989608,
		0.995991, -0.018408, -0.087537,
		0.008335, 0.993438, -0.114072,
		37.238441, 35.104824, 27.733232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861782, 34.587906, 28.104568>,  <37.232605, 34.409420, 27.813084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861782, 34.587906, 28.104568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.616005, 34.902950, 28.086132>,  <37.468536, 35.091976, 28.075071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.616005, 34.902950, 28.086132>,  <37.861782, 34.587906, 28.104568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616005, 34.902950, 28.086132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005207, 0.062465, 0.998034,
		0.788941, 0.612998, -0.042482,
		-0.614447, 0.787611, -0.046089,
		37.431671, 35.139233, 28.072306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106182, 35.040531, 28.538780>,  <37.861782, 34.587906, 28.104568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106182, 35.040531, 28.538780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.733959, 35.183224, 28.505777>,  <37.510624, 35.268837, 28.485975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.733959, 35.183224, 28.505777>,  <38.106182, 35.040531, 28.538780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733959, 35.183224, 28.505777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044257, 0.333279, 0.941789,
		0.363461, 0.872737, -0.325923,
		-0.930558, 0.356728, -0.082509,
		37.454792, 35.290241, 28.481024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218166, 35.664833, 28.883987>,  <38.106182, 35.040531, 28.538780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218166, 35.664833, 28.883987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.825832, 35.587257, 28.876488>,  <37.590431, 35.540710, 28.871988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.825832, 35.587257, 28.876488>,  <38.218166, 35.664833, 28.883987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825832, 35.587257, 28.876488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057634, 0.196851, 0.978738,
		-0.186124, 0.961061, -0.204256,
		-0.980834, -0.193939, -0.018751,
		37.531582, 35.529076, 28.870863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020966, 36.073238, 29.383558>,  <38.218166, 35.664833, 28.883987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020966, 36.073238, 29.383558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.695896, 35.846821, 29.328192>,  <37.500854, 35.710972, 29.294971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.695896, 35.846821, 29.328192>,  <38.020966, 36.073238, 29.383558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695896, 35.846821, 29.328192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196654, 0.042811, 0.979538,
		-0.548531, 0.823266, -0.146105,
		-0.812675, -0.566040, -0.138416,
		37.452095, 35.677010, 29.286667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535259, 36.372322, 29.772642>,  <38.020966, 36.073238, 29.383558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535259, 36.372322, 29.772642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415897, 35.997349, 29.700890>,  <37.344280, 35.772366, 29.657839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415897, 35.997349, 29.700890>,  <37.535259, 36.372322, 29.772642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415897, 35.997349, 29.700890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271538, -0.096792, 0.957548,
		-0.914998, 0.334446, -0.225665,
		-0.298406, -0.937431, -0.179379,
		37.326374, 35.716118, 29.647076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851025, 36.231709, 30.155283>,  <37.535259, 36.372322, 29.772642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851025, 36.231709, 30.155283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.078869, 35.907356, 30.101583>,  <37.215576, 35.712746, 30.069365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.078869, 35.907356, 30.101583>,  <36.851025, 36.231709, 30.155283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078869, 35.907356, 30.101583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155525, -0.054048, 0.986352,
		-0.807069, -0.582711, 0.095326,
		0.569606, -0.810880, -0.134246,
		37.249752, 35.664093, 30.061310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604462, 35.696407, 30.572104>,  <36.851025, 36.231709, 30.155283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604462, 35.696407, 30.572104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.991035, 35.620605, 30.502718>,  <37.222980, 35.575123, 30.461086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.991035, 35.620605, 30.502718>,  <36.604462, 35.696407, 30.572104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991035, 35.620605, 30.502718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151519, -0.124832, 0.980540,
		-0.207478, -0.973911, -0.091927,
		0.966434, -0.189512, -0.173466,
		37.280968, 35.563751, 30.450678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615273, 35.100147, 30.875105>,  <36.604462, 35.696407, 30.572104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615273, 35.100147, 30.875105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.986046, 35.250061, 30.867863>,  <37.208511, 35.340008, 30.863518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.986046, 35.250061, 30.867863>,  <36.615273, 35.100147, 30.875105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986046, 35.250061, 30.867863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099502, -0.198999, 0.974935,
		0.361785, -0.905504, -0.221751,
		0.926936, 0.374782, -0.018104,
		37.264126, 35.362495, 30.862431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091286, 34.524498, 31.191153>,  <36.615273, 35.100147, 30.875105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091286, 34.524498, 31.191153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.334820, 34.840828, 31.216154>,  <37.480942, 35.030628, 31.231155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.334820, 34.840828, 31.216154>,  <37.091286, 34.524498, 31.191153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334820, 34.840828, 31.216154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102201, -0.156327, 0.982404,
		0.786684, -0.591736, -0.176001,
		0.608838, 0.790828, 0.062504,
		37.517471, 35.078075, 31.234905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677959, 34.302780, 31.528690>,  <37.091286, 34.524498, 31.191153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677959, 34.302780, 31.528690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645893, 34.696487, 31.591679>,  <37.626652, 34.932713, 31.629471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645893, 34.696487, 31.591679>,  <37.677959, 34.302780, 31.528690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645893, 34.696487, 31.591679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061139, -0.152827, 0.986360,
		0.994905, 0.088704, -0.047925,
		-0.080170, 0.984264, 0.157471,
		37.621841, 34.991768, 31.638920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044434, 34.277519, 32.121868>,  <37.677959, 34.302780, 31.528690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044434, 34.277519, 32.121868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.863697, 34.631485, 32.076691>,  <37.755257, 34.843864, 32.049583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.863697, 34.631485, 32.076691>,  <38.044434, 34.277519, 32.121868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863697, 34.631485, 32.076691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201432, 0.224539, 0.953419,
		0.869059, 0.408045, -0.279707,
		-0.451843, 0.884919, -0.112944,
		37.728146, 34.896961, 32.042809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.943520, 38.500072, 28.620237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.556751, 38.415642, 28.562963>,  <39.324688, 38.364983, 28.528599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.556751, 38.415642, 28.562963>,  <39.943520, 38.500072, 28.620237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556751, 38.415642, 28.562963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027359, 0.472298, -0.881014,
		0.253586, -0.855793, -0.450902,
		-0.966926, -0.211077, -0.143182,
		39.266674, 38.352318, 28.520008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831905, 38.008854, 27.981548>,  <39.943520, 38.500072, 28.620237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831905, 38.008854, 27.981548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.528824, 38.249500, 28.082693>,  <39.346973, 38.393887, 28.143379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.528824, 38.249500, 28.082693>,  <39.831905, 38.008854, 27.981548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528824, 38.249500, 28.082693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040973, 0.342849, -0.938497,
		-0.651307, -0.721466, -0.235129,
		-0.757707, 0.601616, 0.252861,
		39.301510, 38.429985, 28.158552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365093, 37.839958, 27.463118>,  <39.831905, 38.008854, 27.981548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365093, 37.839958, 27.463118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.262436, 38.197277, 27.610714>,  <39.200844, 38.411667, 27.699272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.262436, 38.197277, 27.610714>,  <39.365093, 37.839958, 27.463118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262436, 38.197277, 27.610714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162948, 0.336322, -0.927542,
		-0.952672, -0.298170, 0.059248,
		-0.256639, 0.893298, 0.368991,
		39.185444, 38.465267, 27.721411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850143, 38.164314, 26.999182>,  <39.365093, 37.839958, 27.463118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850143, 38.164314, 26.999182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.963486, 38.478527, 27.219236>,  <39.031490, 38.667053, 27.351269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.963486, 38.478527, 27.219236>,  <38.850143, 38.164314, 26.999182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963486, 38.478527, 27.219236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024453, 0.567542, -0.822981,
		-0.958704, 0.246645, 0.141605,
		0.283351, 0.785533, 0.550137,
		39.048492, 38.714188, 27.384277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345558, 38.612259, 26.951788>,  <38.850143, 38.164314, 26.999182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345558, 38.612259, 26.951788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.683723, 38.814804, 27.019756>,  <38.886623, 38.936333, 27.060537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.683723, 38.814804, 27.019756>,  <38.345558, 38.612259, 26.951788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683723, 38.814804, 27.019756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145812, 0.524853, -0.838611,
		-0.513828, 0.684194, 0.517551,
		0.845411, 0.506367, 0.169920,
		38.937347, 38.966713, 27.070732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295799, 39.324581, 26.704746>,  <38.345558, 38.612259, 26.951788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295799, 39.324581, 26.704746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.692783, 39.308613, 26.751104>,  <38.930973, 39.299034, 26.778919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.692783, 39.308613, 26.751104>,  <38.295799, 39.324581, 26.704746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692783, 39.308613, 26.751104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118707, 0.548726, -0.827532,
		-0.030562, 0.835049, 0.549326,
		0.992459, -0.039918, 0.115896,
		38.990520, 39.296638, 26.785873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504261, 39.993713, 26.537506>,  <38.295799, 39.324581, 26.704746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504261, 39.993713, 26.537506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.836811, 39.772812, 26.512754>,  <39.036343, 39.640270, 26.497904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.836811, 39.772812, 26.512754>,  <38.504261, 39.993713, 26.537506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836811, 39.772812, 26.512754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222854, 0.433339, -0.873243,
		0.509065, 0.712205, 0.483340,
		0.831378, -0.552251, -0.061880,
		39.086224, 39.607136, 26.494190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957573, 40.423573, 26.338694>,  <38.504261, 39.993713, 26.537506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957573, 40.423573, 26.338694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.129036, 40.071701, 26.256315>,  <39.231915, 39.860577, 26.206888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.129036, 40.071701, 26.256315>,  <38.957573, 40.423573, 26.338694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129036, 40.071701, 26.256315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081819, 0.264810, -0.960823,
		0.899755, 0.395014, 0.185487,
		0.428657, -0.879682, -0.205945,
		39.257633, 39.807796, 26.194532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606041, 40.534996, 25.831030>,  <38.957573, 40.423573, 26.338694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606041, 40.534996, 25.831030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517963, 40.145443, 25.808842>,  <39.465118, 39.911713, 25.795528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517963, 40.145443, 25.808842>,  <39.606041, 40.534996, 25.831030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517963, 40.145443, 25.808842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141387, 0.024403, -0.989654,
		0.965156, -0.225756, 0.132320,
		-0.220191, -0.973878, -0.055472,
		39.451904, 39.853279, 25.792200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050358, 40.273479, 25.359453>,  <39.606041, 40.534996, 25.831030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050358, 40.273479, 25.359453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.763878, 39.995377, 25.383675>,  <39.591988, 39.828514, 25.398207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.763878, 39.995377, 25.383675>,  <40.050358, 40.273479, 25.359453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763878, 39.995377, 25.383675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014960, -0.071451, -0.997332,
		0.697733, -0.715196, 0.040772,
		-0.716201, -0.695262, 0.060554,
		39.549019, 39.786797, 25.401840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307819, 39.736126, 25.044546>,  <40.050358, 40.273479, 25.359453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307819, 39.736126, 25.044546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.909203, 39.703232, 25.039726>,  <39.670033, 39.683495, 25.036835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.909203, 39.703232, 25.039726>,  <40.307819, 39.736126, 25.044546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909203, 39.703232, 25.039726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016375, -0.052143, -0.998505,
		0.081487, -0.995248, 0.053309,
		-0.996540, -0.082238, -0.012048,
		39.610241, 39.678562, 25.036112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158382, 39.249809, 24.574877>,  <40.307819, 39.736126, 25.044546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158382, 39.249809, 24.574877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.831459, 39.477089, 24.613157>,  <39.635303, 39.613457, 24.636126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.831459, 39.477089, 24.613157>,  <40.158382, 39.249809, 24.574877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831459, 39.477089, 24.613157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100574, 0.022865, -0.994667,
		-0.567357, -0.822573, 0.038458,
		-0.817307, 0.568199, 0.095702,
		39.586266, 39.647549, 24.641869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616730, 38.950096, 24.180685>,  <40.158382, 39.249809, 24.574877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616730, 38.950096, 24.180685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.597439, 39.347244, 24.224287>,  <39.585865, 39.585533, 24.250448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.597439, 39.347244, 24.224287>,  <39.616730, 38.950096, 24.180685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597439, 39.347244, 24.224287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012219, 0.109709, -0.993889,
		-0.998762, -0.046598, -0.017422,
		-0.048224, 0.992871, 0.109004,
		39.582970, 39.645107, 24.256989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138176, 39.173832, 23.759619>,  <39.616730, 38.950096, 24.180685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138176, 39.173832, 23.759619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.368324, 39.493496, 23.829243>,  <39.506413, 39.685295, 23.871017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.368324, 39.493496, 23.829243>,  <39.138176, 39.173832, 23.759619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368324, 39.493496, 23.829243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015087, 0.202407, -0.979185,
		-0.817757, 0.566016, 0.104401,
		0.575366, 0.799160, 0.174059,
		39.540936, 39.733246, 23.881460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734241, 39.052341, 23.090004>,  <39.138176, 39.173832, 23.759619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734241, 39.052341, 23.090004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.653893, 38.798241, 22.791716>,  <38.605682, 38.645779, 22.612743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.653893, 38.798241, 22.791716>,  <38.734241, 39.052341, 23.090004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653893, 38.798241, 22.791716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381966, -0.650195, 0.656771,
		-0.902082, 0.416768, -0.112040,
		-0.200873, -0.635256, -0.745721,
		38.593632, 38.607662, 22.567999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983646, 38.892693, 23.250835>,  <38.734241, 39.052341, 23.090004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983646, 38.892693, 23.250835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.201492, 38.623550, 23.050571>,  <38.332199, 38.462063, 22.930414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.201492, 38.623550, 23.050571>,  <37.983646, 38.892693, 23.250835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201492, 38.623550, 23.050571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245337, -0.698655, 0.672080,
		-0.802004, -0.243190, -0.545571,
		0.544609, -0.672860, -0.500661,
		38.364876, 38.421692, 22.900373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566849, 38.377831, 23.331461>,  <37.983646, 38.892693, 23.250835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566849, 38.377831, 23.331461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.894405, 38.186317, 23.204857>,  <38.090939, 38.071411, 23.128895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.894405, 38.186317, 23.204857>,  <37.566849, 38.377831, 23.331461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894405, 38.186317, 23.204857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156384, -0.716733, 0.679587,
		-0.552226, -0.507013, -0.661803,
		0.818895, -0.478781, -0.316510,
		38.140076, 38.042683, 23.109903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215519, 37.689114, 23.114201>,  <37.566849, 38.377831, 23.331461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215519, 37.689114, 23.114201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.608685, 37.626133, 23.152334>,  <37.844585, 37.588345, 23.175215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.608685, 37.626133, 23.152334>,  <37.215519, 37.689114, 23.114201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608685, 37.626133, 23.152334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178094, -0.682661, 0.708701,
		-0.046508, -0.713570, -0.699038,
		0.982914, -0.157455, 0.095334,
		37.903557, 37.578896, 23.180935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334869, 36.944416, 23.151840>,  <37.215519, 37.689114, 23.114201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334869, 36.944416, 23.151840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.660324, 37.105019, 23.320026>,  <37.855598, 37.201378, 23.420938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.660324, 37.105019, 23.320026>,  <37.334869, 36.944416, 23.151840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660324, 37.105019, 23.320026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007946, -0.730841, 0.682501,
		0.581321, -0.551967, -0.597829,
		0.813636, 0.401502, 0.420467,
		37.904415, 37.225468, 23.446167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814861, 36.441471, 23.263027>,  <37.334869, 36.944416, 23.151840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814861, 36.441471, 23.263027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.954933, 36.729382, 23.502790>,  <38.038975, 36.902130, 23.646648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.954933, 36.729382, 23.502790>,  <37.814861, 36.441471, 23.263027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954933, 36.729382, 23.502790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137068, -0.672417, 0.727370,
		0.926600, -0.172550, -0.334125,
		0.350179, 0.719779, 0.599411,
		38.059986, 36.945316, 23.682613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346062, 36.195362, 23.571480>,  <37.814861, 36.441471, 23.263027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346062, 36.195362, 23.571480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.217777, 36.479191, 23.822449>,  <38.140808, 36.649487, 23.973030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.217777, 36.479191, 23.822449>,  <38.346062, 36.195362, 23.571480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217777, 36.479191, 23.822449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044021, -0.672865, 0.738455,
		0.946155, 0.209207, 0.247028,
		-0.320706, 0.709567, 0.627425,
		38.121567, 36.692062, 24.010675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760330, 36.140179, 24.181627>,  <38.346062, 36.195362, 23.571480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760330, 36.140179, 24.181627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.445408, 36.338997, 24.327553>,  <38.256454, 36.458286, 24.415108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.445408, 36.338997, 24.327553>,  <38.760330, 36.140179, 24.181627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445408, 36.338997, 24.327553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011908, -0.603843, 0.797014,
		0.616443, 0.623153, 0.481330,
		-0.787309, 0.497046, 0.364814,
		38.209213, 36.488110, 24.436996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872791, 36.225361, 25.000700>,  <38.760330, 36.140179, 24.181627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872791, 36.225361, 25.000700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.484291, 36.281750, 24.923971>,  <38.251190, 36.315582, 24.877934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.484291, 36.281750, 24.923971>,  <38.872791, 36.225361, 25.000700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484291, 36.281750, 24.923971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236926, -0.650805, 0.721332,
		-0.023149, 0.746043, 0.665496,
		-0.971252, 0.140975, -0.191823,
		38.192917, 36.324043, 24.866425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517357, 36.695045, 25.537580>,  <38.872791, 36.225361, 25.000700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517357, 36.695045, 25.537580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.248493, 36.453835, 25.365744>,  <38.087173, 36.309109, 25.262642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.248493, 36.453835, 25.365744>,  <38.517357, 36.695045, 25.537580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248493, 36.453835, 25.365744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283034, -0.326872, 0.901691,
		-0.684169, 0.727673, 0.049033,
		-0.672164, -0.603031, -0.429592,
		38.046844, 36.272926, 25.236866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182079, 36.631065, 26.069580>,  <38.517357, 36.695045, 25.537580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182079, 36.631065, 26.069580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.979359, 36.378002, 25.835348>,  <37.857727, 36.226166, 25.694809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.979359, 36.378002, 25.835348>,  <38.182079, 36.631065, 26.069580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979359, 36.378002, 25.835348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245015, -0.545552, 0.801462,
		-0.826513, 0.549655, 0.121475,
		-0.506798, -0.632655, -0.585579,
		37.827320, 36.188206, 25.659674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492405, 36.693996, 26.288937>,  <38.182079, 36.631065, 26.069580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492405, 36.693996, 26.288937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.557602, 36.330032, 26.136358>,  <37.596718, 36.111656, 26.044811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.557602, 36.330032, 26.136358>,  <37.492405, 36.693996, 26.288937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557602, 36.330032, 26.136358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322137, -0.414507, 0.851123,
		-0.932557, -0.015846, -0.360675,
		0.162990, -0.909908, -0.381447,
		37.606499, 36.057060, 26.021925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853764, 36.309074, 26.440300>,  <37.492405, 36.693996, 26.288937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853764, 36.309074, 26.440300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136978, 36.042866, 26.345846>,  <37.306908, 35.883141, 26.289173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136978, 36.042866, 26.345846>,  <36.853764, 36.309074, 26.440300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136978, 36.042866, 26.345846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249988, -0.548952, 0.797595,
		-0.660445, -0.505697, -0.555052,
		0.708038, -0.665524, -0.236135,
		37.349388, 35.843208, 26.275005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524075, 35.622581, 26.354975>,  <36.853764, 36.309074, 26.440300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524075, 35.622581, 26.354975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.914482, 35.584373, 26.433226>,  <37.148727, 35.561447, 26.480175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.914482, 35.584373, 26.433226>,  <36.524075, 35.622581, 26.354975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914482, 35.584373, 26.433226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217014, -0.498267, 0.839425,
		0.017289, -0.861745, -0.507047,
		0.976015, -0.095524, 0.195626,
		37.207287, 35.555717, 26.491913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152340, 35.020405, 26.052099>,  <36.524075, 35.622581, 26.354975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152340, 35.020405, 26.052099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.766083, 34.971485, 26.143814>,  <35.534328, 34.942135, 26.198843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.766083, 34.971485, 26.143814>,  <36.152340, 35.020405, 26.052099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766083, 34.971485, 26.143814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256412, 0.305105, -0.917150,
		0.042207, -0.944434, -0.325981,
		-0.965646, -0.122295, 0.229287,
		35.476391, 34.934795, 26.212601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820210, 34.591122, 25.456745>,  <36.152340, 35.020405, 26.052099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820210, 34.591122, 25.456745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.500988, 34.764347, 25.624350>,  <35.309456, 34.868282, 25.724913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.500988, 34.764347, 25.624350>,  <35.820210, 34.591122, 25.456745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500988, 34.764347, 25.624350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417144, 0.104768, -0.902782,
		-0.434863, -0.895252, 0.097041,
		-0.798051, 0.433067, 0.419009,
		35.261574, 34.894268, 25.750051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312668, 34.505753, 24.919956>,  <35.820210, 34.591122, 25.456745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312668, 34.505753, 24.919956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.153870, 34.783539, 25.159994>,  <35.058590, 34.950211, 25.304016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.153870, 34.783539, 25.159994>,  <35.312668, 34.505753, 24.919956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153870, 34.783539, 25.159994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468915, 0.408587, -0.783055,
		-0.788995, -0.592263, 0.163438,
		-0.396996, 0.694465, 0.600094,
		35.034771, 34.991879, 25.340023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552616, 34.550217, 24.729147>,  <35.312668, 34.505753, 24.919956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552616, 34.550217, 24.729147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.610134, 34.903294, 24.908113>,  <34.644646, 35.115139, 25.015493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.610134, 34.903294, 24.908113>,  <34.552616, 34.550217, 24.729147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610134, 34.903294, 24.908113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164569, 0.467148, -0.868729,
		-0.975828, 0.051286, 0.212436,
		0.143793, 0.882690, 0.447416,
		34.653271, 35.168102, 25.042337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922409, 35.087357, 24.676397>,  <34.552616, 34.550217, 24.729147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922409, 35.087357, 24.676397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.230419, 35.327976, 24.761429>,  <34.415226, 35.472347, 24.812449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.230419, 35.327976, 24.761429>,  <33.922409, 35.087357, 24.676397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230419, 35.327976, 24.761429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255106, 0.595700, -0.761618,
		-0.584786, 0.532238, 0.612166,
		0.770030, 0.601551, 0.212580,
		34.461430, 35.508442, 24.825203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591877, 35.711445, 24.532072>,  <33.922409, 35.087357, 24.676397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591877, 35.711445, 24.532072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.988842, 35.759472, 24.521429>,  <34.227020, 35.788288, 24.515043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.988842, 35.759472, 24.521429>,  <33.591877, 35.711445, 24.532072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988842, 35.759472, 24.521429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098926, 0.650821, -0.752759,
		-0.073067, 0.749677, 0.657758,
		0.992409, 0.120072, -0.026609,
		34.286564, 35.795494, 24.513447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764297, 36.430733, 24.603867>,  <33.591877, 35.711445, 24.532072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764297, 36.430733, 24.603867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057777, 36.244862, 24.405567>,  <34.233864, 36.133339, 24.286587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057777, 36.244862, 24.405567>,  <33.764297, 36.430733, 24.603867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057777, 36.244862, 24.405567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153876, 0.597021, -0.787330,
		0.661825, 0.653945, 0.366530,
		0.733696, -0.464674, -0.495749,
		34.277885, 36.105461, 24.256842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024483, 37.246628, 24.747965>,  <33.764297, 36.430733, 24.603867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024483, 37.246628, 24.747965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.682354, 37.453842, 24.744856>,  <33.477077, 37.578171, 24.742990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.682354, 37.453842, 24.744856>,  <34.024483, 37.246628, 24.747965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682354, 37.453842, 24.744856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326008, -0.526484, 0.785196,
		0.402667, 0.674132, 0.619198,
		-0.855324, 0.518036, -0.007774,
		33.425758, 37.609253, 24.742523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974747, 37.438011, 25.408072>,  <34.024483, 37.246628, 24.747965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974747, 37.438011, 25.408072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.620911, 37.425667, 25.221930>,  <33.408611, 37.418262, 25.110245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.620911, 37.425667, 25.221930>,  <33.974747, 37.438011, 25.408072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620911, 37.425667, 25.221930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363406, -0.579785, 0.729236,
		-0.292309, 0.814185, 0.501656,
		-0.884586, -0.030857, -0.465356,
		33.355534, 37.416409, 25.082323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565838, 37.603657, 25.819977>,  <33.974747, 37.438011, 25.408072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565838, 37.603657, 25.819977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.308174, 37.410500, 25.582701>,  <33.153576, 37.294605, 25.440334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.308174, 37.410500, 25.582701>,  <33.565838, 37.603657, 25.819977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308174, 37.410500, 25.582701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398962, -0.449554, 0.799206,
		-0.652605, 0.751473, 0.096925,
		-0.644155, -0.482896, -0.593191,
		33.114929, 37.265629, 25.404743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018730, 37.641254, 26.183754>,  <33.565838, 37.603657, 25.819977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018730, 37.641254, 26.183754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.951752, 37.347618, 25.920521>,  <32.911564, 37.171436, 25.762581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.951752, 37.347618, 25.920521>,  <33.018730, 37.641254, 26.183754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951752, 37.347618, 25.920521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347657, -0.580659, 0.736187,
		-0.922550, 0.352055, -0.157986,
		-0.167443, -0.734093, -0.658081,
		32.901520, 37.127392, 25.723097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345436, 37.285786, 26.456278>,  <33.018730, 37.641254, 26.183754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345436, 37.285786, 26.456278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.475628, 37.011654, 26.195698>,  <32.553745, 36.847176, 26.039351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.475628, 37.011654, 26.195698>,  <32.345436, 37.285786, 26.456278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475628, 37.011654, 26.195698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387765, -0.725111, 0.569080,
		-0.862380, 0.067384, -0.501757,
		0.325483, -0.685327, -0.651450,
		32.573273, 36.806057, 26.000263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772449, 36.854214, 26.325964>,  <32.345436, 37.285786, 26.456278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772449, 36.854214, 26.325964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.081852, 36.616291, 26.238424>,  <32.267494, 36.473537, 26.185900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.081852, 36.616291, 26.238424>,  <31.772449, 36.854214, 26.325964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081852, 36.616291, 26.238424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422312, -0.741186, 0.521820,
		-0.472589, -0.311208, -0.824505,
		0.773506, -0.594805, -0.218850,
		32.313904, 36.437851, 26.172770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399099, 36.320213, 26.382826>,  <31.772449, 36.854214, 26.325964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399099, 36.320213, 26.382826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.792820, 36.249702, 26.379313>,  <32.029053, 36.207394, 26.377205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.792820, 36.249702, 26.379313>,  <31.399099, 36.320213, 26.382826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792820, 36.249702, 26.379313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085411, -0.519284, 0.850323,
		-0.154457, -0.836223, -0.526188,
		0.984301, -0.176280, -0.008784,
		32.088112, 36.196819, 26.376677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.610653, 41.431744, 25.040848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.972374, 41.260998, 25.038719>,  <37.189407, 41.158550, 25.037443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.972374, 41.260998, 25.038719>,  <36.610653, 41.431744, 25.040848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972374, 41.260998, 25.038719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146679, -0.322394, 0.935172,
		-0.400907, -0.844896, -0.354153,
		0.904300, -0.426864, -0.005322,
		37.243664, 41.132938, 25.037123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510838, 40.697041, 25.294687>,  <36.610653, 41.431744, 25.040848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510838, 40.697041, 25.294687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.885513, 40.820869, 25.360140>,  <37.110317, 40.895168, 25.399412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.885513, 40.820869, 25.360140>,  <36.510838, 40.697041, 25.294687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885513, 40.820869, 25.360140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042271, -0.363917, 0.930472,
		0.347602, -0.878479, -0.327791,
		0.936689, 0.309577, 0.163632,
		37.166519, 40.913742, 25.409229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962395, 40.123615, 25.557928>,  <36.510838, 40.697041, 25.294687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962395, 40.123615, 25.557928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.099442, 40.473812, 25.694235>,  <37.181667, 40.683929, 25.776020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.099442, 40.473812, 25.694235>,  <36.962395, 40.123615, 25.557928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099442, 40.473812, 25.694235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133856, -0.313531, 0.940096,
		0.929892, -0.367703, 0.009771,
		0.342613, 0.875496, 0.340769,
		37.202225, 40.736462, 25.796465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430344, 39.982903, 25.980171>,  <36.962395, 40.123615, 25.557928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430344, 39.982903, 25.980171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.353596, 40.356995, 26.099188>,  <37.307545, 40.581451, 26.170597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.353596, 40.356995, 26.099188>,  <37.430344, 39.982903, 25.980171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353596, 40.356995, 26.099188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195420, -0.333509, 0.922270,
		0.961767, 0.118815, 0.246754,
		-0.191874, 0.935230, 0.297539,
		37.296032, 40.637562, 26.188450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461918, 39.940205, 26.658754>,  <37.430344, 39.982903, 25.980171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461918, 39.940205, 26.658754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.297413, 40.302174, 26.614985>,  <37.198711, 40.519356, 26.588722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.297413, 40.302174, 26.614985>,  <37.461918, 39.940205, 26.658754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297413, 40.302174, 26.614985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252619, 0.002191, 0.967563,
		0.875814, 0.425561, 0.227700,
		-0.411258, 0.904927, -0.109424,
		37.174034, 40.573650, 26.582157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649529, 40.387959, 27.242910>,  <37.461918, 39.940205, 26.658754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649529, 40.387959, 27.242910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.321468, 40.557636, 27.089331>,  <37.124634, 40.659443, 26.997183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.321468, 40.557636, 27.089331>,  <37.649529, 40.387959, 27.242910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321468, 40.557636, 27.089331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422941, 0.002456, 0.906154,
		0.385326, 0.905569, 0.177395,
		-0.820149, 0.424192, -0.383949,
		37.075424, 40.684895, 26.974146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372627, 40.856022, 27.777882>,  <37.649529, 40.387959, 27.242910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372627, 40.856022, 27.777882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.061188, 40.807396, 27.531626>,  <36.874325, 40.778221, 27.383873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.061188, 40.807396, 27.531626>,  <37.372627, 40.856022, 27.777882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061188, 40.807396, 27.531626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626678, 0.099578, 0.772890,
		-0.032654, 0.987576, -0.153715,
		-0.778594, -0.121567, -0.615640,
		36.827610, 40.770927, 27.346933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940224, 41.537037, 27.789827>,  <37.372627, 40.856022, 27.777882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940224, 41.537037, 27.789827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.727516, 41.212299, 27.693377>,  <36.599892, 41.017456, 27.635506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.727516, 41.212299, 27.693377>,  <36.940224, 41.537037, 27.789827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727516, 41.212299, 27.693377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517965, 0.086512, 0.851016,
		-0.670029, 0.577435, -0.466509,
		-0.531765, -0.811840, -0.241125,
		36.567986, 40.968746, 27.621038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203934, 41.738697, 27.869799>,  <36.940224, 41.537037, 27.789827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203934, 41.738697, 27.869799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.235794, 41.339970, 27.870584>,  <36.254910, 41.100731, 27.871056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.235794, 41.339970, 27.870584>,  <36.203934, 41.738697, 27.869799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235794, 41.339970, 27.870584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538845, -0.041398, 0.841387,
		-0.838631, -0.068074, -0.540429,
		0.079649, -0.996821, 0.001964,
		36.259689, 41.040924, 27.871174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617867, 41.554493, 28.245489>,  <36.203934, 41.738697, 27.869799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617867, 41.554493, 28.245489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.872623, 41.246120, 28.247902>,  <36.025478, 41.061096, 28.249350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.872623, 41.246120, 28.247902>,  <35.617867, 41.554493, 28.245489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872623, 41.246120, 28.247902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232304, -0.184440, 0.954996,
		-0.735124, -0.609628, -0.296558,
		0.636889, -0.770932, 0.006033,
		36.063690, 41.014839, 28.249712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213242, 41.034565, 28.646482>,  <35.617867, 41.554493, 28.245489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213242, 41.034565, 28.646482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.589859, 40.900467, 28.659800>,  <35.815830, 40.820007, 28.667789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.589859, 40.900467, 28.659800>,  <35.213242, 41.034565, 28.646482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589859, 40.900467, 28.659800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117269, -0.233488, 0.965262,
		-0.315826, -0.912740, -0.259153,
		0.941543, -0.335245, 0.033294,
		35.872322, 40.799892, 28.669788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191795, 40.349754, 28.819670>,  <35.213242, 41.034565, 28.646482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191795, 40.349754, 28.819670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.538811, 40.497528, 28.952877>,  <35.747021, 40.586193, 29.032801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.538811, 40.497528, 28.952877>,  <35.191795, 40.349754, 28.819670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538811, 40.497528, 28.952877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255237, -0.243995, 0.935586,
		0.426894, -0.896651, -0.117380,
		0.867535, 0.369436, 0.333018,
		35.799072, 40.608360, 29.052782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860947, 40.040279, 28.306517>,  <35.191795, 40.349754, 28.819670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860947, 40.040279, 28.306517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.469433, 39.961765, 28.283037>,  <34.234524, 39.914658, 28.268950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.469433, 39.961765, 28.283037>,  <34.860947, 40.040279, 28.306517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469433, 39.961765, 28.283037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009768, 0.241476, -0.970357,
		0.204629, -0.950350, -0.234437,
		-0.978791, -0.196273, -0.058696,
		34.175797, 39.902882, 28.265429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755474, 39.462772, 27.753122>,  <34.860947, 40.040279, 28.306517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755474, 39.462772, 27.753122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.411552, 39.661945, 27.798370>,  <34.205200, 39.781448, 27.825520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.411552, 39.661945, 27.798370>,  <34.755474, 39.462772, 27.753122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411552, 39.661945, 27.798370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083561, 0.355753, -0.930837,
		-0.503739, -0.790886, -0.347486,
		-0.859805, 0.497935, 0.113119,
		34.153610, 39.811325, 27.832306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287426, 39.269760, 27.086536>,  <34.755474, 39.462772, 27.753122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287426, 39.269760, 27.086536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.152382, 39.612415, 27.242579>,  <34.071354, 39.818008, 27.336205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.152382, 39.612415, 27.242579>,  <34.287426, 39.269760, 27.086536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152382, 39.612415, 27.242579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065245, 0.434740, -0.898189,
		-0.939021, -0.277787, -0.202666,
		-0.337612, 0.856642, 0.390106,
		34.051098, 39.869408, 27.359610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629189, 39.497288, 26.739017>,  <34.287426, 39.269760, 27.086536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629189, 39.497288, 26.739017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.744057, 39.843487, 26.903189>,  <33.812977, 40.051205, 27.001692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.744057, 39.843487, 26.903189>,  <33.629189, 39.497288, 26.739017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744057, 39.843487, 26.903189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139774, 0.461751, -0.875927,
		-0.947626, 0.194175, 0.253575,
		0.287172, 0.865495, 0.410427,
		33.830208, 40.103134, 27.026318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105267, 39.956520, 26.479828>,  <33.629189, 39.497288, 26.739017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105267, 39.956520, 26.479828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.430298, 40.171398, 26.570286>,  <33.625317, 40.300323, 26.624561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.430298, 40.171398, 26.570286>,  <33.105267, 39.956520, 26.479828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430298, 40.171398, 26.570286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080219, 0.487379, -0.869498,
		-0.577310, 0.688391, 0.439125,
		0.812575, 0.537197, 0.226146,
		33.674068, 40.332558, 26.638130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972618, 40.617992, 26.240557>,  <33.105267, 39.956520, 26.479828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972618, 40.617992, 26.240557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.369263, 40.651150, 26.280212>,  <33.607250, 40.671043, 26.304007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.369263, 40.651150, 26.280212>,  <32.972618, 40.617992, 26.240557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369263, 40.651150, 26.280212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032895, 0.579982, -0.813965,
		-0.124976, 0.810401, 0.572391,
		0.991614, 0.082897, 0.099142,
		33.666748, 40.676018, 26.309956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164806, 41.381523, 26.122206>,  <32.972618, 40.617992, 26.240557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164806, 41.381523, 26.122206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.501617, 41.168663, 26.086872>,  <33.703705, 41.040947, 26.065672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.501617, 41.168663, 26.086872>,  <33.164806, 41.381523, 26.122206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501617, 41.168663, 26.086872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253075, 0.534326, -0.806504,
		0.476377, 0.656747, 0.584592,
		0.842032, -0.532146, -0.088334,
		33.754227, 41.009018, 26.060371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648945, 41.911091, 26.026360>,  <33.164806, 41.381523, 26.122206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648945, 41.911091, 26.026360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.821747, 41.579021, 25.885401>,  <33.925426, 41.379780, 25.800825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.821747, 41.579021, 25.885401>,  <33.648945, 41.911091, 26.026360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821747, 41.579021, 25.885401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224148, 0.477312, -0.849665,
		0.873575, 0.288067, 0.392281,
		0.432001, -0.830175, -0.352398,
		33.951347, 41.329967, 25.779682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154160, 42.121731, 25.623693>,  <33.648945, 41.911091, 26.026360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154160, 42.121731, 25.623693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.129578, 41.748772, 25.481222>,  <34.114830, 41.524998, 25.395741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.129578, 41.748772, 25.481222>,  <34.154160, 42.121731, 25.623693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129578, 41.748772, 25.481222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193068, 0.339006, -0.920760,
		0.979259, -0.125351, 0.159182,
		-0.061455, -0.932396, -0.356176,
		34.111141, 41.469051, 25.374369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796028, 41.966724, 25.325844>,  <34.154160, 42.121731, 25.623693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796028, 41.966724, 25.325844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.510387, 41.741909, 25.158911>,  <34.339001, 41.607021, 25.058750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.510387, 41.741909, 25.158911>,  <34.796028, 41.966724, 25.325844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510387, 41.741909, 25.158911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289386, 0.305830, -0.907041,
		0.637425, -0.768492, -0.055749,
		-0.714104, -0.562038, -0.417335,
		34.296158, 41.573299, 25.033710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084732, 41.813202, 24.710346>,  <34.796028, 41.966724, 25.325844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084732, 41.813202, 24.710346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.707848, 41.705433, 24.630705>,  <34.481716, 41.640770, 24.582920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.707848, 41.705433, 24.630705>,  <35.084732, 41.813202, 24.710346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707848, 41.705433, 24.630705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111008, 0.309655, -0.944347,
		0.316106, -0.911873, -0.261848,
		-0.942207, -0.269447, -0.199109,
		34.425182, 41.624607, 24.570974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037521, 41.480762, 24.053530>,  <35.084732, 41.813202, 24.710346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037521, 41.480762, 24.053530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.671520, 41.635273, 24.100119>,  <34.451920, 41.727978, 24.128071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.671520, 41.635273, 24.100119>,  <35.037521, 41.480762, 24.053530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671520, 41.635273, 24.100119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038928, 0.202811, -0.978444,
		-0.401573, -0.899809, -0.170535,
		-0.914999, 0.386278, 0.116471,
		34.397022, 41.751156, 24.135059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618263, 41.281132, 23.504690>,  <35.037521, 41.480762, 24.053530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618263, 41.281132, 23.504690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.436054, 41.608238, 23.645409>,  <34.326729, 41.804501, 23.729839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.436054, 41.608238, 23.645409>,  <34.618263, 41.281132, 23.504690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436054, 41.608238, 23.645409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034594, 0.378619, -0.924906,
		-0.889551, -0.433486, -0.144180,
		-0.455523, 0.817764, 0.351797,
		34.299397, 41.853569, 23.750948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025837, 40.633575, 23.665422>,  <34.618263, 41.281132, 23.504690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025837, 40.633575, 23.665422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.838741, 40.456524, 23.359404>,  <34.726482, 40.350292, 23.175793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.838741, 40.456524, 23.359404>,  <35.025837, 40.633575, 23.665422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838741, 40.456524, 23.359404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416424, -0.653123, 0.632473,
		-0.779623, 0.614416, 0.121169,
		-0.467739, -0.442632, -0.765047,
		34.698418, 40.323734, 23.129890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259071, 40.476418, 23.839275>,  <35.025837, 40.633575, 23.665422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259071, 40.476418, 23.839275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.372787, 40.202145, 23.571241>,  <34.441017, 40.037579, 23.410421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.372787, 40.202145, 23.571241>,  <34.259071, 40.476418, 23.839275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372787, 40.202145, 23.571241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552323, -0.688422, 0.470122,
		-0.783657, 0.236452, -0.574431,
		0.284290, -0.685686, -0.670085,
		34.458073, 39.996437, 23.370216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637856, 40.193249, 23.798815>,  <34.259071, 40.476418, 23.839275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637856, 40.193249, 23.798815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.888165, 39.937561, 23.620012>,  <34.038349, 39.784149, 23.512730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.888165, 39.937561, 23.620012>,  <33.637856, 40.193249, 23.798815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888165, 39.937561, 23.620012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540462, -0.768541, 0.342411,
		-0.562418, 0.027320, -0.826402,
		0.625770, -0.639217, -0.447007,
		34.075893, 39.745796, 23.485910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239441, 39.763222, 23.385342>,  <33.637856, 40.193249, 23.798815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239441, 39.763222, 23.385342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.577305, 39.585041, 23.504082>,  <33.780022, 39.478134, 23.575325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.577305, 39.585041, 23.504082>,  <33.239441, 39.763222, 23.385342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577305, 39.585041, 23.504082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521913, -0.808561, 0.271729,
		0.118979, -0.384449, -0.915447,
		0.844660, -0.445453, 0.296851,
		33.830704, 39.451405, 23.593138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200916, 39.102654, 23.127472>,  <33.239441, 39.763222, 23.385342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200916, 39.102654, 23.127472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.469166, 39.053730, 23.420130>,  <33.630116, 39.024376, 23.595724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.469166, 39.053730, 23.420130>,  <33.200916, 39.102654, 23.127472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469166, 39.053730, 23.420130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504658, -0.798110, 0.329152,
		0.543673, -0.589967, -0.596958,
		0.670626, -0.122308, 0.731642,
		33.670353, 39.017036, 23.639622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216873, 38.346966, 23.174528>,  <33.200916, 39.102654, 23.127472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216873, 38.346966, 23.174528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.428085, 38.427021, 23.504650>,  <33.554813, 38.475052, 23.702723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.428085, 38.427021, 23.504650>,  <33.216873, 38.346966, 23.174528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428085, 38.427021, 23.504650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340310, -0.840522, 0.421560,
		0.778054, -0.503457, -0.375716,
		0.528034, 0.200136, 0.825303,
		33.586494, 38.487061, 23.752241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466930, 37.699329, 23.430891>,  <33.216873, 38.346966, 23.174528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466930, 37.699329, 23.430891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.478428, 37.940414, 23.749866>,  <33.485325, 38.085064, 23.941252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.478428, 37.940414, 23.749866>,  <33.466930, 37.699329, 23.430891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478428, 37.940414, 23.749866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380508, -0.731111, 0.566296,
		0.924331, -0.319708, 0.208325,
		0.028741, 0.602714, 0.797440,
		33.487049, 38.121227, 23.989098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912403, 37.459839, 23.949078>,  <33.466930, 37.699329, 23.430891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912403, 37.459839, 23.949078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.641266, 37.669514, 24.155283>,  <33.478584, 37.795319, 24.279007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.641266, 37.669514, 24.155283>,  <33.912403, 37.459839, 23.949078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641266, 37.669514, 24.155283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188625, -0.801704, 0.567178,
		0.710598, 0.287219, 0.642305,
		-0.677843, 0.524190, 0.515513,
		33.437912, 37.826771, 24.309937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683159, 37.231216, 24.285454>,  <33.912403, 37.459839, 23.949078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683159, 37.231216, 24.285454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.728848, 36.879765, 24.099998>,  <34.756260, 36.668892, 23.988726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.728848, 36.879765, 24.099998>,  <34.683159, 37.231216, 24.285454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728848, 36.879765, 24.099998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167822, 0.477050, -0.862704,
		0.979178, 0.020731, 0.201943,
		0.114222, -0.878631, -0.463638,
		34.763115, 36.616177, 23.960907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156502, 37.359531, 23.801306>,  <34.683159, 37.231216, 24.285454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156502, 37.359531, 23.801306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.967304, 37.033089, 23.668497>,  <34.853786, 36.837223, 23.588812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.967304, 37.033089, 23.668497>,  <35.156502, 37.359531, 23.801306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967304, 37.033089, 23.668497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256175, 0.233174, -0.938085,
		0.842999, -0.528769, 0.098776,
		-0.472998, -0.816109, -0.332023,
		34.825405, 36.788258, 23.568890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711922, 36.953453, 23.469501>,  <35.156502, 37.359531, 23.801306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711922, 36.953453, 23.469501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.353302, 36.868240, 23.314157>,  <35.138130, 36.817112, 23.220951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.353302, 36.868240, 23.314157>,  <35.711922, 36.953453, 23.469501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353302, 36.868240, 23.314157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387004, 0.049798, -0.920732,
		0.215482, -0.975776, 0.037797,
		-0.896546, -0.213028, -0.388360,
		35.084339, 36.804333, 23.197649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842010, 36.557823, 22.934156>,  <35.711922, 36.953453, 23.469501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842010, 36.557823, 22.934156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.481445, 36.694641, 22.827978>,  <35.265106, 36.776733, 22.764271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.481445, 36.694641, 22.827978>,  <35.842010, 36.557823, 22.934156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481445, 36.694641, 22.827978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267584, -0.041875, -0.962624,
		-0.340376, -0.938750, -0.053779,
		-0.901412, 0.342044, -0.265448,
		35.211021, 36.797253, 22.748344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584061, 36.207451, 22.256178>,  <35.842010, 36.557823, 22.934156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584061, 36.207451, 22.256178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.371819, 36.545738, 22.278862>,  <35.244473, 36.748711, 22.292473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.371819, 36.545738, 22.278862>,  <35.584061, 36.207451, 22.256178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371819, 36.545738, 22.278862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173220, 0.173684, -0.969448,
		-0.829731, -0.504571, -0.238653,
		-0.530605, 0.845720, 0.056709,
		35.212639, 36.799454, 22.295876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128990, 36.154968, 21.608330>,  <35.584061, 36.207451, 22.256178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128990, 36.154968, 21.608330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.127529, 36.536976, 21.726940>,  <35.126652, 36.766182, 21.798107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.127529, 36.536976, 21.726940>,  <35.128990, 36.154968, 21.608330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127529, 36.536976, 21.726940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128918, 0.294503, -0.946915,
		-0.991648, 0.034767, -0.124196,
		-0.003655, 0.955018, 0.296526,
		35.126434, 36.823483, 21.815897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763515, 36.408443, 21.050121>,  <35.128990, 36.154968, 21.608330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763515, 36.408443, 21.050121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.880913, 36.750122, 21.221798>,  <34.951351, 36.955132, 21.324804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.880913, 36.750122, 21.221798>,  <34.763515, 36.408443, 21.050121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880913, 36.750122, 21.221798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279670, 0.352597, -0.893006,
		-0.914137, 0.382122, -0.135410,
		0.293492, 0.854200, 0.429190,
		34.968960, 37.006382, 21.350555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477280, 36.881454, 20.647713>,  <34.763515, 36.408443, 21.050121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477280, 36.881454, 20.647713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.776188, 37.066486, 20.838541>,  <34.955532, 37.177505, 20.953037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.776188, 37.066486, 20.838541>,  <34.477280, 36.881454, 20.647713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776188, 37.066486, 20.838541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410561, 0.243115, -0.878826,
		-0.522513, 0.852591, -0.008244,
		0.747275, 0.462583, 0.477071,
		35.000370, 37.205261, 20.981663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529465, 37.487099, 20.261290>,  <34.477280, 36.881454, 20.647713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529465, 37.487099, 20.261290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.877949, 37.424114, 20.447277>,  <35.087040, 37.386326, 20.558870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.877949, 37.424114, 20.447277>,  <34.529465, 37.487099, 20.261290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877949, 37.424114, 20.447277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490898, 0.273247, -0.827257,
		0.003207, 0.948969, 0.315353,
		0.871211, -0.157459, 0.464971,
		35.139313, 37.376877, 20.586769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.355476, 32.345497, 36.102818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.656158, 32.602760, 36.161163>,  <34.836567, 32.757118, 36.196171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.656158, 32.602760, 36.161163>,  <34.355476, 32.345497, 36.102818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656158, 32.602760, 36.161163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138191, 0.369885, -0.918743,
		-0.644854, 0.670470, 0.366925,
		0.751709, 0.643161, 0.145869,
		34.881672, 32.795708, 36.204926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033611, 33.059456, 36.005722>,  <34.355476, 32.345497, 36.102818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033611, 33.059456, 36.005722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.420734, 33.036301, 35.907749>,  <34.653008, 33.022408, 35.848965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.420734, 33.036301, 35.907749>,  <34.033611, 33.059456, 36.005722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420734, 33.036301, 35.907749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216628, 0.303791, -0.927784,
		0.128118, 0.950978, 0.281471,
		0.967811, -0.057892, -0.244930,
		34.711079, 33.018932, 35.834270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127068, 33.670925, 35.633617>,  <34.033611, 33.059456, 36.005722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127068, 33.670925, 35.633617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410336, 33.410301, 35.524826>,  <34.580296, 33.253929, 35.459553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410336, 33.410301, 35.524826>,  <34.127068, 33.670925, 35.633617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410336, 33.410301, 35.524826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200833, 0.183405, -0.962304,
		0.676878, 0.736094, -0.000973,
		0.708168, -0.651558, -0.271975,
		34.622787, 33.214832, 35.443233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494621, 34.000671, 35.103638>,  <34.127068, 33.670925, 35.633617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494621, 34.000671, 35.103638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583790, 33.613228, 35.059639>,  <34.637291, 33.380760, 35.033237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583790, 33.613228, 35.059639>,  <34.494621, 34.000671, 35.103638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583790, 33.613228, 35.059639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191249, 0.067191, -0.979239,
		0.955893, 0.239329, -0.170268,
		0.222920, -0.968611, -0.109999,
		34.650665, 33.322643, 35.026638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965816, 33.948963, 34.609890>,  <34.494621, 34.000671, 35.103638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965816, 33.948963, 34.609890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.809109, 33.580971, 34.614738>,  <34.715084, 33.360176, 34.617649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.809109, 33.580971, 34.614738>,  <34.965816, 33.948963, 34.609890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809109, 33.580971, 34.614738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128505, -0.067758, -0.989392,
		0.911046, -0.386053, 0.144768,
		-0.391767, -0.919985, 0.012121,
		34.691578, 33.304974, 34.618374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450382, 33.521114, 34.194248>,  <34.965816, 33.948963, 34.609890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450382, 33.521114, 34.194248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089893, 33.347820, 34.190277>,  <34.873600, 33.243843, 34.187893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089893, 33.347820, 34.190277>,  <35.450382, 33.521114, 34.194248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089893, 33.347820, 34.190277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128580, -0.245457, -0.960842,
		0.413833, -0.867213, 0.276918,
		-0.901227, -0.433235, -0.009928,
		34.819527, 33.217850, 34.187298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557716, 33.116623, 33.684528>,  <35.450382, 33.521114, 34.194248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557716, 33.116623, 33.684528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.165596, 33.072800, 33.750259>,  <34.930325, 33.046505, 33.789700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.165596, 33.072800, 33.750259>,  <35.557716, 33.116623, 33.684528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165596, 33.072800, 33.750259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146347, -0.155769, -0.976892,
		0.132624, -0.981699, 0.136668,
		-0.980303, -0.109559, 0.164328,
		34.871506, 33.039932, 33.799557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330997, 32.570461, 33.317776>,  <35.557716, 33.116623, 33.684528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330997, 32.570461, 33.317776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992702, 32.777740, 33.368690>,  <34.789726, 32.902107, 33.399239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992702, 32.777740, 33.368690>,  <35.330997, 32.570461, 33.317776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992702, 32.777740, 33.368690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171445, -0.037995, -0.984461,
		-0.505312, -0.854415, 0.120977,
		-0.845734, 0.518201, 0.127286,
		34.738983, 32.933201, 33.406876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802933, 32.163055, 33.046154>,  <35.330997, 32.570461, 33.317776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802933, 32.163055, 33.046154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.690441, 32.546413, 33.026573>,  <34.622944, 32.776428, 33.014824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.690441, 32.546413, 33.026573>,  <34.802933, 32.163055, 33.046154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690441, 32.546413, 33.026573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219827, -0.113991, -0.968856,
		-0.934123, -0.261712, 0.242738,
		-0.281231, 0.958391, -0.048950,
		34.606071, 32.833931, 33.011887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300667, 32.059437, 32.495152>,  <34.802933, 32.163055, 33.046154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300667, 32.059437, 32.495152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.330566, 32.453102, 32.559437>,  <34.348507, 32.689301, 32.598007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.330566, 32.453102, 32.559437>,  <34.300667, 32.059437, 32.495152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330566, 32.453102, 32.559437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237736, 0.174107, -0.955599,
		-0.968449, 0.033227, 0.246987,
		0.074753, 0.984166, 0.160714,
		34.352993, 32.748352, 32.607651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629986, 32.369114, 32.318020>,  <34.300667, 32.059437, 32.495152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629986, 32.369114, 32.318020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.912807, 32.650795, 32.292183>,  <34.082500, 32.819801, 32.276680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.912807, 32.650795, 32.292183>,  <33.629986, 32.369114, 32.318020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912807, 32.650795, 32.292183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313533, 0.230301, -0.921227,
		-0.633852, 0.671613, 0.383626,
		0.707057, 0.704200, -0.064596,
		34.124924, 32.862057, 32.272804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321671, 32.813332, 31.860737>,  <33.629986, 32.369114, 32.318020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321671, 32.813332, 31.860737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.712536, 32.897240, 31.847214>,  <33.947056, 32.947582, 31.839100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.712536, 32.897240, 31.847214>,  <33.321671, 32.813332, 31.860737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712536, 32.897240, 31.847214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088587, 0.257603, -0.962181,
		-0.193124, 0.943207, 0.270304,
		0.977167, 0.209766, -0.033806,
		34.005688, 32.960171, 31.837072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841366, 33.344547, 31.951010>,  <33.321671, 32.813332, 31.860737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841366, 33.344547, 31.951010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.496536, 33.534931, 31.881401>,  <32.289639, 33.649162, 31.839636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.496536, 33.534931, 31.881401>,  <32.841366, 33.344547, 31.951010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496536, 33.534931, 31.881401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306569, -0.216361, 0.926932,
		0.403533, 0.852436, 0.332435,
		-0.862077, 0.475963, -0.174022,
		32.237915, 33.677719, 31.829195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731796, 33.880722, 32.473736>,  <32.841366, 33.344547, 31.951010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731796, 33.880722, 32.473736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.374569, 33.780170, 32.324482>,  <32.160233, 33.719837, 32.234928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.374569, 33.780170, 32.324482>,  <32.731796, 33.880722, 32.473736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374569, 33.780170, 32.324482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252828, -0.405611, 0.878384,
		-0.372159, 0.878798, 0.298683,
		-0.893071, -0.251383, -0.373136,
		32.106647, 33.704754, 32.212540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324577, 34.064552, 33.020058>,  <32.731796, 33.880722, 32.473736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324577, 34.064552, 33.020058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.058552, 33.848293, 32.813995>,  <31.898935, 33.718540, 32.690357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.058552, 33.848293, 32.813995>,  <32.324577, 34.064552, 33.020058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058552, 33.848293, 32.813995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419938, -0.299685, 0.856646,
		-0.617525, 0.786063, -0.027726,
		-0.665068, -0.540643, -0.515160,
		31.859032, 33.686100, 32.659447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765341, 34.216385, 33.418007>,  <32.324577, 34.064552, 33.020058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765341, 34.216385, 33.418007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.681814, 33.887539, 33.206150>,  <31.631699, 33.690231, 33.079037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.681814, 33.887539, 33.206150>,  <31.765341, 34.216385, 33.418007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681814, 33.887539, 33.206150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361318, -0.438408, 0.822951,
		-0.908760, 0.363215, -0.205499,
		-0.208815, -0.822115, -0.529644,
		31.619169, 33.640903, 33.047256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093657, 34.227501, 33.484653>,  <31.765341, 34.216385, 33.418007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093657, 34.227501, 33.484653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.222204, 33.862373, 33.383869>,  <31.299334, 33.643295, 33.323399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.222204, 33.862373, 33.383869>,  <31.093657, 34.227501, 33.484653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222204, 33.862373, 33.383869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386280, -0.369298, 0.845226,
		-0.864587, -0.174302, -0.471284,
		0.321369, -0.912819, -0.251960,
		31.318615, 33.588528, 33.308281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443945, 33.791836, 33.595013>,  <31.093657, 34.227501, 33.484653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443945, 33.791836, 33.595013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.797157, 33.606087, 33.622189>,  <31.009085, 33.494637, 33.638493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.797157, 33.606087, 33.622189>,  <30.443945, 33.791836, 33.595013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797157, 33.606087, 33.622189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289556, -0.425139, 0.857563,
		-0.369344, -0.776926, -0.509873,
		0.883030, -0.464373, 0.067941,
		31.062067, 33.466774, 33.642570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208323, 33.212635, 33.839268>,  <30.443945, 33.791836, 33.595013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208323, 33.212635, 33.839268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.602688, 33.208874, 33.906067>,  <30.839306, 33.206615, 33.946148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.602688, 33.208874, 33.906067>,  <30.208323, 33.212635, 33.839268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602688, 33.208874, 33.906067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146710, -0.528176, 0.836365,
		0.080340, -0.849083, -0.522115,
		0.985912, -0.009406, 0.167002,
		30.898462, 33.206051, 33.956169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196371, 32.664944, 34.151119>,  <30.208323, 33.212635, 33.839268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196371, 32.664944, 34.151119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.528614, 32.846699, 34.279884>,  <30.727959, 32.955753, 34.357143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.528614, 32.846699, 34.279884>,  <30.196371, 32.664944, 34.151119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528614, 32.846699, 34.279884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234369, -0.239132, 0.942277,
		0.505140, -0.858106, -0.092129,
		0.830605, 0.454389, 0.321909,
		30.777796, 32.983017, 34.376457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528633, 32.197472, 34.649521>,  <30.196371, 32.664944, 34.151119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528633, 32.197472, 34.649521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.680256, 32.558720, 34.730209>,  <30.771231, 32.775467, 34.778622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.680256, 32.558720, 34.730209>,  <30.528633, 32.197472, 34.649521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680256, 32.558720, 34.730209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211191, -0.127806, 0.969053,
		0.900951, -0.409929, 0.142285,
		0.379058, 0.903119, 0.201720,
		30.793974, 32.829655, 34.790726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732431, 32.103222, 35.343987>,  <30.528633, 32.197472, 34.649521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732431, 32.103222, 35.343987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.761885, 32.501038, 35.314381>,  <30.779556, 32.739727, 35.296616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.761885, 32.501038, 35.314381>,  <30.732431, 32.103222, 35.343987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761885, 32.501038, 35.314381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282621, 0.091986, 0.954811,
		0.956401, -0.049387, 0.287849,
		0.073633, 0.994535, -0.074018,
		30.783976, 32.799397, 35.292175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029055, 32.403477, 35.973389>,  <30.732431, 32.103222, 35.343987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029055, 32.403477, 35.973389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.800539, 32.685989, 35.806152>,  <30.663429, 32.855495, 35.705811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.800539, 32.685989, 35.806152>,  <31.029055, 32.403477, 35.973389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800539, 32.685989, 35.806152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407120, 0.198458, 0.891554,
		0.712661, 0.679546, 0.174164,
		-0.571287, 0.706281, -0.418090,
		30.629152, 32.897873, 35.680725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895859, 32.709015, 36.585167>,  <31.029055, 32.403477, 35.973389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895859, 32.709015, 36.585167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.636875, 32.876240, 36.330288>,  <30.481483, 32.976574, 36.177361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.636875, 32.876240, 36.330288>,  <30.895859, 32.709015, 36.585167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636875, 32.876240, 36.330288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584783, 0.263615, 0.767161,
		0.488695, 0.869329, 0.073795,
		-0.647461, 0.418061, -0.637196,
		30.442636, 33.001659, 36.139130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746777, 33.348705, 36.849590>,  <30.895859, 32.709015, 36.585167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746777, 33.348705, 36.849590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.429247, 33.260765, 36.622784>,  <30.238729, 33.208000, 36.486698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.429247, 33.260765, 36.622784>,  <30.746777, 33.348705, 36.849590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429247, 33.260765, 36.622784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608089, 0.274204, 0.745010,
		-0.008310, 0.936205, -0.351357,
		-0.793825, -0.219847, -0.567017,
		30.191099, 33.194813, 36.452679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379864, 33.949715, 36.802765>,  <30.746777, 33.348705, 36.849590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379864, 33.949715, 36.802765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.123503, 33.650764, 36.732712>,  <29.969687, 33.471394, 36.690681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.123503, 33.650764, 36.732712>,  <30.379864, 33.949715, 36.802765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123503, 33.650764, 36.732712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613601, 0.361709, 0.701898,
		-0.461236, 0.557309, -0.690412,
		-0.640902, -0.747377, -0.175132,
		29.931232, 33.426552, 36.680172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658983, 34.307545, 36.810043>,  <30.379864, 33.949715, 36.802765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658983, 34.307545, 36.810043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.648153, 33.918224, 36.901211>,  <29.641655, 33.684631, 36.955910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.648153, 33.918224, 36.901211>,  <29.658983, 34.307545, 36.810043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648153, 33.918224, 36.901211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474236, 0.213217, 0.854189,
		-0.879981, -0.084958, -0.467350,
		-0.027077, -0.973304, 0.227917,
		29.640030, 33.626232, 36.969585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089554, 34.969673, 36.823929>,  <29.658983, 34.307545, 36.810043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089554, 34.969673, 36.823929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.380306, 35.069935, 37.079685>,  <30.554758, 35.130093, 37.233139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.380306, 35.069935, 37.079685>,  <30.089554, 34.969673, 36.823929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380306, 35.069935, 37.079685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329234, 0.689873, -0.644732,
		-0.602702, 0.679151, 0.418931,
		0.726880, 0.250655, 0.639388,
		30.598370, 35.145130, 37.271503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006622, 35.663322, 37.046814>,  <30.089554, 34.969673, 36.823929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006622, 35.663322, 37.046814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.383268, 35.530640, 37.023727>,  <30.609257, 35.451031, 37.009876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.383268, 35.530640, 37.023727>,  <30.006622, 35.663322, 37.046814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383268, 35.530640, 37.023727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165478, 0.605219, -0.778670,
		0.293222, 0.723656, 0.624774,
		0.941614, -0.331710, -0.057715,
		30.665752, 35.431126, 37.006413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394983, 36.178967, 36.783836>,  <30.006622, 35.663322, 37.046814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394983, 36.178967, 36.783836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.650600, 35.884800, 36.693699>,  <30.803970, 35.708298, 36.639614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.650600, 35.884800, 36.693699>,  <30.394983, 36.178967, 36.783836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650600, 35.884800, 36.693699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323137, 0.522553, -0.789000,
		0.698002, 0.431387, 0.571575,
		0.639043, -0.735421, -0.225345,
		30.842314, 35.664173, 36.626095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087120, 36.393250, 36.764774>,  <30.394983, 36.178967, 36.783836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087120, 36.393250, 36.764774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.109869, 36.078224, 36.519333>,  <31.123518, 35.889210, 36.372066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.109869, 36.078224, 36.519333>,  <31.087120, 36.393250, 36.764774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109869, 36.078224, 36.519333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414816, 0.577678, -0.703004,
		0.908126, -0.214550, 0.359549,
		0.056874, -0.787563, -0.613604,
		31.126932, 35.841957, 36.335251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655483, 36.641090, 36.423557>,  <31.087120, 36.393250, 36.764774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655483, 36.641090, 36.423557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.488609, 36.355263, 36.198933>,  <31.388485, 36.183765, 36.064159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.488609, 36.355263, 36.198933>,  <31.655483, 36.641090, 36.423557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488609, 36.355263, 36.198933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256044, 0.500455, -0.827034,
		0.872007, -0.488812, -0.025822,
		-0.417187, -0.714568, -0.561558,
		31.363453, 36.140892, 36.030464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121529, 36.571579, 35.970039>,  <31.655483, 36.641090, 36.423557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121529, 36.571579, 35.970039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.795813, 36.409946, 35.803352>,  <31.600384, 36.312965, 35.703339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.795813, 36.409946, 35.803352>,  <32.121529, 36.571579, 35.970039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795813, 36.409946, 35.803352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309776, 0.304614, -0.900694,
		0.490894, -0.862512, -0.122867,
		-0.814286, -0.404084, -0.416718,
		31.551527, 36.288719, 35.678337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266125, 36.282520, 35.383488>,  <32.121529, 36.571579, 35.970039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266125, 36.282520, 35.383488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.874224, 36.306564, 35.307102>,  <31.639082, 36.320992, 35.261272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.874224, 36.306564, 35.307102>,  <32.266125, 36.282520, 35.383488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874224, 36.306564, 35.307102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200183, 0.280916, -0.938623,
		-0.002778, -0.957848, -0.287262,
		-0.979754, 0.060112, -0.190964,
		31.580297, 36.324596, 35.249813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146782, 36.109287, 34.720760>,  <32.266125, 36.282520, 35.383488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146782, 36.109287, 34.720760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.802176, 36.302063, 34.784660>,  <31.595411, 36.417728, 34.822998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.802176, 36.302063, 34.784660>,  <32.146782, 36.109287, 34.720760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802176, 36.302063, 34.784660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087921, 0.451488, -0.887935,
		-0.500053, -0.750929, -0.431338,
		-0.861520, 0.481938, 0.159745,
		31.543720, 36.446644, 34.832584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982557, 36.315243, 34.122360>,  <32.146782, 36.109287, 34.720760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982557, 36.315243, 34.122360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.720829, 36.538685, 34.326256>,  <31.563793, 36.672749, 34.448593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.720829, 36.538685, 34.326256>,  <31.982557, 36.315243, 34.122360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720829, 36.538685, 34.326256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057898, 0.709084, -0.702743,
		-0.754000, -0.430305, -0.496309,
		-0.654318, 0.558603, 0.509735,
		31.524534, 36.706264, 34.479176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523172, 36.508495, 33.629211>,  <31.982557, 36.315243, 34.122360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523172, 36.508495, 33.629211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.484377, 36.797997, 33.902496>,  <31.461100, 36.971695, 34.066467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.484377, 36.797997, 33.902496>,  <31.523172, 36.508495, 33.629211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484377, 36.797997, 33.902496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202812, 0.686417, -0.698354,
		-0.974402, 0.070830, -0.213361,
		-0.096990, 0.723750, 0.683212,
		31.455280, 37.015121, 34.107460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950951, 37.040211, 33.431637>,  <31.523172, 36.508495, 33.629211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950951, 37.040211, 33.431637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.191654, 37.226856, 33.690918>,  <31.336077, 37.338844, 33.846485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.191654, 37.226856, 33.690918>,  <30.950951, 37.040211, 33.431637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191654, 37.226856, 33.690918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219072, 0.684031, -0.695779,
		-0.768045, 0.560694, 0.309401,
		0.601759, 0.466609, 0.648199,
		31.372181, 37.366840, 33.885376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880060, 37.765862, 33.317142>,  <30.950951, 37.040211, 33.431637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880060, 37.765862, 33.317142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.245644, 37.720295, 33.472939>,  <31.464994, 37.692955, 33.566414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.245644, 37.720295, 33.472939>,  <30.880060, 37.765862, 33.317142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245644, 37.720295, 33.472939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394234, 0.476800, -0.785647,
		-0.096210, 0.871599, 0.480686,
		0.913960, -0.113916, 0.389487,
		31.519833, 37.686119, 33.589783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145329, 38.358883, 33.179733>,  <30.880060, 37.765862, 33.317142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145329, 38.358883, 33.179733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.467667, 38.140167, 33.270630>,  <31.661070, 38.008938, 33.325169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.467667, 38.140167, 33.270630>,  <31.145329, 38.358883, 33.179733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467667, 38.140167, 33.270630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528224, 0.490421, -0.693157,
		0.267566, 0.678611, 0.684029,
		0.805846, -0.546786, 0.227239,
		31.709421, 37.976131, 33.338802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742678, 38.865067, 33.244453>,  <31.145329, 38.358883, 33.179733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742678, 38.865067, 33.244453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.870388, 38.494736, 33.163555>,  <31.947014, 38.272537, 33.115017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.870388, 38.494736, 33.163555>,  <31.742678, 38.865067, 33.244453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870388, 38.494736, 33.163555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600509, 0.362751, -0.712601,
		0.733112, 0.106066, 0.671786,
		0.319274, -0.925830, -0.202243,
		31.966169, 38.216988, 33.102882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453781, 39.001408, 33.015617>,  <31.742678, 38.865067, 33.244453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453781, 39.001408, 33.015617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.382561, 38.618618, 32.923969>,  <32.339828, 38.388943, 32.868980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.382561, 38.618618, 32.923969>,  <32.453781, 39.001408, 33.015617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382561, 38.618618, 32.923969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745007, 0.021012, -0.666726,
		0.642855, -0.289407, 0.709212,
		-0.178054, -0.956975, -0.229118,
		32.329144, 38.331524, 32.855232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080376, 38.635567, 33.008438>,  <32.453781, 39.001408, 33.015617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080376, 38.635567, 33.008438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.844753, 38.402031, 32.784958>,  <32.703381, 38.261909, 32.650871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.844753, 38.402031, 32.784958>,  <33.080376, 38.635567, 33.008438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844753, 38.402031, 32.784958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577658, 0.179243, -0.796356,
		0.565085, -0.791837, 0.231673,
		-0.589059, -0.583837, -0.558699,
		32.668037, 38.226879, 32.617348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545441, 38.263565, 32.564964>,  <33.080376, 38.635567, 33.008438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545441, 38.263565, 32.564964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.183331, 38.214764, 32.402195>,  <32.966064, 38.185482, 32.304531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.183331, 38.214764, 32.402195>,  <33.545441, 38.263565, 32.564964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183331, 38.214764, 32.402195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394832, 0.111880, -0.911916,
		0.156785, -0.986204, -0.053111,
		-0.905277, -0.122005, -0.406926,
		32.911747, 38.178162, 32.280117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642635, 37.832836, 32.008175>,  <33.545441, 38.263565, 32.564964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642635, 37.832836, 32.008175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310165, 38.041622, 31.931540>,  <33.110683, 38.166893, 31.885559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310165, 38.041622, 31.931540>,  <33.642635, 37.832836, 32.008175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310165, 38.041622, 31.931540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334405, 0.194000, -0.922246,
		-0.444211, -0.830613, -0.335795,
		-0.831174, 0.521963, -0.191584,
		33.060814, 38.198212, 31.874063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381092, 37.634407, 31.334209>,  <33.642635, 37.832836, 32.008175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381092, 37.634407, 31.334209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207062, 37.987366, 31.405857>,  <33.102646, 38.199142, 31.448845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.207062, 37.987366, 31.405857>,  <33.381092, 37.634407, 31.334209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207062, 37.987366, 31.405857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122878, 0.255259, -0.959033,
		-0.891971, -0.395240, -0.219484,
		-0.435073, 0.882399, 0.179117,
		33.076538, 38.252087, 31.459593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047451, 37.754761, 30.759113>,  <33.381092, 37.634407, 31.334209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047451, 37.754761, 30.759113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.987045, 38.114571, 30.923092>,  <32.950802, 38.330456, 31.021479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.987045, 38.114571, 30.923092>,  <33.047451, 37.754761, 30.759113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987045, 38.114571, 30.923092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025420, 0.411032, -0.911266,
		-0.988205, -0.148034, -0.039205,
		-0.151013, 0.899521, 0.409947,
		32.941742, 38.384426, 31.046076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467499, 38.128792, 30.392654>,  <33.047451, 37.754761, 30.759113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467499, 38.128792, 30.392654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.717484, 38.398991, 30.549179>,  <32.867474, 38.561111, 30.643093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.717484, 38.398991, 30.549179>,  <32.467499, 38.128792, 30.392654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717484, 38.398991, 30.549179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050972, 0.464881, -0.883905,
		-0.778987, 0.572355, 0.256103,
		0.624964, 0.675496, 0.391311,
		32.904972, 38.601639, 30.666573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272915, 38.745186, 30.077538>,  <32.467499, 38.128792, 30.392654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272915, 38.745186, 30.077538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.630253, 38.844650, 30.227255>,  <32.844658, 38.904331, 30.317085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.630253, 38.844650, 30.227255>,  <32.272915, 38.745186, 30.077538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630253, 38.844650, 30.227255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203234, 0.519300, -0.830074,
		-0.400781, 0.817614, 0.413378,
		0.893348, 0.248665, 0.374293,
		32.898258, 38.919250, 30.339542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325352, 39.380409, 29.951132>,  <32.272915, 38.745186, 30.077538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325352, 39.380409, 29.951132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.714970, 39.324516, 30.022362>,  <32.948742, 39.290981, 30.065100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.714970, 39.324516, 30.022362>,  <32.325352, 39.380409, 29.951132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714970, 39.324516, 30.022362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224643, 0.500187, -0.836270,
		0.027787, 0.854568, 0.518596,
		0.974045, -0.139736, 0.178074,
		33.007183, 39.282597, 30.075785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656231, 39.914112, 29.692173>,  <32.325352, 39.380409, 29.951132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656231, 39.914112, 29.692173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.973866, 39.672787, 29.721657>,  <33.164448, 39.527992, 29.739347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.973866, 39.672787, 29.721657>,  <32.656231, 39.914112, 29.692173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973866, 39.672787, 29.721657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425466, 0.465162, -0.776275,
		0.434052, 0.647792, 0.626070,
		0.794089, -0.603315, 0.073709,
		33.212093, 39.491791, 29.743769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352921, 40.450092, 29.604527>,  <32.656231, 39.914112, 29.692173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352921, 40.450092, 29.604527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.422710, 40.069084, 29.504709>,  <33.464584, 39.840481, 29.444818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.422710, 40.069084, 29.504709>,  <33.352921, 40.450092, 29.604527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422710, 40.069084, 29.504709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480902, 0.303579, -0.822540,
		0.859240, 0.023502, 0.511033,
		0.174470, -0.952516, -0.249545,
		33.475052, 39.783329, 29.429846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072277, 40.385738, 29.358370>,  <33.352921, 40.450092, 29.604527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072277, 40.385738, 29.358370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.892437, 40.060356, 29.210772>,  <33.784534, 39.865128, 29.122213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.892437, 40.060356, 29.210772>,  <34.072277, 40.385738, 29.358370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892437, 40.060356, 29.210772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348398, 0.220684, -0.910998,
		0.822486, -0.538138, 0.184187,
		-0.449596, -0.813453, -0.368995,
		33.757557, 39.816319, 29.100073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637253, 39.920067, 28.978542>,  <34.072277, 40.385738, 29.358370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637253, 39.920067, 28.978542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.273350, 39.844067, 28.830902>,  <34.055008, 39.798466, 28.742317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.273350, 39.844067, 28.830902>,  <34.637253, 39.920067, 28.978542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273350, 39.844067, 28.830902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338956, 0.173355, -0.924693,
		0.239684, -0.966357, -0.093307,
		-0.909759, -0.190007, -0.369103,
		34.000423, 39.787064, 28.720171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326160, 39.796562, 29.277334>,  <34.637253, 39.920067, 28.978542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326160, 39.796562, 29.277334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.541462, 40.121510, 29.367079>,  <35.670643, 40.316479, 29.420925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.541462, 40.121510, 29.367079>,  <35.326160, 39.796562, 29.277334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541462, 40.121510, 29.367079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065908, -0.305976, 0.949755,
		0.840201, -0.496422, -0.218234,
		0.538254, 0.812369, 0.224363,
		35.702938, 40.365219, 29.434387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688824, 39.611832, 29.972378>,  <35.326160, 39.796562, 29.277334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688824, 39.611832, 29.972378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755825, 40.005970, 29.985203>,  <35.796028, 40.242455, 29.992899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755825, 40.005970, 29.985203>,  <35.688824, 39.611832, 29.972378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755825, 40.005970, 29.985203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081412, -0.046238, 0.995608,
		0.982504, -0.164161, -0.087964,
		0.167507, 0.985350, 0.032064,
		35.806076, 40.301575, 29.994822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361881, 39.737774, 30.273237>,  <35.688824, 39.611832, 29.972378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361881, 39.737774, 30.273237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.114540, 40.047390, 30.327641>,  <35.966137, 40.233162, 30.360283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.114540, 40.047390, 30.327641>,  <36.361881, 39.737774, 30.273237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114540, 40.047390, 30.327641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115400, -0.081757, 0.989949,
		0.777381, 0.627833, -0.038769,
		-0.618353, 0.774042, 0.136008,
		35.929035, 40.279602, 30.368443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481094, 39.957981, 30.897064>,  <36.361881, 39.737774, 30.273237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481094, 39.957981, 30.897064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148071, 40.176094, 30.858044>,  <35.948257, 40.306961, 30.834631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148071, 40.176094, 30.858044>,  <36.481094, 39.957981, 30.897064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148071, 40.176094, 30.858044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158280, -0.065407, 0.985226,
		0.530850, 0.835694, 0.140763,
		-0.832554, 0.545287, -0.097553,
		35.898304, 40.339680, 30.828777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474590, 40.435753, 31.423147>,  <36.481094, 39.957981, 30.897064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474590, 40.435753, 31.423147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.087940, 40.396118, 31.328642>,  <35.855949, 40.372337, 31.271938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.087940, 40.396118, 31.328642>,  <36.474590, 40.435753, 31.423147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087940, 40.396118, 31.328642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219638, -0.154254, 0.963309,
		-0.131897, 0.983050, 0.127342,
		-0.966624, -0.099088, -0.236261,
		35.797955, 40.366390, 31.257763>
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
