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
	<24.141043, 35.154839, 34.985950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301174, 35.048801, 34.635075>,  <24.397253, 34.985180, 34.424549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301174, 35.048801, 34.635075>,  <24.141043, 35.154839, 34.985950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.301174, 35.048801, 34.635075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017938, 0.954792, -0.296731,
		0.916197, 0.134524, 0.377474,
		0.400327, -0.265093, -0.877191,
		24.421272, 34.969273, 34.371918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.548466, 35.676117, 34.705700>,  <24.141043, 35.154839, 34.985950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.548466, 35.676117, 34.705700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.500334, 35.472763, 34.364628>,  <24.471455, 35.350750, 34.159985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.500334, 35.472763, 34.364628>,  <24.548466, 35.676117, 34.705700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.500334, 35.472763, 34.364628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122639, 0.859954, -0.495418,
		0.985130, 0.044958, -0.165827,
		-0.120331, -0.508387, -0.852680,
		24.464235, 35.320248, 34.108826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080070, 35.862957, 34.154247>,  <24.548466, 35.676117, 34.705700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080070, 35.862957, 34.154247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.762480, 35.727493, 33.952293>,  <24.571924, 35.646217, 33.831120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.762480, 35.727493, 33.952293>,  <25.080070, 35.862957, 34.154247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.762480, 35.727493, 33.952293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132287, 0.714339, -0.687182,
		0.593377, -0.612399, -0.522371,
		-0.793980, -0.338655, -0.504885,
		24.524286, 35.625896, 33.800827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.249304, 35.732548, 33.344215>,  <25.080070, 35.862957, 34.154247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.249304, 35.732548, 33.344215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.867949, 35.829239, 33.416458>,  <24.639135, 35.887253, 33.459805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.867949, 35.829239, 33.416458>,  <25.249304, 35.732548, 33.344215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.867949, 35.829239, 33.416458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057718, 0.733568, -0.677161,
		-0.296176, -0.635173, -0.713327,
		-0.953388, 0.241730, 0.180605,
		24.581932, 35.901756, 33.470638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.913309, 35.851833, 32.669125>,  <25.249304, 35.732548, 33.344215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.913309, 35.851833, 32.669125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734127, 36.080914, 32.943745>,  <24.626617, 36.218361, 33.108517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734127, 36.080914, 32.943745>,  <24.913309, 35.851833, 32.669125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.734127, 36.080914, 32.943745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028791, 0.758262, -0.651314,
		-0.893592, -0.311527, -0.323180,
		-0.447957, 0.572704, 0.686546,
		24.599741, 36.252724, 33.149708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.325127, 36.281319, 32.426094>,  <24.913309, 35.851833, 32.669125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.325127, 36.281319, 32.426094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.519056, 36.452858, 32.730995>,  <24.635414, 36.555782, 32.913937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.519056, 36.452858, 32.730995>,  <24.325127, 36.281319, 32.426094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.519056, 36.452858, 32.730995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153198, 0.816419, -0.556768,
		-0.861089, 0.386711, 0.330122,
		0.484826, 0.428852, 0.762253,
		24.664505, 36.581512, 32.959671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943264, 36.653095, 32.401314>,  <24.325127, 36.281319, 32.426094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.943264, 36.653095, 32.401314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296812, 36.640697, 32.214630>,  <25.508942, 36.633259, 32.102619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.296812, 36.640697, 32.214630>,  <24.943264, 36.653095, 32.401314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.296812, 36.640697, 32.214630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462497, -0.206797, -0.862167,
		-0.069794, 0.977893, -0.197115,
		0.883870, -0.030991, -0.466705,
		25.561974, 36.631401, 32.074619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.801201, 37.004089, 31.708416>,  <24.943264, 36.653095, 32.401314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.801201, 37.004089, 31.708416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092348, 36.732262, 31.671766>,  <25.267036, 36.569164, 31.649776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092348, 36.732262, 31.671766>,  <24.801201, 37.004089, 31.708416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.092348, 36.732262, 31.671766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523188, -0.463990, -0.714834,
		0.443267, 0.568240, -0.693266,
		0.727866, -0.679571, -0.091624,
		25.310707, 36.528389, 31.644279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.761715, 36.836864, 31.074486>,  <24.801201, 37.004089, 31.708416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.761715, 36.836864, 31.074486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.999041, 36.541683, 31.203115>,  <25.141436, 36.364574, 31.280294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.999041, 36.541683, 31.203115>,  <24.761715, 36.836864, 31.074486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.999041, 36.541683, 31.203115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495836, -0.649737, -0.576185,
		0.634135, 0.182408, -0.751399,
		0.593313, -0.737949, 0.321576,
		25.177034, 36.320297, 31.299589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.103266, 36.657726, 30.482676>,  <24.761715, 36.836864, 31.074486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.103266, 36.657726, 30.482676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.088789, 36.355022, 30.743753>,  <25.080103, 36.173401, 30.900400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.088789, 36.355022, 30.743753>,  <25.103266, 36.657726, 30.482676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.088789, 36.355022, 30.743753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379678, -0.593736, -0.709452,
		0.924411, -0.273488, -0.265837,
		-0.036190, -0.756758, 0.652693,
		25.077932, 36.127995, 30.939562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524014, 36.150730, 30.319143>,  <25.103266, 36.657726, 30.482676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524014, 36.150730, 30.319143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227175, 35.988449, 30.532572>,  <25.049070, 35.891083, 30.660629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227175, 35.988449, 30.532572>,  <25.524014, 36.150730, 30.319143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.227175, 35.988449, 30.532572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294120, -0.518209, -0.803089,
		0.602314, -0.752905, 0.265238,
		-0.742099, -0.405700, 0.533569,
		25.004545, 35.866737, 30.692642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.426546, 35.387829, 30.073328>,  <25.524014, 36.150730, 30.319143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.426546, 35.387829, 30.073328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099207, 35.554516, 30.231646>,  <24.902803, 35.654530, 30.326635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099207, 35.554516, 30.231646>,  <25.426546, 35.387829, 30.073328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.099207, 35.554516, 30.231646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557567, -0.408645, -0.722585,
		-0.139374, -0.812008, 0.566761,
		-0.818349, 0.416717, 0.395794,
		24.853703, 35.679531, 30.350384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.888607, 34.945484, 30.198868>,  <25.426546, 35.387829, 30.073328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.888607, 34.945484, 30.198868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745834, 35.315319, 30.145590>,  <24.660172, 35.537220, 30.113623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745834, 35.315319, 30.145590>,  <24.888607, 34.945484, 30.198868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.745834, 35.315319, 30.145590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400106, -0.280162, -0.872597,
		-0.844106, -0.258166, 0.469931,
		-0.356931, 0.924586, -0.133193,
		24.638754, 35.592693, 30.105633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.212835, 34.877369, 30.012827>,  <24.888607, 34.945484, 30.198868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.212835, 34.877369, 30.012827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.332727, 35.226734, 29.859306>,  <24.404663, 35.436356, 29.767195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.332727, 35.226734, 29.859306>,  <24.212835, 34.877369, 30.012827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.332727, 35.226734, 29.859306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262101, -0.311430, -0.913409,
		-0.917314, 0.374372, 0.135578,
		0.299731, 0.873417, -0.383802,
		24.422647, 35.488758, 29.744165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.976898, 35.605335, 30.182667>,  <24.212835, 34.877369, 30.012827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.976898, 35.605335, 30.182667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202703, 35.323406, 30.354506>,  <24.338186, 35.154251, 30.457609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202703, 35.323406, 30.354506>,  <23.976898, 35.605335, 30.182667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.202703, 35.323406, 30.354506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217829, 0.629215, 0.746082,
		-0.796162, -0.327595, 0.508731,
		0.564514, -0.704819, 0.429598,
		24.372057, 35.111961, 30.483385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.909517, 35.679947, 30.993965>,  <23.976898, 35.605335, 30.182667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.909517, 35.679947, 30.993965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242672, 35.494953, 30.872372>,  <24.442564, 35.383957, 30.799416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242672, 35.494953, 30.872372>,  <23.909517, 35.679947, 30.993965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.242672, 35.494953, 30.872372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538016, 0.547818, 0.640651,
		-0.129765, -0.697137, 0.705096,
		0.832886, -0.462488, -0.303983,
		24.492538, 35.356209, 30.781178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.307953, 35.125286, 31.487011>,  <23.909517, 35.679947, 30.993965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.307953, 35.125286, 31.487011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544777, 35.338947, 31.245632>,  <24.686871, 35.467144, 31.100805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544777, 35.338947, 31.245632>,  <24.307953, 35.125286, 31.487011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.544777, 35.338947, 31.245632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498843, 0.345193, 0.794983,
		0.632945, -0.771703, -0.062081,
		0.592061, 0.534149, -0.603447,
		24.722395, 35.499191, 31.064598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.041428, 35.165585, 31.819889>,  <24.307953, 35.125286, 31.487011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.041428, 35.165585, 31.819889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059864, 35.457897, 31.547466>,  <25.070925, 35.633286, 31.384012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059864, 35.457897, 31.547466>,  <25.041428, 35.165585, 31.819889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059864, 35.457897, 31.547466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640760, 0.501415, 0.581386,
		0.766356, -0.463189, -0.445145,
		0.046090, 0.730780, -0.681056,
		25.073690, 35.677132, 31.343149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819786, 35.282917, 31.651823>,  <25.041428, 35.165585, 31.819889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819786, 35.282917, 31.651823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639574, 35.617245, 31.526331>,  <25.531446, 35.817841, 31.451036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639574, 35.617245, 31.526331>,  <25.819786, 35.282917, 31.651823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639574, 35.617245, 31.526331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617767, 0.545566, 0.566323,
		0.644504, 0.061334, -0.762137,
		-0.450531, 0.835820, -0.313730,
		25.504416, 35.867992, 31.432213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.357580, 35.806137, 31.469032>,  <25.819786, 35.282917, 31.651823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.357580, 35.806137, 31.469032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020418, 36.005833, 31.549309>,  <25.818121, 36.125648, 31.597475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020418, 36.005833, 31.549309>,  <26.357580, 35.806137, 31.469032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020418, 36.005833, 31.549309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500114, 0.589326, 0.634492,
		0.198489, 0.635184, -0.746420,
		-0.842905, 0.499235, 0.200689,
		25.767548, 36.155602, 31.609516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853958, 35.234478, 31.289742>,  <26.357580, 35.806137, 31.469032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853958, 35.234478, 31.289742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124651, 35.528477, 31.272669>,  <27.287066, 35.704876, 31.262424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124651, 35.528477, 31.272669>,  <26.853958, 35.234478, 31.289742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124651, 35.528477, 31.272669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681507, -0.647308, -0.341380,
		-0.278541, 0.201934, -0.938956,
		0.676730, 0.734993, -0.042682,
		27.327669, 35.748974, 31.259865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947590, 34.894947, 30.696630>,  <26.853958, 35.234478, 31.289742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947590, 34.894947, 30.696630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978527, 34.685543, 30.357231>,  <26.997089, 34.559898, 30.153591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978527, 34.685543, 30.357231>,  <26.947590, 34.894947, 30.696630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978527, 34.685543, 30.357231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619844, -0.641336, 0.452197,
		-0.780904, -0.560911, 0.274895,
		0.077343, -0.523515, -0.848499,
		27.001730, 34.528488, 30.102682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824587, 34.190422, 30.842129>,  <26.947590, 34.894947, 30.696630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824587, 34.190422, 30.842129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086880, 34.296154, 30.559246>,  <27.244255, 34.359592, 30.389517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086880, 34.296154, 30.559246>,  <26.824587, 34.190422, 30.842129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.086880, 34.296154, 30.559246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753639, -0.285211, 0.592184,
		-0.045173, -0.921295, -0.386231,
		0.655734, 0.264328, -0.707208,
		27.283600, 34.375454, 30.347084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298929, 33.755608, 30.688139>,  <26.824587, 34.190422, 30.842129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298929, 33.755608, 30.688139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494329, 34.097088, 30.615957>,  <27.611570, 34.301975, 30.572649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494329, 34.097088, 30.615957>,  <27.298929, 33.755608, 30.688139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494329, 34.097088, 30.615957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814366, -0.371800, 0.445615,
		0.313329, -0.364638, -0.876849,
		0.488500, 0.853700, -0.180453,
		27.640879, 34.353199, 30.561821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925915, 33.612644, 30.252893>,  <27.298929, 33.755608, 30.688139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925915, 33.612644, 30.252893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910042, 33.889236, 30.541416>,  <27.900518, 34.055191, 30.714529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910042, 33.889236, 30.541416>,  <27.925915, 33.612644, 30.252893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910042, 33.889236, 30.541416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732054, -0.471208, 0.491996,
		0.680090, 0.547559, -0.487500,
		-0.039683, 0.691478, 0.721307,
		27.898136, 34.096680, 30.757809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553587, 33.798485, 30.305805>,  <27.925915, 33.612644, 30.252893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553587, 33.798485, 30.305805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348055, 33.847076, 30.645504>,  <28.224735, 33.876232, 30.849323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348055, 33.847076, 30.645504>,  <28.553587, 33.798485, 30.305805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348055, 33.847076, 30.645504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698483, -0.515518, 0.496349,
		0.498098, 0.848224, 0.180038,
		-0.513828, 0.121477, 0.849249,
		28.193907, 33.883518, 30.900278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028425, 34.052422, 30.787542>,  <28.553587, 33.798485, 30.305805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028425, 34.052422, 30.787542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796116, 33.794853, 30.986767>,  <28.656731, 33.640312, 31.106302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796116, 33.794853, 30.986767>,  <29.028425, 34.052422, 30.787542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796116, 33.794853, 30.986767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806596, -0.537858, 0.245176,
		0.110013, 0.544128, 0.831758,
		-0.580775, -0.643920, 0.498063,
		28.621883, 33.601677, 31.136187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426201, 33.878941, 31.361572>,  <29.028425, 34.052422, 30.787542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426201, 33.878941, 31.361572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.136404, 33.605015, 31.330225>,  <28.962526, 33.440659, 31.311417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.136404, 33.605015, 31.330225>,  <29.426201, 33.878941, 31.361572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136404, 33.605015, 31.330225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640132, -0.710634, 0.291942,
		-0.255617, 0.161344, 0.953220,
		-0.724494, -0.684812, -0.078369,
		28.919056, 33.399570, 31.306715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625168, 33.327679, 31.884033>,  <29.426201, 33.878941, 31.361572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625168, 33.327679, 31.884033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389454, 33.185265, 31.593935>,  <29.248026, 33.099815, 31.419876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389454, 33.185265, 31.593935>,  <29.625168, 33.327679, 31.884033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389454, 33.185265, 31.593935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595099, -0.798418, -0.091580,
		-0.546443, -0.485559, 0.682373,
		-0.589286, -0.356036, -0.725245,
		29.212667, 33.078453, 31.376362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033598, 33.430500, 31.170197>,  <29.625168, 33.327679, 31.884033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033598, 33.430500, 31.170197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298569, 33.729919, 31.158438>,  <30.457552, 33.909573, 31.151382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298569, 33.729919, 31.158438>,  <30.033598, 33.430500, 31.170197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298569, 33.729919, 31.158438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305940, 0.306144, 0.901486,
		0.683806, -0.588175, 0.431810,
		0.662427, 0.748549, -0.029397,
		30.497297, 33.954483, 31.149618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424231, 33.297131, 31.783619>,  <30.033598, 33.430500, 31.170197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424231, 33.297131, 31.783619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378534, 33.673023, 31.654709>,  <30.351116, 33.898560, 31.577362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378534, 33.673023, 31.654709>,  <30.424231, 33.297131, 31.783619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378534, 33.673023, 31.654709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284987, 0.279766, 0.916796,
		0.951699, 0.196581, 0.235849,
		-0.114242, 0.939727, -0.322276,
		30.344261, 33.954941, 31.558025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868584, 33.827812, 32.069107>,  <30.424231, 33.297131, 31.783619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868584, 33.827812, 32.069107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517019, 33.975719, 31.948586>,  <30.306080, 34.064465, 31.876272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517019, 33.975719, 31.948586>,  <30.868584, 33.827812, 32.069107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517019, 33.975719, 31.948586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280299, 0.110722, 0.953506,
		0.385936, 0.922504, 0.006330,
		-0.878912, 0.369767, -0.301308,
		30.253345, 34.086651, 31.858192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795879, 34.563293, 32.398842>,  <30.868584, 33.827812, 32.069107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795879, 34.563293, 32.398842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424837, 34.431465, 32.328495>,  <30.202211, 34.352367, 32.286285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424837, 34.431465, 32.328495>,  <30.795879, 34.563293, 32.398842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424837, 34.431465, 32.328495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244509, 0.179721, 0.952846,
		-0.282424, 0.926867, -0.247294,
		-0.927605, -0.329573, -0.175870,
		30.146555, 34.332592, 32.275734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322884, 34.994659, 32.639545>,  <30.795879, 34.563293, 32.398842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322884, 34.994659, 32.639545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105907, 34.658691, 32.632717>,  <29.975721, 34.457111, 32.628620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105907, 34.658691, 32.632717>,  <30.322884, 34.994659, 32.639545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105907, 34.658691, 32.632717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279046, 0.160970, 0.946690,
		-0.792395, 0.518289, -0.321693,
		-0.542442, -0.839920, -0.017074,
		29.943174, 34.406715, 32.627594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633728, 35.094967, 32.897171>,  <30.322884, 34.994659, 32.639545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633728, 35.094967, 32.897171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743439, 34.712166, 32.934944>,  <29.809265, 34.482487, 32.957607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743439, 34.712166, 32.934944>,  <29.633728, 35.094967, 32.897171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743439, 34.712166, 32.934944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211856, 0.035657, 0.976650,
		-0.938025, -0.287877, -0.192967,
		0.274274, -0.957004, 0.094435,
		29.825722, 34.425064, 32.963276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929478, 35.150776, 32.807137>,  <29.633728, 35.094967, 32.897171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929478, 35.150776, 32.807137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047081, 34.769234, 32.782742>,  <29.117643, 34.540310, 32.768105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047081, 34.769234, 32.782742>,  <28.929478, 35.150776, 32.807137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047081, 34.769234, 32.782742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398364, -0.180290, 0.899334,
		-0.868829, -0.240118, -0.432988,
		0.294010, -0.953855, -0.060987,
		29.135284, 34.483078, 32.764446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340815, 34.782104, 33.007244>,  <28.929478, 35.150776, 32.807137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340815, 34.782104, 33.007244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671257, 34.568954, 33.080563>,  <28.869522, 34.441067, 33.124554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671257, 34.568954, 33.080563>,  <28.340815, 34.782104, 33.007244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671257, 34.568954, 33.080563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321493, -0.178536, 0.929929,
		-0.462809, -0.827146, -0.318805,
		0.826105, -0.532873, 0.183294,
		28.919088, 34.409092, 33.135551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072409, 34.083054, 33.274525>,  <28.340815, 34.782104, 33.007244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072409, 34.083054, 33.274525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442635, 34.140556, 33.414616>,  <28.664770, 34.175056, 33.498672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442635, 34.140556, 33.414616>,  <28.072409, 34.083054, 33.274525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442635, 34.140556, 33.414616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330891, -0.142326, 0.932874,
		0.183954, -0.979325, -0.084164,
		0.925566, 0.143757, 0.350232,
		28.720304, 34.183685, 33.519684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281950, 33.635147, 33.845215>,  <28.072409, 34.083054, 33.274525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281950, 33.635147, 33.845215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475843, 33.982685, 33.885517>,  <28.592178, 34.191208, 33.909698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475843, 33.982685, 33.885517>,  <28.281950, 33.635147, 33.845215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475843, 33.982685, 33.885517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235725, 0.018835, 0.971637,
		0.842300, -0.494734, 0.213937,
		0.484731, 0.868840, 0.100756,
		28.621264, 34.243336, 33.915745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283787, 33.455826, 34.668922>,  <28.281950, 33.635147, 33.845215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283787, 33.455826, 34.668922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533091, 33.706745, 34.855701>,  <28.682673, 33.857296, 34.967770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533091, 33.706745, 34.855701>,  <28.283787, 33.455826, 34.668922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533091, 33.706745, 34.855701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217738, 0.434294, -0.874059,
		-0.751090, 0.646439, 0.134091,
		0.623260, 0.627301, 0.466948,
		28.720068, 33.894936, 34.995785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217628, 34.267193, 34.540997>,  <28.283787, 33.455826, 34.668922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217628, 34.267193, 34.540997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591333, 34.171394, 34.646675>,  <28.815556, 34.113914, 34.710083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591333, 34.171394, 34.646675>,  <28.217628, 34.267193, 34.540997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591333, 34.171394, 34.646675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329760, 0.298294, -0.895700,
		0.135708, 0.923939, 0.357660,
		0.934260, -0.239496, 0.264197,
		28.871611, 34.099545, 34.725933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678438, 34.842644, 34.553574>,  <28.217628, 34.267193, 34.540997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678438, 34.842644, 34.553574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835255, 34.482124, 34.479847>,  <28.929344, 34.265812, 34.435612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.835255, 34.482124, 34.479847>,  <28.678438, 34.842644, 34.553574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835255, 34.482124, 34.479847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387644, 0.343543, -0.855401,
		0.834287, 0.263906, 0.484065,
		0.392042, -0.901295, -0.184312,
		28.952868, 34.211735, 34.424553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318451, 34.963367, 34.325260>,  <28.678438, 34.842644, 34.553574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318451, 34.963367, 34.325260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200926, 34.607204, 34.186207>,  <29.130411, 34.393505, 34.102776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200926, 34.607204, 34.186207>,  <29.318451, 34.963367, 34.325260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200926, 34.607204, 34.186207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414638, 0.208961, -0.885669,
		0.861249, -0.404362, 0.307802,
		-0.293812, -0.890408, -0.347631,
		29.112782, 34.340080, 34.081917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895777, 34.440582, 34.002388>,  <29.318451, 34.963367, 34.325260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895777, 34.440582, 34.002388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546366, 34.332588, 33.840374>,  <29.336720, 34.267792, 33.743164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546366, 34.332588, 33.840374>,  <29.895777, 34.440582, 34.002388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546366, 34.332588, 33.840374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441703, -0.089959, -0.892640,
		0.204564, -0.958653, 0.197835,
		-0.873528, -0.269987, -0.405038,
		29.284307, 34.251591, 33.718864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004171, 33.828018, 33.589615>,  <29.895777, 34.440582, 34.002388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004171, 33.828018, 33.589615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689106, 34.021080, 33.436443>,  <29.500067, 34.136917, 33.344543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689106, 34.021080, 33.436443>,  <30.004171, 33.828018, 33.589615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689106, 34.021080, 33.436443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315261, -0.218246, -0.923569,
		-0.529340, -0.848180, 0.019741,
		-0.787661, 0.482658, -0.382924,
		29.452808, 34.165878, 33.321568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672638, 33.336128, 33.108810>,  <30.004171, 33.828018, 33.589615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672638, 33.336128, 33.108810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557653, 33.705338, 33.006523>,  <29.488663, 33.926865, 32.945152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557653, 33.705338, 33.006523>,  <29.672638, 33.336128, 33.108810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557653, 33.705338, 33.006523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218208, -0.196848, -0.955843,
		-0.932604, -0.330569, -0.144825,
		-0.287463, 0.923025, -0.255713,
		29.471415, 33.982246, 32.929810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223204, 33.363869, 32.527622>,  <29.672638, 33.336128, 33.108810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223204, 33.363869, 32.527622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434978, 33.701637, 32.560223>,  <29.562044, 33.904301, 32.579784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434978, 33.701637, 32.560223>,  <29.223204, 33.363869, 32.527622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434978, 33.701637, 32.560223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261610, -0.071119, -0.962550,
		-0.807003, 0.530934, -0.258563,
		0.529439, 0.844423, 0.081504,
		29.593811, 33.954964, 32.584675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907158, 33.877949, 32.038696>,  <29.223204, 33.363869, 32.527622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907158, 33.877949, 32.038696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288712, 33.980049, 32.101879>,  <29.517643, 34.041309, 32.139790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288712, 33.980049, 32.101879>,  <28.907158, 33.877949, 32.038696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288712, 33.980049, 32.101879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154975, 0.031881, -0.987404,
		-0.257073, 0.966349, -0.009147,
		0.953885, 0.255252, 0.157956,
		29.574877, 34.056625, 32.149265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993731, 34.441753, 31.595465>,  <28.907158, 33.877949, 32.038696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993731, 34.441753, 31.595465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360460, 34.294334, 31.656923>,  <29.580498, 34.205883, 31.693798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360460, 34.294334, 31.656923>,  <28.993731, 34.441753, 31.595465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360460, 34.294334, 31.656923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230611, 0.174610, -0.957251,
		0.325963, 0.913064, 0.245077,
		0.916824, -0.368546, 0.153646,
		29.635508, 34.183769, 31.703016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518574, 34.866776, 31.318037>,  <28.993731, 34.441753, 31.595465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518574, 34.866776, 31.318037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754431, 34.556293, 31.407322>,  <29.895945, 34.370003, 31.460894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754431, 34.556293, 31.407322>,  <29.518574, 34.866776, 31.318037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754431, 34.556293, 31.407322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496370, 0.130251, -0.858284,
		0.637132, 0.616878, 0.462087,
		0.589643, -0.776206, 0.223213,
		29.931324, 34.323433, 31.474285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153143, 35.118511, 31.427572>,  <29.518574, 34.866776, 31.318037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153143, 35.118511, 31.427572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070189, 34.823658, 31.170319>,  <30.020416, 34.646744, 31.015966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070189, 34.823658, 31.170319>,  <30.153143, 35.118511, 31.427572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070189, 34.823658, 31.170319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671947, 0.370462, -0.641284,
		0.710971, -0.565144, 0.418489,
		-0.207384, -0.737137, -0.643134,
		30.007973, 34.602516, 30.977379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764782, 34.716000, 31.138649>,  <30.153143, 35.118511, 31.427572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764782, 34.716000, 31.138649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503143, 34.649467, 30.843491>,  <30.346161, 34.609547, 30.666395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503143, 34.649467, 30.843491>,  <30.764782, 34.716000, 31.138649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503143, 34.649467, 30.843491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735012, 0.090632, -0.671970,
		0.178648, -0.981896, 0.062976,
		-0.654096, -0.166334, -0.737896,
		30.306915, 34.599567, 30.622122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099638, 34.297501, 30.574392>,  <30.764782, 34.716000, 31.138649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099638, 34.297501, 30.574392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800190, 34.529984, 30.446793>,  <30.620522, 34.669472, 30.370232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800190, 34.529984, 30.446793>,  <31.099638, 34.297501, 30.574392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800190, 34.529984, 30.446793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609486, 0.413931, -0.676156,
		-0.260944, -0.700612, -0.664117,
		-0.748622, 0.581209, -0.319000,
		30.575603, 34.704346, 30.351093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146662, 34.395050, 29.837427>,  <31.099638, 34.297501, 30.574392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146662, 34.395050, 29.837427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949102, 34.707188, 29.990856>,  <30.830566, 34.894470, 30.082914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949102, 34.707188, 29.990856>,  <31.146662, 34.395050, 29.837427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949102, 34.707188, 29.990856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494597, 0.614940, -0.614185,
		-0.715150, -0.113630, -0.689673,
		-0.493897, 0.780344, 0.383573,
		30.800934, 34.941292, 30.105928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734116, 34.745926, 29.300926>,  <31.146662, 34.395050, 29.837427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734116, 34.745926, 29.300926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864258, 34.983315, 29.595390>,  <30.942343, 35.125748, 29.772068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864258, 34.983315, 29.595390>,  <30.734116, 34.745926, 29.300926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864258, 34.983315, 29.595390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536150, 0.525496, -0.660603,
		-0.778901, 0.609623, -0.147219,
		0.325356, 0.593475, 0.736159,
		30.961864, 35.161358, 29.816238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724310, 35.372322, 29.072330>,  <30.734116, 34.745926, 29.300926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724310, 35.372322, 29.072330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952625, 35.418556, 29.397499>,  <31.089615, 35.446297, 29.592600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952625, 35.418556, 29.397499>,  <30.724310, 35.372322, 29.072330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952625, 35.418556, 29.397499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644585, 0.550218, -0.530820,
		-0.508638, 0.826983, 0.239555,
		0.570787, 0.115582, 0.812923,
		31.123861, 35.453232, 29.641376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856356, 36.081631, 29.156506>,  <30.724310, 35.372322, 29.072330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856356, 36.081631, 29.156506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150112, 35.855495, 29.306736>,  <31.326366, 35.719814, 29.396873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150112, 35.855495, 29.306736>,  <30.856356, 36.081631, 29.156506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150112, 35.855495, 29.306736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659659, 0.464293, -0.591000,
		0.159739, 0.681778, 0.713906,
		0.734393, -0.565341, 0.375576,
		31.370430, 35.685894, 29.419409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423197, 36.311836, 28.793365>,  <30.856356, 36.081631, 29.156506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423197, 36.311836, 28.793365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600737, 36.056789, 29.045221>,  <31.707260, 35.903763, 29.196335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600737, 36.056789, 29.045221>,  <31.423197, 36.311836, 28.793365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600737, 36.056789, 29.045221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896102, 0.316220, -0.311458,
		-0.000513, 0.702460, 0.711723,
		0.443848, -0.637616, 0.629638,
		31.733891, 35.865505, 29.234114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930538, 36.563404, 29.429335>,  <31.423197, 36.311836, 28.793365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930538, 36.563404, 29.429335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041435, 36.212631, 29.272303>,  <32.107975, 36.002167, 29.178083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041435, 36.212631, 29.272303>,  <31.930538, 36.563404, 29.429335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041435, 36.212631, 29.272303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690640, 0.465949, -0.553090,
		0.667946, -0.117789, 0.734829,
		0.277245, -0.876936, -0.392578,
		32.124607, 35.949551, 29.154530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695763, 36.614620, 29.491552>,  <31.930538, 36.563404, 29.429335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695763, 36.614620, 29.491552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592785, 36.330975, 29.228985>,  <32.530998, 36.160789, 29.071445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592785, 36.330975, 29.228985>,  <32.695763, 36.614620, 29.491552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592785, 36.330975, 29.228985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765432, 0.264965, -0.586436,
		0.589776, -0.653418, 0.474562,
		-0.257445, -0.709111, -0.656417,
		32.515553, 36.118240, 29.032059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229958, 36.189983, 29.400391>,  <32.695763, 36.614620, 29.491552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229958, 36.189983, 29.400391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998882, 36.175793, 29.074198>,  <32.860237, 36.167278, 28.878481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998882, 36.175793, 29.074198>,  <33.229958, 36.189983, 29.400391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998882, 36.175793, 29.074198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803439, 0.151622, -0.575757,
		0.144068, -0.987802, -0.059092,
		-0.577694, -0.035471, -0.815483,
		32.825573, 36.165150, 28.829554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528233, 35.708660, 28.955759>,  <33.229958, 36.189983, 29.400391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528233, 35.708660, 28.955759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320026, 35.987514, 28.758554>,  <33.195103, 36.154827, 28.640232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320026, 35.987514, 28.758554>,  <33.528233, 35.708660, 28.955759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320026, 35.987514, 28.758554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785167, 0.163909, -0.597199,
		-0.335521, -0.697949, -0.632687,
		-0.520517, 0.697138, -0.493011,
		33.163872, 36.196655, 28.610651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633335, 35.612080, 28.216146>,  <33.528233, 35.708660, 28.955759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633335, 35.612080, 28.216146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542458, 35.993835, 28.293634>,  <33.487930, 36.222889, 28.340126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542458, 35.993835, 28.293634>,  <33.633335, 35.612080, 28.216146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542458, 35.993835, 28.293634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688746, 0.298100, -0.660882,
		-0.688486, -0.016725, -0.725057,
		-0.227193, 0.954388, 0.193718,
		33.474300, 36.280151, 28.351749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447346, 36.070866, 27.623930>,  <33.633335, 35.612080, 28.216146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447346, 36.070866, 27.623930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571323, 36.344593, 27.887943>,  <33.645710, 36.508827, 28.046352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571323, 36.344593, 27.887943>,  <33.447346, 36.070866, 27.623930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571323, 36.344593, 27.887943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478540, 0.487589, -0.730244,
		-0.821543, 0.542190, -0.176345,
		0.309947, 0.684315, 0.660035,
		33.664307, 36.549889, 28.085953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678673, 36.551537, 27.202108>,  <33.447346, 36.070866, 27.623930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678673, 36.551537, 27.202108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784264, 36.699890, 27.558258>,  <33.847618, 36.788902, 27.771948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784264, 36.699890, 27.558258>,  <33.678673, 36.551537, 27.202108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784264, 36.699890, 27.558258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652129, 0.611524, -0.448069,
		-0.710665, 0.698918, -0.080435,
		0.263976, 0.370880, 0.890373,
		33.863457, 36.811153, 27.825371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636341, 37.288445, 27.322399>,  <33.678673, 36.551537, 27.202108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636341, 37.288445, 27.322399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917271, 37.161213, 27.577137>,  <34.085827, 37.084873, 27.729980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917271, 37.161213, 27.577137>,  <33.636341, 37.288445, 27.322399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917271, 37.161213, 27.577137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656345, 0.635700, -0.406322,
		-0.275602, 0.703359, 0.655232,
		0.702321, -0.318075, 0.636846,
		34.127968, 37.065792, 27.768190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910946, 37.797123, 27.868404>,  <33.636341, 37.288445, 27.322399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910946, 37.797123, 27.868404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178703, 37.532284, 27.733620>,  <34.339355, 37.373379, 27.652748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178703, 37.532284, 27.733620>,  <33.910946, 37.797123, 27.868404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178703, 37.532284, 27.733620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622101, 0.747490, -0.232915,
		0.406088, -0.053713, 0.912254,
		0.669390, -0.662098, -0.336962,
		34.379520, 37.333652, 27.632532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565105, 37.984329, 28.025679>,  <33.910946, 37.797123, 27.868404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565105, 37.984329, 28.025679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656425, 37.720928, 27.738832>,  <34.711220, 37.562889, 27.566725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656425, 37.720928, 27.738832>,  <34.565105, 37.984329, 28.025679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656425, 37.720928, 27.738832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754600, 0.585103, -0.297041,
		0.615189, -0.473321, 0.630483,
		0.228302, -0.658499, -0.717117,
		34.724915, 37.523380, 27.523697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287834, 37.970303, 27.993870>,  <34.565105, 37.984329, 28.025679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287834, 37.970303, 27.993870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189411, 37.786602, 27.652452>,  <35.130356, 37.676380, 27.447601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189411, 37.786602, 27.652452>,  <35.287834, 37.970303, 27.993870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189411, 37.786602, 27.652452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742113, 0.477195, -0.470695,
		0.623476, -0.749247, 0.223400,
		-0.246061, -0.459255, -0.853545,
		35.115593, 37.648827, 27.396389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902145, 37.719139, 27.674921>,  <35.287834, 37.970303, 27.993870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902145, 37.719139, 27.674921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634117, 37.757507, 27.380489>,  <35.473301, 37.780529, 27.203831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634117, 37.757507, 27.380489>,  <35.902145, 37.719139, 27.674921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634117, 37.757507, 27.380489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687500, 0.454124, -0.566671,
		0.279916, -0.885760, -0.370236,
		-0.670068, 0.095917, -0.736077,
		35.433098, 37.786282, 27.159666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231819, 37.596233, 27.039742>,  <35.902145, 37.719139, 27.674921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231819, 37.596233, 27.039742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913868, 37.797989, 26.904827>,  <35.723099, 37.919041, 26.823879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913868, 37.797989, 26.904827>,  <36.231819, 37.596233, 27.039742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913868, 37.797989, 26.904827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597033, 0.550969, -0.583082,
		-0.108267, -0.664849, -0.739090,
		-0.794877, 0.504390, -0.337285,
		35.675404, 37.949306, 26.803642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294533, 37.695232, 26.300005>,  <36.231819, 37.596233, 27.039742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294533, 37.695232, 26.300005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029869, 37.971066, 26.417767>,  <35.871071, 38.136566, 26.488424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029869, 37.971066, 26.417767>,  <36.294533, 37.695232, 26.300005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029869, 37.971066, 26.417767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491435, 0.695390, -0.524332,
		-0.566297, -0.202252, -0.799001,
		-0.661664, 0.689585, 0.294404,
		35.831371, 38.177940, 26.506088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940971, 37.946068, 25.758581>,  <36.294533, 37.695232, 26.300005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940971, 37.946068, 25.758581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915142, 38.243435, 26.024862>,  <35.899647, 38.421856, 26.184631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915142, 38.243435, 26.024862>,  <35.940971, 37.946068, 25.758581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915142, 38.243435, 26.024862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423169, 0.624545, -0.656408,
		-0.903747, 0.239321, -0.354919,
		-0.064571, 0.743417, 0.665704,
		35.895771, 38.466461, 26.224573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721466, 38.563396, 25.421495>,  <35.940971, 37.946068, 25.758581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721466, 38.563396, 25.421495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883743, 38.720707, 25.751526>,  <35.981110, 38.815094, 25.949545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883743, 38.720707, 25.751526>,  <35.721466, 38.563396, 25.421495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883743, 38.720707, 25.751526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315330, 0.787054, -0.530200,
		-0.857894, 0.475268, 0.195289,
		0.405690, 0.393275, 0.825076,
		36.005451, 38.838688, 25.999048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470482, 39.257790, 25.545115>,  <35.721466, 38.563396, 25.421495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470482, 39.257790, 25.545115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837833, 39.204811, 25.694262>,  <36.058247, 39.173023, 25.783751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.837833, 39.204811, 25.694262>,  <35.470482, 39.257790, 25.545115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837833, 39.204811, 25.694262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294731, 0.857710, -0.421269,
		-0.264019, 0.496782, 0.826741,
		0.918383, -0.132443, 0.372868,
		36.113350, 39.165077, 25.806122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762611, 39.967079, 25.548725>,  <35.470482, 39.257790, 25.545115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762611, 39.967079, 25.548725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081192, 39.739944, 25.631891>,  <36.272339, 39.603664, 25.681791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081192, 39.739944, 25.631891>,  <35.762611, 39.967079, 25.548725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081192, 39.739944, 25.631891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598480, 0.690975, -0.405432,
		0.086556, 0.447338, 0.890166,
		0.796448, -0.567840, 0.207915,
		36.320126, 39.569592, 25.694265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240860, 40.539383, 25.774063>,  <35.762611, 39.967079, 25.548725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240860, 40.539383, 25.774063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434742, 40.197395, 25.700211>,  <36.551071, 39.992203, 25.655899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434742, 40.197395, 25.700211>,  <36.240860, 40.539383, 25.774063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434742, 40.197395, 25.700211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741004, 0.513528, -0.432667,
		0.464732, 0.072901, 0.882445,
		0.484702, -0.854970, -0.184633,
		36.580154, 39.940903, 25.644821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893768, 40.722141, 25.943031>,  <36.240860, 40.539383, 25.774063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893768, 40.722141, 25.943031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909706, 40.393970, 25.714886>,  <36.919270, 40.197067, 25.577999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909706, 40.393970, 25.714886>,  <36.893768, 40.722141, 25.943031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909706, 40.393970, 25.714886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780564, 0.381915, -0.494834,
		0.623805, -0.425491, 0.655611,
		0.039840, -0.820426, -0.570363,
		36.921658, 40.147842, 25.543777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532879, 40.487888, 25.963274>,  <36.893768, 40.722141, 25.943031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532879, 40.487888, 25.963274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383736, 40.341461, 25.622223>,  <37.294250, 40.253605, 25.417593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383736, 40.341461, 25.622223>,  <37.532879, 40.487888, 25.963274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383736, 40.341461, 25.622223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807024, 0.325537, -0.492684,
		0.457916, -0.871792, 0.174044,
		-0.372860, -0.366066, -0.852626,
		37.271877, 40.231640, 25.366436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053234, 40.121750, 25.625996>,  <37.532879, 40.487888, 25.963274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053234, 40.121750, 25.625996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787540, 40.192520, 25.335480>,  <37.628124, 40.234982, 25.161171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787540, 40.192520, 25.335480>,  <38.053234, 40.121750, 25.625996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787540, 40.192520, 25.335480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737451, 0.314094, -0.597923,
		0.122333, -0.932760, -0.339108,
		-0.664230, 0.176929, -0.726288,
		37.588272, 40.245598, 25.117594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155998, 39.587093, 25.077135>,  <38.053234, 40.121750, 25.625996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155998, 39.587093, 25.077135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983665, 39.922436, 24.943548>,  <37.880264, 40.123642, 24.863396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983665, 39.922436, 24.943548>,  <38.155998, 39.587093, 25.077135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983665, 39.922436, 24.943548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710714, 0.087163, -0.698060,
		-0.556116, -0.538103, -0.633388,
		-0.430836, 0.838360, -0.333965,
		37.854416, 40.173943, 24.843359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204113, 39.642262, 24.369848>,  <38.155998, 39.587093, 25.077135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204113, 39.642262, 24.369848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150917, 40.030441, 24.450378>,  <38.118999, 40.263351, 24.498697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150917, 40.030441, 24.450378>,  <38.204113, 39.642262, 24.369848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150917, 40.030441, 24.450378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721907, 0.234030, -0.651215,
		-0.679090, 0.058731, -0.731702,
		-0.132994, 0.970454, 0.201326,
		38.111019, 40.321579, 24.510777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410732, 39.931610, 23.784651>,  <38.204113, 39.642262, 24.369848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410732, 39.931610, 23.784651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354996, 40.307037, 23.910931>,  <38.321552, 40.532295, 23.986698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354996, 40.307037, 23.910931>,  <38.410732, 39.931610, 23.784651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354996, 40.307037, 23.910931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589626, 0.334771, -0.735030,
		-0.795566, 0.083724, -0.600054,
		-0.139341, 0.938573, 0.315699,
		38.313194, 40.588608, 24.005640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161415, 40.310448, 23.239771>,  <38.410732, 39.931610, 23.784651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161415, 40.310448, 23.239771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324585, 40.588245, 23.476843>,  <38.422489, 40.754925, 23.619085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324585, 40.588245, 23.476843>,  <38.161415, 40.310448, 23.239771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324585, 40.588245, 23.476843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556786, 0.325239, -0.764335,
		-0.723591, 0.641790, -0.254013,
		0.407928, 0.694497, 0.592679,
		38.446964, 40.796593, 23.654646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289093, 40.940353, 22.805248>,  <38.161415, 40.310448, 23.239771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289093, 40.940353, 22.805248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535076, 40.982677, 23.117821>,  <38.682667, 41.008072, 23.305365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535076, 40.982677, 23.117821>,  <38.289093, 40.940353, 22.805248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535076, 40.982677, 23.117821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714472, 0.344596, -0.608920,
		-0.333708, 0.932769, 0.136312,
		0.614954, 0.105810, 0.781432,
		38.719563, 41.014420, 23.352251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644131, 41.544106, 22.701590>,  <38.289093, 40.940353, 22.805248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644131, 41.544106, 22.701590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876289, 41.352554, 22.965048>,  <39.015587, 41.237625, 23.123123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876289, 41.352554, 22.965048>,  <38.644131, 41.544106, 22.701590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876289, 41.352554, 22.965048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805510, 0.456335, -0.378037,
		-0.119530, 0.749959, 0.650596,
		0.580401, -0.478875, 0.658645,
		39.050411, 41.208893, 23.162642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140129, 42.048008, 22.925550>,  <38.644131, 41.544106, 22.701590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140129, 42.048008, 22.925550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320606, 41.701057, 23.009531>,  <39.428894, 41.492886, 23.059919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320606, 41.701057, 23.009531>,  <39.140129, 42.048008, 22.925550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320606, 41.701057, 23.009531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876358, 0.386189, -0.287846,
		0.168589, 0.313868, 0.934379,
		0.451192, -0.867378, 0.209953,
		39.455963, 41.440845, 23.072517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702408, 42.231300, 23.276745>,  <39.140129, 42.048008, 22.925550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702408, 42.231300, 23.276745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797329, 41.862381, 23.154730>,  <39.854282, 41.641029, 23.081522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797329, 41.862381, 23.154730>,  <39.702408, 42.231300, 23.276745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797329, 41.862381, 23.154730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900464, 0.326660, -0.287156,
		0.364487, -0.206530, 0.908017,
		0.237307, -0.922301, -0.305036,
		39.868523, 41.585690, 23.063219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473450, 42.179619, 23.533686>,  <39.702408, 42.231300, 23.276745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473450, 42.179619, 23.533686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435295, 41.902157, 23.248100>,  <40.412403, 41.735680, 23.076750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.435295, 41.902157, 23.248100>,  <40.473450, 42.179619, 23.533686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435295, 41.902157, 23.248100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872098, 0.287574, -0.395911,
		0.479943, -0.660411, 0.577505,
		-0.095389, -0.693656, -0.713962,
		40.406677, 41.694061, 23.033911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139019, 41.989780, 23.259888>,  <40.473450, 42.179619, 23.533686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139019, 41.989780, 23.259888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925903, 41.817532, 22.968491>,  <40.798035, 41.714184, 22.793652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925903, 41.817532, 22.968491>,  <41.139019, 41.989780, 23.259888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925903, 41.817532, 22.968491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769738, 0.111088, -0.628619,
		0.351622, -0.895672, 0.272276,
		-0.532790, -0.430618, -0.728494,
		40.766068, 41.688347, 22.749943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460388, 41.384918, 22.939838>,  <41.139019, 41.989780, 23.259888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460388, 41.384918, 22.939838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194580, 41.528919, 22.677906>,  <41.035095, 41.615322, 22.520746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194580, 41.528919, 22.677906>,  <41.460388, 41.384918, 22.939838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194580, 41.528919, 22.677906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700798, -0.003961, -0.713348,
		-0.259403, -0.932942, -0.249659,
		-0.664524, 0.360005, -0.654832,
		40.995224, 41.636921, 22.481457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701862, 41.023315, 22.442297>,  <41.460388, 41.384918, 22.939838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701862, 41.023315, 22.442297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513351, 41.327698, 22.263929>,  <41.400246, 41.510326, 22.156908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513351, 41.327698, 22.263929>,  <41.701862, 41.023315, 22.442297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513351, 41.327698, 22.263929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774649, 0.115399, -0.621773,
		-0.421683, -0.638459, -0.643858,
		-0.471277, 0.760955, -0.445920,
		41.371967, 41.555984, 22.130154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860485, 40.854954, 21.709789>,  <41.701862, 41.023315, 22.442297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860485, 40.854954, 21.709789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737766, 41.234180, 21.743349>,  <41.664135, 41.461716, 21.763485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737766, 41.234180, 21.743349>,  <41.860485, 40.854954, 21.709789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737766, 41.234180, 21.743349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777531, 0.300499, -0.552400,
		-0.548925, -0.104242, -0.829346,
		-0.306801, 0.948069, 0.083900,
		41.645725, 41.518600, 21.768518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039715, 41.092556, 21.140005>,  <41.860485, 40.854954, 21.709789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039715, 41.092556, 21.140005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988026, 41.445503, 21.320997>,  <41.957012, 41.657272, 21.429592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988026, 41.445503, 21.320997>,  <42.039715, 41.092556, 21.140005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988026, 41.445503, 21.320997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716714, 0.398452, -0.572327,
		-0.685291, 0.250341, -0.683890,
		-0.129220, 0.882364, 0.452478,
		41.949261, 41.710213, 21.456741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839542, 41.659874, 20.612326>,  <42.039715, 41.092556, 21.140005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839542, 41.659874, 20.612326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020622, 41.805847, 20.937752>,  <42.129269, 41.893433, 21.133007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020622, 41.805847, 20.937752>,  <41.839542, 41.659874, 20.612326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020622, 41.805847, 20.937752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716902, 0.393575, -0.575456,
		-0.530203, 0.843753, -0.083453,
		0.452698, 0.364937, 0.813564,
		42.156433, 41.915329, 21.181822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941605, 42.337467, 20.468809>,  <41.839542, 41.659874, 20.612326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941605, 42.337467, 20.468809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202549, 42.284618, 20.767330>,  <42.359116, 42.252911, 20.946444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202549, 42.284618, 20.767330>,  <41.941605, 42.337467, 20.468809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202549, 42.284618, 20.767330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728909, 0.379143, -0.570037,
		-0.207643, 0.915858, 0.343641,
		0.652362, -0.132119, 0.746303,
		42.398258, 42.244984, 20.991220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285572, 42.920002, 20.426897>,  <41.941605, 42.337467, 20.468809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285572, 42.920002, 20.426897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528030, 42.675243, 20.630138>,  <42.673504, 42.528389, 20.752083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528030, 42.675243, 20.630138>,  <42.285572, 42.920002, 20.426897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528030, 42.675243, 20.630138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746922, 0.218411, -0.628016,
		0.273307, 0.760181, 0.589430,
		0.606143, -0.611900, 0.508103,
		42.709873, 42.491673, 20.782570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842415, 43.298214, 20.630047>,  <42.285572, 42.920002, 20.426897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842415, 43.298214, 20.630047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931122, 42.908764, 20.608631>,  <42.984348, 42.675095, 20.595781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931122, 42.908764, 20.608631>,  <42.842415, 43.298214, 20.630047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931122, 42.908764, 20.608631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681218, 0.193984, -0.705912,
		0.697681, 0.120078, 0.706273,
		0.221771, -0.973628, -0.053540,
		42.997654, 42.616676, 20.592569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590275, 43.244267, 20.541527>,  <42.842415, 43.298214, 20.630047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590275, 43.244267, 20.541527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427505, 42.897976, 20.424952>,  <43.329842, 42.690201, 20.355007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427505, 42.897976, 20.424952>,  <43.590275, 43.244267, 20.541527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427505, 42.897976, 20.424952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601518, -0.013849, -0.798739,
		0.687450, -0.500333, 0.526383,
		-0.406926, -0.865722, -0.291438,
		43.305428, 42.638260, 20.337521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114513, 42.981277, 20.162107>,  <43.590275, 43.244267, 20.541527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114513, 42.981277, 20.162107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807728, 42.749458, 20.051912>,  <43.623657, 42.610367, 19.985794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807728, 42.749458, 20.051912>,  <44.114513, 42.981277, 20.162107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807728, 42.749458, 20.051912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330393, 0.011392, -0.943775,
		0.550100, -0.814859, 0.182741,
		-0.766962, -0.579547, -0.275490,
		43.577641, 42.575596, 19.969265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415848, 42.460640, 19.746735>,  <44.114513, 42.981277, 20.162107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415848, 42.460640, 19.746735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031780, 42.399628, 19.653084>,  <43.801342, 42.363018, 19.596893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031780, 42.399628, 19.653084>,  <44.415848, 42.460640, 19.746735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031780, 42.399628, 19.653084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238327, -0.009589, -0.971138,
		0.145889, -0.988251, 0.045561,
		-0.960165, -0.152536, -0.234128,
		43.743732, 42.353867, 19.582846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359692, 41.820946, 19.464247>,  <44.415848, 42.460640, 19.746735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359692, 41.820946, 19.464247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087006, 42.077900, 19.324188>,  <43.923393, 42.232075, 19.240154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087006, 42.077900, 19.324188>,  <44.359692, 41.820946, 19.464247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087006, 42.077900, 19.324188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188876, -0.307839, -0.932503,
		-0.706817, -0.701836, 0.088527,
		-0.681716, 0.642388, -0.350145,
		43.882492, 42.270615, 19.219145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114891, 41.458832, 18.816216>,  <44.359692, 41.820946, 19.464247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114891, 41.458832, 18.816216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.978374, 41.833340, 18.782955>,  <43.896465, 42.058044, 18.762999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.978374, 41.833340, 18.782955>,  <44.114891, 41.458832, 18.816216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978374, 41.833340, 18.782955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094678, -0.053770, -0.994055,
		-0.935177, -0.347136, -0.070293,
		-0.341293, 0.936272, -0.083151,
		43.875988, 42.114220, 18.758011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721252, 41.521751, 18.168324>,  <44.114891, 41.458832, 18.816216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721252, 41.521751, 18.168324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823685, 41.902187, 18.237425>,  <43.885143, 42.130451, 18.278885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823685, 41.902187, 18.237425>,  <43.721252, 41.521751, 18.168324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823685, 41.902187, 18.237425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036054, 0.169189, -0.984924,
		-0.965983, 0.258449, 0.009036,
		0.256081, 0.951094, 0.172752,
		43.900509, 42.187515, 18.289251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531902, 41.869984, 17.590189>,  <43.721252, 41.521751, 18.168324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531902, 41.869984, 17.590189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762810, 42.154018, 17.751455>,  <43.901352, 42.324440, 17.848215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762810, 42.154018, 17.751455>,  <43.531902, 41.869984, 17.590189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762810, 42.154018, 17.751455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105036, 0.425064, -0.899048,
		-0.809773, 0.561337, 0.170791,
		0.577266, 0.710086, 0.403166,
		43.935989, 42.367043, 17.872406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405106, 42.600903, 17.250027>,  <43.531902, 41.869984, 17.590189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405106, 42.600903, 17.250027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765945, 42.673206, 17.406761>,  <43.982449, 42.716591, 17.500803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765945, 42.673206, 17.406761>,  <43.405106, 42.600903, 17.250027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765945, 42.673206, 17.406761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237751, 0.549588, -0.800892,
		-0.360119, 0.815646, 0.452809,
		0.902102, 0.180761, 0.391838,
		44.036575, 42.727436, 17.524313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.611668, 43.432049, 17.146746>,  <43.405106, 42.600903, 17.250027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.611668, 43.432049, 17.146746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958237, 43.236057, 17.185204>,  <44.166176, 43.118462, 17.208279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958237, 43.236057, 17.185204>,  <43.611668, 43.432049, 17.146746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958237, 43.236057, 17.185204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401978, 0.570240, -0.716408,
		0.296198, 0.659356, 0.691026,
		0.866418, -0.489976, 0.096142,
		44.218163, 43.089066, 17.214046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137402, 43.884174, 17.077570>,  <43.611668, 43.432049, 17.146746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137402, 43.884174, 17.077570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.328609, 43.542000, 16.997845>,  <44.443336, 43.336697, 16.950008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.328609, 43.542000, 16.997845>,  <44.137402, 43.884174, 17.077570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.328609, 43.542000, 16.997845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536679, 0.464094, -0.704693,
		0.695319, 0.229893, 0.680941,
		0.478025, -0.855433, -0.199315,
		44.472015, 43.285370, 16.938049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.737484, 44.104244, 16.887543>,  <44.137402, 43.884174, 17.077570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.737484, 44.104244, 16.887543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764431, 43.729019, 16.751600>,  <44.780598, 43.503883, 16.670034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764431, 43.729019, 16.751600>,  <44.737484, 44.104244, 16.887543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764431, 43.729019, 16.751600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454592, 0.332078, -0.826480,
		0.888149, -0.098821, 0.448806,
		0.067365, -0.938061, -0.339858,
		44.784641, 43.447601, 16.649643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.454521, 43.961983, 16.666672>,  <44.737484, 44.104244, 16.887543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.454521, 43.961983, 16.666672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208263, 43.721928, 16.462391>,  <45.060509, 43.577896, 16.339823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.208263, 43.721928, 16.462391>,  <45.454521, 43.961983, 16.666672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208263, 43.721928, 16.462391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498990, 0.204707, -0.842083,
		0.609911, -0.773258, 0.173437,
		-0.615644, -0.600139, -0.510701,
		45.023571, 43.541885, 16.309181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.857143, 43.585323, 16.365013>,  <45.454521, 43.961983, 16.666672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.857143, 43.585323, 16.365013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.517914, 43.571251, 16.153530>,  <45.314377, 43.562809, 16.026640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.517914, 43.571251, 16.153530>,  <45.857143, 43.585323, 16.365013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.517914, 43.571251, 16.153530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529612, -0.087825, -0.843681,
		-0.016753, -0.995515, 0.093114,
		-0.848074, -0.035181, -0.528708,
		45.263493, 43.560696, 15.994918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.164639, 43.805111, 15.773630>,  <45.857143, 43.585323, 16.365013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.164639, 43.805111, 15.773630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063038, 43.438747, 15.897952>,  <46.002075, 43.218929, 15.972546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.063038, 43.438747, 15.897952>,  <46.164639, 43.805111, 15.773630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.063038, 43.438747, 15.897952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308808, -0.227728, -0.923459,
		0.916580, -0.330542, -0.224995,
		-0.254005, -0.915905, 0.310805,
		45.986835, 43.163975, 15.991194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.512726, 43.266220, 15.412488>,  <46.164639, 43.805111, 15.773630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.512726, 43.266220, 15.412488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153797, 43.145996, 15.541785>,  <45.938442, 43.073864, 15.619364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153797, 43.145996, 15.541785>,  <46.512726, 43.266220, 15.412488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.153797, 43.145996, 15.541785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239528, -0.283539, -0.928564,
		0.370738, -0.910644, 0.182434,
		-0.897318, -0.300556, 0.323243,
		45.884602, 43.055828, 15.638758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.295044, 42.508263, 15.127455>,  <46.512726, 43.266220, 15.412488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.295044, 42.508263, 15.127455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.998928, 42.760120, 15.221704>,  <45.821259, 42.911236, 15.278255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.998928, 42.760120, 15.221704>,  <46.295044, 42.508263, 15.127455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.998928, 42.760120, 15.221704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333394, -0.039485, -0.941961,
		-0.583794, -0.775882, 0.239149,
		-0.740293, 0.629642, 0.235623,
		45.776840, 42.949013, 15.292392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.443676, 42.024132, 14.593537>,  <46.295044, 42.508263, 15.127455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.443676, 42.024132, 14.593537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.131222, 41.911880, 14.816631>,  <45.943748, 41.844528, 14.950488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.131222, 41.911880, 14.816631>,  <46.443676, 42.024132, 14.593537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.131222, 41.911880, 14.816631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455614, 0.354564, 0.816517,
		-0.426894, 0.891925, -0.149103,
		-0.781138, -0.280633, 0.557735,
		45.896881, 41.827690, 14.983952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.750500, 42.270123, 14.273952>,  <46.443676, 42.024132, 14.593537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.750500, 42.270123, 14.273952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783871, 41.962784, 14.020122>,  <45.803894, 41.778381, 13.867824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.783871, 41.962784, 14.020122>,  <45.750500, 42.270123, 14.273952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.783871, 41.962784, 14.020122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042424, -0.638956, 0.768073,
		-0.995610, -0.037160, -0.085905,
		0.083431, -0.768345, -0.634574,
		45.808899, 41.732281, 13.829749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.228001, 41.870430, 14.370194>,  <45.750500, 42.270123, 14.273952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.228001, 41.870430, 14.370194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521217, 41.635712, 14.232606>,  <45.697147, 41.494881, 14.150053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521217, 41.635712, 14.232606>,  <45.228001, 41.870430, 14.370194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521217, 41.635712, 14.232606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078093, -0.574969, 0.814440,
		-0.675684, -0.570158, -0.467302,
		0.733043, -0.586797, -0.343972,
		45.741131, 41.459671, 14.129415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972855, 41.285728, 14.237398>,  <45.228001, 41.870430, 14.370194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972855, 41.285728, 14.237398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341190, 41.243763, 14.387621>,  <45.562191, 41.218582, 14.477755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341190, 41.243763, 14.387621>,  <44.972855, 41.285728, 14.237398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341190, 41.243763, 14.387621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379731, -0.460179, 0.802520,
		0.088626, -0.881605, -0.463593,
		0.920842, -0.104917, 0.375557,
		45.617443, 41.212288, 14.500288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147709, 40.567501, 14.384609>,  <44.972855, 41.285728, 14.237398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.147709, 40.567501, 14.384609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322075, 40.806618, 14.653720>,  <45.426693, 40.950089, 14.815187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322075, 40.806618, 14.653720>,  <45.147709, 40.567501, 14.384609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322075, 40.806618, 14.653720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451433, -0.501462, 0.738068,
		0.778580, -0.625448, 0.051267,
		0.435914, 0.597788, 0.672776,
		45.452850, 40.985954, 14.855553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.411949, 40.113827, 14.876202>,  <45.147709, 40.567501, 14.384609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.411949, 40.113827, 14.876202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349110, 40.470116, 15.046813>,  <45.311405, 40.683891, 15.149179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349110, 40.470116, 15.046813>,  <45.411949, 40.113827, 14.876202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349110, 40.470116, 15.046813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400216, -0.452260, 0.797050,
		0.902854, -0.045484, 0.427534,
		-0.157103, 0.890726, 0.426529,
		45.301979, 40.737335, 15.174771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.613415, 39.980114, 15.621796>,  <45.411949, 40.113827, 14.876202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.613415, 39.980114, 15.621796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383865, 40.307419, 15.608452>,  <45.246136, 40.503803, 15.600446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383865, 40.307419, 15.608452>,  <45.613415, 39.980114, 15.621796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383865, 40.307419, 15.608452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421427, -0.260139, 0.868750,
		0.702191, 0.512608, 0.494126,
		-0.573870, 0.818267, -0.033359,
		45.211704, 40.552898, 15.598444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.483521, 40.198566, 16.259157>,  <45.613415, 39.980114, 15.621796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.483521, 40.198566, 16.259157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181728, 40.384830, 16.074148>,  <45.000652, 40.496590, 15.963142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181728, 40.384830, 16.074148>,  <45.483521, 40.198566, 16.259157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181728, 40.384830, 16.074148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568549, -0.111630, 0.815040,
		0.327898, 0.877897, 0.348971,
		-0.754477, 0.465657, -0.462524,
		44.955387, 40.524529, 15.935390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147274, 40.540009, 16.850950>,  <45.483521, 40.198566, 16.259157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.147274, 40.540009, 16.850950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885193, 40.551739, 16.548998>,  <44.727943, 40.558777, 16.367826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885193, 40.551739, 16.548998>,  <45.147274, 40.540009, 16.850950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885193, 40.551739, 16.548998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753764, 0.041354, 0.655843,
		0.050451, 0.998714, -0.004990,
		-0.655206, 0.029327, -0.754881,
		44.688629, 40.560535, 16.322535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.709126, 41.143467, 16.955946>,  <45.147274, 40.540009, 16.850950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.709126, 41.143467, 16.955946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.519176, 40.889969, 16.711695>,  <44.405209, 40.737869, 16.565144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.519176, 40.889969, 16.711695>,  <44.709126, 41.143467, 16.955946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519176, 40.889969, 16.711695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775486, -0.026706, 0.630799,
		-0.416072, 0.773082, -0.478777,
		-0.474873, -0.633744, -0.610627,
		44.376713, 40.699844, 16.528507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.933403, 41.341572, 16.918242>,  <44.709126, 41.143467, 16.955946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.933403, 41.341572, 16.918242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951588, 40.957287, 16.808727>,  <43.962498, 40.726715, 16.743019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951588, 40.957287, 16.808727>,  <43.933403, 41.341572, 16.918242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.951588, 40.957287, 16.808727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782928, -0.204484, 0.587546,
		-0.620450, 0.187646, -0.761466,
		0.045457, -0.960716, -0.273785,
		43.965225, 40.669071, 16.726591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314651, 41.172344, 17.133755>,  <43.933403, 41.341572, 16.918242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314651, 41.172344, 17.133755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477467, 40.812302, 17.071619>,  <43.575157, 40.596275, 17.034338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477467, 40.812302, 17.071619>,  <43.314651, 41.172344, 17.133755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477467, 40.812302, 17.071619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726657, -0.422143, 0.542001,
		-0.553434, -0.107735, -0.825896,
		0.407038, -0.900105, -0.155342,
		43.599579, 40.542271, 17.025017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753197, 40.687641, 16.968838>,  <43.314651, 41.172344, 17.133755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753197, 40.687641, 16.968838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056831, 40.451988, 17.079622>,  <43.239014, 40.310596, 17.146093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056831, 40.451988, 17.079622>,  <42.753197, 40.687641, 16.968838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056831, 40.451988, 17.079622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644873, -0.622347, 0.443646,
		-0.088998, -0.515374, -0.852332,
		0.759090, -0.589129, 0.276963,
		43.284557, 40.275249, 17.162712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542652, 39.977322, 16.906149>,  <42.753197, 40.687641, 16.968838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542652, 39.977322, 16.906149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852913, 39.969799, 17.158501>,  <43.039070, 39.965286, 17.309912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852913, 39.969799, 17.158501>,  <42.542652, 39.977322, 16.906149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852913, 39.969799, 17.158501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553844, -0.499640, 0.666045,
		0.302684, -0.866029, -0.397966,
		0.775654, -0.018810, 0.630878,
		43.085609, 39.964157, 17.347763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779888, 39.274490, 16.981712>,  <42.542652, 39.977322, 16.906149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779888, 39.274490, 16.981712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872086, 39.500286, 17.298754>,  <42.927406, 39.635765, 17.488979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872086, 39.500286, 17.298754>,  <42.779888, 39.274490, 16.981712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872086, 39.500286, 17.298754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688352, -0.481137, 0.542843,
		0.687781, -0.670714, 0.277668,
		0.230495, 0.564490, 0.792605,
		42.941235, 39.669632, 17.536535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818684, 38.719814, 17.573559>,  <42.779888, 39.274490, 16.981712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818684, 38.719814, 17.573559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758961, 39.089272, 17.714752>,  <42.723125, 39.310944, 17.799469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758961, 39.089272, 17.714752>,  <42.818684, 38.719814, 17.573559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758961, 39.089272, 17.714752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658948, -0.359106, 0.660931,
		0.737220, -0.133914, 0.662248,
		-0.149309, 0.923639, 0.352983,
		42.714169, 39.366364, 17.820646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630768, 38.570892, 18.333038>,  <42.818684, 38.719814, 17.573559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630768, 38.570892, 18.333038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563198, 38.955219, 18.245134>,  <42.522655, 39.185814, 18.192392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563198, 38.955219, 18.245134>,  <42.630768, 38.570892, 18.333038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563198, 38.955219, 18.245134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725750, 0.029607, 0.687322,
		0.666896, 0.275600, 0.692311,
		-0.168928, 0.960816, -0.219762,
		42.512520, 39.243465, 18.179205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529228, 38.933540, 19.096151>,  <42.630768, 38.570892, 18.333038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529228, 38.933540, 19.096151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355766, 39.166798, 18.821377>,  <42.251690, 39.306751, 18.656511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355766, 39.166798, 18.821377>,  <42.529228, 38.933540, 19.096151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355766, 39.166798, 18.821377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692030, 0.272709, 0.668374,
		0.577095, 0.765225, 0.285294,
		-0.433654, 0.583148, -0.686938,
		42.225670, 39.341743, 18.615295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486794, 39.589127, 19.385462>,  <42.529228, 38.933540, 19.096151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486794, 39.589127, 19.385462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203400, 39.555496, 19.105181>,  <42.033363, 39.535316, 18.937012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203400, 39.555496, 19.105181>,  <42.486794, 39.589127, 19.385462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203400, 39.555496, 19.105181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704958, 0.130631, 0.697115,
		0.032922, 0.987859, -0.151820,
		-0.708484, -0.084076, -0.700701,
		41.990856, 39.530273, 18.894970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056595, 40.134609, 19.536139>,  <42.486794, 39.589127, 19.385462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056595, 40.134609, 19.536139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826469, 39.899677, 19.308432>,  <41.688396, 39.758720, 19.171806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826469, 39.899677, 19.308432>,  <42.056595, 40.134609, 19.536139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826469, 39.899677, 19.308432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687488, -0.029852, 0.725582,
		-0.443146, 0.808800, -0.386605,
		-0.575310, -0.587325, -0.569269,
		41.653877, 39.723480, 19.137651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423557, 40.355377, 19.632797>,  <42.056595, 40.134609, 19.536139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423557, 40.355377, 19.632797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352695, 39.982990, 19.505096>,  <41.310177, 39.759560, 19.428476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352695, 39.982990, 19.505096>,  <41.423557, 40.355377, 19.632797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352695, 39.982990, 19.505096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710320, -0.103582, 0.696216,
		-0.681220, 0.350111, -0.642932,
		-0.177156, -0.930964, -0.319253,
		41.299549, 39.703701, 19.409321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791794, 40.331318, 19.681253>,  <41.423557, 40.355377, 19.632797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791794, 40.331318, 19.681253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914406, 39.951046, 19.700237>,  <40.987972, 39.722885, 19.711628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914406, 39.951046, 19.700237>,  <40.791794, 40.331318, 19.681253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914406, 39.951046, 19.700237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696138, -0.189895, 0.692338,
		-0.649179, -0.245257, -0.720011,
		0.306527, -0.950678, 0.047457,
		41.006363, 39.665844, 19.714474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163574, 39.988243, 19.724247>,  <40.791794, 40.331318, 19.681253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163574, 39.988243, 19.724247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408573, 39.701397, 19.857267>,  <40.555573, 39.529289, 19.937080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408573, 39.701397, 19.857267>,  <40.163574, 39.988243, 19.724247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408573, 39.701397, 19.857267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617326, -0.171189, 0.767856,
		-0.493712, -0.675604, -0.547546,
		0.612500, -0.717115, 0.332550,
		40.592323, 39.486263, 19.957033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730091, 39.475277, 20.017887>,  <40.163574, 39.988243, 19.724247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730091, 39.475277, 20.017887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085819, 39.384708, 20.176804>,  <40.299255, 39.330368, 20.272154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085819, 39.384708, 20.176804>,  <39.730091, 39.475277, 20.017887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085819, 39.384708, 20.176804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452320, -0.307935, 0.837008,
		-0.067181, -0.924071, -0.376270,
		0.889322, -0.226425, 0.397289,
		40.352615, 39.316780, 20.295990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698219, 38.662125, 20.173128>,  <39.730091, 39.475277, 20.017887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698219, 38.662125, 20.173128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972984, 38.838524, 20.404184>,  <40.137844, 38.944363, 20.542818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972984, 38.838524, 20.404184>,  <39.698219, 38.662125, 20.173128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972984, 38.838524, 20.404184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435519, -0.386501, 0.812982,
		0.581782, -0.810024, -0.073430,
		0.686916, 0.440998, 0.577640,
		40.179058, 38.970821, 20.577477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048199, 38.152336, 20.550940>,  <39.698219, 38.662125, 20.173128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048199, 38.152336, 20.550940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133633, 38.478016, 20.766890>,  <40.184895, 38.673424, 20.896460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133633, 38.478016, 20.766890>,  <40.048199, 38.152336, 20.550940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133633, 38.478016, 20.766890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399655, -0.431447, 0.808783,
		0.891435, -0.388509, 0.233246,
		0.213586, 0.814196, 0.539876,
		40.197708, 38.722275, 20.928852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261093, 37.903263, 21.107651>,  <40.048199, 38.152336, 20.550940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261093, 37.903263, 21.107651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210503, 38.283035, 21.222601>,  <40.180149, 38.510899, 21.291571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210503, 38.283035, 21.222601>,  <40.261093, 37.903263, 21.107651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210503, 38.283035, 21.222601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477519, -0.312199, 0.821284,
		0.869471, -0.033359, 0.492856,
		-0.126472, 0.949431, 0.287377,
		40.172562, 38.567863, 21.308815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492374, 37.995548, 21.870569>,  <40.261093, 37.903263, 21.107651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492374, 37.995548, 21.870569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255100, 38.311459, 21.808098>,  <40.112736, 38.501003, 21.770615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255100, 38.311459, 21.808098>,  <40.492374, 37.995548, 21.870569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255100, 38.311459, 21.808098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560106, -0.265503, 0.784723,
		0.578287, 0.552961, 0.599849,
		-0.593183, 0.789774, -0.156180,
		40.077145, 38.548389, 21.761244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290001, 38.277596, 22.506348>,  <40.492374, 37.995548, 21.870569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290001, 38.277596, 22.506348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015064, 38.426071, 22.256617>,  <39.850101, 38.515156, 22.106777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015064, 38.426071, 22.256617>,  <40.290001, 38.277596, 22.506348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015064, 38.426071, 22.256617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691579, -0.071725, 0.718731,
		0.222004, 0.925784, 0.306005,
		-0.687338, 0.371187, -0.624329,
		39.808865, 38.537426, 22.069319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930775, 38.714676, 22.861069>,  <40.290001, 38.277596, 22.506348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930775, 38.714676, 22.861069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677368, 38.618668, 22.566845>,  <39.525326, 38.561062, 22.390310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677368, 38.618668, 22.566845>,  <39.930775, 38.714676, 22.861069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677368, 38.618668, 22.566845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682424, -0.274678, 0.677384,
		-0.364626, 0.931098, 0.010219,
		-0.633518, -0.240018, -0.735559,
		39.487312, 38.546661, 22.346178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272835, 39.030285, 22.959766>,  <39.930775, 38.714676, 22.861069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272835, 39.030285, 22.959766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206543, 38.702923, 22.739674>,  <39.166767, 38.506508, 22.607618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206543, 38.702923, 22.739674>,  <39.272835, 39.030285, 22.959766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206543, 38.702923, 22.739674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528293, -0.397458, 0.750289,
		-0.832731, 0.415025, -0.366487,
		-0.165726, -0.818402, -0.550230,
		39.156826, 38.457401, 22.574604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581898, 38.804581, 23.053730>,  <39.272835, 39.030285, 22.959766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581898, 38.804581, 23.053730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674084, 38.460018, 22.872681>,  <38.729393, 38.253281, 22.764051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674084, 38.460018, 22.872681>,  <38.581898, 38.804581, 23.053730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674084, 38.460018, 22.872681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528042, -0.501411, 0.685390,
		-0.817349, 0.081048, -0.570414,
		0.230462, -0.861405, -0.452624,
		38.743221, 38.201595, 22.736893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910328, 38.447556, 22.845612>,  <38.581898, 38.804581, 23.053730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910328, 38.447556, 22.845612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196171, 38.169445, 22.876398>,  <38.367676, 38.002579, 22.894869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196171, 38.169445, 22.876398>,  <37.910328, 38.447556, 22.845612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196171, 38.169445, 22.876398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531763, -0.468450, 0.705537,
		-0.454488, -0.545112, -0.704481,
		0.714611, -0.695275, 0.076966,
		38.410553, 37.960861, 22.899488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579193, 37.775745, 22.764236>,  <37.910328, 38.447556, 22.845612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579193, 37.775745, 22.764236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919033, 37.708099, 22.964069>,  <38.122936, 37.667511, 23.083969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919033, 37.708099, 22.964069>,  <37.579193, 37.775745, 22.764236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919033, 37.708099, 22.964069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461058, -0.698142, 0.547744,
		0.256146, -0.695699, -0.671113,
		0.849597, -0.169119, 0.499583,
		38.173912, 37.657364, 23.113945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525402, 37.111450, 22.895792>,  <37.579193, 37.775745, 22.764236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525402, 37.111450, 22.895792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821323, 37.190041, 23.153189>,  <37.998878, 37.237194, 23.307627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821323, 37.190041, 23.153189>,  <37.525402, 37.111450, 22.895792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821323, 37.190041, 23.153189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467156, -0.538290, 0.701433,
		0.484203, -0.819536, -0.306445,
		0.739806, 0.196478, 0.643493,
		38.043266, 37.248985, 23.346237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657536, 36.459743, 23.237896>,  <37.525402, 37.111450, 22.895792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657536, 36.459743, 23.237896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800686, 36.749195, 23.473959>,  <37.886578, 36.922867, 23.615597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800686, 36.749195, 23.473959>,  <37.657536, 36.459743, 23.237896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800686, 36.749195, 23.473959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372682, -0.468806, 0.800830,
		0.856174, -0.506538, 0.101910,
		0.357875, 0.723630, 0.590157,
		37.908047, 36.966286, 23.651007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018066, 36.100208, 23.821676>,  <37.657536, 36.459743, 23.237896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018066, 36.100208, 23.821676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926723, 36.468834, 23.947262>,  <37.871918, 36.690010, 24.022614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926723, 36.468834, 23.947262>,  <38.018066, 36.100208, 23.821676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926723, 36.468834, 23.947262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221369, -0.363186, 0.905037,
		0.948077, 0.137167, 0.286941,
		-0.228354, 0.921564, 0.313964,
		37.858219, 36.745304, 24.041451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299374, 36.116482, 24.514393>,  <38.018066, 36.100208, 23.821676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299374, 36.116482, 24.514393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020287, 36.401241, 24.482431>,  <37.852833, 36.572098, 24.463255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020287, 36.401241, 24.482431>,  <38.299374, 36.116482, 24.514393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020287, 36.401241, 24.482431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497720, -0.401515, 0.768805,
		0.515232, 0.576178, 0.634472,
		-0.697718, 0.711902, -0.079901,
		37.810970, 36.614811, 24.458462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170853, 36.438343, 25.241236>,  <38.299374, 36.116482, 24.514393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170853, 36.438343, 25.241236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835247, 36.539158, 25.048353>,  <37.633884, 36.599648, 24.932623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835247, 36.539158, 25.048353>,  <38.170853, 36.438343, 25.241236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835247, 36.539158, 25.048353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534709, -0.217968, 0.816441,
		0.100671, 0.942850, 0.317648,
		-0.839018, 0.252042, -0.482207,
		37.583542, 36.614769, 24.903690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808083, 36.881477, 25.763329>,  <38.170853, 36.438343, 25.241236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808083, 36.881477, 25.763329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514236, 36.770390, 25.515713>,  <37.337929, 36.703739, 25.367144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514236, 36.770390, 25.515713>,  <37.808083, 36.881477, 25.763329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514236, 36.770390, 25.515713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560782, -0.265053, 0.784391,
		-0.381917, 0.923375, 0.038974,
		-0.734617, -0.277716, -0.619040,
		37.293850, 36.687073, 25.330000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254776, 37.151604, 26.112232>,  <37.808083, 36.881477, 25.763329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254776, 37.151604, 26.112232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132828, 36.871960, 25.853529>,  <37.059658, 36.704174, 25.698307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132828, 36.871960, 25.853529>,  <37.254776, 37.151604, 26.112232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132828, 36.871960, 25.853529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724384, -0.270663, 0.634042,
		-0.618319, 0.661803, -0.423907,
		-0.304875, -0.699112, -0.646756,
		37.041367, 36.662228, 25.659502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530319, 37.112373, 25.968969>,  <37.254776, 37.151604, 26.112232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530319, 37.112373, 25.968969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615311, 36.743153, 25.840706>,  <36.666306, 36.521618, 25.763748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615311, 36.743153, 25.840706>,  <36.530319, 37.112373, 25.968969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615311, 36.743153, 25.840706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742020, -0.365930, 0.561695,
		-0.635814, 0.118587, -0.762678,
		0.212477, -0.923056, -0.320658,
		36.679054, 36.466236, 25.744509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906826, 36.879669, 25.754255>,  <36.530319, 37.112373, 25.968969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906826, 36.879669, 25.754255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140442, 36.561222, 25.817621>,  <36.280613, 36.370155, 25.855640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140442, 36.561222, 25.817621>,  <35.906826, 36.879669, 25.754255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140442, 36.561222, 25.817621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732570, -0.432898, 0.525300,
		-0.349620, -0.422850, -0.836040,
		0.584044, -0.796113, 0.158417,
		36.315655, 36.322388, 25.865147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446873, 36.463577, 25.771681>,  <35.906826, 36.879669, 25.754255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446873, 36.463577, 25.771681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732094, 36.230377, 25.927458>,  <35.903225, 36.090458, 26.020924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732094, 36.230377, 25.927458>,  <35.446873, 36.463577, 25.771681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732094, 36.230377, 25.927458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699746, -0.626423, 0.343439,
		0.043732, -0.517402, -0.854624,
		0.713052, -0.583000, 0.389445,
		35.946011, 36.055477, 26.044291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385159, 35.668468, 25.476925>,  <35.446873, 36.463577, 25.771681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385159, 35.668468, 25.476925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558811, 35.690563, 25.836586>,  <35.663002, 35.703819, 26.052383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558811, 35.690563, 25.836586>,  <35.385159, 35.668468, 25.476925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558811, 35.690563, 25.836586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795271, -0.445356, 0.411341,
		0.423166, -0.893648, -0.149413,
		0.434136, 0.055241, 0.899152,
		35.689053, 35.707134, 26.106331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329567, 35.222195, 24.995272>,  <35.385159, 35.668468, 25.476925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329567, 35.222195, 24.995272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984909, 35.384495, 24.873327>,  <34.778114, 35.481876, 24.800161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984909, 35.384495, 24.873327>,  <35.329567, 35.222195, 24.995272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984909, 35.384495, 24.873327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350019, 0.040115, -0.935883,
		-0.367504, -0.913104, -0.176585,
		-0.861642, 0.405749, -0.304862,
		34.726418, 35.506218, 24.781868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512386, 35.253391, 24.260939>,  <35.329567, 35.222195, 24.995272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512386, 35.253391, 24.260939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174168, 35.466614, 24.272970>,  <34.971237, 35.594547, 24.280190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174168, 35.466614, 24.272970>,  <35.512386, 35.253391, 24.260939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174168, 35.466614, 24.272970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313019, 0.540581, -0.780892,
		-0.432518, -0.650865, -0.623942,
		-0.845546, 0.533055, 0.030078,
		34.920506, 35.626530, 24.281994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152100, 35.209412, 23.623505>,  <35.512386, 35.253391, 24.260939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152100, 35.209412, 23.623505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011715, 35.557487, 23.761833>,  <34.927486, 35.766335, 23.844831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011715, 35.557487, 23.761833>,  <35.152100, 35.209412, 23.623505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011715, 35.557487, 23.761833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285688, 0.451213, -0.845452,
		-0.891746, -0.197922, -0.406961,
		-0.350959, 0.870192, 0.345823,
		34.906425, 35.818546, 23.865580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629498, 35.509800, 23.124323>,  <35.152100, 35.209412, 23.623505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629498, 35.509800, 23.124323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752792, 35.821964, 23.341927>,  <34.826771, 36.009262, 23.472488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752792, 35.821964, 23.341927>,  <34.629498, 35.509800, 23.124323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752792, 35.821964, 23.341927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390406, 0.417708, -0.820429,
		-0.867509, 0.465273, -0.175924,
		0.308238, 0.780411, 0.544011,
		34.845264, 36.056087, 23.505129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288662, 36.136894, 22.889532>,  <34.629498, 35.509800, 23.124323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288662, 36.136894, 22.889532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630142, 36.233288, 23.074194>,  <34.835030, 36.291126, 23.184992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630142, 36.233288, 23.074194>,  <34.288662, 36.136894, 22.889532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630142, 36.233288, 23.074194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283144, 0.529220, -0.799847,
		-0.437070, 0.813543, 0.383559,
		0.853697, 0.240987, 0.461656,
		34.886250, 36.305584, 23.212690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262875, 36.827625, 22.868668>,  <34.288662, 36.136894, 22.889532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262875, 36.827625, 22.868668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651920, 36.799221, 22.957199>,  <34.885345, 36.782181, 23.010319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651920, 36.799221, 22.957199>,  <34.262875, 36.827625, 22.868668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651920, 36.799221, 22.957199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208279, 0.688957, -0.694232,
		-0.103190, 0.721316, 0.684876,
		0.972611, -0.071007, 0.221329,
		34.943703, 36.777920, 23.023598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475163, 37.526215, 22.780222>,  <34.262875, 36.827625, 22.868668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475163, 37.526215, 22.780222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807579, 37.303932, 22.789703>,  <35.007030, 37.170563, 22.795393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807579, 37.303932, 22.789703>,  <34.475163, 37.526215, 22.780222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807579, 37.303932, 22.789703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371299, 0.522524, -0.767532,
		0.414136, 0.646653, 0.640572,
		0.831041, -0.555706, 0.023705,
		35.056892, 37.137218, 22.796816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042648, 37.967701, 22.934484>,  <34.475163, 37.526215, 22.780222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042648, 37.967701, 22.934484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210239, 37.653591, 22.752144>,  <35.310795, 37.465126, 22.642740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210239, 37.653591, 22.752144>,  <35.042648, 37.967701, 22.934484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210239, 37.653591, 22.752144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581071, 0.617666, -0.529949,
		0.697718, -0.042842, 0.715090,
		0.418983, -0.785273, -0.455851,
		35.335934, 37.418011, 22.615389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705040, 38.245098, 22.846752>,  <35.042648, 37.967701, 22.934484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705040, 38.245098, 22.846752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703957, 37.931179, 22.598854>,  <35.703308, 37.742828, 22.450115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703957, 37.931179, 22.598854>,  <35.705040, 38.245098, 22.846752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703957, 37.931179, 22.598854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623764, 0.483075, -0.614457,
		0.781608, -0.388238, 0.488221,
		-0.002708, -0.784799, -0.619744,
		35.703144, 37.695740, 22.412931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431416, 38.054920, 22.747562>,  <35.705040, 38.245098, 22.846752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431416, 38.054920, 22.747562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253094, 37.879910, 22.435196>,  <36.146103, 37.774902, 22.247776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253094, 37.879910, 22.435196>,  <36.431416, 38.054920, 22.747562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253094, 37.879910, 22.435196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676220, 0.407002, -0.614064,
		0.586504, -0.801823, 0.114422,
		-0.445801, -0.437525, -0.780918,
		36.119354, 37.748653, 22.200920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903412, 37.786484, 22.384945>,  <36.431416, 38.054920, 22.747562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903412, 37.786484, 22.384945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613651, 37.828075, 22.112349>,  <36.439796, 37.853031, 21.948790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613651, 37.828075, 22.112349>,  <36.903412, 37.786484, 22.384945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613651, 37.828075, 22.112349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674554, 0.310825, -0.669601,
		0.142202, -0.944763, -0.295299,
		-0.724400, 0.103977, -0.681493,
		36.396332, 37.859268, 21.907900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286148, 37.554451, 21.769304>,  <36.903412, 37.786484, 22.384945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286148, 37.554451, 21.769304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943298, 37.705166, 21.628813>,  <36.737587, 37.795593, 21.544518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943298, 37.705166, 21.628813>,  <37.286148, 37.554451, 21.769304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943298, 37.705166, 21.628813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461245, 0.257863, -0.848976,
		-0.229314, -0.889684, -0.394813,
		-0.857128, 0.376788, -0.351231,
		36.686161, 37.818203, 21.523443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084740, 37.249516, 21.063028>,  <37.286148, 37.554451, 21.769304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084740, 37.249516, 21.063028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922932, 37.612675, 21.106998>,  <36.825848, 37.830570, 21.133381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922932, 37.612675, 21.106998>,  <37.084740, 37.249516, 21.063028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922932, 37.612675, 21.106998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498229, 0.319579, -0.806001,
		-0.766897, -0.271275, -0.581618,
		-0.404521, 0.907898, 0.109927,
		36.801575, 37.885044, 21.139977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794170, 37.401653, 20.420906>,  <37.084740, 37.249516, 21.063028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794170, 37.401653, 20.420906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816311, 37.752892, 20.611013>,  <36.829597, 37.963634, 20.725079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816311, 37.752892, 20.611013>,  <36.794170, 37.401653, 20.420906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816311, 37.752892, 20.611013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262423, 0.446469, -0.855453,
		-0.963364, 0.172076, -0.205718,
		0.055356, 0.878097, 0.475269,
		36.832916, 38.016319, 20.753593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357311, 37.962589, 20.021349>,  <36.794170, 37.401653, 20.420906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357311, 37.962589, 20.021349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632423, 38.145786, 20.246632>,  <36.797489, 38.255703, 20.381802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632423, 38.145786, 20.246632>,  <36.357311, 37.962589, 20.021349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632423, 38.145786, 20.246632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446710, 0.344530, -0.825681,
		-0.572195, 0.819478, 0.032372,
		0.687781, 0.457990, 0.563208,
		36.838757, 38.283184, 20.415594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468300, 38.593529, 19.710903>,  <36.357311, 37.962589, 20.021349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468300, 38.593529, 19.710903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793583, 38.574257, 19.942892>,  <36.988754, 38.562695, 20.082087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793583, 38.574257, 19.942892>,  <36.468300, 38.593529, 19.710903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793583, 38.574257, 19.942892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546287, 0.406794, -0.732181,
		-0.200653, 0.912248, 0.357129,
		0.813209, -0.048180, 0.579974,
		37.037544, 38.559803, 20.116884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837269, 39.277840, 19.595480>,  <36.468300, 38.593529, 19.710903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837269, 39.277840, 19.595480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112942, 39.038193, 19.758493>,  <37.278347, 38.894405, 19.856302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112942, 39.038193, 19.758493>,  <36.837269, 39.277840, 19.595480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112942, 39.038193, 19.758493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713196, 0.461556, -0.527557,
		0.127968, 0.654236, 0.745385,
		0.689184, -0.599116, 0.407535,
		37.319698, 38.858459, 19.880754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395992, 39.715115, 19.917591>,  <36.837269, 39.277840, 19.595480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395992, 39.715115, 19.917591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534702, 39.350342, 19.829836>,  <37.617928, 39.131477, 19.777184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534702, 39.350342, 19.829836>,  <37.395992, 39.715115, 19.917591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534702, 39.350342, 19.829836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740925, 0.409755, -0.532101,
		0.575134, 0.021970, 0.817764,
		0.346773, -0.911931, -0.219386,
		37.638733, 39.076763, 19.764021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016193, 39.933475, 19.674696>,  <37.395992, 39.715115, 19.917591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016193, 39.933475, 19.674696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979656, 39.557678, 19.542635>,  <37.957733, 39.332199, 19.463398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979656, 39.557678, 19.542635>,  <38.016193, 39.933475, 19.674696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979656, 39.557678, 19.542635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539812, 0.231886, -0.809217,
		0.836815, -0.252137, 0.485971,
		-0.091344, -0.939498, -0.330152,
		37.952251, 39.275829, 19.443590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763275, 39.631145, 19.674921>,  <38.016193, 39.933475, 19.674696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763275, 39.631145, 19.674921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523300, 39.416252, 19.437786>,  <38.379314, 39.287315, 19.295506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523300, 39.416252, 19.437786>,  <38.763275, 39.631145, 19.674921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523300, 39.416252, 19.437786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654796, 0.096044, -0.749679,
		0.459688, -0.837950, 0.294154,
		-0.599941, -0.537229, -0.592836,
		38.343319, 39.255085, 19.259935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234825, 39.071644, 19.259785>,  <38.763275, 39.631145, 19.674921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234825, 39.071644, 19.259785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886200, 39.109798, 19.067417>,  <38.677025, 39.132690, 18.951996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886200, 39.109798, 19.067417>,  <39.234825, 39.071644, 19.259785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886200, 39.109798, 19.067417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490245, 0.156582, -0.857404,
		-0.006485, -0.983047, -0.183235,
		-0.871561, 0.095391, -0.480918,
		38.624733, 39.138416, 18.923141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247963, 38.548244, 18.766598>,  <39.234825, 39.071644, 19.259785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247963, 38.548244, 18.766598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031891, 38.869957, 18.667530>,  <38.902248, 39.062984, 18.608089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031891, 38.869957, 18.667530>,  <39.247963, 38.548244, 18.766598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031891, 38.869957, 18.667530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656804, 0.218923, -0.721582,
		-0.526134, -0.552453, -0.646512,
		-0.540177, 0.804281, -0.247670,
		38.869839, 39.111240, 18.593229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015537, 38.556477, 18.016315>,  <39.247963, 38.548244, 18.766598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015537, 38.556477, 18.016315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964264, 38.945782, 18.092558>,  <38.933498, 39.179363, 18.138304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964264, 38.945782, 18.092558>,  <39.015537, 38.556477, 18.016315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964264, 38.945782, 18.092558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557977, 0.229661, -0.797444,
		-0.819897, 0.004135, -0.572497,
		-0.128182, 0.973262, 0.190605,
		38.925808, 39.237759, 18.149740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861702, 38.859112, 17.367138>,  <39.015537, 38.556477, 18.016315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861702, 38.859112, 17.367138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981148, 39.160797, 17.601057>,  <39.052814, 39.341808, 17.741409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981148, 39.160797, 17.601057>,  <38.861702, 38.859112, 17.367138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981148, 39.160797, 17.601057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700089, 0.243335, -0.671315,
		-0.648618, 0.609875, -0.455354,
		0.298614, 0.754215, 0.584798,
		39.070732, 39.387062, 17.776497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849510, 39.496571, 16.990252>,  <38.861702, 38.859112, 17.367138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849510, 39.496571, 16.990252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092022, 39.599327, 17.291300>,  <39.237530, 39.660980, 17.471930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092022, 39.599327, 17.291300>,  <38.849510, 39.496571, 16.990252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092022, 39.599327, 17.291300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613543, 0.451021, -0.648186,
		-0.505959, 0.854745, 0.115831,
		0.606275, 0.256888, 0.752621,
		39.273903, 39.676395, 17.517086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111179, 40.217419, 16.834217>,  <38.849510, 39.496571, 16.990252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111179, 40.217419, 16.834217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364178, 40.093403, 17.118141>,  <39.515976, 40.018993, 17.288496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364178, 40.093403, 17.118141>,  <39.111179, 40.217419, 16.834217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364178, 40.093403, 17.118141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687987, 0.645877, -0.330934,
		-0.355849, 0.697653, 0.621813,
		0.632491, -0.310037, 0.709811,
		39.553925, 40.000393, 17.331085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350182, 40.821274, 17.150137>,  <39.111179, 40.217419, 16.834217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350182, 40.821274, 17.150137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618427, 40.529728, 17.205315>,  <39.779377, 40.354801, 17.238422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618427, 40.529728, 17.205315>,  <39.350182, 40.821274, 17.150137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618427, 40.529728, 17.205315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723621, 0.601846, -0.337866,
		0.163237, 0.326399, 0.931031,
		0.670616, -0.728866, 0.137945,
		39.819611, 40.311069, 17.246698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923943, 41.185959, 17.464598>,  <39.350182, 40.821274, 17.150137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923943, 41.185959, 17.464598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037476, 40.844688, 17.289541>,  <40.105595, 40.639927, 17.184507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037476, 40.844688, 17.289541>,  <39.923943, 41.185959, 17.464598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037476, 40.844688, 17.289541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687527, 0.499226, -0.527333,
		0.668389, -0.151214, 0.728279,
		0.283836, -0.853175, -0.437641,
		40.122627, 40.588737, 17.158249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637074, 41.121666, 17.594255>,  <39.923943, 41.185959, 17.464598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637074, 41.121666, 17.594255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565945, 40.912502, 17.260803>,  <40.523266, 40.787003, 17.060732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.565945, 40.912502, 17.260803>,  <40.637074, 41.121666, 17.594255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565945, 40.912502, 17.260803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827993, 0.378293, -0.413911,
		0.531796, -0.763845, 0.365697,
		-0.177823, -0.522911, -0.833633,
		40.512596, 40.755630, 17.010714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324814, 40.906143, 17.513733>,  <40.637074, 41.121666, 17.594255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324814, 40.906143, 17.513733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130802, 40.859745, 17.167027>,  <41.014393, 40.831905, 16.959002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130802, 40.859745, 17.167027>,  <41.324814, 40.906143, 17.513733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130802, 40.859745, 17.167027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738996, 0.475588, -0.477180,
		0.467580, -0.871986, -0.144948,
		-0.485030, -0.116004, -0.866769,
		40.985291, 40.824947, 16.906996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812664, 40.709877, 17.030586>,  <41.324814, 40.906143, 17.513733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812664, 40.709877, 17.030586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509418, 40.837040, 16.802830>,  <41.327473, 40.913338, 16.666176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509418, 40.837040, 16.802830>,  <41.812664, 40.709877, 17.030586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509418, 40.837040, 16.802830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646852, 0.477417, -0.594690,
		0.082780, -0.819151, -0.567573,
		-0.758109, 0.317907, -0.569390,
		41.281986, 40.932411, 16.632013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983891, 40.485886, 16.384443>,  <41.812664, 40.709877, 17.030586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983891, 40.485886, 16.384443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715969, 40.780548, 16.347132>,  <41.555218, 40.957344, 16.324745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715969, 40.780548, 16.347132>,  <41.983891, 40.485886, 16.384443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715969, 40.780548, 16.347132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543474, 0.400757, -0.737584,
		-0.505962, -0.544732, -0.668782,
		-0.669804, 0.736655, -0.093280,
		41.515026, 41.001545, 16.319147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869110, 40.494144, 15.723896>,  <41.983891, 40.485886, 16.384443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869110, 40.494144, 15.723896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750057, 40.859386, 15.835364>,  <41.678627, 41.078533, 15.902246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750057, 40.859386, 15.835364>,  <41.869110, 40.494144, 15.723896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750057, 40.859386, 15.835364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486685, 0.396241, -0.778544,
		-0.821313, -0.096091, -0.562327,
		-0.297628, 0.913105, 0.278672,
		41.660770, 41.133316, 15.918966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737610, 40.951134, 15.096154>,  <41.869110, 40.494144, 15.723896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737610, 40.951134, 15.096154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761993, 41.242043, 15.369611>,  <41.776623, 41.416588, 15.533685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.761993, 41.242043, 15.369611>,  <41.737610, 40.951134, 15.096154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761993, 41.242043, 15.369611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389237, 0.613370, -0.687220,
		-0.919118, 0.307992, -0.245688,
		0.060961, 0.727267, 0.683642,
		41.780281, 41.460224, 15.574703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434818, 41.604889, 14.825756>,  <41.737610, 40.951134, 15.096154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434818, 41.604889, 14.825756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682728, 41.714108, 15.120056>,  <41.831474, 41.779640, 15.296637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682728, 41.714108, 15.120056>,  <41.434818, 41.604889, 14.825756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682728, 41.714108, 15.120056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439233, 0.656236, -0.613537,
		-0.650352, 0.703418, 0.286783,
		0.619771, 0.273051, 0.735750,
		41.868660, 41.796024, 15.340781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522892, 42.434353, 14.823156>,  <41.434818, 41.604889, 14.825756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522892, 42.434353, 14.823156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835484, 42.318619, 15.044270>,  <42.023041, 42.249176, 15.176938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835484, 42.318619, 15.044270>,  <41.522892, 42.434353, 14.823156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835484, 42.318619, 15.044270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585499, 0.646208, -0.489495,
		-0.215584, 0.706186, 0.674407,
		0.781482, -0.289337, 0.552784,
		42.069927, 42.231819, 15.210105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720989, 43.015907, 15.271379>,  <41.522892, 42.434353, 14.823156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720989, 43.015907, 15.271379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049877, 42.788578, 15.258966>,  <42.247211, 42.652180, 15.251519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049877, 42.788578, 15.258966>,  <41.720989, 43.015907, 15.271379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049877, 42.788578, 15.258966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547141, 0.804239, -0.232025,
		0.156822, 0.173797, 0.972214,
		0.822218, -0.568325, -0.031030,
		42.296543, 42.618080, 15.249658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302803, 43.359982, 15.596857>,  <41.720989, 43.015907, 15.271379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302803, 43.359982, 15.596857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486759, 43.093212, 15.362349>,  <42.597134, 42.933151, 15.221643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486759, 43.093212, 15.362349>,  <42.302803, 43.359982, 15.596857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486759, 43.093212, 15.362349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688484, 0.684774, -0.238902,
		0.560792, -0.293770, 0.774087,
		0.459893, -0.666921, -0.586272,
		42.624725, 42.893135, 15.186467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120232, 44.045673, 15.192307>,  <42.302803, 43.359982, 15.596857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120232, 44.045673, 15.192307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924995, 44.389225, 15.254396>,  <41.807854, 44.595356, 15.291650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924995, 44.389225, 15.254396>,  <42.120232, 44.045673, 15.192307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924995, 44.389225, 15.254396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543773, -0.438358, 0.715649,
		0.682700, 0.264895, 0.680993,
		-0.488091, 0.858879, 0.155224,
		41.778568, 44.646889, 15.300963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137707, 44.141022, 15.817608>,  <42.120232, 44.045673, 15.192307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137707, 44.141022, 15.817608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833633, 44.380260, 15.716100>,  <41.651188, 44.523804, 15.655195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833633, 44.380260, 15.716100>,  <42.137707, 44.141022, 15.817608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833633, 44.380260, 15.716100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517521, -0.321279, 0.793065,
		0.392797, 0.734208, 0.553759,
		-0.760186, 0.598095, -0.253771,
		41.605579, 44.559689, 15.639969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974655, 44.385094, 16.456795>,  <42.137707, 44.141022, 15.817608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974655, 44.385094, 16.456795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649040, 44.446804, 16.232815>,  <41.453671, 44.483829, 16.098427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649040, 44.446804, 16.232815>,  <41.974655, 44.385094, 16.456795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649040, 44.446804, 16.232815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579796, -0.272958, 0.767679,
		-0.034408, 0.949575, 0.311647,
		-0.814035, 0.154278, -0.559951,
		41.404831, 44.493088, 16.064829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620090, 44.690922, 16.918947>,  <41.974655, 44.385094, 16.456795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620090, 44.690922, 16.918947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377968, 44.546970, 16.634949>,  <41.232697, 44.460598, 16.464550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377968, 44.546970, 16.634949>,  <41.620090, 44.690922, 16.918947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377968, 44.546970, 16.634949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620730, -0.344964, 0.704056,
		-0.498298, 0.866883, -0.014580,
		-0.605304, -0.359880, -0.709995,
		41.196377, 44.439007, 16.421949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959854, 44.783661, 17.182558>,  <41.620090, 44.690922, 16.918947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959854, 44.783661, 17.182558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938110, 44.494640, 16.906887>,  <40.925064, 44.321228, 16.741486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938110, 44.494640, 16.906887>,  <40.959854, 44.783661, 17.182558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938110, 44.494640, 16.906887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587164, -0.535127, 0.607353,
		-0.807641, 0.437672, -0.395169,
		-0.054356, -0.722552, -0.689176,
		40.921803, 44.277874, 16.700134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183853, 44.737526, 17.012686>,  <40.959854, 44.783661, 17.182558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183853, 44.737526, 17.012686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354679, 44.394718, 16.897362>,  <40.457176, 44.189034, 16.828167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354679, 44.394718, 16.897362>,  <40.183853, 44.737526, 17.012686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354679, 44.394718, 16.897362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637844, -0.511536, 0.575748,
		-0.640912, -0.061986, -0.765108,
		0.427069, -0.857023, -0.288312,
		40.482800, 44.137611, 16.810867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603626, 44.282043, 16.921301>,  <40.183853, 44.737526, 17.012686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603626, 44.282043, 16.921301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912754, 44.029293, 16.944937>,  <40.098228, 43.877644, 16.959118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912754, 44.029293, 16.944937>,  <39.603626, 44.282043, 16.921301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912754, 44.029293, 16.944937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555618, -0.628669, 0.544117,
		-0.306665, -0.453334, -0.836926,
		0.772816, -0.631873, 0.059090,
		40.144600, 43.839729, 16.962664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296768, 43.655857, 16.902588>,  <39.603626, 44.282043, 16.921301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296768, 43.655857, 16.902588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657536, 43.560528, 17.046671>,  <39.873997, 43.503330, 17.133121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657536, 43.560528, 17.046671>,  <39.296768, 43.655857, 16.902588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657536, 43.560528, 17.046671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421700, -0.666161, 0.615141,
		0.093357, -0.706706, -0.701321,
		0.901916, -0.238320, 0.360209,
		39.928112, 43.489033, 17.154734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308941, 42.899940, 16.937057>,  <39.296768, 43.655857, 16.902588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308941, 42.899940, 16.937057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621418, 42.999207, 17.166195>,  <39.808907, 43.058765, 17.303677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621418, 42.999207, 17.166195>,  <39.308941, 42.899940, 16.937057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621418, 42.999207, 17.166195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323994, -0.623178, 0.711812,
		0.533632, -0.741661, -0.406419,
		0.781195, 0.248169, 0.572842,
		39.855778, 43.073658, 17.338047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584755, 42.221146, 17.165449>,  <39.308941, 42.899940, 16.937057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584755, 42.221146, 17.165449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689293, 42.521263, 17.408352>,  <39.752018, 42.701332, 17.554094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689293, 42.521263, 17.408352>,  <39.584755, 42.221146, 17.165449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689293, 42.521263, 17.408352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526003, -0.416798, 0.741351,
		0.809332, -0.513169, 0.285726,
		0.261349, 0.750291, 0.607256,
		39.767696, 42.746349, 17.590528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888020, 41.971409, 17.810919>,  <39.584755, 42.221146, 17.165449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888020, 41.971409, 17.810919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723454, 42.325947, 17.895887>,  <39.624714, 42.538670, 17.946869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723454, 42.325947, 17.895887>,  <39.888020, 41.971409, 17.810919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723454, 42.325947, 17.895887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533148, -0.423056, 0.732650,
		0.739250, 0.188172, 0.646607,
		-0.411416, 0.886349, 0.212420,
		39.600029, 42.591850, 17.959614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863823, 41.958179, 18.521044>,  <39.888020, 41.971409, 17.810919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863823, 41.958179, 18.521044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594326, 42.239647, 18.430777>,  <39.432629, 42.408527, 18.376617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594326, 42.239647, 18.430777>,  <39.863823, 41.958179, 18.521044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594326, 42.239647, 18.430777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629360, -0.386362, 0.674263,
		0.387267, 0.596305, 0.703168,
		-0.673743, 0.703665, -0.225666,
		39.392204, 42.450748, 18.363077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695656, 42.242039, 19.210102>,  <39.863823, 41.958179, 18.521044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695656, 42.242039, 19.210102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399101, 42.312809, 18.951166>,  <39.221169, 42.355270, 18.795805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399101, 42.312809, 18.951166>,  <39.695656, 42.242039, 19.210102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399101, 42.312809, 18.951166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667435, -0.294784, 0.683836,
		-0.069839, 0.939043, 0.336632,
		-0.741385, 0.176921, -0.647338,
		39.176685, 42.365887, 18.756966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149406, 42.543655, 19.626972>,  <39.695656, 42.242039, 19.210102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149406, 42.543655, 19.626972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955158, 42.420132, 19.299849>,  <38.838608, 42.346020, 19.103575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955158, 42.420132, 19.299849>,  <39.149406, 42.543655, 19.626972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955158, 42.420132, 19.299849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771735, -0.287980, 0.567004,
		-0.410607, 0.906480, -0.098467,
		-0.485621, -0.308806, -0.817809,
		38.809471, 42.327492, 19.054506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553886, 42.821041, 19.611706>,  <39.149406, 42.543655, 19.626972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553886, 42.821041, 19.611706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447857, 42.525093, 19.364376>,  <38.384239, 42.347523, 19.215979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447857, 42.525093, 19.364376>,  <38.553886, 42.821041, 19.611706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447857, 42.525093, 19.364376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675349, -0.315243, 0.666727,
		-0.688216, 0.594314, -0.416112,
		-0.265069, -0.739873, -0.618325,
		38.368336, 42.303131, 19.178879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752140, 42.904797, 19.498047>,  <38.553886, 42.821041, 19.611706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752140, 42.904797, 19.498047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873226, 42.539597, 19.388647>,  <37.945877, 42.320477, 19.323008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873226, 42.539597, 19.388647>,  <37.752140, 42.904797, 19.498047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873226, 42.539597, 19.388647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804401, -0.398655, 0.440470,
		-0.511181, 0.086670, -0.855092,
		0.302711, -0.912997, -0.273502,
		37.964039, 42.265697, 19.306597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128094, 42.503326, 19.334574>,  <37.752140, 42.904797, 19.498047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128094, 42.503326, 19.334574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401497, 42.218937, 19.400700>,  <37.565540, 42.048302, 19.440376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401497, 42.218937, 19.400700>,  <37.128094, 42.503326, 19.334574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401497, 42.218937, 19.400700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691029, -0.557305, 0.460315,
		-0.235139, -0.428870, -0.872227,
		0.683512, -0.710972, 0.165317,
		37.606552, 42.005646, 19.450294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705296, 41.974049, 19.330791>,  <37.128094, 42.503326, 19.334574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705296, 41.974049, 19.330791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044415, 41.822430, 19.479145>,  <37.247887, 41.731457, 19.568157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044415, 41.822430, 19.479145>,  <36.705296, 41.974049, 19.330791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044415, 41.822430, 19.479145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515297, -0.754076, 0.407232,
		0.125312, -0.536366, -0.834630,
		0.847801, -0.379052, 0.370883,
		37.298756, 41.708714, 19.590410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660259, 41.241211, 19.224133>,  <36.705296, 41.974049, 19.330791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660259, 41.241211, 19.224133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902855, 41.328064, 19.530081>,  <37.048412, 41.380177, 19.713650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902855, 41.328064, 19.530081>,  <36.660259, 41.241211, 19.224133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902855, 41.328064, 19.530081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508950, -0.633059, 0.583272,
		0.610854, -0.743028, -0.273436,
		0.606488, 0.217129, 0.764871,
		37.084801, 41.393204, 19.759542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672962, 40.671803, 19.585396>,  <36.660259, 41.241211, 19.224133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672962, 40.671803, 19.585396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810200, 40.911888, 19.874401>,  <36.892544, 41.055939, 20.047804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810200, 40.911888, 19.874401>,  <36.672962, 40.671803, 19.585396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810200, 40.911888, 19.874401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410413, -0.596100, 0.690091,
		0.844894, -0.533296, 0.041818,
		0.343095, 0.600217, 0.722513,
		36.913128, 41.091953, 20.091156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845016, 40.241993, 20.179390>,  <36.672962, 40.671803, 19.585396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845016, 40.241993, 20.179390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792603, 40.619553, 20.300642>,  <36.761154, 40.846088, 20.373394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792603, 40.619553, 20.300642>,  <36.845016, 40.241993, 20.179390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792603, 40.619553, 20.300642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709046, -0.302935, 0.636777,
		0.692881, -0.131492, 0.708961,
		-0.131038, 0.943897, 0.303131,
		36.753292, 40.902721, 20.391581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007648, 40.258820, 20.929136>,  <36.845016, 40.241993, 20.179390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007648, 40.258820, 20.929136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760597, 40.564041, 20.852947>,  <36.612366, 40.747173, 20.807234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760597, 40.564041, 20.852947>,  <37.007648, 40.258820, 20.929136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760597, 40.564041, 20.852947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716763, -0.446454, 0.535657,
		0.323699, 0.467361, 0.822674,
		-0.617632, 0.763054, -0.190471,
		36.575306, 40.792957, 20.795807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606747, 40.349655, 21.577871>,  <37.007648, 40.258820, 20.929136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606747, 40.349655, 21.577871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374271, 40.561611, 21.330830>,  <36.234787, 40.688786, 21.182606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374271, 40.561611, 21.330830>,  <36.606747, 40.349655, 21.577871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374271, 40.561611, 21.330830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813760, -0.381800, 0.438204,
		-0.003600, 0.757261, 0.653103,
		-0.581190, 0.529891, -0.617603,
		36.199913, 40.720577, 21.145548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991638, 40.673882, 22.023298>,  <36.606747, 40.349655, 21.577871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991638, 40.673882, 22.023298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931973, 40.645420, 21.628798>,  <35.896175, 40.628342, 21.392097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931973, 40.645420, 21.628798>,  <35.991638, 40.673882, 22.023298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931973, 40.645420, 21.628798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925784, -0.340354, 0.164571,
		-0.347384, 0.937601, -0.015105,
		-0.149161, -0.071153, -0.986250,
		35.887226, 40.624073, 21.332922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326450, 40.764545, 22.023951>,  <35.991638, 40.673882, 22.023298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326450, 40.764545, 22.023951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422230, 40.609577, 21.667845>,  <35.479698, 40.516598, 21.454182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422230, 40.609577, 21.667845>,  <35.326450, 40.764545, 22.023951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422230, 40.609577, 21.667845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911308, -0.405999, -0.068431,
		-0.334936, 0.827691, -0.450272,
		0.239450, -0.387417, -0.890266,
		35.494064, 40.493351, 21.400764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792160, 40.957714, 21.610479>,  <35.326450, 40.764545, 22.023951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792160, 40.957714, 21.610479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978031, 40.628075, 21.480904>,  <35.089554, 40.430290, 21.403158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978031, 40.628075, 21.480904>,  <34.792160, 40.957714, 21.610479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978031, 40.628075, 21.480904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883928, -0.453348, -0.114659,
		-0.052368, 0.339620, -0.939104,
		0.464681, -0.824096, -0.323940,
		35.117435, 40.380844, 21.383722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411114, 40.619114, 21.022001>,  <34.792160, 40.957714, 21.610479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411114, 40.619114, 21.022001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617027, 40.335644, 21.214993>,  <34.740574, 40.165562, 21.330788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617027, 40.335644, 21.214993>,  <34.411114, 40.619114, 21.022001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617027, 40.335644, 21.214993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799987, -0.599415, -0.026884,
		0.308257, -0.372138, -0.875495,
		0.514780, -0.708672, 0.482479,
		34.771461, 40.123043, 21.359735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220009, 39.979290, 20.675734>,  <34.411114, 40.619114, 21.022001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220009, 39.979290, 20.675734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394150, 39.852982, 21.012959>,  <34.498634, 39.777199, 21.215294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394150, 39.852982, 21.012959>,  <34.220009, 39.979290, 20.675734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394150, 39.852982, 21.012959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742841, -0.655036, 0.138258,
		0.508579, -0.686453, -0.519740,
		0.435357, -0.315769, 0.843063,
		34.524757, 39.758251, 21.265877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062691, 39.166603, 20.730444>,  <34.220009, 39.979290, 20.675734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062691, 39.166603, 20.730444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154911, 39.295017, 21.097874>,  <34.210243, 39.372066, 21.318333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154911, 39.295017, 21.097874>,  <34.062691, 39.166603, 20.730444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154911, 39.295017, 21.097874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771481, -0.514999, 0.373622,
		0.593011, -0.794804, 0.128936,
		0.230554, 0.321034, 0.918576,
		34.224079, 39.391327, 21.373447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919353, 38.571457, 21.067852>,  <34.062691, 39.166603, 20.730444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919353, 38.571457, 21.067852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961861, 38.863407, 21.337961>,  <33.987366, 39.038578, 21.500027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961861, 38.863407, 21.337961>,  <33.919353, 38.571457, 21.067852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961861, 38.863407, 21.337961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802600, -0.337935, 0.491562,
		0.586976, -0.594211, 0.549884,
		0.106266, 0.729872, 0.675274,
		33.993740, 39.082367, 21.540543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902229, 38.251854, 21.715845>,  <33.919353, 38.571457, 21.067852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902229, 38.251854, 21.715845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778690, 38.625351, 21.788227>,  <33.704567, 38.849449, 21.831656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778690, 38.625351, 21.788227>,  <33.902229, 38.251854, 21.715845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778690, 38.625351, 21.788227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725217, -0.354288, 0.590373,
		0.615365, 0.051103, 0.786584,
		-0.308847, 0.933739, 0.180955,
		33.686035, 38.905472, 21.842514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750038, 38.208790, 22.460524>,  <33.902229, 38.251854, 21.715845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750038, 38.208790, 22.460524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570171, 38.531982, 22.308228>,  <33.462250, 38.725899, 22.216850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570171, 38.531982, 22.308228>,  <33.750038, 38.208790, 22.460524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570171, 38.531982, 22.308228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810681, -0.190244, 0.553718,
		0.374961, 0.557647, 0.740564,
		-0.449667, 0.807984, -0.380740,
		33.435272, 38.774376, 22.194006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482098, 38.588741, 23.018496>,  <33.750038, 38.208790, 22.460524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482098, 38.588741, 23.018496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271549, 38.716236, 22.703196>,  <33.145218, 38.792732, 22.514015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271549, 38.716236, 22.703196>,  <33.482098, 38.588741, 23.018496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271549, 38.716236, 22.703196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836712, -0.029374, 0.546855,
		0.151147, 0.947389, 0.282150,
		-0.526373, 0.318733, -0.788252,
		33.113636, 38.811855, 22.466721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104183, 39.047443, 23.371798>,  <33.482098, 38.588741, 23.018496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104183, 39.047443, 23.371798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916485, 38.975243, 23.026030>,  <32.803864, 38.931923, 22.818569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916485, 38.975243, 23.026030>,  <33.104183, 39.047443, 23.371798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916485, 38.975243, 23.026030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874657, -0.039770, 0.483108,
		-0.121580, 0.982770, -0.139215,
		-0.469247, -0.180502, -0.864422,
		32.775711, 38.921093, 22.766703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576443, 39.546188, 23.264505>,  <33.104183, 39.047443, 23.371798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576443, 39.546188, 23.264505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458733, 39.238426, 23.037729>,  <32.388107, 39.053768, 22.901663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458733, 39.238426, 23.037729>,  <32.576443, 39.546188, 23.264505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458733, 39.238426, 23.037729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844243, -0.068764, 0.531530,
		-0.447946, 0.635052, -0.629328,
		-0.294274, -0.769403, -0.566941,
		32.370449, 39.007607, 22.867647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983438, 39.797886, 22.857153>,  <32.576443, 39.546188, 23.264505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983438, 39.797886, 22.857153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981554, 39.399582, 22.893908>,  <31.980423, 39.160599, 22.915960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981554, 39.399582, 22.893908>,  <31.983438, 39.797886, 22.857153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981554, 39.399582, 22.893908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837561, 0.054130, 0.543656,
		-0.546324, -0.074400, -0.834263,
		-0.004711, -0.995758, 0.091887,
		31.980141, 39.100853, 22.921474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256989, 39.554600, 22.855978>,  <31.983438, 39.797886, 22.857153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256989, 39.554600, 22.855978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450623, 39.243534, 23.016426>,  <31.566803, 39.056896, 23.112696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450623, 39.243534, 23.016426>,  <31.256989, 39.554600, 22.855978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450623, 39.243534, 23.016426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813378, -0.230907, 0.533946,
		-0.322610, -0.584739, -0.744314,
		0.484086, -0.777665, 0.401121,
		31.595848, 39.010235, 23.136763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790781, 39.106213, 22.879843>,  <31.256989, 39.554600, 22.855978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790781, 39.106213, 22.879843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042772, 38.988152, 23.167177>,  <31.193968, 38.917313, 23.339579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042772, 38.988152, 23.167177>,  <30.790781, 39.106213, 22.879843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042772, 38.988152, 23.167177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772959, -0.148674, 0.616791,
		-0.075252, -0.943810, -0.321806,
		0.629978, -0.295158, 0.718338,
		31.231766, 38.899605, 23.382679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462164, 38.444408, 23.227844>,  <30.790781, 39.106213, 22.879843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462164, 38.444408, 23.227844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755058, 38.546894, 23.480251>,  <30.930796, 38.608387, 23.631697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755058, 38.546894, 23.480251>,  <30.462164, 38.444408, 23.227844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755058, 38.546894, 23.480251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592193, -0.218071, 0.775727,
		0.336359, -0.941700, -0.007952,
		0.732236, 0.256214, 0.631019,
		30.974730, 38.623756, 23.669558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503284, 37.848969, 23.737602>,  <30.462164, 38.444408, 23.227844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503284, 37.848969, 23.737602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652225, 38.184280, 23.896923>,  <30.741590, 38.385468, 23.992516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652225, 38.184280, 23.896923>,  <30.503284, 37.848969, 23.737602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652225, 38.184280, 23.896923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628306, -0.088179, 0.772953,
		0.683071, -0.538065, 0.493862,
		0.372351, 0.838278, 0.398302,
		30.763931, 38.435764, 24.016413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432264, 37.872410, 24.454550>,  <30.503284, 37.848969, 23.737602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432264, 37.872410, 24.454550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479029, 38.267757, 24.415632>,  <30.507088, 38.504967, 24.392282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479029, 38.267757, 24.415632>,  <30.432264, 37.872410, 24.454550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479029, 38.267757, 24.415632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541179, 0.145544, 0.828216,
		0.832741, -0.044175, 0.551898,
		0.116912, 0.988365, -0.097294,
		30.514103, 38.564266, 24.386444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759165, 37.829449, 24.955172>,  <30.432264, 37.872410, 24.454550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759165, 37.829449, 24.955172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813074, 38.011452, 24.603081>,  <29.845421, 38.120655, 24.391827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813074, 38.011452, 24.603081>,  <29.759165, 37.829449, 24.955172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813074, 38.011452, 24.603081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139469, -0.870779, -0.471478,
		-0.981012, 0.186308, -0.053900,
		0.134776, 0.455008, -0.880229,
		29.853506, 38.147953, 24.339012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963650, 38.541077, 25.027376>,  <29.759165, 37.829449, 24.955172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963650, 38.541077, 25.027376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069418, 38.264439, 25.296234>,  <30.132879, 38.098457, 25.457548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069418, 38.264439, 25.296234>,  <29.963650, 38.541077, 25.027376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069418, 38.264439, 25.296234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424924, 0.709201, 0.562560,
		-0.865749, 0.136859, 0.481402,
		0.264419, -0.691595, 0.672145,
		30.148745, 38.056961, 25.497877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685585, 38.674774, 25.768513>,  <29.963650, 38.541077, 25.027376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685585, 38.674774, 25.768513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025501, 38.464539, 25.752445>,  <30.229450, 38.338398, 25.742805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025501, 38.464539, 25.752445>,  <29.685585, 38.674774, 25.768513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025501, 38.464539, 25.752445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442643, 0.670145, 0.595796,
		-0.286226, -0.524080, 0.802131,
		0.849789, -0.525590, -0.040167,
		30.280437, 38.306862, 25.740395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976658, 38.458672, 26.520758>,  <29.685585, 38.674774, 25.768513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976658, 38.458672, 26.520758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293711, 38.482330, 26.278027>,  <30.483942, 38.496525, 26.132387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293711, 38.482330, 26.278027>,  <29.976658, 38.458672, 26.520758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293711, 38.482330, 26.278027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413744, 0.678870, 0.606590,
		0.447832, -0.731873, 0.513623,
		0.792630, 0.059142, -0.606827,
		30.531500, 38.500072, 26.095978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673748, 38.188896, 26.862537>,  <29.976658, 38.458672, 26.520758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673748, 38.188896, 26.862537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700573, 38.499371, 26.611767>,  <30.716667, 38.685654, 26.461304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700573, 38.499371, 26.611767>,  <30.673748, 38.188896, 26.862537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700573, 38.499371, 26.611767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644265, 0.446099, 0.621223,
		0.761856, -0.445568, -0.470153,
		0.067062, 0.776186, -0.626928,
		30.720692, 38.732227, 26.423689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316727, 38.414307, 26.876146>,  <30.673748, 38.188896, 26.862537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316727, 38.414307, 26.876146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116751, 38.733639, 26.741842>,  <30.996765, 38.925236, 26.661261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116751, 38.733639, 26.741842>,  <31.316727, 38.414307, 26.876146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116751, 38.733639, 26.741842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537526, 0.590003, 0.602463,
		0.679061, 0.120716, -0.724088,
		-0.499941, 0.798326, -0.335760,
		30.966768, 38.973137, 26.641115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698364, 38.889297, 26.507029>,  <31.316727, 38.414307, 26.876146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698364, 38.889297, 26.507029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431820, 39.081532, 26.735065>,  <31.271894, 39.196873, 26.871887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431820, 39.081532, 26.735065>,  <31.698364, 38.889297, 26.507029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431820, 39.081532, 26.735065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741198, 0.343688, 0.576632,
		0.081186, 0.806795, -0.585227,
		-0.666359, 0.480583, 0.570092,
		31.231913, 39.225708, 26.906094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831945, 39.604610, 26.509171>,  <31.698364, 38.889297, 26.507029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831945, 39.604610, 26.509171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652155, 39.481220, 26.844507>,  <31.544281, 39.407185, 27.045710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652155, 39.481220, 26.844507>,  <31.831945, 39.604610, 26.509171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652155, 39.481220, 26.844507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830092, 0.202494, 0.519561,
		-0.330031, 0.929430, 0.165046,
		-0.449475, -0.308474, 0.838341,
		31.517313, 39.388680, 27.096010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853062, 40.115959, 27.042927>,  <31.831945, 39.604610, 26.509171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853062, 40.115959, 27.042927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819204, 39.758228, 27.218662>,  <31.798891, 39.543591, 27.324102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819204, 39.758228, 27.218662>,  <31.853062, 40.115959, 27.042927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819204, 39.758228, 27.218662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851132, 0.164362, 0.498557,
		-0.518083, 0.416133, 0.747277,
		-0.084642, -0.894325, 0.439338,
		31.793812, 39.489929, 27.350464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766081, 40.267937, 27.750185>,  <31.853062, 40.115959, 27.042927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766081, 40.267937, 27.750185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917919, 39.906395, 27.671242>,  <32.009022, 39.689468, 27.623877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917919, 39.906395, 27.671242>,  <31.766081, 40.267937, 27.750185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917919, 39.906395, 27.671242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895591, 0.305514, 0.323384,
		-0.231998, -0.299506, 0.925458,
		0.379596, -0.903857, -0.197356,
		32.031799, 39.635239, 27.612034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133175, 39.961884, 28.331884>,  <31.766081, 40.267937, 27.750185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133175, 39.961884, 28.331884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292137, 39.787319, 28.008995>,  <32.387512, 39.682579, 27.815262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292137, 39.787319, 28.008995>,  <32.133175, 39.961884, 28.331884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292137, 39.787319, 28.008995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864999, 0.471824, 0.170760,
		0.306345, -0.766110, 0.565003,
		0.397403, -0.436415, -0.807225,
		32.411358, 39.656395, 27.766827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712498, 40.167126, 28.859287>,  <32.133175, 39.961884, 28.331884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712498, 40.167126, 28.859287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937378, 40.047371, 29.167650>,  <33.072308, 39.975517, 29.352667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937378, 40.047371, 29.167650>,  <32.712498, 40.167126, 28.859287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937378, 40.047371, 29.167650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628469, 0.451238, 0.633570,
		-0.537546, -0.840684, 0.065529,
		0.562201, -0.299390, 0.770906,
		33.106037, 39.957554, 29.398922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441528, 39.720337, 29.347399>,  <32.712498, 40.167126, 28.859287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441528, 39.720337, 29.347399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488605, 39.587524, 29.721758>,  <32.516850, 39.507835, 29.946373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488605, 39.587524, 29.721758>,  <32.441528, 39.720337, 29.347399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488605, 39.587524, 29.721758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599361, 0.775182, 0.199648,
		-0.791780, 0.537443, 0.290240,
		0.117690, -0.332036, 0.935896,
		32.523914, 39.487915, 30.002527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571972, 38.955711, 29.565632>,  <32.441528, 39.720337, 29.347399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571972, 38.955711, 29.565632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698002, 39.132889, 29.229889>,  <32.773621, 39.239197, 29.028442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698002, 39.132889, 29.229889>,  <32.571972, 38.955711, 29.565632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698002, 39.132889, 29.229889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716665, -0.468753, -0.516392,
		-0.622187, 0.764243, 0.169752,
		0.315078, 0.442948, -0.839359,
		32.792526, 39.265774, 28.978081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052170, 38.298187, 29.521851>,  <32.571972, 38.955711, 29.565632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052170, 38.298187, 29.521851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123520, 38.406635, 29.143501>,  <33.166328, 38.471703, 28.916491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123520, 38.406635, 29.143501>,  <33.052170, 38.298187, 29.521851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123520, 38.406635, 29.143501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563335, -0.816294, -0.127739,
		-0.806744, -0.510059, -0.298335,
		0.178374, 0.271115, -0.945875,
		33.177032, 38.487968, 28.859739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714790, 37.829971, 28.947283>,  <33.052170, 38.298187, 29.521851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714790, 37.829971, 28.947283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069233, 37.979137, 28.837194>,  <33.281898, 38.068638, 28.771141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069233, 37.979137, 28.837194>,  <32.714790, 37.829971, 28.947283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069233, 37.979137, 28.837194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320191, -0.921875, -0.218231,
		-0.335102, 0.105253, -0.936285,
		0.886107, 0.372919, -0.275221,
		33.335064, 38.091015, 28.754629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317642, 37.719120, 28.332735>,  <32.714790, 37.829971, 28.947283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317642, 37.719120, 28.332735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309380, 37.612232, 27.947369>,  <32.304424, 37.548100, 27.716148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309380, 37.612232, 27.947369>,  <32.317642, 37.719120, 28.332735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309380, 37.612232, 27.947369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597841, -0.775662, 0.202324,
		-0.801349, -0.571790, 0.175773,
		-0.020653, -0.267216, -0.963415,
		32.303185, 37.532066, 27.658344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962246, 37.016323, 28.187124>,  <32.317642, 37.719120, 28.332735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962246, 37.016323, 28.187124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333797, 37.117336, 28.078747>,  <32.556728, 37.177944, 28.013720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333797, 37.117336, 28.078747>,  <31.962246, 37.016323, 28.187124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333797, 37.117336, 28.078747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074917, -0.844508, -0.530278,
		-0.362728, 0.472266, -0.803364,
		0.928879, 0.252532, -0.270946,
		32.612461, 37.193096, 27.997463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444832, 36.529678, 27.854906>,  <31.962246, 37.016323, 28.187124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444832, 36.529678, 27.854906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684624, 36.267044, 28.037994>,  <32.828499, 36.109463, 28.147848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684624, 36.267044, 28.037994>,  <32.444832, 36.529678, 27.854906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684624, 36.267044, 28.037994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784575, -0.368955, 0.498311,
		-0.158307, -0.657847, -0.736326,
		0.599483, -0.656589, 0.457723,
		32.864468, 36.070068, 28.175310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143005, 35.897675, 27.807611>,  <32.444832, 36.529678, 27.854906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143005, 35.897675, 27.807611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380474, 35.959858, 28.123430>,  <32.522957, 35.997169, 28.312922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380474, 35.959858, 28.123430>,  <32.143005, 35.897675, 27.807611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380474, 35.959858, 28.123430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692834, -0.400313, 0.599776,
		0.409307, -0.903096, -0.129948,
		0.593675, 0.155460, 0.789546,
		32.558578, 36.006496, 28.360294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199852, 35.307289, 28.080462>,  <32.143005, 35.897675, 27.807611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199852, 35.307289, 28.080462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289078, 35.552246, 28.383833>,  <32.342613, 35.699223, 28.565857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289078, 35.552246, 28.383833>,  <32.199852, 35.307289, 28.080462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289078, 35.552246, 28.383833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524250, -0.580576, 0.622972,
		0.821831, -0.536568, 0.191544,
		0.223061, 0.612394, 0.758431,
		32.355995, 35.735966, 28.611362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289330, 34.794044, 28.705769>,  <32.199852, 35.307289, 28.080462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289330, 34.794044, 28.705769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264847, 35.163437, 28.857256>,  <32.250156, 35.385075, 28.948149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264847, 35.163437, 28.857256>,  <32.289330, 34.794044, 28.705769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264847, 35.163437, 28.857256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662037, -0.321516, 0.677004,
		0.746968, -0.209291, 0.631060,
		-0.061205, 0.923485, 0.378721,
		32.246487, 35.440483, 28.970873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188065, 34.631599, 29.426043>,  <32.289330, 34.794044, 28.705769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188065, 34.631599, 29.426043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102699, 35.018826, 29.373430>,  <32.051479, 35.251163, 29.341864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102699, 35.018826, 29.373430>,  <32.188065, 34.631599, 29.426043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102699, 35.018826, 29.373430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674847, -0.048725, 0.736347,
		0.706425, 0.245909, 0.663696,
		-0.213413, 0.968067, -0.131530,
		32.038677, 35.309246, 29.333971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304661, 35.036827, 30.094753>,  <32.188065, 34.631599, 29.426043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304661, 35.036827, 30.094753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040455, 35.240566, 29.874104>,  <31.881931, 35.362808, 29.741714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040455, 35.240566, 29.874104>,  <32.304661, 35.036827, 30.094753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040455, 35.240566, 29.874104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696503, -0.141323, 0.703500,
		0.280367, 0.848879, 0.448107,
		-0.660514, 0.509346, -0.551624,
		31.842300, 35.393372, 29.708616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892498, 35.002659, 30.564558>,  <32.304661, 35.036827, 30.094753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892498, 35.002659, 30.564558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586393, 35.069736, 30.315962>,  <31.402731, 35.109985, 30.166803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586393, 35.069736, 30.315962>,  <31.892498, 35.002659, 30.564558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586393, 35.069736, 30.315962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609601, -0.498941, 0.615991,
		-0.206787, 0.850256, 0.484050,
		-0.765262, 0.167698, -0.621491,
		31.356815, 35.120045, 30.129515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247051, 35.028053, 31.219315>,  <31.892498, 35.002659, 30.564558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247051, 35.028053, 31.219315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478512, 35.236153, 30.968075>,  <32.617390, 35.361012, 30.817331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478512, 35.236153, 30.968075>,  <32.247051, 35.028053, 31.219315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478512, 35.236153, 30.968075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308340, 0.852519, 0.422063,
		0.755043, -0.050558, 0.653723,
		0.578650, 0.520245, -0.628100,
		32.652107, 35.392227, 30.779644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628742, 35.601089, 31.556742>,  <32.247051, 35.028053, 31.219315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628742, 35.601089, 31.556742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580143, 35.713078, 31.175825>,  <32.550983, 35.780270, 30.947275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580143, 35.713078, 31.175825>,  <32.628742, 35.601089, 31.556742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580143, 35.713078, 31.175825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153258, 0.942601, 0.296673,
		0.980689, 0.181990, -0.071614,
		-0.121495, 0.279968, -0.952290,
		32.543694, 35.797070, 30.890139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019840, 36.183163, 31.460363>,  <32.628742, 35.601089, 31.556742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019840, 36.183163, 31.460363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701389, 36.188911, 31.218378>,  <32.510319, 36.192360, 31.073187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701389, 36.188911, 31.218378>,  <33.019840, 36.183163, 31.460363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701389, 36.188911, 31.218378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188266, 0.944224, 0.270181,
		0.575100, 0.328991, -0.749016,
		-0.796126, 0.014367, -0.604961,
		32.462551, 36.193222, 31.036890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062920, 36.151466, 30.769951>,  <33.019840, 36.183163, 31.460363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062920, 36.151466, 30.769951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316963, 36.146900, 30.461016>,  <33.469391, 36.144161, 30.275654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316963, 36.146900, 30.461016>,  <33.062920, 36.151466, 30.769951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316963, 36.146900, 30.461016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621085, 0.586921, -0.519401,
		0.459229, 0.809564, 0.365671,
		0.635109, -0.011411, -0.772339,
		33.507496, 36.143478, 30.229315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178200, 36.823952, 31.015379>,  <33.062920, 36.151466, 30.769951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178200, 36.823952, 31.015379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364040, 36.505920, 31.171324>,  <33.475544, 36.315102, 31.264891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364040, 36.505920, 31.171324>,  <33.178200, 36.823952, 31.015379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364040, 36.505920, 31.171324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880911, 0.370126, -0.294960,
		0.090220, 0.480472, 0.872357,
		0.464602, -0.795081, 0.389860,
		33.503422, 36.267395, 31.288282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774479, 36.985821, 31.431789>,  <33.178200, 36.823952, 31.015379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774479, 36.985821, 31.431789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818336, 36.629864, 31.254675>,  <33.844650, 36.416290, 31.148405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818336, 36.629864, 31.254675>,  <33.774479, 36.985821, 31.431789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818336, 36.629864, 31.254675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866286, 0.303979, -0.396415,
		0.487367, -0.340117, 0.804235,
		0.109643, -0.889897, -0.442788,
		33.851231, 36.362896, 31.121838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466446, 36.932579, 31.400492>,  <33.774479, 36.985821, 31.431789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466446, 36.932579, 31.400492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334103, 36.652527, 31.147398>,  <34.254696, 36.484497, 30.995541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334103, 36.652527, 31.147398>,  <34.466446, 36.932579, 31.400492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334103, 36.652527, 31.147398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733921, 0.230574, -0.638901,
		0.593204, -0.675765, 0.437550,
		-0.330859, -0.700127, -0.632736,
		34.234844, 36.442490, 30.957577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194908, 36.761677, 31.166546>,  <34.466446, 36.932579, 31.400492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194908, 36.761677, 31.166546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482128, 36.871227, 31.422483>,  <35.654461, 36.936958, 31.576046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482128, 36.871227, 31.422483>,  <35.194908, 36.761677, 31.166546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482128, 36.871227, 31.422483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681311, -0.464427, -0.565794,
		0.142204, 0.842200, -0.520074,
		0.718048, 0.273874, 0.639844,
		35.697544, 36.953388, 31.614437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667385, 36.979103, 30.762102>,  <35.194908, 36.761677, 31.166546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667385, 36.979103, 30.762102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834415, 36.807812, 31.082664>,  <35.934635, 36.705036, 31.275002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834415, 36.807812, 31.082664>,  <35.667385, 36.979103, 30.762102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834415, 36.807812, 31.082664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653167, -0.471666, -0.592371,
		0.631665, 0.770813, 0.082747,
		0.417579, -0.428227, 0.801405,
		35.959690, 36.679344, 31.323086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256927, 36.660477, 30.502871>,  <35.667385, 36.979103, 30.762102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256927, 36.660477, 30.502871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240261, 36.539959, 30.883919>,  <36.230263, 36.467648, 31.112547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240261, 36.539959, 30.883919>,  <36.256927, 36.660477, 30.502871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240261, 36.539959, 30.883919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849071, -0.513231, -0.125189,
		0.526633, 0.803626, 0.277205,
		-0.041665, -0.301295, 0.952620,
		36.227760, 36.449570, 31.169704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745316, 36.991547, 31.025230>,  <36.256927, 36.660477, 30.502871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745316, 36.991547, 31.025230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666573, 36.604385, 31.087727>,  <36.619328, 36.372089, 31.125223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666573, 36.604385, 31.087727>,  <36.745316, 36.991547, 31.025230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666573, 36.604385, 31.087727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873939, -0.245462, -0.419498,
		0.444385, 0.053962, 0.894209,
		-0.196857, -0.967903, 0.156239,
		36.607517, 36.314014, 31.134598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367226, 36.726788, 30.980940>,  <36.745316, 36.991547, 31.025230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367226, 36.726788, 30.980940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155216, 36.389679, 31.018492>,  <37.028011, 36.187412, 31.041023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155216, 36.389679, 31.018492>,  <37.367226, 36.726788, 30.980940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155216, 36.389679, 31.018492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769747, -0.524609, -0.363696,
		0.355763, -0.120503, 0.926775,
		-0.530021, -0.842772, 0.093880,
		36.996208, 36.136848, 31.046656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819061, 36.956799, 30.372410>,  <37.367226, 36.726788, 30.980940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819061, 36.956799, 30.372410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193420, 36.838955, 30.449665>,  <38.418037, 36.768250, 30.496017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193420, 36.838955, 30.449665>,  <37.819061, 36.956799, 30.372410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193420, 36.838955, 30.449665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093944, -0.737128, -0.669191,
		0.339518, 0.608150, -0.717552,
		0.935896, -0.294612, 0.193136,
		38.474190, 36.750572, 30.507607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362682, 36.867653, 29.705803>,  <37.819061, 36.956799, 30.372410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362682, 36.867653, 29.705803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471176, 36.624126, 30.004005>,  <38.536274, 36.478012, 30.182926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471176, 36.624126, 30.004005>,  <38.362682, 36.867653, 29.705803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471176, 36.624126, 30.004005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141197, -0.740992, -0.656501,
		0.952099, 0.283331, -0.115023,
		0.271238, -0.608813, 0.745504,
		38.552547, 36.441483, 30.227657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050556, 36.683746, 29.474869>,  <38.362682, 36.867653, 29.705803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050556, 36.683746, 29.474869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425915, 36.546703, 29.456869>,  <39.651131, 36.464478, 29.446070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425915, 36.546703, 29.456869>,  <39.050556, 36.683746, 29.474869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425915, 36.546703, 29.456869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084387, 0.100931, 0.991308,
		-0.335086, -0.934042, 0.123626,
		0.938401, -0.342606, -0.045000,
		39.707436, 36.443920, 29.443369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048805, 36.202957, 29.998402>,  <39.050556, 36.683746, 29.474869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048805, 36.202957, 29.998402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423714, 36.299690, 29.897980>,  <39.648659, 36.357731, 29.837727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423714, 36.299690, 29.897980>,  <39.048805, 36.202957, 29.998402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423714, 36.299690, 29.897980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297223, -0.178129, 0.938045,
		0.182134, -0.953827, -0.238835,
		0.937276, 0.241837, -0.251056,
		39.704895, 36.372242, 29.822662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501240, 35.681545, 30.259911>,  <39.048805, 36.202957, 29.998402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501240, 35.681545, 30.259911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662971, 36.044212, 30.211786>,  <39.760010, 36.261810, 30.182911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662971, 36.044212, 30.211786>,  <39.501240, 35.681545, 30.259911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662971, 36.044212, 30.211786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415605, -0.064955, 0.907223,
		0.814733, -0.416820, -0.403078,
		0.404330, 0.906665, -0.120312,
		39.784271, 36.316212, 30.175694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331543, 35.745579, 30.320650>,  <39.501240, 35.681545, 30.259911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331543, 35.745579, 30.320650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146473, 36.082645, 30.430813>,  <40.035431, 36.284885, 30.496910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146473, 36.082645, 30.430813>,  <40.331543, 35.745579, 30.320650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146473, 36.082645, 30.430813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417003, -0.067279, 0.906412,
		0.782329, 0.534221, -0.320265,
		-0.462677, 0.842663, 0.275406,
		40.007671, 36.335445, 30.513435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757828, 36.227932, 30.389042>,  <40.331543, 35.745579, 30.320650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757828, 36.227932, 30.389042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436089, 36.242233, 30.626276>,  <40.243046, 36.250813, 30.768616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436089, 36.242233, 30.626276>,  <40.757828, 36.227932, 30.389042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436089, 36.242233, 30.626276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581989, -0.153599, 0.798559,
		0.119646, 0.987486, 0.102741,
		-0.804347, 0.035750, 0.593083,
		40.194786, 36.252956, 30.804201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970016, 36.806744, 30.810232>,  <40.757828, 36.227932, 30.389042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970016, 36.806744, 30.810232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721401, 36.549286, 30.988857>,  <40.572231, 36.394814, 31.096033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721401, 36.549286, 30.988857>,  <40.970016, 36.806744, 30.810232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721401, 36.549286, 30.988857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778641, -0.444907, 0.442467,
		-0.086111, 0.622721, 0.777691,
		-0.621534, -0.643643, 0.446565,
		40.534943, 36.356194, 31.122828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090107, 36.691673, 31.558937>,  <40.970016, 36.806744, 30.810232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090107, 36.691673, 31.558937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907631, 36.349293, 31.461580>,  <40.798145, 36.143864, 31.403166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907631, 36.349293, 31.461580>,  <41.090107, 36.691673, 31.558937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907631, 36.349293, 31.461580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619052, -0.501730, 0.604187,
		-0.639272, 0.124949, 0.758761,
		-0.456186, -0.855952, -0.243392,
		40.770775, 36.092506, 31.388563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629585, 36.548630, 32.069885>,  <41.090107, 36.691673, 31.558937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629585, 36.548630, 32.069885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681164, 36.298233, 31.762245>,  <41.712109, 36.147995, 31.577662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681164, 36.298233, 31.762245>,  <41.629585, 36.548630, 32.069885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681164, 36.298233, 31.762245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409403, -0.672785, 0.616238,
		-0.903196, -0.394329, 0.169532,
		0.128942, -0.625991, -0.769097,
		41.719845, 36.110435, 31.531517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633434, 36.014168, 32.433067>,  <41.629585, 36.548630, 32.069885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633434, 36.014168, 32.433067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742760, 35.886524, 32.070087>,  <41.808353, 35.809937, 31.852299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742760, 35.886524, 32.070087>,  <41.633434, 36.014168, 32.433067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742760, 35.886524, 32.070087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484484, -0.769312, 0.416455,
		-0.831009, -0.553467, -0.055657,
		0.273311, -0.319113, -0.907452,
		41.824753, 35.790791, 31.797852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566738, 35.222874, 32.274403>,  <41.633434, 36.014168, 32.433067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566738, 35.222874, 32.274403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877499, 35.361797, 32.064339>,  <42.063957, 35.445152, 31.938299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877499, 35.361797, 32.064339>,  <41.566738, 35.222874, 32.274403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877499, 35.361797, 32.064339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597010, -0.671310, 0.439229,
		-0.199999, -0.654767, -0.728891,
		0.776904, 0.347310, -0.525163,
		42.110569, 35.465992, 31.906790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920567, 34.709492, 32.756466>,  <41.566738, 35.222874, 32.274403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920567, 34.709492, 32.756466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068546, 34.901741, 32.438438>,  <42.157333, 35.017090, 32.247620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068546, 34.901741, 32.438438>,  <41.920567, 34.709492, 32.756466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068546, 34.901741, 32.438438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894512, 0.046904, 0.444577,
		0.250965, -0.875673, -0.412570,
		0.369953, 0.480622, -0.795071,
		42.179531, 35.045929, 32.199917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370598, 34.305729, 32.485538>,  <41.920567, 34.709492, 32.756466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370598, 34.305729, 32.485538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468643, 34.672981, 32.360992>,  <42.527470, 34.893333, 32.286263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468643, 34.672981, 32.360992>,  <42.370598, 34.305729, 32.485538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468643, 34.672981, 32.360992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862300, -0.059668, 0.502870,
		0.443124, -0.391751, -0.806333,
		0.245112, 0.918134, -0.311367,
		42.542175, 34.948421, 32.267582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012295, 34.229034, 32.304806>,  <42.370598, 34.305729, 32.485538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012295, 34.229034, 32.304806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940018, 34.618114, 32.363056>,  <42.896652, 34.851562, 32.398006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940018, 34.618114, 32.363056>,  <43.012295, 34.229034, 32.304806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940018, 34.618114, 32.363056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843531, 0.077124, 0.531514,
		0.505772, 0.218883, -0.834437,
		-0.180694, 0.972698, 0.145628,
		42.885811, 34.909924, 32.406746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636086, 34.550663, 32.277081>,  <43.012295, 34.229034, 32.304806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636086, 34.550663, 32.277081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.396595, 34.776886, 32.503944>,  <43.252899, 34.912621, 32.640064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.396595, 34.776886, 32.503944>,  <43.636086, 34.550663, 32.277081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396595, 34.776886, 32.503944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772318, 0.220010, 0.595920,
		0.212244, 0.794824, -0.568514,
		-0.598730, 0.565554, 0.567161,
		43.216976, 34.946552, 32.674091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913570, 35.261883, 32.383083>,  <43.636086, 34.550663, 32.277081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913570, 35.261883, 32.383083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701344, 35.091862, 32.676430>,  <43.574009, 34.989849, 32.852440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.701344, 35.091862, 32.676430>,  <43.913570, 35.261883, 32.383083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.701344, 35.091862, 32.676430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806461, 0.013271, 0.591138,
		-0.260996, 0.905073, 0.335745,
		-0.530567, -0.425050, 0.733370,
		43.542175, 34.964348, 32.896442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845367, 35.679352, 32.958782>,  <43.913570, 35.261883, 32.383083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845367, 35.679352, 32.958782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805119, 35.298172, 33.073158>,  <43.780968, 35.069466, 33.141785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805119, 35.298172, 33.073158>,  <43.845367, 35.679352, 32.958782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805119, 35.298172, 33.073158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809062, 0.088893, 0.580962,
		-0.579046, 0.289801, 0.762051,
		-0.100623, -0.952950, 0.285940,
		43.774933, 35.012287, 33.158939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816189, 35.595364, 33.765465>,  <43.845367, 35.679352, 32.958782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816189, 35.595364, 33.765465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999123, 35.283222, 33.594875>,  <44.108883, 35.095936, 33.492519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999123, 35.283222, 33.594875>,  <43.816189, 35.595364, 33.765465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999123, 35.283222, 33.594875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820855, 0.185941, 0.540021,
		-0.342111, -0.597049, 0.725598,
		0.457337, -0.780358, -0.426478,
		44.136322, 35.049114, 33.466930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.031818, 35.014595, 34.251102>,  <43.816189, 35.595364, 33.765465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.031818, 35.014595, 34.251102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284992, 35.021507, 33.941498>,  <44.436897, 35.025654, 33.755733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284992, 35.021507, 33.941498>,  <44.031818, 35.014595, 34.251102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284992, 35.021507, 33.941498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768909, 0.102728, 0.631051,
		0.090416, -0.994559, 0.051734,
		0.632932, 0.017278, -0.774014,
		44.474873, 35.026691, 33.709293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.612164, 34.463951, 34.430225>,  <44.031818, 35.014595, 34.251102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.612164, 34.463951, 34.430225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672173, 34.793934, 34.212257>,  <44.708176, 34.991924, 34.081478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672173, 34.793934, 34.212257>,  <44.612164, 34.463951, 34.430225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672173, 34.793934, 34.212257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737514, 0.273694, 0.617386,
		0.658459, -0.494506, -0.567359,
		0.150018, 0.824958, -0.544921,
		44.717178, 35.041420, 34.048782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352734, 34.574162, 34.195518>,  <44.612164, 34.463951, 34.430225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352734, 34.574162, 34.195518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.178688, 34.929882, 34.251839>,  <45.074261, 35.143314, 34.285629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.178688, 34.929882, 34.251839>,  <45.352734, 34.574162, 34.195518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.178688, 34.929882, 34.251839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787262, 0.299885, 0.538783,
		0.436917, 0.345274, -0.830596,
		-0.435111, 0.889300, 0.140796,
		45.048153, 35.196671, 34.294079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.590805, 34.282948, 33.513950>,  <45.352734, 34.574162, 34.195518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.590805, 34.282948, 33.513950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618767, 34.637325, 33.330551>,  <45.635544, 34.849953, 33.220512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618767, 34.637325, 33.330551>,  <45.590805, 34.282948, 33.513950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618767, 34.637325, 33.330551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839362, 0.196132, 0.506956,
		0.539060, -0.420287, -0.729913,
		0.069908, 0.885941, -0.458500,
		45.639740, 34.903107, 33.193001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.142281, 34.437778, 32.970249>,  <45.590805, 34.282948, 33.513950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.142281, 34.437778, 32.970249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030731, 34.754284, 33.187920>,  <45.963802, 34.944187, 33.318523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030731, 34.754284, 33.187920>,  <46.142281, 34.437778, 32.970249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030731, 34.754284, 33.187920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910667, 0.038038, 0.411386,
		0.304815, 0.610291, -0.731185,
		-0.278878, 0.791263, 0.544178,
		45.947067, 34.991661, 33.351173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.501583, 34.654305, 33.553268>,  <46.142281, 34.437778, 32.970249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.501583, 34.654305, 33.553268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343002, 34.968925, 33.742649>,  <46.247852, 35.157700, 33.856277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343002, 34.968925, 33.742649>,  <46.501583, 34.654305, 33.553268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343002, 34.968925, 33.742649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761946, -0.005772, 0.647615,
		0.512118, 0.617491, -0.597025,
		-0.396451, 0.786556, 0.473451,
		46.224068, 35.204891, 33.884686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.037525, 35.177502, 33.618805>,  <46.501583, 34.654305, 33.553268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.037525, 35.177502, 33.618805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.776703, 35.196892, 33.921452>,  <46.620209, 35.208527, 34.103039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.776703, 35.196892, 33.921452>,  <47.037525, 35.177502, 33.618805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.776703, 35.196892, 33.921452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757668, 0.005297, 0.652619,
		0.027630, 0.998810, -0.040184,
		-0.652055, 0.048478, 0.756620,
		46.581085, 35.211433, 34.148438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.079971, 35.748940, 34.023590>,  <47.037525, 35.177502, 33.618805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.079971, 35.748940, 34.023590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.962353, 35.430767, 34.235561>,  <46.891781, 35.239864, 34.362743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.962353, 35.430767, 34.235561>,  <47.079971, 35.748940, 34.023590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.962353, 35.430767, 34.235561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868178, 0.009613, 0.496160,
		-0.399756, 0.605966, 0.687750,
		-0.294045, -0.795432, 0.529930,
		46.874138, 35.192139, 34.394539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.115379, 35.842010, 34.814476>,  <47.079971, 35.748940, 34.023590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.115379, 35.842010, 34.814476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.189274, 35.472473, 34.680382>,  <47.233612, 35.250751, 34.599926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.189274, 35.472473, 34.680382>,  <47.115379, 35.842010, 34.814476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.189274, 35.472473, 34.680382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910738, 0.032728, 0.411685,
		-0.369361, -0.381370, 0.847425,
		0.184739, -0.923843, -0.335240,
		47.244694, 35.195320, 34.579811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.586639, 35.479511, 35.318851>,  <47.115379, 35.842010, 34.814476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.586639, 35.479511, 35.318851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.627029, 35.331650, 34.949387>,  <47.651264, 35.242931, 34.727707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.627029, 35.331650, 34.949387>,  <47.586639, 35.479511, 35.318851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.627029, 35.331650, 34.949387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992249, -0.030181, 0.120549,
		-0.072439, -0.928678, 0.363744,
		0.100973, -0.369657, -0.923666,
		47.657322, 35.220753, 34.672287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.712063, 44.625290, 21.631094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.969795, 44.348778, 21.761919>,  <39.124435, 44.182869, 21.840414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.969795, 44.348778, 21.761919>,  <38.712063, 44.625290, 21.631094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969795, 44.348778, 21.761919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678688, -0.319785, 0.661151,
		-0.352451, -0.647973, -0.675211,
		0.644330, -0.691280, 0.327063,
		39.163094, 44.141396, 21.860039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370438, 43.993038, 21.536989>,  <38.712063, 44.625290, 21.631094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370438, 43.993038, 21.536989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.640198, 43.938671, 21.827288>,  <38.802055, 43.906052, 22.001467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.640198, 43.938671, 21.827288>,  <38.370438, 43.993038, 21.536989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640198, 43.938671, 21.827288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685241, -0.481290, 0.546630,
		0.274998, -0.865960, -0.417719,
		0.674404, -0.135916, 0.725745,
		38.842518, 43.897896, 22.045012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294369, 43.275307, 21.716610>,  <38.370438, 43.993038, 21.536989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294369, 43.275307, 21.716610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.466545, 43.447548, 22.033924>,  <38.569851, 43.550892, 22.224312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.466545, 43.447548, 22.033924>,  <38.294369, 43.275307, 21.716610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466545, 43.447548, 22.033924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686803, -0.414024, 0.597399,
		0.585681, -0.801975, 0.117527,
		0.430441, 0.430604, 0.793286,
		38.595676, 43.576729, 22.271910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286606, 42.759415, 22.287497>,  <38.294369, 43.275307, 21.716610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286606, 42.759415, 22.287497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.339863, 43.099369, 22.491444>,  <38.371819, 43.303341, 22.613811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.339863, 43.099369, 22.491444>,  <38.286606, 42.759415, 22.287497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339863, 43.099369, 22.491444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535032, -0.371410, 0.758812,
		0.834274, -0.373827, 0.405266,
		0.133144, 0.849887, 0.509867,
		38.379807, 43.354336, 22.644403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462158, 42.449760, 22.925608>,  <38.286606, 42.759415, 22.287497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462158, 42.449760, 22.925608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.399490, 42.837898, 22.999243>,  <38.361889, 43.070782, 23.043423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.399490, 42.837898, 22.999243>,  <38.462158, 42.449760, 22.925608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399490, 42.837898, 22.999243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539555, -0.240208, 0.806958,
		0.827245, 0.027104, 0.561187,
		-0.156673, 0.970343, 0.184087,
		38.352489, 43.129002, 23.054468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495232, 42.483540, 23.593157>,  <38.462158, 42.449760, 22.925608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495232, 42.483540, 23.593157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.287197, 42.812717, 23.501705>,  <38.162376, 43.010223, 23.446835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.287197, 42.812717, 23.501705>,  <38.495232, 42.483540, 23.593157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287197, 42.812717, 23.501705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531143, -0.101994, 0.841121,
		0.668875, 0.558894, 0.490147,
		-0.520089, 0.822943, -0.228631,
		38.131172, 43.059601, 23.433115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428322, 42.954670, 24.195045>,  <38.495232, 42.483540, 23.593157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428322, 42.954670, 24.195045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.133839, 43.057339, 23.944571>,  <37.957150, 43.118942, 23.794285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.133839, 43.057339, 23.944571>,  <38.428322, 42.954670, 24.195045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133839, 43.057339, 23.944571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676300, -0.312878, 0.666878,
		-0.024749, 0.914453, 0.403933,
		-0.736210, 0.256675, -0.626188,
		37.912975, 43.134342, 23.756714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935596, 43.419628, 24.561052>,  <38.428322, 42.954670, 24.195045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935596, 43.419628, 24.561052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.717361, 43.262695, 24.264833>,  <37.586422, 43.168537, 24.087103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.717361, 43.262695, 24.264833>,  <37.935596, 43.419628, 24.561052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717361, 43.262695, 24.264833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725758, -0.220669, 0.651599,
		-0.419058, 0.892962, -0.164344,
		-0.545587, -0.392331, -0.740547,
		37.553684, 43.144997, 24.042669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305485, 43.818733, 24.668402>,  <37.935596, 43.419628, 24.561052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305485, 43.818733, 24.668402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248314, 43.481049, 24.461763>,  <37.214012, 43.278439, 24.337780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248314, 43.481049, 24.461763>,  <37.305485, 43.818733, 24.668402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248314, 43.481049, 24.461763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672070, -0.300381, 0.676826,
		-0.726563, 0.443928, -0.524438,
		-0.142930, -0.844215, -0.516596,
		37.205437, 43.227783, 24.306786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653316, 43.783333, 24.713675>,  <37.305485, 43.818733, 24.668402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653316, 43.783333, 24.713675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.755348, 43.407810, 24.621090>,  <36.816566, 43.182495, 24.565540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.755348, 43.407810, 24.621090>,  <36.653316, 43.783333, 24.713675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755348, 43.407810, 24.621090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810565, -0.338128, 0.478177,
		-0.527180, 0.065640, -0.847215,
		0.255080, -0.938808, -0.231459,
		36.831871, 43.126167, 24.551653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029736, 43.432549, 24.545740>,  <36.653316, 43.783333, 24.713675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029736, 43.432549, 24.545740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269150, 43.121029, 24.620813>,  <36.412800, 42.934116, 24.665857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269150, 43.121029, 24.620813>,  <36.029736, 43.432549, 24.545740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269150, 43.121029, 24.620813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788688, -0.531798, 0.308484,
		-0.140438, -0.332663, -0.932530,
		0.598538, -0.778798, 0.187683,
		36.448711, 42.887390, 24.677118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791958, 42.867447, 24.147400>,  <36.029736, 43.432549, 24.545740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791958, 42.867447, 24.147400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.994640, 42.714184, 24.456320>,  <36.116249, 42.622227, 24.641672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.994640, 42.714184, 24.456320>,  <35.791958, 42.867447, 24.147400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994640, 42.714184, 24.456320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779760, -0.585785, 0.220974,
		0.367732, -0.714175, -0.595589,
		0.506702, -0.383157, 0.772298,
		36.146652, 42.599236, 24.688009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474056, 42.196022, 24.213371>,  <35.791958, 42.867447, 24.147400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474056, 42.196022, 24.213371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.685783, 42.216736, 24.552107>,  <35.812820, 42.229164, 24.755348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.685783, 42.216736, 24.552107>,  <35.474056, 42.196022, 24.213371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685783, 42.216736, 24.552107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660665, -0.601069, 0.449709,
		0.532299, -0.797517, -0.283945,
		0.529321, 0.051787, 0.846840,
		35.844578, 42.232273, 24.806158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634998, 41.588196, 24.412502>,  <35.474056, 42.196022, 24.213371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634998, 41.588196, 24.412502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.658249, 41.785675, 24.759579>,  <35.672199, 41.904163, 24.967825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.658249, 41.785675, 24.759579>,  <35.634998, 41.588196, 24.412502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658249, 41.785675, 24.759579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723934, -0.577639, 0.377165,
		0.687416, -0.650074, 0.323825,
		0.058131, 0.493697, 0.867689,
		35.675690, 41.933784, 25.019886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577084, 41.072540, 24.898119>,  <35.634998, 41.588196, 24.412502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577084, 41.072540, 24.898119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.453701, 41.407486, 25.078638>,  <35.379673, 41.608456, 25.186949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.453701, 41.407486, 25.078638>,  <35.577084, 41.072540, 24.898119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453701, 41.407486, 25.078638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780276, -0.494092, 0.383461,
		0.544080, -0.233855, 0.805785,
		-0.308458, 0.837368, 0.451297,
		35.361164, 41.658695, 25.214027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515301, 40.787994, 25.630737>,  <35.577084, 41.072540, 24.898119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515301, 40.787994, 25.630737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.333317, 41.144108, 25.638906>,  <35.224129, 41.357777, 25.643808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.333317, 41.144108, 25.638906>,  <35.515301, 40.787994, 25.630737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333317, 41.144108, 25.638906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747596, -0.394303, 0.534439,
		0.483853, 0.227877, 0.844960,
		-0.454957, 0.890279, 0.020425,
		35.196831, 41.411190, 25.645035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433159, 40.953674, 26.315289>,  <35.515301, 40.787994, 25.630737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433159, 40.953674, 26.315289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.177303, 41.181828, 26.109173>,  <35.023788, 41.318718, 25.985504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.177303, 41.181828, 26.109173>,  <35.433159, 40.953674, 26.315289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177303, 41.181828, 26.109173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755195, -0.341323, 0.559624,
		0.143321, 0.747101, 0.649075,
		-0.639640, 0.570385, -0.515289,
		34.985413, 41.352943, 25.954586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023155, 41.263493, 26.830694>,  <35.433159, 40.953674, 26.315289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023155, 41.263493, 26.830694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.820393, 41.297062, 26.487534>,  <34.698734, 41.317204, 26.281637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.820393, 41.297062, 26.487534>,  <35.023155, 41.263493, 26.830694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820393, 41.297062, 26.487534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807729, -0.393806, 0.438737,
		-0.301025, 0.915354, 0.267416,
		-0.506910, 0.083928, -0.857904,
		34.668320, 41.322239, 26.230162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422562, 41.452995, 27.013905>,  <35.023155, 41.263493, 26.830694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422562, 41.452995, 27.013905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.350819, 41.298481, 26.651995>,  <34.307774, 41.205772, 26.434849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.350819, 41.298481, 26.651995>,  <34.422562, 41.452995, 27.013905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350819, 41.298481, 26.651995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870120, -0.366850, 0.329108,
		-0.459046, 0.846290, -0.270316,
		-0.179355, -0.386283, -0.904774,
		34.297012, 41.182594, 26.380562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732635, 41.466084, 26.901449>,  <34.422562, 41.452995, 27.013905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732635, 41.466084, 26.901449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.845249, 41.194321, 26.630409>,  <33.912815, 41.031261, 26.467785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.845249, 41.194321, 26.630409>,  <33.732635, 41.466084, 26.901449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845249, 41.194321, 26.630409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791101, -0.563988, 0.236807,
		-0.543046, 0.469379, -0.696264,
		0.281532, -0.679412, -0.677598,
		33.929710, 40.990498, 26.427130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136955, 41.239445, 26.523270>,  <33.732635, 41.466084, 26.901449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136955, 41.239445, 26.523270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.384602, 40.934734, 26.446976>,  <33.533192, 40.751907, 26.401199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.384602, 40.934734, 26.446976>,  <33.136955, 41.239445, 26.523270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384602, 40.934734, 26.446976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716853, -0.647408, 0.258812,
		-0.320642, -0.023507, -0.946909,
		0.619121, -0.761781, -0.190735,
		33.570339, 40.706200, 26.389755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779541, 40.815792, 26.123716>,  <33.136955, 41.239445, 26.523270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779541, 40.815792, 26.123716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.070625, 40.597069, 26.289337>,  <33.245277, 40.465836, 26.388710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.070625, 40.597069, 26.289337>,  <32.779541, 40.815792, 26.123716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070625, 40.597069, 26.289337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673320, -0.684543, 0.279358,
		0.130682, -0.482082, -0.866325,
		0.727710, -0.546807, 0.414053,
		33.288937, 40.433025, 26.413553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741364, 40.895370, 25.392076>,  <32.779541, 40.815792, 26.123716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741364, 40.895370, 25.392076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.421726, 40.993176, 25.172382>,  <32.229942, 41.051861, 25.040565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.421726, 40.993176, 25.172382>,  <32.741364, 40.895370, 25.392076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421726, 40.993176, 25.172382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589088, 0.500926, -0.634073,
		0.120084, -0.830232, -0.544329,
		-0.799097, 0.244516, -0.549233,
		32.181995, 41.066528, 25.007612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911686, 40.581841, 24.730673>,  <32.741364, 40.895370, 25.392076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911686, 40.581841, 24.730673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.643463, 40.868683, 24.654673>,  <32.482529, 41.040791, 24.609072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.643463, 40.868683, 24.654673>,  <32.911686, 40.581841, 24.730673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643463, 40.868683, 24.654673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596728, 0.369224, -0.712454,
		-0.440754, -0.591123, -0.675506,
		-0.670561, 0.717111, -0.190002,
		32.442295, 41.083817, 24.597672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862949, 40.562523, 23.993916>,  <32.911686, 40.581841, 24.730673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862949, 40.562523, 23.993916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.702141, 40.906296, 24.120249>,  <32.605656, 41.112560, 24.196049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.702141, 40.906296, 24.120249>,  <32.862949, 40.562523, 23.993916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702141, 40.906296, 24.120249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375858, 0.469429, -0.798978,
		-0.834932, -0.202496, -0.511746,
		-0.402019, 0.859437, 0.315832,
		32.581535, 41.164127, 24.214998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572647, 40.925461, 23.448576>,  <32.862949, 40.562523, 23.993916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572647, 40.925461, 23.448576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.653374, 41.182995, 23.743805>,  <32.701809, 41.337517, 23.920942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.653374, 41.182995, 23.743805>,  <32.572647, 40.925461, 23.448576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653374, 41.182995, 23.743805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546786, 0.551147, -0.630287,
		-0.812586, 0.530768, -0.240810,
		0.201815, 0.643834, 0.738071,
		32.713917, 41.376144, 23.965225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395912, 41.644989, 23.215080>,  <32.572647, 40.925461, 23.448576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395912, 41.644989, 23.215080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.675312, 41.689976, 23.497768>,  <32.842953, 41.716969, 23.667381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.675312, 41.689976, 23.497768>,  <32.395912, 41.644989, 23.215080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675312, 41.689976, 23.497768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461785, 0.683598, -0.565197,
		-0.546676, 0.721142, 0.425558,
		0.698498, 0.112463, 0.706720,
		32.884861, 41.723713, 23.709784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425972, 42.330269, 23.093588>,  <32.395912, 41.644989, 23.215080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425972, 42.330269, 23.093588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.721210, 42.230293, 23.344267>,  <32.898354, 42.170307, 23.494675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.721210, 42.230293, 23.344267>,  <32.425972, 42.330269, 23.093588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721210, 42.230293, 23.344267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602927, 0.661227, -0.446383,
		-0.302819, 0.707325, 0.638743,
		0.738092, -0.249942, 0.626697,
		32.942638, 42.155312, 23.532276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685921, 42.898525, 23.309355>,  <32.425972, 42.330269, 23.093588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685921, 42.898525, 23.309355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.987633, 42.643978, 23.373972>,  <33.168659, 42.491249, 23.412743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.987633, 42.643978, 23.373972>,  <32.685921, 42.898525, 23.309355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987633, 42.643978, 23.373972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630955, 0.634551, -0.446363,
		0.181544, 0.438609, 0.880150,
		0.754279, -0.636370, 0.161544,
		33.213917, 42.453068, 23.422436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127605, 43.350796, 23.512270>,  <32.685921, 42.898525, 23.309355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127605, 43.350796, 23.512270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.320496, 43.016499, 23.407206>,  <33.436230, 42.815918, 23.344166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.320496, 43.016499, 23.407206>,  <33.127605, 43.350796, 23.512270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320496, 43.016499, 23.407206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689921, 0.547068, -0.474052,
		0.539881, 0.047381, 0.840407,
		0.482221, -0.835746, -0.262662,
		33.465160, 42.765774, 23.328407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684013, 43.562195, 23.698858>,  <33.127605, 43.350796, 23.512270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684013, 43.562195, 23.698858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.736660, 43.261139, 23.440802>,  <33.768250, 43.080505, 23.285969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.736660, 43.261139, 23.440802>,  <33.684013, 43.562195, 23.698858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736660, 43.261139, 23.440802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586333, 0.583860, -0.561535,
		0.799307, -0.304359, 0.518145,
		0.131616, -0.752644, -0.645139,
		33.776146, 43.035347, 23.247259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372097, 43.578743, 23.520382>,  <33.684013, 43.562195, 23.698858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372097, 43.578743, 23.520382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.216011, 43.373966, 23.214272>,  <34.122360, 43.251099, 23.030605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.216011, 43.373966, 23.214272>,  <34.372097, 43.578743, 23.520382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216011, 43.373966, 23.214272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537950, 0.547772, -0.640746,
		0.747221, -0.661709, 0.061650,
		-0.390218, -0.511944, -0.765274,
		34.098946, 43.220383, 22.984690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934475, 43.351040, 23.067144>,  <34.372097, 43.578743, 23.520382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934475, 43.351040, 23.067144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.618439, 43.326485, 22.823181>,  <34.428818, 43.311752, 22.676804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.618439, 43.326485, 22.823181>,  <34.934475, 43.351040, 23.067144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618439, 43.326485, 22.823181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549542, 0.369885, -0.749125,
		0.271585, -0.927047, -0.258507,
		-0.790092, -0.061391, -0.609906,
		34.381413, 43.308067, 22.640209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200466, 43.237991, 22.474958>,  <34.934475, 43.351040, 23.067144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200466, 43.237991, 22.474958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.843212, 43.351192, 22.335114>,  <34.628860, 43.419113, 22.251207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.843212, 43.351192, 22.335114>,  <35.200466, 43.237991, 22.474958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843212, 43.351192, 22.335114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448903, 0.511861, -0.732451,
		-0.028333, -0.811116, -0.584199,
		-0.893131, 0.283001, -0.349610,
		34.575272, 43.436092, 22.230230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178242, 42.974228, 21.840811>,  <35.200466, 43.237991, 22.474958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178242, 42.974228, 21.840811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.003563, 43.332294, 21.876514>,  <34.898754, 43.547134, 21.897936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.003563, 43.332294, 21.876514>,  <35.178242, 42.974228, 21.840811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003563, 43.332294, 21.876514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565023, 0.350135, -0.747097,
		-0.700032, -0.275822, -0.658694,
		-0.436698, 0.895169, 0.089260,
		34.872555, 43.600845, 21.903292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940762, 43.172222, 21.173222>,  <35.178242, 42.974228, 21.840811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940762, 43.172222, 21.173222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.983929, 43.517662, 21.370216>,  <35.009830, 43.724926, 21.488413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.983929, 43.517662, 21.370216>,  <34.940762, 43.172222, 21.173222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983929, 43.517662, 21.370216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415696, 0.410796, -0.811445,
		-0.903078, 0.292294, -0.314665,
		0.107917, 0.863604, 0.492486,
		35.016304, 43.776745, 21.517962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960831, 43.706890, 20.574841>,  <34.940762, 43.172222, 21.173222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960831, 43.706890, 20.574841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.099258, 43.886253, 20.904488>,  <35.182316, 43.993870, 21.102276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.099258, 43.886253, 20.904488>,  <34.960831, 43.706890, 20.574841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099258, 43.886253, 20.904488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635188, 0.534483, -0.557552,
		-0.690485, 0.716422, -0.099852,
		0.346073, 0.448405, 0.824115,
		35.203079, 44.020775, 21.151722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012669, 44.359783, 20.338537>,  <34.960831, 43.706890, 20.574841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012669, 44.359783, 20.338537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.251972, 44.323830, 20.657034>,  <35.395554, 44.302258, 20.848133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.251972, 44.323830, 20.657034>,  <35.012669, 44.359783, 20.338537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251972, 44.323830, 20.657034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591534, 0.719846, -0.363194,
		-0.540527, 0.688290, 0.483826,
		0.598263, -0.089883, 0.796243,
		35.431450, 44.296864, 20.895906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227982, 45.000668, 20.436787>,  <35.012669, 44.359783, 20.338537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227982, 45.000668, 20.436787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.500820, 44.787739, 20.637341>,  <35.664524, 44.659981, 20.757673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.500820, 44.787739, 20.637341>,  <35.227982, 45.000668, 20.436787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500820, 44.787739, 20.637341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724890, 0.582541, -0.367670,
		-0.096360, 0.614234, 0.783219,
		0.682092, -0.532319, 0.501385,
		35.705448, 44.628044, 20.787756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668434, 45.486549, 20.752079>,  <35.227982, 45.000668, 20.436787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668434, 45.486549, 20.752079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.864647, 45.138691, 20.729828>,  <35.982376, 44.929977, 20.716476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.864647, 45.138691, 20.729828>,  <35.668434, 45.486549, 20.752079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864647, 45.138691, 20.729828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771254, 0.462981, -0.436825,
		0.405637, 0.171374, 0.897825,
		0.490536, -0.869643, -0.055629,
		36.011806, 44.877796, 20.713139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.467403, 45.659958, 21.005987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.497803, 45.306320, 20.821554>,  <36.516041, 45.094135, 20.710894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.497803, 45.306320, 20.821554>,  <36.467403, 45.659958, 21.005987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497803, 45.306320, 20.821554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949306, 0.205614, -0.237784,
		0.305029, -0.419637, 0.854905,
		0.075997, -0.884097, -0.461082,
		36.520603, 45.041092, 20.683229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083775, 45.381260, 21.105953>,  <36.467403, 45.659958, 21.005987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083775, 45.381260, 21.105953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.985977, 45.165234, 20.783821>,  <36.927299, 45.035618, 20.590542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.985977, 45.165234, 20.783821>,  <37.083775, 45.381260, 21.105953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985977, 45.165234, 20.783821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957994, -0.006137, -0.286722,
		0.149906, -0.841602, 0.518878,
		-0.244491, -0.540063, -0.805330,
		36.912628, 45.003216, 20.542223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540760, 44.851559, 21.009659>,  <37.083775, 45.381260, 21.105953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540760, 44.851559, 21.009659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.365200, 44.872562, 20.650858>,  <37.259865, 44.885166, 20.435577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.365200, 44.872562, 20.650858>,  <37.540760, 44.851559, 21.009659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365200, 44.872562, 20.650858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891502, -0.099231, -0.442015,
		-0.112221, -0.993678, -0.003262,
		-0.438897, 0.052512, -0.897002,
		37.233532, 44.888317, 20.381758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907223, 44.370098, 20.582758>,  <37.540760, 44.851559, 21.009659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907223, 44.370098, 20.582758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.721165, 44.611080, 20.323317>,  <37.609531, 44.755669, 20.167652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.721165, 44.611080, 20.323317>,  <37.907223, 44.370098, 20.582758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721165, 44.611080, 20.323317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832106, 0.047552, -0.552575,
		-0.302060, -0.796733, -0.523427,
		-0.465145, 0.602457, -0.648603,
		37.581623, 44.791817, 20.128736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875080, 44.087082, 19.877481>,  <37.907223, 44.370098, 20.582758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875080, 44.087082, 19.877481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.874866, 44.486980, 19.868450>,  <37.874737, 44.726921, 19.863031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.874866, 44.486980, 19.868450>,  <37.875080, 44.087082, 19.877481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874866, 44.486980, 19.868450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726864, -0.015117, -0.686615,
		-0.686781, -0.016782, -0.726671,
		-0.000538, 0.999745, -0.022580,
		37.874706, 44.786903, 19.861675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929970, 44.297642, 19.133478>,  <37.875080, 44.087082, 19.877481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929970, 44.297642, 19.133478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.034424, 44.619469, 19.346825>,  <38.097095, 44.812565, 19.474833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.034424, 44.619469, 19.346825>,  <37.929970, 44.297642, 19.133478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034424, 44.619469, 19.346825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775286, 0.154380, -0.612453,
		-0.575101, 0.573444, -0.583456,
		0.261134, 0.804568, 0.533367,
		38.112762, 44.860840, 19.506834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128727, 44.627712, 18.587942>,  <37.929970, 44.297642, 19.133478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128727, 44.627712, 18.587942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.275589, 44.834511, 18.897240>,  <38.363705, 44.958591, 19.082819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.275589, 44.834511, 18.897240>,  <38.128727, 44.627712, 18.587942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275589, 44.834511, 18.897240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594503, 0.508916, -0.622551,
		-0.715375, 0.688271, -0.120506,
		0.367157, 0.516999, 0.773245,
		38.385735, 44.989609, 19.129213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240578, 45.318001, 18.317759>,  <38.128727, 44.627712, 18.587942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240578, 45.318001, 18.317759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458134, 45.293236, 18.652506>,  <38.588669, 45.278378, 18.853355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458134, 45.293236, 18.652506>,  <38.240578, 45.318001, 18.317759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458134, 45.293236, 18.652506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685207, 0.608477, -0.400307,
		-0.484433, 0.791152, 0.373366,
		0.543889, -0.061911, 0.836870,
		38.621300, 45.274662, 18.903566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474365, 46.077557, 18.495863>,  <38.240578, 45.318001, 18.317759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474365, 46.077557, 18.495863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.736782, 45.842518, 18.685322>,  <38.894230, 45.701492, 18.798996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.736782, 45.842518, 18.685322>,  <38.474365, 46.077557, 18.495863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736782, 45.842518, 18.685322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748238, 0.424257, -0.510046,
		0.098755, 0.689009, 0.717993,
		0.656040, -0.587599, 0.473645,
		38.933594, 45.666237, 18.827415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950401, 46.442627, 18.859489>,  <38.474365, 46.077557, 18.495863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950401, 46.442627, 18.859489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.154991, 46.108479, 18.778944>,  <39.277744, 45.907990, 18.730618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.154991, 46.108479, 18.778944>,  <38.950401, 46.442627, 18.859489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154991, 46.108479, 18.778944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796736, 0.548813, -0.253016,
		0.321872, -0.031020, 0.946275,
		0.511479, -0.835370, -0.201362,
		39.308434, 45.857868, 18.718534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569939, 46.629787, 19.067039>,  <38.950401, 46.442627, 18.859489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569939, 46.629787, 19.067039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.645615, 46.286034, 18.877020>,  <39.691021, 46.079781, 18.763008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.645615, 46.286034, 18.877020>,  <39.569939, 46.629787, 19.067039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645615, 46.286034, 18.877020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943387, 0.293305, -0.154899,
		0.272452, -0.418852, 0.866218,
		0.189186, -0.859381, -0.475050,
		39.702370, 46.028221, 18.734505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348473, 46.401146, 19.256090>,  <39.569939, 46.629787, 19.067039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348473, 46.401146, 19.256090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.217850, 46.257015, 18.906570>,  <40.139477, 46.170536, 18.696859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.217850, 46.257015, 18.906570>,  <40.348473, 46.401146, 19.256090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217850, 46.257015, 18.906570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856818, 0.277433, -0.434619,
		0.399026, -0.890614, 0.218139,
		-0.326559, -0.360330, -0.873797,
		40.119881, 46.148918, 18.644432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854027, 46.068844, 19.001619>,  <40.348473, 46.401146, 19.256090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854027, 46.068844, 19.001619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.643372, 46.101894, 18.663193>,  <40.516979, 46.121727, 18.460136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.643372, 46.101894, 18.663193>,  <40.854027, 46.068844, 19.001619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643372, 46.101894, 18.663193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848611, 0.109808, -0.517495,
		0.050144, -0.990512, -0.127949,
		-0.526635, 0.082630, -0.846066,
		40.485382, 46.126682, 18.409372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223236, 45.681923, 18.419680>,  <40.854027, 46.068844, 19.001619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223236, 45.681923, 18.419680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.991508, 45.904999, 18.181900>,  <40.852470, 46.038845, 18.039232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.991508, 45.904999, 18.181900>,  <41.223236, 45.681923, 18.419680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991508, 45.904999, 18.181900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717098, 0.002000, -0.696970,
		-0.387505, -0.830046, -0.401078,
		-0.579319, 0.557691, -0.594449,
		40.817711, 46.072308, 18.003565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125492, 45.390675, 17.779488>,  <41.223236, 45.681923, 18.419680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125492, 45.390675, 17.779488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.061028, 45.783321, 17.738602>,  <41.022346, 46.018909, 17.714069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.061028, 45.783321, 17.738602>,  <41.125492, 45.390675, 17.779488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061028, 45.783321, 17.738602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668981, 0.032513, -0.742568,
		-0.725596, -0.188055, -0.661926,
		-0.161164, 0.981620, -0.102214,
		41.012680, 46.077808, 17.707937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111862, 45.584827, 17.070704>,  <41.125492, 45.390675, 17.779488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111862, 45.584827, 17.070704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.192097, 45.941170, 17.233744>,  <41.240238, 46.154976, 17.331568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.192097, 45.941170, 17.233744>,  <41.111862, 45.584827, 17.070704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192097, 45.941170, 17.233744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634817, 0.198693, -0.746678,
		-0.746171, 0.408527, -0.525675,
		0.200590, 0.890857, 0.407599,
		41.252274, 46.208427, 17.356024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458412, 45.838585, 16.552038>,  <41.111862, 45.584827, 17.070704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458412, 45.838585, 16.552038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.464298, 46.168842, 16.777636>,  <41.467831, 46.366997, 16.912994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.464298, 46.168842, 16.777636>,  <41.458412, 45.838585, 16.552038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464298, 46.168842, 16.777636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555958, 0.462069, -0.690944,
		-0.831080, 0.323727, -0.452225,
		0.014718, 0.825648, 0.563994,
		41.468712, 46.416538, 16.946835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344604, 46.251766, 16.022642>,  <41.458412, 45.838585, 16.552038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344604, 46.251766, 16.022642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.521725, 46.402721, 16.347973>,  <41.627998, 46.493294, 16.543171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.521725, 46.402721, 16.347973>,  <41.344604, 46.251766, 16.022642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521725, 46.402721, 16.347973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673646, 0.458607, -0.579552,
		-0.591716, 0.804522, -0.051157,
		0.442801, 0.377392, 0.813328,
		41.654564, 46.515938, 16.591970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536121, 47.024349, 16.016890>,  <41.344604, 46.251766, 16.022642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536121, 47.024349, 16.016890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.796169, 46.856892, 16.270531>,  <41.952198, 46.756416, 16.422714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.796169, 46.856892, 16.270531>,  <41.536121, 47.024349, 16.016890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796169, 46.856892, 16.270531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757524, 0.422111, -0.497975,
		-0.059189, 0.804090, 0.591554,
		0.650118, -0.418642, 0.634102,
		41.991203, 46.731300, 16.460762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158207, 47.367466, 15.818648>,  <41.536121, 47.024349, 16.016890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158207, 47.367466, 15.818648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.293224, 47.087440, 16.070354>,  <42.374233, 46.919426, 16.221378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.293224, 47.087440, 16.070354>,  <42.158207, 47.367466, 15.818648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293224, 47.087440, 16.070354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890521, 0.020867, -0.454463,
		0.305023, 0.713773, 0.630467,
		0.337539, -0.700066, 0.629265,
		42.394485, 46.877422, 16.259134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704670, 47.631542, 16.163580>,  <42.158207, 47.367466, 15.818648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704670, 47.631542, 16.163580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.752129, 47.234711, 16.180048>,  <42.780605, 46.996613, 16.189928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.752129, 47.234711, 16.180048>,  <42.704670, 47.631542, 16.163580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752129, 47.234711, 16.180048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878449, 0.085551, -0.470115,
		0.462870, 0.091945, 0.881645,
		0.118650, -0.992082, 0.041170,
		42.787724, 46.937084, 16.192398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418236, 47.462704, 16.361900>,  <42.704670, 47.631542, 16.163580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418236, 47.462704, 16.361900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.282379, 47.119366, 16.208080>,  <43.200863, 46.913361, 16.115788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.282379, 47.119366, 16.208080>,  <43.418236, 47.462704, 16.361900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282379, 47.119366, 16.208080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882537, -0.149468, -0.445856,
		0.325221, -0.490813, 0.808291,
		-0.339646, -0.858348, -0.384550,
		43.180485, 46.861862, 16.092714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870800, 46.879242, 16.462172>,  <43.418236, 47.462704, 16.361900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870800, 46.879242, 16.462172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.657253, 46.838051, 16.126463>,  <43.529125, 46.813335, 15.925037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.657253, 46.838051, 16.126463>,  <43.870800, 46.879242, 16.462172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657253, 46.838051, 16.126463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842183, -0.153482, -0.516886,
		-0.075584, -0.982771, 0.168668,
		-0.533868, -0.102981, -0.839274,
		43.497093, 46.807156, 15.874681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583755, 46.596561, 16.055508>,  <43.870800, 46.879242, 16.462172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583755, 46.596561, 16.055508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.777390, 46.299255, 16.240211>,  <44.893570, 46.120872, 16.351034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.777390, 46.299255, 16.240211>,  <44.583755, 46.596561, 16.055508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.777390, 46.299255, 16.240211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712704, -0.028756, 0.700876,
		-0.507657, -0.668380, -0.543647,
		0.484084, -0.743264, 0.461759,
		44.922615, 46.076275, 16.378738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106483, 46.169323, 16.118191>,  <44.583755, 46.596561, 16.055508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106483, 46.169323, 16.118191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.390953, 46.041740, 16.368790>,  <44.561634, 45.965191, 16.519150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.390953, 46.041740, 16.368790>,  <44.106483, 46.169323, 16.118191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390953, 46.041740, 16.368790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694078, -0.176896, 0.697828,
		-0.111751, -0.931115, -0.347183,
		0.711174, -0.318955, 0.626498,
		44.604305, 45.946053, 16.556740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878418, 45.483997, 16.370108>,  <44.106483, 46.169323, 16.118191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878418, 45.483997, 16.370108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.139771, 45.593765, 16.652323>,  <44.296581, 45.659626, 16.821651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.139771, 45.593765, 16.652323>,  <43.878418, 45.483997, 16.370108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.139771, 45.593765, 16.652323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701188, -0.131924, 0.700665,
		0.285356, -0.952517, 0.106225,
		0.653381, 0.274422, 0.705539,
		44.335785, 45.676090, 16.863985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871120, 44.939274, 16.888201>,  <43.878418, 45.483997, 16.370108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871120, 44.939274, 16.888201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.061329, 45.237484, 17.074993>,  <44.175453, 45.416409, 17.187069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.061329, 45.237484, 17.074993>,  <43.871120, 44.939274, 16.888201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.061329, 45.237484, 17.074993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532896, -0.178239, 0.827196,
		0.699927, -0.642206, 0.312528,
		0.475525, 0.745522, 0.466983,
		44.203987, 45.461140, 17.215088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.341991, 44.673008, 17.454435>,  <43.871120, 44.939274, 16.888201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.341991, 44.673008, 17.454435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.271954, 45.048241, 17.573997>,  <44.229931, 45.273380, 17.645735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.271954, 45.048241, 17.573997>,  <44.341991, 44.673008, 17.454435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271954, 45.048241, 17.573997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423490, -0.345837, 0.837289,
		0.888818, 0.020021, 0.457822,
		-0.175095, 0.938081, 0.298907,
		44.219425, 45.329666, 17.663670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528591, 44.671223, 18.124763>,  <44.341991, 44.673008, 17.454435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528591, 44.671223, 18.124763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.301533, 45.000278, 18.111877>,  <44.165298, 45.197712, 18.104145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.301533, 45.000278, 18.111877>,  <44.528591, 44.671223, 18.124763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301533, 45.000278, 18.111877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571375, -0.365487, 0.734813,
		0.592713, 0.435521, 0.677505,
		-0.567646, 0.822642, -0.032217,
		44.131241, 45.247070, 18.102213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556259, 44.934917, 18.755322>,  <44.528591, 44.671223, 18.124763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556259, 44.934917, 18.755322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.228226, 45.115993, 18.615297>,  <44.031406, 45.224640, 18.531282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.228226, 45.115993, 18.615297>,  <44.556259, 44.934917, 18.755322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228226, 45.115993, 18.615297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509208, -0.298153, 0.807348,
		0.261105, 0.840344, 0.475022,
		-0.820080, 0.452688, -0.350060,
		43.982201, 45.251801, 18.510279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206959, 45.274014, 19.326864>,  <44.556259, 44.934917, 18.755322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206959, 45.274014, 19.326864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.922756, 45.209946, 19.052774>,  <43.752235, 45.171505, 18.888321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.922756, 45.209946, 19.052774>,  <44.206959, 45.274014, 19.326864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.922756, 45.209946, 19.052774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617575, -0.324853, 0.716290,
		-0.337324, 0.932103, 0.131894,
		-0.710503, -0.160167, -0.685224,
		43.709606, 45.161896, 18.847208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756527, 45.281315, 19.708893>,  <44.206959, 45.274014, 19.326864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756527, 45.281315, 19.708893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.550919, 45.184433, 19.379744>,  <43.427555, 45.126305, 19.182255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.550919, 45.184433, 19.379744>,  <43.756527, 45.281315, 19.708893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.550919, 45.184433, 19.379744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834485, -0.080834, 0.545069,
		-0.198535, 0.966852, -0.160567,
		-0.514022, -0.242206, -0.822872,
		43.396713, 45.111771, 19.132881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099503, 45.679501, 19.640100>,  <43.756527, 45.281315, 19.708893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099503, 45.679501, 19.640100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.067436, 45.332878, 19.443060>,  <43.048199, 45.124905, 19.324835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.067436, 45.332878, 19.443060>,  <43.099503, 45.679501, 19.640100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067436, 45.332878, 19.443060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936713, -0.103472, 0.334457,
		-0.340796, 0.488240, -0.803418,
		-0.080164, -0.866554, -0.492604,
		43.043388, 45.072910, 19.295279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421139, 45.607670, 19.363125>,  <43.099503, 45.679501, 19.640100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421139, 45.607670, 19.363125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.516529, 45.219311, 19.354355>,  <42.573765, 44.986294, 19.349092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.516529, 45.219311, 19.354355>,  <42.421139, 45.607670, 19.363125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516529, 45.219311, 19.354355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930616, -0.234923, 0.280650,
		-0.277635, -0.046524, -0.959560,
		0.238479, -0.970900, -0.021927,
		42.588074, 44.928040, 19.347778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947735, 45.226795, 18.849323>,  <42.421139, 45.607670, 19.363125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947735, 45.226795, 18.849323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.076759, 44.947079, 19.104492>,  <42.154175, 44.779247, 19.257593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.076759, 44.947079, 19.104492>,  <41.947735, 45.226795, 18.849323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076759, 44.947079, 19.104492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939129, -0.320651, 0.123371,
		0.118278, -0.638886, -0.760154,
		0.322565, -0.699291, 0.637922,
		42.173531, 44.737293, 19.295868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421150, 44.691509, 18.757418>,  <41.947735, 45.226795, 18.849323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421150, 44.691509, 18.757418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.634243, 44.612274, 19.086527>,  <41.762100, 44.564732, 19.283993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.634243, 44.612274, 19.086527>,  <41.421150, 44.691509, 18.757418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634243, 44.612274, 19.086527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818874, -0.366082, 0.442074,
		0.213631, -0.909255, -0.357237,
		0.532736, -0.198091, 0.822771,
		41.794064, 44.552849, 19.333359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205082, 43.989559, 19.019768>,  <41.421150, 44.691509, 18.757418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205082, 43.989559, 19.019768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.374432, 44.167236, 19.335602>,  <41.476044, 44.273842, 19.525103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.374432, 44.167236, 19.335602>,  <41.205082, 43.989559, 19.019768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374432, 44.167236, 19.335602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815214, -0.193393, 0.545917,
		0.395194, -0.874808, 0.280237,
		0.423377, 0.444197, 0.789583,
		41.501446, 44.300495, 19.572477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017185, 43.580391, 19.597946>,  <41.205082, 43.989559, 19.019768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017185, 43.580391, 19.597946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.130440, 43.900539, 19.809317>,  <41.198395, 44.092628, 19.936140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.130440, 43.900539, 19.809317>,  <41.017185, 43.580391, 19.597946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130440, 43.900539, 19.809317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753060, -0.155663, 0.639272,
		0.593913, -0.578942, 0.558654,
		0.283139, 0.800372, 0.528428,
		41.215382, 44.140652, 19.967846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027855, 43.370251, 20.256968>,  <41.017185, 43.580391, 19.597946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027855, 43.370251, 20.256968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.997108, 43.768700, 20.274105>,  <40.978661, 44.007767, 20.284388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.997108, 43.768700, 20.274105>,  <41.027855, 43.370251, 20.256968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997108, 43.768700, 20.274105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782286, -0.086896, 0.616829,
		0.618159, 0.013894, 0.785931,
		-0.076864, 0.996121, 0.042846,
		40.974049, 44.067535, 20.286959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177914, 43.592838, 20.894417>,  <41.027855, 43.370251, 20.256968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177914, 43.592838, 20.894417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.941700, 43.879574, 20.746141>,  <40.799973, 44.051617, 20.657177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.941700, 43.879574, 20.746141>,  <41.177914, 43.592838, 20.894417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941700, 43.879574, 20.746141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654672, -0.156943, 0.739441,
		0.471884, 0.679344, 0.561976,
		-0.590533, 0.716841, -0.370688,
		40.764542, 44.094627, 20.634935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928921, 43.845631, 21.432358>,  <41.177914, 43.592838, 20.894417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928921, 43.845631, 21.432358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.687279, 44.006474, 21.157152>,  <40.542294, 44.102982, 20.992029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.687279, 44.006474, 21.157152>,  <40.928921, 43.845631, 21.432358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687279, 44.006474, 21.157152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759312, -0.028407, 0.650106,
		0.241870, 0.915151, 0.322488,
		-0.604106, 0.402110, -0.688014,
		40.506046, 44.127106, 20.950748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709591, 44.472958, 21.699116>,  <40.928921, 43.845631, 21.432358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709591, 44.472958, 21.699116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.442371, 44.354397, 21.426102>,  <40.282040, 44.283260, 21.262293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.442371, 44.354397, 21.426102>,  <40.709591, 44.472958, 21.699116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442371, 44.354397, 21.426102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712599, -0.009291, 0.701510,
		-0.214267, 0.955020, -0.205005,
		-0.668051, -0.296397, -0.682537,
		40.241955, 44.265476, 21.221340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107315, 44.918102, 21.835566>,  <40.709591, 44.472958, 21.699116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107315, 44.918102, 21.835566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.012844, 44.576672, 21.649824>,  <39.956161, 44.371811, 21.538380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.012844, 44.576672, 21.649824>,  <40.107315, 44.918102, 21.835566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012844, 44.576672, 21.649824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766170, -0.130345, 0.629280,
		-0.597667, 0.504394, -0.623202,
		-0.236174, -0.853579, -0.464355,
		39.941990, 44.320599, 21.510517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353115, 44.942379, 21.734133>,  <40.107315, 44.918102, 21.835566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353115, 44.942379, 21.734133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.404587, 44.548244, 21.689299>,  <39.435471, 44.311764, 21.662399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.404587, 44.548244, 21.689299>,  <39.353115, 44.942379, 21.734133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404587, 44.548244, 21.689299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717004, -0.170522, 0.675891,
		-0.685089, -0.006608, -0.728429,
		0.128680, -0.985332, -0.112085,
		39.443192, 44.252644, 21.655674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<33.468616, 43.971756, 21.977171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.817070, 43.783581, 22.033478>,  <34.026142, 43.670673, 22.067263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.817070, 43.783581, 22.033478>,  <33.468616, 43.971756, 21.977171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817070, 43.783581, 22.033478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480638, -0.758155, 0.440667,
		-0.100583, -0.451537, -0.886565,
		0.871131, -0.470440, 0.140769,
		34.078411, 43.642448, 22.075708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330681, 43.242310, 21.947420>,  <33.468616, 43.971756, 21.977171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330681, 43.242310, 21.947420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.663795, 43.261749, 22.168001>,  <33.863667, 43.273411, 22.300350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.663795, 43.261749, 22.168001>,  <33.330681, 43.242310, 21.947420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663795, 43.261749, 22.168001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372351, -0.687971, 0.622938,
		0.409657, -0.724110, -0.554839,
		0.832788, 0.048596, 0.551455,
		33.913631, 43.276329, 22.333437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604359, 42.566219, 21.967018>,  <33.330681, 43.242310, 21.947420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604359, 42.566219, 21.967018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.750851, 42.763836, 22.282434>,  <33.838745, 42.882408, 22.471684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.750851, 42.763836, 22.282434>,  <33.604359, 42.566219, 21.967018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750851, 42.763836, 22.282434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334059, -0.721119, 0.606953,
		0.868492, -0.485705, -0.099057,
		0.366232, 0.494043, 0.788540,
		33.860722, 42.912048, 22.518997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941795, 42.079235, 22.324112>,  <33.604359, 42.566219, 21.967018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941795, 42.079235, 22.324112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.864429, 42.362492, 22.595739>,  <33.818012, 42.532444, 22.758717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.864429, 42.362492, 22.595739>,  <33.941795, 42.079235, 22.324112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864429, 42.362492, 22.595739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386683, -0.691133, 0.610583,
		0.901703, -0.144490, 0.407498,
		-0.193412, 0.708137, 0.679069,
		33.806404, 42.574932, 22.799459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164116, 41.772133, 22.901413>,  <33.941795, 42.079235, 22.324112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164116, 41.772133, 22.901413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.923347, 42.072472, 23.010172>,  <33.778885, 42.252674, 23.075428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.923347, 42.072472, 23.010172>,  <34.164116, 41.772133, 22.901413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923347, 42.072472, 23.010172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447432, -0.599127, 0.663967,
		0.661435, 0.277999, 0.696577,
		-0.601920, 0.750842, 0.271898,
		33.742771, 42.297726, 23.091742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221321, 41.744915, 23.678310>,  <34.164116, 41.772133, 22.901413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221321, 41.744915, 23.678310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.899651, 41.968285, 23.596867>,  <33.706650, 42.102306, 23.548000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.899651, 41.968285, 23.596867>,  <34.221321, 41.744915, 23.678310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899651, 41.968285, 23.596867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524436, -0.505376, 0.685246,
		0.279760, 0.657840, 0.699271,
		-0.804177, 0.558428, -0.203611,
		33.658398, 42.135815, 23.535784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033737, 41.843605, 24.290119>,  <34.221321, 41.744915, 23.678310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033737, 41.843605, 24.290119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.709221, 41.925526, 24.071081>,  <33.514511, 41.974678, 23.939657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.709221, 41.925526, 24.071081>,  <34.033737, 41.843605, 24.290119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709221, 41.925526, 24.071081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564174, -0.519908, 0.641407,
		-0.153341, 0.829308, 0.537340,
		-0.811292, 0.204799, -0.547597,
		33.465832, 41.986965, 23.906801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483326, 42.133106, 24.712156>,  <34.033737, 41.843605, 24.290119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483326, 42.133106, 24.712156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.296162, 41.970673, 24.398174>,  <33.183861, 41.873211, 24.209785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.296162, 41.970673, 24.398174>,  <33.483326, 42.133106, 24.712156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296162, 41.970673, 24.398174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662352, -0.426890, 0.615675,
		-0.585104, 0.807998, -0.069224,
		-0.467913, -0.406085, -0.784954,
		33.155788, 41.848846, 24.162687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846684, 42.211208, 24.931704>,  <33.483326, 42.133106, 24.712156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846684, 42.211208, 24.931704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.812248, 41.953545, 24.627691>,  <32.791588, 41.798946, 24.445284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.812248, 41.953545, 24.627691>,  <32.846684, 42.211208, 24.931704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812248, 41.953545, 24.627691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740904, -0.468622, 0.481098,
		-0.666071, 0.604527, -0.436917,
		-0.086088, -0.644159, -0.760031,
		32.786423, 41.760296, 24.399681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140511, 42.288742, 24.741570>,  <32.846684, 42.211208, 24.931704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140511, 42.288742, 24.741570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.275246, 41.948845, 24.579348>,  <32.356087, 41.744907, 24.482014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.275246, 41.948845, 24.579348>,  <32.140511, 42.288742, 24.741570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275246, 41.948845, 24.579348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809130, -0.481505, 0.336841,
		-0.481505, 0.214684, -0.849743,
		-0.336841, 0.849743, 0.405555,
		32.376297, 41.693920, 24.457682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497282, 41.989441, 24.421677>,  <32.140511, 42.288742, 24.741570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497282, 41.989441, 24.421677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.779961, 41.708721, 24.457588>,  <31.949568, 41.540291, 24.479136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.779961, 41.708721, 24.457588>,  <31.497282, 41.989441, 24.421677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779961, 41.708721, 24.457588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665463, -0.616221, 0.421226,
		-0.240293, -0.357422, -0.902501,
		0.706696, -0.701799, 0.089777,
		31.991970, 41.498180, 24.484522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233965, 41.359974, 24.185555>,  <31.497282, 41.989441, 24.421677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233965, 41.359974, 24.185555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.533304, 41.249802, 24.426920>,  <31.712908, 41.183697, 24.571739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.533304, 41.249802, 24.426920>,  <31.233965, 41.359974, 24.185555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533304, 41.249802, 24.426920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631081, -0.575750, 0.519854,
		0.204231, -0.769836, -0.604683,
		0.748349, -0.275433, 0.603415,
		31.757809, 41.167171, 24.607944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286282, 40.631611, 24.209946>,  <31.233965, 41.359974, 24.185555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286282, 40.631611, 24.209946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.389015, 40.835468, 24.538408>,  <31.450655, 40.957783, 24.735485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.389015, 40.835468, 24.538408>,  <31.286282, 40.631611, 24.209946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389015, 40.835468, 24.538408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650157, -0.537547, 0.536973,
		0.715076, -0.671793, 0.193291,
		0.256832, 0.509646, 0.821157,
		31.466064, 40.988361, 24.784756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636244, 40.161766, 24.758049>,  <31.286282, 40.631611, 24.209946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636244, 40.161766, 24.758049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.445297, 40.486523, 24.892479>,  <31.330729, 40.681377, 24.973137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.445297, 40.486523, 24.892479>,  <31.636244, 40.161766, 24.758049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445297, 40.486523, 24.892479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733178, -0.578833, 0.356934,
		0.484325, -0.076014, 0.871580,
		-0.477367, 0.811895, 0.336075,
		31.302088, 40.730091, 24.993301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319078, 39.578316, 24.505375>,  <31.636244, 40.161766, 24.758049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319078, 39.578316, 24.505375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.165373, 39.230011, 24.382664>,  <31.073149, 39.021027, 24.309038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.165373, 39.230011, 24.382664>,  <31.319078, 39.578316, 24.505375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165373, 39.230011, 24.382664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770864, -0.119763, -0.625641,
		0.508044, -0.476895, 0.717260,
		-0.384266, -0.870763, -0.306777,
		31.050093, 38.968781, 24.290630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839178, 39.100517, 24.463005>,  <31.319078, 39.578316, 24.505375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839178, 39.100517, 24.463005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.580309, 38.932308, 24.208660>,  <31.424988, 38.831383, 24.056053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.580309, 38.932308, 24.208660>,  <31.839178, 39.100517, 24.463005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580309, 38.932308, 24.208660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752270, -0.217144, -0.622043,
		0.123513, -0.880911, 0.456880,
		-0.647174, -0.420528, -0.635863,
		31.386156, 38.806149, 24.017900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106171, 38.448494, 24.180454>,  <31.839178, 39.100517, 24.463005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106171, 38.448494, 24.180454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.832748, 38.576164, 23.917889>,  <31.668695, 38.652767, 23.760349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.832748, 38.576164, 23.917889>,  <32.106171, 38.448494, 24.180454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832748, 38.576164, 23.917889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696429, 0.015994, -0.717447,
		-0.218494, -0.947560, -0.233218,
		-0.683554, 0.319178, -0.656413,
		31.627682, 38.671917, 23.720964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137028, 37.937279, 23.613647>,  <32.106171, 38.448494, 24.180454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137028, 37.937279, 23.613647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.965307, 38.271198, 23.475769>,  <31.862276, 38.471550, 23.393042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.965307, 38.271198, 23.475769>,  <32.137028, 37.937279, 23.613647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965307, 38.271198, 23.475769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656766, 0.026565, -0.753627,
		-0.619968, -0.549917, -0.559670,
		-0.429300, 0.834797, -0.344698,
		31.836517, 38.521637, 23.372360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214706, 37.829933, 23.005486>,  <32.137028, 37.937279, 23.613647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214706, 37.829933, 23.005486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.088242, 38.208942, 22.986526>,  <32.012363, 38.436348, 22.975151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.088242, 38.208942, 22.986526>,  <32.214706, 37.829933, 23.005486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088242, 38.208942, 22.986526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688091, 0.194631, -0.699035,
		-0.653124, -0.253622, -0.713516,
		-0.316163, 0.947520, -0.047397,
		31.993393, 38.493198, 22.972307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104710, 37.924362, 22.229385>,  <32.214706, 37.829933, 23.005486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104710, 37.924362, 22.229385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.181606, 38.269993, 22.415468>,  <32.227745, 38.477371, 22.527119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.181606, 38.269993, 22.415468>,  <32.104710, 37.924362, 22.229385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181606, 38.269993, 22.415468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717539, 0.199627, -0.667298,
		-0.669463, 0.462088, -0.581630,
		0.192241, 0.864074, 0.465209,
		32.239277, 38.529217, 22.555031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198105, 38.460499, 21.627825>,  <32.104710, 37.924362, 22.229385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198105, 38.460499, 21.627825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.363670, 38.609978, 21.959854>,  <32.463009, 38.699665, 22.159073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.363670, 38.609978, 21.959854>,  <32.198105, 38.460499, 21.627825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363670, 38.609978, 21.959854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737963, 0.396150, -0.546329,
		-0.532996, 0.838699, -0.111802,
		0.413916, 0.373697, 0.830075,
		32.487846, 38.722088, 22.208878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286160, 39.213139, 21.560728>,  <32.198105, 38.460499, 21.627825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286160, 39.213139, 21.560728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.541149, 39.075546, 21.836498>,  <32.694141, 38.992992, 22.001961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.541149, 39.075546, 21.836498>,  <32.286160, 39.213139, 21.560728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541149, 39.075546, 21.836498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766449, 0.374446, -0.521868,
		-0.078642, 0.861086, 0.502341,
		0.637473, -0.343978, 0.689426,
		32.732391, 38.972351, 22.043325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732594, 39.724831, 21.521704>,  <32.286160, 39.213139, 21.560728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732594, 39.724831, 21.521704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.930218, 39.436161, 21.715649>,  <33.048794, 39.262959, 21.832016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.930218, 39.436161, 21.715649>,  <32.732594, 39.724831, 21.521704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930218, 39.436161, 21.715649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866394, 0.362121, -0.343845,
		0.072565, 0.589962, 0.804163,
		0.494060, -0.721673, 0.484863,
		33.078434, 39.219658, 21.861107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209148, 40.090012, 21.965771>,  <32.732594, 39.724831, 21.521704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209148, 40.090012, 21.965771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.347816, 39.720608, 21.900101>,  <33.431015, 39.498966, 21.860699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.347816, 39.720608, 21.900101>,  <33.209148, 40.090012, 21.965771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347816, 39.720608, 21.900101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896989, 0.377579, -0.229880,
		0.274285, -0.067570, 0.959272,
		0.346667, -0.923509, -0.164174,
		33.451817, 39.443554, 21.850849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888958, 40.178562, 22.285007>,  <33.209148, 40.090012, 21.965771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888958, 40.178562, 22.285007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.931538, 39.833363, 22.087461>,  <33.957085, 39.626244, 21.968935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.931538, 39.833363, 22.087461>,  <33.888958, 40.178562, 22.285007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931538, 39.833363, 22.087461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961893, 0.215181, -0.168696,
		0.251855, -0.457087, 0.853019,
		0.106445, -0.863000, -0.493863,
		33.963470, 39.574463, 21.939302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553486, 39.801678, 22.535839>,  <33.888958, 40.178562, 22.285007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553486, 39.801678, 22.535839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.462017, 39.650478, 22.176991>,  <34.407135, 39.559757, 21.961681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.462017, 39.650478, 22.176991>,  <34.553486, 39.801678, 22.535839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462017, 39.650478, 22.176991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939609, 0.155354, -0.304960,
		0.254647, -0.912677, 0.319649,
		-0.228671, -0.378002, -0.897120,
		34.393417, 39.537079, 21.907854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150158, 39.474510, 22.359325>,  <34.553486, 39.801678, 22.535839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150158, 39.474510, 22.359325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.944027, 39.542488, 22.023336>,  <34.820347, 39.583275, 21.821743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.944027, 39.542488, 22.023336>,  <35.150158, 39.474510, 22.359325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944027, 39.542488, 22.023336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854261, 0.180063, -0.487664,
		0.068373, -0.968864, -0.237969,
		-0.515329, 0.169944, -0.839973,
		34.789429, 39.593472, 21.771345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473423, 39.096294, 21.655027>,  <35.150158, 39.474510, 22.359325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473423, 39.096294, 21.655027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.271687, 39.428696, 21.561155>,  <35.150646, 39.628136, 21.504833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.271687, 39.428696, 21.561155>,  <35.473423, 39.096294, 21.655027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271687, 39.428696, 21.561155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752455, 0.289612, -0.591554,
		-0.423617, -0.474931, -0.771355,
		-0.504342, 0.831003, -0.234679,
		35.120384, 39.677998, 21.490751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664925, 38.604458, 21.172947>,  <35.473423, 39.096294, 21.655027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664925, 38.604458, 21.172947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.983349, 38.392689, 21.290243>,  <36.174404, 38.265629, 21.360620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.983349, 38.392689, 21.290243>,  <35.664925, 38.604458, 21.172947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983349, 38.392689, 21.290243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589505, -0.568641, 0.573700,
		-0.136982, -0.629570, -0.764773,
		0.796065, -0.529424, 0.293241,
		36.222168, 38.233860, 21.378216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463787, 37.892155, 21.034969>,  <35.664925, 38.604458, 21.172947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463787, 37.892155, 21.034969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.747147, 37.880424, 21.317049>,  <35.917164, 37.873386, 21.486298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.747147, 37.880424, 21.317049>,  <35.463787, 37.892155, 21.034969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747147, 37.880424, 21.317049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598196, -0.555232, 0.577823,
		0.374604, -0.831179, -0.410870,
		0.708402, -0.029326, 0.705200,
		35.959667, 37.871628, 21.528608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416576, 37.262547, 21.251852>,  <35.463787, 37.892155, 21.034969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416576, 37.262547, 21.251852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.623062, 37.436188, 21.547171>,  <35.746952, 37.540371, 21.724361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.623062, 37.436188, 21.547171>,  <35.416576, 37.262547, 21.251852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623062, 37.436188, 21.547171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480256, -0.567035, 0.669198,
		0.709139, -0.700019, -0.084231,
		0.516213, 0.434102, 0.738295,
		35.777927, 37.566418, 21.768660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609600, 36.665310, 21.579805>,  <35.416576, 37.262547, 21.251852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609600, 36.665310, 21.579805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.649399, 36.971691, 21.833866>,  <35.673279, 37.155518, 21.986303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.649399, 36.971691, 21.833866>,  <35.609600, 36.665310, 21.579805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649399, 36.971691, 21.833866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314303, -0.581448, 0.750421,
		0.944095, -0.274292, 0.182890,
		0.099493, 0.765952, 0.635153,
		35.679245, 37.201477, 22.024412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929161, 36.369785, 22.216211>,  <35.609600, 36.665310, 21.579805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929161, 36.369785, 22.216211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.753239, 36.702175, 22.352480>,  <35.647686, 36.901608, 22.434240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.753239, 36.702175, 22.352480>,  <35.929161, 36.369785, 22.216211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753239, 36.702175, 22.352480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183297, -0.454398, 0.871737,
		0.879187, 0.320954, 0.352163,
		-0.439810, 0.830970, 0.340671,
		35.621296, 36.951466, 22.454681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142208, 36.455891, 22.873470>,  <35.929161, 36.369785, 22.216211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142208, 36.455891, 22.873470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.834484, 36.711155, 22.861425>,  <35.649849, 36.864315, 22.854198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.834484, 36.711155, 22.861425>,  <36.142208, 36.455891, 22.873470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834484, 36.711155, 22.861425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217312, -0.217068, 0.951660,
		0.600778, 0.738667, 0.305674,
		-0.769312, 0.638163, -0.030112,
		35.603691, 36.902603, 22.852392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179878, 36.880493, 23.455238>,  <36.142208, 36.455891, 22.873470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179878, 36.880493, 23.455238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.798775, 36.851913, 23.337154>,  <35.570114, 36.834766, 23.266304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.798775, 36.851913, 23.337154>,  <36.179878, 36.880493, 23.455238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798775, 36.851913, 23.337154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264115, -0.285078, 0.921398,
		-0.149987, 0.955838, 0.252740,
		-0.952757, -0.071445, -0.295210,
		35.512947, 36.830479, 23.248592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840836, 36.928638, 23.966139>,  <36.179878, 36.880493, 23.455238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840836, 36.928638, 23.966139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.555573, 36.759136, 23.742771>,  <35.384415, 36.657436, 23.608751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.555573, 36.759136, 23.742771>,  <35.840836, 36.928638, 23.966139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555573, 36.759136, 23.742771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406217, -0.399400, 0.821869,
		-0.571305, 0.812964, 0.112699,
		-0.713161, -0.423757, -0.558418,
		35.341625, 36.632008, 23.575245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185104, 37.043049, 24.236061>,  <35.840836, 36.928638, 23.966139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185104, 37.043049, 24.236061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.082428, 36.729084, 24.010490>,  <35.020821, 36.540703, 23.875147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.082428, 36.729084, 24.010490>,  <35.185104, 37.043049, 24.236061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082428, 36.729084, 24.010490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572080, -0.346890, 0.743230,
		-0.778994, 0.513396, -0.359990,
		-0.256694, -0.784915, -0.563929,
		35.005421, 36.493610, 23.841312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431816, 36.959560, 24.280125>,  <35.185104, 37.043049, 24.236061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431816, 36.959560, 24.280125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.588039, 36.607525, 24.172121>,  <34.681774, 36.396305, 24.107319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.588039, 36.607525, 24.172121>,  <34.431816, 36.959560, 24.280125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588039, 36.607525, 24.172121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680742, -0.473555, 0.558871,
		-0.619720, -0.034466, -0.784066,
		0.390560, -0.880090, -0.270009,
		34.705208, 36.343498, 24.091118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855812, 36.478916, 24.277777>,  <34.431816, 36.959560, 24.280125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855812, 36.478916, 24.277777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.184734, 36.254444, 24.315510>,  <34.382088, 36.119762, 24.338150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.184734, 36.254444, 24.315510>,  <33.855812, 36.478916, 24.277777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184734, 36.254444, 24.315510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449239, -0.538438, 0.712930,
		-0.349286, -0.628623, -0.694861,
		0.822304, -0.561175, 0.094332,
		34.431427, 36.086090, 24.343809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608349, 35.848335, 24.261551>,  <33.855812, 36.478916, 24.277777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608349, 35.848335, 24.261551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.962475, 35.796593, 24.440205>,  <34.174950, 35.765549, 24.547398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.962475, 35.796593, 24.440205>,  <33.608349, 35.848335, 24.261551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962475, 35.796593, 24.440205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451961, -0.465158, 0.761156,
		0.109297, -0.875726, -0.470275,
		0.885316, -0.129354, 0.446634,
		34.228069, 35.757786, 24.574194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.558239, 39.239395, 18.282480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901779, 39.191341, 18.481657>,  <38.107903, 39.162510, 18.601164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901779, 39.191341, 18.481657>,  <37.558239, 39.239395, 18.282480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901779, 39.191341, 18.481657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502642, -0.384869, 0.774097,
		0.098644, -0.915119, -0.390930,
		0.858848, -0.120138, 0.497943,
		38.159435, 39.155300, 18.631041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541111, 38.545742, 18.469456>,  <37.558239, 39.239395, 18.282480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541111, 38.545742, 18.469456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778698, 38.763283, 18.706583>,  <37.921249, 38.893806, 18.848860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778698, 38.763283, 18.706583>,  <37.541111, 38.545742, 18.469456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778698, 38.763283, 18.706583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497732, -0.330497, 0.801894,
		0.632037, -0.771359, 0.074391,
		0.593963, 0.543853, 0.592817,
		37.956886, 38.926437, 18.884428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765808, 38.108654, 18.969484>,  <37.541111, 38.545742, 18.469456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765808, 38.108654, 18.969484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828159, 38.476044, 19.114868>,  <37.865570, 38.696480, 19.202099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828159, 38.476044, 19.114868>,  <37.765808, 38.108654, 18.969484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828159, 38.476044, 19.114868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352715, -0.291943, 0.889023,
		0.922656, -0.266779, 0.278452,
		0.155880, 0.918476, 0.363460,
		37.874924, 38.751587, 19.223906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075062, 37.881161, 19.513330>,  <37.765808, 38.108654, 18.969484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075062, 37.881161, 19.513330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940060, 38.253170, 19.571501>,  <37.859058, 38.476376, 19.606403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940060, 38.253170, 19.571501>,  <38.075062, 37.881161, 19.513330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940060, 38.253170, 19.571501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427631, -0.289112, 0.856473,
		0.838584, 0.226875, 0.495283,
		-0.337504, 0.930023, 0.145426,
		37.838810, 38.532177, 19.615128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249950, 38.058655, 20.197859>,  <38.075062, 37.881161, 19.513330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249950, 38.058655, 20.197859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944065, 38.296803, 20.099274>,  <37.760532, 38.439693, 20.040123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944065, 38.296803, 20.099274>,  <38.249950, 38.058655, 20.197859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944065, 38.296803, 20.099274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506544, -0.319024, 0.801023,
		0.398279, 0.737398, 0.545544,
		-0.764714, 0.595372, -0.246464,
		37.714649, 38.475414, 20.025335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120289, 38.491653, 20.812561>,  <38.249950, 38.058655, 20.197859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120289, 38.491653, 20.812561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775040, 38.507034, 20.611147>,  <37.567890, 38.516262, 20.490299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775040, 38.507034, 20.611147>,  <38.120289, 38.491653, 20.812561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775040, 38.507034, 20.611147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504985, -0.073331, 0.860008,
		-0.003856, 0.996566, 0.082711,
		-0.863120, 0.038452, -0.503533,
		37.516106, 38.518570, 20.460087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661400, 38.884045, 21.249163>,  <38.120289, 38.491653, 20.812561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661400, 38.884045, 21.249163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400772, 38.749069, 20.977402>,  <37.244396, 38.668083, 20.814344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400772, 38.749069, 20.977402>,  <37.661400, 38.884045, 21.249163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400772, 38.749069, 20.977402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719686, -0.008144, 0.694252,
		-0.239800, 0.941313, -0.237543,
		-0.651574, -0.337438, -0.679402,
		37.205299, 38.647839, 20.773581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957375, 39.161053, 21.384653>,  <37.661400, 38.884045, 21.249163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957375, 39.161053, 21.384653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928268, 38.808487, 21.197971>,  <36.910805, 38.596947, 21.085962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928268, 38.808487, 21.197971>,  <36.957375, 39.161053, 21.384653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928268, 38.808487, 21.197971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610737, -0.330570, 0.719530,
		-0.788483, 0.337389, -0.514260,
		-0.072762, -0.881415, -0.466705,
		36.906441, 38.544064, 21.057961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253849, 39.029045, 21.245197>,  <36.957375, 39.161053, 21.384653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253849, 39.029045, 21.245197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435379, 38.672863, 21.231741>,  <36.544296, 38.459152, 21.223667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435379, 38.672863, 21.231741>,  <36.253849, 39.029045, 21.245197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435379, 38.672863, 21.231741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823614, -0.433574, 0.365615,
		-0.340149, -0.138220, -0.930158,
		0.453828, -0.890454, -0.033640,
		36.571526, 38.405727, 21.221649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759506, 39.459320, 20.893818>,  <36.253849, 39.029045, 21.245197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759506, 39.459320, 20.893818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525330, 39.749119, 21.039341>,  <35.384823, 39.923000, 21.126654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525330, 39.749119, 21.039341>,  <35.759506, 39.459320, 20.893818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525330, 39.749119, 21.039341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564331, 0.686368, -0.458726,
		-0.582051, -0.063252, -0.810688,
		-0.585446, 0.724499, 0.363806,
		35.349697, 39.966469, 21.148483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603161, 39.864372, 20.283617>,  <35.759506, 39.459320, 20.893818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603161, 39.864372, 20.283617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567616, 40.075066, 20.621765>,  <35.546288, 40.201481, 20.824654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567616, 40.075066, 20.621765>,  <35.603161, 39.864372, 20.283617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567616, 40.075066, 20.621765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565063, 0.725593, -0.392706,
		-0.820248, 0.442791, -0.362117,
		-0.088863, 0.526735, 0.845372,
		35.540958, 40.233086, 20.875376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568817, 40.593208, 20.127441>,  <35.603161, 39.864372, 20.283617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568817, 40.593208, 20.127441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652740, 40.593842, 20.518538>,  <35.703094, 40.594219, 20.753195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652740, 40.593842, 20.518538>,  <35.568817, 40.593208, 20.127441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652740, 40.593842, 20.518538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712895, 0.684135, -0.154080,
		-0.669151, 0.729354, 0.142410,
		0.209806, 0.001580, 0.977742,
		35.715683, 40.594315, 20.811859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557816, 41.288860, 20.218376>,  <35.568817, 40.593208, 20.127441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557816, 41.288860, 20.218376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760395, 41.114601, 20.516027>,  <35.881943, 41.010044, 20.694618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760395, 41.114601, 20.516027>,  <35.557816, 41.288860, 20.218376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760395, 41.114601, 20.516027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802470, 0.553910, -0.221867,
		-0.315523, 0.709503, 0.630120,
		0.506445, -0.435648, 0.744126,
		35.912327, 40.983906, 20.739265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905396, 41.855690, 20.658052>,  <35.557816, 41.288860, 20.218376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905396, 41.855690, 20.658052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090210, 41.502064, 20.686167>,  <36.201099, 41.289886, 20.703035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090210, 41.502064, 20.686167>,  <35.905396, 41.855690, 20.658052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090210, 41.502064, 20.686167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843714, 0.413761, -0.341977,
		0.273251, 0.217307, 0.937076,
		0.462039, -0.884070, 0.070285,
		36.228821, 41.236843, 20.707253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612514, 42.074909, 20.939831>,  <35.905396, 41.855690, 20.658052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612514, 42.074909, 20.939831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631031, 41.721180, 20.754004>,  <36.642139, 41.508942, 20.642508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631031, 41.721180, 20.754004>,  <36.612514, 42.074909, 20.939831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631031, 41.721180, 20.754004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810251, 0.305245, -0.500320,
		0.584253, -0.353258, 0.730655,
		0.046287, -0.884327, -0.464568,
		36.644917, 41.455883, 20.614634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253723, 41.872734, 21.012690>,  <36.612514, 42.074909, 20.939831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253723, 41.872734, 21.012690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136898, 41.661762, 20.693562>,  <37.066803, 41.535179, 20.502085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136898, 41.661762, 20.693562>,  <37.253723, 41.872734, 21.012690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136898, 41.661762, 20.693562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880251, 0.177949, -0.439878,
		0.373977, -0.830753, 0.412300,
		-0.292061, -0.527431, -0.797820,
		37.049278, 41.503532, 20.454216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837814, 41.479149, 20.832571>,  <37.253723, 41.872734, 21.012690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837814, 41.479149, 20.832571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607788, 41.479446, 20.505329>,  <37.469772, 41.479626, 20.308985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607788, 41.479446, 20.505329>,  <37.837814, 41.479149, 20.832571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607788, 41.479446, 20.505329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752197, 0.393713, -0.528384,
		0.321708, -0.919233, -0.226969,
		-0.575069, 0.000740, -0.818105,
		37.435268, 41.479668, 20.259897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319439, 41.278461, 20.275522>,  <37.837814, 41.479149, 20.832571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319439, 41.278461, 20.275522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016350, 41.408390, 20.049128>,  <37.834496, 41.486347, 19.913290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016350, 41.408390, 20.049128>,  <38.319439, 41.278461, 20.275522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016350, 41.408390, 20.049128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651043, 0.316905, -0.689721,
		-0.044673, -0.891101, -0.451600,
		-0.757725, 0.324823, -0.565988,
		37.789032, 41.505836, 19.879332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498470, 41.106461, 19.597879>,  <38.319439, 41.278461, 20.275522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498470, 41.106461, 19.597879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222168, 41.387814, 19.530813>,  <38.056389, 41.556625, 19.490574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222168, 41.387814, 19.530813>,  <38.498470, 41.106461, 19.597879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222168, 41.387814, 19.530813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606063, 0.436707, -0.664812,
		-0.394399, -0.560834, -0.727952,
		-0.690751, 0.703386, -0.167664,
		38.014942, 41.598831, 19.480515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252335, 41.069019, 18.922165>,  <38.498470, 41.106461, 19.597879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252335, 41.069019, 18.922165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170235, 41.443138, 19.037472>,  <38.120975, 41.667610, 19.106655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170235, 41.443138, 19.037472>,  <38.252335, 41.069019, 18.922165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170235, 41.443138, 19.037472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478545, 0.352833, -0.804055,
		-0.853737, -0.027084, -0.519999,
		-0.205250, 0.935294, 0.288266,
		38.108658, 41.723728, 19.123951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211922, 41.366871, 18.366451>,  <38.252335, 41.069019, 18.922165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211922, 41.366871, 18.366451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241287, 41.674591, 18.620314>,  <38.258907, 41.859222, 18.772631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241287, 41.674591, 18.620314>,  <38.211922, 41.366871, 18.366451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241287, 41.674591, 18.620314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563273, 0.493169, -0.662954,
		-0.823003, 0.406156, -0.397119,
		0.073416, 0.769300, 0.634656,
		38.263313, 41.905380, 18.810711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210712, 41.948296, 17.981050>,  <38.211922, 41.366871, 18.366451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210712, 41.948296, 17.981050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386909, 42.073135, 18.317755>,  <38.492626, 42.148041, 18.519777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386909, 42.073135, 18.317755>,  <38.210712, 41.948296, 17.981050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386909, 42.073135, 18.317755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634111, 0.555565, -0.537820,
		-0.635507, 0.770675, 0.046815,
		0.440493, 0.312102, 0.841759,
		38.519058, 42.166767, 18.570282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154068, 42.627686, 17.974289>,  <38.210712, 41.948296, 17.981050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154068, 42.627686, 17.974289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469620, 42.527279, 18.198668>,  <38.658951, 42.467033, 18.333294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469620, 42.527279, 18.198668>,  <38.154068, 42.627686, 17.974289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469620, 42.527279, 18.198668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604986, 0.477613, -0.637086,
		-0.107993, 0.841947, 0.528642,
		0.788879, -0.251020, 0.560945,
		38.706284, 42.451973, 18.366951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.591022, 42.487465, 22.283146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.473312, 42.302120, 21.948792>,  <42.402687, 42.190914, 21.748178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.473312, 42.302120, 21.948792>,  <42.591022, 42.487465, 22.283146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473312, 42.302120, 21.948792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941202, -0.011369, 0.337653,
		-0.165958, 0.886098, -0.432769,
		-0.294274, -0.463359, -0.835884,
		42.385029, 42.163113, 21.698027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992283, 42.781937, 22.180946>,  <42.591022, 42.487465, 22.283146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992283, 42.781937, 22.180946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.962021, 42.464603, 21.939320>,  <41.943863, 42.274204, 21.794344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.962021, 42.464603, 21.939320>,  <41.992283, 42.781937, 22.180946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962021, 42.464603, 21.939320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886306, -0.224071, 0.405283,
		-0.456879, 0.566048, -0.686186,
		-0.075655, -0.793336, -0.604065,
		41.939323, 42.226604, 21.758101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401047, 42.856903, 21.729536>,  <41.992283, 42.781937, 22.180946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401047, 42.856903, 21.729536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.482700, 42.465893, 21.750572>,  <41.531693, 42.231285, 21.763193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.482700, 42.465893, 21.750572>,  <41.401047, 42.856903, 21.729536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482700, 42.465893, 21.750572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926058, -0.175409, 0.334137,
		-0.317404, -0.116909, -0.941056,
		0.204133, -0.977530, 0.052589,
		41.543941, 42.172634, 21.766350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770615, 42.544518, 21.632633>,  <41.401047, 42.856903, 21.729536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770615, 42.544518, 21.632633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.944145, 42.222427, 21.794325>,  <41.048264, 42.029171, 21.891340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.944145, 42.222427, 21.794325>,  <40.770615, 42.544518, 21.632633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944145, 42.222427, 21.794325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873577, -0.266073, 0.407514,
		-0.220586, -0.529920, -0.818857,
		0.433826, -0.805227, 0.404234,
		41.074291, 41.980858, 21.915594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273197, 42.003914, 21.531672>,  <40.770615, 42.544518, 21.632633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273197, 42.003914, 21.531672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.487320, 41.906536, 21.855198>,  <40.615795, 41.848110, 22.049313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.487320, 41.906536, 21.855198>,  <40.273197, 42.003914, 21.531672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487320, 41.906536, 21.855198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792806, -0.475147, 0.381698,
		0.291384, -0.845559, -0.447354,
		0.535307, -0.243444, 0.808815,
		40.647911, 41.833504, 22.097843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146469, 41.399460, 21.657206>,  <40.273197, 42.003914, 21.531672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146469, 41.399460, 21.657206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.322285, 41.488338, 22.005329>,  <40.427776, 41.541664, 22.214203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.322285, 41.488338, 22.005329>,  <40.146469, 41.399460, 21.657206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322285, 41.488338, 22.005329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691552, -0.534605, 0.485750,
		0.573200, -0.815370, -0.081323,
		0.439541, 0.222193, 0.870307,
		40.454147, 41.554996, 22.266420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144569, 40.819798, 21.996523>,  <40.146469, 41.399460, 21.657206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144569, 40.819798, 21.996523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.210079, 41.066425, 22.304554>,  <40.249386, 41.214401, 22.489372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.210079, 41.066425, 22.304554>,  <40.144569, 40.819798, 21.996523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210079, 41.066425, 22.304554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722155, -0.456874, 0.519383,
		0.672063, -0.641180, 0.370431,
		0.163778, 0.616567, 0.770080,
		40.259212, 41.251396, 22.535578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126823, 40.419632, 22.585546>,  <40.144569, 40.819798, 21.996523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126823, 40.419632, 22.585546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.069225, 40.782475, 22.743750>,  <40.034668, 41.000179, 22.838671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.069225, 40.782475, 22.743750>,  <40.126823, 40.419632, 22.585546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069225, 40.782475, 22.743750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742823, -0.363144, 0.562442,
		0.653820, -0.212806, 0.726108,
		-0.143991, 0.907105, 0.395508,
		40.026028, 41.054607, 22.862402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125797, 40.391685, 23.316828>,  <40.126823, 40.419632, 22.585546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125797, 40.391685, 23.316828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.916538, 40.727615, 23.258850>,  <39.790985, 40.929173, 23.224064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.916538, 40.727615, 23.258850>,  <40.125797, 40.391685, 23.316828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916538, 40.727615, 23.258850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739835, -0.363102, 0.566393,
		0.423044, 0.403540, 0.811289,
		-0.523143, 0.839829, -0.144945,
		39.759594, 40.979565, 23.215366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766476, 40.464241, 23.928600>,  <40.125797, 40.391685, 23.316828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766476, 40.464241, 23.928600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.563671, 40.739864, 23.721470>,  <39.441990, 40.905239, 23.597191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.563671, 40.739864, 23.721470>,  <39.766476, 40.464241, 23.928600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563671, 40.739864, 23.721470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774564, -0.100662, 0.624433,
		0.378145, 0.717682, 0.584755,
		-0.507007, 0.689057, -0.517827,
		39.411568, 40.946583, 23.566122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563725, 41.120773, 24.318527>,  <39.766476, 40.464241, 23.928600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563725, 41.120773, 24.318527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.300842, 41.047211, 24.026155>,  <39.143112, 41.003071, 23.850733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.300842, 41.047211, 24.026155>,  <39.563725, 41.120773, 24.318527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300842, 41.047211, 24.026155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740532, -0.022994, 0.671628,
		-0.140327, 0.982674, -0.121080,
		-0.657207, -0.183911, -0.730928,
		39.103680, 40.992039, 23.806877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081150, 41.632759, 24.341484>,  <39.563725, 41.120773, 24.318527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081150, 41.632759, 24.341484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.893997, 41.310867, 24.195339>,  <38.781704, 41.117733, 24.107653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.893997, 41.310867, 24.195339>,  <39.081150, 41.632759, 24.341484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893997, 41.310867, 24.195339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712632, 0.099016, 0.694515,
		-0.522723, 0.585321, -0.619806,
		-0.467886, -0.804733, -0.365361,
		38.753632, 41.069447, 24.085732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466820, 41.660908, 24.650005>,  <39.081150, 41.632759, 24.341484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466820, 41.660908, 24.650005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.414810, 41.305592, 24.473810>,  <38.383602, 41.092403, 24.368093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.414810, 41.305592, 24.473810>,  <38.466820, 41.660908, 24.650005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414810, 41.305592, 24.473810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820190, -0.153262, 0.551180,
		-0.557118, 0.432953, -0.708640,
		-0.130028, -0.888292, -0.440489,
		38.375801, 41.039104, 24.341663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756985, 41.547901, 24.633446>,  <38.466820, 41.660908, 24.650005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756985, 41.547901, 24.633446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.870846, 41.169319, 24.572519>,  <37.939163, 40.942169, 24.535963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.870846, 41.169319, 24.572519>,  <37.756985, 41.547901, 24.633446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870846, 41.169319, 24.572519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819680, -0.322689, 0.473283,
		-0.497091, -0.009870, -0.867642,
		0.284649, -0.946454, -0.152316,
		37.956242, 40.885384, 24.526825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203907, 41.913429, 24.250383>,  <37.756985, 41.547901, 24.633446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203907, 41.913429, 24.250383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.070328, 42.279541, 24.340485>,  <36.990181, 42.499210, 24.394545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.070328, 42.279541, 24.340485>,  <37.203907, 41.913429, 24.250383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070328, 42.279541, 24.340485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557059, 0.384414, -0.736146,
		-0.760371, -0.120355, -0.638240,
		-0.333948, 0.915282, 0.225253,
		36.970142, 42.554127, 24.408060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013435, 42.165188, 23.619793>,  <37.203907, 41.913429, 24.250383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013435, 42.165188, 23.619793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.082657, 42.493641, 23.837341>,  <37.124187, 42.690712, 23.967871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.082657, 42.493641, 23.837341>,  <37.013435, 42.165188, 23.619793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082657, 42.493641, 23.837341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502725, 0.401208, -0.765703,
		-0.846949, 0.405921, -0.343375,
		0.173050, 0.821134, 0.543869,
		37.134571, 42.739983, 24.000502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889629, 42.665878, 23.065422>,  <37.013435, 42.165188, 23.619793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889629, 42.665878, 23.065422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.099678, 42.812149, 23.372805>,  <37.225708, 42.899910, 23.557234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.099678, 42.812149, 23.372805>,  <36.889629, 42.665878, 23.065422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099678, 42.812149, 23.372805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606890, 0.472109, -0.639373,
		-0.596598, 0.802119, 0.025993,
		0.525125, 0.365674, 0.768457,
		37.257217, 42.921852, 23.603342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988373, 43.369915, 22.875116>,  <36.889629, 42.665878, 23.065422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988373, 43.369915, 22.875116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277363, 43.269676, 23.132872>,  <37.450756, 43.209534, 23.287525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277363, 43.269676, 23.132872>,  <36.988373, 43.369915, 22.875116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277363, 43.269676, 23.132872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677010, 0.445562, -0.585774,
		-0.140325, 0.859464, 0.491560,
		0.722472, -0.250593, 0.644389,
		37.494106, 43.194500, 23.326189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355465, 44.006790, 23.021748>,  <36.988373, 43.369915, 22.875116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355465, 44.006790, 23.021748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.605904, 43.714069, 23.129427>,  <37.756165, 43.538437, 23.194035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.605904, 43.714069, 23.129427>,  <37.355465, 44.006790, 23.021748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605904, 43.714069, 23.129427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769105, 0.522734, -0.367733,
		0.128389, 0.437278, 0.890115,
		0.626095, -0.731804, 0.269199,
		37.793732, 43.494530, 23.210186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963184, 44.366108, 23.233702>,  <37.355465, 44.006790, 23.021748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963184, 44.366108, 23.233702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.090378, 43.988731, 23.196177>,  <38.166695, 43.762306, 23.173662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.090378, 43.988731, 23.196177>,  <37.963184, 44.366108, 23.233702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090378, 43.988731, 23.196177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837955, 0.325951, -0.437707,
		0.443530, 0.060573, 0.894210,
		0.317981, -0.943444, -0.093812,
		38.185772, 43.705700, 23.168034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693329, 44.448017, 23.172865>,  <37.963184, 44.366108, 23.233702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693329, 44.448017, 23.172865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.603035, 44.093670, 23.010736>,  <38.548859, 43.881062, 22.913460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.603035, 44.093670, 23.010736>,  <38.693329, 44.448017, 23.172865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603035, 44.093670, 23.010736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762790, 0.098074, -0.639166,
		0.605967, -0.453457, 0.653591,
		-0.225734, -0.885866, -0.405322,
		38.535316, 43.827911, 22.889139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292423, 43.990559, 23.282104>,  <38.693329, 44.448017, 23.172865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292423, 43.990559, 23.282104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.076984, 43.883137, 22.962656>,  <38.947723, 43.818684, 22.770987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.076984, 43.883137, 22.962656>,  <39.292423, 43.990559, 23.282104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076984, 43.883137, 22.962656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742553, 0.296621, -0.600526,
		0.398161, -0.916458, 0.039657,
		-0.538594, -0.268554, -0.798621,
		38.915405, 43.802570, 22.723070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756332, 43.552914, 22.838799>,  <39.292423, 43.990559, 23.282104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756332, 43.552914, 22.838799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.464142, 43.655483, 22.585609>,  <39.288830, 43.717026, 22.433695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.464142, 43.655483, 22.585609>,  <39.756332, 43.552914, 22.838799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464142, 43.655483, 22.585609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675019, 0.130330, -0.726199,
		-0.103717, -0.957738, -0.268292,
		-0.730474, 0.256421, -0.632974,
		39.244999, 43.732410, 22.395718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929192, 43.178627, 22.253201>,  <39.756332, 43.552914, 22.838799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929192, 43.178627, 22.253201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.677567, 43.459637, 22.120089>,  <39.526592, 43.628242, 22.040220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.677567, 43.459637, 22.120089>,  <39.929192, 43.178627, 22.253201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677567, 43.459637, 22.120089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536336, 0.082362, -0.839976,
		-0.562693, -0.706880, -0.428599,
		-0.629062, 0.702522, -0.332781,
		39.488846, 43.670395, 22.020254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796257, 42.997288, 21.443874>,  <39.929192, 43.178627, 22.253201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796257, 42.997288, 21.443874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.670609, 43.374908, 21.484060>,  <39.595219, 43.601482, 21.508171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.670609, 43.374908, 21.484060>,  <39.796257, 42.997288, 21.443874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670609, 43.374908, 21.484060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561703, 0.270115, -0.782002,
		-0.765389, -0.189210, -0.615126,
		-0.314117, 0.944054, 0.100463,
		39.576374, 43.658123, 21.514198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461273, 43.303917, 20.865707>,  <39.796257, 42.997288, 21.443874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461273, 43.303917, 20.865707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.621807, 43.610600, 21.066145>,  <39.718128, 43.794609, 21.186407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.621807, 43.610600, 21.066145>,  <39.461273, 43.303917, 20.865707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621807, 43.610600, 21.066145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458240, 0.305621, -0.834633,
		-0.793062, 0.564588, -0.228678,
		0.401335, 0.766705, 0.501093,
		39.742207, 43.840611, 21.216473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313160, 43.862514, 20.403194>,  <39.461273, 43.303917, 20.865707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313160, 43.862514, 20.403194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.602337, 43.976883, 20.654783>,  <39.775841, 44.045506, 20.805737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.602337, 43.976883, 20.654783>,  <39.313160, 43.862514, 20.403194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602337, 43.976883, 20.654783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555576, 0.300596, -0.775227,
		-0.410723, 0.909884, 0.058460,
		0.722940, 0.285924, 0.628972,
		39.819218, 44.062660, 20.843475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591766, 44.446884, 20.041849>,  <39.313160, 43.862514, 20.403194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591766, 44.446884, 20.041849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.866493, 44.351532, 20.316502>,  <40.031330, 44.294319, 20.481293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.866493, 44.351532, 20.316502>,  <39.591766, 44.446884, 20.041849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866493, 44.351532, 20.316502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699038, 0.475393, -0.534179,
		-0.199082, 0.846863, 0.493142,
		0.686813, -0.238380, 0.686632,
		40.072536, 44.280018, 20.522491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333172, 45.179691, 19.995180>,  <39.591766, 44.446884, 20.041849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333172, 45.179691, 19.995180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.117752, 45.188675, 19.658262>,  <38.988499, 45.194065, 19.456112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.117752, 45.188675, 19.658262>,  <39.333172, 45.179691, 19.995180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117752, 45.188675, 19.658262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829056, -0.192584, 0.524954,
		-0.150423, 0.981023, 0.122335,
		-0.538552, 0.022457, -0.842293,
		38.956188, 45.195412, 19.405575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817810, 45.607651, 20.161629>,  <39.333172, 45.179691, 19.995180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817810, 45.607651, 20.161629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.680107, 45.428177, 19.831739>,  <38.597485, 45.320492, 19.633806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.680107, 45.428177, 19.831739>,  <38.817810, 45.607651, 20.161629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680107, 45.428177, 19.831739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921825, -0.005123, 0.387572,
		-0.178124, 0.893674, -0.411847,
		-0.344253, -0.448687, -0.824724,
		38.576832, 45.293571, 19.584322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310551, 45.993809, 20.019508>,  <38.817810, 45.607651, 20.161629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310551, 45.993809, 20.019508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.237835, 45.635006, 19.858345>,  <38.194206, 45.419724, 19.761648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.237835, 45.635006, 19.858345>,  <38.310551, 45.993809, 20.019508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237835, 45.635006, 19.858345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925680, 0.017869, 0.377885,
		-0.331765, 0.441660, -0.833588,
		-0.181792, -0.897005, -0.402907,
		38.183296, 45.365906, 19.737473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579334, 46.072170, 19.729166>,  <38.310551, 45.993809, 20.019508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579334, 46.072170, 19.729166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.657177, 45.679829, 19.726332>,  <37.703880, 45.444424, 19.724632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.657177, 45.679829, 19.726332>,  <37.579334, 46.072170, 19.729166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657177, 45.679829, 19.726332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926924, -0.186257, 0.325760,
		-0.320844, -0.056828, -0.945426,
		0.194605, -0.980856, -0.007084,
		37.715557, 45.385571, 19.724207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973068, 45.699512, 19.422279>,  <37.579334, 46.072170, 19.729166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973068, 45.699512, 19.422279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.167858, 45.412178, 19.621016>,  <37.284733, 45.239777, 19.740257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.167858, 45.412178, 19.621016>,  <36.973068, 45.699512, 19.422279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167858, 45.412178, 19.621016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863076, -0.308504, 0.399905,
		-0.133986, -0.623559, -0.770209,
		0.486977, -0.718330, 0.496844,
		37.313950, 45.196678, 19.770069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642723, 45.075397, 19.241953>,  <36.973068, 45.699512, 19.422279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642723, 45.075397, 19.241953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.828526, 45.031437, 19.593443>,  <36.940006, 45.005062, 19.804337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.828526, 45.031437, 19.593443>,  <36.642723, 45.075397, 19.241953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828526, 45.031437, 19.593443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846243, -0.347507, 0.403872,
		0.260977, -0.931214, -0.254422,
		0.464504, -0.109901, 0.878725,
		36.967876, 44.998466, 19.857059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397953, 44.404659, 19.502678>,  <36.642723, 45.075397, 19.241953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397953, 44.404659, 19.502678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.561871, 44.607048, 19.806273>,  <36.660221, 44.728481, 19.988430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.561871, 44.607048, 19.806273>,  <36.397953, 44.404659, 19.502678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561871, 44.607048, 19.806273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749719, -0.287144, 0.596213,
		0.519606, -0.813350, 0.261668,
		0.409794, 0.505974, 0.758986,
		36.684807, 44.758839, 20.033968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482368, 43.935570, 20.047871>,  <36.397953, 44.404659, 19.502678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482368, 43.935570, 20.047871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.486320, 44.282391, 20.247120>,  <36.488693, 44.490482, 20.366671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.486320, 44.282391, 20.247120>,  <36.482368, 43.935570, 20.047871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486320, 44.282391, 20.247120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603790, -0.391911, 0.694149,
		0.797082, -0.307622, 0.519643,
		0.009882, 0.867049, 0.498124,
		36.489285, 44.542507, 20.396557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679146, 43.818897, 20.713724>,  <36.482368, 43.935570, 20.047871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679146, 43.818897, 20.713724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.482151, 44.166759, 20.727356>,  <36.363956, 44.375477, 20.735535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.482151, 44.166759, 20.727356>,  <36.679146, 43.818897, 20.713724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482151, 44.166759, 20.727356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548073, -0.340313, 0.764070,
		0.676074, 0.357614, 0.644233,
		-0.492483, 0.869655, 0.034078,
		36.334408, 44.427654, 20.737579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588188, 44.003281, 21.475407>,  <36.679146, 43.818897, 20.713724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588188, 44.003281, 21.475407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.290802, 44.184242, 21.278391>,  <36.112370, 44.292820, 21.160181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.290802, 44.184242, 21.278391>,  <36.588188, 44.003281, 21.475407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290802, 44.184242, 21.278391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643416, -0.282975, 0.711296,
		0.182414, 0.845730, 0.501463,
		-0.743466, 0.452400, -0.492538,
		36.067760, 44.319962, 21.130630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210358, 44.291332, 22.013449>,  <36.588188, 44.003281, 21.475407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210358, 44.291332, 22.013449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.985413, 44.307083, 21.683069>,  <35.850445, 44.316532, 21.484840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.985413, 44.307083, 21.683069>,  <36.210358, 44.291332, 22.013449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985413, 44.307083, 21.683069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805730, -0.250612, 0.536649,
		-0.185861, 0.967286, 0.172664,
		-0.562365, 0.039378, -0.825951,
		35.816704, 44.318897, 21.435284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648426, 44.711349, 22.144112>,  <36.210358, 44.291332, 22.013449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648426, 44.711349, 22.144112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.506359, 44.490368, 21.842478>,  <35.421120, 44.357777, 21.661497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.506359, 44.490368, 21.842478>,  <35.648426, 44.711349, 22.144112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506359, 44.490368, 21.842478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825059, -0.193974, 0.530709,
		-0.439466, 0.810658, -0.386915,
		-0.355172, -0.552456, -0.754086,
		35.399807, 44.324631, 21.616253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999344, 44.970520, 22.105080>,  <35.648426, 44.711349, 22.144112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999344, 44.970520, 22.105080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.002369, 44.608727, 21.934502>,  <35.004185, 44.391651, 21.832155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.002369, 44.608727, 21.934502>,  <34.999344, 44.970520, 22.105080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002369, 44.608727, 21.934502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696650, -0.310704, 0.646639,
		-0.717371, 0.292193, -0.632457,
		0.007564, -0.904481, -0.426446,
		35.004639, 44.337383, 21.806568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302353, 44.744041, 22.008339>,  <34.999344, 44.970520, 22.105080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302353, 44.744041, 22.008339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.513134, 44.404182, 22.000187>,  <34.639603, 44.200268, 21.995296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.513134, 44.404182, 22.000187>,  <34.302353, 44.744041, 22.008339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513134, 44.404182, 22.000187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609458, -0.394477, 0.687713,
		-0.592355, -0.349970, -0.725697,
		0.526949, -0.849652, -0.020378,
		34.671219, 44.149288, 21.994074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.569744, 43.367199, 18.031574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.816570, 43.069752, 18.134542>,  <38.964664, 42.891285, 18.196323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.816570, 43.069752, 18.134542>,  <38.569744, 43.367199, 18.031574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816570, 43.069752, 18.134542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743150, 0.443106, -0.501383,
		0.258772, 0.500688, 0.826044,
		0.617061, -0.743619, 0.257423,
		39.001690, 42.846664, 18.211769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101276, 43.740410, 18.141233>,  <38.569744, 43.367199, 18.031574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101276, 43.740410, 18.141233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.271671, 43.379333, 18.116941>,  <39.373909, 43.162689, 18.102365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.271671, 43.379333, 18.116941>,  <39.101276, 43.740410, 18.141233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271671, 43.379333, 18.116941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843086, 0.420424, -0.335336,
		0.328237, 0.091648, 0.940139,
		0.425990, -0.902687, -0.060731,
		39.399467, 43.108528, 18.098722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860996, 43.749146, 18.433277>,  <39.101276, 43.740410, 18.141233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860996, 43.749146, 18.433277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.822430, 43.465782, 18.153603>,  <39.799290, 43.295765, 17.985798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.822430, 43.465782, 18.153603>,  <39.860996, 43.749146, 18.433277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822430, 43.465782, 18.153603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715328, 0.439134, -0.543570,
		0.692106, -0.552555, 0.464405,
		-0.096416, -0.708410, -0.699185,
		39.793507, 43.253258, 17.943848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542313, 43.572186, 18.274727>,  <39.860996, 43.749146, 18.433277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542313, 43.572186, 18.274727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.345966, 43.398682, 17.972494>,  <40.228161, 43.294579, 17.791155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.345966, 43.398682, 17.972494>,  <40.542313, 43.572186, 18.274727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345966, 43.398682, 17.972494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708834, 0.305419, -0.635825,
		0.506566, -0.847685, 0.157548,
		-0.490861, -0.433763, -0.755583,
		40.198708, 43.268555, 17.745819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001125, 43.254261, 17.865906>,  <40.542313, 43.572186, 18.274727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001125, 43.254261, 17.865906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.693485, 43.315140, 17.617611>,  <40.508900, 43.351669, 17.468634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.693485, 43.315140, 17.617611>,  <41.001125, 43.254261, 17.865906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693485, 43.315140, 17.617611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617048, 0.429893, -0.659124,
		0.166532, -0.889959, -0.424547,
		-0.769103, 0.152201, -0.620738,
		40.462753, 43.360802, 17.431389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180416, 43.079437, 17.141134>,  <41.001125, 43.254261, 17.865906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180416, 43.079437, 17.141134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.855286, 43.304951, 17.082550>,  <40.660206, 43.440258, 17.047400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.855286, 43.304951, 17.082550>,  <41.180416, 43.079437, 17.141134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855286, 43.304951, 17.082550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445950, 0.440537, -0.779137,
		-0.374748, -0.698620, -0.609503,
		-0.812830, 0.563788, -0.146459,
		40.611435, 43.474087, 17.038612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119129, 43.034962, 16.402943>,  <41.180416, 43.079437, 17.141134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119129, 43.034962, 16.402943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.917183, 43.354748, 16.533152>,  <40.796017, 43.546619, 16.611277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.917183, 43.354748, 16.533152>,  <41.119129, 43.034962, 16.402943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917183, 43.354748, 16.533152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390817, 0.547948, -0.739605,
		-0.769660, -0.246179, -0.589083,
		-0.504862, 0.799468, 0.325522,
		40.765724, 43.594589, 16.630808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666901, 43.355640, 15.760701>,  <41.119129, 43.034962, 16.402943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666901, 43.355640, 15.760701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.712536, 43.643379, 16.034786>,  <40.739918, 43.816025, 16.199238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.712536, 43.643379, 16.034786>,  <40.666901, 43.355640, 15.760701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712536, 43.643379, 16.034786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238528, 0.649707, -0.721793,
		-0.964410, 0.245794, -0.097459,
		0.114092, 0.719351, 0.685213,
		40.746765, 43.859184, 16.240351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413898, 43.957142, 15.460262>,  <40.666901, 43.355640, 15.760701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413898, 43.957142, 15.460262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.644871, 44.110203, 15.748749>,  <40.783455, 44.202038, 15.921841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.644871, 44.110203, 15.748749>,  <40.413898, 43.957142, 15.460262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644871, 44.110203, 15.748749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351270, 0.680987, -0.642546,
		-0.737011, 0.624366, 0.258807,
		0.577428, 0.382653, 0.721216,
		40.818100, 44.224998, 15.965114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385815, 44.688663, 15.237408>,  <40.413898, 43.957142, 15.460262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385815, 44.688663, 15.237408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.685707, 44.609047, 15.489846>,  <40.865643, 44.561275, 15.641310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.685707, 44.609047, 15.489846>,  <40.385815, 44.688663, 15.237408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685707, 44.609047, 15.489846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631544, 0.500022, -0.592562,
		-0.197617, 0.842829, 0.500587,
		0.749733, -0.199042, 0.631097,
		40.910625, 44.549335, 15.679175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566639, 45.338970, 15.451843>,  <40.385815, 44.688663, 15.237408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566639, 45.338970, 15.451843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.871372, 45.082432, 15.488241>,  <41.054214, 44.928509, 15.510080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.871372, 45.082432, 15.488241>,  <40.566639, 45.338970, 15.451843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871372, 45.082432, 15.488241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586495, 0.623292, -0.517232,
		0.275009, 0.447414, 0.850994,
		0.761835, -0.641348, 0.090996,
		41.099922, 44.890026, 15.515540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098675, 45.768578, 15.338775>,  <40.566639, 45.338970, 15.451843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098675, 45.768578, 15.338775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.299793, 45.423870, 15.311795>,  <41.420464, 45.217045, 15.295608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.299793, 45.423870, 15.311795>,  <41.098675, 45.768578, 15.338775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299793, 45.423870, 15.311795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600838, 0.404520, -0.689462,
		0.621442, 0.306133, 0.721175,
		0.502797, -0.861769, -0.067449,
		41.450634, 45.165340, 15.291560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871773, 45.860306, 15.282224>,  <41.098675, 45.768578, 15.338775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871773, 45.860306, 15.282224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.799145, 45.519367, 15.086044>,  <41.755569, 45.314804, 14.968337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.799145, 45.519367, 15.086044>,  <41.871773, 45.860306, 15.282224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799145, 45.519367, 15.086044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529402, 0.335576, -0.779180,
		0.828714, -0.401117, 0.390304,
		-0.181566, -0.852346, -0.490449,
		41.744675, 45.263664, 14.938910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547337, 45.421593, 14.906792>,  <41.871773, 45.860306, 15.282224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547337, 45.421593, 14.906792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.216663, 45.363808, 14.689272>,  <42.018257, 45.329136, 14.558760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.216663, 45.363808, 14.689272>,  <42.547337, 45.421593, 14.906792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216663, 45.363808, 14.689272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443056, 0.428608, -0.787399,
		0.346831, -0.891866, -0.290317,
		-0.826686, -0.144467, -0.543800,
		41.968658, 45.320469, 14.526132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790596, 45.764690, 15.532951>,  <42.547337, 45.421593, 14.906792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790596, 45.764690, 15.532951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.920883, 46.087692, 15.729663>,  <42.999054, 46.281494, 15.847690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.920883, 46.087692, 15.729663>,  <42.790596, 45.764690, 15.532951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920883, 46.087692, 15.729663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774623, -0.070313, 0.628502,
		0.542096, -0.585656, 0.602610,
		0.325714, 0.807504, 0.491780,
		43.018597, 46.329945, 15.877196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728016, 45.599510, 16.211355>,  <42.790596, 45.764690, 15.532951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728016, 45.599510, 16.211355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.764809, 45.997730, 16.219530>,  <42.786884, 46.236664, 16.224436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.764809, 45.997730, 16.219530>,  <42.728016, 45.599510, 16.211355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764809, 45.997730, 16.219530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787107, 0.060122, 0.613879,
		0.609919, -0.072552, 0.789135,
		0.091982, 0.995551, 0.020437,
		42.792404, 46.296394, 16.225660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797421, 45.805538, 16.897491>,  <42.728016, 45.599510, 16.211355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797421, 45.805538, 16.897491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.660137, 46.122963, 16.696507>,  <42.577766, 46.313416, 16.575914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.660137, 46.122963, 16.696507>,  <42.797421, 45.805538, 16.897491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660137, 46.122963, 16.696507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658238, 0.178400, 0.731366,
		0.670022, 0.581754, 0.461122,
		-0.343211, 0.793559, -0.502464,
		42.557175, 46.361031, 16.545767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776241, 46.299938, 17.388088>,  <42.797421, 45.805538, 16.897491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776241, 46.299938, 17.388088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.541977, 46.430248, 17.091206>,  <42.401417, 46.508434, 16.913076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.541977, 46.430248, 17.091206>,  <42.776241, 46.299938, 17.388088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541977, 46.430248, 17.091206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758804, 0.101583, 0.643348,
		0.284982, 0.939974, 0.187705,
		-0.585663, 0.325774, -0.742206,
		42.366280, 46.527981, 16.868544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442547, 46.869450, 17.636040>,  <42.776241, 46.299938, 17.388088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442547, 46.869450, 17.636040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.210281, 46.760612, 17.329109>,  <42.070923, 46.695312, 17.144951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.210281, 46.760612, 17.329109>,  <42.442547, 46.869450, 17.636040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210281, 46.760612, 17.329109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803952, 0.042987, 0.593138,
		-0.128402, 0.961311, -0.243709,
		-0.580667, -0.272091, -0.767328,
		42.036083, 46.678986, 17.098911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002571, 47.426491, 17.524166>,  <42.442547, 46.869450, 17.636040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002571, 47.426491, 17.524166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.836781, 47.099403, 17.364388>,  <41.737309, 46.903152, 17.268520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.836781, 47.099403, 17.364388>,  <42.002571, 47.426491, 17.524166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836781, 47.099403, 17.364388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773798, 0.085628, 0.627619,
		-0.479009, 0.569220, -0.668236,
		-0.414473, -0.817714, -0.399444,
		41.712440, 46.854088, 17.244555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332329, 47.442524, 17.620440>,  <42.002571, 47.426491, 17.524166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332329, 47.442524, 17.620440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.304001, 47.054340, 17.528177>,  <41.287006, 46.821430, 17.472820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.304001, 47.054340, 17.528177>,  <41.332329, 47.442524, 17.620440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304001, 47.054340, 17.528177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802320, -0.081979, 0.591238,
		-0.592678, 0.226930, -0.772810,
		-0.070816, -0.970455, -0.230658,
		41.282757, 46.763203, 17.458981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634037, 47.341824, 17.720201>,  <41.332329, 47.442524, 17.620440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634037, 47.341824, 17.720201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.753029, 46.960140, 17.707565>,  <40.824425, 46.731133, 17.699984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.753029, 46.960140, 17.707565>,  <40.634037, 47.341824, 17.720201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753029, 46.960140, 17.707565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842315, -0.277890, 0.461825,
		-0.449454, -0.110778, -0.886408,
		0.297484, -0.954204, -0.031589,
		40.842274, 46.673878, 17.698088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047089, 46.907551, 17.403217>,  <40.634037, 47.341824, 17.720201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047089, 46.907551, 17.403217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.285236, 46.650394, 17.595980>,  <40.428123, 46.496101, 17.711637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.285236, 46.650394, 17.595980>,  <40.047089, 46.907551, 17.403217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285236, 46.650394, 17.595980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796987, -0.396614, 0.455532,
		-0.101725, -0.655282, -0.748504,
		0.595369, -0.642886, 0.481905,
		40.463848, 46.457527, 17.740551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688652, 46.269222, 17.378067>,  <40.047089, 46.907551, 17.403217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688652, 46.269222, 17.378067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.941879, 46.213306, 17.682613>,  <40.093815, 46.179756, 17.865341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.941879, 46.213306, 17.682613>,  <39.688652, 46.269222, 17.378067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941879, 46.213306, 17.682613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725057, -0.451579, 0.519970,
		0.271131, -0.881213, -0.387236,
		0.633072, -0.139788, 0.761367,
		40.131802, 46.171371, 17.911024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799488, 45.502285, 17.543749>,  <39.688652, 46.269222, 17.378067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799488, 45.502285, 17.543749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.892597, 45.708836, 17.873398>,  <39.948463, 45.832764, 18.071188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.892597, 45.708836, 17.873398>,  <39.799488, 45.502285, 17.543749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892597, 45.708836, 17.873398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659552, -0.538933, 0.523969,
		0.714709, -0.665516, 0.215126,
		0.232771, 0.516372, 0.824122,
		39.962429, 45.863747, 18.120634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821781, 44.947941, 17.991976>,  <39.799488, 45.502285, 17.543749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821781, 44.947941, 17.991976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.797550, 45.276199, 18.219261>,  <39.783012, 45.473156, 18.355633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.797550, 45.276199, 18.219261>,  <39.821781, 44.947941, 17.991976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797550, 45.276199, 18.219261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662103, -0.459031, 0.592377,
		0.746961, -0.340333, 0.571159,
		-0.060574, 0.820648, 0.568214,
		39.779377, 45.522392, 18.389725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924976, 44.730255, 18.642282>,  <39.821781, 44.947941, 17.991976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924976, 44.730255, 18.642282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.740204, 45.079632, 18.703884>,  <39.629341, 45.289257, 18.740845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.740204, 45.079632, 18.703884>,  <39.924976, 44.730255, 18.642282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740204, 45.079632, 18.703884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723186, -0.471452, 0.504713,
		0.513445, 0.121766, 0.849439,
		-0.461927, 0.873445, 0.154005,
		39.601627, 45.341667, 18.750086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761387, 44.836430, 19.387365>,  <39.924976, 44.730255, 18.642282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761387, 44.836430, 19.387365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.510216, 45.094227, 19.212854>,  <39.359512, 45.248905, 19.108149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.510216, 45.094227, 19.212854>,  <39.761387, 44.836430, 19.387365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510216, 45.094227, 19.212854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751618, -0.356727, 0.554811,
		0.201941, 0.676293, 0.708412,
		-0.627925, 0.644495, -0.436276,
		39.321838, 45.287575, 19.081972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095161, 45.027355, 20.054483>,  <39.761387, 44.836430, 19.387365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095161, 45.027355, 20.054483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.288078, 44.727455, 20.235712>,  <40.403828, 44.547516, 20.344448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.288078, 44.727455, 20.235712>,  <40.095161, 45.027355, 20.054483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288078, 44.727455, 20.235712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859652, 0.305584, -0.409410,
		0.168503, 0.586938, 0.791903,
		0.482291, -0.749748, 0.453071,
		40.432766, 44.502529, 20.371634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739037, 45.343716, 20.257687>,  <40.095161, 45.027355, 20.054483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739037, 45.343716, 20.257687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.836185, 44.955883, 20.269905>,  <40.894474, 44.723183, 20.277237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.836185, 44.955883, 20.269905>,  <40.739037, 45.343716, 20.257687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836185, 44.955883, 20.269905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926394, 0.222481, -0.303803,
		0.287765, 0.102084, 0.952245,
		0.242869, -0.969578, 0.030548,
		40.909046, 44.665009, 20.279070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369370, 45.336365, 20.501736>,  <40.739037, 45.343716, 20.257687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369370, 45.336365, 20.501736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.342377, 44.969852, 20.343811>,  <41.326180, 44.749947, 20.249056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.342377, 44.969852, 20.343811>,  <41.369370, 45.336365, 20.501736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342377, 44.969852, 20.343811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889681, 0.123838, -0.439467,
		0.451568, -0.380913, 0.806841,
		-0.067481, -0.916280, -0.394812,
		41.322132, 44.694969, 20.225367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945580, 44.843113, 20.654100>,  <41.369370, 45.336365, 20.501736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945580, 44.843113, 20.654100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.806831, 44.704983, 20.305290>,  <41.723583, 44.622105, 20.096004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.806831, 44.704983, 20.305290>,  <41.945580, 44.843113, 20.654100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806831, 44.704983, 20.305290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917743, 0.066817, -0.391514,
		0.193466, -0.936101, 0.293745,
		-0.346870, -0.345327, -0.872026,
		41.702770, 44.601383, 20.043682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502113, 44.359837, 20.403999>,  <41.945580, 44.843113, 20.654100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502113, 44.359837, 20.403999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.291019, 44.447762, 20.075809>,  <42.164364, 44.500515, 19.878897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.291019, 44.447762, 20.075809>,  <42.502113, 44.359837, 20.403999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291019, 44.447762, 20.075809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832879, -0.055713, -0.550644,
		-0.166750, -0.973950, -0.153677,
		-0.527738, 0.219814, -0.820472,
		42.132698, 44.513706, 19.829668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671585, 43.815704, 20.021242>,  <42.502113, 44.359837, 20.403999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671585, 43.815704, 20.021242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.511703, 44.101547, 19.791605>,  <42.415775, 44.273052, 19.653824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.511703, 44.101547, 19.791605>,  <42.671585, 43.815704, 20.021242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511703, 44.101547, 19.791605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802460, -0.029932, -0.595955,
		-0.443055, -0.698888, -0.561478,
		-0.399699, 0.714604, -0.574092,
		42.391792, 44.315929, 19.619377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834328, 43.674057, 19.301777>,  <42.671585, 43.815704, 20.021242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834328, 43.674057, 19.301777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.770100, 44.068726, 19.312296>,  <42.731564, 44.305527, 19.318607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.770100, 44.068726, 19.312296>,  <42.834328, 43.674057, 19.301777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770100, 44.068726, 19.312296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673509, 0.129004, -0.727835,
		-0.721528, -0.099156, -0.685248,
		-0.160569, 0.986674, 0.026298,
		42.721928, 44.364727, 19.320185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829422, 42.966011, 18.922583>,  <42.834328, 43.674057, 19.301777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829422, 42.966011, 18.922583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.158955, 42.761562, 19.020609>,  <43.356674, 42.638893, 19.079424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.158955, 42.761562, 19.020609>,  <42.829422, 42.966011, 18.922583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.158955, 42.761562, 19.020609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405078, -0.228450, 0.885281,
		-0.396497, -0.828595, -0.395248,
		0.823833, -0.511118, 0.245065,
		43.406105, 42.608227, 19.094128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590839, 42.253555, 19.066704>,  <42.829422, 42.966011, 18.922583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590839, 42.253555, 19.066704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.926083, 42.343830, 19.265354>,  <43.127228, 42.397995, 19.384544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.926083, 42.343830, 19.265354>,  <42.590839, 42.253555, 19.066704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926083, 42.343830, 19.265354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402554, -0.358505, 0.842273,
		0.368136, -0.905835, -0.209614,
		0.838109, 0.225690, 0.496626,
		43.177517, 42.411537, 19.414341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610474, 41.759212, 19.466076>,  <42.590839, 42.253555, 19.066704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610474, 41.759212, 19.466076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.885525, 41.989620, 19.642879>,  <43.050556, 42.127865, 19.748962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.885525, 41.989620, 19.642879>,  <42.610474, 41.759212, 19.466076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885525, 41.989620, 19.642879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400500, -0.206872, 0.892639,
		0.605616, -0.790827, 0.088445,
		0.687626, 0.576018, 0.442011,
		43.091812, 42.162426, 19.775482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819778, 41.448643, 20.058424>,  <42.610474, 41.759212, 19.466076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819778, 41.448643, 20.058424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.961994, 41.816803, 20.123478>,  <43.047321, 42.037701, 20.162510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.961994, 41.816803, 20.123478>,  <42.819778, 41.448643, 20.058424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961994, 41.816803, 20.123478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231412, -0.081902, 0.969402,
		0.905562, -0.382294, 0.183873,
		0.355537, 0.920404, 0.162635,
		43.068657, 42.092926, 20.172268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202381, 41.338066, 20.617346>,  <42.819778, 41.448643, 20.058424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202381, 41.338066, 20.617346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.140251, 41.733032, 20.605471>,  <43.102974, 41.970013, 20.598345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.140251, 41.733032, 20.605471>,  <43.202381, 41.338066, 20.617346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140251, 41.733032, 20.605471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343768, -0.025852, 0.938699,
		0.926119, 0.156011, 0.343458,
		-0.155327, 0.987417, -0.029690,
		43.093655, 42.029259, 20.596563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.465622, 41.611839, 21.355370>,  <43.202381, 41.338066, 20.617346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.465622, 41.611839, 21.355370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.229908, 41.889881, 21.190651>,  <43.088478, 42.056705, 21.091820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.229908, 41.889881, 21.190651>,  <43.465622, 41.611839, 21.355370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229908, 41.889881, 21.190651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621421, -0.064230, 0.780839,
		0.516314, 0.716036, 0.469801,
		-0.589284, 0.695102, -0.411797,
		43.053123, 42.098412, 21.067112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154152, 41.959721, 21.988085>,  <43.465622, 41.611839, 21.355370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154152, 41.959721, 21.988085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.922310, 42.082588, 21.686169>,  <42.783203, 42.156307, 21.505020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.922310, 42.082588, 21.686169>,  <43.154152, 41.959721, 21.988085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922310, 42.082588, 21.686169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764150, 0.116885, 0.634360,
		0.283078, 0.944451, 0.166974,
		-0.579605, 0.307166, -0.754789,
		42.748428, 42.174740, 21.459732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.191826, 41.892536, 14.474650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.033257, 42.189457, 14.690739>,  <42.938114, 42.367611, 14.820392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.033257, 42.189457, 14.690739>,  <43.191826, 41.892536, 14.474650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033257, 42.189457, 14.690739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334151, -0.664733, 0.668187,
		0.855099, 0.084367, 0.511554,
		-0.396419, 0.742302, 0.540221,
		42.914330, 42.412148, 14.852805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359894, 41.847931, 15.176954>,  <43.191826, 41.892536, 14.474650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.359894, 41.847931, 15.176954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.028824, 42.072212, 15.186446>,  <42.830181, 42.206779, 15.192142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.028824, 42.072212, 15.186446>,  <43.359894, 41.847931, 15.176954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028824, 42.072212, 15.186446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425424, -0.654442, 0.625076,
		0.366012, 0.507265, 0.780203,
		-0.827677, 0.560702, 0.023731,
		42.780521, 42.240421, 15.193565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111828, 41.908989, 15.903059>,  <43.359894, 41.847931, 15.176954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111828, 41.908989, 15.903059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.800381, 41.995625, 15.667484>,  <42.613514, 42.047604, 15.526140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.800381, 41.995625, 15.667484>,  <43.111828, 41.908989, 15.903059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800381, 41.995625, 15.667484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612387, -0.467004, 0.637879,
		-0.136880, 0.857320, 0.496252,
		-0.778618, 0.216585, -0.588936,
		42.566795, 42.060600, 15.490804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621826, 42.309742, 16.281401>,  <43.111828, 41.908989, 15.903059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621826, 42.309742, 16.281401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.384876, 42.152573, 16.000059>,  <42.242706, 42.058270, 15.831254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.384876, 42.152573, 16.000059>,  <42.621826, 42.309742, 16.281401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384876, 42.152573, 16.000059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655056, -0.273352, 0.704400,
		-0.469039, 0.878003, -0.095461,
		-0.592371, -0.392924, -0.703354,
		42.207165, 42.034695, 15.789053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852867, 42.494507, 16.396257>,  <42.621826, 42.309742, 16.281401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852867, 42.494507, 16.396257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.825954, 42.180786, 16.149569>,  <41.809807, 41.992554, 16.001554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.825954, 42.180786, 16.149569>,  <41.852867, 42.494507, 16.396257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825954, 42.180786, 16.149569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586936, -0.468739, 0.660144,
		-0.806832, 0.406395, -0.428794,
		-0.067287, -0.784300, -0.616722,
		41.805767, 41.945496, 15.964552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189137, 42.264156, 16.438801>,  <41.852867, 42.494507, 16.396257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189137, 42.264156, 16.438801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.358051, 41.926361, 16.307039>,  <41.459400, 41.723682, 16.227982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.358051, 41.926361, 16.307039>,  <41.189137, 42.264156, 16.438801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358051, 41.926361, 16.307039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742372, -0.530726, 0.408917,
		-0.520144, 0.071846, -0.851051,
		0.422296, -0.844493, -0.329391,
		41.484737, 41.673012, 16.208218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586597, 41.915344, 16.226978>,  <41.189137, 42.264156, 16.438801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586597, 41.915344, 16.226978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.885033, 41.650429, 16.254465>,  <41.064095, 41.491478, 16.270958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.885033, 41.650429, 16.254465>,  <40.586597, 41.915344, 16.226978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885033, 41.650429, 16.254465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609415, -0.637627, 0.471216,
		-0.268267, -0.393445, -0.879337,
		0.746087, -0.662293, 0.068717,
		41.108860, 41.451740, 16.275080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263283, 41.384144, 15.974875>,  <40.586597, 41.915344, 16.226978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263283, 41.384144, 15.974875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.575569, 41.218273, 16.161863>,  <40.762939, 41.118752, 16.274055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.575569, 41.218273, 16.161863>,  <40.263283, 41.384144, 15.974875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575569, 41.218273, 16.161863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583443, -0.751621, 0.307670,
		0.223777, -0.512945, -0.828741,
		0.780717, -0.414674, 0.467470,
		40.809784, 41.093872, 16.302105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314861, 40.676125, 15.851442>,  <40.263283, 41.384144, 15.974875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314861, 40.676125, 15.851442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.534927, 40.720352, 16.182524>,  <40.666965, 40.746891, 16.381172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.534927, 40.720352, 16.182524>,  <40.314861, 40.676125, 15.851442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534927, 40.720352, 16.182524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550887, -0.696853, 0.459260,
		0.627569, -0.708639, -0.322470,
		0.550164, 0.110572, 0.827704,
		40.699978, 40.753525, 16.430836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287277, 39.965195, 16.028946>,  <40.314861, 40.676125, 15.851442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287277, 39.965195, 16.028946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.361019, 40.209099, 16.337286>,  <40.405262, 40.355442, 16.522289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.361019, 40.209099, 16.337286>,  <40.287277, 39.965195, 16.028946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361019, 40.209099, 16.337286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439517, -0.650360, 0.619561,
		0.879113, -0.453019, 0.148104,
		0.184352, 0.609759, 0.770849,
		40.416325, 40.392025, 16.568541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512676, 39.454308, 16.518547>,  <40.287277, 39.965195, 16.028946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512676, 39.454308, 16.518547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.410488, 39.788723, 16.712776>,  <40.349174, 39.989372, 16.829313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.410488, 39.788723, 16.712776>,  <40.512676, 39.454308, 16.518547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410488, 39.788723, 16.712776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512405, -0.542982, 0.665291,
		0.819864, -0.078850, 0.567102,
		-0.255468, 0.836034, 0.485575,
		40.333847, 40.039532, 16.858448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707043, 39.358315, 17.262167>,  <40.512676, 39.454308, 16.518547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707043, 39.358315, 17.262167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.420746, 39.636917, 17.241787>,  <40.248970, 39.804077, 17.229559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.420746, 39.636917, 17.241787>,  <40.707043, 39.358315, 17.262167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420746, 39.636917, 17.241787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582810, -0.555518, 0.593070,
		0.384772, 0.454179, 0.803537,
		-0.715739, 0.696507, -0.050952,
		40.206024, 39.845871, 17.226501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240398, 39.560211, 17.871914>,  <40.707043, 39.358315, 17.262167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240398, 39.560211, 17.871914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.459335, 39.591064, 18.205252>,  <41.590698, 39.609577, 18.405254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.459335, 39.591064, 18.205252>,  <41.240398, 39.560211, 17.871914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459335, 39.591064, 18.205252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815215, 0.176107, -0.551734,
		-0.189316, 0.981344, 0.033509,
		0.547342, 0.077135, 0.833346,
		41.623539, 39.614204, 18.455256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664238, 40.117043, 17.770452>,  <41.240398, 39.560211, 17.871914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664238, 40.117043, 17.770452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.844196, 39.897488, 18.052254>,  <41.952171, 39.765755, 18.221334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.844196, 39.897488, 18.052254>,  <41.664238, 40.117043, 17.770452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844196, 39.897488, 18.052254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868584, 0.085424, -0.488123,
		0.207742, 0.831523, 0.515183,
		0.449894, -0.548883, 0.704501,
		41.979164, 39.732822, 18.263603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180096, 40.470684, 18.047916>,  <41.664238, 40.117043, 17.770452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180096, 40.470684, 18.047916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.265575, 40.081703, 18.085173>,  <42.316864, 39.848316, 18.107527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.265575, 40.081703, 18.085173>,  <42.180096, 40.470684, 18.047916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265575, 40.081703, 18.085173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847001, 0.136932, -0.513653,
		0.486748, 0.188657, 0.852927,
		0.213697, -0.972450, 0.093142,
		42.329685, 39.789967, 18.113115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772163, 40.435356, 18.493023>,  <42.180096, 40.470684, 18.047916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.772163, 40.435356, 18.493023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.723785, 40.111893, 18.262737>,  <42.694759, 39.917816, 18.124567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.723785, 40.111893, 18.262737>,  <42.772163, 40.435356, 18.493023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723785, 40.111893, 18.262737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726303, 0.323249, -0.606625,
		0.676650, -0.491511, 0.548235,
		-0.120947, -0.808658, -0.575712,
		42.687500, 39.869297, 18.090023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450932, 40.135971, 18.577883>,  <42.772163, 40.435356, 18.493023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450932, 40.135971, 18.577883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.263485, 40.018787, 18.244518>,  <43.151016, 39.948479, 18.044500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.263485, 40.018787, 18.244518>,  <43.450932, 40.135971, 18.577883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263485, 40.018787, 18.244518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820511, 0.205250, -0.533510,
		0.327355, -0.933834, 0.144195,
		-0.468614, -0.292961, -0.833411,
		43.122902, 39.930901, 17.994495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015991, 39.838776, 18.274265>,  <43.450932, 40.135971, 18.577883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015991, 39.838776, 18.274265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.739246, 39.924900, 17.998592>,  <43.573200, 39.976574, 17.833189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.739246, 39.924900, 17.998592>,  <44.015991, 39.838776, 18.274265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739246, 39.924900, 17.998592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721643, 0.174938, -0.669797,
		-0.023648, -0.960750, -0.276408,
		-0.691862, 0.215307, -0.689181,
		43.531689, 39.989491, 17.791838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048538, 39.394588, 17.692045>,  <44.015991, 39.838776, 18.274265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048538, 39.394588, 17.692045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.850735, 39.710701, 17.547316>,  <43.732052, 39.900368, 17.460478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.850735, 39.710701, 17.547316>,  <44.048538, 39.394588, 17.692045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850735, 39.710701, 17.547316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596017, 0.005323, -0.802954,
		-0.632636, -0.612717, -0.473656,
		-0.494504, 0.790285, -0.361822,
		43.702385, 39.947788, 17.438768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352962, 39.438984, 16.978933>,  <44.048538, 39.394588, 17.692045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352962, 39.438984, 16.978933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.108715, 39.753521, 16.941383>,  <43.962166, 39.942242, 16.918854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.108715, 39.753521, 16.941383>,  <44.352962, 39.438984, 16.978933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108715, 39.753521, 16.941383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468119, 0.262788, -0.843686,
		-0.638754, -0.559118, -0.528564,
		-0.610620, 0.786339, -0.093877,
		43.925529, 39.989422, 16.913219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.000042, 39.453342, 16.286367>,  <44.352962, 39.438984, 16.978933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.000042, 39.453342, 16.286367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.993298, 39.830448, 16.419580>,  <43.989250, 40.056713, 16.499508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.993298, 39.830448, 16.419580>,  <44.000042, 39.453342, 16.286367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993298, 39.830448, 16.419580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399195, 0.311730, -0.862246,
		-0.916711, 0.118404, -0.381604,
		-0.016864, 0.942764, 0.333033,
		43.988239, 40.113277, 16.519489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690796, 39.859493, 15.758961>,  <44.000042, 39.453342, 16.286367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690796, 39.859493, 15.758961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.900269, 40.110695, 15.989221>,  <44.025951, 40.261417, 16.127377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.900269, 40.110695, 15.989221>,  <43.690796, 39.859493, 15.758961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900269, 40.110695, 15.989221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539925, 0.278011, -0.794475,
		-0.658969, 0.726858, -0.193486,
		0.523679, 0.628003, 0.575650,
		44.057373, 40.299095, 16.161915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.723480, 40.490528, 15.368167>,  <43.690796, 39.859493, 15.758961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.723480, 40.490528, 15.368167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.014603, 40.505466, 15.642075>,  <44.189274, 40.514427, 15.806419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.014603, 40.505466, 15.642075>,  <43.723480, 40.490528, 15.368167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014603, 40.505466, 15.642075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611682, 0.416130, -0.672816,
		-0.310078, 0.908538, 0.280018,
		0.727802, 0.037343, 0.684769,
		44.232944, 40.516670, 15.847506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.991028, 41.167557, 15.417143>,  <43.723480, 40.490528, 15.368167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.991028, 41.167557, 15.417143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.286076, 40.944977, 15.570128>,  <44.463104, 40.811428, 15.661920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.286076, 40.944977, 15.570128>,  <43.991028, 41.167557, 15.417143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286076, 40.944977, 15.570128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663575, 0.492681, -0.562969,
		0.124830, 0.669052, 0.732657,
		0.737622, -0.556448, 0.382465,
		44.507362, 40.778042, 15.684868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.485798, 41.662964, 15.604954>,  <43.991028, 41.167557, 15.417143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.485798, 41.662964, 15.604954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.697834, 41.324062, 15.591291>,  <44.825058, 41.120724, 15.583094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.697834, 41.324062, 15.591291>,  <44.485798, 41.662964, 15.604954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697834, 41.324062, 15.591291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721235, 0.471701, -0.507265,
		0.445892, 0.244264, 0.861113,
		0.530094, -0.847250, -0.034156,
		44.856861, 41.069889, 15.581044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.116142, 41.879841, 15.711782>,  <44.485798, 41.662964, 15.604954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.116142, 41.879841, 15.711782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.164558, 41.529366, 15.525171>,  <45.193607, 41.319080, 15.413205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.164558, 41.529366, 15.525171>,  <45.116142, 41.879841, 15.711782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164558, 41.529366, 15.525171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691143, 0.411734, -0.593966,
		0.712510, -0.250543, 0.655406,
		0.121039, -0.876187, -0.466526,
		45.200871, 41.266510, 15.385214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800194, 42.216496, 16.227497>,  <45.116142, 41.879841, 15.711782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800194, 42.216496, 16.227497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.809193, 42.597446, 16.349133>,  <44.814590, 42.826015, 16.422113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.809193, 42.597446, 16.349133>,  <44.800194, 42.216496, 16.227497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809193, 42.597446, 16.349133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375571, -0.273838, 0.885415,
		0.926521, -0.134122, 0.351526,
		0.022493, 0.952378, 0.304089,
		44.815941, 42.883160, 16.440359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.244911, 42.218342, 16.816093>,  <44.800194, 42.216496, 16.227497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.244911, 42.218342, 16.816093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.004814, 42.533947, 16.868502>,  <44.860756, 42.723309, 16.899946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.004814, 42.533947, 16.868502>,  <45.244911, 42.218342, 16.816093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.004814, 42.533947, 16.868502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097322, -0.234651, 0.967196,
		0.793872, 0.567804, 0.217637,
		-0.600246, 0.789010, 0.131023,
		44.824741, 42.770649, 16.907808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.396412, 42.474247, 17.430445>,  <45.244911, 42.218342, 16.816093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.396412, 42.474247, 17.430445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.038200, 42.627937, 17.340639>,  <44.823273, 42.720150, 17.286757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.038200, 42.627937, 17.340639>,  <45.396412, 42.474247, 17.430445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038200, 42.627937, 17.340639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396198, -0.458659, 0.795399,
		0.202634, 0.801252, 0.562969,
		-0.895526, 0.384222, -0.224515,
		44.769543, 42.743202, 17.273285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.215675, 42.662010, 18.061363>,  <45.396412, 42.474247, 17.430445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.215675, 42.662010, 18.061363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.857037, 42.683002, 17.885473>,  <44.641853, 42.695599, 17.779940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.857037, 42.683002, 17.885473>,  <45.215675, 42.662010, 18.061363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.857037, 42.683002, 17.885473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442455, -0.147707, 0.884543,
		-0.018532, 0.987638, 0.155653,
		-0.896599, 0.052477, -0.439723,
		44.588058, 42.698746, 17.753557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.834320, 43.140667, 18.376585>,  <45.215675, 42.662010, 18.061363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.834320, 43.140667, 18.376585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.553398, 42.905285, 18.216341>,  <44.384846, 42.764053, 18.120195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.553398, 42.905285, 18.216341>,  <44.834320, 43.140667, 18.376585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553398, 42.905285, 18.216341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331004, -0.228280, 0.915600,
		-0.630245, 0.775631, -0.034461,
		-0.702301, -0.588460, -0.400610,
		44.342709, 42.728748, 18.096157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207283, 43.349606, 18.746744>,  <44.834320, 43.140667, 18.376585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207283, 43.349606, 18.746744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.104206, 43.005459, 18.570850>,  <44.042358, 42.798973, 18.465313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.104206, 43.005459, 18.570850>,  <44.207283, 43.349606, 18.746744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104206, 43.005459, 18.570850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666652, -0.171112, 0.725462,
		-0.699405, 0.480099, -0.529468,
		-0.257695, -0.860363, -0.439736,
		44.026897, 42.747349, 18.438931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433952, 43.389385, 18.795874>,  <44.207283, 43.349606, 18.746744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433952, 43.389385, 18.795874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.589451, 43.021961, 18.767244>,  <43.682751, 42.801506, 18.750067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.589451, 43.021961, 18.767244>,  <43.433952, 43.389385, 18.795874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.589451, 43.021961, 18.767244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391611, -0.235054, 0.889601,
		-0.833975, -0.317803, -0.451095,
		0.388749, -0.918559, -0.071574,
		43.706078, 42.746395, 18.745771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991276, 43.929028, 18.572834>,  <43.433952, 43.389385, 18.795874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991276, 43.929028, 18.572834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.981567, 44.270393, 18.781099>,  <42.975742, 44.475212, 18.906059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.981567, 44.270393, 18.781099>,  <42.991276, 43.929028, 18.572834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.981567, 44.270393, 18.781099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633461, 0.416046, -0.652406,
		-0.773394, 0.313983, -0.550705,
		-0.024275, 0.853417, 0.520663,
		42.974285, 44.526417, 18.937298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788746, 44.448990, 18.236534>,  <42.991276, 43.929028, 18.572834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788746, 44.448990, 18.236534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.985039, 44.659279, 18.514469>,  <43.102814, 44.785450, 18.681231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.985039, 44.659279, 18.514469>,  <42.788746, 44.448990, 18.236534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985039, 44.659279, 18.514469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545861, 0.436073, -0.715456,
		-0.679128, 0.730383, -0.072973,
		0.490736, 0.525719, 0.694837,
		43.132259, 44.816994, 18.722919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873947, 45.052734, 17.887941>,  <42.788746, 44.448990, 18.236534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873947, 45.052734, 17.887941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.141129, 45.080982, 18.184278>,  <43.301437, 45.097931, 18.362082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.141129, 45.080982, 18.184278>,  <42.873947, 45.052734, 17.887941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141129, 45.080982, 18.184278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579788, 0.574727, -0.577525,
		-0.466566, 0.815293, 0.342948,
		0.667954, 0.070616, 0.740845,
		43.341515, 45.102169, 18.406532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989662, 45.728897, 17.923347>,  <42.873947, 45.052734, 17.887941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989662, 45.728897, 17.923347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.307713, 45.591709, 18.123407>,  <43.498543, 45.509396, 18.243443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.307713, 45.591709, 18.123407>,  <42.989662, 45.728897, 17.923347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307713, 45.591709, 18.123407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606084, 0.477929, -0.635803,
		-0.020972, 0.808674, 0.587883,
		0.795124, -0.342973, 0.500148,
		43.546249, 45.488819, 18.273451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454182, 46.329678, 17.993002>,  <42.989662, 45.728897, 17.923347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454182, 46.329678, 17.993002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.672863, 45.998394, 18.042297>,  <43.804073, 45.799625, 18.071875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.672863, 45.998394, 18.042297>,  <43.454182, 46.329678, 17.993002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672863, 45.998394, 18.042297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691711, 0.363771, -0.623864,
		0.471858, 0.426315, 0.771755,
		0.546705, -0.828207, 0.123238,
		43.836876, 45.749931, 18.079269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203888, 46.573738, 17.942022>,  <43.454182, 46.329678, 17.993002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203888, 46.573738, 17.942022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.201477, 46.179375, 17.875160>,  <44.200031, 45.942757, 17.835043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.201477, 46.179375, 17.875160>,  <44.203888, 46.573738, 17.942022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.201477, 46.179375, 17.875160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665074, 0.120875, -0.736930,
		0.746753, -0.115614, 0.654976,
		-0.006029, -0.985912, -0.167156,
		44.199669, 45.883602, 17.825014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885571, 46.433296, 17.789265>,  <44.203888, 46.573738, 17.942022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885571, 46.433296, 17.789265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.672791, 46.131130, 17.636227>,  <44.545120, 45.949833, 17.544405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.672791, 46.131130, 17.636227>,  <44.885571, 46.433296, 17.789265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672791, 46.131130, 17.636227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685987, -0.119559, -0.717723,
		0.496434, -0.644250, 0.581803,
		-0.531953, -0.755412, -0.382594,
		44.513203, 45.904507, 17.521448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.298237, 45.830627, 17.743856>,  <44.885571, 46.433296, 17.789265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.298237, 45.830627, 17.743856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.003010, 45.813511, 17.474506>,  <44.825874, 45.803242, 17.312897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.003010, 45.813511, 17.474506>,  <45.298237, 45.830627, 17.743856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003010, 45.813511, 17.474506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672647, -0.125041, -0.729322,
		-0.052992, -0.991229, 0.121070,
		-0.738064, -0.042789, -0.673373,
		44.781590, 45.800674, 17.272495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.510864, 45.341198, 17.298199>,  <45.298237, 45.830627, 17.743856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.510864, 45.341198, 17.298199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.235340, 45.547859, 17.094784>,  <45.070026, 45.671856, 16.972734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.235340, 45.547859, 17.094784>,  <45.510864, 45.341198, 17.298199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235340, 45.547859, 17.094784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567179, -0.052818, -0.821899,
		-0.451501, -0.854561, -0.256657,
		-0.688807, 0.516658, -0.508536,
		45.028698, 45.702858, 16.942223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.342495, 39.755974, 26.984245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029102, 39.907475, 26.787184>,  <33.841068, 39.998375, 26.668947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029102, 39.907475, 26.787184>,  <34.342495, 39.755974, 26.984245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029102, 39.907475, 26.787184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614617, 0.589292, -0.524386,
		0.091703, -0.713638, -0.694486,
		-0.783477, 0.378755, -0.492654,
		33.794060, 40.021099, 26.639387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475113, 39.775295, 26.335745>,  <34.342495, 39.755974, 26.984245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475113, 39.775295, 26.335745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.202885, 40.067730, 26.355074>,  <34.039547, 40.243191, 26.366671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.202885, 40.067730, 26.355074>,  <34.475113, 39.775295, 26.335745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202885, 40.067730, 26.355074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574243, 0.573202, -0.584538,
		-0.455045, -0.370072, -0.809926,
		-0.680572, 0.731085, 0.048321,
		33.998714, 40.287056, 26.369570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328411, 40.043655, 25.652901>,  <34.475113, 39.775295, 26.335745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328411, 40.043655, 25.652901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.228668, 40.336197, 25.906811>,  <34.168823, 40.511723, 26.059156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.228668, 40.336197, 25.906811>,  <34.328411, 40.043655, 25.652901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228668, 40.336197, 25.906811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574742, 0.639325, -0.510818,
		-0.779417, 0.237456, -0.579762,
		-0.249359, 0.731354, 0.634777,
		34.153862, 40.555603, 26.097244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280472, 40.606182, 25.232914>,  <34.328411, 40.043655, 25.652901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280472, 40.606182, 25.232914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.293427, 40.783901, 25.591030>,  <34.301197, 40.890533, 25.805901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.293427, 40.783901, 25.591030>,  <34.280472, 40.606182, 25.232914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293427, 40.783901, 25.591030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468340, 0.784587, -0.406301,
		-0.882955, 0.432459, -0.182677,
		0.032383, 0.444300, 0.895293,
		34.303143, 40.917191, 25.859617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977501, 41.310230, 25.158714>,  <34.280472, 40.606182, 25.232914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977501, 41.310230, 25.158714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.220139, 41.303349, 25.476645>,  <34.365723, 41.299221, 25.667402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.220139, 41.303349, 25.476645>,  <33.977501, 41.310230, 25.158714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220139, 41.303349, 25.476645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573491, 0.701862, -0.422489,
		-0.550589, 0.712105, 0.435612,
		0.606597, -0.017202, 0.794824,
		34.402119, 41.298187, 25.715092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071953, 42.071640, 25.291195>,  <33.977501, 41.310230, 25.158714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071953, 42.071640, 25.291195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341682, 41.829308, 25.460075>,  <34.503521, 41.683910, 25.561403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341682, 41.829308, 25.460075>,  <34.071953, 42.071640, 25.291195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341682, 41.829308, 25.460075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730324, 0.631659, -0.260067,
		-0.109132, 0.483715, 0.868395,
		0.674327, -0.605828, 0.422203,
		34.543980, 41.647560, 25.586737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555218, 42.499580, 25.518055>,  <34.071953, 42.071640, 25.291195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555218, 42.499580, 25.518055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.758083, 42.155857, 25.544510>,  <34.879803, 41.949623, 25.560383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.758083, 42.155857, 25.544510>,  <34.555218, 42.499580, 25.518055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758083, 42.155857, 25.544510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855943, 0.493231, -0.155192,
		0.100738, 0.135315, 0.985668,
		0.507162, -0.859309, 0.066135,
		34.910233, 41.898064, 25.564350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044323, 42.628086, 25.995050>,  <34.555218, 42.499580, 25.518055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044323, 42.628086, 25.995050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.153194, 42.329826, 25.751764>,  <35.218517, 42.150871, 25.605793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.153194, 42.329826, 25.751764>,  <35.044323, 42.628086, 25.995050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153194, 42.329826, 25.751764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798593, 0.527660, -0.289525,
		0.536815, -0.406915, 0.739087,
		0.272175, -0.745651, -0.608215,
		35.234848, 42.106133, 25.569300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842056, 42.590099, 26.115757>,  <35.044323, 42.628086, 25.995050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842056, 42.590099, 26.115757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.789856, 42.371357, 25.784960>,  <35.758533, 42.240112, 25.586481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.789856, 42.371357, 25.784960>,  <35.842056, 42.590099, 26.115757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789856, 42.371357, 25.784960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840769, 0.381011, -0.384627,
		0.525430, -0.745504, 0.410057,
		-0.130505, -0.546858, -0.826991,
		35.750706, 42.207298, 25.536861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445457, 42.294643, 25.942814>,  <35.842056, 42.590099, 26.115757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445457, 42.294643, 25.942814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.266693, 42.276249, 25.585457>,  <36.159435, 42.265213, 25.371042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.266693, 42.276249, 25.585457>,  <36.445457, 42.294643, 25.942814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266693, 42.276249, 25.585457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846099, 0.302566, -0.438829,
		0.290489, -0.952019, -0.096315,
		-0.446915, -0.045983, -0.893394,
		36.132618, 42.262451, 25.317438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917770, 42.056648, 25.595022>,  <36.445457, 42.294643, 25.942814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917770, 42.056648, 25.595022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.672001, 42.217129, 25.323282>,  <36.524540, 42.313419, 25.160238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.672001, 42.217129, 25.323282>,  <36.917770, 42.056648, 25.595022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672001, 42.217129, 25.323282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788973, 0.310353, -0.530285,
		-0.001914, -0.861810, -0.507228,
		-0.614425, 0.401204, -0.679351,
		36.487675, 42.337490, 25.119476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031158, 41.803055, 24.928415>,  <36.917770, 42.056648, 25.595022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031158, 41.803055, 24.928415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851688, 42.154678, 24.863983>,  <36.744007, 42.365654, 24.825323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851688, 42.154678, 24.863983>,  <37.031158, 41.803055, 24.928415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851688, 42.154678, 24.863983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595884, 0.159929, -0.786985,
		-0.666046, -0.449082, -0.595574,
		-0.448671, 0.879061, -0.161081,
		36.717087, 42.418396, 24.815659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116867, 41.143677, 24.460506>,  <37.031158, 41.803055, 24.928415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116867, 41.143677, 24.460506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.368118, 40.843342, 24.542185>,  <37.518867, 40.663139, 24.591192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.368118, 40.843342, 24.542185>,  <37.116867, 41.143677, 24.460506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368118, 40.843342, 24.542185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772145, -0.569026, 0.282844,
		-0.096178, -0.335331, -0.937178,
		0.628125, -0.750841, 0.204196,
		37.556557, 40.618088, 24.603443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774044, 40.495266, 24.109266>,  <37.116867, 41.143677, 24.460506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774044, 40.495266, 24.109266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.023697, 40.401714, 24.407465>,  <37.173489, 40.345581, 24.586384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.023697, 40.401714, 24.407465>,  <36.774044, 40.495266, 24.109266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023697, 40.401714, 24.407465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671901, -0.647632, 0.359334,
		0.398765, -0.725170, -0.561351,
		0.624128, -0.233883, 0.745495,
		37.210934, 40.331551, 24.631113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778496, 39.771534, 24.232626>,  <36.774044, 40.495266, 24.109266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778496, 39.771534, 24.232626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921547, 39.906834, 24.580807>,  <37.007378, 39.988014, 24.789715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921547, 39.906834, 24.580807>,  <36.778496, 39.771534, 24.232626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921547, 39.906834, 24.580807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474085, -0.737297, 0.481287,
		0.804578, -0.584790, -0.103318,
		0.357628, 0.338251, 0.870453,
		37.028835, 40.008308, 24.841942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802349, 39.129154, 24.732170>,  <36.778496, 39.771534, 24.232626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802349, 39.129154, 24.732170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.877010, 39.437859, 24.975332>,  <36.921806, 39.623081, 25.121229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.877010, 39.437859, 24.975332>,  <36.802349, 39.129154, 24.732170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877010, 39.437859, 24.975332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435509, -0.489658, 0.755359,
		0.880621, -0.405734, 0.244715,
		0.186648, 0.771761, 0.607904,
		36.933006, 39.669388, 25.157703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306538, 38.894135, 25.265415>,  <36.802349, 39.129154, 24.732170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306538, 38.894135, 25.265415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.088470, 39.204529, 25.392315>,  <36.957630, 39.390766, 25.468454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.088470, 39.204529, 25.392315>,  <37.306538, 38.894135, 25.265415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088470, 39.204529, 25.392315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428726, -0.583267, 0.689923,
		0.720410, 0.240107, 0.650660,
		-0.545163, 0.775982, 0.317251,
		36.924923, 39.437325, 25.487490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347744, 38.827137, 26.014799>,  <37.306538, 38.894135, 25.265415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347744, 38.827137, 26.014799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.031895, 39.056458, 25.927324>,  <36.842384, 39.194050, 25.874840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.031895, 39.056458, 25.927324>,  <37.347744, 38.827137, 26.014799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031895, 39.056458, 25.927324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526578, -0.450183, 0.721146,
		0.314985, 0.684588, 0.657362,
		-0.789620, 0.573302, -0.218688,
		36.795010, 39.228447, 25.861717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031380, 39.072998, 26.710886>,  <37.347744, 38.827137, 26.014799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031380, 39.072998, 26.710886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.761253, 39.100178, 26.417130>,  <36.599178, 39.116486, 26.240875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.761253, 39.100178, 26.417130>,  <37.031380, 39.072998, 26.710886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761253, 39.100178, 26.417130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729482, -0.208229, 0.651534,
		-0.108650, 0.975717, 0.190188,
		-0.675315, 0.067949, -0.734392,
		36.558659, 39.120564, 26.196812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482910, 39.422371, 27.077856>,  <37.031380, 39.072998, 26.710886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482910, 39.422371, 27.077856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.332787, 39.237095, 26.756708>,  <36.242714, 39.125927, 26.564020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.332787, 39.237095, 26.756708>,  <36.482910, 39.422371, 27.077856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332787, 39.237095, 26.756708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597291, -0.541509, 0.591618,
		-0.708794, 0.701584, -0.073429,
		-0.375307, -0.463193, -0.802868,
		36.220196, 39.098137, 26.515848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777565, 39.299992, 27.189468>,  <36.482910, 39.422371, 27.077856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777565, 39.299992, 27.189468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.810009, 39.063263, 26.868675>,  <35.829475, 38.921227, 26.676199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.810009, 39.063263, 26.868675>,  <35.777565, 39.299992, 27.189468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810009, 39.063263, 26.868675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718910, -0.592058, 0.364193,
		-0.690354, 0.547010, -0.473488,
		0.081115, -0.591817, -0.801981,
		35.834343, 38.885719, 26.628080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101154, 39.182755, 27.049122>,  <35.777565, 39.299992, 27.189468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101154, 39.182755, 27.049122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.319283, 38.882412, 26.900076>,  <35.450157, 38.702206, 26.810648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.319283, 38.882412, 26.900076>,  <35.101154, 39.182755, 27.049122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319283, 38.882412, 26.900076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731931, -0.643188, 0.224914,
		-0.408540, 0.150079, -0.900317,
		0.545319, -0.750856, -0.372616,
		35.482880, 38.657154, 26.788292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656178, 38.723377, 26.605339>,  <35.101154, 39.182755, 27.049122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656178, 38.723377, 26.605339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966385, 38.484680, 26.687778>,  <35.152508, 38.341461, 26.737242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966385, 38.484680, 26.687778>,  <34.656178, 38.723377, 26.605339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966385, 38.484680, 26.687778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629996, -0.752685, 0.191236,
		0.041008, -0.278146, -0.959663,
		0.775515, -0.596742, 0.206097,
		35.199039, 38.305656, 26.749607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604652, 38.083778, 26.199724>,  <34.656178, 38.723377, 26.605339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604652, 38.083778, 26.199724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.848686, 37.992603, 26.503260>,  <34.995106, 37.937897, 26.685381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.848686, 37.992603, 26.503260>,  <34.604652, 38.083778, 26.199724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848686, 37.992603, 26.503260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596553, -0.762450, 0.250588,
		0.521457, -0.605568, -0.601140,
		0.610088, -0.227941, 0.758838,
		35.031712, 37.924221, 26.730911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515373, 37.367672, 26.323336>,  <34.604652, 38.083778, 26.199724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515373, 37.367672, 26.323336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.743652, 37.457043, 26.639406>,  <34.880619, 37.510666, 26.829048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.743652, 37.457043, 26.639406>,  <34.515373, 37.367672, 26.323336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743652, 37.457043, 26.639406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295261, -0.842082, 0.451353,
		0.766240, -0.490896, -0.414606,
		0.570699, 0.223427, 0.790178,
		34.914864, 37.524071, 26.876459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823494, 36.729229, 26.560993>,  <34.515373, 37.367672, 26.323336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823494, 36.729229, 26.560993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822041, 36.971340, 26.879396>,  <34.821171, 37.116608, 27.070438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822041, 36.971340, 26.879396>,  <34.823494, 36.729229, 26.560993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822041, 36.971340, 26.879396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579755, -0.649854, 0.491502,
		0.814783, -0.459705, 0.353271,
		-0.003629, 0.605278, 0.796006,
		34.820953, 37.152924, 27.118198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167992, 36.411652, 27.284678>,  <34.823494, 36.729229, 26.560993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167992, 36.411652, 27.284678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860500, 36.658905, 27.350367>,  <34.676006, 36.807259, 27.389780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.860500, 36.658905, 27.350367>,  <35.167992, 36.411652, 27.284678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860500, 36.658905, 27.350367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491830, -0.735470, 0.466034,
		0.408853, 0.277483, 0.869392,
		-0.768728, 0.618133, 0.164224,
		34.629883, 36.844345, 27.399633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786335, 36.044144, 27.303377>,  <35.167992, 36.411652, 27.284678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786335, 36.044144, 27.303377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.726345, 35.760330, 27.027967>,  <35.690350, 35.590042, 26.862720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.726345, 35.760330, 27.027967>,  <35.786335, 36.044144, 27.303377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726345, 35.760330, 27.027967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652213, 0.452379, -0.608252,
		0.743051, -0.540290, 0.394920,
		-0.149979, -0.709535, -0.688525,
		35.681351, 35.547470, 26.821409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440166, 35.642929, 27.184370>,  <35.786335, 36.044144, 27.303377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440166, 35.642929, 27.184370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196007, 35.652931, 26.867689>,  <36.049511, 35.658932, 26.677681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196007, 35.652931, 26.867689>,  <36.440166, 35.642929, 27.184370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196007, 35.652931, 26.867689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752177, 0.331598, -0.569450,
		0.248284, -0.943089, -0.221219,
		-0.610398, 0.025010, -0.791700,
		36.012886, 35.660435, 26.630178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797005, 35.239056, 26.623823>,  <36.440166, 35.642929, 27.184370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797005, 35.239056, 26.623823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545906, 35.490486, 26.440165>,  <36.395245, 35.641346, 26.329969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545906, 35.490486, 26.440165>,  <36.797005, 35.239056, 26.623823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545906, 35.490486, 26.440165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727007, 0.262635, -0.634416,
		-0.278193, -0.732059, -0.621851,
		-0.627750, 0.628579, -0.459149,
		36.357582, 35.679058, 26.302420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104454, 35.259167, 26.107164>,  <36.797005, 35.239056, 26.623823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104454, 35.259167, 26.107164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864311, 35.569511, 26.029587>,  <36.720226, 35.755718, 25.983040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864311, 35.569511, 26.029587>,  <37.104454, 35.259167, 26.107164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864311, 35.569511, 26.029587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695755, 0.387139, -0.605019,
		-0.394326, -0.498165, -0.772230,
		-0.600359, 0.775858, -0.193942,
		36.684204, 35.802269, 25.971405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001663, 35.277031, 25.370960>,  <37.104454, 35.259167, 26.107164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001663, 35.277031, 25.370960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.894093, 35.647343, 25.477251>,  <36.829552, 35.869530, 25.541025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.894093, 35.647343, 25.477251>,  <37.001663, 35.277031, 25.370960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894093, 35.647343, 25.477251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686112, 0.377761, -0.621729,
		-0.675965, 0.015118, -0.736778,
		-0.268927, 0.925780, 0.265726,
		36.813416, 35.925076, 25.556969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770206, 35.750805, 24.804104>,  <37.001663, 35.277031, 25.370960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770206, 35.750805, 24.804104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.837284, 36.049778, 25.061235>,  <36.877529, 36.229160, 25.215515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.837284, 36.049778, 25.061235>,  <36.770206, 35.750805, 24.804104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837284, 36.049778, 25.061235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370209, 0.556597, -0.743737,
		-0.913688, 0.362698, -0.183369,
		0.167690, 0.747429, 0.642830,
		36.887592, 36.274006, 25.254084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386570, 36.371273, 24.471064>,  <36.770206, 35.750805, 24.804104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386570, 36.371273, 24.471064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.656120, 36.483883, 24.744307>,  <36.817852, 36.551449, 24.908253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.656120, 36.483883, 24.744307>,  <36.386570, 36.371273, 24.471064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656120, 36.483883, 24.744307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577438, 0.376110, -0.724642,
		-0.460928, 0.882771, 0.090888,
		0.673877, 0.281525, 0.683105,
		36.858284, 36.568340, 24.949238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550911, 36.974358, 24.246155>,  <36.386570, 36.371273, 24.471064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550911, 36.974358, 24.246155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864170, 36.855049, 24.464411>,  <37.052124, 36.783463, 24.595364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864170, 36.855049, 24.464411>,  <36.550911, 36.974358, 24.246155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864170, 36.855049, 24.464411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621326, 0.339629, -0.706120,
		0.025300, 0.892013, 0.451301,
		0.783143, -0.298270, 0.545639,
		37.099113, 36.765568, 24.628103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909866, 37.609268, 24.337795>,  <36.550911, 36.974358, 24.246155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909866, 37.609268, 24.337795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.158108, 37.296398, 24.359930>,  <37.307053, 37.108677, 24.373211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.158108, 37.296398, 24.359930>,  <36.909866, 37.609268, 24.337795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158108, 37.296398, 24.359930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591538, 0.420684, -0.687828,
		0.514720, 0.459601, 0.723761,
		0.620602, -0.782171, 0.055337,
		37.344288, 37.061749, 24.376532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553673, 37.887039, 24.540646>,  <36.909866, 37.609268, 24.337795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553673, 37.887039, 24.540646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.635265, 37.535427, 24.368273>,  <37.684223, 37.324459, 24.264849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.635265, 37.535427, 24.368273>,  <37.553673, 37.887039, 24.540646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635265, 37.535427, 24.368273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695212, 0.439988, -0.568411,
		0.689253, -0.183642, 0.700861,
		0.203986, -0.879026, -0.430933,
		37.696461, 37.271721, 24.238993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243519, 37.977581, 24.364882>,  <37.553673, 37.887039, 24.540646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243519, 37.977581, 24.364882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.133972, 37.655823, 24.154003>,  <38.068245, 37.462769, 24.027475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.133972, 37.655823, 24.154003>,  <38.243519, 37.977581, 24.364882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133972, 37.655823, 24.154003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588568, 0.293351, -0.753348,
		0.760647, -0.516610, 0.393104,
		-0.273870, -0.804400, -0.527197,
		38.051811, 37.414501, 23.995844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892109, 37.603840, 24.199154>,  <38.243519, 37.977581, 24.364882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892109, 37.603840, 24.199154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.617153, 37.478767, 23.936941>,  <38.452179, 37.403725, 23.779613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.617153, 37.478767, 23.936941>,  <38.892109, 37.603840, 24.199154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617153, 37.478767, 23.936941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572673, 0.321782, -0.753990,
		0.446701, -0.893691, -0.042122,
		-0.687389, -0.312686, -0.655534,
		38.410934, 37.384960, 23.740280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267384, 37.244587, 23.663073>,  <38.892109, 37.603840, 24.199154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267384, 37.244587, 23.663073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.934063, 37.397976, 23.503796>,  <38.734070, 37.490009, 23.408230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.934063, 37.397976, 23.503796>,  <39.267384, 37.244587, 23.663073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934063, 37.397976, 23.503796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510980, 0.259412, -0.819515,
		-0.210965, -0.886372, -0.412115,
		-0.833303, 0.383471, -0.398192,
		38.684071, 37.513016, 23.384338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364464, 37.082027, 22.952339>,  <39.267384, 37.244587, 23.663073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364464, 37.082027, 22.952339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.070610, 37.353123, 22.939732>,  <38.894299, 37.515778, 22.932167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.070610, 37.353123, 22.939732>,  <39.364464, 37.082027, 22.952339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070610, 37.353123, 22.939732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465297, 0.469463, -0.750402,
		-0.493777, -0.565933, -0.660230,
		-0.734631, 0.677735, -0.031517,
		38.850220, 37.556442, 22.930277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200176, 37.068726, 22.297352>,  <39.364464, 37.082027, 22.952339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200176, 37.068726, 22.297352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.084789, 37.425426, 22.436817>,  <39.015556, 37.639446, 22.520496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.084789, 37.425426, 22.436817>,  <39.200176, 37.068726, 22.297352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084789, 37.425426, 22.436817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424373, 0.445500, -0.788313,
		-0.858309, -0.079437, -0.506947,
		-0.288466, 0.891751, 0.348666,
		38.998249, 37.692951, 22.541416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912109, 37.475685, 21.729094>,  <39.200176, 37.068726, 22.297352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912109, 37.475685, 21.729094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.993835, 37.749947, 22.008562>,  <39.042870, 37.914501, 22.176243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.993835, 37.749947, 22.008562>,  <38.912109, 37.475685, 21.729094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993835, 37.749947, 22.008562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278343, 0.643573, -0.712979,
		-0.938499, 0.340142, -0.059355,
		0.204315, 0.685651, 0.698669,
		39.055130, 37.955643, 22.218163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803543, 38.103016, 21.372341>,  <38.912109, 37.475685, 21.729094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803543, 38.103016, 21.372341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.021141, 38.209789, 21.690540>,  <39.151699, 38.273853, 21.881460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.021141, 38.209789, 21.690540>,  <38.803543, 38.103016, 21.372341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021141, 38.209789, 21.690540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425738, 0.729147, -0.535809,
		-0.723059, 0.630152, 0.283010,
		0.543997, 0.266933, 0.795496,
		39.184341, 38.289867, 21.929190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820168, 38.843357, 21.311758>,  <38.803543, 38.103016, 21.372341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820168, 38.843357, 21.311758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.143242, 38.754948, 21.530403>,  <39.337086, 38.701900, 21.661591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.143242, 38.754948, 21.530403>,  <38.820168, 38.843357, 21.311758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143242, 38.754948, 21.530403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569623, 0.531839, -0.626639,
		-0.152209, 0.817494, 0.555461,
		0.807690, -0.221023, 0.546614,
		39.385548, 38.688641, 21.694387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173580, 39.478367, 21.475834>,  <38.820168, 38.843357, 21.311758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173580, 39.478367, 21.475834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.451984, 39.195446, 21.525297>,  <39.619026, 39.025692, 21.554976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.451984, 39.195446, 21.525297>,  <39.173580, 39.478367, 21.475834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451984, 39.195446, 21.525297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624070, 0.510722, -0.591354,
		0.355111, 0.488761, 0.796875,
		0.696012, -0.707301, 0.123658,
		39.660789, 38.983257, 21.562395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850224, 39.829060, 21.490276>,  <39.173580, 39.478367, 21.475834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850224, 39.829060, 21.490276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.968391, 39.449310, 21.447525>,  <40.039291, 39.221462, 21.421873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.968391, 39.449310, 21.447525>,  <39.850224, 39.829060, 21.490276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968391, 39.449310, 21.447525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769359, 0.302735, -0.562528,
		0.566403, 0.083954, 0.819841,
		0.295421, -0.949370, -0.106879,
		40.057018, 39.164501, 21.415461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619080, 39.781597, 21.469482>,  <39.850224, 39.829060, 21.490276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619080, 39.781597, 21.469482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.483784, 39.442314, 21.306444>,  <40.402607, 39.238743, 21.208620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.483784, 39.442314, 21.306444>,  <40.619080, 39.781597, 21.469482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483784, 39.442314, 21.306444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753695, 0.015189, -0.657049,
		0.563507, -0.529442, 0.634154,
		-0.338237, -0.848210, -0.407597,
		40.382313, 39.187851, 21.184166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174644, 39.480289, 21.277754>,  <40.619080, 39.781597, 21.469482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174644, 39.480289, 21.277754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.880795, 39.321293, 21.057816>,  <40.704487, 39.225895, 20.925852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.880795, 39.321293, 21.057816>,  <41.174644, 39.480289, 21.277754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880795, 39.321293, 21.057816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593847, 0.015248, -0.804433,
		0.328142, -0.917478, 0.224849,
		-0.734621, -0.397494, -0.549845,
		40.660408, 39.202045, 20.892862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512943, 39.023251, 20.804289>,  <41.174644, 39.480289, 21.277754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512943, 39.023251, 20.804289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.149635, 39.085560, 20.648970>,  <40.931648, 39.122948, 20.555779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.149635, 39.085560, 20.648970>,  <41.512943, 39.023251, 20.804289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149635, 39.085560, 20.648970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400654, 0.056571, -0.914481,
		-0.120488, -0.986171, -0.113795,
		-0.908273, 0.155777, -0.388297,
		40.877155, 39.132294, 20.532480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368679, 38.549622, 20.287506>,  <41.512943, 39.023251, 20.804289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368679, 38.549622, 20.287506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.150566, 38.871864, 20.194845>,  <41.019699, 39.065212, 20.139248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.150566, 38.871864, 20.194845>,  <41.368679, 38.549622, 20.287506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150566, 38.871864, 20.194845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523412, 0.111359, -0.844772,
		-0.654760, -0.581885, -0.482388,
		-0.545279, 0.805611, -0.231652,
		40.986984, 39.113548, 20.125349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297455, 38.426899, 19.576218>,  <41.368679, 38.549622, 20.287506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297455, 38.426899, 19.576218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.196487, 38.808426, 19.641354>,  <41.135906, 39.037342, 19.680435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.196487, 38.808426, 19.641354>,  <41.297455, 38.426899, 19.576218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196487, 38.808426, 19.641354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467749, 0.267604, -0.842377,
		-0.847050, -0.136466, -0.513696,
		-0.252423, 0.953816, 0.162842,
		41.120762, 39.094570, 19.690207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054546, 38.554882, 18.950157>,  <41.297455, 38.426899, 19.576218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054546, 38.554882, 18.950157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.137600, 38.910160, 19.114103>,  <41.187431, 39.123329, 19.212471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.137600, 38.910160, 19.114103>,  <41.054546, 38.554882, 18.950157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137600, 38.910160, 19.114103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473609, 0.275333, -0.836592,
		-0.855910, 0.367823, -0.363490,
		0.207637, 0.888200, 0.409864,
		41.199890, 39.176620, 19.237062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932972, 39.013203, 18.353863>,  <41.054546, 38.554882, 18.950157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932972, 39.013203, 18.353863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.176598, 39.214504, 18.599066>,  <41.322773, 39.335285, 18.746187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.176598, 39.214504, 18.599066>,  <40.932972, 39.013203, 18.353863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176598, 39.214504, 18.599066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565223, 0.266791, -0.780606,
		-0.556389, 0.821923, -0.121959,
		0.609061, 0.503254, 0.613009,
		41.359318, 39.365482, 18.782969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439381, 39.451061, 17.986071>,  <40.932972, 39.013203, 18.353863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439381, 39.451061, 17.986071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.160496, 39.653969, 17.783459>,  <39.993164, 39.775715, 17.661892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.160496, 39.653969, 17.783459>,  <40.439381, 39.451061, 17.986071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160496, 39.653969, 17.783459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673821, -0.222582, 0.704573,
		0.244666, 0.832546, 0.496997,
		-0.697212, 0.507272, -0.506528,
		39.951332, 39.806149, 17.631500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136021, 40.016399, 18.392046>,  <40.439381, 39.451061, 17.986071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136021, 40.016399, 18.392046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.870754, 39.905777, 18.113846>,  <39.711594, 39.839405, 17.946926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.870754, 39.905777, 18.113846>,  <40.136021, 40.016399, 18.392046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870754, 39.905777, 18.113846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667683, -0.201338, 0.716702,
		-0.338239, 0.939670, -0.051130,
		-0.663169, -0.276555, -0.695503,
		39.671803, 39.822811, 17.905195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535309, 40.207962, 18.707989>,  <40.136021, 40.016399, 18.392046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535309, 40.207962, 18.707989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.392921, 39.975460, 18.415298>,  <39.307487, 39.835960, 18.239683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.392921, 39.975460, 18.415298>,  <39.535309, 40.207962, 18.707989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392921, 39.975460, 18.415298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776829, -0.251186, 0.577445,
		-0.519443, 0.773981, -0.362122,
		-0.355971, -0.581256, -0.731728,
		39.286129, 39.801083, 18.195780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846268, 40.447742, 18.534040>,  <39.535309, 40.207962, 18.707989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846268, 40.447742, 18.534040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.887379, 40.064583, 18.426807>,  <38.912045, 39.834686, 18.362467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.887379, 40.064583, 18.426807>,  <38.846268, 40.447742, 18.534040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887379, 40.064583, 18.426807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765835, -0.248187, 0.593212,
		-0.634771, 0.144340, -0.759099,
		0.102774, -0.957899, -0.268083,
		38.918209, 39.777214, 18.346382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229885, 40.213573, 18.532829>,  <38.846268, 40.447742, 18.534040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229885, 40.213573, 18.532829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.427685, 39.866974, 18.505560>,  <38.546364, 39.659016, 18.489199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.427685, 39.866974, 18.505560>,  <38.229885, 40.213573, 18.532829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427685, 39.866974, 18.505560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772151, -0.473957, 0.423258,
		-0.399063, -0.156664, -0.903441,
		0.494501, -0.866499, -0.068170,
		38.576035, 39.607025, 18.485109>
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
