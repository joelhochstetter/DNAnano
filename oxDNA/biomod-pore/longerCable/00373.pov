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
	<24.425064, 34.760338, 34.755882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335955, 35.144932, 34.820271>,  <24.282488, 35.375690, 34.858902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335955, 35.144932, 34.820271>,  <24.425064, 34.760338, 34.755882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.335955, 35.144932, 34.820271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837324, -0.273280, 0.473505,
		0.499260, -0.029301, 0.865957,
		-0.222775, 0.961488, 0.160972,
		24.269123, 35.433380, 34.868561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.050467, 34.313595, 34.564522>,  <24.425064, 34.760338, 34.755882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.050467, 34.313595, 34.564522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209839, 33.978859, 34.414341>,  <25.305462, 33.778019, 34.324234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209839, 33.978859, 34.414341>,  <25.050467, 34.313595, 34.564522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.209839, 33.978859, 34.414341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010493, -0.413473, 0.910456,
		-0.917139, -0.358813, -0.173521,
		0.398429, -0.836835, -0.375447,
		25.329369, 33.727810, 34.301708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.582304, 33.677780, 34.677582>,  <25.050467, 34.313595, 34.564522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.582304, 33.677780, 34.677582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.969606, 33.581242, 34.703617>,  <25.201988, 33.523319, 34.719238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.969606, 33.581242, 34.703617>,  <24.582304, 33.677780, 34.677582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.969606, 33.581242, 34.703617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130453, -0.265753, 0.955174,
		-0.213221, -0.933344, -0.288800,
		0.968256, -0.241338, 0.065094,
		25.260082, 33.508839, 34.723145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588379, 33.141644, 35.051601>,  <24.582304, 33.677780, 34.677582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588379, 33.141644, 35.051601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960476, 33.283245, 35.090244>,  <25.183733, 33.368206, 35.113430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960476, 33.283245, 35.090244>,  <24.588379, 33.141644, 35.051601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.960476, 33.283245, 35.090244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006476, -0.279078, 0.960247,
		0.366891, -0.892635, -0.261902,
		0.930241, 0.354002, 0.096611,
		25.239548, 33.389446, 35.119228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067625, 32.661179, 35.384884>,  <24.588379, 33.141644, 35.051601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.067625, 32.661179, 35.384884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217274, 33.026119, 35.451389>,  <25.307064, 33.245083, 35.491291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217274, 33.026119, 35.451389>,  <25.067625, 32.661179, 35.384884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.217274, 33.026119, 35.451389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145962, -0.234978, 0.960979,
		0.915821, -0.335256, -0.221080,
		0.374123, 0.912353, 0.166263,
		25.329510, 33.299824, 35.501266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.711151, 32.546371, 35.711456>,  <25.067625, 32.661179, 35.384884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.711151, 32.546371, 35.711456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589033, 32.903893, 35.842854>,  <25.515762, 33.118404, 35.921692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589033, 32.903893, 35.842854>,  <25.711151, 32.546371, 35.711456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.589033, 32.903893, 35.842854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469149, -0.159019, 0.868684,
		0.828670, 0.419320, -0.370779,
		-0.305296, 0.893803, 0.328498,
		25.497444, 33.172035, 35.941402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.287111, 32.862198, 36.006771>,  <25.711151, 32.546371, 35.711456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.287111, 32.862198, 36.006771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952551, 33.009460, 36.169201>,  <25.751816, 33.097820, 36.266659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.952551, 33.009460, 36.169201>,  <26.287111, 32.862198, 36.006771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.952551, 33.009460, 36.169201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320019, -0.273466, 0.907086,
		0.444999, 0.888637, 0.110909,
		-0.836399, 0.368159, 0.406072,
		25.701632, 33.119907, 36.291023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450539, 33.465282, 36.443272>,  <26.287111, 32.862198, 36.006771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450539, 33.465282, 36.443272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123524, 33.258057, 36.543869>,  <25.927315, 33.133720, 36.604225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123524, 33.258057, 36.543869>,  <26.450539, 33.465282, 36.443272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.123524, 33.258057, 36.543869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453752, -0.310583, 0.835253,
		-0.354605, 0.796963, 0.488984,
		-0.817536, -0.518063, 0.251489,
		25.878263, 33.102638, 36.619316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309469, 33.643681, 37.117275>,  <26.450539, 33.465282, 36.443272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309469, 33.643681, 37.117275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105818, 33.303356, 37.065269>,  <25.983627, 33.099163, 37.034065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105818, 33.303356, 37.065269>,  <26.309469, 33.643681, 37.117275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105818, 33.303356, 37.065269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381237, -0.358364, 0.852193,
		-0.771650, 0.384310, 0.506815,
		-0.509131, -0.850812, -0.130019,
		25.953079, 33.048111, 37.026264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113735, 33.409588, 37.782112>,  <26.309469, 33.643681, 37.117275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113735, 33.409588, 37.782112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085701, 33.064182, 37.582340>,  <26.068880, 32.856937, 37.462479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085701, 33.064182, 37.582340>,  <26.113735, 33.409588, 37.782112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085701, 33.064182, 37.582340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451413, -0.473917, 0.756061,
		-0.889559, -0.172459, 0.423017,
		-0.070086, -0.863516, -0.499427,
		26.064674, 32.805126, 37.432510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.705774, 32.958450, 38.171135>,  <26.113735, 33.409588, 37.782112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.705774, 32.958450, 38.171135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958393, 32.744213, 37.946892>,  <26.109964, 32.615669, 37.812344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.958393, 32.744213, 37.946892>,  <25.705774, 32.958450, 38.171135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.958393, 32.744213, 37.946892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492644, -0.281135, 0.823568,
		-0.598709, -0.796303, 0.086310,
		0.631545, -0.535598, -0.560612,
		26.147856, 32.583534, 37.778709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.826406, 32.390118, 38.560722>,  <25.705774, 32.958450, 38.171135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.826406, 32.390118, 38.560722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132046, 32.427158, 38.305355>,  <26.315430, 32.449383, 38.152134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132046, 32.427158, 38.305355>,  <25.826406, 32.390118, 38.560722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132046, 32.427158, 38.305355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641540, -0.212923, 0.736947,
		-0.067692, -0.972671, -0.222101,
		0.764097, 0.092601, -0.638421,
		26.361275, 32.454937, 38.113831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187904, 31.704775, 38.724213>,  <25.826406, 32.390118, 38.560722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187904, 31.704775, 38.724213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437593, 31.989401, 38.595207>,  <26.587408, 32.160175, 38.517803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437593, 31.989401, 38.595207>,  <26.187904, 31.704775, 38.724213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.437593, 31.989401, 38.595207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747547, -0.424087, 0.511198,
		0.226976, -0.560200, -0.796654,
		0.624224, 0.711566, -0.322518,
		26.624861, 32.202869, 38.498451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.864174, 31.413918, 38.398933>,  <26.187904, 31.704775, 38.724213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.864174, 31.413918, 38.398933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937820, 31.786106, 38.525627>,  <26.982008, 32.009418, 38.601643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937820, 31.786106, 38.525627>,  <26.864174, 31.413918, 38.398933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937820, 31.786106, 38.525627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820340, -0.322976, 0.471941,
		0.541426, 0.172938, -0.822770,
		0.184118, 0.930472, 0.316736,
		26.993055, 32.065247, 38.620647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553009, 31.607189, 38.338211>,  <26.864174, 31.413918, 38.398933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553009, 31.607189, 38.338211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413137, 31.825115, 38.643078>,  <27.329214, 31.955872, 38.826000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413137, 31.825115, 38.643078>,  <27.553009, 31.607189, 38.338211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413137, 31.825115, 38.643078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785160, -0.273413, 0.555670,
		0.511123, 0.792731, -0.332160,
		-0.349680, 0.544814, 0.762169,
		27.308233, 31.988560, 38.871727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245348, 31.391470, 37.612999>,  <27.553009, 31.607189, 38.338211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245348, 31.391470, 37.612999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586336, 31.240845, 37.758049>,  <27.790928, 31.150471, 37.845081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586336, 31.240845, 37.758049>,  <27.245348, 31.391470, 37.612999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586336, 31.240845, 37.758049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084116, -0.783415, -0.615780,
		0.515967, 0.494430, -0.699512,
		0.852469, -0.376562, 0.362627,
		27.842077, 31.127876, 37.866837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882183, 31.800610, 37.098709>,  <27.245348, 31.391470, 37.612999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882183, 31.800610, 37.098709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649923, 32.044666, 37.314327>,  <26.510569, 32.191101, 37.443699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649923, 32.044666, 37.314327>,  <26.882183, 31.800610, 37.098709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649923, 32.044666, 37.314327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719943, -0.075626, -0.689901,
		-0.380172, -0.788674, 0.483179,
		-0.580648, 0.610142, 0.539050,
		26.475729, 32.227707, 37.476044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234308, 31.749088, 36.727211>,  <26.882183, 31.800610, 37.098709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234308, 31.749088, 36.727211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168625, 32.086296, 36.932095>,  <26.129215, 32.288620, 37.055023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168625, 32.086296, 36.932095>,  <26.234308, 31.749088, 36.727211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168625, 32.086296, 36.932095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672490, 0.284209, -0.683361,
		-0.721660, -0.456667, 0.520252,
		-0.164208, 0.843019, 0.512206,
		26.119362, 32.339203, 37.085758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.466784, 31.847433, 36.777725>,  <26.234308, 31.749088, 36.727211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.466784, 31.847433, 36.777725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.603291, 32.210403, 36.875793>,  <25.685196, 32.428185, 36.934635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.603291, 32.210403, 36.875793>,  <25.466784, 31.847433, 36.777725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.603291, 32.210403, 36.875793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689843, 0.418960, -0.590414,
		-0.638476, 0.032360, 0.768961,
		0.341270, 0.907428, 0.245172,
		25.705671, 32.482632, 36.949345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.847589, 32.353806, 36.948223>,  <25.466784, 31.847433, 36.777725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.847589, 32.353806, 36.948223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164766, 32.564034, 36.824924>,  <25.355072, 32.690170, 36.750946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164766, 32.564034, 36.824924>,  <24.847589, 32.353806, 36.948223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.164766, 32.564034, 36.824924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526959, 0.337581, -0.779971,
		-0.305871, 0.780907, 0.544636,
		0.792943, 0.525571, -0.308249,
		25.402649, 32.721706, 36.732449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.696135, 32.976906, 36.899014>,  <24.847589, 32.353806, 36.948223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.696135, 32.976906, 36.899014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081631, 33.082680, 36.884689>,  <25.312927, 33.146145, 36.876095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081631, 33.082680, 36.884689>,  <24.696135, 32.976906, 36.899014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081631, 33.082680, 36.884689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166372, 0.490507, -0.855408,
		-0.208632, 0.830348, 0.516715,
		0.963739, 0.264433, -0.035811,
		25.370752, 33.162010, 36.873947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.625488, 33.668617, 36.816460>,  <24.696135, 32.976906, 36.899014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.625488, 33.668617, 36.816460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.955912, 33.507839, 36.658436>,  <25.154165, 33.411373, 36.563622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.955912, 33.507839, 36.658436>,  <24.625488, 33.668617, 36.816460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.955912, 33.507839, 36.658436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192939, 0.456927, -0.868327,
		0.529532, 0.793510, 0.299897,
		0.826057, -0.401945, -0.395056,
		25.203730, 33.387257, 36.539917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.976198, 34.215351, 36.439373>,  <24.625488, 33.668617, 36.816460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.976198, 34.215351, 36.439373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.110693, 33.874275, 36.279438>,  <25.191389, 33.669632, 36.183475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.110693, 33.874275, 36.279438>,  <24.976198, 34.215351, 36.439373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.110693, 33.874275, 36.279438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196639, 0.351636, -0.915252,
		0.921020, 0.386365, -0.049438,
		0.336237, -0.852687, -0.399838,
		25.211563, 33.618469, 36.159485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.430065, 34.375938, 35.979771>,  <24.976198, 34.215351, 36.439373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.430065, 34.375938, 35.979771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522074, 33.987926, 35.948429>,  <25.577278, 33.755119, 35.929623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522074, 33.987926, 35.948429>,  <25.430065, 34.375938, 35.979771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522074, 33.987926, 35.948429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130695, 0.110575, -0.985237,
		0.964370, 0.216386, 0.152213,
		0.230022, -0.970026, -0.078354,
		25.591080, 33.696918, 35.924923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025810, 34.330078, 35.555878>,  <25.430065, 34.375938, 35.979771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025810, 34.330078, 35.555878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799015, 34.000954, 35.540325>,  <25.662939, 33.803478, 35.530994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799015, 34.000954, 35.540325>,  <26.025810, 34.330078, 35.555878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799015, 34.000954, 35.540325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068954, -0.000377, -0.997620,
		0.820836, -0.568318, 0.056950,
		-0.566987, -0.822809, -0.038878,
		25.628920, 33.754112, 35.528660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460079, 33.881962, 35.222553>,  <26.025810, 34.330078, 35.555878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460079, 33.881962, 35.222553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096443, 33.721764, 35.176662>,  <25.878262, 33.625645, 35.149128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096443, 33.721764, 35.176662>,  <26.460079, 33.881962, 35.222553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.096443, 33.721764, 35.176662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177713, -0.123730, -0.976273,
		0.376794, -0.907908, 0.183655,
		-0.909090, -0.400492, -0.114727,
		25.823717, 33.601616, 35.142246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579264, 33.261894, 34.835106>,  <26.460079, 33.881962, 35.222553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579264, 33.261894, 34.835106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200130, 33.386414, 34.807682>,  <25.972651, 33.461124, 34.791225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200130, 33.386414, 34.807682>,  <26.579264, 33.261894, 34.835106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200130, 33.386414, 34.807682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045297, -0.081369, -0.995654,
		-0.315530, -0.946821, 0.063024,
		-0.947834, 0.311304, -0.068562,
		25.915781, 33.479805, 34.787113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.336685, 32.833191, 34.344570>,  <26.579264, 33.261894, 34.835106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.336685, 32.833191, 34.344570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112492, 33.162231, 34.382896>,  <25.977976, 33.359657, 34.405891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112492, 33.162231, 34.382896>,  <26.336685, 32.833191, 34.344570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112492, 33.162231, 34.382896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086997, 0.173537, -0.980977,
		-0.823584, -0.541486, -0.168829,
		-0.560483, 0.822604, 0.095815,
		25.944347, 33.409012, 34.411640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795130, 32.763706, 33.859913>,  <26.336685, 32.833191, 34.344570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.795130, 32.763706, 33.859913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878000, 33.143932, 33.952438>,  <25.927723, 33.372066, 34.007954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.878000, 33.143932, 33.952438>,  <25.795130, 32.763706, 33.859913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.878000, 33.143932, 33.952438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170987, 0.197619, -0.965251,
		-0.963246, 0.239526, -0.121593,
		0.207174, 0.950565, 0.231312,
		25.940153, 33.429100, 34.021832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416813, 33.289757, 33.412273>,  <25.795130, 32.763706, 33.859913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416813, 33.289757, 33.412273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768503, 33.435017, 33.535618>,  <25.979517, 33.522171, 33.609623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768503, 33.435017, 33.535618>,  <25.416813, 33.289757, 33.412273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.768503, 33.435017, 33.535618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204532, 0.296835, -0.932768,
		-0.430266, 0.883182, 0.186709,
		0.879226, 0.363150, 0.308357,
		26.032270, 33.543961, 33.628124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.537348, 33.940929, 33.156143>,  <25.416813, 33.289757, 33.412273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.537348, 33.940929, 33.156143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900528, 33.788204, 33.225246>,  <26.118437, 33.696571, 33.266708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900528, 33.788204, 33.225246>,  <25.537348, 33.940929, 33.156143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.900528, 33.788204, 33.225246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290594, 0.276571, -0.916004,
		0.301960, 0.881890, 0.362065,
		0.907951, -0.381810, 0.172759,
		26.172913, 33.673660, 33.277073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095766, 34.411758, 32.911732>,  <25.537348, 33.940929, 33.156143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095766, 34.411758, 32.911732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288290, 34.061203, 32.918484>,  <26.403805, 33.850868, 32.922535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288290, 34.061203, 32.918484>,  <26.095766, 34.411758, 32.911732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288290, 34.061203, 32.918484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308650, 0.151421, -0.939046,
		0.820413, 0.457180, 0.343377,
		0.481308, -0.876389, 0.016881,
		26.432682, 33.798286, 32.923550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778952, 34.492508, 32.587997>,  <26.095766, 34.411758, 32.911732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778952, 34.492508, 32.587997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715967, 34.098057, 32.567017>,  <26.678177, 33.861385, 32.554428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715967, 34.098057, 32.567017>,  <26.778952, 34.492508, 32.587997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715967, 34.098057, 32.567017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076406, 0.040791, -0.996242,
		0.984565, -0.160875, 0.068923,
		-0.157459, -0.986131, -0.052454,
		26.668730, 33.802216, 32.551281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281601, 34.163559, 32.038475>,  <26.778952, 34.492508, 32.587997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281601, 34.163559, 32.038475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973715, 33.908878, 32.057007>,  <26.788982, 33.756069, 32.068127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.973715, 33.908878, 32.057007>,  <27.281601, 34.163559, 32.038475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973715, 33.908878, 32.057007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058185, -0.002296, -0.998303,
		0.635731, -0.771105, -0.035279,
		-0.769715, -0.636704, 0.046326,
		26.742800, 33.717869, 32.070904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397648, 33.587837, 31.718428>,  <27.281601, 34.163559, 32.038475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397648, 33.587837, 31.718428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998249, 33.607311, 31.728500>,  <26.758610, 33.618996, 31.734543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998249, 33.607311, 31.728500>,  <27.397648, 33.587837, 31.718428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998249, 33.607311, 31.728500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026761, -0.032108, -0.999126,
		-0.047852, -0.998297, 0.033364,
		-0.998496, 0.048703, 0.025179,
		26.698700, 33.621918, 31.736053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479467, 32.917053, 31.607294>,  <27.397648, 33.587837, 31.718428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479467, 32.917053, 31.607294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083601, 32.968166, 31.633320>,  <26.846081, 32.998837, 31.648935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083601, 32.968166, 31.633320>,  <27.479467, 32.917053, 31.607294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083601, 32.968166, 31.633320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093131, -0.227764, -0.969252,
		-0.109036, -0.965295, 0.237311,
		-0.989665, 0.127784, 0.065065,
		26.786701, 33.006504, 31.652840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182758, 32.426022, 31.235096>,  <27.479467, 32.917053, 31.607294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182758, 32.426022, 31.235096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877832, 32.683350, 31.263441>,  <26.694878, 32.837746, 31.280447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877832, 32.683350, 31.263441>,  <27.182758, 32.426022, 31.235096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877832, 32.683350, 31.263441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291572, -0.243618, -0.925006,
		-0.577808, -0.725806, 0.373287,
		-0.762315, 0.643316, 0.070861,
		26.649137, 32.876343, 31.284698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499763, 32.183136, 31.144640>,  <27.182758, 32.426022, 31.235096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499763, 32.183136, 31.144640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466921, 32.569927, 31.048132>,  <26.447216, 32.802002, 30.990227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.466921, 32.569927, 31.048132>,  <26.499763, 32.183136, 31.144640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466921, 32.569927, 31.048132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389905, -0.253958, -0.885144,
		-0.917188, 0.021398, 0.397881,
		-0.082105, 0.966979, -0.241270,
		26.442289, 32.860020, 30.975750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951233, 32.359543, 30.848633>,  <26.499763, 32.183136, 31.144640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951233, 32.359543, 30.848633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217981, 32.630566, 30.724564>,  <26.378031, 32.793179, 30.650122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217981, 32.630566, 30.724564>,  <25.951233, 32.359543, 30.848633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217981, 32.630566, 30.724564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355083, -0.077013, -0.931657,
		-0.655134, 0.731431, 0.189230,
		0.666870, 0.677553, -0.310172,
		26.418043, 32.833832, 30.631512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.881908, 32.205093, 30.008705>,  <25.951233, 32.359543, 30.848633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.881908, 32.205093, 30.008705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832155, 32.522346, 29.770220>,  <25.802303, 32.712700, 29.627129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832155, 32.522346, 29.770220>,  <25.881908, 32.205093, 30.008705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.832155, 32.522346, 29.770220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088341, 0.607346, 0.789511,
		0.988294, 0.045530, -0.145608,
		-0.124381, 0.793132, -0.596214,
		25.794842, 32.760284, 29.591356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487431, 32.724419, 29.716232>,  <25.881908, 32.205093, 30.008705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487431, 32.724419, 29.716232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122694, 32.857452, 29.812511>,  <25.903852, 32.937271, 29.870279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122694, 32.857452, 29.812511>,  <26.487431, 32.724419, 29.716232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122694, 32.857452, 29.812511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394421, 0.546996, 0.738395,
		0.113916, 0.768235, -0.629951,
		-0.911842, 0.332581, 0.240696,
		25.849142, 32.957226, 29.884720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615732, 33.342327, 29.886044>,  <26.487431, 32.724419, 29.716232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615732, 33.342327, 29.886044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274328, 33.248726, 30.072273>,  <26.069485, 33.192566, 30.184011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274328, 33.248726, 30.072273>,  <26.615732, 33.342327, 29.886044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274328, 33.248726, 30.072273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349603, 0.405386, 0.844654,
		-0.386387, 0.883689, -0.264195,
		-0.853512, -0.234000, 0.465577,
		26.018274, 33.178524, 30.211946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641987, 33.952343, 30.304899>,  <26.615732, 33.342327, 29.886044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641987, 33.952343, 30.304899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428680, 33.645203, 30.446907>,  <26.300697, 33.460918, 30.532112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428680, 33.645203, 30.446907>,  <26.641987, 33.952343, 30.304899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428680, 33.645203, 30.446907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268945, 0.244011, 0.931734,
		-0.802059, 0.592340, 0.076386,
		-0.533264, -0.767849, 0.355018,
		26.268702, 33.414848, 30.553411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276499, 34.161621, 30.851772>,  <26.641987, 33.952343, 30.304899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276499, 34.161621, 30.851772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319262, 33.766586, 30.897793>,  <26.344919, 33.529564, 30.925406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319262, 33.766586, 30.897793>,  <26.276499, 34.161621, 30.851772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319262, 33.766586, 30.897793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128062, 0.128426, 0.983416,
		-0.985987, -0.090401, 0.140202,
		0.106907, -0.987590, 0.115049,
		26.351334, 33.470310, 30.932308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921440, 33.943932, 31.362080>,  <26.276499, 34.161621, 30.851772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921440, 33.943932, 31.362080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128141, 33.603046, 31.329325>,  <26.252163, 33.398518, 31.309671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128141, 33.603046, 31.329325>,  <25.921440, 33.943932, 31.362080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.128141, 33.603046, 31.329325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180903, 0.015204, 0.983383,
		-0.836803, -0.522981, 0.162024,
		0.516754, -0.852209, -0.081887,
		26.283167, 33.347385, 31.304758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.599174, 33.450951, 31.851839>,  <25.921440, 33.943932, 31.362080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.599174, 33.450951, 31.851839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983664, 33.374439, 31.772373>,  <26.214357, 33.328533, 31.724693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983664, 33.374439, 31.772373>,  <25.599174, 33.450951, 31.851839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.983664, 33.374439, 31.772373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186224, -0.081150, 0.979150,
		-0.203413, -0.978175, -0.042382,
		0.961220, -0.191279, -0.198666,
		26.272030, 33.317055, 31.712774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.754570, 32.866119, 32.263794>,  <25.599174, 33.450951, 31.851839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.754570, 32.866119, 32.263794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098562, 33.061428, 32.204433>,  <26.304958, 33.178612, 32.168816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098562, 33.061428, 32.204433>,  <25.754570, 32.866119, 32.263794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098562, 33.061428, 32.204433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200860, -0.056526, 0.977988,
		0.469132, -0.870861, -0.146684,
		0.859983, 0.488268, -0.148403,
		26.356558, 33.207909, 32.159912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348932, 32.507755, 32.490612>,  <25.754570, 32.866119, 32.263794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348932, 32.507755, 32.490612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450874, 32.894192, 32.507149>,  <26.512039, 33.126053, 32.517071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450874, 32.894192, 32.507149>,  <26.348932, 32.507755, 32.490612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450874, 32.894192, 32.507149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046957, -0.055064, 0.997378,
		0.965838, -0.252248, -0.059398,
		0.254857, 0.966095, 0.041338,
		26.527332, 33.184021, 32.519550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874073, 32.575039, 33.042137>,  <26.348932, 32.507755, 32.490612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874073, 32.575039, 33.042137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717602, 32.939274, 32.988762>,  <26.623720, 33.157814, 32.956738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717602, 32.939274, 32.988762>,  <26.874073, 32.575039, 33.042137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717602, 32.939274, 32.988762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333615, -0.005168, 0.942695,
		0.857719, 0.413279, 0.305808,
		-0.391176, 0.910590, -0.133443,
		26.600248, 33.212452, 32.948730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204906, 33.190804, 33.536102>,  <26.874073, 32.575039, 33.042137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204906, 33.190804, 33.536102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826925, 33.256508, 33.422909>,  <26.600136, 33.295933, 33.354992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826925, 33.256508, 33.422909>,  <27.204906, 33.190804, 33.536102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826925, 33.256508, 33.422909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260901, 0.143670, 0.954615,
		0.197465, 0.975898, -0.092905,
		-0.944954, 0.164264, -0.282982,
		26.543440, 33.305786, 33.338013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840410, 32.618958, 33.460487>,  <27.204906, 33.190804, 33.536102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840410, 32.618958, 33.460487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623077, 32.491966, 33.149616>,  <27.492678, 32.415771, 32.963093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.623077, 32.491966, 33.149616>,  <27.840410, 32.618958, 33.460487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623077, 32.491966, 33.149616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608025, 0.489515, -0.625045,
		0.578877, -0.812147, -0.072934,
		-0.543330, -0.317478, -0.777174,
		27.460077, 32.396725, 32.916466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297911, 32.144054, 33.165859>,  <27.840410, 32.618958, 33.460487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297911, 32.144054, 33.165859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053955, 32.356884, 32.930935>,  <27.907581, 32.484581, 32.789982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053955, 32.356884, 32.930935>,  <28.297911, 32.144054, 33.165859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053955, 32.356884, 32.930935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790491, 0.355900, -0.498457,
		-0.056193, -0.768265, -0.637661,
		-0.609891, 0.532075, -0.587307,
		27.870987, 32.516506, 32.754742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377764, 31.990585, 32.402355>,  <28.297911, 32.144054, 33.165859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377764, 31.990585, 32.402355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259579, 32.364117, 32.483017>,  <28.188667, 32.588238, 32.531414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259579, 32.364117, 32.483017>,  <28.377764, 31.990585, 32.402355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259579, 32.364117, 32.483017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778621, 0.357686, -0.515568,
		-0.553581, 0.004680, -0.832782,
		-0.295462, 0.933830, 0.201652,
		28.170940, 32.644264, 32.543514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960312, 32.100578, 32.753368>,  <28.377764, 31.990585, 32.402355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960312, 32.100578, 32.753368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.014191, 32.355785, 32.450111>,  <29.046518, 32.508911, 32.268158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.014191, 32.355785, 32.450111>,  <28.960312, 32.100578, 32.753368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014191, 32.355785, 32.450111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990007, -0.054414, 0.130100,
		0.041752, -0.768095, -0.638974,
		0.134698, 0.638020, -0.758147,
		29.054600, 32.547192, 32.222668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411806, 31.735790, 32.360165>,  <28.960312, 32.100578, 32.753368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411806, 31.735790, 32.360165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480240, 32.127972, 32.321297>,  <29.521301, 32.363281, 32.297977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.480240, 32.127972, 32.321297>,  <29.411806, 31.735790, 32.360165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480240, 32.127972, 32.321297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984257, -0.165639, 0.061661,
		0.044361, -0.106191, -0.993356,
		0.171086, 0.980453, -0.097171,
		29.531567, 32.422108, 32.292145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014137, 31.812662, 32.129471>,  <29.411806, 31.735790, 32.360165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014137, 31.812662, 32.129471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988733, 32.173416, 32.300385>,  <29.973492, 32.389870, 32.402931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988733, 32.173416, 32.300385>,  <30.014137, 31.812662, 32.129471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988733, 32.173416, 32.300385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942189, -0.086964, 0.323601,
		0.329009, 0.423134, -0.844222,
		-0.063510, 0.901884, 0.427284,
		29.969681, 32.443981, 32.428570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549583, 32.364147, 31.904375>,  <30.014137, 31.812662, 32.129471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549583, 32.364147, 31.904375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398537, 32.342117, 32.274105>,  <30.307909, 32.328899, 32.495941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398537, 32.342117, 32.274105>,  <30.549583, 32.364147, 31.904375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398537, 32.342117, 32.274105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924969, -0.068647, 0.373791,
		0.042867, 0.996120, 0.076862,
		-0.377616, -0.055072, 0.924323,
		30.285252, 32.325596, 32.551403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697233, 32.951031, 32.425835>,  <30.549583, 32.364147, 31.904375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697233, 32.951031, 32.425835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653620, 32.582161, 32.574272>,  <30.627453, 32.360840, 32.663334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653620, 32.582161, 32.574272>,  <30.697233, 32.951031, 32.425835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653620, 32.582161, 32.574272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926458, 0.041025, 0.374155,
		-0.360260, 0.384596, 0.849882,
		-0.109032, -0.922173, 0.371091,
		30.620911, 32.305508, 32.685600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731821, 32.899208, 33.175663>,  <30.697233, 32.951031, 32.425835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731821, 32.899208, 33.175663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882383, 32.602692, 32.953381>,  <30.972721, 32.424782, 32.820011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882383, 32.602692, 32.953381>,  <30.731821, 32.899208, 33.175663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882383, 32.602692, 32.953381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922628, 0.354391, 0.152198,
		0.084114, -0.569996, 0.817330,
		0.376407, -0.741290, -0.555704,
		30.995306, 32.380306, 32.786671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227751, 32.563217, 33.587112>,  <30.731821, 32.899208, 33.175663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227751, 32.563217, 33.587112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287703, 32.541054, 33.192253>,  <31.323673, 32.527756, 32.955338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287703, 32.541054, 33.192253>,  <31.227751, 32.563217, 33.587112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287703, 32.541054, 33.192253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957661, 0.256359, 0.131014,
		0.245806, -0.964992, 0.091482,
		0.149879, -0.055405, -0.987151,
		31.332666, 32.524433, 32.896107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885920, 32.096584, 33.372097>,  <31.227751, 32.563217, 33.587112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885920, 32.096584, 33.372097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776480, 32.395138, 33.129425>,  <31.710815, 32.574268, 32.983822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776480, 32.395138, 33.129425>,  <31.885920, 32.096584, 33.372097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776480, 32.395138, 33.129425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907385, 0.409514, 0.094607,
		0.319055, -0.524604, -0.789300,
		-0.273598, 0.746384, -0.606676,
		31.694401, 32.619053, 32.947422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328465, 32.199718, 32.713055>,  <31.885920, 32.096584, 33.372097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328465, 32.199718, 32.713055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183929, 32.547073, 32.848900>,  <32.097210, 32.755486, 32.930408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183929, 32.547073, 32.848900>,  <32.328465, 32.199718, 32.713055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183929, 32.547073, 32.848900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911413, 0.405835, -0.067997,
		-0.196876, 0.284961, -0.938103,
		-0.361339, 0.868386, 0.339617,
		32.075527, 32.807590, 32.950787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659058, 32.758442, 32.325508>,  <32.328465, 32.199718, 32.713055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659058, 32.758442, 32.325508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468456, 32.943317, 32.624657>,  <32.354095, 33.054245, 32.804146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468456, 32.943317, 32.624657>,  <32.659058, 32.758442, 32.325508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468456, 32.943317, 32.624657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834424, 0.505683, 0.219136,
		-0.276905, 0.728466, -0.626627,
		-0.476507, 0.462193, 0.747876,
		32.325504, 33.081974, 32.849018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054653, 31.992067, 32.411800>,  <32.659058, 32.758442, 32.325508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054653, 31.992067, 32.411800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059925, 31.593475, 32.444912>,  <33.063087, 31.354321, 32.464779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059925, 31.593475, 32.444912>,  <33.054653, 31.992067, 32.411800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059925, 31.593475, 32.444912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748193, -0.045093, -0.661946,
		0.663350, 0.070661, 0.744966,
		0.013181, -0.996481, 0.082780,
		33.063881, 31.294531, 32.469746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691376, 31.807043, 32.427689>,  <33.054653, 31.992067, 32.411800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691376, 31.807043, 32.427689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505352, 31.490925, 32.268116>,  <33.393738, 31.301254, 32.172371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505352, 31.490925, 32.268116>,  <33.691376, 31.807043, 32.427689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505352, 31.490925, 32.268116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731922, -0.089749, -0.675452,
		0.498004, -0.606116, 0.620174,
		-0.465062, -0.790297, -0.398934,
		33.365833, 31.253836, 32.148438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983181, 31.044571, 32.393013>,  <33.691376, 31.807043, 32.427689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983181, 31.044571, 32.393013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763611, 31.178188, 32.086521>,  <33.631870, 31.258358, 31.902628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763611, 31.178188, 32.086521>,  <33.983181, 31.044571, 32.393013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763611, 31.178188, 32.086521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806317, -0.030004, -0.590723,
		-0.220316, -0.942080, -0.252874,
		-0.548921, 0.334042, -0.766226,
		33.598934, 31.278400, 31.856653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987839, 30.591110, 31.853691>,  <33.983181, 31.044571, 32.393013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987839, 30.591110, 31.853691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941334, 30.972908, 31.743835>,  <33.913433, 31.201986, 31.677923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941334, 30.972908, 31.743835>,  <33.987839, 30.591110, 31.853691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941334, 30.972908, 31.743835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846610, -0.049355, -0.529920,
		-0.519360, -0.294120, -0.802346,
		-0.116260, 0.954493, -0.274638,
		33.906456, 31.259256, 31.661444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892757, 30.439871, 31.185696>,  <33.987839, 30.591110, 31.853691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892757, 30.439871, 31.185696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035976, 30.806904, 31.254793>,  <34.121910, 31.027124, 31.296251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035976, 30.806904, 31.254793>,  <33.892757, 30.439871, 31.185696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035976, 30.806904, 31.254793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815016, -0.216872, -0.537323,
		-0.455575, 0.333179, -0.825496,
		0.358052, 0.917583, 0.172745,
		34.143391, 31.082178, 31.306616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062923, 30.691481, 30.487946>,  <33.892757, 30.439871, 31.185696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062923, 30.691481, 30.487946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280563, 30.890862, 30.757908>,  <34.411148, 31.010490, 30.919886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280563, 30.890862, 30.757908>,  <34.062923, 30.691481, 30.487946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280563, 30.890862, 30.757908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802178, -0.073311, -0.592567,
		-0.245888, 0.863813, -0.439735,
		0.544105, 0.498451, 0.674905,
		34.443794, 31.040398, 30.960379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346256, 31.211393, 30.059565>,  <34.062923, 30.691481, 30.487946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346256, 31.211393, 30.059565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577160, 31.240437, 30.384897>,  <34.715702, 31.257862, 30.580097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577160, 31.240437, 30.384897>,  <34.346256, 31.211393, 30.059565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577160, 31.240437, 30.384897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800186, -0.248794, -0.545715,
		0.162728, 0.965831, -0.201718,
		0.577254, 0.072609, 0.813330,
		34.750336, 31.262218, 30.628897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902485, 31.688854, 29.938976>,  <34.346256, 31.211393, 30.059565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902485, 31.688854, 29.938976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032982, 31.447330, 30.229898>,  <35.111282, 31.302416, 30.404451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032982, 31.447330, 30.229898>,  <34.902485, 31.688854, 29.938976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032982, 31.447330, 30.229898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895637, -0.048625, -0.442121,
		0.302323, 0.795643, 0.524932,
		0.326245, -0.603812, 0.727307,
		35.130856, 31.266188, 30.448092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505886, 31.991596, 30.047005>,  <34.902485, 31.688854, 29.938976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505886, 31.991596, 30.047005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554733, 31.629929, 30.210745>,  <35.584042, 31.412928, 30.308989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554733, 31.629929, 30.210745>,  <35.505886, 31.991596, 30.047005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554733, 31.629929, 30.210745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856397, -0.112480, -0.503917,
		0.501669, 0.412104, 0.760591,
		0.122115, -0.904167, 0.409352,
		35.591366, 31.358679, 30.333551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190639, 32.000118, 30.112465>,  <35.505886, 31.991596, 30.047005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190639, 32.000118, 30.112465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066395, 31.622335, 30.155407>,  <35.991848, 31.395666, 30.181173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066395, 31.622335, 30.155407>,  <36.190639, 32.000118, 30.112465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066395, 31.622335, 30.155407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873055, -0.328134, -0.360699,
		0.375891, -0.018309, 0.926483,
		-0.310614, -0.944454, 0.107357,
		35.973209, 31.338999, 30.187614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739235, 31.630217, 30.509409>,  <36.190639, 32.000118, 30.112465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739235, 31.630217, 30.509409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519825, 31.377712, 30.290091>,  <36.388180, 31.226210, 30.158499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519825, 31.377712, 30.290091>,  <36.739235, 31.630217, 30.509409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519825, 31.377712, 30.290091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831482, -0.480904, -0.278154,
		-0.088090, -0.608473, 0.788670,
		-0.548523, -0.631263, -0.548297,
		36.355267, 31.188334, 30.125601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077629, 30.891928, 30.522646>,  <36.739235, 31.630217, 30.509409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077629, 30.891928, 30.522646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860126, 30.906662, 30.187273>,  <36.729626, 30.915503, 29.986050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860126, 30.906662, 30.187273>,  <37.077629, 30.891928, 30.522646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860126, 30.906662, 30.187273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764757, -0.389713, -0.513099,
		-0.345648, -0.920199, 0.183740,
		-0.543760, 0.036836, -0.838432,
		36.696999, 30.917713, 29.935743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265045, 30.211628, 30.108450>,  <37.077629, 30.891928, 30.522646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265045, 30.211628, 30.108450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120972, 30.474857, 29.843962>,  <37.034527, 30.632795, 29.685268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120972, 30.474857, 29.843962>,  <37.265045, 30.211628, 30.108450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120972, 30.474857, 29.843962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710009, -0.266378, -0.651866,
		-0.605110, -0.704261, -0.371293,
		-0.360180, 0.658072, -0.661220,
		37.012917, 30.672279, 29.645596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122791, 29.749743, 29.456219>,  <37.265045, 30.211628, 30.108450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122791, 29.749743, 29.456219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103596, 30.125956, 29.321699>,  <37.092079, 30.351683, 29.240988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103596, 30.125956, 29.321699>,  <37.122791, 29.749743, 29.456219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103596, 30.125956, 29.321699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513712, -0.265508, -0.815847,
		-0.856620, -0.211911, -0.470421,
		-0.047987, 0.940531, -0.336300,
		37.089199, 30.408115, 29.220810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858669, 29.744772, 28.754663>,  <37.122791, 29.749743, 29.456219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858669, 29.744772, 28.754663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064259, 30.087685, 28.766684>,  <37.187611, 30.293432, 28.773895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064259, 30.087685, 28.766684>,  <36.858669, 29.744772, 28.754663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064259, 30.087685, 28.766684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470235, -0.252278, -0.845715,
		-0.717434, 0.448805, -0.532787,
		0.513972, 0.857280, 0.030051,
		37.218449, 30.344870, 28.775700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907524, 29.979799, 28.058197>,  <36.858669, 29.744772, 28.754663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907524, 29.979799, 28.058197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183781, 30.195040, 28.251467>,  <37.349537, 30.324184, 28.367428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183781, 30.195040, 28.251467>,  <36.907524, 29.979799, 28.058197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183781, 30.195040, 28.251467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589356, -0.031575, -0.807256,
		-0.419128, 0.842290, -0.338940,
		0.690646, 0.538100, 0.483174,
		37.390976, 30.356470, 28.396420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877026, 30.737324, 27.824078>,  <36.907524, 29.979799, 28.058197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877026, 30.737324, 27.824078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228279, 30.599915, 27.957268>,  <37.439030, 30.517469, 28.037182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228279, 30.599915, 27.957268>,  <36.877026, 30.737324, 27.824078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228279, 30.599915, 27.957268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440204, 0.307620, -0.843558,
		0.187352, 0.887334, 0.421352,
		0.878134, -0.343523, 0.332975,
		37.491718, 30.496859, 28.057159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288231, 31.007044, 27.420397>,  <36.877026, 30.737324, 27.824078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288231, 31.007044, 27.420397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559456, 30.769150, 27.593147>,  <37.722191, 30.626413, 27.696798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559456, 30.769150, 27.593147>,  <37.288231, 31.007044, 27.420397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559456, 30.769150, 27.593147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628575, 0.164681, -0.760114,
		0.380944, 0.786874, 0.485500,
		0.678067, -0.594734, 0.431875,
		37.762875, 30.590729, 27.722710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845005, 31.327637, 27.286600>,  <37.288231, 31.007044, 27.420397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845005, 31.327637, 27.286600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983356, 30.962280, 27.372465>,  <38.066368, 30.743067, 27.423985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983356, 30.962280, 27.372465>,  <37.845005, 31.327637, 27.286600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983356, 30.962280, 27.372465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764900, 0.141990, -0.628305,
		0.543409, 0.381515, 0.747766,
		0.345883, -0.913392, 0.214662,
		38.087120, 30.688263, 27.436863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509537, 31.470591, 27.365065>,  <37.845005, 31.327637, 27.286600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509537, 31.470591, 27.365065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481171, 31.079580, 27.285656>,  <38.464153, 30.844975, 27.238010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481171, 31.079580, 27.285656>,  <38.509537, 31.470591, 27.365065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481171, 31.079580, 27.285656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795490, 0.064654, -0.602508,
		0.601804, -0.200649, 0.773028,
		-0.070913, -0.977527, -0.198523,
		38.459896, 30.786322, 27.226099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210842, 31.230640, 27.342993>,  <38.509537, 31.470591, 27.365065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210842, 31.230640, 27.342993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040020, 30.922293, 27.153936>,  <38.937527, 30.737284, 27.040503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.040020, 30.922293, 27.153936>,  <39.210842, 31.230640, 27.342993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040020, 30.922293, 27.153936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670308, 0.080938, -0.737656,
		0.606889, -0.631833, 0.482153,
		-0.427051, -0.770867, -0.472643,
		38.911903, 30.691032, 27.012144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754314, 30.914404, 26.927942>,  <39.210842, 31.230640, 27.342993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754314, 30.914404, 26.927942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434319, 30.749172, 26.753868>,  <39.242321, 30.650034, 26.649424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434319, 30.749172, 26.753868>,  <39.754314, 30.914404, 26.927942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434319, 30.749172, 26.753868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439708, 0.089895, -0.893631,
		0.408262, -0.906247, 0.109720,
		-0.799987, -0.413080, -0.435185,
		39.194321, 30.625248, 26.623312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016533, 30.438774, 26.467400>,  <39.754314, 30.914404, 26.927942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016533, 30.438774, 26.467400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649010, 30.527784, 26.337000>,  <39.428497, 30.581190, 26.258760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649010, 30.527784, 26.337000>,  <40.016533, 30.438774, 26.467400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649010, 30.527784, 26.337000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337478, 0.014561, -0.941221,
		-0.204699, -0.974818, -0.088476,
		-0.918807, 0.222526, -0.325999,
		39.373367, 30.594542, 26.239201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064083, 30.314459, 25.820288>,  <40.016533, 30.438774, 26.467400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064083, 30.314459, 25.820288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727402, 30.530294, 25.812565>,  <39.525391, 30.659796, 25.807932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727402, 30.530294, 25.812565>,  <40.064083, 30.314459, 25.820288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727402, 30.530294, 25.812565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179789, 0.246380, -0.952351,
		-0.509123, -0.805071, -0.304392,
		-0.841706, 0.539591, -0.019305,
		39.474892, 30.692171, 25.806774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937519, 30.261454, 25.097151>,  <40.064083, 30.314459, 25.820288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937519, 30.261454, 25.097151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727688, 30.565580, 25.250380>,  <39.601791, 30.748056, 25.342318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727688, 30.565580, 25.250380>,  <39.937519, 30.261454, 25.097151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727688, 30.565580, 25.250380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076469, 0.490210, -0.868244,
		-0.847924, -0.426164, -0.315291,
		-0.524573, 0.760315, 0.383072,
		39.570316, 30.793674, 25.365301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363739, 30.290028, 24.719458>,  <39.937519, 30.261454, 25.097151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363739, 30.290028, 24.719458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415443, 30.657709, 24.868242>,  <39.446468, 30.878319, 24.957514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415443, 30.657709, 24.868242>,  <39.363739, 30.290028, 24.719458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415443, 30.657709, 24.868242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009965, 0.376294, -0.926447,
		-0.991560, 0.116050, 0.057802,
		0.129265, 0.919204, 0.371962,
		39.454224, 30.933470, 24.979832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039066, 30.729008, 24.295918>,  <39.363739, 30.290028, 24.719458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039066, 30.729008, 24.295918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253052, 31.005245, 24.490604>,  <39.381443, 31.170988, 24.607416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253052, 31.005245, 24.490604>,  <39.039066, 30.729008, 24.295918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253052, 31.005245, 24.490604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088859, 0.526898, -0.845271,
		-0.840187, 0.495442, 0.220508,
		0.534967, 0.690591, 0.486717,
		39.413544, 31.212423, 24.636620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736034, 31.482328, 24.141851>,  <39.039066, 30.729008, 24.295918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736034, 31.482328, 24.141851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121784, 31.449493, 24.242451>,  <39.353233, 31.429792, 24.302811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121784, 31.449493, 24.242451>,  <38.736034, 31.482328, 24.141851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121784, 31.449493, 24.242451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254949, 0.542233, -0.800615,
		-0.070650, 0.836209, 0.543841,
		0.964370, -0.082088, 0.251499,
		39.411095, 31.424868, 24.317900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028996, 32.123192, 23.855019>,  <38.736034, 31.482328, 24.141851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028996, 32.123192, 23.855019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359718, 31.926531, 23.964321>,  <39.558151, 31.808535, 24.029903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359718, 31.926531, 23.964321>,  <39.028996, 32.123192, 23.855019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359718, 31.926531, 23.964321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549910, 0.604368, -0.576488,
		0.118284, 0.626911, 0.770060,
		0.826806, -0.491653, 0.273258,
		39.607761, 31.779036, 24.046299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461292, 32.630768, 24.047039>,  <39.028996, 32.123192, 23.855019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461292, 32.630768, 24.047039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670422, 32.309097, 23.933928>,  <39.795898, 32.116096, 23.866060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670422, 32.309097, 23.933928>,  <39.461292, 32.630768, 24.047039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670422, 32.309097, 23.933928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473659, 0.549860, -0.687969,
		0.708734, 0.225745, 0.668383,
		0.522822, -0.804172, -0.282778,
		39.827267, 32.067844, 23.849094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172749, 32.899303, 24.003250>,  <39.461292, 32.630768, 24.047039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172749, 32.899303, 24.003250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152420, 32.569782, 23.777416>,  <40.140221, 32.372070, 23.641916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152420, 32.569782, 23.777416>,  <40.172749, 32.899303, 24.003250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152420, 32.569782, 23.777416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612326, 0.420891, -0.669259,
		0.788970, -0.379726, 0.483047,
		-0.050825, -0.823807, -0.564587,
		40.137173, 32.322639, 23.608040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851547, 32.760483, 23.755257>,  <40.172749, 32.899303, 24.003250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851547, 32.760483, 23.755257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615170, 32.553993, 23.507288>,  <40.473343, 32.430099, 23.358507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615170, 32.553993, 23.507288>,  <40.851547, 32.760483, 23.755257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615170, 32.553993, 23.507288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490132, 0.380608, -0.784161,
		0.640750, -0.767235, 0.028101,
		-0.590940, -0.516225, -0.619920,
		40.437889, 32.399124, 23.321312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258068, 32.566956, 23.199858>,  <40.851547, 32.760483, 23.755257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258068, 32.566956, 23.199858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899178, 32.500259, 23.036308>,  <40.683842, 32.460239, 22.938179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899178, 32.500259, 23.036308>,  <41.258068, 32.566956, 23.199858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899178, 32.500259, 23.036308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321176, 0.389016, -0.863431,
		0.303030, -0.906015, -0.295482,
		-0.897229, -0.166744, -0.408873,
		40.630009, 32.450237, 22.913647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301498, 32.141453, 22.517599>,  <41.258068, 32.566956, 23.199858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301498, 32.141453, 22.517599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977539, 32.376083, 22.517582>,  <40.783165, 32.516861, 22.517572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.977539, 32.376083, 22.517582>,  <41.301498, 32.141453, 22.517599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977539, 32.376083, 22.517582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173719, 0.239792, -0.955155,
		-0.560259, -0.773584, -0.296105,
		-0.809896, 0.586573, -0.000041,
		40.734570, 32.552055, 22.517570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015087, 32.087376, 21.903757>,  <41.301498, 32.141453, 22.517599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015087, 32.087376, 21.903757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851219, 32.431538, 22.025003>,  <40.752899, 32.638035, 22.097752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.851219, 32.431538, 22.025003>,  <41.015087, 32.087376, 21.903757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851219, 32.431538, 22.025003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121791, 0.380892, -0.916563,
		-0.904066, -0.338574, -0.260830,
		-0.409672, 0.860400, 0.303117,
		40.728317, 32.689659, 22.115938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468029, 32.126110, 21.408930>,  <41.015087, 32.087376, 21.903757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468029, 32.126110, 21.408930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550861, 32.490810, 21.550819>,  <40.600563, 32.709629, 21.635952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550861, 32.490810, 21.550819>,  <40.468029, 32.126110, 21.408930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550861, 32.490810, 21.550819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165756, 0.324641, -0.931200,
		-0.964179, 0.251634, -0.083901,
		0.207084, 0.911750, 0.354722,
		40.612988, 32.764336, 21.657236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333202, 32.546329, 20.851587>,  <40.468029, 32.126110, 21.408930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333202, 32.546329, 20.851587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535599, 32.791157, 21.094683>,  <40.657036, 32.938053, 21.240540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535599, 32.791157, 21.094683>,  <40.333202, 32.546329, 20.851587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535599, 32.791157, 21.094683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305797, 0.531530, -0.789914,
		-0.806514, 0.585532, 0.081779,
		0.505988, 0.612068, 0.607740,
		40.687397, 32.974777, 21.277004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120693, 33.154518, 20.585136>,  <40.333202, 32.546329, 20.851587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120693, 33.154518, 20.585136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455555, 33.226376, 20.791782>,  <40.656471, 33.269489, 20.915770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455555, 33.226376, 20.791782>,  <40.120693, 33.154518, 20.585136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455555, 33.226376, 20.791782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342652, 0.563952, -0.751364,
		-0.426327, 0.806030, 0.410561,
		0.837159, 0.179647, 0.516616,
		40.706703, 33.280270, 20.946768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290638, 33.944862, 20.613571>,  <40.120693, 33.154518, 20.585136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290638, 33.944862, 20.613571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621799, 33.730579, 20.680017>,  <40.820496, 33.602009, 20.719885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621799, 33.730579, 20.680017>,  <40.290638, 33.944862, 20.613571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621799, 33.730579, 20.680017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437411, 0.431313, -0.789076,
		0.351065, 0.725939, 0.591410,
		0.827904, -0.535706, 0.166115,
		40.870171, 33.569866, 20.729853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812740, 34.415821, 20.525246>,  <40.290638, 33.944862, 20.613571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812740, 34.415821, 20.525246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022354, 34.075893, 20.502617>,  <41.148121, 33.871937, 20.489040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022354, 34.075893, 20.502617>,  <40.812740, 34.415821, 20.525246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022354, 34.075893, 20.502617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631803, 0.432422, -0.643301,
		0.571151, 0.301369, 0.763520,
		0.524034, -0.849817, -0.056572,
		41.179565, 33.820950, 20.485645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488514, 34.611969, 20.528730>,  <40.812740, 34.415821, 20.525246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488514, 34.611969, 20.528730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499104, 34.237595, 20.388264>,  <41.505459, 34.012970, 20.303984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499104, 34.237595, 20.388264>,  <41.488514, 34.611969, 20.528730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499104, 34.237595, 20.388264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568836, 0.302975, -0.764612,
		0.822025, -0.179510, 0.540418,
		0.026477, -0.935939, -0.351165,
		41.507046, 33.956814, 20.282913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214806, 34.383068, 20.454409>,  <41.488514, 34.611969, 20.528730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214806, 34.383068, 20.454409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011227, 34.135052, 20.215572>,  <41.889080, 33.986240, 20.072269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011227, 34.135052, 20.215572>,  <42.214806, 34.383068, 20.454409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011227, 34.135052, 20.215572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534538, 0.316047, -0.783826,
		0.674713, -0.718097, 0.170583,
		-0.508951, -0.620040, -0.597092,
		41.858540, 33.949039, 20.036446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741650, 33.894459, 20.005470>,  <42.214806, 34.383068, 20.454409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741650, 33.894459, 20.005470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390575, 33.906307, 19.814140>,  <42.179932, 33.913414, 19.699343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390575, 33.906307, 19.814140>,  <42.741650, 33.894459, 20.005470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390575, 33.906307, 19.814140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470784, 0.239942, -0.848994,
		0.089624, -0.970335, -0.224537,
		-0.877685, 0.029618, -0.478323,
		42.127270, 33.915192, 19.670643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768047, 33.484013, 19.334751>,  <42.741650, 33.894459, 20.005470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.768047, 33.484013, 19.334751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447433, 33.714195, 19.269756>,  <42.255066, 33.852303, 19.230759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447433, 33.714195, 19.269756>,  <42.768047, 33.484013, 19.334751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447433, 33.714195, 19.269756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300929, 0.153387, -0.941230,
		-0.516711, -0.803322, -0.296115,
		-0.801531, 0.575454, -0.162486,
		42.206974, 33.886829, 19.221010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635658, 33.466709, 18.589512>,  <42.768047, 33.484013, 19.334751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635658, 33.466709, 18.589512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412361, 33.782139, 18.692667>,  <42.278381, 33.971397, 18.754560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412361, 33.782139, 18.692667>,  <42.635658, 33.466709, 18.589512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412361, 33.782139, 18.692667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221685, 0.441300, -0.869546,
		-0.799511, -0.428250, -0.421170,
		-0.558246, 0.788579, 0.257887,
		42.244888, 34.018711, 18.770033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306072, 33.742035, 17.924995>,  <42.635658, 33.466709, 18.589512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306072, 33.742035, 17.924995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327641, 34.029743, 18.202047>,  <42.340580, 34.202370, 18.368279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327641, 34.029743, 18.202047>,  <42.306072, 33.742035, 17.924995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327641, 34.029743, 18.202047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375766, 0.628037, -0.681446,
		-0.925145, 0.297010, -0.236415,
		0.053919, 0.719273, 0.692631,
		42.343815, 34.245525, 18.409838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937057, 34.358513, 17.599108>,  <42.306072, 33.742035, 17.924995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937057, 34.358513, 17.599108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155178, 34.499462, 17.903339>,  <42.286049, 34.584030, 18.085878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155178, 34.499462, 17.903339>,  <41.937057, 34.358513, 17.599108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155178, 34.499462, 17.903339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305104, 0.761677, -0.571629,
		-0.780742, 0.543766, 0.307833,
		0.545302, 0.352374, 0.760578,
		42.318768, 34.605175, 18.131514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822178, 35.151108, 17.663004>,  <41.937057, 34.358513, 17.599108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822178, 35.151108, 17.663004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175037, 35.042931, 17.817236>,  <42.386753, 34.978024, 17.909775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175037, 35.042931, 17.817236>,  <41.822178, 35.151108, 17.663004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175037, 35.042931, 17.817236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462253, 0.653949, -0.598893,
		-0.090186, 0.706549, 0.701894,
		0.882150, -0.270441, 0.385581,
		42.439682, 34.961800, 17.932911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066742, 35.631184, 18.205406>,  <41.822178, 35.151108, 17.663004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066742, 35.631184, 18.205406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073444, 36.019375, 18.301655>,  <42.077465, 36.252289, 18.359404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073444, 36.019375, 18.301655>,  <42.066742, 35.631184, 18.205406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073444, 36.019375, 18.301655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282251, 0.226278, -0.932273,
		-0.959194, 0.083538, -0.270126,
		0.016756, 0.970474, 0.240623,
		42.078472, 36.310516, 18.373842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635296, 35.898540, 17.732527>,  <42.066742, 35.631184, 18.205406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635296, 35.898540, 17.732527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909302, 36.171860, 17.833607>,  <42.073708, 36.335850, 17.894255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909302, 36.171860, 17.833607>,  <41.635296, 35.898540, 17.732527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909302, 36.171860, 17.833607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348731, -0.003001, -0.937218,
		-0.639639, 0.730136, -0.240342,
		0.685018, 0.683296, 0.252702,
		42.114807, 36.376850, 17.909418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644299, 36.411613, 17.159367>,  <41.635296, 35.898540, 17.732527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644299, 36.411613, 17.159367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983013, 36.465527, 17.365194>,  <42.186241, 36.497875, 17.488691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983013, 36.465527, 17.365194>,  <41.644299, 36.411613, 17.159367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983013, 36.465527, 17.365194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506348, 0.092132, -0.857393,
		-0.162971, 0.986582, 0.009768,
		0.846789, 0.134784, 0.514569,
		42.237049, 36.505962, 17.519566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179588, 36.516926, 16.545452>,  <41.644299, 36.411613, 17.159367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179588, 36.516926, 16.545452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429607, 36.827412, 16.578449>,  <42.579617, 37.013702, 16.598248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429607, 36.827412, 16.578449>,  <42.179588, 36.516926, 16.545452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429607, 36.827412, 16.578449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033643, -0.132370, 0.990629,
		0.779865, -0.616410, -0.108852,
		0.625043, 0.776219, 0.082493,
		42.617119, 37.060276, 16.603197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792374, 36.311771, 16.772308>,  <42.179588, 36.516926, 16.545452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792374, 36.311771, 16.772308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.777046, 36.698669, 16.872688>,  <42.767849, 36.930809, 16.932917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.777046, 36.698669, 16.872688>,  <42.792374, 36.311771, 16.772308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777046, 36.698669, 16.872688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009846, -0.251488, 0.967810,
		0.999217, 0.034610, 0.019159,
		-0.038314, 0.967241, 0.250950,
		42.765553, 36.988842, 16.947973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301575, 36.547207, 17.323853>,  <42.792374, 36.311771, 16.772308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301575, 36.547207, 17.323853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951321, 36.740391, 17.325583>,  <42.741169, 36.856300, 17.326620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951321, 36.740391, 17.325583>,  <43.301575, 36.547207, 17.323853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951321, 36.740391, 17.325583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150838, -0.281959, 0.947495,
		0.458822, 0.829004, 0.319741,
		-0.875631, 0.482961, 0.004324,
		42.688633, 36.885281, 17.326880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311829, 36.813900, 17.989166>,  <43.301575, 36.547207, 17.323853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311829, 36.813900, 17.989166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938534, 36.785732, 17.848249>,  <42.714558, 36.768829, 17.763700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938534, 36.785732, 17.848249>,  <43.311829, 36.813900, 17.989166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938534, 36.785732, 17.848249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329384, -0.223784, 0.917293,
		-0.143435, 0.972091, 0.185647,
		-0.933238, -0.070423, -0.352290,
		42.658562, 36.764606, 17.742563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855820, 37.400089, 18.302170>,  <43.311829, 36.813900, 17.989166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855820, 37.400089, 18.302170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652893, 37.070679, 18.200630>,  <42.531139, 36.873032, 18.139706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.652893, 37.070679, 18.200630>,  <42.855820, 37.400089, 18.302170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652893, 37.070679, 18.200630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387919, -0.044807, 0.920603,
		-0.769514, 0.565507, -0.296730,
		-0.507312, -0.823525, -0.253851,
		42.500698, 36.823620, 18.124475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305271, 37.536720, 18.782629>,  <42.855820, 37.400089, 18.302170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305271, 37.536720, 18.782629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246529, 37.165173, 18.646612>,  <42.211285, 36.942242, 18.565002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246529, 37.165173, 18.646612>,  <42.305271, 37.536720, 18.782629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246529, 37.165173, 18.646612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685387, -0.152315, 0.712070,
		-0.713216, 0.337633, -0.614269,
		-0.146856, -0.928872, -0.340043,
		42.202473, 36.886513, 18.544600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560059, 37.434940, 18.885567>,  <42.305271, 37.536720, 18.782629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560059, 37.434940, 18.885567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736393, 37.075970, 18.892405>,  <41.842194, 36.860588, 18.896507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736393, 37.075970, 18.892405>,  <41.560059, 37.434940, 18.885567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736393, 37.075970, 18.892405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601100, -0.281025, 0.748134,
		-0.666589, -0.340080, -0.663328,
		0.440837, -0.897424, 0.017094,
		41.868645, 36.806744, 18.897533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.040283, 36.903984, 19.084196>,  <41.560059, 37.434940, 18.885567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.040283, 36.903984, 19.084196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401344, 36.747639, 19.156244>,  <41.617981, 36.653831, 19.199472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401344, 36.747639, 19.156244>,  <41.040283, 36.903984, 19.084196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401344, 36.747639, 19.156244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300948, -0.274088, 0.913404,
		-0.307648, -0.878693, -0.365036,
		0.902653, -0.390864, 0.180118,
		41.672142, 36.630379, 19.210279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908897, 36.296112, 19.357470>,  <41.040283, 36.903984, 19.084196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908897, 36.296112, 19.357470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292538, 36.322159, 19.467653>,  <41.522724, 36.337788, 19.533764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292538, 36.322159, 19.467653>,  <40.908897, 36.296112, 19.357470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292538, 36.322159, 19.467653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230431, -0.385535, 0.893457,
		0.164381, -0.920392, -0.354763,
		0.959104, 0.065119, 0.275461,
		41.580269, 36.341694, 19.550291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110767, 35.693054, 19.741455>,  <40.908897, 36.296112, 19.357470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110767, 35.693054, 19.741455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390862, 35.958473, 19.846817>,  <41.558918, 36.117725, 19.910034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390862, 35.958473, 19.846817>,  <41.110767, 35.693054, 19.741455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390862, 35.958473, 19.846817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144734, -0.229351, 0.962523,
		0.699089, -0.712114, -0.064562,
		0.700233, 0.663545, 0.263404,
		41.600933, 36.157536, 19.925838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570221, 35.353893, 20.198418>,  <41.110767, 35.693054, 19.741455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570221, 35.353893, 20.198418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604172, 35.742432, 20.287218>,  <41.624542, 35.975555, 20.340498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604172, 35.742432, 20.287218>,  <41.570221, 35.353893, 20.198418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604172, 35.742432, 20.287218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282007, -0.190279, 0.940354,
		0.955651, -0.142417, 0.257777,
		0.084873, 0.971345, 0.222003,
		41.629635, 36.033836, 20.353819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938660, 35.305943, 20.764643>,  <41.570221, 35.353893, 20.198418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938660, 35.305943, 20.764643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778080, 35.671307, 20.791553>,  <41.681732, 35.890526, 20.807699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778080, 35.671307, 20.791553>,  <41.938660, 35.305943, 20.764643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778080, 35.671307, 20.791553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230883, -0.172011, 0.957656,
		0.886302, 0.368918, 0.279944,
		-0.401450, 0.913407, 0.067277,
		41.657646, 35.945328, 20.811737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276226, 35.692513, 21.377230>,  <41.938660, 35.305943, 20.764643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276226, 35.692513, 21.377230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909920, 35.842857, 21.320528>,  <41.690136, 35.933064, 21.286507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909920, 35.842857, 21.320528>,  <42.276226, 35.692513, 21.377230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909920, 35.842857, 21.320528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279148, -0.341680, 0.897402,
		0.288864, 0.861384, 0.417821,
		-0.915770, 0.375861, -0.141755,
		41.635189, 35.955616, 21.278002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052055, 35.967716, 22.022486>,  <42.276226, 35.692513, 21.377230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052055, 35.967716, 22.022486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694717, 35.998089, 21.845318>,  <41.480316, 36.016312, 21.739017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694717, 35.998089, 21.845318>,  <42.052055, 35.967716, 22.022486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694717, 35.998089, 21.845318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435409, -0.390097, 0.811322,
		-0.111177, 0.917637, 0.381551,
		-0.893341, 0.075930, -0.442918,
		41.426716, 36.020866, 21.712442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632446, 36.442772, 22.399254>,  <42.052055, 35.967716, 22.022486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632446, 36.442772, 22.399254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387741, 36.206745, 22.188517>,  <41.240917, 36.065128, 22.062075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387741, 36.206745, 22.188517>,  <41.632446, 36.442772, 22.399254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387741, 36.206745, 22.188517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514564, -0.209004, 0.831590,
		-0.600804, 0.779834, -0.175765,
		-0.611766, -0.590065, -0.526845,
		41.204212, 36.029724, 22.030462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943466, 36.426041, 22.764994>,  <41.632446, 36.442772, 22.399254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943466, 36.426041, 22.764994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952274, 36.091412, 22.546026>,  <40.957558, 35.890636, 22.414646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952274, 36.091412, 22.546026>,  <40.943466, 36.426041, 22.764994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952274, 36.091412, 22.546026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563108, -0.462814, 0.684626,
		-0.826090, 0.293179, -0.481272,
		0.022021, -0.836570, -0.547417,
		40.958881, 35.840439, 22.381802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211987, 36.191265, 22.806009>,  <40.943466, 36.426041, 22.764994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211987, 36.191265, 22.806009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431908, 35.869205, 22.717064>,  <40.563862, 35.675968, 22.663696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431908, 35.869205, 22.717064>,  <40.211987, 36.191265, 22.806009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431908, 35.869205, 22.717064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545237, -0.547605, 0.634701,
		-0.632800, -0.227719, -0.740074,
		0.549802, -0.805154, -0.222364,
		40.596848, 35.627659, 22.650354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727631, 35.721275, 22.782587>,  <40.211987, 36.191265, 22.806009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727631, 35.721275, 22.782587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054295, 35.494972, 22.828180>,  <40.250294, 35.359192, 22.855536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054295, 35.494972, 22.828180>,  <39.727631, 35.721275, 22.782587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054295, 35.494972, 22.828180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508634, -0.612241, 0.605353,
		-0.272699, -0.552340, -0.787754,
		0.816656, -0.565758, 0.113982,
		40.299290, 35.325245, 22.862375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482697, 35.101151, 22.639145>,  <39.727631, 35.721275, 22.782587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482697, 35.101151, 22.639145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822201, 35.056000, 22.845783>,  <40.025902, 35.028908, 22.969767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822201, 35.056000, 22.845783>,  <39.482697, 35.101151, 22.639145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822201, 35.056000, 22.845783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474684, -0.593120, 0.650295,
		0.232998, -0.797162, -0.556996,
		0.848756, -0.112879, 0.516596,
		40.076828, 35.022137, 23.000763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641521, 34.345905, 22.691122>,  <39.482697, 35.101151, 22.639145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641521, 34.345905, 22.691122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839363, 34.524193, 22.989571>,  <39.958069, 34.631165, 23.168640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.839363, 34.524193, 22.989571>,  <39.641521, 34.345905, 22.691122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839363, 34.524193, 22.989571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530212, -0.525483, 0.665390,
		0.688651, -0.724709, -0.023582,
		0.494606, 0.445718, 0.746124,
		39.987743, 34.657909, 23.213408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747044, 33.893814, 23.199272>,  <39.641521, 34.345905, 22.691122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747044, 33.893814, 23.199272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799572, 34.232513, 23.405485>,  <39.831089, 34.435734, 23.529213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799572, 34.232513, 23.405485>,  <39.747044, 33.893814, 23.199272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799572, 34.232513, 23.405485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468709, -0.405206, 0.784933,
		0.873537, -0.344714, 0.343665,
		0.131322, 0.846747, 0.515533,
		39.838970, 34.486538, 23.560144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921711, 33.700176, 23.906784>,  <39.747044, 33.893814, 23.199272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921711, 33.700176, 23.906784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815903, 34.083241, 23.952248>,  <39.752419, 34.313080, 23.979525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.815903, 34.083241, 23.952248>,  <39.921711, 33.700176, 23.906784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815903, 34.083241, 23.952248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625693, -0.260111, 0.735425,
		0.733850, 0.123423, 0.668006,
		-0.264524, 0.957658, 0.113657,
		39.736546, 34.370537, 23.986345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994385, 33.821404, 24.554800>,  <39.921711, 33.700176, 23.906784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994385, 33.821404, 24.554800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728554, 34.101685, 24.450993>,  <39.569054, 34.269852, 24.388708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728554, 34.101685, 24.450993>,  <39.994385, 33.821404, 24.554800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728554, 34.101685, 24.450993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582109, -0.267740, 0.767766,
		0.468493, 0.661309, 0.585820,
		-0.664578, 0.700704, -0.259519,
		39.529179, 34.311897, 24.373137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732529, 34.098412, 25.240955>,  <39.994385, 33.821404, 24.554800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732529, 34.098412, 25.240955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455540, 34.199532, 24.970675>,  <39.289345, 34.260204, 24.808506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455540, 34.199532, 24.970675>,  <39.732529, 34.098412, 25.240955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455540, 34.199532, 24.970675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715834, -0.124179, 0.687140,
		0.089802, 0.959516, 0.266954,
		-0.692472, 0.252801, -0.675702,
		39.247799, 34.275372, 24.767963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353981, 34.858173, 25.425230>,  <39.732529, 34.098412, 25.240955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353981, 34.858173, 25.425230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090862, 34.657505, 25.200506>,  <38.932991, 34.537106, 25.065672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090862, 34.657505, 25.200506>,  <39.353981, 34.858173, 25.425230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090862, 34.657505, 25.200506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714964, 0.181266, 0.675254,
		-0.236919, 0.845854, -0.477913,
		-0.657796, -0.501671, -0.561810,
		38.893524, 34.507004, 25.031963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846649, 35.326504, 25.372280>,  <39.353981, 34.858173, 25.425230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846649, 35.326504, 25.372280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684406, 34.971046, 25.286673>,  <38.587059, 34.757774, 25.235308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684406, 34.971046, 25.286673>,  <38.846649, 35.326504, 25.372280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684406, 34.971046, 25.286673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760507, 0.198203, 0.618340,
		-0.507063, 0.413564, -0.756209,
		-0.405606, -0.888640, -0.214017,
		38.562725, 34.704456, 25.222467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143448, 35.504333, 25.276554>,  <38.846649, 35.326504, 25.372280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143448, 35.504333, 25.276554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194973, 35.113701, 25.345484>,  <38.225887, 34.879322, 25.386843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.194973, 35.113701, 25.345484>,  <38.143448, 35.504333, 25.276554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194973, 35.113701, 25.345484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634390, 0.052415, 0.771234,
		-0.762205, -0.208664, -0.612782,
		0.128810, -0.976582, 0.172325,
		38.233616, 34.820724, 25.397181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477993, 35.299915, 25.404619>,  <38.143448, 35.504333, 25.276554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477993, 35.299915, 25.404619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674610, 35.004467, 25.589149>,  <37.792580, 34.827198, 25.699867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674610, 35.004467, 25.589149>,  <37.477993, 35.299915, 25.404619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674610, 35.004467, 25.589149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616145, 0.079395, 0.783621,
		-0.615428, -0.669425, -0.416075,
		0.491541, -0.738625, 0.461325,
		37.822071, 34.782879, 25.727547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937611, 34.988106, 25.736635>,  <37.477993, 35.299915, 25.404619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937611, 34.988106, 25.736635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270622, 34.848446, 25.908678>,  <37.470428, 34.764648, 26.011904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270622, 34.848446, 25.908678>,  <36.937611, 34.988106, 25.736635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270622, 34.848446, 25.908678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460196, -0.003649, 0.887810,
		-0.308413, -0.937058, -0.163717,
		0.832527, -0.349154, 0.430106,
		37.520382, 34.743698, 26.037710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745968, 34.253479, 26.063824>,  <36.937611, 34.988106, 25.736635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745968, 34.253479, 26.063824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068661, 34.404690, 26.245495>,  <37.262276, 34.495415, 26.354498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068661, 34.404690, 26.245495>,  <36.745968, 34.253479, 26.063824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068661, 34.404690, 26.245495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437423, -0.134728, 0.889106,
		0.397299, -0.915938, 0.056670,
		0.806731, 0.378029, 0.454179,
		37.310680, 34.518097, 26.381748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937561, 33.733185, 26.638058>,  <36.745968, 34.253479, 26.063824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937561, 33.733185, 26.638058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116940, 34.071793, 26.752815>,  <37.224567, 34.274956, 26.821671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116940, 34.071793, 26.752815>,  <36.937561, 33.733185, 26.638058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116940, 34.071793, 26.752815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466110, -0.052395, 0.883174,
		0.762654, -0.529776, 0.371074,
		0.448442, 0.846517, 0.286893,
		37.251472, 34.325748, 26.838882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245571, 33.531925, 27.265568>,  <36.937561, 33.733185, 26.638058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245571, 33.531925, 27.265568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240101, 33.931770, 27.275337>,  <37.236820, 34.171677, 27.281199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.240101, 33.931770, 27.275337>,  <37.245571, 33.531925, 27.265568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240101, 33.931770, 27.275337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261330, -0.027152, 0.964867,
		0.965152, 0.006813, 0.261599,
		-0.013677, 0.999608, 0.024425,
		37.235996, 34.231651, 27.282665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564816, 33.703442, 27.813057>,  <37.245571, 33.531925, 27.265568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564816, 33.703442, 27.813057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343910, 34.027534, 27.734545>,  <37.211365, 34.221989, 27.687437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343910, 34.027534, 27.734545>,  <37.564816, 33.703442, 27.813057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343910, 34.027534, 27.734545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322462, 0.009506, 0.946534,
		0.768779, 0.586031, 0.256020,
		-0.552265, 0.810233, -0.196281,
		37.178230, 34.270603, 27.675661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692627, 34.227818, 28.351089>,  <37.564816, 33.703442, 27.813057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692627, 34.227818, 28.351089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336189, 34.333992, 28.203850>,  <37.122326, 34.397697, 28.115505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336189, 34.333992, 28.203850>,  <37.692627, 34.227818, 28.351089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336189, 34.333992, 28.203850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379698, 0.008197, 0.925074,
		0.248569, 0.964092, 0.093483,
		-0.891091, 0.265441, -0.368101,
		37.068863, 34.413624, 28.093420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459667, 34.804951, 28.819202>,  <37.692627, 34.227818, 28.351089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459667, 34.804951, 28.819202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145149, 34.672775, 28.610373>,  <36.956440, 34.593472, 28.485075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145149, 34.672775, 28.610373>,  <37.459667, 34.804951, 28.819202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145149, 34.672775, 28.610373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562921, 0.034814, 0.825777,
		-0.254690, 0.943187, -0.213382,
		-0.786291, -0.330434, -0.522073,
		36.909264, 34.573647, 28.453751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858917, 35.244892, 29.063015>,  <37.459667, 34.804951, 28.819202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858917, 35.244892, 29.063015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671852, 34.933384, 28.895775>,  <36.559612, 34.746479, 28.795431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671852, 34.933384, 28.895775>,  <36.858917, 35.244892, 29.063015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671852, 34.933384, 28.895775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648480, -0.019137, 0.760991,
		-0.600640, 0.627014, -0.496069,
		-0.467659, -0.778772, -0.418101,
		36.531555, 34.699753, 28.770344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075191, 35.362610, 28.931307>,  <36.858917, 35.244892, 29.063015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075191, 35.362610, 28.931307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144230, 34.969116, 28.951237>,  <36.185654, 34.733021, 28.963194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144230, 34.969116, 28.951237>,  <36.075191, 35.362610, 28.931307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144230, 34.969116, 28.951237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609333, -0.066894, 0.790087,
		-0.773901, -0.166728, -0.610966,
		0.172600, -0.983731, 0.049824,
		36.196011, 34.673996, 28.966185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368401, 35.153557, 29.106695>,  <36.075191, 35.362610, 28.931307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368401, 35.153557, 29.106695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609890, 34.841194, 29.170820>,  <35.754784, 34.653778, 29.209295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609890, 34.841194, 29.170820>,  <35.368401, 35.153557, 29.106695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609890, 34.841194, 29.170820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499117, -0.213464, 0.839831,
		-0.621608, -0.587043, -0.518637,
		0.603728, -0.780906, 0.160312,
		35.791008, 34.606922, 29.218914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897629, 34.554253, 29.261583>,  <35.368401, 35.153557, 29.106695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897629, 34.554253, 29.261583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243786, 34.422615, 29.412739>,  <35.451481, 34.343632, 29.503431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243786, 34.422615, 29.412739>,  <34.897629, 34.554253, 29.261583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243786, 34.422615, 29.412739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484289, -0.355586, 0.799389,
		-0.128700, -0.874791, -0.467095,
		0.865390, -0.329090, 0.377888,
		35.503403, 34.323887, 29.526106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835499, 33.836765, 29.472752>,  <34.897629, 34.554253, 29.261583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835499, 33.836765, 29.472752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145771, 33.967072, 29.688969>,  <35.331936, 34.045258, 29.818699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145771, 33.967072, 29.688969>,  <34.835499, 33.836765, 29.472752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145771, 33.967072, 29.688969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526326, -0.138729, 0.838889,
		0.348273, -0.935216, 0.063850,
		0.775685, 0.325769, 0.540544,
		35.378475, 34.064800, 29.851131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811241, 33.373947, 30.041819>,  <34.835499, 33.836765, 29.472752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811241, 33.373947, 30.041819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998581, 33.716278, 30.129648>,  <35.110985, 33.921677, 30.182346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998581, 33.716278, 30.129648>,  <34.811241, 33.373947, 30.041819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998581, 33.716278, 30.129648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333473, -0.058914, 0.940917,
		0.818199, -0.513895, 0.257803,
		0.468344, 0.855828, 0.219574,
		35.139084, 33.973026, 30.195520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089592, 33.271168, 30.674944>,  <34.811241, 33.373947, 30.041819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089592, 33.271168, 30.674944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066635, 33.667404, 30.625250>,  <35.052860, 33.905148, 30.595434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066635, 33.667404, 30.625250>,  <35.089592, 33.271168, 30.674944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066635, 33.667404, 30.625250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462456, 0.083906, 0.882663,
		0.884783, 0.108114, 0.453289,
		-0.057394, 0.990591, -0.124236,
		35.049416, 33.964581, 30.587978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547272, 33.505226, 31.195282>,  <35.089592, 33.271168, 30.674944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547272, 33.505226, 31.195282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292744, 33.793400, 31.084959>,  <35.140026, 33.966305, 31.018764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292744, 33.793400, 31.084959>,  <35.547272, 33.505226, 31.195282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292744, 33.793400, 31.084959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299519, 0.098750, 0.948966,
		0.710902, 0.686459, 0.152947,
		-0.636323, 0.720432, -0.275809,
		35.101849, 34.009529, 31.002216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574463, 34.013775, 31.721930>,  <35.547272, 33.505226, 31.195282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574463, 34.013775, 31.721930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226860, 34.123531, 31.557230>,  <35.018299, 34.189384, 31.458410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226860, 34.123531, 31.557230>,  <35.574463, 34.013775, 31.721930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226860, 34.123531, 31.557230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345976, 0.257949, 0.902088,
		0.353736, 0.926375, -0.129226,
		-0.869006, 0.274392, -0.411749,
		34.966160, 34.205849, 31.433704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356323, 34.775043, 31.823383>,  <35.574463, 34.013775, 31.721930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356323, 34.775043, 31.823383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041996, 34.529510, 31.793182>,  <34.853401, 34.382191, 31.775061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041996, 34.529510, 31.793182>,  <35.356323, 34.775043, 31.823383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041996, 34.529510, 31.793182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340982, 0.328162, 0.880932,
		-0.515965, 0.717998, -0.467181,
		-0.785819, -0.613831, -0.075504,
		34.806252, 34.345360, 31.770531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023090, 34.865295, 32.141628>,  <35.356323, 34.775043, 31.823383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023090, 34.865295, 32.141628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312958, 34.929527, 32.409679>,  <36.486877, 34.968067, 32.570511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312958, 34.929527, 32.409679>,  <36.023090, 34.865295, 32.141628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312958, 34.929527, 32.409679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617425, 0.280545, -0.734902,
		-0.306008, 0.946314, 0.104159,
		0.724669, 0.160576, 0.670127,
		36.530357, 34.977699, 32.610718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448524, 35.532757, 31.946140>,  <36.023090, 34.865295, 32.141628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448524, 35.532757, 31.946140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665707, 35.310974, 32.198418>,  <36.796017, 35.177906, 32.349785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665707, 35.310974, 32.198418>,  <36.448524, 35.532757, 31.946140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665707, 35.310974, 32.198418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831011, 0.246609, -0.498604,
		0.120919, 0.794834, 0.594658,
		0.542955, -0.554458, 0.630695,
		36.828594, 35.144638, 32.387627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990303, 35.940815, 32.264950>,  <36.448524, 35.532757, 31.946140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990303, 35.940815, 32.264950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127800, 35.567616, 32.307575>,  <37.210297, 35.343697, 32.333153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127800, 35.567616, 32.307575>,  <36.990303, 35.940815, 32.264950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127800, 35.567616, 32.307575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886074, 0.284669, -0.365836,
		0.310988, 0.220179, 0.924558,
		0.343742, -0.932998, 0.106566,
		37.230923, 35.287716, 32.339546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576233, 36.065540, 32.487144>,  <36.990303, 35.940815, 32.264950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576233, 36.065540, 32.487144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621315, 35.697994, 32.335892>,  <37.648365, 35.477467, 32.245140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621315, 35.697994, 32.335892>,  <37.576233, 36.065540, 32.487144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621315, 35.697994, 32.335892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806517, 0.306881, -0.505325,
		0.580367, -0.248018, 0.775668,
		0.112708, -0.918864, -0.378135,
		37.655128, 35.422337, 32.222450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282116, 36.026802, 32.348091>,  <37.576233, 36.065540, 32.487144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282116, 36.026802, 32.348091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130222, 35.716663, 32.146248>,  <38.039085, 35.530579, 32.025143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130222, 35.716663, 32.146248>,  <38.282116, 36.026802, 32.348091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130222, 35.716663, 32.146248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733527, 0.080009, -0.674935,
		0.563685, -0.626442, 0.538358,
		-0.379734, -0.775351, -0.504612,
		38.016304, 35.484058, 31.994864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838242, 35.564209, 32.206890>,  <38.282116, 36.026802, 32.348091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838242, 35.564209, 32.206890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562183, 35.512486, 31.922079>,  <38.396549, 35.481453, 31.751194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562183, 35.512486, 31.922079>,  <38.838242, 35.564209, 32.206890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562183, 35.512486, 31.922079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716225, 0.018718, -0.697618,
		0.103533, -0.991428, 0.079693,
		-0.690147, -0.129304, -0.712024,
		38.355141, 35.473694, 31.708471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129978, 35.061592, 31.815639>,  <38.838242, 35.564209, 32.206890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129978, 35.061592, 31.815639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857777, 35.243259, 31.585632>,  <38.694454, 35.352261, 31.447628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857777, 35.243259, 31.585632>,  <39.129978, 35.061592, 31.815639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857777, 35.243259, 31.585632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634154, -0.028111, -0.772696,
		-0.367097, -0.890473, -0.268882,
		-0.680506, 0.454167, -0.575017,
		38.653625, 35.379509, 31.413128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280033, 34.864346, 31.166948>,  <39.129978, 35.061592, 31.815639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280033, 34.864346, 31.166948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034275, 35.164776, 31.070284>,  <38.886822, 35.345036, 31.012285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034275, 35.164776, 31.070284>,  <39.280033, 34.864346, 31.166948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034275, 35.164776, 31.070284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630844, 0.283672, -0.722195,
		-0.473873, -0.596163, -0.648100,
		-0.614394, 0.751079, -0.241661,
		38.849957, 35.390099, 30.997786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157597, 34.763100, 30.485394>,  <39.280033, 34.864346, 31.166948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157597, 34.763100, 30.485394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097378, 35.155350, 30.535534>,  <39.061249, 35.390701, 30.565619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097378, 35.155350, 30.535534>,  <39.157597, 34.763100, 30.485394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097378, 35.155350, 30.535534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504685, 0.185262, -0.843191,
		-0.850077, -0.063674, -0.522796,
		-0.150544, 0.980624, 0.125352,
		39.052216, 35.449535, 30.573139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848137, 35.032829, 29.879501>,  <39.157597, 34.763100, 30.485394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848137, 35.032829, 29.879501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008045, 35.350208, 30.063076>,  <39.103989, 35.540634, 30.173222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008045, 35.350208, 30.063076>,  <38.848137, 35.032829, 29.879501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008045, 35.350208, 30.063076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560926, 0.184225, -0.807108,
		-0.724947, 0.580086, -0.371419,
		0.399768, 0.793449, 0.458939,
		39.127975, 35.588242, 30.200758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782112, 35.497845, 29.440844>,  <38.848137, 35.032829, 29.879501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782112, 35.497845, 29.440844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061314, 35.667824, 29.671394>,  <39.228836, 35.769810, 29.809725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061314, 35.667824, 29.671394>,  <38.782112, 35.497845, 29.440844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061314, 35.667824, 29.671394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468740, 0.337360, -0.816377,
		-0.541363, 0.840006, 0.036290,
		0.698004, 0.424946, 0.576378,
		39.270714, 35.795307, 29.844307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976818, 36.217999, 29.141476>,  <38.782112, 35.497845, 29.440844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976818, 36.217999, 29.141476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298580, 36.155247, 29.370672>,  <39.491638, 36.117596, 29.508190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298580, 36.155247, 29.370672>,  <38.976818, 36.217999, 29.141476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298580, 36.155247, 29.370672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583690, 0.388293, -0.713116,
		-0.110617, 0.908085, 0.403913,
		0.804406, -0.156878, 0.572992,
		39.539902, 36.108185, 29.542570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275166, 36.863106, 29.211336>,  <38.976818, 36.217999, 29.141476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275166, 36.863106, 29.211336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544647, 36.572403, 29.264912>,  <39.706337, 36.397980, 29.297056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544647, 36.572403, 29.264912>,  <39.275166, 36.863106, 29.211336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544647, 36.572403, 29.264912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574182, 0.400688, -0.713978,
		0.465223, 0.557917, 0.687238,
		0.673708, -0.726759, 0.133937,
		39.746761, 36.354374, 29.305092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857178, 37.147129, 28.914227>,  <39.275166, 36.863106, 29.211336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857178, 37.147129, 28.914227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949207, 36.762100, 28.971527>,  <40.004425, 36.531082, 29.005907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949207, 36.762100, 28.971527>,  <39.857178, 37.147129, 28.914227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949207, 36.762100, 28.971527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614360, 0.029502, -0.788474,
		0.754736, 0.269418, 0.598153,
		0.230076, -0.962571, 0.143253,
		40.018230, 36.473328, 29.014503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583290, 37.185699, 28.755449>,  <39.857178, 37.147129, 28.914227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583290, 37.185699, 28.755449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419659, 36.822777, 28.716558>,  <40.321480, 36.605022, 28.693224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419659, 36.822777, 28.716558>,  <40.583290, 37.185699, 28.755449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419659, 36.822777, 28.716558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459772, -0.112909, -0.880830,
		0.788201, -0.405036, 0.463342,
		-0.409083, -0.907302, -0.097229,
		40.296932, 36.550587, 28.687389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130009, 36.820667, 28.668148>,  <40.583290, 37.185699, 28.755449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130009, 36.820667, 28.668148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819477, 36.621735, 28.513239>,  <40.633160, 36.502373, 28.420294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819477, 36.621735, 28.513239>,  <41.130009, 36.820667, 28.668148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819477, 36.621735, 28.513239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447910, -0.002965, -0.894074,
		0.443506, -0.867554, 0.225063,
		-0.776325, -0.497335, -0.387270,
		40.586578, 36.472534, 28.397058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394047, 36.242973, 28.313410>,  <41.130009, 36.820667, 28.668148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394047, 36.242973, 28.313410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036999, 36.272625, 28.135538>,  <40.822769, 36.290417, 28.028814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036999, 36.272625, 28.135538>,  <41.394047, 36.242973, 28.313410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036999, 36.272625, 28.135538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412760, -0.262268, -0.872264,
		-0.181280, -0.962144, 0.203510,
		-0.892618, 0.074123, -0.444678,
		40.769215, 36.294865, 28.002134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350101, 35.676487, 27.910986>,  <41.394047, 36.242973, 28.313410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350101, 35.676487, 27.910986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084797, 35.939892, 27.768749>,  <40.925613, 36.097935, 27.683407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084797, 35.939892, 27.768749>,  <41.350101, 35.676487, 27.910986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084797, 35.939892, 27.768749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330512, -0.168556, -0.928629,
		-0.671453, -0.733449, -0.105851,
		-0.663259, 0.658515, -0.355590,
		40.885818, 36.137447, 27.662071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204994, 35.396832, 27.368769>,  <41.350101, 35.676487, 27.910986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204994, 35.396832, 27.368769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080822, 35.773224, 27.314827>,  <41.006321, 35.999062, 27.282461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080822, 35.773224, 27.314827>,  <41.204994, 35.396832, 27.368769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080822, 35.773224, 27.314827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332388, -0.025461, -0.942799,
		-0.890592, -0.337493, -0.304868,
		-0.310426, 0.940984, -0.134854,
		40.987694, 36.055519, 27.274370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801952, 35.312225, 26.751251>,  <41.204994, 35.396832, 27.368769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801952, 35.312225, 26.751251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898167, 35.700031, 26.769953>,  <40.955894, 35.932713, 26.781174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898167, 35.700031, 26.769953>,  <40.801952, 35.312225, 26.751251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898167, 35.700031, 26.769953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177304, 0.003469, -0.984150,
		-0.954308, 0.245017, -0.171064,
		0.240540, 0.969512, 0.046753,
		40.970329, 35.990887, 26.783979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393738, 35.667595, 26.177626>,  <40.801952, 35.312225, 26.751251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393738, 35.667595, 26.177626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719185, 35.876564, 26.279682>,  <40.914455, 36.001945, 26.340916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719185, 35.876564, 26.279682>,  <40.393738, 35.667595, 26.177626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719185, 35.876564, 26.279682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206370, 0.150760, -0.966790,
		-0.543537, 0.839254, 0.014849,
		0.813621, 0.522421, 0.255140,
		40.963272, 36.033291, 26.356224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516953, 36.147499, 25.600754>,  <40.393738, 35.667595, 26.177626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516953, 36.147499, 25.600754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869804, 36.174225, 25.787249>,  <41.081516, 36.190258, 25.899145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869804, 36.174225, 25.787249>,  <40.516953, 36.147499, 25.600754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869804, 36.174225, 25.787249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468577, -0.024178, -0.883092,
		-0.047727, 0.997473, -0.052634,
		0.882132, 0.066810, 0.466239,
		41.134445, 36.194267, 25.927120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945850, 36.719868, 25.202888>,  <40.516953, 36.147499, 25.600754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945850, 36.719868, 25.202888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207329, 36.493729, 25.404110>,  <41.364216, 36.358047, 25.524843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207329, 36.493729, 25.404110>,  <40.945850, 36.719868, 25.202888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207329, 36.493729, 25.404110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448981, -0.245374, -0.859190,
		0.609174, 0.787514, 0.093428,
		0.653700, -0.565344, 0.503054,
		41.403439, 36.324127, 25.555027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658493, 36.965054, 25.127981>,  <40.945850, 36.719868, 25.202888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658493, 36.965054, 25.127981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682190, 36.574703, 25.212030>,  <41.696407, 36.340492, 25.262459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682190, 36.574703, 25.212030>,  <41.658493, 36.965054, 25.127981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682190, 36.574703, 25.212030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505707, -0.152140, -0.849184,
		0.860669, 0.156571, 0.484495,
		0.059246, -0.975879, 0.210121,
		41.699963, 36.281940, 25.275066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298462, 36.788303, 24.873652>,  <41.658493, 36.965054, 25.127981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298462, 36.788303, 24.873652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121719, 36.434189, 24.931669>,  <42.015675, 36.221722, 24.966480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121719, 36.434189, 24.931669>,  <42.298462, 36.788303, 24.873652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121719, 36.434189, 24.931669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383262, -0.332472, -0.861727,
		0.811096, -0.325167, 0.486199,
		-0.441852, -0.885285, 0.145043,
		41.989162, 36.168602, 24.975182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882042, 36.438366, 24.775703>,  <42.298462, 36.788303, 24.873652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882042, 36.438366, 24.775703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562786, 36.199978, 24.740393>,  <42.371231, 36.056946, 24.719206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562786, 36.199978, 24.740393>,  <42.882042, 36.438366, 24.775703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562786, 36.199978, 24.740393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417983, -0.442228, -0.793552,
		0.433894, -0.670264, 0.602065,
		-0.798139, -0.595970, -0.088279,
		42.323345, 36.021187, 24.713909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108212, 35.751759, 24.906294>,  <42.882042, 36.438366, 24.775703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108212, 35.751759, 24.906294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781910, 35.750629, 24.674938>,  <42.586128, 35.749954, 24.536125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781910, 35.750629, 24.674938>,  <43.108212, 35.751759, 24.906294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781910, 35.750629, 24.674938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551228, -0.306677, -0.775949,
		-0.175193, -0.951810, 0.251727,
		-0.815755, -0.002818, -0.578391,
		42.537182, 35.749783, 24.501421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152359, 35.032177, 24.508415>,  <43.108212, 35.751759, 24.906294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152359, 35.032177, 24.508415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.915283, 35.281452, 24.304312>,  <42.773037, 35.431015, 24.181850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.915283, 35.281452, 24.304312>,  <43.152359, 35.032177, 24.508415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915283, 35.281452, 24.304312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488919, -0.225080, -0.842791,
		-0.640064, -0.748986, -0.171285,
		-0.592686, 0.623185, -0.510259,
		42.737476, 35.468407, 24.151234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911285, 34.635822, 23.904560>,  <43.152359, 35.032177, 24.508415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911285, 34.635822, 23.904560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.837299, 35.018230, 23.813507>,  <42.792908, 35.247677, 23.758875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.837299, 35.018230, 23.813507>,  <42.911285, 34.635822, 23.904560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.837299, 35.018230, 23.813507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458180, -0.121028, -0.880582,
		-0.869403, -0.267170, -0.415644,
		-0.184960, 0.956019, -0.227633,
		42.781811, 35.305035, 23.745216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747013, 34.686260, 23.194393>,  <42.911285, 34.635822, 23.904560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747013, 34.686260, 23.194393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877735, 35.048576, 23.302273>,  <42.956169, 35.265965, 23.367001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877735, 35.048576, 23.302273>,  <42.747013, 34.686260, 23.194393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877735, 35.048576, 23.302273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576587, 0.035016, -0.816285,
		-0.748828, 0.422274, -0.510824,
		0.326809, 0.905792, 0.269698,
		42.975777, 35.320312, 23.383183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550644, 35.155399, 22.610460>,  <42.747013, 34.686260, 23.194393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550644, 35.155399, 22.610460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852547, 35.299942, 22.829462>,  <43.033688, 35.386665, 22.960863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.852547, 35.299942, 22.829462>,  <42.550644, 35.155399, 22.610460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852547, 35.299942, 22.829462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603943, -0.056932, -0.794992,
		-0.256102, 0.930689, -0.261207,
		0.754761, 0.361353, 0.547503,
		43.078976, 35.408348, 22.993713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889408, 35.536137, 22.105543>,  <42.550644, 35.155399, 22.610460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889408, 35.536137, 22.105543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163445, 35.502739, 22.395006>,  <43.327866, 35.482700, 22.568684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163445, 35.502739, 22.395006>,  <42.889408, 35.536137, 22.105543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163445, 35.502739, 22.395006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728092, 0.109918, -0.676609,
		-0.023051, 0.990428, 0.136094,
		0.685091, -0.083492, 0.723657,
		43.368973, 35.477692, 22.612103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412758, 36.058102, 21.920969>,  <42.889408, 35.536137, 22.105543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412758, 36.058102, 21.920969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580311, 35.809204, 22.185499>,  <43.680843, 35.659866, 22.344217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580311, 35.809204, 22.185499>,  <43.412758, 36.058102, 21.920969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580311, 35.809204, 22.185499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880814, 0.101433, -0.462469,
		0.220687, 0.776226, 0.590568,
		0.418884, -0.622242, 0.661326,
		43.705975, 35.622532, 22.383898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.047237, 36.406906, 22.212271>,  <43.412758, 36.058102, 21.920969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.047237, 36.406906, 22.212271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.081722, 36.012150, 22.266851>,  <44.102413, 35.775295, 22.299601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.081722, 36.012150, 22.266851>,  <44.047237, 36.406906, 22.212271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081722, 36.012150, 22.266851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938856, 0.034656, -0.342562,
		0.333341, 0.157643, 0.929533,
		0.086216, -0.986888, 0.136452,
		44.107586, 35.716084, 22.307787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717339, 36.376114, 22.425058>,  <44.047237, 36.406906, 22.212271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717339, 36.376114, 22.425058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652027, 35.999268, 22.307922>,  <44.612843, 35.773159, 22.237640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652027, 35.999268, 22.307922>,  <44.717339, 36.376114, 22.425058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652027, 35.999268, 22.307922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853378, 0.014079, -0.521102,
		0.495062, -0.334989, 0.801683,
		-0.163277, -0.942117, -0.292842,
		44.603043, 35.716633, 22.220070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.306412, 36.017094, 22.465012>,  <44.717339, 36.376114, 22.425058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.306412, 36.017094, 22.465012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112579, 35.761780, 22.225754>,  <44.996281, 35.608593, 22.082199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112579, 35.761780, 22.225754>,  <45.306412, 36.017094, 22.465012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112579, 35.761780, 22.225754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838960, -0.145539, -0.524370,
		0.247642, -0.755921, 0.606018,
		-0.484582, -0.638281, -0.598145,
		44.967205, 35.570297, 22.046310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.752636, 35.406361, 22.450190>,  <45.306412, 36.017094, 22.465012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.752636, 35.406361, 22.450190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511318, 35.412338, 22.131237>,  <45.366528, 35.415924, 21.939865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511318, 35.412338, 22.131237>,  <45.752636, 35.406361, 22.450190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.511318, 35.412338, 22.131237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788204, -0.141198, -0.598997,
		-0.121539, -0.989868, 0.073407,
		-0.603293, 0.014941, -0.797380,
		45.330330, 35.416821, 21.892023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.907379, 34.904190, 21.986208>,  <45.752636, 35.406361, 22.450190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.907379, 34.904190, 21.986208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.688370, 35.124565, 21.734274>,  <45.556965, 35.256790, 21.583113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.688370, 35.124565, 21.734274>,  <45.907379, 34.904190, 21.986208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.688370, 35.124565, 21.734274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768966, 0.034415, -0.638362,
		-0.330019, -0.833839, -0.442493,
		-0.547520, 0.550934, -0.629836,
		45.524113, 35.289845, 21.545322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.541595, 34.745754, 21.828220>,  <45.907379, 34.904190, 21.986208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.541595, 34.745754, 21.828220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.727451, 34.416302, 21.958292>,  <46.838963, 34.218628, 22.036335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.727451, 34.416302, 21.958292>,  <46.541595, 34.745754, 21.828220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.727451, 34.416302, 21.958292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605462, -0.027529, 0.795398,
		-0.646165, -0.566453, -0.511470,
		0.464636, -0.823634, 0.325177,
		46.866840, 34.169212, 22.055845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.981998, 34.173031, 22.082117>,  <46.541595, 34.745754, 21.828220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.981998, 34.173031, 22.082117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.319828, 34.059704, 22.263851>,  <46.522526, 33.991707, 22.372890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.319828, 34.059704, 22.263851>,  <45.981998, 34.173031, 22.082117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.319828, 34.059704, 22.263851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483806, -0.040281, 0.874248,
		-0.229394, -0.958178, -0.171095,
		0.844577, -0.283324, 0.454332,
		46.573200, 33.974709, 22.400150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.765507, 33.736259, 22.537872>,  <45.981998, 34.173031, 22.082117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.765507, 33.736259, 22.537872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127293, 33.822227, 22.685251>,  <46.344364, 33.873810, 22.773680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127293, 33.822227, 22.685251>,  <45.765507, 33.736259, 22.537872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.127293, 33.822227, 22.685251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344798, -0.140146, 0.928156,
		0.251118, -0.966524, -0.052652,
		0.904464, 0.214922, 0.368448,
		46.398632, 33.886703, 22.795786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.893028, 33.176182, 22.956553>,  <45.765507, 33.736259, 22.537872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.893028, 33.176182, 22.956553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091743, 33.502079, 23.076149>,  <46.210972, 33.697617, 23.147907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091743, 33.502079, 23.076149>,  <45.893028, 33.176182, 22.956553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091743, 33.502079, 23.076149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335357, -0.137539, 0.931997,
		0.800463, -0.563270, 0.204904,
		0.496783, 0.814745, 0.298991,
		46.240780, 33.746502, 23.165846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.311497, 32.922634, 23.532988>,  <45.893028, 33.176182, 22.956553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.311497, 32.922634, 23.532988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.305359, 33.317722, 23.595179>,  <46.301678, 33.554775, 23.632494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.305359, 33.317722, 23.595179>,  <46.311497, 32.922634, 23.532988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.305359, 33.317722, 23.595179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282366, -0.153448, 0.946955,
		0.959184, -0.029375, 0.281253,
		-0.015341, 0.987720, 0.155479,
		46.300758, 33.614037, 23.641823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.587189, 32.917007, 24.223335>,  <46.311497, 32.922634, 23.532988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.587189, 32.917007, 24.223335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.450630, 33.288837, 24.167715>,  <46.368694, 33.511936, 24.134344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.450630, 33.288837, 24.167715>,  <46.587189, 32.917007, 24.223335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.450630, 33.288837, 24.167715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479533, -0.045024, 0.876367,
		0.808390, 0.365869, 0.461134,
		-0.341398, 0.929577, -0.139049,
		46.348209, 33.567711, 24.125999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.754261, 33.307018, 24.839758>,  <46.587189, 32.917007, 24.223335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.754261, 33.307018, 24.839758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458344, 33.493492, 24.645695>,  <46.280792, 33.605377, 24.529257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458344, 33.493492, 24.645695>,  <46.754261, 33.307018, 24.839758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.458344, 33.493492, 24.645695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453903, 0.186481, 0.871319,
		0.496671, 0.864809, 0.073646,
		-0.739791, 0.466187, -0.485159,
		46.236404, 33.633347, 24.500147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.622456, 33.867496, 25.256290>,  <46.754261, 33.307018, 24.839758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.622456, 33.867496, 25.256290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.303970, 33.787090, 25.028030>,  <46.112881, 33.738846, 24.891075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.303970, 33.787090, 25.028030>,  <46.622456, 33.867496, 25.256290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.303970, 33.787090, 25.028030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601610, 0.163051, 0.781972,
		-0.064140, 0.965924, -0.250753,
		-0.796211, -0.201011, -0.570651,
		46.065105, 33.726788, 24.856834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.090500, 34.293690, 25.590092>,  <46.622456, 33.867496, 25.256290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.090500, 34.293690, 25.590092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849758, 34.082195, 25.350687>,  <45.705315, 33.955299, 25.207045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849758, 34.082195, 25.350687>,  <46.090500, 34.293690, 25.590092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849758, 34.082195, 25.350687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797456, 0.357664, 0.485943,
		-0.042869, 0.769751, -0.636904,
		-0.601852, -0.528735, -0.598509,
		45.669201, 33.923576, 25.171135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.483749, 34.704514, 25.440973>,  <46.090500, 34.293690, 25.590092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.483749, 34.704514, 25.440973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386398, 34.325790, 25.356752>,  <45.327988, 34.098557, 25.306219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386398, 34.325790, 25.356752>,  <45.483749, 34.704514, 25.440973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.386398, 34.325790, 25.356752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894176, 0.134908, 0.426906,
		-0.375791, 0.292170, -0.879442,
		-0.243373, -0.946804, -0.210554,
		45.313385, 34.041748, 25.293587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.773033, 34.756699, 25.268072>,  <45.483749, 34.704514, 25.440973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.773033, 34.756699, 25.268072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.852989, 34.388016, 25.401039>,  <44.900963, 34.166805, 25.480820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.852989, 34.388016, 25.401039>,  <44.773033, 34.756699, 25.268072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.852989, 34.388016, 25.401039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793020, 0.047073, 0.607375,
		-0.575469, -0.385020, -0.721522,
		0.199888, -0.921707, 0.332418,
		44.912956, 34.111504, 25.500765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110809, 34.366154, 25.215273>,  <44.773033, 34.756699, 25.268072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110809, 34.366154, 25.215273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.362137, 34.296810, 25.518629>,  <44.512936, 34.255203, 25.700644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.362137, 34.296810, 25.518629>,  <44.110809, 34.366154, 25.215273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362137, 34.296810, 25.518629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725575, 0.221065, 0.651668,
		-0.280627, -0.959727, 0.013115,
		0.628323, -0.173360, 0.758391,
		44.550632, 34.244801, 25.746147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.855511, 33.779373, 25.655834>,  <44.110809, 34.366154, 25.215273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.855511, 33.779373, 25.655834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087170, 34.025768, 25.869432>,  <44.226166, 34.173603, 25.997591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087170, 34.025768, 25.869432>,  <43.855511, 33.779373, 25.655834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087170, 34.025768, 25.869432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693471, 0.027887, 0.719945,
		0.428583, -0.787265, 0.443318,
		0.579150, 0.615984, 0.533993,
		44.260914, 34.210564, 26.029631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038879, 33.402496, 26.292074>,  <43.855511, 33.779373, 25.655834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038879, 33.402496, 26.292074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053768, 33.800007, 26.334072>,  <44.062702, 34.038513, 26.359270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053768, 33.800007, 26.334072>,  <44.038879, 33.402496, 26.292074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053768, 33.800007, 26.334072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634895, -0.057620, 0.770447,
		0.771701, -0.095335, 0.628799,
		0.037219, 0.993776, 0.104993,
		44.064934, 34.098141, 26.365570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.279915, 33.645542, 27.037531>,  <44.038879, 33.402496, 26.292074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.279915, 33.645542, 27.037531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.073627, 33.950584, 26.881338>,  <43.949856, 34.133610, 26.787622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.073627, 33.950584, 26.881338>,  <44.279915, 33.645542, 27.037531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.073627, 33.950584, 26.881338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416952, 0.174755, 0.891971,
		0.748457, 0.622816, 0.227844,
		-0.515717, 0.762601, -0.390481,
		43.918911, 34.179363, 26.764194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229366, 33.909485, 27.656151>,  <44.279915, 33.645542, 27.037531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229366, 33.909485, 27.656151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000435, 34.124889, 27.408781>,  <43.863075, 34.254131, 27.260361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000435, 34.124889, 27.408781>,  <44.229366, 33.909485, 27.656151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000435, 34.124889, 27.408781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530829, 0.331519, 0.779946,
		0.625026, 0.774663, 0.096118,
		-0.572331, 0.538509, -0.618422,
		43.828735, 34.286442, 27.223255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194191, 34.596230, 27.932301>,  <44.229366, 33.909485, 27.656151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194191, 34.596230, 27.932301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862972, 34.557175, 27.711466>,  <43.664242, 34.533741, 27.578964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862972, 34.557175, 27.711466>,  <44.194191, 34.596230, 27.932301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862972, 34.557175, 27.711466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521776, 0.494502, 0.695139,
		0.205139, 0.863675, -0.460416,
		-0.828051, -0.097634, -0.552086,
		43.614555, 34.527885, 27.545839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928864, 35.237148, 27.955568>,  <44.194191, 34.596230, 27.932301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928864, 35.237148, 27.955568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.626740, 35.008842, 27.826736>,  <43.445465, 34.871861, 27.749437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.626740, 35.008842, 27.826736>,  <43.928864, 35.237148, 27.955568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626740, 35.008842, 27.826736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568699, 0.326562, 0.754942,
		-0.325715, 0.753382, -0.571249,
		-0.755308, -0.570765, -0.322081,
		43.400146, 34.837612, 27.730112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.255711, 35.669369, 27.939753>,  <43.928864, 35.237148, 27.955568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.255711, 35.669369, 27.939753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144588, 35.285465, 27.956181>,  <43.077915, 35.055122, 27.966038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144588, 35.285465, 27.956181>,  <43.255711, 35.669369, 27.939753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144588, 35.285465, 27.956181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666658, 0.223395, 0.711099,
		-0.691659, 0.170166, -0.701891,
		-0.277804, -0.959759, 0.041071,
		43.061249, 34.997536, 27.968502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509346, 35.722546, 28.093561>,  <43.255711, 35.669369, 27.939753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509346, 35.722546, 28.093561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638920, 35.354897, 28.183260>,  <42.716663, 35.134308, 28.237080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638920, 35.354897, 28.183260>,  <42.509346, 35.722546, 28.093561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.638920, 35.354897, 28.183260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505522, 0.032195, 0.862213,
		-0.799696, -0.392662, -0.454205,
		0.323935, -0.919119, 0.224246,
		42.736099, 35.079163, 28.250534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105145, 35.629112, 28.555004>,  <42.509346, 35.722546, 28.093561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105145, 35.629112, 28.555004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325016, 35.301491, 28.620733>,  <42.456940, 35.104919, 28.660170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325016, 35.301491, 28.620733>,  <42.105145, 35.629112, 28.555004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325016, 35.301491, 28.620733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334865, -0.035830, 0.941585,
		-0.765321, -0.572597, -0.293968,
		0.549682, -0.819053, 0.164321,
		42.489922, 35.055775, 28.670031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650642, 35.046310, 28.701757>,  <42.105145, 35.629112, 28.555004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650642, 35.046310, 28.701757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010914, 34.998631, 28.868879>,  <42.227077, 34.970024, 28.969152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010914, 34.998631, 28.868879>,  <41.650642, 35.046310, 28.701757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010914, 34.998631, 28.868879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431169, -0.126772, 0.893321,
		-0.053510, -0.984745, -0.165573,
		0.900683, -0.119192, 0.417808,
		42.281120, 34.962872, 28.994221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525578, 34.461712, 29.070808>,  <41.650642, 35.046310, 28.701757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525578, 34.461712, 29.070808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863628, 34.619473, 29.215147>,  <42.066460, 34.714130, 29.301750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863628, 34.619473, 29.215147>,  <41.525578, 34.461712, 29.070808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863628, 34.619473, 29.215147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303451, -0.201775, 0.931238,
		0.440091, -0.896512, -0.050843,
		0.845125, 0.394401, 0.360847,
		42.117165, 34.737793, 29.323400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699593, 34.040627, 29.586454>,  <41.525578, 34.461712, 29.070808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699593, 34.040627, 29.586454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862190, 34.391808, 29.687616>,  <41.959747, 34.602516, 29.748314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862190, 34.391808, 29.687616>,  <41.699593, 34.040627, 29.586454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862190, 34.391808, 29.687616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232300, -0.168395, 0.957956,
		0.883629, -0.448152, 0.135497,
		0.406493, 0.877954, 0.252904,
		41.984138, 34.655193, 29.763487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077187, 33.900459, 30.213345>,  <41.699593, 34.040627, 29.586454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077187, 33.900459, 30.213345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031925, 34.297287, 30.191458>,  <42.004768, 34.535385, 30.178326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031925, 34.297287, 30.191458>,  <42.077187, 33.900459, 30.213345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031925, 34.297287, 30.191458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323751, 0.015251, 0.946019,
		0.939352, 0.124757, 0.319458,
		-0.113151, 0.992070, -0.054716,
		41.997978, 34.594910, 30.175043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299400, 34.161667, 30.912617>,  <42.077187, 33.900459, 30.213345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299400, 34.161667, 30.912617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.071777, 34.448917, 30.752380>,  <41.935204, 34.621265, 30.656239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.071777, 34.448917, 30.752380>,  <42.299400, 34.161667, 30.912617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071777, 34.448917, 30.752380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264525, 0.301399, 0.916071,
		0.778589, 0.627263, 0.018448,
		-0.569057, 0.718122, -0.400593,
		41.901062, 34.664352, 30.632202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354305, 34.693871, 31.337582>,  <42.299400, 34.161667, 30.912617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354305, 34.693871, 31.337582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036018, 34.792118, 31.116129>,  <41.845047, 34.851067, 30.983257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036018, 34.792118, 31.116129>,  <42.354305, 34.693871, 31.337582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036018, 34.792118, 31.116129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431741, 0.411056, 0.802890,
		0.424778, 0.877898, -0.221041,
		-0.795716, 0.245618, -0.553632,
		41.797302, 34.865803, 30.950039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297356, 35.286167, 31.597239>,  <42.354305, 34.693871, 31.337582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297356, 35.286167, 31.597239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954784, 35.171669, 31.425385>,  <41.749241, 35.102970, 31.322271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954784, 35.171669, 31.425385>,  <42.297356, 35.286167, 31.597239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954784, 35.171669, 31.425385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508764, 0.326649, 0.796530,
		-0.087665, 0.900756, -0.425385,
		-0.856431, -0.286249, -0.429636,
		41.697857, 35.085793, 31.296494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810001, 35.740082, 31.853704>,  <42.297356, 35.286167, 31.597239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810001, 35.740082, 31.853704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629761, 35.410446, 31.716400>,  <41.521614, 35.212666, 31.634018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629761, 35.410446, 31.716400>,  <41.810001, 35.740082, 31.853704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629761, 35.410446, 31.716400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550390, -0.046283, 0.833624,
		-0.702870, 0.564561, -0.432717,
		-0.450604, -0.824093, -0.343259,
		41.494579, 35.163219, 31.613422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095036, 35.821686, 32.014538>,  <41.810001, 35.740082, 31.853704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095036, 35.821686, 32.014538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147171, 35.428074, 31.966032>,  <41.178452, 35.191906, 31.936928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147171, 35.428074, 31.966032>,  <41.095036, 35.821686, 32.014538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147171, 35.428074, 31.966032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638655, -0.176879, 0.748888,
		-0.758375, -0.020158, -0.651507,
		0.130334, -0.984026, -0.121266,
		41.186272, 35.132866, 31.929651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363262, 35.431725, 31.992041>,  <41.095036, 35.821686, 32.014538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363262, 35.431725, 31.992041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641685, 35.167221, 32.103928>,  <40.808739, 35.008518, 32.171059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641685, 35.167221, 32.103928>,  <40.363262, 35.431725, 31.992041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641685, 35.167221, 32.103928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602548, -0.326137, 0.728403,
		-0.390441, -0.675548, -0.625452,
		0.696054, -0.661263, 0.279713,
		40.850502, 34.968842, 32.187843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046841, 34.787582, 32.081554>,  <40.363262, 35.431725, 31.992041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046841, 34.787582, 32.081554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388351, 34.746403, 32.285702>,  <40.593258, 34.721695, 32.408188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388351, 34.746403, 32.285702>,  <40.046841, 34.787582, 32.081554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388351, 34.746403, 32.285702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495168, -0.463436, 0.734871,
		0.160871, -0.880131, -0.446644,
		0.853773, -0.102944, 0.510366,
		40.644482, 34.715519, 32.438812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070427, 34.082672, 32.259514>,  <40.046841, 34.787582, 32.081554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070427, 34.082672, 32.259514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296387, 34.266815, 32.533436>,  <40.431961, 34.377300, 32.697788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296387, 34.266815, 32.533436>,  <40.070427, 34.082672, 32.259514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296387, 34.266815, 32.533436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420933, -0.553034, 0.719005,
		0.709724, -0.694421, -0.118624,
		0.564895, 0.460362, 0.684806,
		40.465855, 34.404922, 32.738876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462112, 33.535412, 32.744469>,  <40.070427, 34.082672, 32.259514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462112, 33.535412, 32.744469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447136, 33.877228, 32.951683>,  <40.438152, 34.082317, 33.076012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447136, 33.877228, 32.951683>,  <40.462112, 33.535412, 32.744469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447136, 33.877228, 32.951683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388889, -0.489990, 0.780176,
		0.920524, -0.172248, 0.350666,
		-0.037440, 0.854541, 0.518033,
		40.435905, 34.133591, 33.107094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555275, 33.221497, 33.390465>,  <40.462112, 33.535412, 32.744469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555275, 33.221497, 33.390465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470383, 33.601700, 33.481228>,  <40.419445, 33.829823, 33.535686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470383, 33.601700, 33.481228>,  <40.555275, 33.221497, 33.390465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470383, 33.601700, 33.481228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329107, -0.288158, 0.899252,
		0.920134, 0.116174, 0.373976,
		-0.212233, 0.950510, 0.226910,
		40.406712, 33.886852, 33.549301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858635, 33.397335, 34.032436>,  <40.555275, 33.221497, 33.390465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858635, 33.397335, 34.032436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556545, 33.658077, 34.004932>,  <40.375294, 33.814522, 33.988430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556545, 33.658077, 34.004932>,  <40.858635, 33.397335, 34.032436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556545, 33.658077, 34.004932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258759, -0.200108, 0.944987,
		0.602232, 0.731468, 0.319798,
		-0.755222, 0.651852, -0.068763,
		40.329979, 33.853634, 33.984303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935226, 33.831665, 34.660717>,  <40.858635, 33.397335, 34.032436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935226, 33.831665, 34.660717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563881, 33.828175, 34.512089>,  <40.341072, 33.826080, 34.422913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563881, 33.828175, 34.512089>,  <40.935226, 33.831665, 34.660717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563881, 33.828175, 34.512089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342595, -0.367573, 0.864592,
		-0.144127, 0.929954, 0.338250,
		-0.928362, -0.008728, -0.371574,
		40.285374, 33.825558, 34.400616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556244, 34.180374, 35.271439>,  <40.935226, 33.831665, 34.660717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556244, 34.180374, 35.271439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259861, 34.034763, 35.045708>,  <40.082031, 33.947399, 34.910267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259861, 34.034763, 35.045708>,  <40.556244, 34.180374, 35.271439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259861, 34.034763, 35.045708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607534, 0.005282, 0.794276,
		-0.286154, 0.931375, -0.225070,
		-0.740958, -0.364023, -0.564330,
		40.037575, 33.925556, 34.876408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909874, 34.616646, 35.376766>,  <40.556244, 34.180374, 35.271439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909874, 34.616646, 35.376766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797211, 34.262272, 35.229366>,  <39.729614, 34.049648, 35.140926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797211, 34.262272, 35.229366>,  <39.909874, 34.616646, 35.376766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797211, 34.262272, 35.229366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654823, -0.103239, 0.748698,
		-0.701339, 0.452180, -0.551050,
		-0.281657, -0.885932, -0.368503,
		39.712715, 33.996490, 35.118816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265324, 34.613503, 35.546932>,  <39.909874, 34.616646, 35.376766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265324, 34.613503, 35.546932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350842, 34.228027, 35.482937>,  <39.402153, 33.996742, 35.444538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350842, 34.228027, 35.482937>,  <39.265324, 34.613503, 35.546932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350842, 34.228027, 35.482937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592301, -0.258118, 0.763252,
		-0.776834, -0.068417, -0.625978,
		0.213796, -0.963688, -0.159991,
		39.414982, 33.938923, 35.434940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616070, 34.249439, 35.438728>,  <39.265324, 34.613503, 35.546932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616070, 34.249439, 35.438728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883762, 33.995434, 35.593071>,  <39.044380, 33.843033, 35.685677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883762, 33.995434, 35.593071>,  <38.616070, 34.249439, 35.438728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883762, 33.995434, 35.593071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682788, -0.320687, 0.656475,
		-0.293130, -0.702795, -0.648193,
		0.669235, -0.635011, 0.385858,
		39.084534, 33.804932, 35.708828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366375, 33.617134, 35.391670>,  <38.616070, 34.249439, 35.438728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366375, 33.617134, 35.391670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625870, 33.571003, 35.692562>,  <38.781567, 33.543324, 35.873096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625870, 33.571003, 35.692562>,  <38.366375, 33.617134, 35.391670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625870, 33.571003, 35.692562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760694, -0.126953, 0.636575,
		0.022084, -0.985182, -0.170086,
		0.648735, -0.115325, 0.752226,
		38.820492, 33.536407, 35.918228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238003, 33.001133, 35.720505>,  <38.366375, 33.617134, 35.391670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238003, 33.001133, 35.720505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422604, 33.218639, 36.000885>,  <38.533363, 33.349144, 36.169113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422604, 33.218639, 36.000885>,  <38.238003, 33.001133, 35.720505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422604, 33.218639, 36.000885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697702, -0.265537, 0.665359,
		0.547928, -0.796121, 0.256841,
		0.461505, 0.543767, 0.700950,
		38.561054, 33.381771, 36.211170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075310, 32.704159, 36.264603>,  <38.238003, 33.001133, 35.720505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075310, 32.704159, 36.264603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223244, 33.011284, 36.473862>,  <38.312004, 33.195560, 36.599419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.223244, 33.011284, 36.473862>,  <38.075310, 32.704159, 36.264603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223244, 33.011284, 36.473862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707152, -0.132593, 0.694518,
		0.602627, -0.626801, 0.493925,
		0.369834, 0.767815, 0.523148,
		38.334194, 33.241627, 36.630806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314152, 32.491997, 36.937225>,  <38.075310, 32.704159, 36.264603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314152, 32.491997, 36.937225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208591, 32.877075, 36.961132>,  <38.145256, 33.108124, 36.975475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208591, 32.877075, 36.961132>,  <38.314152, 32.491997, 36.937225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208591, 32.877075, 36.961132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744841, -0.242764, 0.621512,
		0.612837, 0.119498, 0.781122,
		-0.263898, 0.962697, 0.059768,
		38.129421, 33.165886, 36.979061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313793, 32.724781, 37.635597>,  <38.314152, 32.491997, 36.937225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313793, 32.724781, 37.635597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084858, 33.001789, 37.459934>,  <37.947498, 33.167992, 37.354538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084858, 33.001789, 37.459934>,  <38.313793, 32.724781, 37.635597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084858, 33.001789, 37.459934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683470, -0.106942, 0.722103,
		0.453103, 0.713432, 0.534520,
		-0.572334, 0.692516, -0.439154,
		37.913158, 33.209545, 37.328190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056126, 33.094074, 38.155750>,  <38.313793, 32.724781, 37.635597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056126, 33.094074, 38.155750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812614, 33.186733, 37.852242>,  <37.666508, 33.242329, 37.670135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812614, 33.186733, 37.852242>,  <38.056126, 33.094074, 38.155750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812614, 33.186733, 37.852242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779893, 0.000625, 0.625913,
		0.145467, 0.972799, 0.180282,
		-0.608775, 0.231650, -0.758769,
		37.629982, 33.256229, 37.624611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548973, 33.673080, 38.384071>,  <38.056126, 33.094074, 38.155750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548973, 33.673080, 38.384071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386684, 33.473083, 38.078026>,  <37.289310, 33.353085, 37.894398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386684, 33.473083, 38.078026>,  <37.548973, 33.673080, 38.384071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386684, 33.473083, 38.078026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852920, -0.093756, 0.513554,
		-0.328507, 0.860940, -0.388414,
		-0.405723, -0.499992, -0.765112,
		37.264969, 33.323086, 37.848492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071243, 34.133163, 38.015865>,  <37.548973, 33.673080, 38.384071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071243, 34.133163, 38.015865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972000, 33.749306, 37.962910>,  <36.912457, 33.518990, 37.931137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972000, 33.749306, 37.962910>,  <37.071243, 34.133163, 38.015865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972000, 33.749306, 37.962910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829859, 0.140040, 0.540113,
		-0.499777, 0.243869, -0.831114,
		-0.248106, -0.959644, -0.132388,
		36.897568, 33.461414, 37.923195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284904, 34.093960, 37.931087>,  <37.071243, 34.133163, 38.015865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284904, 34.093960, 37.931087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360142, 33.704304, 37.981163>,  <36.405285, 33.470509, 38.011208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360142, 33.704304, 37.981163>,  <36.284904, 34.093960, 37.931087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360142, 33.704304, 37.981163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887383, -0.113926, 0.446735,
		-0.420920, -0.195120, -0.885864,
		0.188090, -0.974140, 0.125193,
		36.416569, 33.412064, 38.018723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703136, 33.847729, 37.639217>,  <36.284904, 34.093960, 37.931087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703136, 33.847729, 37.639217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831593, 33.543537, 37.864979>,  <35.908665, 33.361023, 38.000435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831593, 33.543537, 37.864979>,  <35.703136, 33.847729, 37.639217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831593, 33.543537, 37.864979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942804, -0.312982, 0.114730,
		0.089399, -0.568964, -0.817489,
		0.321136, -0.760475, 0.564402,
		35.927933, 33.315395, 38.034298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346622, 33.231205, 37.393288>,  <35.703136, 33.847729, 37.639217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346622, 33.231205, 37.393288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465511, 33.190002, 37.772984>,  <35.536846, 33.165279, 38.000801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465511, 33.190002, 37.772984>,  <35.346622, 33.231205, 37.393288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465511, 33.190002, 37.772984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913786, -0.318965, 0.251508,
		0.276865, -0.942152, -0.188932,
		0.297221, -0.103009, 0.949236,
		35.554676, 33.159100, 38.057755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128620, 32.580257, 37.632450>,  <35.346622, 33.231205, 37.393288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128620, 32.580257, 37.632450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177868, 32.756386, 37.988194>,  <35.207417, 32.862064, 38.201641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177868, 32.756386, 37.988194>,  <35.128620, 32.580257, 37.632450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177868, 32.756386, 37.988194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915793, -0.294834, 0.272754,
		0.382313, -0.848050, 0.366944,
		0.123122, 0.440323, 0.889358,
		35.214806, 32.888481, 38.255001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864483, 32.176098, 38.093010>,  <35.128620, 32.580257, 37.632450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864483, 32.176098, 38.093010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846661, 32.519470, 38.297405>,  <34.835968, 32.725494, 38.420044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846661, 32.519470, 38.297405>,  <34.864483, 32.176098, 38.093010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846661, 32.519470, 38.297405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871479, -0.283465, 0.400214,
		0.488404, -0.427487, 0.760734,
		-0.044555, 0.858430, 0.510992,
		34.833294, 32.777000, 38.450703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594414, 32.069050, 38.795227>,  <34.864483, 32.176098, 38.093010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594414, 32.069050, 38.795227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534340, 32.457516, 38.721169>,  <34.498295, 32.690598, 38.676735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534340, 32.457516, 38.721169>,  <34.594414, 32.069050, 38.795227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534340, 32.457516, 38.721169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902853, -0.058415, 0.425961,
		0.402865, 0.231129, 0.885595,
		-0.150184, 0.971168, -0.185142,
		34.489285, 32.748867, 38.665627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425739, 32.424873, 39.424622>,  <34.594414, 32.069050, 38.795227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425739, 32.424873, 39.424622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251808, 32.605572, 39.113018>,  <34.147449, 32.713989, 38.926056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251808, 32.605572, 39.113018>,  <34.425739, 32.424873, 39.424622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251808, 32.605572, 39.113018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863110, 0.037654, 0.503610,
		0.256837, 0.891352, 0.373534,
		-0.434828, 0.451746, -0.779006,
		34.121361, 32.741096, 38.879314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050945, 32.888321, 39.611217>,  <34.425739, 32.424873, 39.424622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050945, 32.888321, 39.611217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877892, 32.877350, 39.250755>,  <33.774059, 32.870770, 39.034477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877892, 32.877350, 39.250755>,  <34.050945, 32.888321, 39.611217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877892, 32.877350, 39.250755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901195, 0.041966, 0.431378,
		0.025987, 0.998743, -0.042871,
		-0.432635, -0.027425, -0.901152,
		33.748100, 32.869122, 38.980412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472431, 33.485474, 39.580338>,  <34.050945, 32.888321, 39.611217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472431, 33.485474, 39.580338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401787, 33.209328, 39.299709>,  <33.359402, 33.043640, 39.131332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401787, 33.209328, 39.299709>,  <33.472431, 33.485474, 39.580338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401787, 33.209328, 39.299709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973599, 0.017803, 0.227571,
		-0.144618, 0.723240, -0.675285,
		-0.176610, -0.690368, -0.701571,
		33.348804, 33.002216, 39.089237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778492, 33.743210, 39.235252>,  <33.472431, 33.485474, 39.580338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778492, 33.743210, 39.235252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862885, 33.359730, 39.158951>,  <32.913521, 33.129642, 39.113171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862885, 33.359730, 39.158951>,  <32.778492, 33.743210, 39.235252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862885, 33.359730, 39.158951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944992, -0.249951, 0.210986,
		-0.249951, 0.135748, -0.958695,
		-0.210986, 0.958695, 0.190756,
		32.926182, 33.072121, 39.101723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343102, 33.608433, 38.835732>,  <32.778492, 33.743210, 39.235252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343102, 33.608433, 38.835732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438705, 33.258316, 39.003891>,  <32.496067, 33.048244, 39.104786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438705, 33.258316, 39.003891>,  <32.343102, 33.608433, 38.835732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438705, 33.258316, 39.003891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970250, -0.198075, 0.139217,
		-0.038586, -0.441166, -0.896596,
		0.239011, -0.875293, 0.420398,
		32.510410, 32.995728, 39.130009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913589, 33.165352, 38.553547>,  <32.343102, 33.608433, 38.835732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913589, 33.165352, 38.553547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040722, 33.012024, 38.900429>,  <32.117001, 32.920029, 39.108559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040722, 33.012024, 38.900429>,  <31.913589, 33.165352, 38.553547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040722, 33.012024, 38.900429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923601, 0.081603, 0.374568,
		-0.214346, -0.920004, -0.328097,
		0.317831, -0.383318, 0.867209,
		32.136070, 32.897030, 39.160591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330496, 33.378025, 38.859768>,  <31.913589, 33.165352, 38.553547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330496, 33.378025, 38.859768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633421, 33.390766, 39.120678>,  <31.815176, 33.398411, 39.277225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633421, 33.390766, 39.120678>,  <31.330496, 33.378025, 38.859768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633421, 33.390766, 39.120678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652677, 0.003030, 0.757630,
		0.022160, -0.999488, 0.023088,
		0.757312, 0.031858, 0.652275,
		31.860615, 33.400322, 39.316360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278709, 32.760986, 39.330578>,  <31.330496, 33.378025, 38.859768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278709, 32.760986, 39.330578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449554, 33.084827, 39.491634>,  <31.552061, 33.279133, 39.588268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449554, 33.084827, 39.491634>,  <31.278709, 32.760986, 39.330578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449554, 33.084827, 39.491634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692426, 0.006487, 0.721459,
		0.581481, -0.586948, 0.563358,
		0.427113, 0.809599, 0.402646,
		31.577688, 33.327705, 39.612427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868759, 32.889824, 39.825321>,  <31.278709, 32.760986, 39.330578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868759, 32.889824, 39.825321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807505, 32.566383, 39.598087>,  <31.770752, 32.372318, 39.461746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807505, 32.566383, 39.598087>,  <31.868759, 32.889824, 39.825321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807505, 32.566383, 39.598087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825298, 0.211545, -0.523577,
		0.543538, -0.549016, 0.634939,
		-0.153134, -0.808598, -0.568084,
		31.761564, 32.323803, 39.427662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408844, 32.307323, 39.832043>,  <31.868759, 32.889824, 39.825321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408844, 32.307323, 39.832043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241467, 32.336658, 39.469933>,  <32.141041, 32.354259, 39.252666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241467, 32.336658, 39.469933>,  <32.408844, 32.307323, 39.832043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241467, 32.336658, 39.469933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903881, 0.131174, -0.407177,
		0.088887, -0.988643, -0.121179,
		-0.418449, 0.073338, -0.905275,
		32.115932, 32.358658, 39.198349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705357, 31.852312, 39.469120>,  <32.408844, 32.307323, 39.832043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705357, 31.852312, 39.469120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597813, 32.162724, 39.240910>,  <32.533287, 32.348969, 39.103985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597813, 32.162724, 39.240910>,  <32.705357, 31.852312, 39.469120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597813, 32.162724, 39.240910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941948, 0.088153, -0.323981,
		-0.201125, -0.624509, -0.754677,
		-0.268856, 0.776027, -0.570525,
		32.517155, 32.395531, 39.069752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026939, 31.826925, 38.841572>,  <32.705357, 31.852312, 39.469120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026939, 31.826925, 38.841572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997673, 32.218361, 38.918522>,  <32.980114, 32.453224, 38.964691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997673, 32.218361, 38.918522>,  <33.026939, 31.826925, 38.841572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997673, 32.218361, 38.918522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895923, 0.149231, -0.418392,
		-0.438143, 0.141743, -0.887660,
		-0.073162, 0.978590, 0.192376,
		32.975723, 32.511936, 38.976234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149853, 32.109058, 38.173882>,  <33.026939, 31.826925, 38.841572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149853, 32.109058, 38.173882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199329, 32.401585, 38.442173>,  <33.229015, 32.577099, 38.603149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199329, 32.401585, 38.442173>,  <33.149853, 32.109058, 38.173882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199329, 32.401585, 38.442173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856979, 0.262044, -0.443757,
		-0.500286, 0.629693, -0.594307,
		0.123696, 0.731314, 0.670730,
		33.236439, 32.620979, 38.643391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289974, 32.830395, 37.818382>,  <33.149853, 32.109058, 38.173882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289974, 32.830395, 37.818382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429306, 32.842251, 38.193142>,  <33.512905, 32.849365, 38.417999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429306, 32.842251, 38.193142>,  <33.289974, 32.830395, 37.818382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429306, 32.842251, 38.193142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900062, 0.268611, -0.343128,
		-0.261833, 0.962793, 0.066887,
		0.348328, 0.029640, 0.936904,
		33.533806, 32.851143, 38.474213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571198, 33.555386, 37.986301>,  <33.289974, 32.830395, 37.818382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571198, 33.555386, 37.986301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740757, 33.268230, 38.207188>,  <33.842491, 33.095936, 38.339722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740757, 33.268230, 38.207188>,  <33.571198, 33.555386, 37.986301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740757, 33.268230, 38.207188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905182, 0.314955, -0.285392,
		0.030956, 0.620836, 0.783329,
		0.423895, -0.717890, 0.552220,
		33.867924, 33.052864, 38.372852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090294, 33.852268, 38.217037>,  <33.571198, 33.555386, 37.986301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090294, 33.852268, 38.217037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197933, 33.468815, 38.254147>,  <34.262516, 33.238743, 38.276413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197933, 33.468815, 38.254147>,  <34.090294, 33.852268, 38.217037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197933, 33.468815, 38.254147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944579, 0.243893, -0.219743,
		0.188028, 0.146761, 0.971137,
		0.269103, -0.958633, 0.092769,
		34.278664, 33.181225, 38.281979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166630, 33.656570, 38.916195>,  <34.090294, 33.852268, 38.217037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166630, 33.656570, 38.916195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408470, 33.354107, 39.016335>,  <34.553574, 33.172626, 39.076416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408470, 33.354107, 39.016335>,  <34.166630, 33.656570, 38.916195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408470, 33.354107, 39.016335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600364, 0.226060, -0.767112,
		0.523469, 0.614096, 0.590649,
		0.604602, -0.756163, 0.250346,
		34.589851, 33.127258, 39.091438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960041, 33.763287, 39.188274>,  <34.166630, 33.656570, 38.916195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960041, 33.763287, 39.188274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959507, 33.390507, 39.043236>,  <34.959187, 33.166840, 38.956215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959507, 33.390507, 39.043236>,  <34.960041, 33.763287, 39.188274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959507, 33.390507, 39.043236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836599, 0.197598, -0.510938,
		0.547814, -0.304026, 0.779402,
		-0.001330, -0.931946, -0.362595,
		34.959106, 33.110924, 38.934456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547970, 33.236633, 39.458088>,  <34.960041, 33.763287, 39.188274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547970, 33.236633, 39.458088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429253, 33.115620, 39.095787>,  <35.358025, 33.043011, 38.878407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429253, 33.115620, 39.095787>,  <35.547970, 33.236633, 39.458088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429253, 33.115620, 39.095787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951696, -0.015559, -0.306648,
		0.078680, -0.953010, 0.292542,
		-0.296791, -0.302538, -0.905752,
		35.340214, 33.024857, 38.824062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975216, 32.679935, 39.199543>,  <35.547970, 33.236633, 39.458088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975216, 32.679935, 39.199543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840099, 32.868759, 38.873829>,  <35.759029, 32.982052, 38.678402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840099, 32.868759, 38.873829>,  <35.975216, 32.679935, 39.199543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840099, 32.868759, 38.873829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915237, -0.037135, -0.401201,
		-0.219628, -0.880786, -0.419500,
		-0.337794, 0.472057, -0.814283,
		35.738762, 33.010376, 38.629543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460945, 32.358849, 38.825710>,  <35.975216, 32.679935, 39.199543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460945, 32.358849, 38.825710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307140, 32.646664, 38.594395>,  <36.214859, 32.819351, 38.455605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307140, 32.646664, 38.594395>,  <36.460945, 32.358849, 38.825710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307140, 32.646664, 38.594395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791618, -0.065238, -0.607524,
		-0.474861, -0.691386, -0.544511,
		-0.384511, 0.719534, -0.578293,
		36.191788, 32.862522, 38.420906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685928, 32.121437, 38.149719>,  <36.460945, 32.358849, 38.825710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685928, 32.121437, 38.149719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551529, 32.497227, 38.122894>,  <36.470890, 32.722698, 38.106800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551529, 32.497227, 38.122894>,  <36.685928, 32.121437, 38.149719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551529, 32.497227, 38.122894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791157, 0.242885, -0.561317,
		-0.511053, -0.241661, -0.824879,
		-0.335999, 0.939472, -0.067065,
		36.450729, 32.779068, 38.102776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567577, 32.283634, 37.483112>,  <36.685928, 32.121437, 38.149719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567577, 32.283634, 37.483112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644291, 32.652649, 37.617062>,  <36.690319, 32.874058, 37.697433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644291, 32.652649, 37.617062>,  <36.567577, 32.283634, 37.483112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644291, 32.652649, 37.617062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713977, 0.102969, -0.692556,
		-0.673391, 0.371916, -0.638923,
		0.191784, 0.922538, 0.334878,
		36.701824, 32.929409, 37.717525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698502, 32.675213, 36.930283>,  <36.567577, 32.283634, 37.483112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698502, 32.675213, 36.930283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879627, 32.878521, 37.223301>,  <36.988304, 33.000507, 37.399113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879627, 32.878521, 37.223301>,  <36.698502, 32.675213, 36.930283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879627, 32.878521, 37.223301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677839, 0.337494, -0.653171,
		-0.579218, 0.792311, -0.191705,
		0.452815, 0.508273, 0.732541,
		37.015472, 33.031002, 37.443062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790440, 33.265713, 36.612934>,  <36.698502, 32.675213, 36.930283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790440, 33.265713, 36.612934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039936, 33.281830, 36.925171>,  <37.189632, 33.291500, 37.112514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039936, 33.281830, 36.925171>,  <36.790440, 33.265713, 36.612934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039936, 33.281830, 36.925171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709145, 0.390837, -0.586821,
		-0.328727, 0.919578, 0.215210,
		0.623740, 0.040289, 0.780593,
		37.227058, 33.293915, 37.159348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162098, 33.960777, 36.671066>,  <36.790440, 33.265713, 36.612934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162098, 33.960777, 36.671066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392628, 33.711281, 36.882271>,  <37.530945, 33.561584, 37.008995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.392628, 33.711281, 36.882271>,  <37.162098, 33.960777, 36.671066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392628, 33.711281, 36.882271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811140, 0.357946, -0.462522,
		0.099494, 0.694855, 0.712234,
		0.576328, -0.623739, 0.528011,
		37.565525, 33.524158, 37.040672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761826, 34.423183, 36.844860>,  <37.162098, 33.960777, 36.671066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761826, 34.423183, 36.844860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868515, 34.038475, 36.869720>,  <37.932529, 33.807652, 36.884636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868515, 34.038475, 36.869720>,  <37.761826, 34.423183, 36.844860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868515, 34.038475, 36.869720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849438, 0.204128, -0.486608,
		0.455317, 0.182585, 0.871407,
		0.266726, -0.961766, 0.062151,
		37.948532, 33.749947, 36.888367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432533, 34.334011, 37.243660>,  <37.761826, 34.423183, 36.844860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432533, 34.334011, 37.243660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402611, 33.993092, 37.036587>,  <38.384659, 33.788540, 36.912342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402611, 33.993092, 37.036587>,  <38.432533, 34.334011, 37.243660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402611, 33.993092, 37.036587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824728, 0.238947, -0.512570,
		0.560561, -0.465289, 0.685038,
		-0.074805, -0.852297, -0.517681,
		38.380169, 33.737404, 36.881283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044228, 33.919605, 37.299854>,  <38.432533, 34.334011, 37.243660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044228, 33.919605, 37.299854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910969, 33.760544, 36.957890>,  <38.831013, 33.665108, 36.752708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910969, 33.760544, 36.957890>,  <39.044228, 33.919605, 37.299854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910969, 33.760544, 36.957890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852902, 0.259444, -0.453041,
		0.401957, -0.880090, 0.252728,
		-0.333148, -0.397656, -0.854916,
		38.811024, 33.641247, 36.701416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629917, 33.738548, 36.937035>,  <39.044228, 33.919605, 37.299854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629917, 33.738548, 36.937035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377975, 33.677177, 36.632473>,  <39.226810, 33.640354, 36.449734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377975, 33.677177, 36.632473>,  <39.629917, 33.738548, 36.937035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377975, 33.677177, 36.632473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761449, 0.071421, -0.644279,
		0.153233, -0.985575, 0.071845,
		-0.629854, -0.153431, -0.761409,
		39.189018, 33.631149, 36.404049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846394, 33.134312, 36.513721>,  <39.629917, 33.738548, 36.937035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846394, 33.134312, 36.513721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623398, 33.374184, 36.284081>,  <39.489601, 33.518108, 36.146297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623398, 33.374184, 36.284081>,  <39.846394, 33.134312, 36.513721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623398, 33.374184, 36.284081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745505, 0.057349, -0.664028,
		-0.365280, -0.798183, -0.479035,
		-0.557488, 0.599679, -0.574101,
		39.456150, 33.554089, 36.111851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254505, 33.194466, 35.933834>,  <39.846394, 33.134312, 36.513721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254505, 33.194466, 35.933834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970081, 33.453838, 35.825073>,  <39.799427, 33.609463, 35.759815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970081, 33.453838, 35.825073>,  <40.254505, 33.194466, 35.933834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970081, 33.453838, 35.825073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544319, 0.262851, -0.796634,
		-0.445090, -0.714458, -0.539856,
		-0.711064, 0.648428, -0.271901,
		39.756763, 33.648365, 35.743504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933128, 33.296143, 36.103901>,  <40.254505, 33.194466, 35.933834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933128, 33.296143, 36.103901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902477, 33.182865, 36.486298>,  <40.884087, 33.114899, 36.715736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902477, 33.182865, 36.486298>,  <40.933128, 33.296143, 36.103901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902477, 33.182865, 36.486298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871493, -0.484828, -0.073765,
		0.484383, 0.827491, 0.283956,
		-0.076630, -0.283196, 0.955996,
		40.879490, 33.097908, 36.773098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188198, 32.646839, 36.540493>,  <40.933128, 33.296143, 36.103901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188198, 32.646839, 36.540493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909557, 32.367626, 36.474167>,  <40.742371, 32.200100, 36.434372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909557, 32.367626, 36.474167>,  <41.188198, 32.646839, 36.540493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909557, 32.367626, 36.474167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113073, 0.121412, -0.986141,
		0.708489, -0.705699, -0.005648,
		-0.696604, -0.698032, -0.165815,
		40.700577, 32.158218, 36.424423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888027, 32.910423, 36.762238>,  <41.188198, 32.646839, 36.540493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888027, 32.910423, 36.762238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861813, 32.719227, 36.411869>,  <41.846085, 32.604511, 36.201649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861813, 32.719227, 36.411869>,  <41.888027, 32.910423, 36.762238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861813, 32.719227, 36.411869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997644, -0.013562, -0.067240,
		0.020261, -0.878261, 0.477752,
		-0.065534, -0.477989, -0.875918,
		41.842152, 32.575829, 36.149094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227341, 32.292732, 36.779430>,  <41.888027, 32.910423, 36.762238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227341, 32.292732, 36.779430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221062, 32.451576, 36.412376>,  <42.217297, 32.546883, 36.192142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221062, 32.451576, 36.412376>,  <42.227341, 32.292732, 36.779430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221062, 32.451576, 36.412376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996057, -0.073937, -0.049032,
		-0.087318, -0.914788, -0.394383,
		-0.015695, 0.397109, -0.917637,
		42.216354, 32.570709, 36.137085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415531, 31.816647, 36.152142>,  <42.227341, 32.292732, 36.779430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415531, 31.816647, 36.152142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496479, 32.208370, 36.152802>,  <42.545048, 32.443405, 36.153198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496479, 32.208370, 36.152802>,  <42.415531, 31.816647, 36.152142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496479, 32.208370, 36.152802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963958, -0.199491, 0.176036,
		0.172722, -0.034037, -0.984382,
		0.202367, 0.979308, 0.001646,
		42.557190, 32.502163, 36.153294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959015, 31.909569, 35.650146>,  <42.415531, 31.816647, 36.152142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959015, 31.909569, 35.650146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955753, 32.170338, 35.953442>,  <42.953796, 32.326801, 36.135418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955753, 32.170338, 35.953442>,  <42.959015, 31.909569, 35.650146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955753, 32.170338, 35.953442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879007, -0.356832, 0.316255,
		0.476739, 0.669078, -0.570136,
		-0.008156, 0.651924, 0.758240,
		42.953308, 32.365913, 36.180912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644402, 32.354446, 35.645683>,  <42.959015, 31.909569, 35.650146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644402, 32.354446, 35.645683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513344, 32.363251, 36.023502>,  <43.434708, 32.368534, 36.250195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.513344, 32.363251, 36.023502>,  <43.644402, 32.354446, 35.645683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513344, 32.363251, 36.023502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868676, -0.386135, 0.310326,
		0.371553, 0.922180, 0.107391,
		-0.327644, 0.022015, 0.944545,
		43.415051, 32.369854, 36.306866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549549, 32.986519, 35.467789>,  <43.644402, 32.354446, 35.645683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549549, 32.986519, 35.467789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552036, 32.812725, 35.828053>,  <43.553528, 32.708447, 36.044209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552036, 32.812725, 35.828053>,  <43.549549, 32.986519, 35.467789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552036, 32.812725, 35.828053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889158, 0.414521, 0.193831,
		-0.457558, 0.799620, 0.388906,
		0.006218, -0.434488, 0.900656,
		43.553902, 32.682377, 36.098248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691021, 33.490887, 35.986050>,  <43.549549, 32.986519, 35.467789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691021, 33.490887, 35.986050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843010, 33.143360, 36.113029>,  <43.934204, 32.934845, 36.189217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843010, 33.143360, 36.113029>,  <43.691021, 33.490887, 35.986050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843010, 33.143360, 36.113029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919749, 0.391379, -0.029746,
		-0.098398, 0.303274, 0.947809,
		0.379974, -0.868819, 0.317447,
		43.957001, 32.882713, 36.208263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867153, 33.693554, 36.603397>,  <43.691021, 33.490887, 35.986050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867153, 33.693554, 36.603397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057404, 33.381283, 36.441250>,  <44.171555, 33.193920, 36.343964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057404, 33.381283, 36.441250>,  <43.867153, 33.693554, 36.603397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.057404, 33.381283, 36.441250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879599, 0.426850, 0.210008,
		0.009083, -0.456446, 0.889704,
		0.475628, -0.780676, -0.405367,
		44.200092, 33.147079, 36.319641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330269, 33.412449, 37.100796>,  <43.867153, 33.693554, 36.603397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330269, 33.412449, 37.100796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436493, 33.363979, 36.718216>,  <44.500229, 33.334900, 36.488667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436493, 33.363979, 36.718216>,  <44.330269, 33.412449, 37.100796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436493, 33.363979, 36.718216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823196, 0.544883, 0.159535,
		0.501821, -0.829711, 0.244449,
		0.265564, -0.121171, -0.956448,
		44.516163, 33.327629, 36.431282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.059422, 33.138184, 37.046062>,  <44.330269, 33.412449, 37.100796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.059422, 33.138184, 37.046062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944511, 33.359257, 36.733135>,  <44.875565, 33.491901, 36.545380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944511, 33.359257, 36.733135>,  <45.059422, 33.138184, 37.046062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.944511, 33.359257, 36.733135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884806, 0.465941, 0.004263,
		0.366869, -0.690972, -0.622868,
		-0.287275, 0.552681, -0.782315,
		44.858330, 33.525063, 36.498440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.612926, 33.190956, 36.465878>,  <45.059422, 33.138184, 37.046062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.612926, 33.190956, 36.465878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.388557, 33.517925, 36.413433>,  <45.253937, 33.714108, 36.381966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.388557, 33.517925, 36.413433>,  <45.612926, 33.190956, 36.465878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.388557, 33.517925, 36.413433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799031, 0.493116, -0.344075,
		-0.216602, -0.297759, -0.929744,
		-0.560922, 0.817421, -0.131108,
		45.220280, 33.763153, 36.374100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624969, 33.345745, 35.673416>,  <45.612926, 33.190956, 36.465878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624969, 33.345745, 35.673416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.601627, 33.631268, 35.952579>,  <45.587624, 33.802582, 36.120075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.601627, 33.631268, 35.952579>,  <45.624969, 33.345745, 35.673416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.601627, 33.631268, 35.952579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863472, 0.386940, -0.323563,
		-0.501010, 0.583742, -0.638932,
		-0.058351, 0.713808, 0.697906,
		45.584122, 33.845409, 36.161953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.626961, 34.045033, 35.409393>,  <45.624969, 33.345745, 35.673416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.626961, 34.045033, 35.409393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.773735, 34.139481, 35.769306>,  <45.861797, 34.196148, 35.985252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.773735, 34.139481, 35.769306>,  <45.626961, 34.045033, 35.409393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.773735, 34.139481, 35.769306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634039, 0.644300, -0.427636,
		-0.680701, 0.727411, 0.086709,
		0.366934, 0.236116, 0.899783,
		45.883816, 34.210316, 36.039242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.453354, 34.765907, 35.668560>,  <45.626961, 34.045033, 35.409393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.453354, 34.765907, 35.668560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.805016, 34.585472, 35.730015>,  <46.016014, 34.477211, 35.766888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.805016, 34.585472, 35.730015>,  <45.453354, 34.765907, 35.668560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.805016, 34.585472, 35.730015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454760, 0.697855, -0.553347,
		0.142394, 0.556345, 0.818660,
		0.879157, -0.451087, 0.153633,
		46.068764, 34.450146, 35.776104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.954323, 35.316078, 35.918228>,  <45.453354, 34.765907, 35.668560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.954323, 35.316078, 35.918228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.150326, 35.005314, 35.760086>,  <46.267929, 34.818855, 35.665199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.150326, 35.005314, 35.760086>,  <45.954323, 35.316078, 35.918228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.150326, 35.005314, 35.760086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589324, 0.629431, -0.506472,
		0.642332, 0.015183, 0.766277,
		0.490008, -0.776908, -0.395356,
		46.297329, 34.772240, 35.641479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.734024, 35.241043, 36.127140>,  <45.954323, 35.316078, 35.918228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.734024, 35.241043, 36.127140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.673576, 35.101330, 35.757240>,  <46.637310, 35.017502, 35.535301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.673576, 35.101330, 35.757240>,  <46.734024, 35.241043, 36.127140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.673576, 35.101330, 35.757240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454285, 0.806317, -0.378786,
		0.877946, -0.477342, 0.036826,
		-0.151117, -0.349283, -0.924751,
		46.628242, 34.996544, 35.479816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.309273, 35.491512, 35.700737>,  <46.734024, 35.241043, 36.127140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.309273, 35.491512, 35.700737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.028702, 35.381855, 35.437572>,  <46.860359, 35.316059, 35.279675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.028702, 35.381855, 35.437572>,  <47.309273, 35.491512, 35.700737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.028702, 35.381855, 35.437572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398301, 0.614720, -0.680790,
		0.591065, -0.739570, -0.321990,
		-0.701426, -0.274142, -0.657911,
		46.818275, 35.299610, 35.240200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.630692, 35.349907, 35.065834>,  <47.309273, 35.491512, 35.700737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.630692, 35.349907, 35.065834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.759087, 34.972839, 35.029312>,  <47.836124, 34.746597, 35.007401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.759087, 34.972839, 35.029312>,  <47.630692, 35.349907, 35.065834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.759087, 34.972839, 35.029312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829417, -0.326337, 0.453400,
		-0.457203, -0.069806, -0.886618,
		0.320986, -0.942672, -0.091304,
		47.855381, 34.690037, 35.001923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.252167, 29.374886, 25.007910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.866924, 29.284561, 24.949341>,  <41.635780, 29.230366, 24.914200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.866924, 29.284561, 24.949341>,  <42.252167, 29.374886, 25.007910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866924, 29.284561, 24.949341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107519, -0.175912, 0.978517,
		-0.246717, 0.958157, 0.145143,
		-0.963105, -0.225811, -0.146421,
		41.577991, 29.216818, 24.905415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795536, 29.814705, 25.409958>,  <42.252167, 29.374886, 25.007910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795536, 29.814705, 25.409958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.556740, 29.506483, 25.320650>,  <41.413464, 29.321550, 25.267065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.556740, 29.506483, 25.320650>,  <41.795536, 29.814705, 25.409958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556740, 29.506483, 25.320650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339587, -0.009424, 0.940527,
		-0.726831, 0.637305, -0.256044,
		-0.596990, -0.770554, -0.223271,
		41.377644, 29.275316, 25.253670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074814, 29.846022, 25.707352>,  <41.795536, 29.814705, 25.409958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074814, 29.846022, 25.707352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.057335, 29.454716, 25.626266>,  <41.046848, 29.219933, 25.577616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.057335, 29.454716, 25.626266>,  <41.074814, 29.846022, 25.707352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057335, 29.454716, 25.626266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268614, -0.183933, 0.945524,
		-0.962256, 0.095766, -0.254738,
		-0.043694, -0.978262, -0.202715,
		41.044228, 29.161238, 25.565453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250824, 29.580584, 25.881039>,  <41.074814, 29.846022, 25.707352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250824, 29.580584, 25.881039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.519428, 29.285017, 25.903217>,  <40.680592, 29.107677, 25.916525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.519428, 29.285017, 25.903217>,  <40.250824, 29.580584, 25.881039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519428, 29.285017, 25.903217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296811, -0.199668, 0.933829,
		-0.678949, -0.643536, -0.353397,
		0.671514, -0.738914, 0.055444,
		40.720882, 29.063343, 25.919851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935608, 29.066639, 26.241985>,  <40.250824, 29.580584, 25.881039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935608, 29.066639, 26.241985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.302837, 28.909447, 26.262829>,  <40.523174, 28.815132, 26.275335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.302837, 28.909447, 26.262829>,  <39.935608, 29.066639, 26.241985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302837, 28.909447, 26.262829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146925, -0.215221, 0.965450,
		-0.368186, -0.894006, -0.255326,
		0.918070, -0.392979, 0.052110,
		40.578259, 28.791553, 26.278461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798149, 28.413256, 26.354261>,  <39.935608, 29.066639, 26.241985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798149, 28.413256, 26.354261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.160221, 28.515465, 26.490124>,  <40.377464, 28.576790, 26.571640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.160221, 28.515465, 26.490124>,  <39.798149, 28.413256, 26.354261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160221, 28.515465, 26.490124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339058, -0.047802, 0.939550,
		0.256312, -0.965621, 0.043368,
		0.905176, 0.255523, 0.339654,
		40.431774, 28.592121, 26.592020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937580, 27.988266, 26.947083>,  <39.798149, 28.413256, 26.354261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937580, 27.988266, 26.947083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.191128, 28.294060, 26.994034>,  <40.343254, 28.477535, 27.022203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.191128, 28.294060, 26.994034>,  <39.937580, 27.988266, 26.947083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191128, 28.294060, 26.994034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228986, 0.040535, 0.972585,
		0.738769, -0.643366, 0.200750,
		0.633866, 0.764485, 0.117376,
		40.381287, 28.523405, 27.029247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205715, 27.899271, 27.592619>,  <39.937580, 27.988266, 26.947083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205715, 27.899271, 27.592619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.280872, 28.286036, 27.523598>,  <40.325966, 28.518095, 27.482185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.280872, 28.286036, 27.523598>,  <40.205715, 27.899271, 27.592619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280872, 28.286036, 27.523598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316483, 0.225914, 0.921304,
		0.929803, -0.118498, 0.348460,
		0.187894, 0.966913, -0.172553,
		40.337242, 28.576109, 27.471832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541302, 28.086740, 28.131702>,  <40.205715, 27.899271, 27.592619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541302, 28.086740, 28.131702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.433521, 28.441963, 27.982704>,  <40.368855, 28.655096, 27.893305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.433521, 28.441963, 27.982704>,  <40.541302, 28.086740, 28.131702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433521, 28.441963, 27.982704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145047, 0.344965, 0.927341,
		0.952029, 0.303901, 0.035859,
		-0.269449, 0.888056, -0.372496,
		40.352688, 28.708380, 27.870955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871853, 28.596878, 28.513378>,  <40.541302, 28.086740, 28.131702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871853, 28.596878, 28.513378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.550953, 28.776638, 28.356184>,  <40.358414, 28.884493, 28.261868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.550953, 28.776638, 28.356184>,  <40.871853, 28.596878, 28.513378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550953, 28.776638, 28.356184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173896, 0.453818, 0.873962,
		0.571101, 0.769474, -0.285926,
		-0.802249, 0.449399, -0.392984,
		40.310280, 28.911457, 28.238289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875114, 29.175789, 28.831827>,  <40.871853, 28.596878, 28.513378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875114, 29.175789, 28.831827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.492851, 29.189772, 28.714869>,  <40.263493, 29.198162, 28.644693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.492851, 29.189772, 28.714869>,  <40.875114, 29.175789, 28.831827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492851, 29.189772, 28.714869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272202, 0.273960, 0.922416,
		0.112350, 0.961105, -0.252297,
		-0.955658, 0.034958, -0.292395,
		40.206154, 29.200258, 28.627150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605240, 29.771374, 29.132429>,  <40.875114, 29.175789, 28.831827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605240, 29.771374, 29.132429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.300217, 29.524889, 29.053644>,  <40.117203, 29.376999, 29.006374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.300217, 29.524889, 29.053644>,  <40.605240, 29.771374, 29.132429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300217, 29.524889, 29.053644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289955, 0.053394, 0.955550,
		-0.578304, 0.785769, -0.219389,
		-0.762555, -0.616211, -0.196960,
		40.071449, 29.340025, 28.994556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982342, 30.172930, 29.302969>,  <40.605240, 29.771374, 29.132429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982342, 30.172930, 29.302969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.899227, 29.782146, 29.322474>,  <39.849358, 29.547676, 29.334175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.899227, 29.782146, 29.322474>,  <39.982342, 30.172930, 29.302969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899227, 29.782146, 29.322474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348668, 0.120544, 0.929462,
		-0.913924, 0.176125, -0.365681,
		-0.207782, -0.976959, 0.048759,
		39.836891, 29.489059, 29.337101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547871, 30.261770, 29.760418>,  <39.982342, 30.172930, 29.302969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547871, 30.261770, 29.760418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.578156, 29.863909, 29.732313>,  <39.596325, 29.625193, 29.715450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.578156, 29.863909, 29.732313>,  <39.547871, 30.261770, 29.760418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578156, 29.863909, 29.732313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344238, -0.092203, 0.934344,
		-0.935825, -0.046551, -0.349378,
		0.075709, -0.994651, -0.070261,
		39.600868, 29.565514, 29.711235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009872, 30.258535, 30.105198>,  <39.547871, 30.261770, 29.760418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009872, 30.258535, 30.105198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.217976, 29.917339, 30.121855>,  <39.342838, 29.712622, 30.131849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.217976, 29.917339, 30.121855>,  <39.009872, 30.258535, 30.105198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217976, 29.917339, 30.121855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138370, -0.036079, 0.989723,
		-0.842722, -0.520678, -0.136799,
		0.520262, -0.852991, 0.041642,
		39.374054, 29.661442, 30.134348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582241, 29.779861, 30.410212>,  <39.009872, 30.258535, 30.105198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582241, 29.779861, 30.410212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.957184, 29.651667, 30.464851>,  <39.182148, 29.574751, 30.497635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.957184, 29.651667, 30.464851>,  <38.582241, 29.779861, 30.410212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957184, 29.651667, 30.464851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172937, -0.087669, 0.981024,
		-0.302429, -0.943188, -0.137601,
		0.937353, -0.320487, 0.136598,
		39.238388, 29.555521, 30.505831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475723, 29.299356, 30.850500>,  <38.582241, 29.779861, 30.410212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475723, 29.299356, 30.850500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.860245, 29.405615, 30.879719>,  <39.090958, 29.469370, 30.897249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.860245, 29.405615, 30.879719>,  <38.475723, 29.299356, 30.850500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860245, 29.405615, 30.879719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032283, -0.154693, 0.987435,
		0.273608, -0.951579, -0.140130,
		0.961300, 0.265646, 0.073045,
		39.148636, 29.485308, 30.901632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699059, 28.846237, 31.357458>,  <38.475723, 29.299356, 30.850500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699059, 28.846237, 31.357458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.956486, 29.152376, 31.360617>,  <39.110943, 29.336060, 31.362513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.956486, 29.152376, 31.360617>,  <38.699059, 28.846237, 31.357458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956486, 29.152376, 31.360617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064170, -0.064237, 0.995870,
		0.762693, -0.640405, -0.090453,
		0.643571, 0.765347, 0.007898,
		39.149555, 29.381981, 31.362986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125851, 28.692629, 31.986034>,  <38.699059, 28.846237, 31.357458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125851, 28.692629, 31.986034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.207054, 29.075016, 31.901258>,  <39.255775, 29.304447, 31.850393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.207054, 29.075016, 31.901258>,  <39.125851, 28.692629, 31.986034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207054, 29.075016, 31.901258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021320, 0.212079, 0.977020,
		0.978945, -0.202860, 0.022673,
		0.203007, 0.955966, -0.211938,
		39.267956, 29.361805, 31.837677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593727, 28.967178, 32.426327>,  <39.125851, 28.692629, 31.986034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593727, 28.967178, 32.426327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.433979, 29.313297, 32.305157>,  <39.338131, 29.520967, 32.232456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.433979, 29.313297, 32.305157>,  <39.593727, 28.967178, 32.426327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433979, 29.313297, 32.305157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027582, 0.318930, 0.947377,
		0.916373, 0.386713, -0.103506,
		-0.399374, 0.865296, -0.302926,
		39.314167, 29.572886, 32.214279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015064, 29.471893, 32.693420>,  <39.593727, 28.967178, 32.426327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015064, 29.471893, 32.693420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.649540, 29.619118, 32.624748>,  <39.430225, 29.707453, 32.583546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.649540, 29.619118, 32.624748>,  <40.015064, 29.471893, 32.693420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649540, 29.619118, 32.624748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008131, 0.406052, 0.913814,
		0.406052, 0.836451, -0.368063,
		-0.913814, 0.368063, -0.171680,
		39.375397, 29.729536, 32.573246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022820, 30.231680, 32.810444>,  <40.015064, 29.471893, 32.693420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022820, 30.231680, 32.810444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.651569, 30.093891, 32.866898>,  <39.428818, 30.011219, 32.900772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.651569, 30.093891, 32.866898>,  <40.022820, 30.231680, 32.810444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651569, 30.093891, 32.866898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052934, 0.497407, 0.865901,
		-0.368480, 0.796196, -0.479891,
		-0.928128, -0.344470, 0.141139,
		39.373131, 29.990551, 32.909241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614300, 30.618126, 33.280014>,  <40.022820, 30.231680, 32.810444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614300, 30.618126, 33.280014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.854893, 30.911850, 33.405876>,  <39.999249, 31.088083, 33.481396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.854893, 30.911850, 33.405876>,  <39.614300, 30.618126, 33.280014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854893, 30.911850, 33.405876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225680, 0.221648, -0.948652,
		-0.766347, 0.641610, -0.032401,
		0.601483, 0.734309, 0.314658,
		40.035339, 31.132143, 33.500275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450985, 31.251720, 32.905872>,  <39.614300, 30.618126, 33.280014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450985, 31.251720, 32.905872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.831024, 31.304434, 33.018967>,  <40.059048, 31.336061, 33.086823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.831024, 31.304434, 33.018967>,  <39.450985, 31.251720, 32.905872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831024, 31.304434, 33.018967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242604, 0.257575, -0.935307,
		-0.196085, 0.957229, 0.212751,
		0.950102, 0.131786, 0.282734,
		40.116055, 31.343969, 33.103786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629757, 31.942163, 32.726418>,  <39.450985, 31.251720, 32.905872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629757, 31.942163, 32.726418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.988266, 31.769108, 32.765438>,  <40.203373, 31.665276, 32.788853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.988266, 31.769108, 32.765438>,  <39.629757, 31.942163, 32.726418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988266, 31.769108, 32.765438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331252, 0.506774, -0.795897,
		0.294897, 0.745658, 0.597521,
		0.896275, -0.432637, 0.097554,
		40.257149, 31.639317, 32.794704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125072, 32.406574, 32.527115>,  <39.629757, 31.942163, 32.726418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125072, 32.406574, 32.527115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.310844, 32.056976, 32.469917>,  <40.422306, 31.847218, 32.435600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.310844, 32.056976, 32.469917>,  <40.125072, 32.406574, 32.527115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310844, 32.056976, 32.469917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423624, 0.361030, -0.830783,
		0.777722, 0.325261, 0.537916,
		0.464425, -0.873992, -0.142993,
		40.450172, 31.794779, 32.427021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876450, 32.578278, 32.204437>,  <40.125072, 32.406574, 32.527115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876450, 32.578278, 32.204437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.874462, 32.183113, 32.142460>,  <40.873268, 31.946014, 32.105274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.874462, 32.183113, 32.142460>,  <40.876450, 32.578278, 32.204437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874462, 32.183113, 32.142460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542907, 0.127459, -0.830064,
		0.839778, -0.088247, 0.535709,
		-0.004970, -0.987910, -0.154948,
		40.872971, 31.886740, 32.095974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525528, 32.377659, 32.132973>,  <40.876450, 32.578278, 32.204437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525528, 32.377659, 32.132973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.323715, 32.096642, 31.932219>,  <41.202629, 31.928032, 31.811766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.323715, 32.096642, 31.932219>,  <41.525528, 32.377659, 32.132973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323715, 32.096642, 31.932219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574114, 0.161178, -0.802754,
		0.644861, -0.693150, 0.322019,
		-0.504527, -0.702541, -0.501885,
		41.172356, 31.885880, 31.781652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980808, 31.879383, 31.808416>,  <41.525528, 32.377659, 32.132973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980808, 31.879383, 31.808416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.649376, 31.832912, 31.589346>,  <41.450516, 31.805029, 31.457903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.649376, 31.832912, 31.589346>,  <41.980808, 31.879383, 31.808416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649376, 31.832912, 31.589346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559466, -0.134935, -0.817796,
		0.021110, -0.984020, 0.176803,
		-0.828584, -0.116179, -0.547677,
		41.400799, 31.798059, 31.425043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116470, 31.283636, 31.382133>,  <41.980808, 31.879383, 31.808416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116470, 31.283636, 31.382133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.822433, 31.494173, 31.211203>,  <41.646011, 31.620495, 31.108644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.822433, 31.494173, 31.211203>,  <42.116470, 31.283636, 31.382133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822433, 31.494173, 31.211203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506280, 0.006952, -0.862342,
		-0.450916, -0.850244, -0.271587,
		-0.735089, 0.526343, -0.427326,
		41.601906, 31.652075, 31.083004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998974, 30.957394, 30.790163>,  <42.116470, 31.283636, 31.382133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998974, 30.957394, 30.790163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.809139, 31.305077, 30.734671>,  <41.695236, 31.513685, 30.701374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.809139, 31.305077, 30.734671>,  <41.998974, 30.957394, 30.790163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809139, 31.305077, 30.734671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405735, 0.076160, -0.910812,
		-0.781118, -0.488549, -0.388812,
		-0.474588, 0.869206, -0.138732,
		41.666763, 31.565838, 30.693050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687439, 30.860586, 30.193014>,  <41.998974, 30.957394, 30.790163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687439, 30.860586, 30.193014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.718559, 31.257248, 30.234131>,  <41.737232, 31.495245, 30.258801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.718559, 31.257248, 30.234131>,  <41.687439, 30.860586, 30.193014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718559, 31.257248, 30.234131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345977, 0.069844, -0.935640,
		-0.935012, 0.108354, -0.337656,
		0.077797, 0.991656, 0.102792,
		41.741898, 31.554745, 30.264969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422810, 31.087566, 29.620867>,  <41.687439, 30.860586, 30.193014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422810, 31.087566, 29.620867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.651863, 31.389771, 29.748173>,  <41.789295, 31.571093, 29.824556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.651863, 31.389771, 29.748173>,  <41.422810, 31.087566, 29.620867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651863, 31.389771, 29.748173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339752, 0.134607, -0.930833,
		-0.746094, 0.641159, -0.179606,
		0.572636, 0.755510, 0.318265,
		41.823654, 31.616423, 29.843653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266354, 31.721977, 29.236809>,  <41.422810, 31.087566, 29.620867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266354, 31.721977, 29.236809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.637630, 31.770973, 29.377350>,  <41.860397, 31.800371, 29.461676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.637630, 31.770973, 29.377350>,  <41.266354, 31.721977, 29.236809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637630, 31.770973, 29.377350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331103, 0.158957, -0.930110,
		-0.169781, 0.979657, 0.106985,
		0.928195, 0.122492, 0.351355,
		41.916088, 31.807720, 29.482756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631786, 32.413994, 28.942122>,  <41.266354, 31.721977, 29.236809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631786, 32.413994, 28.942122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.810394, 32.066593, 29.028206>,  <41.917561, 31.858152, 29.079857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.810394, 32.066593, 29.028206>,  <41.631786, 32.413994, 28.942122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810394, 32.066593, 29.028206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279763, -0.092947, -0.955559,
		0.849911, 0.486887, 0.201473,
		0.446523, -0.868506, 0.215210,
		41.944351, 31.806042, 29.092770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279251, 32.370853, 28.554255>,  <41.631786, 32.413994, 28.942122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279251, 32.370853, 28.554255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.174892, 32.002842, 28.671196>,  <42.112278, 31.782034, 28.741362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.174892, 32.002842, 28.671196>,  <42.279251, 32.370853, 28.554255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174892, 32.002842, 28.671196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020465, -0.297505, -0.954501,
		0.965149, -0.255012, 0.058791,
		-0.260900, -0.920032, 0.292355,
		42.096622, 31.726831, 28.758902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665516, 31.958059, 28.132956>,  <42.279251, 32.370853, 28.554255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665516, 31.958059, 28.132956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.361839, 31.738024, 28.272114>,  <42.179634, 31.606003, 28.355608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.361839, 31.738024, 28.272114>,  <42.665516, 31.958059, 28.132956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361839, 31.738024, 28.272114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016512, -0.550616, -0.834595,
		0.650656, -0.627875, 0.427107,
		-0.759193, -0.550087, 0.347894,
		42.134083, 31.572998, 28.376482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872501, 31.363943, 28.135895>,  <42.665516, 31.958059, 28.132956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872501, 31.363943, 28.135895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.477955, 31.304298, 28.108068>,  <42.241226, 31.268511, 28.091373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.477955, 31.304298, 28.108068>,  <42.872501, 31.363943, 28.135895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477955, 31.304298, 28.108068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145619, -0.594244, -0.790993,
		0.076608, -0.790342, 0.607858,
		-0.986370, -0.149112, -0.069566,
		42.182045, 31.259565, 28.087198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892067, 30.717405, 28.085045>,  <42.872501, 31.363943, 28.135895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892067, 30.717405, 28.085045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.538555, 30.835701, 27.940004>,  <42.326450, 30.906677, 27.852980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.538555, 30.835701, 27.940004>,  <42.892067, 30.717405, 28.085045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538555, 30.835701, 27.940004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173714, -0.512179, -0.841128,
		-0.434469, -0.806358, 0.401278,
		-0.883777, 0.295736, -0.362601,
		42.273422, 30.924421, 27.831224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610294, 30.149790, 27.743147>,  <42.892067, 30.717405, 28.085045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610294, 30.149790, 27.743147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.425262, 30.472479, 27.596056>,  <42.314243, 30.666092, 27.507801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.425262, 30.472479, 27.596056>,  <42.610294, 30.149790, 27.743147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425262, 30.472479, 27.596056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195536, -0.311723, -0.929836,
		-0.864746, -0.502027, -0.013546,
		-0.462580, 0.806720, -0.367725,
		42.286488, 30.714495, 27.485739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.248783, 29.917154, 27.115461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.254398, 30.312290, 27.053522>,  <42.257767, 30.549372, 27.016359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.254398, 30.312290, 27.053522>,  <42.248783, 29.917154, 27.115461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254398, 30.312290, 27.053522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200527, -0.154499, -0.967429,
		-0.979587, -0.017468, -0.200258,
		0.014040, 0.987838, -0.154848,
		42.258610, 30.608643, 27.007067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935364, 30.037689, 26.428438>,  <42.248783, 29.917154, 27.115461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935364, 30.037689, 26.428438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.128067, 30.384008, 26.482548>,  <42.243690, 30.591801, 26.515015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.128067, 30.384008, 26.482548>,  <41.935364, 30.037689, 26.428438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128067, 30.384008, 26.482548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403618, -0.082212, -0.911227,
		-0.777818, 0.493592, -0.389058,
		0.481759, 0.865799, 0.135276,
		42.272594, 30.643747, 26.523130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780388, 30.433546, 25.881630>,  <41.935364, 30.037689, 26.428438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780388, 30.433546, 25.881630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.133728, 30.541105, 26.035196>,  <42.345730, 30.605640, 26.127337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.133728, 30.541105, 26.035196>,  <41.780388, 30.433546, 25.881630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133728, 30.541105, 26.035196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393455, 0.019756, -0.919131,
		-0.254738, 0.962966, -0.088348,
		0.883347, 0.268899, 0.383916,
		42.398731, 30.621775, 26.150372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957558, 30.832064, 25.293816>,  <41.780388, 30.433546, 25.881630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957558, 30.832064, 25.293816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.291660, 30.787848, 25.509268>,  <42.492123, 30.761318, 25.638538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.291660, 30.787848, 25.509268>,  <41.957558, 30.832064, 25.293816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291660, 30.787848, 25.509268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534146, -0.069376, -0.842541,
		0.130502, 0.991447, 0.001098,
		0.835259, -0.110540, 0.538631,
		42.542236, 30.754686, 25.670856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513535, 31.315260, 25.030270>,  <41.957558, 30.832064, 25.293816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513535, 31.315260, 25.030270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.717777, 31.034847, 25.229404>,  <42.840321, 30.866600, 25.348885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.717777, 31.034847, 25.229404>,  <42.513535, 31.315260, 25.030270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717777, 31.034847, 25.229404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627583, -0.091913, -0.773106,
		0.587729, 0.707183, 0.393023,
		0.510603, -0.701031, 0.497836,
		42.870956, 30.824537, 25.378756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159313, 31.407763, 24.842514>,  <42.513535, 31.315260, 25.030270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159313, 31.407763, 24.842514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.170040, 31.036537, 24.991096>,  <43.176476, 30.813803, 25.080246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.170040, 31.036537, 24.991096>,  <43.159313, 31.407763, 24.842514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170040, 31.036537, 24.991096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667226, -0.260081, -0.697973,
		0.744372, 0.266563, 0.612253,
		0.026818, -0.928064, 0.371455,
		43.178085, 30.758118, 25.102533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797695, 31.328083, 24.854950>,  <43.159313, 31.407763, 24.842514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797695, 31.328083, 24.854950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.649181, 30.956724, 24.860945>,  <43.560074, 30.733908, 24.864542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.649181, 30.956724, 24.860945>,  <43.797695, 31.328083, 24.854950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649181, 30.956724, 24.860945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683484, -0.284193, -0.672372,
		0.628489, -0.239396, 0.740062,
		-0.371283, -0.928399, 0.014989,
		43.537796, 30.678205, 24.865440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397804, 30.833553, 25.010954>,  <43.797695, 31.328083, 24.854950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397804, 30.833553, 25.010954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.105949, 30.654934, 24.803791>,  <43.930836, 30.547762, 24.679493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.105949, 30.654934, 24.803791>,  <44.397804, 30.833553, 25.010954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.105949, 30.654934, 24.803791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630013, -0.144442, -0.763033,
		0.265924, -0.883024, 0.386722,
		-0.729635, -0.446549, -0.517906,
		43.887058, 30.520969, 24.648418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685387, 30.252626, 24.906918>,  <44.397804, 30.833553, 25.010954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685387, 30.252626, 24.906918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.398350, 30.284983, 24.630219>,  <44.226128, 30.304396, 24.464199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.398350, 30.284983, 24.630219>,  <44.685387, 30.252626, 24.906918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398350, 30.284983, 24.630219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662354, -0.227743, -0.713737,
		-0.215279, -0.970355, 0.109845,
		-0.717595, 0.080897, -0.691746,
		44.183071, 30.309250, 24.422695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816357, 29.639942, 24.532457>,  <44.685387, 30.252626, 24.906918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816357, 29.639942, 24.532457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.587051, 29.877422, 24.306574>,  <44.449471, 30.019911, 24.171043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.587051, 29.877422, 24.306574>,  <44.816357, 29.639942, 24.532457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.587051, 29.877422, 24.306574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608796, -0.152650, -0.778502,
		-0.548400, -0.790074, -0.273935,
		-0.573259, 0.593701, -0.564707,
		44.415073, 30.055532, 24.137161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769958, 29.324627, 23.778116>,  <44.816357, 29.639942, 24.532457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769958, 29.324627, 23.778116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.631622, 29.693708, 23.709988>,  <44.548622, 29.915157, 23.669111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.631622, 29.693708, 23.709988>,  <44.769958, 29.324627, 23.778116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631622, 29.693708, 23.709988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574092, 0.064506, -0.816246,
		-0.742168, -0.380070, -0.552027,
		-0.345840, 0.922706, -0.170321,
		44.527870, 29.970520, 23.658892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786289, 29.392756, 23.077387>,  <44.769958, 29.324627, 23.778116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786289, 29.392756, 23.077387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.786079, 29.764160, 23.225910>,  <44.785954, 29.987003, 23.315023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.786079, 29.764160, 23.225910>,  <44.786289, 29.392756, 23.077387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786079, 29.764160, 23.225910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715985, 0.259562, -0.648069,
		-0.698116, 0.265513, -0.664934,
		-0.000521, 0.928510, 0.371307,
		44.785923, 30.042713, 23.337303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628696, 29.836266, 22.539446>,  <44.786289, 29.392756, 23.077387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628696, 29.836266, 22.539446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.800659, 30.087387, 22.798998>,  <44.903835, 30.238060, 22.954729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.800659, 30.087387, 22.798998>,  <44.628696, 29.836266, 22.539446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800659, 30.087387, 22.798998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535874, 0.400991, -0.742997,
		-0.726652, 0.667135, -0.164036,
		0.429903, 0.627803, 0.648882,
		44.929630, 30.275728, 22.993662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562756, 30.580173, 22.208239>,  <44.628696, 29.836266, 22.539446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562756, 30.580173, 22.208239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.853802, 30.638702, 22.476316>,  <45.028431, 30.673819, 22.637163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.853802, 30.638702, 22.476316>,  <44.562756, 30.580173, 22.208239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.853802, 30.638702, 22.476316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502615, 0.551180, -0.666017,
		-0.466850, 0.821457, 0.327507,
		0.727619, 0.146320, 0.670194,
		45.072086, 30.682598, 22.677374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.839619, 31.385391, 22.212517>,  <44.562756, 30.580173, 22.208239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.839619, 31.385391, 22.212517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.129395, 31.146696, 22.350557>,  <45.303261, 31.003479, 22.433382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.129395, 31.146696, 22.350557>,  <44.839619, 31.385391, 22.212517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129395, 31.146696, 22.350557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664323, 0.470705, -0.580613,
		0.184032, 0.649877, 0.737422,
		0.724436, -0.596738, 0.345103,
		45.346725, 30.967674, 22.454088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.364128, 31.818308, 22.265244>,  <44.839619, 31.385391, 22.212517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.364128, 31.818308, 22.265244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.549564, 31.463900, 22.262247>,  <45.660824, 31.251255, 22.260448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.549564, 31.463900, 22.262247>,  <45.364128, 31.818308, 22.265244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.549564, 31.463900, 22.262247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715379, 0.379265, -0.586849,
		0.522801, 0.266696, 0.809662,
		0.463587, -0.886020, -0.007491,
		45.688641, 31.198093, 22.260000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.960747, 32.098377, 22.288467>,  <45.364128, 31.818308, 22.265244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.960747, 32.098377, 22.288467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.001457, 31.720812, 22.162817>,  <46.025883, 31.494274, 22.087427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.001457, 31.720812, 22.162817>,  <45.960747, 32.098377, 22.288467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.001457, 31.720812, 22.162817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683943, 0.295691, -0.666925,
		0.722401, -0.146970, 0.675674,
		0.101773, -0.943910, -0.314126,
		46.031990, 31.437639, 22.068579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.624065, 31.946394, 22.419127>,  <45.960747, 32.098377, 22.288467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.624065, 31.946394, 22.419127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.488281, 31.702681, 22.132479>,  <46.406811, 31.556454, 21.960489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.488281, 31.702681, 22.132479>,  <46.624065, 31.946394, 22.419127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.488281, 31.702681, 22.132479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718934, 0.323215, -0.615358,
		0.606549, -0.724090, 0.328316,
		-0.339457, -0.609283, -0.716619,
		46.386444, 31.519896, 21.917494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.174068, 31.783142, 22.016136>,  <46.624065, 31.946394, 22.419127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.174068, 31.783142, 22.016136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.877205, 31.676628, 21.770113>,  <46.699089, 31.612720, 21.622499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.877205, 31.676628, 21.770113>,  <47.174068, 31.783142, 22.016136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.877205, 31.676628, 21.770113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608806, 0.115935, -0.784802,
		0.280288, -0.956896, 0.076074,
		-0.742155, -0.266285, -0.615060,
		46.654560, 31.596743, 21.585594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.530861, 31.350182, 21.482578>,  <47.174068, 31.783142, 22.016136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.530861, 31.350182, 21.482578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.179375, 31.464811, 21.329874>,  <46.968483, 31.533588, 21.238253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.179375, 31.464811, 21.329874>,  <47.530861, 31.350182, 21.482578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.179375, 31.464811, 21.329874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457952, 0.280412, -0.843593,
		-0.134700, -0.916103, -0.377638,
		-0.878712, 0.286573, -0.381759,
		46.915760, 31.550783, 21.215345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.536785, 31.098267, 20.752310>,  <47.530861, 31.350182, 21.482578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.536785, 31.098267, 20.752310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.253613, 31.380611, 20.762054>,  <47.083710, 31.550018, 20.767900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.253613, 31.380611, 20.762054>,  <47.536785, 31.098267, 20.752310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.253613, 31.380611, 20.762054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326935, 0.358075, -0.874583,
		-0.626059, -0.611179, -0.484263,
		-0.707930, 0.705863, 0.024361,
		47.041233, 31.592371, 20.769363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.231327, 31.103006, 20.081694>,  <47.536785, 31.098267, 20.752310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.231327, 31.103006, 20.081694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.171722, 31.470165, 20.228802>,  <47.135960, 31.690460, 20.317066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.171722, 31.470165, 20.228802>,  <47.231327, 31.103006, 20.081694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.171722, 31.470165, 20.228802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375747, 0.396589, -0.837575,
		-0.914663, 0.013379, -0.403995,
		-0.149014, 0.917899, 0.367772,
		47.127018, 31.745535, 20.339134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.564060, 31.529011, 19.763575>,  <47.231327, 31.103006, 20.081694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.564060, 31.529011, 19.763575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.892048, 31.729900, 19.873426>,  <47.088840, 31.850433, 19.939337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.892048, 31.729900, 19.873426>,  <46.564060, 31.529011, 19.763575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892048, 31.729900, 19.873426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031765, 0.439113, -0.897870,
		-0.571525, 0.744950, 0.344106,
		0.819970, 0.502224, 0.274627,
		47.138039, 31.880568, 19.955814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.392796, 32.173153, 19.444454>,  <46.564060, 31.529011, 19.763575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.392796, 32.173153, 19.444454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.787281, 32.189125, 19.508688>,  <47.023972, 32.198708, 19.547228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.787281, 32.189125, 19.508688>,  <46.392796, 32.173153, 19.444454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.787281, 32.189125, 19.508688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098793, 0.636436, -0.764977,
		-0.132748, 0.770295, 0.623717,
		0.986214, 0.039931, 0.160585,
		47.083145, 32.201103, 19.556864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.777355, 32.317898, 19.448187>,  <46.392796, 32.173153, 19.444454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.777355, 32.317898, 19.448187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.548161, 32.403522, 19.131741>,  <45.410645, 32.454895, 18.941874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.548161, 32.403522, 19.131741>,  <45.777355, 32.317898, 19.448187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548161, 32.403522, 19.131741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809575, 0.002423, 0.587012,
		0.127572, 0.976818, 0.171909,
		-0.572987, 0.214060, -0.791116,
		45.376266, 32.467739, 18.894405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374931, 32.956097, 19.530123>,  <45.777355, 32.317898, 19.448187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374931, 32.956097, 19.530123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.199627, 32.721378, 19.257772>,  <45.094444, 32.580547, 19.094362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.199627, 32.721378, 19.257772>,  <45.374931, 32.956097, 19.530123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.199627, 32.721378, 19.257772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831987, -0.021860, 0.554365,
		-0.340185, 0.809437, -0.478629,
		-0.438260, -0.586800, -0.680877,
		45.068150, 32.545338, 19.053509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765923, 33.334187, 19.319988>,  <45.374931, 32.956097, 19.530123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765923, 33.334187, 19.319988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.724991, 32.937290, 19.291731>,  <44.700432, 32.699154, 19.274776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.724991, 32.937290, 19.291731>,  <44.765923, 33.334187, 19.319988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.724991, 32.937290, 19.291731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800610, 0.040003, 0.597849,
		-0.590384, 0.117735, -0.798490,
		-0.102330, -0.992239, -0.070642,
		44.694290, 32.639618, 19.270538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111439, 33.172447, 19.361652>,  <44.765923, 33.334187, 19.319988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111439, 33.172447, 19.361652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.237457, 32.795601, 19.407539>,  <44.313068, 32.569492, 19.435072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.237457, 32.795601, 19.407539>,  <44.111439, 33.172447, 19.361652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237457, 32.795601, 19.407539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769848, -0.182990, 0.611432,
		-0.555049, -0.280944, -0.782938,
		0.315047, -0.942118, 0.114716,
		44.331970, 32.512966, 19.441954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489563, 32.785530, 19.476318>,  <44.111439, 33.172447, 19.361652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489563, 32.785530, 19.476318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.751556, 32.503937, 19.586151>,  <43.908752, 32.334980, 19.652050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.751556, 32.503937, 19.586151>,  <43.489563, 32.785530, 19.476318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751556, 32.503937, 19.586151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682047, -0.394366, 0.615863,
		-0.325276, -0.590658, -0.738457,
		0.654986, -0.703988, 0.274579,
		43.948051, 32.292740, 19.668526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185963, 32.121727, 19.341446>,  <43.489563, 32.785530, 19.476318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185963, 32.121727, 19.341446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.473976, 32.087116, 19.616856>,  <43.646782, 32.066349, 19.782103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.473976, 32.087116, 19.616856>,  <43.185963, 32.121727, 19.341446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473976, 32.087116, 19.616856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666576, -0.362123, 0.651571,
		0.192954, -0.928106, -0.318415,
		0.720032, -0.086525, 0.688526,
		43.689987, 32.061157, 19.823414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110950, 31.449812, 19.634563>,  <43.185963, 32.121727, 19.341446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110950, 31.449812, 19.634563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.303658, 31.692053, 19.887907>,  <43.419281, 31.837397, 20.039913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.303658, 31.692053, 19.887907>,  <43.110950, 31.449812, 19.634563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303658, 31.692053, 19.887907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511657, -0.392364, 0.764368,
		0.711410, -0.692312, 0.120831,
		0.481771, 0.605603, 0.633357,
		43.448189, 31.873734, 20.077915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445171, 31.055260, 20.090019>,  <43.110950, 31.449812, 19.634563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445171, 31.055260, 20.090019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.407658, 31.394688, 20.298302>,  <43.385151, 31.598345, 20.423271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.407658, 31.394688, 20.298302>,  <43.445171, 31.055260, 20.090019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407658, 31.394688, 20.298302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523075, -0.487005, 0.699441,
		0.847111, -0.206772, 0.489539,
		-0.093783, 0.848570, 0.520705,
		43.379524, 31.649260, 20.454514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513794, 30.804361, 20.771383>,  <43.445171, 31.055260, 20.090019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513794, 30.804361, 20.771383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.346836, 31.166468, 20.803072>,  <43.246662, 31.383732, 20.822084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.346836, 31.166468, 20.803072>,  <43.513794, 30.804361, 20.771383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346836, 31.166468, 20.803072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581313, -0.333003, 0.742418,
		0.698465, 0.263831, 0.665237,
		-0.417398, 0.905264, 0.079222,
		43.221615, 31.438047, 20.826839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703991, 30.999933, 21.442539>,  <43.513794, 30.804361, 20.771383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703991, 30.999933, 21.442539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.369572, 31.188431, 21.330147>,  <43.168919, 31.301529, 21.262711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.369572, 31.188431, 21.330147>,  <43.703991, 30.999933, 21.442539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369572, 31.188431, 21.330147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442393, -0.276105, 0.853261,
		0.324512, 0.837674, 0.439311,
		-0.836051, 0.471242, -0.280982,
		43.118755, 31.329803, 21.245852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504200, 31.291374, 22.019609>,  <43.703991, 30.999933, 21.442539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504200, 31.291374, 22.019609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.161438, 31.329163, 21.816914>,  <42.955780, 31.351835, 21.695297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.161438, 31.329163, 21.816914>,  <43.504200, 31.291374, 22.019609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161438, 31.329163, 21.816914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508819, -0.312406, 0.802188,
		-0.082526, 0.945240, 0.315771,
		-0.856909, 0.094469, -0.506737,
		42.904366, 31.357504, 21.664892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033318, 31.450476, 22.573984>,  <43.504200, 31.291374, 22.019609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033318, 31.450476, 22.573984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.818981, 31.326849, 22.259697>,  <42.690380, 31.252674, 22.071125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.818981, 31.326849, 22.259697>,  <43.033318, 31.450476, 22.573984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818981, 31.326849, 22.259697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579493, -0.542176, 0.608467,
		-0.614054, 0.781360, 0.111419,
		-0.535841, -0.309065, -0.785718,
		42.658230, 31.234129, 22.023981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324471, 31.479675, 22.856138>,  <43.033318, 31.450476, 22.573984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324471, 31.479675, 22.856138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.345585, 31.218449, 22.553955>,  <42.358253, 31.061712, 22.372644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.345585, 31.218449, 22.553955>,  <42.324471, 31.479675, 22.856138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345585, 31.218449, 22.553955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548556, -0.651113, 0.524535,
		-0.834446, 0.386724, -0.392613,
		0.052785, -0.653067, -0.755459,
		42.361420, 31.022530, 22.327318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619850, 31.180071, 22.851986>,  <42.324471, 31.479675, 22.856138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619850, 31.180071, 22.851986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.862839, 30.913670, 22.678820>,  <42.008633, 30.753830, 22.574921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.862839, 30.913670, 22.678820>,  <41.619850, 31.180071, 22.851986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862839, 30.913670, 22.678820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473589, -0.741209, 0.475735,
		-0.637720, -0.083974, -0.765677,
		0.607476, -0.666001, -0.432915,
		42.045082, 30.713869, 22.548944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240768, 30.682020, 22.830418>,  <41.619850, 31.180071, 22.851986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240768, 30.682020, 22.830418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.584698, 30.488180, 22.766092>,  <41.791058, 30.371876, 22.727497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.584698, 30.488180, 22.766092>,  <41.240768, 30.682020, 22.830418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584698, 30.488180, 22.766092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336787, -0.775010, 0.534728,
		-0.383760, -0.405614, -0.829581,
		0.859827, -0.484600, -0.160812,
		41.842648, 30.342800, 22.717848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997532, 30.064850, 22.652096>,  <41.240768, 30.682020, 22.830418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997532, 30.064850, 22.652096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.364677, 29.996746, 22.795504>,  <41.584965, 29.955883, 22.881548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.364677, 29.996746, 22.795504>,  <40.997532, 30.064850, 22.652096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364677, 29.996746, 22.795504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388514, -0.570092, 0.723915,
		0.081136, -0.803745, -0.589415,
		0.917864, -0.170260, 0.358521,
		41.640038, 29.945667, 22.903061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156494, 29.270491, 22.824183>,  <40.997532, 30.064850, 22.652096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156494, 29.270491, 22.824183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.387707, 29.506203, 23.049969>,  <41.526436, 29.647631, 23.185440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.387707, 29.506203, 23.049969>,  <41.156494, 29.270491, 22.824183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387707, 29.506203, 23.049969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156203, -0.599041, 0.785335,
		0.800922, -0.542122, -0.254219,
		0.578035, 0.589283, 0.564466,
		41.561119, 29.682987, 23.219309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667969, 28.778975, 23.128380>,  <41.156494, 29.270491, 22.824183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667969, 28.778975, 23.128380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.628086, 29.106653, 23.354292>,  <41.604156, 29.303261, 23.489840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.628086, 29.106653, 23.354292>,  <41.667969, 28.778975, 23.128380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628086, 29.106653, 23.354292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058624, -0.561786, 0.825202,
		0.993289, 0.115384, 0.007986,
		-0.099702, 0.819196, 0.564780,
		41.598175, 29.352411, 23.523726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120045, 28.682379, 23.708529>,  <41.667969, 28.778975, 23.128380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120045, 28.682379, 23.708529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.882549, 28.970316, 23.852364>,  <41.740051, 29.143078, 23.938665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.882549, 28.970316, 23.852364>,  <42.120045, 28.682379, 23.708529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882549, 28.970316, 23.852364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026223, -0.429334, 0.902765,
		0.804232, 0.545433, 0.236035,
		-0.593736, 0.719843, 0.359587,
		41.704430, 29.186270, 23.960239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323330, 28.718796, 24.360043>,  <42.120045, 28.682379, 23.708529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323330, 28.718796, 24.360043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.973099, 28.908224, 24.398191>,  <41.762962, 29.021881, 24.421082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.973099, 28.908224, 24.398191>,  <42.323330, 28.718796, 24.360043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973099, 28.908224, 24.398191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083846, -0.343409, 0.935436,
		0.475749, 0.811048, 0.340388,
		-0.875576, 0.473573, 0.095374,
		41.710426, 29.050297, 24.426804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.085773, 32.031288, 30.053326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.734688, 31.943989, 29.882690>,  <42.524036, 31.891609, 29.780310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.734688, 31.943989, 29.882690>,  <43.085773, 32.031288, 30.053326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734688, 31.943989, 29.882690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447359, 0.054235, 0.892709,
		-0.171697, 0.974385, -0.145239,
		-0.877719, -0.218249, -0.426588,
		42.471371, 31.878513, 29.754715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508724, 32.646511, 30.253342>,  <43.085773, 32.031288, 30.053326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508724, 32.646511, 30.253342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.320263, 32.314575, 30.133753>,  <42.207188, 32.115414, 30.062000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.320263, 32.314575, 30.133753>,  <42.508724, 32.646511, 30.253342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320263, 32.314575, 30.133753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706921, 0.152536, 0.690649,
		-0.527524, 0.536747, -0.658499,
		-0.471149, -0.829840, -0.298971,
		42.178917, 32.065624, 30.044062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932373, 32.818707, 30.584988>,  <42.508724, 32.646511, 30.253342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932373, 32.818707, 30.584988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.875267, 32.441650, 30.464291>,  <41.841003, 32.215416, 30.391872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.875267, 32.441650, 30.464291>,  <41.932373, 32.818707, 30.584988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875267, 32.441650, 30.464291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655460, -0.138387, 0.742443,
		-0.741613, 0.303774, -0.598106,
		-0.142765, -0.942640, -0.301741,
		41.832436, 32.158859, 30.373768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180065, 32.708088, 30.400610>,  <41.932373, 32.818707, 30.584988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180065, 32.708088, 30.400610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.351879, 32.367989, 30.522322>,  <41.454967, 32.163929, 30.595348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.351879, 32.367989, 30.522322>,  <41.180065, 32.708088, 30.400610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351879, 32.367989, 30.522322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743559, -0.141779, 0.653467,
		-0.512466, -0.506935, -0.693106,
		0.429533, -0.850245, 0.304278,
		41.480740, 32.112915, 30.613605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596172, 32.278839, 30.552578>,  <41.180065, 32.708088, 30.400610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596172, 32.278839, 30.552578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.905872, 32.089760, 30.720903>,  <41.091694, 31.976311, 30.821899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.905872, 32.089760, 30.720903>,  <40.596172, 32.278839, 30.552578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905872, 32.089760, 30.720903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618897, -0.426545, 0.659565,
		-0.132280, -0.771112, -0.622807,
		0.774254, -0.472700, 0.420816,
		41.138149, 31.947950, 30.847147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302109, 31.658175, 30.784407>,  <40.596172, 32.278839, 30.552578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302109, 31.658175, 30.784407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.650703, 31.686308, 30.978550>,  <40.859859, 31.703188, 31.095036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.650703, 31.686308, 30.978550>,  <40.302109, 31.658175, 30.784407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650703, 31.686308, 30.978550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436844, -0.338483, 0.833424,
		0.222902, -0.938340, -0.264257,
		0.871482, 0.070333, 0.485357,
		40.912148, 31.707407, 31.124157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315170, 31.080612, 31.234282>,  <40.302109, 31.658175, 30.784407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315170, 31.080612, 31.234282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.602699, 31.309320, 31.392458>,  <40.775215, 31.446545, 31.487364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.602699, 31.309320, 31.392458>,  <40.315170, 31.080612, 31.234282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602699, 31.309320, 31.392458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352899, -0.189970, 0.916173,
		0.598962, -0.798117, 0.065222,
		0.718823, 0.571769, 0.395440,
		40.818348, 31.480852, 31.511089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736782, 30.650488, 31.708607>,  <40.315170, 31.080612, 31.234282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736782, 30.650488, 31.708607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.774761, 31.024790, 31.844460>,  <40.797550, 31.249371, 31.925972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.774761, 31.024790, 31.844460>,  <40.736782, 30.650488, 31.708607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774761, 31.024790, 31.844460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179299, -0.319520, 0.930462,
		0.979202, -0.149245, 0.137441,
		0.094951, 0.935753, 0.339634,
		40.803246, 31.305515, 31.946350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054642, 30.624067, 32.353275>,  <40.736782, 30.650488, 31.708607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054642, 30.624067, 32.353275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.876068, 30.980114, 32.389923>,  <40.768925, 31.193741, 32.411911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.876068, 30.980114, 32.389923>,  <41.054642, 30.624067, 32.353275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876068, 30.980114, 32.389923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132094, -0.166819, 0.977099,
		0.885014, 0.424107, 0.192052,
		-0.446432, 0.890115, 0.091616,
		40.742138, 31.247149, 32.417408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380032, 30.980272, 32.899914>,  <41.054642, 30.624067, 32.353275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380032, 30.980272, 32.899914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.028381, 31.166660, 32.859894>,  <40.817390, 31.278494, 32.835884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.028381, 31.166660, 32.859894>,  <41.380032, 30.980272, 32.899914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028381, 31.166660, 32.859894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170113, -0.110708, 0.979186,
		0.445197, 0.877846, 0.176594,
		-0.879125, 0.465972, -0.100046,
		40.764645, 31.306452, 32.829880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351280, 31.498299, 33.360733>,  <41.380032, 30.980272, 32.899914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351280, 31.498299, 33.360733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957737, 31.457357, 33.302021>,  <40.721611, 31.432793, 33.266796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957737, 31.457357, 33.302021>,  <41.351280, 31.498299, 33.360733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957737, 31.457357, 33.302021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137007, -0.096743, 0.985835,
		-0.115104, 0.990032, 0.081158,
		-0.983860, -0.102354, -0.146777,
		40.662579, 31.426651, 33.257988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998417, 31.915939, 33.859226>,  <41.351280, 31.498299, 33.360733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998417, 31.915939, 33.859226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.724174, 31.643229, 33.757145>,  <40.559628, 31.479603, 33.695896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.724174, 31.643229, 33.757145>,  <40.998417, 31.915939, 33.859226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724174, 31.643229, 33.757145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288230, -0.067684, 0.955166,
		-0.668481, 0.728424, -0.150103,
		-0.685607, -0.681775, -0.255199,
		40.518494, 31.438696, 33.680584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368942, 31.919277, 34.207016>,  <40.998417, 31.915939, 33.859226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368942, 31.919277, 34.207016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366623, 31.524042, 34.145504>,  <40.365231, 31.286901, 34.108597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.366623, 31.524042, 34.145504>,  <40.368942, 31.919277, 34.207016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366623, 31.524042, 34.145504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184236, -0.150096, 0.971354,
		-0.982865, 0.033962, -0.181171,
		-0.005796, -0.988088, -0.153781,
		40.364883, 31.227615, 34.099369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883896, 32.030754, 34.836330>,  <40.368942, 31.919277, 34.207016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883896, 32.030754, 34.836330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.853733, 31.682644, 35.031036>,  <39.835636, 31.473780, 35.147861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.853733, 31.682644, 35.031036>,  <39.883896, 32.030754, 34.836330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853733, 31.682644, 35.031036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008132, 0.488677, 0.872427,
		-0.997120, 0.061827, -0.043925,
		-0.075405, -0.870271, 0.486767,
		39.831112, 31.421562, 35.177067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605484, 32.744709, 35.069725>,  <39.883896, 32.030754, 34.836330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605484, 32.744709, 35.069725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.446709, 33.105877, 35.135658>,  <39.351444, 33.322578, 35.175217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.446709, 33.105877, 35.135658>,  <39.605484, 32.744709, 35.069725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446709, 33.105877, 35.135658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526333, 0.371045, -0.765048,
		-0.751938, -0.216924, -0.622521,
		-0.396941, 0.902923, 0.164829,
		39.327625, 33.376755, 35.185108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366817, 32.898144, 34.371979>,  <39.605484, 32.744709, 35.069725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366817, 32.898144, 34.371979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.436619, 33.212322, 34.609509>,  <39.478500, 33.400829, 34.752026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.436619, 33.212322, 34.609509>,  <39.366817, 32.898144, 34.371979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436619, 33.212322, 34.609509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382342, 0.501703, -0.775957,
		-0.907393, 0.362453, -0.212758,
		0.174507, 0.785444, 0.593822,
		39.488972, 33.447956, 34.787655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066204, 33.490444, 34.128811>,  <39.366817, 32.898144, 34.371979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066204, 33.490444, 34.128811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.372875, 33.618187, 34.351601>,  <39.556877, 33.694832, 34.485275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.372875, 33.618187, 34.351601>,  <39.066204, 33.490444, 34.128811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372875, 33.618187, 34.351601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415654, 0.414280, -0.809694,
		-0.489319, 0.852283, 0.184880,
		0.766680, 0.319353, 0.556970,
		39.602879, 33.713993, 34.518692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988056, 34.186272, 34.167641>,  <39.066204, 33.490444, 34.128811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988056, 34.186272, 34.167641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.369030, 34.077229, 34.222130>,  <39.597614, 34.011803, 34.254822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.369030, 34.077229, 34.222130>,  <38.988056, 34.186272, 34.167641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369030, 34.077229, 34.222130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253231, 0.459260, -0.851442,
		0.169549, 0.845437, 0.506447,
		0.952432, -0.272610, 0.136224,
		39.654758, 33.995445, 34.262997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411659, 34.692402, 33.879597>,  <38.988056, 34.186272, 34.167641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411659, 34.692402, 33.879597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.700695, 34.418781, 33.919476>,  <39.874119, 34.254608, 33.943405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.700695, 34.418781, 33.919476>,  <39.411659, 34.692402, 33.879597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700695, 34.418781, 33.919476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497816, 0.414860, -0.761623,
		0.479625, 0.599975, 0.640305,
		0.722592, -0.684047, 0.099700,
		39.917473, 34.213566, 33.949387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993320, 35.100632, 33.652023>,  <39.411659, 34.692402, 33.879597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993320, 35.100632, 33.652023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.133015, 34.726303, 33.632915>,  <40.216831, 34.501705, 33.621452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.133015, 34.726303, 33.632915>,  <39.993320, 35.100632, 33.652023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133015, 34.726303, 33.632915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602273, 0.263227, -0.753644,
		0.717847, 0.234428, 0.655545,
		0.349232, -0.935818, -0.047767,
		40.237785, 34.445557, 33.618584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702122, 35.294193, 33.670326>,  <39.993320, 35.100632, 33.652023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702122, 35.294193, 33.670326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.622818, 34.932457, 33.519138>,  <40.575237, 34.715416, 33.428425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.622818, 34.932457, 33.519138>,  <40.702122, 35.294193, 33.670326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622818, 34.932457, 33.519138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640485, 0.172372, -0.748376,
		0.741938, -0.390458, 0.545042,
		-0.198259, -0.904340, -0.377972,
		40.563339, 34.661156, 33.405746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391479, 35.067951, 33.486149>,  <40.702122, 35.294193, 33.670326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391479, 35.067951, 33.486149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.119808, 34.873692, 33.266014>,  <40.956806, 34.757137, 33.133934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.119808, 34.873692, 33.266014>,  <41.391479, 35.067951, 33.486149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119808, 34.873692, 33.266014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558361, 0.144804, -0.816863,
		0.476400, -0.862077, 0.172821,
		-0.679173, -0.485650, -0.550334,
		40.916058, 34.727997, 33.100914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786060, 34.523048, 33.061771>,  <41.391479, 35.067951, 33.486149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786060, 34.523048, 33.061771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.446758, 34.601410, 32.864964>,  <41.243176, 34.648426, 32.746880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.446758, 34.601410, 32.864964>,  <41.786060, 34.523048, 33.061771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446758, 34.601410, 32.864964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511974, 0.065736, -0.856482,
		-0.135443, -0.978418, -0.156057,
		-0.848256, 0.195902, -0.492021,
		41.192280, 34.660179, 32.717358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746494, 34.121944, 32.470325>,  <41.786060, 34.523048, 33.061771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746494, 34.121944, 32.470325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.457901, 34.383701, 32.379787>,  <41.284744, 34.540756, 32.325462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.457901, 34.383701, 32.379787>,  <41.746494, 34.121944, 32.470325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457901, 34.383701, 32.379787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257602, -0.049762, -0.964969,
		-0.642735, -0.754513, -0.132671,
		-0.721479, 0.654396, -0.226348,
		41.241459, 34.580021, 32.311882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372818, 33.892063, 31.776937>,  <41.746494, 34.121944, 32.470325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372818, 33.892063, 31.776937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.312645, 34.284756, 31.823545>,  <41.276543, 34.520370, 31.851511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.312645, 34.284756, 31.823545>,  <41.372818, 33.892063, 31.776937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312645, 34.284756, 31.823545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063556, 0.127220, -0.989836,
		-0.986576, -0.141494, -0.081532,
		-0.150428, 0.981730, 0.116519,
		41.267517, 34.579273, 31.858501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034531, 34.046787, 31.204601>,  <41.372818, 33.892063, 31.776937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034531, 34.046787, 31.204601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.171066, 34.395603, 31.344902>,  <41.252987, 34.604893, 31.429083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.171066, 34.395603, 31.344902>,  <41.034531, 34.046787, 31.204601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171066, 34.395603, 31.344902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202217, 0.296296, -0.933444,
		-0.917930, 0.389550, -0.075204,
		0.341340, 0.872043, 0.350752,
		41.273468, 34.657215, 31.450129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677910, 34.579002, 30.689528>,  <41.034531, 34.046787, 31.204601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677910, 34.579002, 30.689528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.003288, 34.713123, 30.879629>,  <41.198517, 34.793598, 30.993690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.003288, 34.713123, 30.879629>,  <40.677910, 34.579002, 30.689528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003288, 34.713123, 30.879629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424180, 0.217069, -0.879177,
		-0.397956, 0.916761, 0.034346,
		0.813451, 0.335305, 0.475256,
		41.247322, 34.813713, 31.022205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654629, 35.210468, 30.401155>,  <40.677910, 34.579002, 30.689528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654629, 35.210468, 30.401155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.016052, 35.102261, 30.534060>,  <41.232906, 35.037334, 30.613802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.016052, 35.102261, 30.534060>,  <40.654629, 35.210468, 30.401155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016052, 35.102261, 30.534060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405910, 0.292200, -0.865942,
		0.137170, 0.917299, 0.373828,
		0.903560, -0.270522, 0.332260,
		41.287121, 35.021103, 30.633738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604797, 35.956791, 30.222309>,  <40.654629, 35.210468, 30.401155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604797, 35.956791, 30.222309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.262417, 35.981804, 30.017004>,  <40.056988, 35.996811, 29.893822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.262417, 35.981804, 30.017004>,  <40.604797, 35.956791, 30.222309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262417, 35.981804, 30.017004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515733, -0.174239, 0.838844,
		-0.036974, 0.982715, 0.181391,
		-0.855951, 0.062534, -0.513261,
		40.005630, 36.000565, 29.863026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209652, 36.505878, 30.491802>,  <40.604797, 35.956791, 30.222309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209652, 36.505878, 30.491802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.939011, 36.266769, 30.319811>,  <39.776627, 36.123302, 30.216616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.939011, 36.266769, 30.319811>,  <40.209652, 36.505878, 30.491802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939011, 36.266769, 30.319811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549403, 0.021026, 0.835293,
		-0.490275, 0.801390, -0.342644,
		-0.676600, -0.597773, -0.429978,
		39.736031, 36.087437, 30.190817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597195, 36.613407, 30.840073>,  <40.209652, 36.505878, 30.491802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597195, 36.613407, 30.840073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.477039, 36.283276, 30.648821>,  <39.404945, 36.085197, 30.534069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.477039, 36.283276, 30.648821>,  <39.597195, 36.613407, 30.840073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477039, 36.283276, 30.648821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572185, -0.245142, 0.782630,
		-0.763133, 0.508670, -0.398601,
		-0.300386, -0.825324, -0.478129,
		39.386925, 36.035679, 30.505383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923878, 36.725571, 30.755711>,  <39.597195, 36.613407, 30.840073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923878, 36.725571, 30.755711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.967438, 36.329411, 30.721672>,  <38.993572, 36.091713, 30.701250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.967438, 36.329411, 30.721672>,  <38.923878, 36.725571, 30.755711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967438, 36.329411, 30.721672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723263, -0.137667, 0.676711,
		-0.681933, -0.012147, -0.731314,
		0.108898, -0.990404, -0.085094,
		39.000107, 36.032288, 30.696144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214798, 36.514511, 30.883888>,  <38.923878, 36.725571, 30.755711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214798, 36.514511, 30.883888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.408432, 36.165051, 30.903479>,  <38.524612, 35.955376, 30.915234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.408432, 36.165051, 30.903479>,  <38.214798, 36.514511, 30.883888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408432, 36.165051, 30.903479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579285, -0.278025, 0.766245,
		-0.655811, -0.399302, -0.640679,
		0.484088, -0.873648, 0.048978,
		38.553658, 35.902958, 30.918173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715050, 35.889225, 30.641300>,  <38.214798, 36.514511, 30.883888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715050, 35.889225, 30.641300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.026108, 35.786449, 30.870823>,  <38.212742, 35.724785, 31.008537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.026108, 35.786449, 30.870823>,  <37.715050, 35.889225, 30.641300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026108, 35.786449, 30.870823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623904, -0.427949, 0.653914,
		0.077548, -0.866513, -0.493094,
		0.777644, -0.256934, 0.573807,
		38.259399, 35.709370, 31.042965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435612, 35.239887, 30.823542>,  <37.715050, 35.889225, 30.641300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435612, 35.239887, 30.823542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.733978, 35.294487, 31.084303>,  <37.912998, 35.327248, 31.240759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.733978, 35.294487, 31.084303>,  <37.435612, 35.239887, 30.823542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733978, 35.294487, 31.084303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495276, -0.540742, 0.679926,
		0.445322, -0.830039, -0.335742,
		0.745915, 0.136501, 0.651903,
		37.957752, 35.335438, 31.279875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644680, 34.617977, 31.127121>,  <37.435612, 35.239887, 30.823542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644680, 34.617977, 31.127121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.732853, 34.903831, 31.392662>,  <37.785755, 35.075344, 31.551987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.732853, 34.903831, 31.392662>,  <37.644680, 34.617977, 31.127121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732853, 34.903831, 31.392662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668860, -0.384629, 0.636150,
		0.709954, -0.584254, 0.393208,
		0.220433, 0.714639, 0.663853,
		37.798985, 35.118221, 31.591818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838329, 34.222305, 31.671141>,  <37.644680, 34.617977, 31.127121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838329, 34.222305, 31.671141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.751060, 34.583282, 31.819736>,  <37.698700, 34.799870, 31.908894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.751060, 34.583282, 31.819736>,  <37.838329, 34.222305, 31.671141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751060, 34.583282, 31.819736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641578, -0.419470, 0.642201,
		0.735375, -0.098227, 0.670503,
		-0.218175, 0.902439, 0.371489,
		37.685608, 34.854015, 31.931183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621151, 34.043552, 32.314240>,  <37.838329, 34.222305, 31.671141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621151, 34.043552, 32.314240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.493401, 34.422241, 32.297653>,  <37.416752, 34.649456, 32.287701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.493401, 34.422241, 32.297653>,  <37.621151, 34.043552, 32.314240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493401, 34.422241, 32.297653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713206, -0.211330, 0.668340,
		0.623969, 0.243022, 0.742700,
		-0.319376, 0.946721, -0.041461,
		37.397587, 34.706257, 32.285213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658333, 34.383190, 32.934917>,  <37.621151, 34.043552, 32.314240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658333, 34.383190, 32.934917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.377529, 34.587055, 32.735947>,  <37.209045, 34.709373, 32.616566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.377529, 34.587055, 32.735947>,  <37.658333, 34.383190, 32.934917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377529, 34.587055, 32.735947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683825, -0.287310, 0.670698,
		0.198913, 0.810987, 0.550212,
		-0.702009, 0.509659, -0.497424,
		37.166927, 34.739952, 32.586720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461437, 35.034420, 33.298691>,  <37.658333, 34.383190, 32.934917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461437, 35.034420, 33.298691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.188591, 34.840115, 33.080059>,  <37.024883, 34.723530, 32.948879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.188591, 34.840115, 33.080059>,  <37.461437, 35.034420, 33.298691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188591, 34.840115, 33.080059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359198, -0.428493, 0.829078,
		-0.636942, 0.761859, 0.117796,
		-0.682115, -0.485762, -0.546583,
		36.983955, 34.694386, 32.916084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.938122, 36.722595, 26.808867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634476, 36.513535, 26.653652>,  <41.452286, 36.388096, 26.560524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634476, 36.513535, 26.653652>,  <41.938122, 36.722595, 26.808867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634476, 36.513535, 26.653652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602084, 0.337138, 0.723763,
		-0.247457, 0.783051, -0.570610,
		-0.759117, -0.522656, -0.388036,
		41.406742, 36.356739, 26.537241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382050, 37.185932, 26.667189>,  <41.938122, 36.722595, 26.808867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382050, 37.185932, 26.667189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240978, 36.816425, 26.726894>,  <41.156334, 36.594723, 26.762718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240978, 36.816425, 26.726894>,  <41.382050, 37.185932, 26.667189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240978, 36.816425, 26.726894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622540, 0.350720, 0.699600,
		-0.698614, 0.153812, -0.698770,
		-0.352679, -0.923763, 0.149264,
		41.135174, 36.539295, 26.771673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574627, 37.252968, 26.915239>,  <41.382050, 37.185932, 26.667189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574627, 37.252968, 26.915239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678898, 36.880714, 27.017981>,  <40.741459, 36.657364, 27.079626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678898, 36.880714, 27.017981>,  <40.574627, 37.252968, 26.915239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678898, 36.880714, 27.017981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711903, -0.005584, 0.702256,
		-0.652107, -0.365914, -0.663975,
		0.260673, -0.930632, 0.256854,
		40.757099, 36.601524, 27.095037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964428, 37.002411, 27.209469>,  <40.574627, 37.252968, 26.915239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964428, 37.002411, 27.209469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240730, 36.739613, 27.330273>,  <40.406513, 36.581932, 27.402756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240730, 36.739613, 27.330273>,  <39.964428, 37.002411, 27.209469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240730, 36.739613, 27.330273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523492, -0.166261, 0.835652,
		-0.498807, -0.735333, -0.458778,
		0.690759, -0.656996, 0.302008,
		40.447960, 36.542515, 27.420876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641605, 36.425953, 27.456116>,  <39.964428, 37.002411, 27.209469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641605, 36.425953, 27.456116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994419, 36.397324, 27.642401>,  <40.206108, 36.380146, 27.754171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994419, 36.397324, 27.642401>,  <39.641605, 36.425953, 27.456116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994419, 36.397324, 27.642401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470827, -0.172195, 0.865257,
		0.018267, -0.982459, -0.185579,
		0.882036, -0.071570, 0.465714,
		40.259029, 36.375851, 27.782114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626797, 35.850948, 27.857153>,  <39.641605, 36.425953, 27.456116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626797, 35.850948, 27.857153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925755, 36.066860, 28.012098>,  <40.105129, 36.196407, 28.105064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925755, 36.066860, 28.012098>,  <39.626797, 35.850948, 27.857153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925755, 36.066860, 28.012098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385969, -0.121805, 0.914435,
		0.540773, -0.832950, 0.117301,
		0.747391, 0.539776, 0.387362,
		40.149971, 36.228794, 28.128307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898296, 35.358337, 28.304003>,  <39.626797, 35.850948, 27.857153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898296, 35.358337, 28.304003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993736, 35.726616, 28.427538>,  <40.051003, 35.947582, 28.501659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993736, 35.726616, 28.427538>,  <39.898296, 35.358337, 28.304003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993736, 35.726616, 28.427538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273053, -0.241590, 0.931169,
		0.931940, -0.306508, 0.193756,
		0.238601, 0.920699, 0.308840,
		40.065315, 36.002827, 28.520189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388546, 35.257347, 28.947361>,  <39.898296, 35.358337, 28.304003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388546, 35.257347, 28.947361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252007, 35.631958, 28.979340>,  <40.170082, 35.856724, 28.998528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252007, 35.631958, 28.979340>,  <40.388546, 35.257347, 28.947361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252007, 35.631958, 28.979340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257979, -0.175139, 0.950144,
		0.903840, 0.303706, 0.301389,
		-0.341350, 0.936530, 0.079947,
		40.149601, 35.912918, 29.003325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731548, 35.541008, 29.522940>,  <40.388546, 35.257347, 28.947361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731548, 35.541008, 29.522940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405788, 35.765457, 29.463757>,  <40.210331, 35.900127, 29.428246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405788, 35.765457, 29.463757>,  <40.731548, 35.541008, 29.522940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405788, 35.765457, 29.463757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271494, -0.143077, 0.951746,
		0.512880, 0.815270, 0.268864,
		-0.814399, 0.561127, -0.147960,
		40.161469, 35.933796, 29.419369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192806, 35.560898, 30.017887>,  <40.731548, 35.541008, 29.522940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192806, 35.560898, 30.017887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422134, 35.305637, 30.223436>,  <41.559731, 35.152481, 30.346766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422134, 35.305637, 30.223436>,  <41.192806, 35.560898, 30.017887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422134, 35.305637, 30.223436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705305, 0.065225, -0.705897,
		0.416952, 0.767143, 0.487486,
		0.573321, -0.638151, 0.513874,
		41.594131, 35.114193, 30.377598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879936, 35.858913, 29.934473>,  <41.192806, 35.560898, 30.017887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879936, 35.858913, 29.934473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908260, 35.467602, 30.012409>,  <41.925255, 35.232815, 30.059170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908260, 35.467602, 30.012409>,  <41.879936, 35.858913, 29.934473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908260, 35.467602, 30.012409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730399, -0.082176, -0.678059,
		0.679340, 0.190325, 0.708713,
		0.070812, -0.978276, 0.194839,
		41.929504, 35.174118, 30.070860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604599, 35.812160, 30.002930>,  <41.879936, 35.858913, 29.934473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604599, 35.812160, 30.002930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407749, 35.475552, 29.913797>,  <42.289639, 35.273586, 29.860317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407749, 35.475552, 29.913797>,  <42.604599, 35.812160, 30.002930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407749, 35.475552, 29.913797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617721, -0.157218, -0.770522,
		0.613376, -0.516844, 0.597196,
		-0.492129, -0.841519, -0.222832,
		42.260109, 35.223095, 29.846949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219109, 35.295227, 29.926767>,  <42.604599, 35.812160, 30.002930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.219109, 35.295227, 29.926767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896835, 35.145130, 29.743433>,  <42.703472, 35.055073, 29.633432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896835, 35.145130, 29.743433>,  <43.219109, 35.295227, 29.926767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896835, 35.145130, 29.743433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555181, -0.208578, -0.805152,
		0.206528, -0.903155, 0.376375,
		-0.805680, -0.375242, -0.458338,
		42.655132, 35.032558, 29.605932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315105, 34.601974, 29.669842>,  <43.219109, 35.295227, 29.926767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315105, 34.601974, 29.669842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025246, 34.742004, 29.432411>,  <42.851330, 34.826023, 29.289953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025246, 34.742004, 29.432411>,  <43.315105, 34.601974, 29.669842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025246, 34.742004, 29.432411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525427, -0.276644, -0.804609,
		-0.445882, -0.894939, 0.016531,
		-0.724649, 0.350075, -0.593575,
		42.807850, 34.847027, 29.254339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291367, 34.122501, 29.202923>,  <43.315105, 34.601974, 29.669842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291367, 34.122501, 29.202923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081787, 34.416935, 29.031504>,  <42.956039, 34.593597, 28.928652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081787, 34.416935, 29.031504>,  <43.291367, 34.122501, 29.202923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.081787, 34.416935, 29.031504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414692, -0.219024, -0.883210,
		-0.743982, -0.640471, -0.190493,
		-0.523947, 0.736088, -0.428547,
		42.924603, 34.637760, 28.902939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186768, 33.908176, 28.502491>,  <43.291367, 34.122501, 29.202923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186768, 33.908176, 28.502491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043297, 34.275650, 28.436319>,  <42.957214, 34.496136, 28.396616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043297, 34.275650, 28.436319>,  <43.186768, 33.908176, 28.502491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043297, 34.275650, 28.436319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230612, -0.084517, -0.969368,
		-0.904526, -0.385843, -0.181545,
		-0.358680, 0.918685, -0.165428,
		42.935692, 34.551254, 28.386690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628204, 33.738998, 27.973001>,  <43.186768, 33.908176, 28.502491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628204, 33.738998, 27.973001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777531, 34.110054, 27.977264>,  <42.867126, 34.332687, 27.979822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777531, 34.110054, 27.977264>,  <42.628204, 33.738998, 27.973001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777531, 34.110054, 27.977264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298976, -0.109427, -0.947966,
		-0.878206, 0.357080, -0.318194,
		0.373319, 0.927642, 0.010659,
		42.889526, 34.388348, 27.980461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494232, 34.105923, 27.293646>,  <42.628204, 33.738998, 27.973001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494232, 34.105923, 27.293646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791039, 34.323986, 27.449709>,  <42.969120, 34.454823, 27.543346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791039, 34.323986, 27.449709>,  <42.494232, 34.105923, 27.293646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791039, 34.323986, 27.449709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507568, -0.076658, -0.858195,
		-0.437942, 0.834822, -0.333585,
		0.742012, 0.545156, 0.390157,
		43.013641, 34.487534, 27.566755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609146, 34.549854, 26.764030>,  <42.494232, 34.105923, 27.293646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609146, 34.549854, 26.764030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925411, 34.527710, 27.007927>,  <43.115170, 34.514423, 27.154264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925411, 34.527710, 27.007927>,  <42.609146, 34.549854, 26.764030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925411, 34.527710, 27.007927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611396, 0.018762, -0.791103,
		0.032353, 0.998290, 0.048679,
		0.790663, -0.055357, 0.609743,
		43.162609, 34.511105, 27.190849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993526, 35.003178, 26.523607>,  <42.609146, 34.549854, 26.764030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993526, 35.003178, 26.523607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253296, 34.779961, 26.730236>,  <43.409157, 34.646030, 26.854214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253296, 34.779961, 26.730236>,  <42.993526, 35.003178, 26.523607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253296, 34.779961, 26.730236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604677, -0.032958, -0.795789,
		0.461107, 0.829159, 0.316031,
		0.649420, -0.558040, 0.516571,
		43.448120, 34.612549, 26.885208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546021, 35.363323, 26.476364>,  <42.993526, 35.003178, 26.523607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546021, 35.363323, 26.476364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686695, 34.997341, 26.555529>,  <43.771099, 34.777752, 26.603027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686695, 34.997341, 26.555529>,  <43.546021, 35.363323, 26.476364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686695, 34.997341, 26.555529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659990, 0.092413, -0.745569,
		0.663873, 0.392829, 0.636363,
		0.351690, -0.914956, 0.197913,
		43.792202, 34.722855, 26.614902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238674, 35.343655, 26.575047>,  <43.546021, 35.363323, 26.476364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238674, 35.343655, 26.575047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196541, 34.948769, 26.527180>,  <44.171261, 34.711838, 26.498459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196541, 34.948769, 26.527180>,  <44.238674, 35.343655, 26.575047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196541, 34.948769, 26.527180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838734, -0.023546, -0.544033,
		0.534257, -0.157674, 0.830487,
		-0.105335, -0.987210, -0.119667,
		44.164940, 34.652607, 26.491280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838604, 35.088844, 26.813208>,  <44.238674, 35.343655, 26.575047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838604, 35.088844, 26.813208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678677, 34.817802, 26.566309>,  <44.582718, 34.655178, 26.418169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678677, 34.817802, 26.566309>,  <44.838604, 35.088844, 26.813208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678677, 34.817802, 26.566309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849155, -0.020301, -0.527754,
		0.345078, -0.735146, 0.583508,
		-0.399822, -0.677605, -0.617247,
		44.558731, 34.614521, 26.381134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.616928, 31.678045, 22.587744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.849190, 31.924536, 22.800573>,  <39.988548, 32.072430, 22.928272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.849190, 31.924536, 22.800573>,  <39.616928, 31.678045, 22.587744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849190, 31.924536, 22.800573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165921, -0.550252, 0.818348,
		0.797062, -0.563461, -0.217263,
		0.580657, 0.616226, 0.532075,
		40.023388, 32.109402, 22.960196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015549, 31.246557, 22.859518>,  <39.616928, 31.678045, 22.587744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015549, 31.246557, 22.859518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.014927, 31.580488, 23.079721>,  <40.014553, 31.780846, 23.211843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.014927, 31.580488, 23.079721>,  <40.015549, 31.246557, 22.859518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014927, 31.580488, 23.079721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083216, -0.548710, 0.831861,
		0.996530, -0.044521, 0.070323,
		-0.001552, 0.834827, 0.550511,
		40.014462, 31.830936, 23.244875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215832, 30.904261, 23.455015>,  <40.015549, 31.246557, 22.859518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215832, 30.904261, 23.455015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.123917, 31.272661, 23.580841>,  <40.068768, 31.493702, 23.656336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.123917, 31.272661, 23.580841>,  <40.215832, 30.904261, 23.455015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123917, 31.272661, 23.580841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206543, -0.361999, 0.909009,
		0.951071, 0.143911, 0.273411,
		-0.229791, 0.921003, 0.314563,
		40.054981, 31.548962, 23.675209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662498, 31.026667, 24.095453>,  <40.215832, 30.904261, 23.455015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662498, 31.026667, 24.095453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.345284, 31.270189, 24.087063>,  <40.154953, 31.416304, 24.082027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.345284, 31.270189, 24.087063>,  <40.662498, 31.026667, 24.095453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345284, 31.270189, 24.087063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178518, -0.199338, 0.963533,
		0.582424, 0.767866, 0.266766,
		-0.793041, 0.608807, -0.020978,
		40.107372, 31.452831, 24.080769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699936, 31.499922, 24.595434>,  <40.662498, 31.026667, 24.095453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699936, 31.499922, 24.595434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.309643, 31.472712, 24.512186>,  <40.075466, 31.456385, 24.462236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.309643, 31.472712, 24.512186>,  <40.699936, 31.499922, 24.595434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309643, 31.472712, 24.512186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206232, -0.033795, 0.977919,
		-0.073556, 0.997111, 0.018946,
		-0.975734, -0.068025, -0.208122,
		40.016922, 31.452305, 24.449749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382648, 31.837929, 25.155655>,  <40.699936, 31.499922, 24.595434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382648, 31.837929, 25.155655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.080360, 31.636534, 24.988134>,  <39.898987, 31.515697, 24.887623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.080360, 31.636534, 24.988134>,  <40.382648, 31.837929, 25.155655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080360, 31.636534, 24.988134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309612, -0.288840, 0.905932,
		-0.577091, 0.814293, 0.062396,
		-0.755716, -0.503486, -0.418801,
		39.853645, 31.485487, 24.862494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783615, 32.079926, 25.557398>,  <40.382648, 31.837929, 25.155655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783615, 32.079926, 25.557398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.704811, 31.723173, 25.394552>,  <39.657528, 31.509123, 25.296844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.704811, 31.723173, 25.394552>,  <39.783615, 32.079926, 25.557398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704811, 31.723173, 25.394552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480292, -0.274210, 0.833144,
		-0.854697, 0.359672, -0.374339,
		-0.197011, -0.891877, -0.407114,
		39.645706, 31.455610, 25.272419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104675, 31.983093, 25.767630>,  <39.783615, 32.079926, 25.557398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104675, 31.983093, 25.767630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.224636, 31.626171, 25.632666>,  <39.296612, 31.412018, 25.551687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.224636, 31.626171, 25.632666>,  <39.104675, 31.983093, 25.767630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224636, 31.626171, 25.632666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548574, -0.450673, 0.704245,
		-0.780463, -0.026114, -0.624656,
		0.299906, -0.892307, -0.337408,
		39.314610, 31.358479, 25.531443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509727, 31.470543, 25.740591>,  <39.104675, 31.983093, 25.767630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509727, 31.470543, 25.740591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.829388, 31.231028, 25.761824>,  <39.021183, 31.087318, 25.774563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.829388, 31.231028, 25.761824>,  <38.509727, 31.470543, 25.740591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829388, 31.231028, 25.761824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440781, -0.523639, 0.729050,
		-0.408750, -0.606017, -0.682399,
		0.799147, -0.598787, 0.053083,
		39.069130, 31.051392, 25.777748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229717, 30.893667, 25.774174>,  <38.509727, 31.470543, 25.740591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229717, 30.893667, 25.774174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.592514, 30.836901, 25.932783>,  <38.810192, 30.802841, 26.027948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.592514, 30.836901, 25.932783>,  <38.229717, 30.893667, 25.774174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592514, 30.836901, 25.932783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420353, -0.247086, 0.873070,
		-0.025928, -0.958545, -0.283759,
		0.906990, -0.141916, 0.396521,
		38.864613, 30.794325, 26.051739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073685, 30.323166, 26.118536>,  <38.229717, 30.893667, 25.774174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073685, 30.323166, 26.118536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.423832, 30.445810, 26.268053>,  <38.633919, 30.519396, 26.357763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.423832, 30.445810, 26.268053>,  <38.073685, 30.323166, 26.118536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423832, 30.445810, 26.268053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272649, -0.325397, 0.905417,
		0.399240, -0.894487, -0.201245,
		0.875368, 0.306609, 0.373792,
		38.686443, 30.537792, 26.380190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297478, 29.726397, 26.391405>,  <38.073685, 30.323166, 26.118536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297478, 29.726397, 26.391405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.483032, 30.024714, 26.582653>,  <38.594364, 30.203705, 26.697401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.483032, 30.024714, 26.582653>,  <38.297478, 29.726397, 26.391405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483032, 30.024714, 26.582653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294289, -0.379321, 0.877217,
		0.835584, -0.547637, 0.043516,
		0.463890, 0.745795, 0.478118,
		38.622200, 30.248451, 26.726088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366631, 29.485849, 27.016869>,  <38.297478, 29.726397, 26.391405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366631, 29.485849, 27.016869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.402412, 29.877237, 27.091265>,  <38.423882, 30.112070, 27.135902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.402412, 29.877237, 27.091265>,  <38.366631, 29.485849, 27.016869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402412, 29.877237, 27.091265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512570, -0.114885, 0.850925,
		0.853973, -0.171456, 0.491257,
		0.089458, 0.978470, 0.185992,
		38.429249, 30.170778, 27.147062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478821, 29.472464, 27.627813>,  <38.366631, 29.485849, 27.016869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478821, 29.472464, 27.627813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380856, 29.858009, 27.585897>,  <38.322079, 30.089336, 27.560747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380856, 29.858009, 27.585897>,  <38.478821, 29.472464, 27.627813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380856, 29.858009, 27.585897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297575, 0.028136, 0.954284,
		0.922750, 0.264897, 0.279932,
		-0.244911, 0.963866, -0.104789,
		38.307381, 30.147169, 27.554461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274128, 29.506763, 27.731562>,  <38.478821, 29.472464, 27.627813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274128, 29.506763, 27.731562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.588272, 29.317907, 27.891706>,  <39.776760, 29.204594, 27.987793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.588272, 29.317907, 27.891706>,  <39.274128, 29.506763, 27.731562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588272, 29.317907, 27.891706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475458, 0.045895, -0.878541,
		0.396421, 0.880327, 0.260528,
		0.785360, -0.472142, 0.400364,
		39.823879, 29.176266, 28.011816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898064, 29.867796, 27.399086>,  <39.274128, 29.506763, 27.731562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898064, 29.867796, 27.399086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.023708, 29.511593, 27.530741>,  <40.099094, 29.297871, 27.609734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.023708, 29.511593, 27.530741>,  <39.898064, 29.867796, 27.399086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023708, 29.511593, 27.530741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587641, -0.089925, -0.804109,
		0.745664, 0.445991, 0.495053,
		0.314108, -0.890508, 0.329137,
		40.117939, 29.244440, 27.629482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652935, 29.828630, 27.327961>,  <39.898064, 29.867796, 27.399086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652935, 29.828630, 27.327961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.526115, 29.449417, 27.338676>,  <40.450024, 29.221889, 27.345106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.526115, 29.449417, 27.338676>,  <40.652935, 29.828630, 27.327961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526115, 29.449417, 27.338676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405582, -0.161061, -0.899757,
		0.857312, -0.274401, 0.435569,
		-0.317048, -0.948031, 0.026788,
		40.431000, 29.165009, 27.346712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208702, 29.534716, 26.929634>,  <40.652935, 29.828630, 27.327961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208702, 29.534716, 26.929634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.956234, 29.228634, 26.980371>,  <40.804752, 29.044985, 27.010813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.956234, 29.228634, 26.980371>,  <41.208702, 29.534716, 26.929634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956234, 29.228634, 26.980371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294823, -0.387933, -0.873262,
		0.717431, -0.513779, 0.470451,
		-0.631168, -0.765205, 0.126842,
		40.766884, 28.999073, 27.018423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661839, 28.885965, 26.961235>,  <41.208702, 29.534716, 26.929634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661839, 28.885965, 26.961235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.287941, 28.795273, 26.851805>,  <41.063602, 28.740858, 26.786146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.287941, 28.795273, 26.851805>,  <41.661839, 28.885965, 26.961235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287941, 28.795273, 26.851805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286626, -0.026119, -0.957686,
		0.209991, -0.973607, 0.089402,
		-0.934745, -0.226730, -0.273577,
		41.007519, 28.727255, 26.769732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719143, 28.315786, 26.560446>,  <41.661839, 28.885965, 26.961235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719143, 28.315786, 26.560446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.369007, 28.471756, 26.446085>,  <41.158924, 28.565338, 26.377468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.369007, 28.471756, 26.446085>,  <41.719143, 28.315786, 26.560446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369007, 28.471756, 26.446085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352053, 0.108681, -0.929649,
		-0.331422, -0.914410, -0.232407,
		-0.875339, 0.389926, -0.285902,
		41.106407, 28.588734, 26.360313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633324, 28.078957, 25.907223>,  <41.719143, 28.315786, 26.560446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633324, 28.078957, 25.907223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.353374, 28.364658, 25.905415>,  <41.185406, 28.536079, 25.904329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.353374, 28.364658, 25.905415>,  <41.633324, 28.078957, 25.907223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.353374, 28.364658, 25.905415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194129, 0.184124, -0.963542,
		-0.687382, -0.675233, -0.267520,
		-0.699872, 0.714254, -0.004519,
		41.143414, 28.578934, 25.904058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237431, 27.948168, 25.328653>,  <41.633324, 28.078957, 25.907223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237431, 27.948168, 25.328653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.157761, 28.332138, 25.407516>,  <41.109959, 28.562521, 25.454834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.157761, 28.332138, 25.407516>,  <41.237431, 27.948168, 25.328653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157761, 28.332138, 25.407516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140999, 0.227168, -0.963594,
		-0.969768, -0.164122, -0.180594,
		-0.199172, 0.959926, 0.197160,
		41.098007, 28.620115, 25.466665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599728, 28.287224, 24.902168>,  <41.237431, 27.948168, 25.328653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599728, 28.287224, 24.902168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.817608, 28.604048, 25.012396>,  <40.948338, 28.794142, 25.078533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.817608, 28.604048, 25.012396>,  <40.599728, 28.287224, 24.902168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817608, 28.604048, 25.012396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102851, 0.263023, -0.959292,
		-0.832299, 0.550870, 0.061805,
		0.544702, 0.792061, 0.275571,
		40.981018, 28.841665, 25.095068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346100, 28.979679, 24.560814>,  <40.599728, 28.287224, 24.902168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346100, 28.979679, 24.560814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.726719, 29.035225, 24.670551>,  <40.955093, 29.068552, 24.736395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.726719, 29.035225, 24.670551>,  <40.346100, 28.979679, 24.560814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726719, 29.035225, 24.670551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207211, 0.369612, -0.905787,
		-0.227182, 0.918751, 0.322931,
		0.951552, 0.138864, 0.274344,
		41.012184, 29.076883, 24.752855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539539, 29.648546, 24.372026>,  <40.346100, 28.979679, 24.560814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539539, 29.648546, 24.372026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.884964, 29.449989, 24.407503>,  <41.092216, 29.330856, 24.428789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.884964, 29.449989, 24.407503>,  <40.539539, 29.648546, 24.372026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884964, 29.449989, 24.407503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285383, 0.336104, -0.897547,
		0.415724, 0.800394, 0.431906,
		0.863557, -0.496390, 0.088692,
		41.144032, 29.301073, 24.434111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109859, 30.195438, 24.436960>,  <40.539539, 29.648546, 24.372026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109859, 30.195438, 24.436960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.267471, 29.866508, 24.272755>,  <41.362038, 29.669151, 24.174231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.267471, 29.866508, 24.272755>,  <41.109859, 30.195438, 24.436960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267471, 29.866508, 24.272755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304810, 0.538290, -0.785706,
		0.867080, 0.184466, 0.462757,
		0.394034, -0.822324, -0.410514,
		41.385681, 29.619812, 24.149601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667656, 30.463867, 24.193464>,  <41.109859, 30.195438, 24.436960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667656, 30.463867, 24.193464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.617729, 30.116026, 24.002378>,  <41.587772, 29.907322, 23.887728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.617729, 30.116026, 24.002378>,  <41.667656, 30.463867, 24.193464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617729, 30.116026, 24.002378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313985, 0.422113, -0.850432,
		0.941187, -0.256146, 0.220354,
		-0.124821, -0.869603, -0.477713,
		41.580284, 29.855145, 23.859064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369038, 30.232262, 23.990217>,  <41.667656, 30.463867, 24.193464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369038, 30.232262, 23.990217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.085258, 30.085228, 23.749697>,  <41.914989, 29.997007, 23.605385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.085258, 30.085228, 23.749697>,  <42.369038, 30.232262, 23.990217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085258, 30.085228, 23.749697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376274, 0.523860, -0.764191,
		0.595904, -0.768409, -0.233339,
		-0.709448, -0.367585, -0.601303,
		41.872425, 29.974953, 23.569305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940704, 29.742001, 24.128901>,  <42.369038, 30.232262, 23.990217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940704, 29.742001, 24.128901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.234993, 29.961046, 24.288315>,  <43.411568, 30.092474, 24.383963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.234993, 29.961046, 24.288315>,  <42.940704, 29.742001, 24.128901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234993, 29.961046, 24.288315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480493, 0.007321, 0.876968,
		0.477321, -0.836700, 0.268511,
		0.735725, 0.547613, 0.398534,
		43.455711, 30.125330, 24.407875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118954, 29.479162, 24.826448>,  <42.940704, 29.742001, 24.128901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118954, 29.479162, 24.826448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.255859, 29.854551, 24.844898>,  <43.338001, 30.079784, 24.855968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.255859, 29.854551, 24.844898>,  <43.118954, 29.479162, 24.826448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255859, 29.854551, 24.844898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345359, 0.079996, 0.935055,
		0.873833, -0.335963, 0.351490,
		0.342261, 0.938472, 0.046124,
		43.358540, 30.136093, 24.858736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260303, 29.508047, 25.480198>,  <43.118954, 29.479162, 24.826448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260303, 29.508047, 25.480198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.244274, 29.890528, 25.364218>,  <43.234657, 30.120016, 25.294630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.244274, 29.890528, 25.364218>,  <43.260303, 29.508047, 25.480198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244274, 29.890528, 25.364218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345477, 0.259027, 0.901971,
		0.937571, 0.136319, 0.319964,
		-0.040077, 0.956202, -0.289951,
		43.232250, 30.177389, 25.277233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476814, 29.844780, 26.006870>,  <43.260303, 29.508047, 25.480198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476814, 29.844780, 26.006870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.293373, 30.139914, 25.808767>,  <43.183308, 30.316994, 25.689905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.293373, 30.139914, 25.808767>,  <43.476814, 29.844780, 26.006870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293373, 30.139914, 25.808767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343715, 0.366664, 0.864533,
		0.819477, 0.566706, 0.085452,
		-0.458604, 0.737836, -0.495257,
		43.155792, 30.361265, 25.660191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.568295, 30.465683, 26.401739>,  <43.476814, 29.844780, 26.006870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.568295, 30.465683, 26.401739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.255558, 30.574980, 26.177576>,  <43.067917, 30.640558, 26.043077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.255558, 30.574980, 26.177576>,  <43.568295, 30.465683, 26.401739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255558, 30.574980, 26.177576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445698, 0.383589, 0.808834,
		0.435975, 0.882156, -0.178122,
		-0.781843, 0.273243, -0.560410,
		43.021004, 30.656952, 26.009453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495003, 31.171980, 26.605789>,  <43.568295, 30.465683, 26.401739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495003, 31.171980, 26.605789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.159599, 31.034010, 26.437061>,  <42.958359, 30.951227, 26.335825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.159599, 31.034010, 26.437061>,  <43.495003, 31.171980, 26.605789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.159599, 31.034010, 26.437061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521464, 0.283428, 0.804825,
		-0.158050, 0.894815, -0.417524,
		-0.838508, -0.344926, -0.421818,
		42.908047, 30.930532, 26.310516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937847, 31.705235, 26.630293>,  <43.495003, 31.171980, 26.605789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937847, 31.705235, 26.630293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.735878, 31.361303, 26.599979>,  <42.614697, 31.154943, 26.581791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.735878, 31.361303, 26.599979>,  <42.937847, 31.705235, 26.630293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735878, 31.361303, 26.599979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444061, 0.183471, 0.877011,
		-0.740177, 0.476477, -0.474456,
		-0.504925, -0.859830, -0.075784,
		42.584400, 31.103354, 26.577244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238777, 31.872866, 26.797356>,  <42.937847, 31.705235, 26.630293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238777, 31.872866, 26.797356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.254658, 31.479635, 26.868896>,  <42.264187, 31.243698, 26.911821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.254658, 31.479635, 26.868896>,  <42.238777, 31.872866, 26.797356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254658, 31.479635, 26.868896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518325, 0.132769, 0.844814,
		-0.854262, -0.126241, -0.504282,
		0.039697, -0.983074, 0.178853,
		42.266567, 31.184713, 26.922552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676571, 31.790592, 27.148308>,  <42.238777, 31.872866, 26.797356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676571, 31.790592, 27.148308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.853531, 31.443487, 27.238880>,  <41.959705, 31.235224, 27.293224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.853531, 31.443487, 27.238880>,  <41.676571, 31.790592, 27.148308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853531, 31.443487, 27.238880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420010, 0.022604, 0.907238,
		-0.792385, -0.496466, -0.354469,
		0.442400, -0.867762, 0.226431,
		41.986252, 31.183159, 27.306810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125977, 31.460241, 27.454149>,  <41.676571, 31.790592, 27.148308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125977, 31.460241, 27.454149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.479198, 31.310667, 27.567554>,  <41.691132, 31.220922, 27.635597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.479198, 31.310667, 27.567554>,  <41.125977, 31.460241, 27.454149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479198, 31.310667, 27.567554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298337, 0.018991, 0.954272,
		-0.362220, -0.927260, -0.094788,
		0.883058, -0.373935, 0.283515,
		41.744118, 31.198486, 27.652609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888966, 31.017233, 28.028820>,  <41.125977, 31.460241, 27.454149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888966, 31.017233, 28.028820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.284054, 31.078585, 28.040693>,  <41.521107, 31.115396, 28.047817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.284054, 31.078585, 28.040693>,  <40.888966, 31.017233, 28.028820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284054, 31.078585, 28.040693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016458, -0.086775, 0.996092,
		0.155357, -0.984350, -0.083185,
		0.987721, 0.153380, 0.029682,
		41.580372, 31.124599, 28.049599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139748, 30.615107, 28.566504>,  <40.888966, 31.017233, 28.028820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139748, 30.615107, 28.566504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.431957, 30.884665, 28.522326>,  <41.607285, 31.046400, 28.495819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.431957, 30.884665, 28.522326>,  <41.139748, 30.615107, 28.566504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431957, 30.884665, 28.522326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104978, 0.048990, 0.993267,
		0.674770, -0.737199, -0.034956,
		0.730524, 0.673897, -0.110446,
		41.651115, 31.086834, 28.489191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696690, 30.586449, 29.140617>,  <41.139748, 30.615107, 28.566504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696690, 30.586449, 29.140617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.834484, 30.938990, 29.011282>,  <41.917160, 31.150515, 28.933681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.834484, 30.938990, 29.011282>,  <41.696690, 30.586449, 29.140617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834484, 30.938990, 29.011282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219888, 0.259088, 0.940491,
		0.912677, -0.395082, -0.104548,
		0.344484, 0.881353, -0.323337,
		41.937828, 31.203396, 28.914280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308243, 30.670479, 29.475481>,  <41.696690, 30.586449, 29.140617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308243, 30.670479, 29.475481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.150604, 31.017719, 29.354761>,  <42.056019, 31.226065, 29.282330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.150604, 31.017719, 29.354761>,  <42.308243, 30.670479, 29.475481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150604, 31.017719, 29.354761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092196, 0.364061, 0.926801,
		0.914432, 0.337427, -0.223512,
		-0.394099, 0.868103, -0.301800,
		42.032375, 31.278151, 29.264221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.100979, 33.465855, 26.548122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.954529, 33.706001, 26.263725>,  <44.866657, 33.850090, 26.093086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.954529, 33.706001, 26.263725>,  <45.100979, 33.465855, 26.548122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954529, 33.706001, 26.263725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563917, -0.464631, -0.682727,
		-0.740235, -0.650906, -0.168443,
		-0.366127, 0.600366, -0.710993,
		44.844692, 33.886112, 26.050426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230198, 32.982990, 26.001583>,  <45.100979, 33.465855, 26.548122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230198, 32.982990, 26.001583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.120228, 33.323059, 25.821972>,  <45.054245, 33.527100, 25.714205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.120228, 33.323059, 25.821972>,  <45.230198, 32.982990, 26.001583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120228, 33.323059, 25.821972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548889, -0.244658, -0.799289,
		-0.789390, -0.466213, -0.399386,
		-0.274926, 0.850169, -0.449030,
		45.037750, 33.578110, 25.687263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077190, 32.750973, 25.291191>,  <45.230198, 32.982990, 26.001583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077190, 32.750973, 25.291191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.130379, 33.147064, 25.274395>,  <45.162292, 33.384720, 25.264317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.130379, 33.147064, 25.274395>,  <45.077190, 32.750973, 25.291191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130379, 33.147064, 25.274395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562227, -0.110251, -0.819601,
		-0.816223, 0.085374, -0.571394,
		0.132969, 0.990230, -0.041990,
		45.170269, 33.444134, 25.261799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.142265, 32.986782, 24.513401>,  <45.077190, 32.750973, 25.291191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.142265, 32.986782, 24.513401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.284256, 33.311783, 24.698372>,  <45.369450, 33.506783, 24.809355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.284256, 33.311783, 24.698372>,  <45.142265, 32.986782, 24.513401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284256, 33.311783, 24.698372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652763, 0.138683, -0.744760,
		-0.669246, 0.566228, -0.481139,
		0.354978, 0.812498, 0.462426,
		45.390751, 33.555531, 24.837099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.964001, 33.593761, 24.089155>,  <45.142265, 32.986782, 24.513401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.964001, 33.593761, 24.089155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.294563, 33.642643, 24.309017>,  <45.492901, 33.671974, 24.440935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.294563, 33.642643, 24.309017>,  <44.964001, 33.593761, 24.089155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.294563, 33.642643, 24.309017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506531, 0.265011, -0.820485,
		-0.245934, 0.956470, 0.157105,
		0.826404, 0.122206, 0.549657,
		45.542484, 33.679306, 24.473915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288910, 34.157158, 23.803484>,  <44.964001, 33.593761, 24.089155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.288910, 34.157158, 23.803484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.580143, 34.016068, 24.038591>,  <45.754883, 33.931412, 24.179657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.580143, 34.016068, 24.038591>,  <45.288910, 34.157158, 23.803484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580143, 34.016068, 24.038591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678195, 0.245947, -0.692504,
		0.099704, 0.902826, 0.418288,
		0.728087, -0.352726, 0.587771,
		45.798569, 33.910248, 24.214922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.795525, 34.738029, 23.948418>,  <45.288910, 34.157158, 23.803484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.795525, 34.738029, 23.948418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.960709, 34.376949, 23.996737>,  <46.059818, 34.160301, 24.025728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.960709, 34.376949, 23.996737>,  <45.795525, 34.738029, 23.948418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960709, 34.376949, 23.996737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677085, 0.215585, -0.703619,
		0.609117, 0.372355, 0.700234,
		0.412956, -0.902704, 0.120799,
		46.084595, 34.106136, 24.032976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.437256, 34.886360, 23.783363>,  <45.795525, 34.738029, 23.948418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.437256, 34.886360, 23.783363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.384865, 34.491859, 23.743074>,  <46.353432, 34.255157, 23.718901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.384865, 34.491859, 23.743074>,  <46.437256, 34.886360, 23.783363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.384865, 34.491859, 23.743074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504511, 0.021150, -0.863146,
		0.853414, -0.163864, 0.494807,
		-0.130974, -0.986256, -0.100721,
		46.345573, 34.195984, 23.712858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.084839, 34.611725, 23.653452>,  <46.437256, 34.886360, 23.783363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.084839, 34.611725, 23.653452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.813755, 34.360237, 23.500916>,  <46.651104, 34.209343, 23.409393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.813755, 34.360237, 23.500916>,  <47.084839, 34.611725, 23.653452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.813755, 34.360237, 23.500916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559131, -0.103786, -0.822557,
		0.477580, -0.770674, 0.421874,
		-0.677708, -0.628720, -0.381342,
		46.610443, 34.171619, 23.386513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.557846, 34.341549, 23.084805>,  <47.084839, 34.611725, 23.653452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.557846, 34.341549, 23.084805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.201954, 34.170357, 23.021296>,  <46.988419, 34.067642, 22.983191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.201954, 34.170357, 23.021296>,  <47.557846, 34.341549, 23.084805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.201954, 34.170357, 23.021296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294095, -0.271422, -0.916427,
		0.349116, -0.862070, 0.367359,
		-0.889733, -0.427978, -0.158773,
		46.935032, 34.041962, 22.973663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.663532, 33.617062, 22.922703>,  <47.557846, 34.341549, 23.084805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.663532, 33.617062, 22.922703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.333794, 33.761436, 22.748266>,  <47.135948, 33.848061, 22.643604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.333794, 33.761436, 22.748266>,  <47.663532, 33.617062, 22.922703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.333794, 33.761436, 22.748266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327165, -0.324904, -0.887356,
		-0.461967, -0.874164, 0.149748,
		-0.824348, 0.360937, -0.436090,
		47.086491, 33.869717, 22.617439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.423168, 33.103756, 22.536531>,  <47.663532, 33.617062, 22.922703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.423168, 33.103756, 22.536531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.278625, 33.450588, 22.399366>,  <47.191902, 33.658688, 22.317068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.278625, 33.450588, 22.399366>,  <47.423168, 33.103756, 22.536531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.278625, 33.450588, 22.399366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451947, -0.158802, -0.877796,
		-0.815579, -0.472171, -0.334493,
		-0.361352, 0.867085, -0.342911,
		47.170219, 33.710712, 22.296494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.118778, 33.045128, 21.826159>,  <47.423168, 33.103756, 22.536531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.118778, 33.045128, 21.826159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.253746, 33.417679, 21.880831>,  <47.334728, 33.641209, 21.913633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.253746, 33.417679, 21.880831>,  <47.118778, 33.045128, 21.826159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.253746, 33.417679, 21.880831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426426, -0.021786, -0.904260,
		-0.839230, 0.363401, -0.404515,
		0.337422, 0.931378, 0.136680,
		47.354973, 33.697094, 21.921835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.175224, 33.221931, 21.154890>,  <47.118778, 33.045128, 21.826159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.175224, 33.221931, 21.154890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.368755, 33.506504, 21.358765>,  <47.484875, 33.677246, 21.481091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.368755, 33.506504, 21.358765>,  <47.175224, 33.221931, 21.154890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.368755, 33.506504, 21.358765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530645, 0.224644, -0.817282,
		-0.695936, 0.665887, -0.268826,
		0.483827, 0.711428, 0.509688,
		47.513905, 33.719933, 21.511671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.695267, 32.866417, 20.714407>,  <47.175224, 33.221931, 21.154890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.695267, 32.866417, 20.714407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.754021, 32.496445, 20.574165>,  <46.789272, 32.274460, 20.490021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.754021, 32.496445, 20.574165>,  <46.695267, 32.866417, 20.714407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.754021, 32.496445, 20.574165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468372, -0.377230, 0.798953,
		-0.871237, 0.046862, -0.488621,
		0.146881, -0.924934, -0.350605,
		46.798084, 32.218964, 20.468985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.116089, 32.525963, 20.697489>,  <46.695267, 32.866417, 20.714407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.116089, 32.525963, 20.697489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.397259, 32.244862, 20.741373>,  <46.565960, 32.076202, 20.767704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.397259, 32.244862, 20.741373>,  <46.116089, 32.525963, 20.697489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.397259, 32.244862, 20.741373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518381, -0.400560, 0.755535,
		-0.487007, -0.587957, -0.645857,
		0.702926, -0.702750, 0.109710,
		46.608139, 32.034039, 20.774286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.779190, 31.912945, 20.699621>,  <46.116089, 32.525963, 20.697489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.779190, 31.912945, 20.699621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.134743, 31.811262, 20.852076>,  <46.348076, 31.750254, 20.943548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.134743, 31.811262, 20.852076>,  <45.779190, 31.912945, 20.699621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.134743, 31.811262, 20.852076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455466, -0.400722, 0.794967,
		-0.049355, -0.880228, -0.471978,
		0.888884, -0.254206, 0.381136,
		46.401409, 31.735001, 20.966417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.732353, 31.217131, 20.755142>,  <45.779190, 31.912945, 20.699621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.732353, 31.217131, 20.755142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.000645, 31.358547, 21.015949>,  <46.161621, 31.443398, 21.172434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.000645, 31.358547, 21.015949>,  <45.732353, 31.217131, 20.755142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.000645, 31.358547, 21.015949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431792, -0.528631, 0.730825,
		0.603053, -0.771724, -0.201913,
		0.670732, 0.353542, 0.652017,
		46.201866, 31.464609, 21.211554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.011814, 30.620792, 21.077553>,  <45.732353, 31.217131, 20.755142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.011814, 30.620792, 21.077553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.116817, 30.924862, 21.315283>,  <46.179817, 31.107304, 21.457920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.116817, 30.924862, 21.315283>,  <46.011814, 30.620792, 21.077553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.116817, 30.924862, 21.315283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290485, -0.525097, 0.799932,
		0.920168, -0.382629, 0.082979,
		0.262506, 0.760176, 0.594326,
		46.195568, 31.152914, 21.493580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.414928, 30.298000, 21.552784>,  <46.011814, 30.620792, 21.077553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.414928, 30.298000, 21.552784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.276367, 30.635166, 21.717466>,  <46.193230, 30.837465, 21.816275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.276367, 30.635166, 21.717466>,  <46.414928, 30.298000, 21.552784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.276367, 30.635166, 21.717466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310204, -0.517114, 0.797726,
		0.885312, 0.148623, 0.440605,
		-0.346403, 0.842914, 0.411704,
		46.172447, 30.888041, 21.840979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.348316, 30.056435, 22.245771>,  <46.414928, 30.298000, 21.552784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.348316, 30.056435, 22.245771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.147194, 30.401581, 22.266354>,  <46.026520, 30.608669, 22.278704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.147194, 30.401581, 22.266354>,  <46.348316, 30.056435, 22.245771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.147194, 30.401581, 22.266354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449160, -0.311669, 0.837328,
		0.738538, 0.397903, 0.544274,
		-0.502809, 0.862865, 0.051457,
		45.996349, 30.660440, 22.281790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.305859, 30.277285, 22.967604>,  <46.348316, 30.056435, 22.245771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.305859, 30.277285, 22.967604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.007286, 30.491573, 22.809700>,  <45.828140, 30.620148, 22.714958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.007286, 30.491573, 22.809700>,  <46.305859, 30.277285, 22.967604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007286, 30.491573, 22.809700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538014, -0.136717, 0.831775,
		0.391632, 0.833251, 0.390277,
		-0.746435, 0.535724, -0.394759,
		45.783356, 30.652290, 22.691273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.969845, 30.529087, 23.600101>,  <46.305859, 30.277285, 22.967604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.969845, 30.529087, 23.600101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.696934, 30.606432, 23.318077>,  <45.533188, 30.652840, 23.148863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.696934, 30.606432, 23.318077>,  <45.969845, 30.529087, 23.600101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.696934, 30.606432, 23.318077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730778, -0.208774, 0.649906,
		-0.021530, 0.958657, 0.283748,
		-0.682276, 0.193364, -0.705060,
		45.492252, 30.664442, 23.106560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.494308, 31.065607, 23.801483>,  <45.969845, 30.529087, 23.600101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.494308, 31.065607, 23.801483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.307232, 30.834435, 23.533974>,  <45.194984, 30.695730, 23.373468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.307232, 30.834435, 23.533974>,  <45.494308, 31.065607, 23.801483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.307232, 30.834435, 23.533974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745482, -0.148598, 0.649750,
		-0.474889, 0.802443, -0.361339,
		-0.467693, -0.577931, -0.668774,
		45.166924, 30.661055, 23.333342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795795, 31.319580, 23.683807>,  <45.494308, 31.065607, 23.801483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795795, 31.319580, 23.683807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.773506, 30.938658, 23.563799>,  <44.760132, 30.710104, 23.491795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.773506, 30.938658, 23.563799>,  <44.795795, 31.319580, 23.683807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.773506, 30.938658, 23.563799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830370, -0.122655, 0.543545,
		-0.554419, 0.279414, -0.783930,
		-0.055721, -0.952304, -0.300019,
		44.756790, 30.652966, 23.473793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152752, 31.164709, 23.382814>,  <44.795795, 31.319580, 23.683807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152752, 31.164709, 23.382814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.284294, 30.804613, 23.496956>,  <44.363220, 30.588556, 23.565441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.284294, 30.804613, 23.496956>,  <44.152752, 31.164709, 23.382814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284294, 30.804613, 23.496956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858989, -0.159581, 0.486489,
		-0.392419, -0.405098, -0.825774,
		0.328853, -0.900238, 0.285352,
		44.382950, 30.534542, 23.582561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612419, 30.705797, 23.298241>,  <44.152752, 31.164709, 23.382814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612419, 30.705797, 23.298241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.854717, 30.539505, 23.569605>,  <44.000095, 30.439730, 23.732424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.854717, 30.539505, 23.569605>,  <43.612419, 30.705797, 23.298241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854717, 30.539505, 23.569605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771288, -0.097403, 0.628989,
		-0.195412, -0.904256, -0.379651,
		0.605746, -0.415732, 0.678408,
		44.036442, 30.414785, 23.773129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171474, 30.232166, 23.626770>,  <43.612419, 30.705797, 23.298241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.171474, 30.232166, 23.626770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.479954, 30.260113, 23.879869>,  <43.665043, 30.276880, 24.031729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.479954, 30.260113, 23.879869>,  <43.171474, 30.232166, 23.626770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479954, 30.260113, 23.879869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635736, 0.033000, 0.771201,
		0.033000, -0.997010, 0.069865,
		-0.771201, -0.069865, -0.632747,
		43.711315, 30.281073, 24.069693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935593, 29.809593, 23.173512>,  <43.171474, 30.232166, 23.626770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935593, 29.809593, 23.173512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.546543, 29.835875, 23.084349>,  <42.313114, 29.851643, 23.030851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.546543, 29.835875, 23.084349>,  <42.935593, 29.809593, 23.173512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546543, 29.835875, 23.084349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208841, 0.667845, -0.714401,
		0.101928, -0.741395, -0.663283,
		-0.972623, 0.065704, -0.222906,
		42.254757, 29.855585, 23.017477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951096, 29.742359, 22.512573>,  <42.935593, 29.809593, 23.173512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951096, 29.742359, 22.512573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.602413, 29.926495, 22.579775>,  <42.393204, 30.036976, 22.620096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.602413, 29.926495, 22.579775>,  <42.951096, 29.742359, 22.512573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602413, 29.926495, 22.579775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312857, 0.786673, -0.532227,
		-0.377169, -0.411382, -0.829764,
		-0.871702, 0.460337, 0.168005,
		42.340904, 30.064596, 22.630177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777367, 29.898220, 21.850170>,  <42.951096, 29.742359, 22.512573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777367, 29.898220, 21.850170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.547588, 30.145636, 22.064617>,  <42.409721, 30.294085, 22.193285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.547588, 30.145636, 22.064617>,  <42.777367, 29.898220, 21.850170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547588, 30.145636, 22.064617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062565, 0.686230, -0.724689,
		-0.816150, -0.382750, -0.432899,
		-0.574443, 0.618539, 0.536120,
		42.375256, 30.331198, 22.225452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287754, 30.167645, 21.322792>,  <42.777367, 29.898220, 21.850170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287754, 30.167645, 21.322792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.305618, 30.436916, 21.618044>,  <42.316338, 30.598480, 21.795195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.305618, 30.436916, 21.618044>,  <42.287754, 30.167645, 21.322792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305618, 30.436916, 21.618044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102627, 0.731864, -0.673678,
		-0.993717, 0.105841, -0.036399,
		0.044664, 0.673181, 0.738128,
		42.319016, 30.638870, 21.839481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892178, 30.755083, 21.084551>,  <42.287754, 30.167645, 21.322792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892178, 30.755083, 21.084551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.148655, 30.900385, 21.354933>,  <42.302540, 30.987566, 21.517162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.148655, 30.900385, 21.354933>,  <41.892178, 30.755083, 21.084551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148655, 30.900385, 21.354933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320216, 0.673852, -0.665872,
		-0.697377, 0.643404, 0.315749,
		0.641192, 0.363256, 0.675957,
		42.341011, 31.009361, 21.557720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912189, 31.394562, 20.867085>,  <41.892178, 30.755083, 21.084551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912189, 31.394562, 20.867085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.208347, 31.389725, 21.135908>,  <42.386044, 31.386822, 21.297203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.208347, 31.389725, 21.135908>,  <41.912189, 31.394562, 20.867085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208347, 31.389725, 21.135908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445014, 0.758151, -0.476623,
		-0.503758, 0.651967, 0.566716,
		0.740399, -0.012094, 0.672059,
		42.430466, 31.386097, 21.337526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031918, 32.105339, 20.904755>,  <41.912189, 31.394562, 20.867085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031918, 32.105339, 20.904755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.354298, 31.902842, 21.027493>,  <42.547726, 31.781343, 21.101135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.354298, 31.902842, 21.027493>,  <42.031918, 32.105339, 20.904755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354298, 31.902842, 21.027493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577627, 0.559082, -0.594790,
		0.129558, 0.656615, 0.743015,
		0.805954, -0.506245, 0.306844,
		42.596085, 31.750967, 21.119545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900478, 32.885960, 21.169502>,  <42.031918, 32.105339, 20.904755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900478, 32.885960, 21.169502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.604404, 33.126141, 21.048452>,  <41.426762, 33.270248, 20.975822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.604404, 33.126141, 21.048452>,  <41.900478, 32.885960, 21.169502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604404, 33.126141, 21.048452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331945, 0.065092, 0.941050,
		0.584757, 0.797005, 0.151139,
		-0.740183, 0.600456, -0.302625,
		41.382351, 33.306278, 20.957664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775234, 33.404587, 21.678516>,  <41.900478, 32.885960, 21.169502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775234, 33.404587, 21.678516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.444630, 33.355259, 21.458815>,  <41.246269, 33.325661, 21.326994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.444630, 33.355259, 21.458815>,  <41.775234, 33.404587, 21.678516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444630, 33.355259, 21.458815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506639, -0.262324, 0.821282,
		-0.245364, 0.957068, 0.154333,
		-0.826507, -0.123322, -0.549252,
		41.196678, 33.318264, 21.294039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362175, 33.750656, 22.107016>,  <41.775234, 33.404587, 21.678516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362175, 33.750656, 22.107016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.143085, 33.512486, 21.871910>,  <41.011631, 33.369583, 21.730846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.143085, 33.512486, 21.871910>,  <41.362175, 33.750656, 22.107016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143085, 33.512486, 21.871910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610117, -0.196457, 0.767569,
		-0.572503, 0.779018, -0.255678,
		-0.547721, -0.595429, -0.587764,
		40.978767, 33.333858, 21.695581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697590, 33.901863, 22.244158>,  <41.362175, 33.750656, 22.107016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697590, 33.901863, 22.244158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.657406, 33.552250, 22.054008>,  <40.633293, 33.342484, 21.939919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.657406, 33.552250, 22.054008>,  <40.697590, 33.901863, 22.244158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657406, 33.552250, 22.054008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548072, -0.350148, 0.759614,
		-0.830376, 0.336853, -0.443853,
		-0.100464, -0.874029, -0.475374,
		40.627266, 33.290043, 21.911396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997017, 33.722229, 22.280924>,  <40.697590, 33.901863, 22.244158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997017, 33.722229, 22.280924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.227589, 33.397793, 22.241207>,  <40.365932, 33.203129, 22.217377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.227589, 33.397793, 22.241207>,  <39.997017, 33.722229, 22.280924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227589, 33.397793, 22.241207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468489, -0.427586, 0.773102,
		-0.669513, -0.399122, -0.626462,
		0.576429, -0.811092, -0.099290,
		40.400517, 33.154465, 22.211420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574413, 33.089916, 22.257376>,  <39.997017, 33.722229, 22.280924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574413, 33.089916, 22.257376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.935734, 32.960445, 22.370008>,  <40.152527, 32.882763, 22.437588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.935734, 32.960445, 22.370008>,  <39.574413, 33.089916, 22.257376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935734, 32.960445, 22.370008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427581, -0.625615, 0.652519,
		-0.035044, -0.709817, -0.703514,
		0.903298, -0.323676, 0.281580,
		40.206722, 32.863342, 22.454483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481720, 32.404552, 22.335272>,  <39.574413, 33.089916, 22.257376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481720, 32.404552, 22.335272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.828232, 32.430458, 22.533411>,  <40.036137, 32.446003, 22.652294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.828232, 32.430458, 22.533411>,  <39.481720, 32.404552, 22.335272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828232, 32.430458, 22.533411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383542, -0.549114, 0.742542,
		0.320092, -0.833234, -0.450845,
		0.866277, 0.064764, 0.495347,
		40.088116, 32.449886, 22.682014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.856678, 36.183147, 20.842100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.042042, 35.873833, 21.015205>,  <45.153259, 35.688244, 21.119068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.042042, 35.873833, 21.015205>,  <44.856678, 36.183147, 20.842100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042042, 35.873833, 21.015205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812078, -0.175134, 0.556648,
		-0.354656, -0.609392, -0.709126,
		0.463410, -0.773285, 0.432761,
		45.181065, 35.641850, 21.145035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.317024, 35.612709, 20.900480>,  <44.856678, 36.183147, 20.842100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.317024, 35.612709, 20.900480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.615685, 35.550022, 21.159077>,  <44.794880, 35.512409, 21.314236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.615685, 35.550022, 21.159077>,  <44.317024, 35.612709, 20.900480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615685, 35.550022, 21.159077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663616, -0.242854, 0.707557,
		0.046117, -0.957320, -0.285327,
		0.746651, -0.156717, 0.646492,
		44.839680, 35.503006, 21.353024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310703, 34.857300, 21.210907>,  <44.317024, 35.612709, 20.900480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.310703, 34.857300, 21.210907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.495506, 35.110146, 21.459738>,  <44.606388, 35.261852, 21.609037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.495506, 35.110146, 21.459738>,  <44.310703, 34.857300, 21.210907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.495506, 35.110146, 21.459738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625636, -0.264854, 0.733779,
		0.628590, -0.728209, 0.273107,
		0.462011, 0.632111, 0.622078,
		44.634109, 35.299778, 21.646360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.328270, 34.494621, 21.802792>,  <44.310703, 34.857300, 21.210907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.328270, 34.494621, 21.802792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.392872, 34.872524, 21.916882>,  <44.431633, 35.099266, 21.985334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.392872, 34.872524, 21.916882>,  <44.328270, 34.494621, 21.802792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392872, 34.872524, 21.916882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570259, -0.146540, 0.808289,
		0.805433, -0.293191, 0.515089,
		0.161502, 0.944757, 0.285223,
		44.441322, 35.155952, 22.002449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201771, 34.418278, 22.500820>,  <44.328270, 34.494621, 21.802792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201771, 34.418278, 22.500820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.187183, 34.812294, 22.433449>,  <44.178432, 35.048702, 22.393026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.187183, 34.812294, 22.433449>,  <44.201771, 34.418278, 22.500820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187183, 34.812294, 22.433449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761807, 0.081680, 0.642634,
		0.646776, 0.151746, 0.747431,
		-0.036467, 0.985039, -0.168430,
		44.176243, 35.107807, 22.382919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.257030, 34.711620, 23.159937>,  <44.201771, 34.418278, 22.500820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.257030, 34.711620, 23.159937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.081242, 34.990009, 22.932787>,  <43.975769, 35.157043, 22.796497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.081242, 34.990009, 22.932787>,  <44.257030, 34.711620, 23.159937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081242, 34.990009, 22.932787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706296, 0.122864, 0.697173,
		0.554987, 0.707475, 0.437570,
		-0.439471, 0.695976, -0.567875,
		43.949402, 35.198803, 22.762424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.222118, 35.476158, 23.580015>,  <44.257030, 34.711620, 23.159937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.222118, 35.476158, 23.580015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.952328, 35.454185, 23.285515>,  <43.790455, 35.441002, 23.108814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.952328, 35.454185, 23.285515>,  <44.222118, 35.476158, 23.580015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952328, 35.454185, 23.285515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725591, 0.233536, 0.647286,
		0.136387, 0.970796, -0.197369,
		-0.674475, -0.054928, -0.736252,
		43.749985, 35.437706, 23.064640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910366, 36.154270, 23.618443>,  <44.222118, 35.476158, 23.580015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910366, 36.154270, 23.618443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.654541, 35.924854, 23.413692>,  <43.501045, 35.787205, 23.290842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.654541, 35.924854, 23.413692>,  <43.910366, 36.154270, 23.618443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654541, 35.924854, 23.413692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736282, 0.265574, 0.622382,
		-0.221019, 0.774935, -0.592137,
		-0.639562, -0.573538, -0.511874,
		43.462673, 35.752792, 23.260130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.270462, 36.535305, 23.657991>,  <43.910366, 36.154270, 23.618443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.270462, 36.535305, 23.657991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.175655, 36.159538, 23.558945>,  <43.118771, 35.934078, 23.499517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.175655, 36.159538, 23.558945>,  <43.270462, 36.535305, 23.657991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175655, 36.159538, 23.558945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820968, 0.057391, 0.568083,
		-0.519458, 0.337927, -0.784836,
		-0.237013, -0.939421, -0.247615,
		43.104553, 35.877712, 23.484659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615429, 36.585342, 23.484150>,  <43.270462, 36.535305, 23.657991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615429, 36.585342, 23.484150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.685925, 36.201912, 23.573648>,  <42.728222, 35.971851, 23.627348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.685925, 36.201912, 23.573648>,  <42.615429, 36.585342, 23.484150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685925, 36.201912, 23.573648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779633, 0.002833, 0.626230,
		-0.600926, -0.284808, -0.746842,
		0.176239, -0.958581, 0.223749,
		42.738796, 35.914337, 23.640774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970764, 36.206936, 23.461201>,  <42.615429, 36.585342, 23.484150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970764, 36.206936, 23.461201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.192043, 35.954590, 23.678820>,  <42.324810, 35.803185, 23.809391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.192043, 35.954590, 23.678820>,  <41.970764, 36.206936, 23.461201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192043, 35.954590, 23.678820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792029, -0.195880, 0.578205,
		-0.258200, -0.750761, -0.608022,
		0.553193, -0.630864, 0.544048,
		42.358002, 35.765331, 23.842035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545235, 35.568947, 23.708055>,  <41.970764, 36.206936, 23.461201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545235, 35.568947, 23.708055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.842697, 35.649940, 23.962919>,  <42.021175, 35.698536, 24.115837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.842697, 35.649940, 23.962919>,  <41.545235, 35.568947, 23.708055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842697, 35.649940, 23.962919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648072, -0.015794, 0.761416,
		0.164239, -0.979158, 0.119479,
		0.743659, 0.202485, 0.637159,
		42.065796, 35.710686, 24.154066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.224339, 34.863857, 23.755362>,  <41.545235, 35.568947, 23.708055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.224339, 34.863857, 23.755362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.896347, 34.934200, 23.537477>,  <40.699551, 34.976406, 23.406748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.896347, 34.934200, 23.537477>,  <41.224339, 34.863857, 23.755362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896347, 34.934200, 23.537477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571839, 0.209774, -0.793092,
		-0.025207, -0.961805, -0.272574,
		-0.819978, 0.175860, -0.544710,
		40.650352, 34.986958, 23.374065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291939, 34.508785, 23.037695>,  <41.224339, 34.863857, 23.755362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291939, 34.508785, 23.037695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.014149, 34.792057, 22.986799>,  <40.847477, 34.962021, 22.956261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.014149, 34.792057, 22.986799>,  <41.291939, 34.508785, 23.037695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014149, 34.792057, 22.986799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456034, 0.296438, -0.839141,
		-0.556543, -0.640787, -0.528822,
		-0.694473, 0.708179, -0.127240,
		40.805805, 35.004509, 22.948627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165424, 34.453266, 22.336058>,  <41.291939, 34.508785, 23.037695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165424, 34.453266, 22.336058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.018150, 34.810711, 22.438734>,  <40.929787, 35.025177, 22.500340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.018150, 34.810711, 22.438734>,  <41.165424, 34.453266, 22.336058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018150, 34.810711, 22.438734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262412, 0.364739, -0.893367,
		-0.891952, -0.261569, -0.368788,
		-0.368189, 0.893615, 0.256691,
		40.907692, 35.078796, 22.515741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912350, 34.726799, 21.683746>,  <41.165424, 34.453266, 22.336058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912350, 34.726799, 21.683746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.946163, 35.064415, 21.895576>,  <40.966450, 35.266983, 22.022675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.946163, 35.064415, 21.895576>,  <40.912350, 34.726799, 21.683746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946163, 35.064415, 21.895576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188427, 0.508346, -0.840286,
		-0.978442, 0.170817, -0.116068,
		0.084533, 0.844042, 0.529574,
		40.971523, 35.317627, 22.054449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440521, 35.246136, 21.300604>,  <40.912350, 34.726799, 21.683746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440521, 35.246136, 21.300604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.689152, 35.465851, 21.524004>,  <40.838329, 35.597679, 21.658043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.689152, 35.465851, 21.524004>,  <40.440521, 35.246136, 21.300604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689152, 35.465851, 21.524004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178932, 0.594553, -0.783894,
		-0.762643, 0.587185, 0.271276,
		0.621578, 0.549291, 0.558498,
		40.875626, 35.630638, 21.691553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275764, 35.977894, 21.259153>,  <40.440521, 35.246136, 21.300604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275764, 35.977894, 21.259153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.657536, 35.970516, 21.378300>,  <40.886600, 35.966091, 21.449787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.657536, 35.970516, 21.378300>,  <40.275764, 35.977894, 21.259153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657536, 35.970516, 21.378300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230199, 0.680691, -0.695463,
		-0.189929, 0.732338, 0.653917,
		0.954429, -0.018443, 0.297867,
		40.943863, 35.964985, 21.467659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539421, 36.661846, 21.072525>,  <40.275764, 35.977894, 21.259153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539421, 36.661846, 21.072525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.856373, 36.422562, 21.120314>,  <41.046543, 36.278992, 21.148987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.856373, 36.422562, 21.120314>,  <40.539421, 36.661846, 21.072525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856373, 36.422562, 21.120314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370393, 0.316180, -0.873407,
		0.484710, 0.736322, 0.472109,
		0.792380, -0.598214, 0.119473,
		41.094086, 36.243099, 21.156155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189507, 37.056847, 21.071392>,  <40.539421, 36.661846, 21.072525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189507, 37.056847, 21.071392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.289158, 36.693882, 20.936014>,  <41.348949, 36.476105, 20.854788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.289158, 36.693882, 20.936014>,  <41.189507, 37.056847, 21.071392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289158, 36.693882, 20.936014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356056, 0.410802, -0.839324,
		0.900645, 0.088593, 0.425430,
		0.249126, -0.907410, -0.338443,
		41.363895, 36.421658, 20.834482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783543, 37.267132, 20.687767>,  <41.189507, 37.056847, 21.071392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783543, 37.267132, 20.687767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.735760, 36.882587, 20.588560>,  <41.707092, 36.651859, 20.529036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.735760, 36.882587, 20.588560>,  <41.783543, 37.267132, 20.687767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735760, 36.882587, 20.588560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449053, 0.170481, -0.877090,
		0.885484, -0.216146, 0.411338,
		-0.119454, -0.961362, -0.248020,
		41.699924, 36.594177, 20.514154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350830, 37.092869, 20.408920>,  <41.783543, 37.267132, 20.687767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350830, 37.092869, 20.408920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.117626, 36.800747, 20.266508>,  <41.977703, 36.625473, 20.181061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.117626, 36.800747, 20.266508>,  <42.350830, 37.092869, 20.408920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117626, 36.800747, 20.266508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486709, 0.036945, -0.872783,
		0.650551, -0.682121, 0.333907,
		-0.583007, -0.730305, -0.356029,
		41.942722, 36.581654, 20.159700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727211, 36.649250, 19.902330>,  <42.350830, 37.092869, 20.408920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727211, 36.649250, 19.902330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.352898, 36.546864, 19.805338>,  <42.128311, 36.485432, 19.747143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.352898, 36.546864, 19.805338>,  <42.727211, 36.649250, 19.902330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352898, 36.546864, 19.805338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242538, 0.031858, -0.969619,
		0.255916, -0.966160, 0.032270,
		-0.935779, -0.255968, -0.242483,
		42.072163, 36.470074, 19.732594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730751, 35.987720, 19.483746>,  <42.727211, 36.649250, 19.902330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.730751, 35.987720, 19.483746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.417912, 36.222019, 19.398684>,  <42.230209, 36.362598, 19.347647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.417912, 36.222019, 19.398684>,  <42.730751, 35.987720, 19.483746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417912, 36.222019, 19.398684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258475, -0.005587, -0.966002,
		-0.567022, -0.810474, -0.147032,
		-0.782098, 0.585748, -0.212655,
		42.183281, 36.397743, 19.334887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622063, 35.757668, 18.787697>,  <42.730751, 35.987720, 19.483746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622063, 35.757668, 18.787697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.381203, 36.074924, 18.824224>,  <42.236687, 36.265278, 18.846140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.381203, 36.074924, 18.824224>,  <42.622063, 35.757668, 18.787697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381203, 36.074924, 18.824224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019297, 0.128802, -0.991483,
		-0.798147, -0.595262, -0.092864,
		-0.602153, 0.793141, 0.091317,
		42.200558, 36.312866, 18.851620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030502, 35.210251, 19.022068>,  <42.622063, 35.757668, 18.787697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030502, 35.210251, 19.022068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.788887, 35.027462, 18.760895>,  <42.643917, 34.917789, 18.604191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.788887, 35.027462, 18.760895>,  <43.030502, 35.210251, 19.022068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788887, 35.027462, 18.760895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495198, -0.426718, 0.756763,
		-0.624435, 0.780443, 0.031463,
		-0.604036, -0.456969, -0.652932,
		42.607677, 34.890373, 18.565016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412262, 35.192085, 19.317770>,  <43.030502, 35.210251, 19.022068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412262, 35.192085, 19.317770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.410278, 34.906574, 19.037628>,  <42.409088, 34.735268, 18.869543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.410278, 34.906574, 19.037628>,  <42.412262, 35.192085, 19.317770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410278, 34.906574, 19.037628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597651, -0.559400, 0.574355,
		-0.801741, 0.421419, -0.423812,
		-0.004964, -0.713776, -0.700356,
		42.408791, 34.692440, 18.827522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771603, 35.071552, 19.404665>,  <42.412262, 35.192085, 19.317770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771603, 35.071552, 19.404665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.909813, 34.764416, 19.188875>,  <41.992741, 34.580135, 19.059401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.909813, 34.764416, 19.188875>,  <41.771603, 35.071552, 19.404665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909813, 34.764416, 19.188875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395895, -0.640495, 0.658052,
		-0.850810, -0.013800, -0.525293,
		0.345528, -0.767838, -0.539476,
		42.013470, 34.534065, 19.027033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183491, 34.638123, 19.175211>,  <41.771603, 35.071552, 19.404665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183491, 34.638123, 19.175211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.512409, 34.415821, 19.224140>,  <41.709763, 34.282440, 19.253498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.512409, 34.415821, 19.224140>,  <41.183491, 34.638123, 19.175211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512409, 34.415821, 19.224140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524554, -0.656941, 0.541546,
		-0.220604, -0.509479, -0.831724,
		0.822300, -0.555751, 0.122326,
		41.759098, 34.249096, 19.260838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958603, 33.892876, 19.073538>,  <41.183491, 34.638123, 19.175211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958603, 33.892876, 19.073538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.312416, 33.888744, 19.260080>,  <41.524704, 33.886265, 19.372005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.312416, 33.888744, 19.260080>,  <40.958603, 33.892876, 19.073538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312416, 33.888744, 19.260080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402203, -0.523285, 0.751269,
		0.236276, -0.852095, -0.467020,
		0.884537, -0.010330, 0.466355,
		41.577778, 33.885647, 19.399986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110455, 33.175419, 19.310686>,  <40.958603, 33.892876, 19.073538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110455, 33.175419, 19.310686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.337669, 33.420361, 19.530636>,  <41.473999, 33.567326, 19.662605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.337669, 33.420361, 19.530636>,  <41.110455, 33.175419, 19.310686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337669, 33.420361, 19.530636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130882, -0.592414, 0.794931,
		0.812530, -0.523518, -0.256366,
		0.568036, 0.612352, 0.549873,
		41.508080, 33.604065, 19.695599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576481, 32.716148, 19.815460>,  <41.110455, 33.175419, 19.310686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576481, 32.716148, 19.815460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.562973, 33.088505, 19.960951>,  <41.554871, 33.311920, 20.048244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.562973, 33.088505, 19.960951>,  <41.576481, 32.716148, 19.815460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562973, 33.088505, 19.960951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267727, -0.359058, 0.894092,
		0.962903, -0.067189, 0.261349,
		-0.033767, 0.930894, 0.363726,
		41.552841, 33.367771, 20.070068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813648, 32.697056, 20.467007>,  <41.576481, 32.716148, 19.815460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813648, 32.697056, 20.467007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.592819, 33.030334, 20.454325>,  <41.460323, 33.230301, 20.446716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.592819, 33.030334, 20.454325>,  <41.813648, 32.697056, 20.467007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592819, 33.030334, 20.454325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366508, -0.208341, 0.906789,
		0.748927, 0.512229, 0.420391,
		-0.552069, 0.833196, -0.031704,
		41.427200, 33.280293, 20.444813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562485, 32.598637, 20.857410>,  <41.813648, 32.697056, 20.467007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562485, 32.598637, 20.857410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.781952, 32.264881, 20.878426>,  <42.913631, 32.064629, 20.891035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.781952, 32.264881, 20.878426>,  <42.562485, 32.598637, 20.857410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781952, 32.264881, 20.878426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599730, 0.349023, -0.720075,
		0.582484, 0.426591, 0.691905,
		0.548668, -0.834388, 0.052539,
		42.946552, 32.014565, 20.894188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350147, 32.789619, 20.975153>,  <42.562485, 32.598637, 20.857410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350147, 32.789619, 20.975153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.366352, 32.424252, 20.813156>,  <43.376076, 32.205029, 20.715958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.366352, 32.424252, 20.813156>,  <43.350147, 32.789619, 20.975153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366352, 32.424252, 20.813156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718608, 0.308258, -0.623361,
		0.694234, -0.265779, 0.668880,
		0.040512, -0.913421, -0.404994,
		43.378506, 32.150227, 20.691658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.118141, 32.601479, 20.934156>,  <43.350147, 32.789619, 20.975153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.118141, 32.601479, 20.934156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.934155, 32.367878, 20.666615>,  <43.823761, 32.227718, 20.506090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.934155, 32.367878, 20.666615>,  <44.118141, 32.601479, 20.934156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934155, 32.367878, 20.666615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694157, 0.233213, -0.680998,
		0.553692, -0.777528, 0.298120,
		-0.459969, -0.584005, -0.668855,
		43.796165, 32.192677, 20.465958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567173, 32.044327, 20.705553>,  <44.118141, 32.601479, 20.934156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567173, 32.044327, 20.705553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.279160, 32.068947, 20.429071>,  <44.106350, 32.083721, 20.263182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.279160, 32.068947, 20.429071>,  <44.567173, 32.044327, 20.705553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279160, 32.068947, 20.429071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684882, -0.097369, -0.722119,
		-0.111761, -0.993342, 0.027942,
		-0.720032, 0.061568, -0.691204,
		44.063148, 32.087414, 20.221710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803898, 31.551239, 20.276331>,  <44.567173, 32.044327, 20.705553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803898, 31.551239, 20.276331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.542442, 31.775785, 20.073303>,  <44.385571, 31.910513, 19.951487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.542442, 31.775785, 20.073303>,  <44.803898, 31.551239, 20.276331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542442, 31.775785, 20.073303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587935, -0.045654, -0.807619,
		-0.476542, -0.826308, -0.300205,
		-0.653637, 0.561365, -0.507571,
		44.346352, 31.944195, 19.921032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.755283, 31.290367, 19.643984>,  <44.803898, 31.551239, 20.276331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.755283, 31.290367, 19.643984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.610298, 31.655828, 19.570379>,  <44.523308, 31.875105, 19.526217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.610298, 31.655828, 19.570379>,  <44.755283, 31.290367, 19.643984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.610298, 31.655828, 19.570379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431269, -0.010604, -0.902161,
		-0.826214, -0.406355, -0.390187,
		-0.362460, 0.913654, -0.184009,
		44.501560, 31.929924, 19.515177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579258, 31.361359, 18.962889>,  <44.755283, 31.290367, 19.643984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579258, 31.361359, 18.962889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.604828, 31.750475, 19.051968>,  <44.620171, 31.983944, 19.105415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.604828, 31.750475, 19.051968>,  <44.579258, 31.361359, 18.962889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604828, 31.750475, 19.051968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543879, 0.153142, -0.825072,
		-0.836726, 0.173861, -0.519290,
		0.063923, 0.972790, 0.222697,
		44.624004, 32.042313, 19.118776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448887, 31.619667, 18.289680>,  <44.579258, 31.361359, 18.962889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448887, 31.619667, 18.289680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.631271, 31.898869, 18.510550>,  <44.740704, 32.066387, 18.643070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.631271, 31.898869, 18.510550>,  <44.448887, 31.619667, 18.289680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631271, 31.898869, 18.510550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657806, 0.153601, -0.737359,
		-0.599492, 0.699428, -0.389113,
		0.455961, 0.698002, 0.552171,
		44.768059, 32.108269, 18.676201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.487144, 32.281715, 17.875219>,  <44.448887, 31.619667, 18.289680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.487144, 32.281715, 17.875219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.781773, 32.214348, 18.137243>,  <44.958549, 32.173927, 18.294458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.781773, 32.214348, 18.137243>,  <44.487144, 32.281715, 17.875219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781773, 32.214348, 18.137243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676347, 0.176367, -0.715157,
		0.004912, 0.969810, 0.243814,
		0.736566, -0.168416, 0.655062,
		45.002743, 32.163822, 18.333761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.100582, 29.871368, 32.841888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.491627, 29.953444, 32.860508>,  <38.726254, 30.002687, 32.871677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.491627, 29.953444, 32.860508>,  <38.100582, 29.871368, 32.841888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491627, 29.953444, 32.860508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015147, 0.152012, -0.988262,
		-0.209854, 0.966846, 0.145501,
		0.977615, 0.205186, 0.046545,
		38.784912, 30.014999, 32.874470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265236, 30.343369, 32.366547>,  <38.100582, 29.871368, 32.841888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265236, 30.343369, 32.366547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.607681, 30.146757, 32.430378>,  <38.813148, 30.028790, 32.468678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.607681, 30.146757, 32.430378>,  <38.265236, 30.343369, 32.366547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607681, 30.146757, 32.430378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150676, -0.057962, -0.986883,
		0.494331, 0.868930, 0.024440,
		0.856115, -0.491530, 0.159579,
		38.864517, 29.999298, 32.478252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653233, 30.588648, 31.824991>,  <38.265236, 30.343369, 32.366547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653233, 30.588648, 31.824991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.863415, 30.268566, 31.940626>,  <38.989525, 30.076517, 32.010006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.863415, 30.268566, 31.940626>,  <38.653233, 30.588648, 31.824991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863415, 30.268566, 31.940626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194301, -0.217935, -0.956426,
		0.828339, 0.558727, 0.040966,
		0.525453, -0.800206, 0.289085,
		39.021049, 30.028505, 32.027351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223167, 30.592840, 31.405048>,  <38.653233, 30.588648, 31.824991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223167, 30.592840, 31.405048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.259594, 30.219875, 31.544941>,  <39.281452, 29.996096, 31.628876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.259594, 30.219875, 31.544941>,  <39.223167, 30.592840, 31.405048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259594, 30.219875, 31.544941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324439, -0.304251, -0.895640,
		0.941513, 0.195031, 0.274804,
		0.091068, -0.932413, 0.349732,
		39.286915, 29.940151, 31.649860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919891, 30.410902, 31.314655>,  <39.223167, 30.592840, 31.405048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919891, 30.410902, 31.314655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.690422, 30.084078, 31.337658>,  <39.552738, 29.887983, 31.351460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.690422, 30.084078, 31.337658>,  <39.919891, 30.410902, 31.314655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690422, 30.084078, 31.337658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184170, -0.197084, -0.962933,
		0.798108, -0.541821, 0.263541,
		-0.573677, -0.817061, 0.057506,
		39.518318, 29.838959, 31.354910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323711, 29.896147, 31.137476>,  <39.919891, 30.410902, 31.314655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323711, 29.896147, 31.137476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.949863, 29.775852, 31.061544>,  <39.725555, 29.703674, 31.015985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.949863, 29.775852, 31.061544>,  <40.323711, 29.896147, 31.137476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949863, 29.775852, 31.061544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264883, -0.232478, -0.935837,
		0.237311, -0.924938, 0.296940,
		-0.934623, -0.300739, -0.189831,
		39.669476, 29.685631, 31.004595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425606, 29.278591, 30.834818>,  <40.323711, 29.896147, 31.137476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425606, 29.278591, 30.834818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.045288, 29.330948, 30.722492>,  <39.817097, 29.362362, 30.655096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.045288, 29.330948, 30.722492>,  <40.425606, 29.278591, 30.834818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045288, 29.330948, 30.722492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251123, -0.205262, -0.945941,
		-0.181452, -0.969915, 0.162293,
		-0.950795, 0.130888, -0.280814,
		39.760048, 29.370216, 30.638248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215729, 28.712301, 30.414692>,  <40.425606, 29.278591, 30.834818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215729, 28.712301, 30.414692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.936024, 28.976881, 30.306238>,  <39.768200, 29.135628, 30.241165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.936024, 28.976881, 30.306238>,  <40.215729, 28.712301, 30.414692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936024, 28.976881, 30.306238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047322, -0.335621, -0.940808,
		-0.713294, -0.670705, 0.203388,
		-0.699265, 0.661448, -0.271136,
		39.726246, 29.175316, 30.224897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915318, 28.296886, 29.931372>,  <40.215729, 28.712301, 30.414692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915318, 28.296886, 29.931372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.785851, 28.670818, 29.872948>,  <39.708172, 28.895178, 29.837894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.785851, 28.670818, 29.872948>,  <39.915318, 28.296886, 29.931372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785851, 28.670818, 29.872948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060671, -0.174556, -0.982776,
		-0.944224, -0.309230, 0.113214,
		-0.323666, 0.934830, -0.146059,
		39.688751, 28.951267, 29.829130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332714, 28.332670, 29.536690>,  <39.915318, 28.296886, 29.931372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332714, 28.332670, 29.536690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.509384, 28.684175, 29.464361>,  <39.615387, 28.895079, 29.420963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.509384, 28.684175, 29.464361>,  <39.332714, 28.332670, 29.536690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509384, 28.684175, 29.464361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024527, -0.213298, -0.976679,
		-0.896838, 0.426943, -0.115763,
		0.441679, 0.878762, -0.180822,
		39.641888, 28.947803, 29.410114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030716, 28.517519, 28.881191>,  <39.332714, 28.332670, 29.536690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030716, 28.517519, 28.881191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.332184, 28.779949, 28.896908>,  <39.513065, 28.937407, 28.906338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.332184, 28.779949, 28.896908>,  <39.030716, 28.517519, 28.881191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332184, 28.779949, 28.896908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085603, -0.038712, -0.995577,
		-0.651653, 0.753702, -0.085338,
		0.753672, 0.656076, 0.039292,
		39.558285, 28.976772, 28.908695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900341, 29.060005, 28.275595>,  <39.030716, 28.517519, 28.881191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900341, 29.060005, 28.275595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.280327, 29.120146, 28.385111>,  <39.508320, 29.156231, 28.450821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.280327, 29.120146, 28.385111>,  <38.900341, 29.060005, 28.275595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280327, 29.120146, 28.385111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292092, -0.117007, -0.949206,
		-0.110680, 0.981684, -0.155069,
		0.949964, 0.150352, 0.273792,
		39.565315, 29.165251, 28.467249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741638, 29.845835, 28.336843>,  <38.900341, 29.060005, 28.275595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741638, 29.845835, 28.336843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.465786, 30.072672, 28.156702>,  <38.300274, 30.208775, 28.048618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.465786, 30.072672, 28.156702>,  <38.741638, 29.845835, 28.336843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465786, 30.072672, 28.156702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406955, 0.210915, 0.888765,
		0.598999, 0.796190, 0.085329,
		-0.689629, 0.567094, -0.450351,
		38.258896, 30.242800, 28.021597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681484, 30.420708, 28.792536>,  <38.741638, 29.845835, 28.336843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681484, 30.420708, 28.792536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.356392, 30.445724, 28.560827>,  <38.161335, 30.460735, 28.421803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.356392, 30.445724, 28.560827>,  <38.681484, 30.420708, 28.792536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356392, 30.445724, 28.560827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533476, 0.319833, 0.783014,
		0.234241, 0.945408, -0.226574,
		-0.812733, 0.062542, -0.579270,
		38.112572, 30.464487, 28.387047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349457, 30.959547, 28.942638>,  <38.681484, 30.420708, 28.792536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349457, 30.959547, 28.942638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.048248, 30.756212, 28.775524>,  <37.867523, 30.634211, 28.675255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.048248, 30.756212, 28.775524>,  <38.349457, 30.959547, 28.942638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048248, 30.756212, 28.775524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631051, 0.378114, 0.677351,
		-0.186352, 0.773707, -0.605517,
		-0.753025, -0.508338, -0.417786,
		37.822342, 30.603710, 28.650188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883389, 31.432764, 28.893961>,  <38.349457, 30.959547, 28.942638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883389, 31.432764, 28.893961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.663101, 31.099138, 28.881077>,  <37.530930, 30.898962, 28.873346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.663101, 31.099138, 28.881077>,  <37.883389, 31.432764, 28.893961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663101, 31.099138, 28.881077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623582, 0.385478, 0.680112,
		-0.554843, 0.394639, -0.732400,
		-0.550722, -0.834067, -0.032210,
		37.497883, 30.848919, 28.871414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111771, 31.664930, 28.977060>,  <37.883389, 31.432764, 28.893961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111771, 31.664930, 28.977060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.094429, 31.266893, 29.012632>,  <37.084026, 31.028070, 29.033976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.094429, 31.266893, 29.012632>,  <37.111771, 31.664930, 28.977060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094429, 31.266893, 29.012632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859233, 0.082553, 0.504880,
		-0.509745, -0.054527, -0.858596,
		-0.043350, -0.995094, 0.088932,
		37.081425, 30.968365, 29.039312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449066, 31.396664, 28.749273>,  <37.111771, 31.664930, 28.977060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449066, 31.396664, 28.749273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.607399, 31.156397, 29.027128>,  <36.702396, 31.012238, 29.193840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.607399, 31.156397, 29.027128>,  <36.449066, 31.396664, 28.749273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607399, 31.156397, 29.027128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828081, 0.093533, 0.552751,
		-0.396990, -0.794010, -0.460377,
		0.395830, -0.600666, 0.694636,
		36.726147, 30.976196, 29.235519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966442, 30.785934, 28.865013>,  <36.449066, 31.396664, 28.749273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966442, 30.785934, 28.865013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.184021, 30.840189, 29.196245>,  <36.314568, 30.872742, 29.394985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.184021, 30.840189, 29.196245>,  <35.966442, 30.785934, 28.865013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184021, 30.840189, 29.196245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836895, 0.015915, 0.547133,
		0.061041, -0.990629, 0.122184,
		0.543950, 0.135653, 0.828080,
		36.347206, 30.880880, 29.444670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651394, 30.334543, 29.415833>,  <35.966442, 30.785934, 28.865013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651394, 30.334543, 29.415833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874989, 30.608629, 29.602598>,  <36.009148, 30.773081, 29.714657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.874989, 30.608629, 29.602598>,  <35.651394, 30.334543, 29.415833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874989, 30.608629, 29.602598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693830, 0.078210, 0.715879,
		0.454015, -0.724127, 0.519143,
		0.558989, 0.685217, 0.466913,
		36.042686, 30.814194, 29.742672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690216, 30.086426, 30.101074>,  <35.651394, 30.334543, 29.415833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690216, 30.086426, 30.101074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.758419, 30.479143, 30.134558>,  <35.799343, 30.714773, 30.154648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.758419, 30.479143, 30.134558>,  <35.690216, 30.086426, 30.101074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758419, 30.479143, 30.134558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693815, 0.059302, 0.717707,
		0.699676, -0.180455, 0.691295,
		0.170509, 0.981794, 0.083710,
		35.809570, 30.773682, 30.159670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753765, 30.167776, 30.781731>,  <35.690216, 30.086426, 30.101074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753765, 30.167776, 30.781731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.692699, 30.535105, 30.635649>,  <35.656059, 30.755503, 30.547998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.692699, 30.535105, 30.635649>,  <35.753765, 30.167776, 30.781731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692699, 30.535105, 30.635649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683945, 0.168572, 0.709791,
		0.713381, 0.358144, 0.602346,
		-0.152668, 0.918323, -0.365206,
		35.646900, 30.810602, 30.526087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512360, 30.474852, 31.353996>,  <35.753765, 30.167776, 30.781731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512360, 30.474852, 31.353996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421154, 30.755701, 31.084173>,  <35.366428, 30.924212, 30.922279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.421154, 30.755701, 31.084173>,  <35.512360, 30.474852, 31.353996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421154, 30.755701, 31.084173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626638, 0.424429, 0.653593,
		0.745206, 0.571736, 0.343200,
		-0.228019, 0.702124, -0.674559,
		35.352749, 30.966339, 30.881805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508499, 31.201548, 31.647476>,  <35.512360, 30.474852, 31.353996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508499, 31.201548, 31.647476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.253738, 31.194765, 31.339172>,  <35.100883, 31.190697, 31.154190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.253738, 31.194765, 31.339172>,  <35.508499, 31.201548, 31.647476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253738, 31.194765, 31.339172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664981, 0.517930, 0.538098,
		0.390077, 0.855255, -0.341143,
		-0.636899, -0.016954, -0.770761,
		35.062668, 31.189678, 31.107944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156982, 31.811510, 31.661282>,  <35.508499, 31.201548, 31.647476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156982, 31.811510, 31.661282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.908344, 31.587233, 31.442472>,  <34.759159, 31.452665, 31.311188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.908344, 31.587233, 31.442472>,  <35.156982, 31.811510, 31.661282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908344, 31.587233, 31.442472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778953, 0.516202, 0.356045,
		0.082742, 0.647423, -0.757626,
		-0.621600, -0.560695, -0.547023,
		34.721863, 31.419024, 31.278366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614086, 32.288414, 31.477993>,  <35.156982, 31.811510, 31.661282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614086, 32.288414, 31.477993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.461376, 31.921577, 31.432047>,  <34.369751, 31.701477, 31.404480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.461376, 31.921577, 31.432047>,  <34.614086, 32.288414, 31.477993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461376, 31.921577, 31.432047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876377, 0.319715, 0.360203,
		-0.293613, 0.238183, -0.925775,
		-0.381779, -0.917089, -0.114865,
		34.346844, 31.646450, 31.397587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923527, 32.460537, 31.259302>,  <34.614086, 32.288414, 31.477993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923527, 32.460537, 31.259302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966217, 32.081070, 31.378395>,  <33.991833, 31.853390, 31.449850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966217, 32.081070, 31.378395>,  <33.923527, 32.460537, 31.259302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966217, 32.081070, 31.378395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912306, 0.025632, 0.408705,
		-0.395356, -0.315242, -0.862738,
		0.106727, -0.948665, 0.297731,
		33.998234, 31.796471, 31.467714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321033, 33.235325, 31.238077>,  <33.923527, 32.460537, 31.259302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321033, 33.235325, 31.238077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.306278, 33.496918, 31.540319>,  <34.297424, 33.653873, 31.721664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.306278, 33.496918, 31.540319>,  <34.321033, 33.235325, 31.238077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306278, 33.496918, 31.540319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348275, 0.717128, -0.603681,
		-0.936666, 0.240892, -0.254219,
		-0.036885, 0.653986, 0.755607,
		34.295212, 33.693115, 31.767002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894207, 33.813591, 31.190123>,  <34.321033, 33.235325, 31.238077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894207, 33.813591, 31.190123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.162724, 33.970642, 31.441584>,  <34.323833, 34.064873, 31.592461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.162724, 33.970642, 31.441584>,  <33.894207, 33.813591, 31.190123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162724, 33.970642, 31.441584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388160, 0.536326, -0.749457,
		-0.631423, 0.747125, 0.207630,
		0.671295, 0.392631, 0.628652,
		34.364113, 34.088432, 31.630178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923843, 34.508228, 30.767120>,  <33.894207, 33.813591, 31.190123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923843, 34.508228, 30.767120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.228916, 34.415230, 31.008535>,  <34.411961, 34.359432, 31.153385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.228916, 34.415230, 31.008535>,  <33.923843, 34.508228, 30.767120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228916, 34.415230, 31.008535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626714, 0.496242, -0.600811,
		-0.159816, 0.836475, 0.524184,
		0.762685, -0.232494, 0.603538,
		34.457722, 34.345482, 31.189596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360455, 35.105408, 30.941776>,  <33.923843, 34.508228, 30.767120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360455, 35.105408, 30.941776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.572258, 34.766747, 30.920626>,  <34.699341, 34.563549, 30.907936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.572258, 34.766747, 30.920626>,  <34.360455, 35.105408, 30.941776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572258, 34.766747, 30.920626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582173, 0.408020, -0.703273,
		0.617005, 0.341606, 0.708950,
		0.529509, -0.846655, -0.052876,
		34.731110, 34.512749, 30.904762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055145, 35.246712, 30.544556>,  <34.360455, 35.105408, 30.941776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055145, 35.246712, 30.544556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041786, 34.846935, 30.543575>,  <35.033772, 34.607071, 30.542986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041786, 34.846935, 30.543575>,  <35.055145, 35.246712, 30.544556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041786, 34.846935, 30.543575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643945, -0.019640, -0.764820,
		0.764343, -0.027120, 0.644240,
		-0.033395, -0.999439, -0.002453,
		35.031769, 34.547104, 30.542839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681641, 35.092770, 30.491674>,  <35.055145, 35.246712, 30.544556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681641, 35.092770, 30.491674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.543564, 34.727402, 30.405407>,  <35.460716, 34.508183, 30.353647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.543564, 34.727402, 30.405407>,  <35.681641, 35.092770, 30.491674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543564, 34.727402, 30.405407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783969, -0.154296, -0.601320,
		0.515979, -0.376650, 0.769351,
		-0.345195, -0.913415, -0.215668,
		35.440006, 34.453377, 30.340706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272198, 34.726398, 30.429781>,  <35.681641, 35.092770, 30.491674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272198, 34.726398, 30.429781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.009171, 34.489300, 30.243769>,  <35.851353, 34.347042, 30.132160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.009171, 34.489300, 30.243769>,  <36.272198, 34.726398, 30.429781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009171, 34.489300, 30.243769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724508, -0.328248, -0.606086,
		0.206607, -0.735465, 0.645294,
		-0.657572, -0.592742, -0.465032,
		35.811897, 34.311478, 30.104259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598877, 34.113720, 30.162550>,  <36.272198, 34.726398, 30.429781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598877, 34.113720, 30.162550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.265404, 34.163586, 29.947351>,  <36.065319, 34.193504, 29.818233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.265404, 34.163586, 29.947351>,  <36.598877, 34.113720, 30.162550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265404, 34.163586, 29.947351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536297, -0.049706, -0.842565,
		-0.131780, -0.990953, -0.025418,
		-0.833679, 0.124665, -0.537995,
		36.015301, 34.200985, 29.785954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527161, 33.581024, 29.593222>,  <36.598877, 34.113720, 30.162550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527161, 33.581024, 29.593222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.324097, 33.911861, 29.496723>,  <36.202259, 34.110363, 29.438824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.324097, 33.911861, 29.496723>,  <36.527161, 33.581024, 29.593222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324097, 33.911861, 29.496723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461953, 0.024953, -0.886553,
		-0.727240, -0.561514, -0.394745,
		-0.507662, 0.827091, -0.241246,
		36.171799, 34.159988, 29.424349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185287, 33.397038, 28.985853>,  <36.527161, 33.581024, 29.593222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185287, 33.397038, 28.985853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196369, 33.796703, 28.973797>,  <36.203018, 34.036503, 28.966564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196369, 33.796703, 28.973797>,  <36.185287, 33.397038, 28.985853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196369, 33.796703, 28.973797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354701, -0.038013, -0.934207,
		-0.934569, 0.015187, -0.355457,
		0.027700, 0.999162, -0.030139,
		36.204678, 34.096451, 28.964756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058762, 33.574112, 28.310354>,  <36.185287, 33.397038, 28.985853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058762, 33.574112, 28.310354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.218246, 33.908112, 28.462040>,  <36.313938, 34.108513, 28.553051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.218246, 33.908112, 28.462040>,  <36.058762, 33.574112, 28.310354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218246, 33.908112, 28.462040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410484, 0.207275, -0.887998,
		-0.820080, 0.509716, -0.260111,
		0.398713, 0.835001, 0.379212,
		36.337860, 34.158611, 28.575804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841194, 34.104622, 27.777670>,  <36.058762, 33.574112, 28.310354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841194, 34.104622, 27.777670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.138454, 34.229008, 28.014662>,  <36.316811, 34.303638, 28.156857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.138454, 34.229008, 28.014662>,  <35.841194, 34.104622, 27.777670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138454, 34.229008, 28.014662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498212, 0.333927, -0.800173,
		-0.446671, 0.889827, 0.093230,
		0.743148, 0.310966, 0.592479,
		36.361401, 34.322296, 28.192406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953548, 34.854462, 27.667320>,  <35.841194, 34.104622, 27.777670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953548, 34.854462, 27.667320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.306187, 34.716579, 27.796295>,  <36.517769, 34.633850, 27.873680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.306187, 34.716579, 27.796295>,  <35.953548, 34.854462, 27.667320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306187, 34.716579, 27.796295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416268, 0.245782, -0.875392,
		0.222501, 0.905964, 0.360170,
		0.881597, -0.344703, 0.322437,
		36.570667, 34.613167, 27.893026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471943, 35.338127, 27.377859>,  <35.953548, 34.854462, 27.667320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471943, 35.338127, 27.377859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675156, 35.005871, 27.469019>,  <36.797085, 34.806519, 27.523714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.675156, 35.005871, 27.469019>,  <36.471943, 35.338127, 27.377859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675156, 35.005871, 27.469019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554293, 0.112762, -0.824648,
		0.659287, 0.545274, 0.517704,
		0.508036, -0.830639, 0.227899,
		36.827568, 34.756680, 27.537388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167332, 35.536720, 27.248869>,  <36.471943, 35.338127, 27.377859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167332, 35.536720, 27.248869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.166767, 35.136772, 27.255196>,  <37.166428, 34.896801, 27.258991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.166767, 35.136772, 27.255196>,  <37.167332, 35.536720, 27.248869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166767, 35.136772, 27.255196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603525, -0.013465, -0.797231,
		0.797343, 0.008420, 0.603467,
		-0.001413, -0.999874, 0.015818,
		37.166344, 34.836811, 27.259941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840176, 35.436470, 27.223265>,  <37.167332, 35.536720, 27.248869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840176, 35.436470, 27.223265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.652340, 35.110706, 27.086897>,  <37.539639, 34.915249, 27.005075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.652340, 35.110706, 27.086897>,  <37.840176, 35.436470, 27.223265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652340, 35.110706, 27.086897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659837, -0.067177, -0.748400,
		0.586599, -0.576396, 0.568920,
		-0.469593, -0.814405, -0.340921,
		37.511463, 34.866386, 26.984621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309521, 34.934242, 27.036049>,  <37.840176, 35.436470, 27.223265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309521, 34.934242, 27.036049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.997108, 34.809612, 26.819563>,  <37.809662, 34.734833, 26.689671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.997108, 34.809612, 26.819563>,  <38.309521, 34.934242, 27.036049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997108, 34.809612, 26.819563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618425, -0.265358, -0.739686,
		0.086852, -0.912417, 0.399939,
		-0.781029, -0.311576, -0.541215,
		37.762798, 34.716141, 26.657198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577057, 34.374367, 26.721668>,  <38.309521, 34.934242, 27.036049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577057, 34.374367, 26.721668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.249729, 34.464222, 26.510052>,  <38.053333, 34.518135, 26.383081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.249729, 34.464222, 26.510052>,  <38.577057, 34.374367, 26.721668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249729, 34.464222, 26.510052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492499, -0.200454, -0.846914,
		-0.296301, -0.953601, 0.053399,
		-0.818322, 0.224643, -0.529042,
		38.004234, 34.531612, 26.351339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420048, 33.767643, 26.261425>,  <38.577057, 34.374367, 26.721668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420048, 33.767643, 26.261425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.267944, 34.094513, 26.088156>,  <38.176682, 34.290634, 25.984194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.267944, 34.094513, 26.088156>,  <38.420048, 33.767643, 26.261425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267944, 34.094513, 26.088156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289113, -0.339860, -0.894935,
		-0.878533, -0.465538, -0.107022,
		-0.380254, 0.817171, -0.433172,
		38.153870, 34.339664, 25.958204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049320, 33.561451, 25.597502>,  <38.420048, 33.767643, 26.261425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049320, 33.561451, 25.597502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128124, 33.948986, 25.537439>,  <38.175407, 34.181507, 25.501402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128124, 33.948986, 25.537439>,  <38.049320, 33.561451, 25.597502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128124, 33.948986, 25.537439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457925, -0.226359, -0.859690,
		-0.866886, 0.100606, -0.488248,
		0.197009, 0.968834, -0.150158,
		38.187225, 34.239635, 25.492392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931293, 33.596626, 24.917185>,  <38.049320, 33.561451, 25.597502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931293, 33.596626, 24.917185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.140541, 33.927406, 24.999651>,  <38.266090, 34.125874, 25.049131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.140541, 33.927406, 24.999651>,  <37.931293, 33.596626, 24.917185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140541, 33.927406, 24.999651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381309, -0.010753, -0.924385,
		-0.762201, 0.562177, -0.320947,
		0.523119, 0.826947, 0.206167,
		38.297478, 34.175491, 25.061501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124714, 33.830582, 24.231213>,  <37.931293, 33.596626, 24.917185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124714, 33.830582, 24.231213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.355831, 34.047153, 24.475512>,  <38.494503, 34.177097, 24.622091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.355831, 34.047153, 24.475512>,  <38.124714, 33.830582, 24.231213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355831, 34.047153, 24.475512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652795, 0.142603, -0.743991,
		-0.489911, 0.828566, -0.271046,
		0.577793, 0.541427, 0.610747,
		38.529171, 34.209583, 24.658735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306648, 34.531433, 23.861969>,  <38.124714, 33.830582, 24.231213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306648, 34.531433, 23.861969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579819, 34.450710, 24.142794>,  <38.743721, 34.402275, 24.311289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579819, 34.450710, 24.142794>,  <38.306648, 34.531433, 23.861969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579819, 34.450710, 24.142794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723216, 0.051487, -0.688701,
		0.102840, 0.978070, 0.181114,
		0.682923, -0.201810, 0.702061,
		38.784695, 34.390167, 24.353413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621181, 35.195881, 23.961258>,  <38.306648, 34.531433, 23.861969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621181, 35.195881, 23.961258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.893593, 34.929321, 24.082659>,  <39.057041, 34.769386, 24.155499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.893593, 34.929321, 24.082659>,  <38.621181, 35.195881, 23.961258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893593, 34.929321, 24.082659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626058, 0.314913, -0.713359,
		0.379804, 0.675829, 0.631668,
		0.681029, -0.666397, 0.303503,
		39.097900, 34.729401, 24.173710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228371, 35.557076, 23.973661>,  <38.621181, 35.195881, 23.961258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228371, 35.557076, 23.973661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.366898, 35.181873, 23.979567>,  <39.450012, 34.956753, 23.983110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.366898, 35.181873, 23.979567>,  <39.228371, 35.557076, 23.973661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366898, 35.181873, 23.979567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789657, 0.282975, -0.544396,
		0.506467, 0.200191, 0.838699,
		0.346314, -0.938002, 0.014765,
		39.470791, 34.900471, 23.983995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933006, 35.578243, 24.223801>,  <39.228371, 35.557076, 23.973661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933006, 35.578243, 24.223801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.887508, 35.249275, 24.000845>,  <39.860210, 35.051895, 23.867071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.887508, 35.249275, 24.000845>,  <39.933006, 35.578243, 24.223801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887508, 35.249275, 24.000845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718519, 0.319368, -0.617846,
		0.686143, -0.470772, 0.554600,
		-0.113744, -0.822422, -0.557391,
		39.853386, 35.002548, 23.833628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671936, 35.335094, 24.078575>,  <39.933006, 35.578243, 24.223801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671936, 35.335094, 24.078575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.456333, 35.121323, 23.818159>,  <40.326973, 34.993061, 23.661909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.456333, 35.121323, 23.818159>,  <40.671936, 35.335094, 24.078575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456333, 35.121323, 23.818159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620618, 0.270590, -0.735945,
		0.569477, -0.800728, 0.185827,
		-0.539008, -0.534431, -0.651040,
		40.294632, 34.960995, 23.622847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341953, 35.286842, 24.340647>,  <40.671936, 35.335094, 24.078575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341953, 35.286842, 24.340647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.639534, 35.520481, 24.470493>,  <41.818081, 35.660664, 24.548401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.639534, 35.520481, 24.470493>,  <41.341953, 35.286842, 24.340647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.639534, 35.520481, 24.470493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432427, 0.050448, 0.900257,
		0.509459, -0.810116, 0.290109,
		0.743948, 0.584095, 0.324616,
		41.862717, 35.695709, 24.567879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395645, 35.025532, 25.097759>,  <41.341953, 35.286842, 24.340647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395645, 35.025532, 25.097759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.626556, 35.351955, 25.086441>,  <41.765102, 35.547810, 25.079651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.626556, 35.351955, 25.086441>,  <41.395645, 35.025532, 25.097759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626556, 35.351955, 25.086441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218862, 0.188021, 0.957469,
		0.786671, -0.546532, 0.287144,
		0.577276, 0.816059, -0.028295,
		41.799740, 35.596771, 25.077953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960075, 35.060314, 25.644691>,  <41.395645, 35.025532, 25.097759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960075, 35.060314, 25.644691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.838459, 35.424355, 25.532066>,  <41.765488, 35.642780, 25.464493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.838459, 35.424355, 25.532066>,  <41.960075, 35.060314, 25.644691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838459, 35.424355, 25.532066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013661, 0.299688, 0.953940,
		0.952560, 0.286193, -0.103551,
		-0.304044, 0.910099, -0.281560,
		41.747246, 35.697384, 25.447598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268559, 35.530193, 26.141964>,  <41.960075, 35.060314, 25.644691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268559, 35.530193, 26.141964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.998825, 35.750034, 25.944695>,  <41.836987, 35.881939, 25.826334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.998825, 35.750034, 25.944695>,  <42.268559, 35.530193, 26.141964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998825, 35.750034, 25.944695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285006, 0.422405, 0.860434,
		0.681212, 0.720774, -0.128202,
		-0.674331, 0.549599, -0.493172,
		41.796524, 35.914913, 25.796743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200172, 35.986786, 26.676777>,  <42.268559, 35.530193, 26.141964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200172, 35.986786, 26.676777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.912552, 36.093731, 26.420187>,  <41.739979, 36.157898, 26.266233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.912552, 36.093731, 26.420187>,  <42.200172, 35.986786, 26.676777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912552, 36.093731, 26.420187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571712, 0.297214, 0.764728,
		0.395111, 0.916615, -0.060859,
		-0.719049, 0.267359, -0.641473,
		41.696838, 36.173939, 26.227745>
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
