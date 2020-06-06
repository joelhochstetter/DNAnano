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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.802624, 33.020954, 22.631876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699703, 33.037487, 23.018055>,  <42.637951, 33.047405, 23.249762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699703, 33.037487, 23.018055>,  <42.802624, 33.020954, 22.631876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699703, 33.037487, 23.018055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948079, -0.204065, -0.243934,
		0.186932, -0.978084, 0.091693,
		-0.257299, 0.041334, 0.965447,
		42.622513, 33.049889, 23.307690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374741, 32.380505, 22.812166>,  <42.802624, 33.020954, 22.631876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374741, 32.380505, 22.812166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318855, 32.688351, 23.061382>,  <42.285324, 32.873058, 23.210911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318855, 32.688351, 23.061382>,  <42.374741, 32.380505, 22.812166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318855, 32.688351, 23.061382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987291, -0.060132, -0.147110,
		-0.075754, -0.635670, 0.768235,
		-0.139709, 0.769615, 0.623036,
		42.276943, 32.919235, 23.248295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939575, 32.248440, 23.549421>,  <42.374741, 32.380505, 22.812166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939575, 32.248440, 23.549421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896004, 32.610638, 23.385368>,  <41.869862, 32.827957, 23.286936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.896004, 32.610638, 23.385368>,  <41.939575, 32.248440, 23.549421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896004, 32.610638, 23.385368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989810, -0.136866, -0.039287,
		-0.091707, 0.401674, 0.911179,
		-0.108929, 0.905498, -0.410133,
		41.863323, 32.882286, 23.262329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524738, 32.655796, 23.919577>,  <41.939575, 32.248440, 23.549421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524738, 32.655796, 23.919577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511986, 32.707642, 23.523155>,  <41.504333, 32.738750, 23.285303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511986, 32.707642, 23.523155>,  <41.524738, 32.655796, 23.919577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511986, 32.707642, 23.523155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981218, -0.192796, 0.006349,
		-0.190248, 0.972641, 0.133325,
		-0.031880, 0.129613, -0.991052,
		41.502422, 32.746525, 23.225840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086708, 33.162800, 23.838322>,  <41.524738, 32.655796, 23.919577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086708, 33.162800, 23.838322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076523, 32.956242, 23.495934>,  <41.070412, 32.832306, 23.290501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076523, 32.956242, 23.495934>,  <41.086708, 33.162800, 23.838322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076523, 32.956242, 23.495934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992063, -0.092422, 0.085263,
		-0.123140, 0.851349, -0.509942,
		-0.025458, -0.516394, -0.855972,
		41.068886, 32.801323, 23.239141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487835, 33.435822, 23.457178>,  <41.086708, 33.162800, 23.838322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487835, 33.435822, 23.457178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590179, 33.059231, 23.369400>,  <40.651585, 32.833275, 23.316732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590179, 33.059231, 23.369400>,  <40.487835, 33.435822, 23.457178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590179, 33.059231, 23.369400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937153, -0.297266, 0.182693,
		-0.237234, 0.158908, -0.958367,
		0.255859, -0.941478, -0.219443,
		40.666939, 32.776787, 23.303566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483078, 33.635269, 22.711384>,  <40.487835, 33.435822, 23.457178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483078, 33.635269, 22.711384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267097, 33.865234, 22.465481>,  <40.137508, 34.003216, 22.317940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267097, 33.865234, 22.465481>,  <40.483078, 33.635269, 22.711384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267097, 33.865234, 22.465481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617123, -0.226267, -0.753632,
		-0.572375, -0.786304, -0.232621,
		-0.539949, 0.574916, -0.614756,
		40.105114, 34.037708, 22.281054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394798, 33.230446, 22.104473>,  <40.483078, 33.635269, 22.711384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394798, 33.230446, 22.104473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331779, 33.615467, 22.016224>,  <40.293968, 33.846481, 21.963274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331779, 33.615467, 22.016224>,  <40.394798, 33.230446, 22.104473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331779, 33.615467, 22.016224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573590, -0.092667, -0.813884,
		-0.803850, -0.254769, -0.537511,
		-0.157543, 0.962551, -0.220623,
		40.284515, 33.904232, 21.950037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128098, 33.255817, 21.423910>,  <40.394798, 33.230446, 22.104473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128098, 33.255817, 21.423910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231659, 33.642166, 21.420681>,  <40.293797, 33.873974, 21.418743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231659, 33.642166, 21.420681>,  <40.128098, 33.255817, 21.423910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231659, 33.642166, 21.420681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444562, -0.126579, -0.886760,
		-0.857517, 0.225994, -0.462160,
		0.258902, 0.965870, -0.008075,
		40.309330, 33.931927, 21.418259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029346, 33.499229, 20.739496>,  <40.128098, 33.255817, 21.423910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029346, 33.499229, 20.739496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290607, 33.748478, 20.911594>,  <40.447365, 33.898026, 21.014853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290607, 33.748478, 20.911594>,  <40.029346, 33.499229, 20.739496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290607, 33.748478, 20.911594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632022, -0.135670, -0.762983,
		-0.417059, 0.770269, -0.482439,
		0.653154, 0.623120, 0.430245,
		40.486553, 33.935413, 21.040668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338676, 33.938797, 20.129326>,  <40.029346, 33.499229, 20.739496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338676, 33.938797, 20.129326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603886, 33.952904, 20.428432>,  <40.763012, 33.961369, 20.607897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603886, 33.952904, 20.428432>,  <40.338676, 33.938797, 20.129326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603886, 33.952904, 20.428432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748412, -0.053587, -0.661066,
		0.016757, 0.997940, -0.061923,
		0.663023, 0.035266, 0.747768,
		40.802792, 33.963482, 20.652763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736340, 34.407093, 19.868610>,  <40.338676, 33.938797, 20.129326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736340, 34.407093, 19.868610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951271, 34.199841, 20.134789>,  <41.080231, 34.075489, 20.294495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951271, 34.199841, 20.134789>,  <40.736340, 34.407093, 19.868610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951271, 34.199841, 20.134789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742176, -0.084250, -0.664889,
		0.400562, 0.851142, 0.339273,
		0.537331, -0.518130, 0.665444,
		41.112469, 34.044403, 20.334421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273682, 34.811623, 19.896708>,  <40.736340, 34.407093, 19.868610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273682, 34.811623, 19.896708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389641, 34.454605, 20.034882>,  <41.459217, 34.240395, 20.117786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389641, 34.454605, 20.034882>,  <41.273682, 34.811623, 19.896708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389641, 34.454605, 20.034882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605225, -0.108633, -0.788607,
		0.741393, 0.437678, 0.508699,
		0.289895, -0.892545, 0.345433,
		41.476608, 34.186840, 20.138512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975090, 34.776764, 19.735437>,  <41.273682, 34.811623, 19.896708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975090, 34.776764, 19.735437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894920, 34.392731, 19.813480>,  <41.846817, 34.162312, 19.860306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894920, 34.392731, 19.813480>,  <41.975090, 34.776764, 19.735437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894920, 34.392731, 19.813480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591981, -0.277362, -0.756723,
		0.780633, -0.036167, 0.623942,
		-0.200426, -0.960084, 0.195108,
		41.834793, 34.104706, 19.872013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683006, 34.440121, 19.766338>,  <41.975090, 34.776764, 19.735437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683006, 34.440121, 19.766338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396336, 34.174942, 19.679737>,  <42.224335, 34.015835, 19.627775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.396336, 34.174942, 19.679737>,  <42.683006, 34.440121, 19.766338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.396336, 34.174942, 19.679737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570479, -0.378701, -0.728793,
		0.401163, -0.645819, 0.649604,
		-0.716675, -0.662950, -0.216505,
		42.181332, 33.976055, 19.614786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034306, 33.803101, 19.603487>,  <42.683006, 34.440121, 19.766338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034306, 33.803101, 19.603487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669292, 33.753731, 19.447517>,  <42.450283, 33.724110, 19.353935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669292, 33.753731, 19.447517>,  <43.034306, 33.803101, 19.603487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.669292, 33.753731, 19.447517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408234, -0.216809, -0.886758,
		0.024913, -0.968380, 0.248235,
		-0.912537, -0.123429, -0.389924,
		42.395531, 33.716702, 19.330540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025475, 33.006516, 19.321224>,  <43.034306, 33.803101, 19.603487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025475, 33.006516, 19.321224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754726, 33.242138, 19.144653>,  <42.592278, 33.383511, 19.038712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754726, 33.242138, 19.144653>,  <43.025475, 33.006516, 19.321224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754726, 33.242138, 19.144653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309597, -0.316247, -0.896737,
		-0.667832, -0.743637, 0.031686,
		-0.676868, 0.589060, -0.441428,
		42.551666, 33.418858, 19.012224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829025, 32.570240, 18.840216>,  <43.025475, 33.006516, 19.321224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829025, 32.570240, 18.840216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659229, 32.913826, 18.725689>,  <42.557350, 33.119980, 18.656973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659229, 32.913826, 18.725689>,  <42.829025, 32.570240, 18.840216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659229, 32.913826, 18.725689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165829, -0.237119, -0.957223,
		-0.890116, -0.453815, -0.041787,
		-0.424493, 0.858968, -0.286319,
		42.531879, 33.171516, 18.639793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220985, 32.437424, 18.340975>,  <42.829025, 32.570240, 18.840216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220985, 32.437424, 18.340975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344482, 32.812984, 18.280121>,  <42.418579, 33.038322, 18.243608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344482, 32.812984, 18.280121>,  <42.220985, 32.437424, 18.340975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344482, 32.812984, 18.280121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205400, -0.221987, -0.953170,
		-0.928703, 0.263035, -0.261386,
		0.308741, 0.938901, -0.152133,
		42.437103, 33.094654, 18.234482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950764, 32.724178, 17.781893>,  <42.220985, 32.437424, 18.340975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950764, 32.724178, 17.781893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253250, 32.981213, 17.831249>,  <42.434742, 33.135433, 17.860863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253250, 32.981213, 17.831249>,  <41.950764, 32.724178, 17.781893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253250, 32.981213, 17.831249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231879, -0.086839, -0.968861,
		-0.611859, 0.761279, -0.214670,
		0.756215, 0.642584, 0.123392,
		42.480114, 33.173988, 17.868267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997044, 32.990234, 17.192293>,  <41.950764, 32.724178, 17.781893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997044, 32.990234, 17.192293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338680, 33.100357, 17.368809>,  <42.543663, 33.166431, 17.474718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338680, 33.100357, 17.368809>,  <41.997044, 32.990234, 17.192293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338680, 33.100357, 17.368809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489634, -0.139356, -0.860719,
		-0.175465, 0.951202, -0.253823,
		0.854090, 0.275307, 0.441289,
		42.594906, 33.182949, 17.501196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278362, 33.474720, 16.726395>,  <41.997044, 32.990234, 17.192293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278362, 33.474720, 16.726395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582832, 33.342831, 16.949787>,  <42.765514, 33.263699, 17.083822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582832, 33.342831, 16.949787>,  <42.278362, 33.474720, 16.726395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582832, 33.342831, 16.949787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580951, -0.036148, -0.813135,
		0.288297, 0.943386, 0.164038,
		0.761171, -0.329722, 0.558483,
		42.811184, 33.243916, 17.117332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897831, 33.885246, 16.544111>,  <42.278362, 33.474720, 16.726395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897831, 33.885246, 16.544111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017391, 33.538078, 16.702793>,  <43.089127, 33.329777, 16.798002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017391, 33.538078, 16.702793>,  <42.897831, 33.885246, 16.544111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017391, 33.538078, 16.702793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736669, -0.054399, -0.674062,
		0.606613, 0.493715, 0.623110,
		0.298898, -0.867921, 0.396704,
		43.107059, 33.277702, 16.821804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.755718, 33.857220, 16.468390>,  <42.897831, 33.885246, 16.544111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.755718, 33.857220, 16.468390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618256, 33.481968, 16.485439>,  <43.535778, 33.256817, 16.495670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618256, 33.481968, 16.485439>,  <43.755718, 33.857220, 16.468390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.618256, 33.481968, 16.485439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696824, -0.285168, -0.658115,
		0.629550, -0.196465, 0.751710,
		-0.343660, -0.938126, 0.042626,
		43.515156, 33.200531, 16.498226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438114, 33.422012, 16.354462>,  <43.755718, 33.857220, 16.468390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438114, 33.422012, 16.354462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118408, 33.192932, 16.281597>,  <43.926582, 33.055485, 16.237879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118408, 33.192932, 16.281597>,  <44.438114, 33.422012, 16.354462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118408, 33.192932, 16.281597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416479, -0.309319, -0.854907,
		0.433262, -0.759166, 0.485748,
		-0.799268, -0.572703, -0.182160,
		43.878628, 33.021122, 16.226950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767448, 32.782280, 16.122087>,  <44.438114, 33.422012, 16.354462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767448, 32.782280, 16.122087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.388531, 32.794704, 15.994544>,  <44.161179, 32.802158, 15.918017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.388531, 32.794704, 15.994544>,  <44.767448, 32.782280, 16.122087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.388531, 32.794704, 15.994544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307264, -0.193661, -0.931710,
		-0.090690, -0.980577, 0.173910,
		-0.947293, 0.031060, -0.318859,
		44.104343, 32.804024, 15.898887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.658524, 32.247147, 15.584403>,  <44.767448, 32.782280, 16.122087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.658524, 32.247147, 15.584403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.405155, 32.555737, 15.560386>,  <44.253132, 32.740891, 15.545976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.405155, 32.555737, 15.560386>,  <44.658524, 32.247147, 15.584403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405155, 32.555737, 15.560386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001106, -0.078497, -0.996914,
		-0.773804, -0.631402, 0.050575,
		-0.633424, 0.771472, -0.060044,
		44.215130, 32.787178, 15.542373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.051796, 32.143040, 15.148438>,  <44.658524, 32.247147, 15.584403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.051796, 32.143040, 15.148438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156452, 32.528786, 15.132667>,  <44.219246, 32.760231, 15.123203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156452, 32.528786, 15.132667>,  <44.051796, 32.143040, 15.148438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.156452, 32.528786, 15.132667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060827, -0.024296, -0.997853,
		-0.963248, 0.263473, 0.052302,
		0.261636, 0.964361, -0.039430,
		44.234943, 32.818092, 15.120838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589062, 32.581356, 14.540135>,  <44.051796, 32.143040, 15.148438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589062, 32.581356, 14.540135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965096, 32.711803, 14.579904>,  <44.190716, 32.790073, 14.603765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965096, 32.711803, 14.579904>,  <43.589062, 32.581356, 14.540135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965096, 32.711803, 14.579904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077836, 0.078619, -0.993862,
		-0.331935, 0.942053, 0.048525,
		0.940086, 0.326120, 0.099422,
		44.247120, 32.809639, 14.609730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739456, 33.293331, 14.366529>,  <43.589062, 32.581356, 14.540135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739456, 33.293331, 14.366529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022858, 33.021481, 14.290490>,  <44.192898, 32.858372, 14.244866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022858, 33.021481, 14.290490>,  <43.739456, 33.293331, 14.366529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022858, 33.021481, 14.290490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162215, 0.105322, -0.981119,
		0.686814, 0.725960, -0.035625,
		0.708501, -0.679625, -0.190098,
		44.235409, 32.817593, 14.233460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.179752, 33.529926, 13.899334>,  <43.739456, 33.293331, 14.366529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.179752, 33.529926, 13.899334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242245, 33.135303, 13.880137>,  <44.279739, 32.898529, 13.868620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242245, 33.135303, 13.880137>,  <44.179752, 33.529926, 13.899334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.242245, 33.135303, 13.880137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086963, 0.062138, -0.994272,
		0.983885, 0.151163, 0.095502,
		0.156231, -0.986554, -0.047991,
		44.289112, 32.839336, 13.865740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636864, 34.041039, 13.895440>,  <44.179752, 33.529926, 13.899334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636864, 34.041039, 13.895440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590466, 34.309074, 13.602176>,  <43.562626, 34.469894, 13.426217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590466, 34.309074, 13.602176>,  <43.636864, 34.041039, 13.895440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590466, 34.309074, 13.602176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895199, 0.249255, 0.369447,
		0.430307, 0.699179, 0.570951,
		-0.115997, 0.670090, -0.733160,
		43.555668, 34.510101, 13.382228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561314, 34.728588, 14.222775>,  <43.636864, 34.041039, 13.895440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561314, 34.728588, 14.222775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351585, 34.639027, 13.894153>,  <43.225750, 34.585289, 13.696979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.351585, 34.639027, 13.894153>,  <43.561314, 34.728588, 14.222775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.351585, 34.639027, 13.894153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848498, 0.056140, 0.526212,
		-0.071700, 0.972992, -0.219419,
		-0.524319, -0.223905, -0.821557,
		43.194290, 34.571854, 13.647686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857754, 34.718975, 14.452126>,  <43.561314, 34.728588, 14.222775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857754, 34.718975, 14.452126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865265, 34.722206, 14.052209>,  <42.869770, 34.724144, 13.812259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865265, 34.722206, 14.052209>,  <42.857754, 34.718975, 14.452126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865265, 34.722206, 14.052209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965651, 0.259346, -0.016041,
		0.259162, 0.965751, 0.012665,
		0.018776, 0.008073, -0.999791,
		42.870899, 34.724628, 13.752272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608044, 35.392723, 14.096702>,  <42.857754, 34.718975, 14.452126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608044, 35.392723, 14.096702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529129, 35.064816, 13.881646>,  <42.481781, 34.868069, 13.752613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529129, 35.064816, 13.881646>,  <42.608044, 35.392723, 14.096702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529129, 35.064816, 13.881646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968695, 0.078707, 0.235448,
		-0.150697, 0.567257, -0.809636,
		-0.197284, -0.819771, -0.537638,
		42.469944, 34.818886, 13.720355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006992, 35.462563, 13.576248>,  <42.608044, 35.392723, 14.096702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006992, 35.462563, 13.576248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069954, 35.117451, 13.768430>,  <42.107731, 34.910385, 13.883739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.069954, 35.117451, 13.768430>,  <42.006992, 35.462563, 13.576248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069954, 35.117451, 13.768430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905423, 0.068149, 0.419006,
		-0.394252, -0.500965, -0.770454,
		0.157401, -0.862781, 0.480453,
		42.117176, 34.858616, 13.912565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400608, 34.982143, 13.504899>,  <42.006992, 35.462563, 13.576248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400608, 34.982143, 13.504899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597076, 34.928020, 13.849095>,  <41.714958, 34.895546, 14.055613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597076, 34.928020, 13.849095>,  <41.400608, 34.982143, 13.504899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597076, 34.928020, 13.849095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870337, -0.116579, 0.478460,
		0.035575, -0.983921, -0.175025,
		0.491171, -0.135309, 0.860490,
		41.744427, 34.887428, 14.107243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090538, 34.295269, 13.815724>,  <41.400608, 34.982143, 13.504899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090538, 34.295269, 13.815724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276459, 34.516060, 14.092645>,  <41.388012, 34.648533, 14.258797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276459, 34.516060, 14.092645>,  <41.090538, 34.295269, 13.815724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276459, 34.516060, 14.092645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783899, -0.106986, 0.611602,
		0.411656, -0.826968, 0.382966,
		0.464803, 0.551977, 0.692300,
		41.415901, 34.681652, 14.300335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989403, 33.961666, 14.439564>,  <41.090538, 34.295269, 13.815724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989403, 33.961666, 14.439564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106789, 34.323994, 14.561791>,  <41.177219, 34.541389, 14.635128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106789, 34.323994, 14.561791>,  <40.989403, 33.961666, 14.439564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106789, 34.323994, 14.561791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723349, 0.001419, 0.690482,
		0.625018, -0.423662, 0.655640,
		0.293461, 0.905819, 0.305569,
		41.194828, 34.595741, 14.653462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126198, 33.867123, 15.172319>,  <40.989403, 33.961666, 14.439564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126198, 33.867123, 15.172319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068920, 34.259258, 15.118012>,  <41.034554, 34.494541, 15.085428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068920, 34.259258, 15.118012>,  <41.126198, 33.867123, 15.172319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068920, 34.259258, 15.118012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571719, 0.030039, 0.819899,
		0.807856, 0.195027, 0.556177,
		-0.143195, 0.980338, -0.135768,
		41.025963, 34.553360, 15.077282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397575, 34.315281, 15.777568>,  <41.126198, 33.867123, 15.172319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397575, 34.315281, 15.777568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141781, 34.562939, 15.595262>,  <40.988304, 34.711533, 15.485878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141781, 34.562939, 15.595262>,  <41.397575, 34.315281, 15.777568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141781, 34.562939, 15.595262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533323, 0.069731, 0.843032,
		0.553737, 0.782178, 0.285610,
		-0.639485, 0.619141, -0.455766,
		40.949936, 34.748680, 15.458531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378849, 34.888020, 16.232866>,  <41.397575, 34.315281, 15.777568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378849, 34.888020, 16.232866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053684, 34.913662, 16.001328>,  <40.858585, 34.929047, 15.862404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053684, 34.913662, 16.001328>,  <41.378849, 34.888020, 16.232866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053684, 34.913662, 16.001328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565405, 0.151405, 0.810798,
		0.139616, 0.986391, -0.086834,
		-0.812911, 0.064104, -0.578849,
		40.809811, 34.932892, 15.827673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070717, 35.551197, 16.467487>,  <41.378849, 34.888020, 16.232866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070717, 35.551197, 16.467487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766125, 35.372864, 16.279285>,  <40.583370, 35.265862, 16.166365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766125, 35.372864, 16.279285>,  <41.070717, 35.551197, 16.467487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766125, 35.372864, 16.279285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590238, 0.176939, 0.787599,
		-0.267889, 0.877453, -0.397885,
		-0.761482, -0.445836, -0.470506,
		40.537682, 35.239113, 16.138134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460850, 36.025597, 16.402643>,  <41.070717, 35.551197, 16.467487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460850, 36.025597, 16.402643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301838, 35.659500, 16.376431>,  <40.206429, 35.439842, 16.360703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301838, 35.659500, 16.376431>,  <40.460850, 36.025597, 16.402643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301838, 35.659500, 16.376431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658823, 0.234989, 0.714655,
		-0.638685, 0.327272, -0.696401,
		-0.397533, -0.915245, -0.065530,
		40.182579, 35.384926, 16.356771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734451, 36.123493, 16.529034>,  <40.460850, 36.025597, 16.402643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734451, 36.123493, 16.529034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789959, 35.731087, 16.583210>,  <39.823265, 35.495644, 16.615715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789959, 35.731087, 16.583210>,  <39.734451, 36.123493, 16.529034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789959, 35.731087, 16.583210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681195, 0.004714, 0.732087,
		-0.718830, -0.193853, -0.667611,
		0.138770, -0.981019, 0.135441,
		39.831589, 35.436783, 16.623842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063793, 35.885670, 16.540642>,  <39.734451, 36.123493, 16.529034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063793, 35.885670, 16.540642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267029, 35.589558, 16.716751>,  <39.388969, 35.411892, 16.822416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267029, 35.589558, 16.716751>,  <39.063793, 35.885670, 16.540642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267029, 35.589558, 16.716751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674096, -0.023587, 0.738267,
		-0.536137, -0.671888, -0.511002,
		0.508086, -0.740277, 0.440272,
		39.419456, 35.367474, 16.848833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581799, 35.458061, 16.823349>,  <39.063793, 35.885670, 16.540642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581799, 35.458061, 16.823349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912712, 35.328129, 17.006687>,  <39.111259, 35.250168, 17.116690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912712, 35.328129, 17.006687>,  <38.581799, 35.458061, 16.823349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912712, 35.328129, 17.006687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548823, -0.293112, 0.782866,
		-0.119951, -0.899206, -0.420761,
		0.827288, -0.324829, 0.458346,
		39.160900, 35.230679, 17.144190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434151, 34.679440, 17.052177>,  <38.581799, 35.458061, 16.823349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434151, 34.679440, 17.052177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719997, 34.842892, 17.279278>,  <38.891506, 34.940964, 17.415537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719997, 34.842892, 17.279278>,  <38.434151, 34.679440, 17.052177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719997, 34.842892, 17.279278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592443, -0.077983, 0.801829,
		0.371928, -0.909361, 0.186364,
		0.714619, 0.408633, 0.567749,
		38.934383, 34.965481, 17.449602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475338, 34.214828, 17.516552>,  <38.434151, 34.679440, 17.052177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475338, 34.214828, 17.516552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641235, 34.529835, 17.698895>,  <38.740776, 34.718838, 17.808300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641235, 34.529835, 17.698895>,  <38.475338, 34.214828, 17.516552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641235, 34.529835, 17.698895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396544, -0.294476, 0.869503,
		0.818986, -0.541391, 0.190151,
		0.414747, 0.787515, 0.455858,
		38.765659, 34.766090, 17.835651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791145, 33.950214, 18.293716>,  <38.475338, 34.214828, 17.516552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791145, 33.950214, 18.293716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786827, 34.350189, 18.293205>,  <38.784237, 34.590176, 18.292898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786827, 34.350189, 18.293205>,  <38.791145, 33.950214, 18.293716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786827, 34.350189, 18.293205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273039, -0.001719, 0.962001,
		0.961942, 0.010737, 0.273041,
		-0.010798, 0.999941, -0.001278,
		38.783588, 34.650173, 18.292822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245583, 34.242428, 18.902796>,  <38.791145, 33.950214, 18.293716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245583, 34.242428, 18.902796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978329, 34.521790, 18.800167>,  <38.817978, 34.689407, 18.738590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978329, 34.521790, 18.800167>,  <39.245583, 34.242428, 18.902796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978329, 34.521790, 18.800167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253357, 0.110676, 0.961021,
		0.699580, 0.707091, 0.103000,
		-0.668130, 0.698407, -0.256573,
		38.777889, 34.731312, 18.723194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343369, 34.906124, 19.380291>,  <39.245583, 34.242428, 18.902796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343369, 34.906124, 19.380291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974033, 34.881672, 19.228653>,  <38.752434, 34.867001, 19.137671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974033, 34.881672, 19.228653>,  <39.343369, 34.906124, 19.380291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974033, 34.881672, 19.228653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383852, 0.120135, 0.915546,
		-0.010421, 0.990874, -0.134389,
		-0.923336, -0.061126, -0.379097,
		38.697033, 34.863335, 19.114923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017250, 35.402317, 19.688868>,  <39.343369, 34.906124, 19.380291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017250, 35.402317, 19.688868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704700, 35.193771, 19.551678>,  <38.517170, 35.068642, 19.469364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704700, 35.193771, 19.551678>,  <39.017250, 35.402317, 19.688868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704700, 35.193771, 19.551678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377146, -0.043363, 0.925138,
		-0.497208, 0.852230, -0.162748,
		-0.781374, -0.521366, -0.342975,
		38.470287, 35.037361, 19.448786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459602, 35.676628, 20.042744>,  <39.017250, 35.402317, 19.688868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459602, 35.676628, 20.042744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323593, 35.329227, 19.898472>,  <38.241985, 35.120789, 19.811909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323593, 35.329227, 19.898472>,  <38.459602, 35.676628, 20.042744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323593, 35.329227, 19.898472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481912, -0.168427, 0.859879,
		-0.807553, 0.466199, -0.361271,
		-0.340027, -0.868499, -0.360681,
		38.221584, 35.068676, 19.790268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664574, 35.607910, 19.993961>,  <38.459602, 35.676628, 20.042744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664574, 35.607910, 19.993961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768173, 35.221828, 19.979542>,  <37.830334, 34.990181, 19.970890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768173, 35.221828, 19.979542>,  <37.664574, 35.607910, 19.993961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768173, 35.221828, 19.979542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732341, -0.220570, 0.644224,
		-0.629760, -0.140452, -0.763987,
		0.258995, -0.965206, -0.036048,
		37.845871, 34.932266, 19.968727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093281, 35.237282, 20.028395>,  <37.664574, 35.607910, 19.993961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093281, 35.237282, 20.028395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372803, 34.984280, 20.162029>,  <37.540516, 34.832478, 20.242210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372803, 34.984280, 20.162029>,  <37.093281, 35.237282, 20.028395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372803, 34.984280, 20.162029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592817, -0.250715, 0.765317,
		-0.400308, -0.732855, -0.550161,
		0.698800, -0.632508, 0.334086,
		37.582443, 34.794529, 20.262255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814117, 34.558697, 20.179304>,  <37.093281, 35.237282, 20.028395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814117, 34.558697, 20.179304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151955, 34.550591, 20.393314>,  <37.354656, 34.545727, 20.521721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151955, 34.550591, 20.393314>,  <36.814117, 34.558697, 20.179304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151955, 34.550591, 20.393314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501184, -0.381463, 0.776724,
		0.188352, -0.924162, -0.332338,
		0.844593, -0.020265, 0.535025,
		37.405334, 34.544510, 20.553822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903778, 33.883259, 20.413349>,  <36.814117, 34.558697, 20.179304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903778, 33.883259, 20.413349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079590, 34.146286, 20.658108>,  <37.185078, 34.304104, 20.804962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079590, 34.146286, 20.658108>,  <36.903778, 33.883259, 20.413349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079590, 34.146286, 20.658108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586841, -0.305517, 0.749852,
		0.680026, -0.688664, 0.251607,
		0.439526, 0.657572, 0.611896,
		37.211449, 34.343559, 20.841677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082920, 33.572693, 21.124744>,  <36.903778, 33.883259, 20.413349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082920, 33.572693, 21.124744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969646, 33.956139, 21.112965>,  <36.901684, 34.186207, 21.105896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969646, 33.956139, 21.112965>,  <37.082920, 33.572693, 21.124744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969646, 33.956139, 21.112965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740603, -0.199062, 0.641780,
		0.609357, 0.203549, 0.766323,
		-0.283180, 0.958615, -0.029449,
		36.884693, 34.243725, 21.104130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348854, 33.784000, 21.417934>,  <37.082920, 33.572693, 21.124744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348854, 33.784000, 21.417934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080372, 33.859257, 21.131134>,  <35.919285, 33.904411, 20.959055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080372, 33.859257, 21.131134>,  <36.348854, 33.784000, 21.417934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080372, 33.859257, 21.131134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621447, -0.670100, 0.405918,
		-0.404091, 0.718031, 0.566694,
		-0.671203, 0.188142, -0.717000,
		35.879009, 33.915699, 20.916035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794605, 33.733410, 21.800573>,  <36.348854, 33.784000, 21.417934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794605, 33.733410, 21.800573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702019, 33.674156, 21.415974>,  <35.646465, 33.638603, 21.185213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702019, 33.674156, 21.415974>,  <35.794605, 33.733410, 21.800573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702019, 33.674156, 21.415974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744269, -0.609503, 0.273073,
		-0.626487, 0.778821, 0.030832,
		-0.231467, -0.148129, -0.961499,
		35.632580, 33.629719, 21.127523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098721, 33.992573, 21.457235>,  <35.794605, 33.733410, 21.800573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098721, 33.992573, 21.457235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204620, 33.643841, 21.292400>,  <35.268162, 33.434601, 21.193499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204620, 33.643841, 21.292400>,  <35.098721, 33.992573, 21.457235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204620, 33.643841, 21.292400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786093, -0.442638, 0.431427,
		-0.558538, 0.209719, -0.802530,
		0.264752, -0.871831, -0.412089,
		35.284046, 33.382290, 21.168774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413837, 33.590599, 21.312407>,  <35.098721, 33.992573, 21.457235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413837, 33.590599, 21.312407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741631, 33.381435, 21.406223>,  <34.938309, 33.255936, 21.462513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.741631, 33.381435, 21.406223>,  <34.413837, 33.590599, 21.312407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741631, 33.381435, 21.406223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537358, -0.558813, 0.631645,
		-0.199228, -0.643656, -0.738928,
		0.819484, -0.522910, 0.234542,
		34.987476, 33.224564, 21.476585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429909, 32.813046, 21.031137>,  <34.413837, 33.590599, 21.312407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429909, 32.813046, 21.031137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576717, 32.927227, 21.385269>,  <34.664803, 32.995735, 21.597748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576717, 32.927227, 21.385269>,  <34.429909, 32.813046, 21.031137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576717, 32.927227, 21.385269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520256, -0.725983, 0.449757,
		0.771121, -0.625670, -0.117942,
		0.367024, 0.285457, 0.885329,
		34.686825, 33.012863, 21.650867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852203, 32.318466, 21.536167>,  <34.429909, 32.813046, 21.031137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852203, 32.318466, 21.536167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659138, 32.586197, 21.762100>,  <34.543297, 32.746834, 21.897659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659138, 32.586197, 21.762100>,  <34.852203, 32.318466, 21.536167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659138, 32.586197, 21.762100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399736, -0.742198, 0.537916,
		0.779258, 0.033851, 0.625789,
		-0.482668, 0.669325, 0.564832,
		34.514336, 32.786995, 21.931549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824009, 32.014835, 22.189590>,  <34.852203, 32.318466, 21.536167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824009, 32.014835, 22.189590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538906, 32.293648, 22.220898>,  <34.367844, 32.460934, 22.239681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538906, 32.293648, 22.220898>,  <34.824009, 32.014835, 22.189590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538906, 32.293648, 22.220898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538296, -0.615129, 0.576067,
		0.449680, 0.368466, 0.813646,
		-0.712759, 0.697029, 0.078268,
		34.325077, 32.502758, 22.244377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761417, 32.060688, 22.919958>,  <34.824009, 32.014835, 22.189590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761417, 32.060688, 22.919958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428635, 32.216759, 22.762165>,  <34.228966, 32.310402, 22.667490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428635, 32.216759, 22.762165>,  <34.761417, 32.060688, 22.919958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428635, 32.216759, 22.762165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528709, -0.341852, 0.776920,
		0.168278, 0.854928, 0.490693,
		-0.831955, 0.390172, -0.394482,
		34.179047, 32.333809, 22.643820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389774, 32.290119, 23.581297>,  <34.761417, 32.060688, 22.919958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389774, 32.290119, 23.581297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133907, 32.259033, 23.275414>,  <33.980385, 32.240383, 23.091883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133907, 32.259033, 23.275414>,  <34.389774, 32.290119, 23.581297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133907, 32.259033, 23.275414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742332, -0.195640, 0.640835,
		-0.199408, 0.977592, 0.067457,
		-0.639672, -0.077712, -0.764709,
		33.942005, 32.235718, 23.046001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720692, 32.656490, 23.768414>,  <34.389774, 32.290119, 23.581297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720692, 32.656490, 23.768414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617928, 32.393909, 23.484703>,  <33.556271, 32.236362, 23.314476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617928, 32.393909, 23.484703>,  <33.720692, 32.656490, 23.768414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617928, 32.393909, 23.484703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735727, -0.343038, 0.583979,
		-0.626661, 0.671863, -0.394837,
		-0.256909, -0.656449, -0.709276,
		33.540855, 32.196976, 23.271921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952332, 32.672352, 23.704346>,  <33.720692, 32.656490, 23.768414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952332, 32.672352, 23.704346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053074, 32.322674, 23.538288>,  <33.113522, 32.112865, 23.438652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053074, 32.322674, 23.538288>,  <32.952332, 32.672352, 23.704346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053074, 32.322674, 23.538288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650893, -0.470471, 0.595816,
		-0.716174, 0.120155, -0.687501,
		0.251859, -0.874197, -0.415147,
		33.128632, 32.060413, 23.413744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401070, 32.387344, 23.567421>,  <32.952332, 32.672352, 23.704346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401070, 32.387344, 23.567421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668549, 32.091961, 23.602097>,  <32.829037, 31.914730, 23.622902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668549, 32.091961, 23.602097>,  <32.401070, 32.387344, 23.567421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668549, 32.091961, 23.602097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538350, -0.400449, 0.741499,
		-0.512854, -0.542509, -0.665331,
		0.668700, -0.738461, 0.086688,
		32.869160, 31.870422, 23.628103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953056, 31.845867, 23.763533>,  <32.401070, 32.387344, 23.567421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953056, 31.845867, 23.763533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321552, 31.728294, 23.865452>,  <32.542648, 31.657751, 23.926603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321552, 31.728294, 23.865452>,  <31.953056, 31.845867, 23.763533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321552, 31.728294, 23.865452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385909, -0.608187, 0.693673,
		-0.048928, -0.737368, -0.673717,
		0.921238, -0.293933, 0.254799,
		32.597923, 31.640114, 23.941891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853479, 31.239182, 23.965515>,  <31.953056, 31.845867, 23.763533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853479, 31.239182, 23.965515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224369, 31.266899, 24.112732>,  <32.446903, 31.283529, 24.201063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224369, 31.266899, 24.112732>,  <31.853479, 31.239182, 23.965515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224369, 31.266899, 24.112732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249136, -0.619619, 0.744314,
		0.279624, -0.781838, -0.557261,
		0.927223, 0.069295, 0.368045,
		32.502537, 31.287687, 24.223145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865726, 30.655102, 24.317911>,  <31.853479, 31.239182, 23.965515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865726, 30.655102, 24.317911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172173, 30.865242, 24.466007>,  <32.356041, 30.991325, 24.554865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172173, 30.865242, 24.466007>,  <31.865726, 30.655102, 24.317911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172173, 30.865242, 24.466007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131600, -0.435631, 0.890453,
		0.629088, -0.730912, -0.264607,
		0.766114, 0.525351, 0.370238,
		32.402008, 31.022848, 24.577078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205021, 30.171473, 24.885126>,  <31.865726, 30.655102, 24.317911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205021, 30.171473, 24.885126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312767, 30.550568, 24.953518>,  <32.377415, 30.778025, 24.994553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312767, 30.550568, 24.953518>,  <32.205021, 30.171473, 24.885126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312767, 30.550568, 24.953518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099184, -0.149295, 0.983806,
		0.957917, -0.281961, 0.053786,
		0.269365, 0.947739, 0.170979,
		32.393578, 30.834888, 25.004812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754700, 30.161758, 25.420500>,  <32.205021, 30.171473, 24.885126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754700, 30.161758, 25.420500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584652, 30.523811, 25.419331>,  <32.482624, 30.741043, 25.418629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584652, 30.523811, 25.419331>,  <32.754700, 30.161758, 25.420500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584652, 30.523811, 25.419331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148117, -0.066381, 0.986740,
		0.892934, 0.419920, 0.162285,
		-0.425124, 0.905131, -0.002923,
		32.457115, 30.795351, 25.418453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063354, 30.494532, 25.971622>,  <32.754700, 30.161758, 25.420500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063354, 30.494532, 25.971622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745632, 30.730476, 25.913452>,  <32.555000, 30.872044, 25.878550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745632, 30.730476, 25.913452>,  <33.063354, 30.494532, 25.971622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745632, 30.730476, 25.913452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042485, 0.184858, 0.981847,
		0.606036, 0.786061, -0.121773,
		-0.794302, 0.589861, -0.145426,
		32.507343, 30.907434, 25.869823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295788, 31.119919, 26.245632>,  <33.063354, 30.494532, 25.971622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295788, 31.119919, 26.245632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896809, 31.091736, 26.241135>,  <32.657421, 31.074825, 26.238436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896809, 31.091736, 26.241135>,  <33.295788, 31.119919, 26.245632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896809, 31.091736, 26.241135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020948, 0.138577, 0.990130,
		-0.068205, 0.987842, -0.139700,
		-0.997451, -0.070458, -0.011242,
		32.597572, 31.070599, 26.237762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196415, 31.537321, 26.780680>,  <33.295788, 31.119919, 26.245632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196415, 31.537321, 26.780680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865540, 31.321602, 26.717537>,  <32.667015, 31.192171, 26.679651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865540, 31.321602, 26.717537>,  <33.196415, 31.537321, 26.780680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865540, 31.321602, 26.717537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168707, -0.029615, 0.985221,
		-0.536002, 0.841595, -0.066486,
		-0.827188, -0.539297, -0.157857,
		32.617382, 31.159813, 26.670179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679150, 31.829121, 27.264149>,  <33.196415, 31.537321, 26.780680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679150, 31.829121, 27.264149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583614, 31.449062, 27.183968>,  <32.526291, 31.221027, 27.135859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583614, 31.449062, 27.183968>,  <32.679150, 31.829121, 27.264149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583614, 31.449062, 27.183968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070728, -0.188856, 0.979455,
		-0.968480, 0.248111, -0.022095,
		-0.238841, -0.950144, -0.200451,
		32.511963, 31.164019, 27.123833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076675, 31.743536, 27.740959>,  <32.679150, 31.829121, 27.264149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076675, 31.743536, 27.740959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192684, 31.376869, 27.630974>,  <32.262291, 31.156868, 27.564983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192684, 31.376869, 27.630974>,  <32.076675, 31.743536, 27.740959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192684, 31.376869, 27.630974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148978, -0.327053, 0.933189,
		-0.945352, -0.229685, -0.231417,
		0.290026, -0.916668, -0.274962,
		32.279694, 31.101870, 27.548485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598688, 31.196579, 28.009216>,  <32.076675, 31.743536, 27.740959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598688, 31.196579, 28.009216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941175, 31.006916, 27.927177>,  <32.146667, 30.893118, 27.877954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941175, 31.006916, 27.927177>,  <31.598688, 31.196579, 28.009216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941175, 31.006916, 27.927177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040446, -0.334257, 0.941613,
		-0.515030, -0.814521, -0.267019,
		0.856217, -0.474159, -0.205097,
		32.198040, 30.864668, 27.865648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485411, 30.545559, 28.102848>,  <31.598688, 31.196579, 28.009216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485411, 30.545559, 28.102848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881834, 30.576584, 28.146278>,  <32.119686, 30.595198, 28.172337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881834, 30.576584, 28.146278>,  <31.485411, 30.545559, 28.102848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881834, 30.576584, 28.146278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063239, -0.443495, 0.894043,
		0.117496, -0.892914, -0.434624,
		0.991058, 0.077561, 0.108576,
		32.179150, 30.599852, 28.178850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709604, 29.972820, 28.514519>,  <31.485411, 30.545559, 28.102848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709604, 29.972820, 28.514519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030495, 30.210239, 28.540245>,  <32.223030, 30.352692, 28.555681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030495, 30.210239, 28.540245>,  <31.709604, 29.972820, 28.514519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030495, 30.210239, 28.540245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141730, -0.293981, 0.945245,
		0.579955, -0.749184, -0.319962,
		0.802225, 0.593548, 0.064314,
		32.271164, 30.388304, 28.559540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303791, 29.620255, 28.860888>,  <31.709604, 29.972820, 28.514519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303791, 29.620255, 28.860888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366627, 30.011749, 28.913654>,  <32.404327, 30.246645, 28.945314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366627, 30.011749, 28.913654>,  <32.303791, 29.620255, 28.860888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366627, 30.011749, 28.913654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375188, -0.182703, 0.908765,
		0.913541, -0.093263, -0.395910,
		0.157088, 0.978735, 0.131916,
		32.413754, 30.305370, 28.953230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712955, 29.645264, 29.528620>,  <32.303791, 29.620255, 28.860888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712955, 29.645264, 29.528620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653099, 30.031376, 29.442974>,  <32.617184, 30.263042, 29.391586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653099, 30.031376, 29.442974>,  <32.712955, 29.645264, 29.528620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653099, 30.031376, 29.442974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279992, 0.249059, 0.927132,
		0.948267, 0.078790, -0.307541,
		-0.149644, 0.965278, -0.214114,
		32.608208, 30.320959, 29.378740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300949, 29.896805, 29.707590>,  <32.712955, 29.645264, 29.528620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300949, 29.896805, 29.707590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015705, 30.177219, 29.705688>,  <32.844559, 30.345469, 29.704548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015705, 30.177219, 29.705688>,  <33.300949, 29.896805, 29.707590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015705, 30.177219, 29.705688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159649, 0.168996, 0.972601,
		0.682633, 0.692811, -0.232432,
		-0.713109, 0.701037, -0.004756,
		32.801773, 30.387531, 29.704262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555721, 30.308603, 30.237247>,  <33.300949, 29.896805, 29.707590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555721, 30.308603, 30.237247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169533, 30.398323, 30.184235>,  <32.937820, 30.452154, 30.152428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169533, 30.398323, 30.184235>,  <33.555721, 30.308603, 30.237247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169533, 30.398323, 30.184235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094306, 0.173319, 0.980340,
		0.242858, 0.958985, -0.146181,
		-0.965467, 0.224297, -0.132530,
		32.879894, 30.465612, 30.144476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452118, 30.962688, 30.590902>,  <33.555721, 30.308603, 30.237247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452118, 30.962688, 30.590902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086899, 30.803284, 30.556190>,  <32.867767, 30.707642, 30.535362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086899, 30.803284, 30.556190>,  <33.452118, 30.962688, 30.590902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086899, 30.803284, 30.556190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114278, 0.045719, 0.992396,
		-0.391513, 0.916023, -0.087284,
		-0.913049, -0.398511, -0.086781,
		32.812984, 30.683731, 30.530155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037830, 31.272625, 31.158939>,  <33.452118, 30.962688, 30.590902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037830, 31.272625, 31.158939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839756, 30.937057, 31.068600>,  <32.720913, 30.735718, 31.014395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839756, 30.937057, 31.068600>,  <33.037830, 31.272625, 31.158939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839756, 30.937057, 31.068600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113597, -0.195209, 0.974161,
		-0.861329, 0.508045, 0.001366,
		-0.495184, -0.838918, -0.225851,
		32.691200, 30.685383, 31.000845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410076, 31.228943, 31.644388>,  <33.037830, 31.272625, 31.158939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410076, 31.228943, 31.644388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471218, 30.854263, 31.518387>,  <32.507904, 30.629456, 31.442785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471218, 30.854263, 31.518387>,  <32.410076, 31.228943, 31.644388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471218, 30.854263, 31.518387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192760, -0.340886, 0.920130,
		-0.969267, -0.079927, -0.232665,
		0.152856, -0.936701, -0.315003,
		32.517075, 30.573254, 31.423885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860073, 30.887455, 31.792671>,  <32.410076, 31.228943, 31.644388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860073, 30.887455, 31.792671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161884, 30.624947, 31.793224>,  <32.342972, 30.467442, 31.793556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161884, 30.624947, 31.793224>,  <31.860073, 30.887455, 31.792671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161884, 30.624947, 31.793224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295278, -0.337605, 0.893775,
		-0.586091, -0.674784, -0.448513,
		0.754525, -0.656269, 0.001382,
		32.388241, 30.428066, 31.793638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597818, 30.272173, 32.067726>,  <31.860073, 30.887455, 31.792671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597818, 30.272173, 32.067726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987852, 30.188732, 32.097904>,  <32.221874, 30.138668, 32.116009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987852, 30.188732, 32.097904>,  <31.597818, 30.272173, 32.067726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987852, 30.188732, 32.097904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144232, -0.337821, 0.930094,
		-0.168534, -0.917803, -0.359491,
		0.975087, -0.208602, 0.075442,
		32.280376, 30.126152, 32.120537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604141, 29.643335, 32.311340>,  <31.597818, 30.272173, 32.067726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604141, 29.643335, 32.311340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979509, 29.741699, 32.408413>,  <32.204731, 29.800718, 32.466656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979509, 29.741699, 32.408413>,  <31.604141, 29.643335, 32.311340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979509, 29.741699, 32.408413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124359, -0.414908, 0.901325,
		0.322333, -0.876002, -0.358778,
		0.938422, 0.245909, 0.242677,
		32.261036, 29.815472, 32.481216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868034, 29.144291, 32.820473>,  <31.604141, 29.643335, 32.311340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868034, 29.144291, 32.820473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157520, 29.419430, 32.842766>,  <32.331211, 29.584513, 32.856140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157520, 29.419430, 32.842766>,  <31.868034, 29.144291, 32.820473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157520, 29.419430, 32.842766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056950, -0.140013, 0.988511,
		0.687746, -0.712225, -0.140502,
		0.723714, 0.687846, 0.055732,
		32.374634, 29.625784, 32.859486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374794, 28.754223, 33.232513>,  <31.868034, 29.144291, 32.820473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374794, 28.754223, 33.232513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395275, 29.153019, 33.255814>,  <32.407562, 29.392296, 33.269794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395275, 29.153019, 33.255814>,  <32.374794, 28.754223, 33.232513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395275, 29.153019, 33.255814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031259, -0.056697, 0.997902,
		0.998199, -0.052914, 0.028262,
		0.051201, 0.996988, 0.058249,
		32.410637, 29.452116, 33.273289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828850, 28.909662, 33.794510>,  <32.374794, 28.754223, 33.232513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828850, 28.909662, 33.794510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657581, 29.266544, 33.737045>,  <32.554821, 29.480673, 33.702568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657581, 29.266544, 33.737045>,  <32.828850, 28.909662, 33.794510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657581, 29.266544, 33.737045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141966, 0.223407, 0.964332,
		0.892476, 0.392505, -0.222320,
		-0.428173, 0.892205, -0.143663,
		32.529129, 29.534206, 33.693947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242558, 29.336170, 34.210999>,  <32.828850, 28.909662, 33.794510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242558, 29.336170, 34.210999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899651, 29.535217, 34.158134>,  <32.693905, 29.654646, 34.126415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899651, 29.535217, 34.158134>,  <33.242558, 29.336170, 34.210999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899651, 29.535217, 34.158134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059548, 0.159144, 0.985458,
		0.511415, 0.852672, -0.106797,
		-0.857268, 0.497618, -0.132164,
		32.642471, 29.684504, 34.118484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304783, 29.900127, 34.596600>,  <33.242558, 29.336170, 34.210999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304783, 29.900127, 34.596600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911594, 29.842789, 34.550594>,  <32.675682, 29.808386, 34.522991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911594, 29.842789, 34.550594>,  <33.304783, 29.900127, 34.596600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911594, 29.842789, 34.550594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108130, -0.054949, 0.992617,
		-0.148606, 0.988146, 0.038513,
		-0.982967, -0.143345, -0.115014,
		32.616703, 29.799786, 34.516090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879219, 30.408556, 34.970154>,  <33.304783, 29.900127, 34.596600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879219, 30.408556, 34.970154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659832, 30.076614, 34.929119>,  <32.528198, 29.877449, 34.904499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659832, 30.076614, 34.929119>,  <32.879219, 30.408556, 34.970154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659832, 30.076614, 34.929119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170555, -0.009076, 0.985306,
		-0.818592, 0.557907, -0.136558,
		-0.548469, -0.829854, -0.102583,
		32.495293, 29.827658, 34.898346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294804, 30.571611, 35.375889>,  <32.879219, 30.408556, 34.970154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294804, 30.571611, 35.375889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251415, 30.176048, 35.335304>,  <32.225384, 29.938711, 35.310951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251415, 30.176048, 35.335304>,  <32.294804, 30.571611, 35.375889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251415, 30.176048, 35.335304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307399, -0.063698, 0.949447,
		-0.945379, 0.134176, -0.297080,
		-0.108470, -0.988908, -0.101464,
		32.218876, 29.879375, 35.304867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653103, 30.362625, 35.696060>,  <32.294804, 30.571611, 35.375889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653103, 30.362625, 35.696060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884413, 30.036983, 35.674767>,  <32.023201, 29.841599, 35.661991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884413, 30.036983, 35.674767>,  <31.653103, 30.362625, 35.696060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884413, 30.036983, 35.674767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126125, -0.153678, 0.980038,
		-0.806033, -0.560018, -0.191547,
		0.578277, -0.814102, -0.053237,
		32.057896, 29.792753, 35.658794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359631, 29.866566, 36.131054>,  <31.653103, 30.362625, 35.696060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359631, 29.866566, 36.131054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721769, 29.698330, 36.107552>,  <31.939053, 29.597389, 36.093449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721769, 29.698330, 36.107552>,  <31.359631, 29.866566, 36.131054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721769, 29.698330, 36.107552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026516, -0.194070, 0.980629,
		-0.423845, -0.886252, -0.186853,
		0.905347, -0.420589, -0.058756,
		31.993374, 29.572153, 36.089924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336653, 29.180696, 36.462830>,  <31.359631, 29.866566, 36.131054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336653, 29.180696, 36.462830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719431, 29.296783, 36.465061>,  <31.949099, 29.366436, 36.466400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719431, 29.296783, 36.465061>,  <31.336653, 29.180696, 36.462830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719431, 29.296783, 36.465061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071216, -0.253356, 0.964748,
		0.281398, -0.922814, -0.263116,
		0.956945, 0.290216, 0.005575,
		32.006516, 29.383848, 36.466732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631706, 28.729164, 36.910984>,  <31.336653, 29.180696, 36.462830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631706, 28.729164, 36.910984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944468, 28.974079, 36.864101>,  <32.132122, 29.121027, 36.835972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944468, 28.974079, 36.864101>,  <31.631706, 28.729164, 36.910984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944468, 28.974079, 36.864101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240466, -0.122766, 0.962863,
		0.575158, -0.781047, -0.243224,
		0.781901, 0.612286, -0.117205,
		32.179039, 29.157764, 36.828941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132767, 28.391300, 37.114002>,  <31.631706, 28.729164, 36.910984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132767, 28.391300, 37.114002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259941, 28.764332, 37.182365>,  <32.336246, 28.988152, 37.223385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259941, 28.764332, 37.182365>,  <32.132767, 28.391300, 37.114002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259941, 28.764332, 37.182365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173317, -0.234393, 0.956567,
		0.932136, -0.274505, -0.236154,
		0.317935, 0.932581, 0.170910,
		32.355320, 29.044106, 37.233639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783325, 28.358206, 37.329712>,  <32.132767, 28.391300, 37.114002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783325, 28.358206, 37.329712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600510, 28.680637, 37.480103>,  <32.490822, 28.874096, 37.570335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600510, 28.680637, 37.480103>,  <32.783325, 28.358206, 37.329712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600510, 28.680637, 37.480103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080488, -0.383489, 0.920031,
		0.885798, 0.450750, 0.110389,
		-0.457037, 0.806077, 0.375974,
		32.463398, 28.922461, 37.592896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130238, 28.535368, 37.959084>,  <32.783325, 28.358206, 37.329712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130238, 28.535368, 37.959084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739880, 28.619526, 37.935902>,  <32.505665, 28.670021, 37.921993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739880, 28.619526, 37.935902>,  <33.130238, 28.535368, 37.959084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739880, 28.619526, 37.935902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140327, -0.401599, 0.905001,
		0.167131, 0.891321, 0.421443,
		-0.975897, 0.210394, -0.057956,
		32.447109, 28.682644, 37.918514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024567, 28.764603, 38.557388>,  <33.130238, 28.535368, 37.959084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024567, 28.764603, 38.557388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673637, 28.631393, 38.419174>,  <32.463078, 28.551468, 38.336246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673637, 28.631393, 38.419174>,  <33.024567, 28.764603, 38.557388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673637, 28.631393, 38.419174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103280, -0.572121, 0.813641,
		-0.468647, 0.749516, 0.467543,
		-0.877327, -0.333022, -0.345533,
		32.410439, 28.531487, 38.315514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430779, 28.939560, 39.000572>,  <33.024567, 28.764603, 38.557388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430779, 28.939560, 39.000572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379105, 28.603733, 38.789501>,  <32.348099, 28.402237, 38.662861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379105, 28.603733, 38.789501>,  <32.430779, 28.939560, 39.000572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379105, 28.603733, 38.789501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059340, -0.524633, 0.849258,
		-0.989843, 0.141025, 0.017955,
		-0.129187, -0.839567, -0.527673,
		32.340347, 28.351864, 38.631199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651333, 28.770815, 38.956894>,  <32.430779, 28.939560, 39.000572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651333, 28.770815, 38.956894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497873, 29.022755, 39.227036>,  <31.405798, 29.173920, 39.389118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497873, 29.022755, 39.227036>,  <31.651333, 28.770815, 38.956894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497873, 29.022755, 39.227036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859742, 0.510582, 0.012215,
		-0.337129, 0.585314, -0.737395,
		-0.383650, 0.629851, 0.675352,
		31.382778, 29.211710, 39.429642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534229, 29.583427, 38.805305>,  <31.651333, 28.770815, 38.956894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534229, 29.583427, 38.805305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652397, 29.514732, 39.181229>,  <31.723297, 29.473515, 39.406780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652397, 29.514732, 39.181229>,  <31.534229, 29.583427, 38.805305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652397, 29.514732, 39.181229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872197, 0.449920, -0.191949,
		-0.389872, 0.876401, 0.282704,
		0.295419, -0.171738, 0.939805,
		31.741022, 29.463211, 39.463169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818161, 30.231148, 39.147087>,  <31.534229, 29.583427, 38.805305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818161, 30.231148, 39.147087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984713, 29.882633, 39.250999>,  <32.084644, 29.673525, 39.313347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984713, 29.882633, 39.250999>,  <31.818161, 30.231148, 39.147087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984713, 29.882633, 39.250999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792857, 0.208121, -0.572768,
		0.444979, 0.444459, 0.777464,
		0.416379, -0.871287, 0.259783,
		32.109627, 29.621246, 39.328934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579536, 30.307316, 39.289959>,  <31.818161, 30.231148, 39.147087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579536, 30.307316, 39.289959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464703, 29.968765, 39.110527>,  <32.395802, 29.765635, 39.002869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464703, 29.968765, 39.110527>,  <32.579536, 30.307316, 39.289959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464703, 29.968765, 39.110527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643741, 0.176318, -0.744654,
		0.709351, -0.502552, 0.494229,
		-0.287086, -0.846377, -0.448584,
		32.378578, 29.714851, 38.975952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894497, 30.684668, 39.850273>,  <32.579536, 30.307316, 39.289959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894497, 30.684668, 39.850273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203884, 30.644474, 39.599949>,  <33.389519, 30.620358, 39.449753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203884, 30.644474, 39.599949>,  <32.894497, 30.684668, 39.850273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203884, 30.644474, 39.599949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306900, 0.804517, -0.508492,
		0.554575, 0.585367, 0.591433,
		0.773472, -0.100486, -0.625814,
		33.435925, 30.614328, 39.412205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987076, 31.315508, 39.634224>,  <32.894497, 30.684668, 39.850273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987076, 31.315508, 39.634224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152134, 31.086300, 39.350994>,  <33.251171, 30.948774, 39.181057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152134, 31.086300, 39.350994>,  <32.987076, 31.315508, 39.634224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152134, 31.086300, 39.350994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339485, 0.624593, -0.703302,
		0.845264, 0.530597, 0.063205,
		0.412647, -0.573019, -0.708076,
		33.275928, 30.914394, 39.138573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571304, 31.671932, 39.189346>,  <32.987076, 31.315508, 39.634224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571304, 31.671932, 39.189346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414364, 31.366421, 38.984329>,  <33.320198, 31.183113, 38.861320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414364, 31.366421, 38.984329>,  <33.571304, 31.671932, 39.189346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414364, 31.366421, 38.984329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140418, 0.600427, -0.787255,
		0.909034, -0.236911, -0.342827,
		-0.392353, -0.763781, -0.512542,
		33.296658, 31.137287, 38.830566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000751, 31.609745, 38.533150>,  <33.571304, 31.671932, 39.189346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000751, 31.609745, 38.533150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648514, 31.437946, 38.453060>,  <33.437172, 31.334867, 38.405006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648514, 31.437946, 38.453060>,  <34.000751, 31.609745, 38.533150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648514, 31.437946, 38.453060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006182, 0.432906, -0.901418,
		0.473834, -0.792544, -0.383869,
		-0.880592, -0.429495, -0.200226,
		33.384335, 31.309097, 38.392994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223751, 31.133818, 38.023872>,  <34.000751, 31.609745, 38.533150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223751, 31.133818, 38.023872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836792, 31.234455, 38.012249>,  <33.604618, 31.294838, 38.005276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836792, 31.234455, 38.012249>,  <34.223751, 31.133818, 38.023872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836792, 31.234455, 38.012249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140359, 0.437075, -0.888406,
		-0.210815, -0.863520, -0.458138,
		-0.967396, 0.251593, -0.029061,
		33.546574, 31.309933, 38.003532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083961, 31.066416, 37.289417>,  <34.223751, 31.133818, 38.023872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083961, 31.066416, 37.289417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789070, 31.284737, 37.448715>,  <33.612137, 31.415730, 37.544292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789070, 31.284737, 37.448715>,  <34.083961, 31.066416, 37.289417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789070, 31.284737, 37.448715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016909, 0.604144, -0.796695,
		-0.675435, -0.580610, -0.454620,
		-0.737226, 0.545803, 0.398243,
		33.567902, 31.448477, 37.568188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539772, 31.126812, 36.738064>,  <34.083961, 31.066416, 37.289417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539772, 31.126812, 36.738064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463093, 31.422482, 36.996326>,  <33.417084, 31.599884, 37.151283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463093, 31.422482, 36.996326>,  <33.539772, 31.126812, 36.738064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463093, 31.422482, 36.996326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082368, 0.667654, -0.739901,
		-0.977991, -0.088658, -0.188874,
		-0.191701, 0.739174, 0.645657,
		33.405582, 31.644234, 37.190025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953609, 31.419720, 36.456039>,  <33.539772, 31.126812, 36.738064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953609, 31.419720, 36.456039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125858, 31.699341, 36.684387>,  <33.229210, 31.867113, 36.821396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125858, 31.699341, 36.684387>,  <32.953609, 31.419720, 36.456039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125858, 31.699341, 36.684387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026725, 0.642118, -0.766140,
		-0.902135, 0.314662, 0.295194,
		0.430624, 0.699051, 0.570868,
		33.255047, 31.909056, 36.855648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522434, 31.893785, 36.530827>,  <32.953609, 31.419720, 36.456039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522434, 31.893785, 36.530827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859562, 32.099663, 36.593742>,  <33.061840, 32.223190, 36.631493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859562, 32.099663, 36.593742>,  <32.522434, 31.893785, 36.530827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859562, 32.099663, 36.593742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266904, 0.653518, -0.708291,
		-0.467348, 0.554981, 0.688173,
		0.842821, 0.514695, 0.157294,
		33.112408, 32.254070, 36.640930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253403, 32.560551, 36.421276>,  <32.522434, 31.893785, 36.530827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253403, 32.560551, 36.421276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652958, 32.574871, 36.409050>,  <32.892693, 32.583462, 36.401714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652958, 32.574871, 36.409050>,  <32.253403, 32.560551, 36.421276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652958, 32.574871, 36.409050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046501, 0.649227, -0.759172,
		-0.007332, 0.759751, 0.650172,
		0.998891, 0.035800, -0.030569,
		32.952625, 32.585609, 36.399879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439323, 33.279034, 36.318642>,  <32.253403, 32.560551, 36.421276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439323, 33.279034, 36.318642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756615, 33.067818, 36.197342>,  <32.946987, 32.941086, 36.124561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756615, 33.067818, 36.197342>,  <32.439323, 33.279034, 36.318642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756615, 33.067818, 36.197342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179460, 0.678615, -0.712233,
		0.581882, 0.510540, 0.633058,
		0.793226, -0.528045, -0.303252,
		32.994583, 32.909405, 36.106365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812843, 33.779629, 36.141483>,  <32.439323, 33.279034, 36.318642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812843, 33.779629, 36.141483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965561, 33.456673, 35.961548>,  <33.057190, 33.262897, 35.853588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965561, 33.456673, 35.961548>,  <32.812843, 33.779629, 36.141483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965561, 33.456673, 35.961548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222306, 0.552638, -0.803226,
		0.897115, 0.206664, 0.390481,
		0.381793, -0.807391, -0.449837,
		33.080097, 33.214455, 35.826595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545307, 33.873085, 35.934841>,  <32.812843, 33.779629, 36.141483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545307, 33.873085, 35.934841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435371, 33.578255, 35.687881>,  <33.369408, 33.401356, 35.539707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435371, 33.578255, 35.687881>,  <33.545307, 33.873085, 35.934841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435371, 33.578255, 35.687881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321915, 0.534524, -0.781444,
		0.905998, -0.413523, 0.090366,
		-0.274842, -0.737077, -0.617397,
		33.352921, 33.357132, 35.502663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020981, 33.880486, 35.406414>,  <33.545307, 33.873085, 35.934841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020981, 33.880486, 35.406414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741589, 33.658520, 35.225662>,  <33.573952, 33.525341, 35.117210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741589, 33.658520, 35.225662>,  <34.020981, 33.880486, 35.406414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741589, 33.658520, 35.225662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139397, 0.513846, -0.846482,
		0.701919, -0.654243, -0.281559,
		-0.698483, -0.554913, -0.451878,
		33.532043, 33.492046, 35.090099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348335, 33.815865, 34.785789>,  <34.020981, 33.880486, 35.406414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348335, 33.815865, 34.785789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959293, 33.739182, 34.733192>,  <33.725868, 33.693172, 34.701633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959293, 33.739182, 34.733192>,  <34.348335, 33.815865, 34.785789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959293, 33.739182, 34.733192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034106, 0.441834, -0.896448,
		0.229948, -0.876374, -0.423192,
		-0.972605, -0.191703, -0.131489,
		33.667511, 33.681671, 34.693745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320374, 33.466122, 34.239452>,  <34.348335, 33.815865, 34.785789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320374, 33.466122, 34.239452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947342, 33.607254, 34.269951>,  <33.723522, 33.691933, 34.288250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947342, 33.607254, 34.269951>,  <34.320374, 33.466122, 34.239452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947342, 33.607254, 34.269951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025648, 0.275452, -0.960973,
		-0.360058, -0.894226, -0.265930,
		-0.932578, 0.352827, 0.076243,
		33.667568, 33.713100, 34.292824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022964, 33.171883, 33.733196>,  <34.320374, 33.466122, 34.239452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022964, 33.171883, 33.733196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747936, 33.448673, 33.821205>,  <33.582920, 33.614750, 33.874012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747936, 33.448673, 33.821205>,  <34.022964, 33.171883, 33.733196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747936, 33.448673, 33.821205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180099, 0.131026, -0.974883,
		-0.703428, -0.709927, 0.034535,
		-0.687571, 0.691979, 0.220024,
		33.541664, 33.656265, 33.887211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394417, 33.013535, 33.360874>,  <34.022964, 33.171883, 33.733196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394417, 33.013535, 33.360874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348007, 33.404102, 33.433693>,  <33.320160, 33.638443, 33.477383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348007, 33.404102, 33.433693>,  <33.394417, 33.013535, 33.360874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348007, 33.404102, 33.433693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185906, 0.158697, -0.969667,
		-0.975693, -0.146351, 0.163109,
		-0.116027, 0.976420, 0.182047,
		33.313198, 33.697029, 33.488308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785282, 33.169113, 33.096081>,  <33.394417, 33.013535, 33.360874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785282, 33.169113, 33.096081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025066, 33.489254, 33.099663>,  <33.168938, 33.681339, 33.101814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025066, 33.489254, 33.099663>,  <32.785282, 33.169113, 33.096081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025066, 33.489254, 33.099663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203637, 0.163328, -0.965327,
		-0.774064, 0.576855, 0.260890,
		0.599464, 0.800352, 0.008957,
		33.204906, 33.729359, 33.102348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577106, 33.580711, 32.517349>,  <32.785282, 33.169113, 33.096081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577106, 33.580711, 32.517349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935768, 33.738010, 32.598709>,  <33.150963, 33.832390, 32.647526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935768, 33.738010, 32.598709>,  <32.577106, 33.580711, 32.517349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935768, 33.738010, 32.598709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161672, 0.136853, -0.977309,
		-0.412162, 0.909190, 0.059132,
		0.896652, 0.393250, 0.203396,
		33.204765, 33.855984, 32.659729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688404, 34.097656, 32.012539>,  <32.577106, 33.580711, 32.517349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688404, 34.097656, 32.012539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067112, 34.059593, 32.135551>,  <33.294334, 34.036755, 32.209358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067112, 34.059593, 32.135551>,  <32.688404, 34.097656, 32.012539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067112, 34.059593, 32.135551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319307, 0.156168, -0.934695,
		0.040914, 0.983136, 0.178239,
		0.946768, -0.095155, 0.307532,
		33.351143, 34.031048, 32.227810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089550, 34.653580, 31.747377>,  <32.688404, 34.097656, 32.012539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089550, 34.653580, 31.747377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344944, 34.354549, 31.820553>,  <33.498180, 34.175129, 31.864458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344944, 34.354549, 31.820553>,  <33.089550, 34.653580, 31.747377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344944, 34.354549, 31.820553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356671, 0.076783, -0.931069,
		0.682001, 0.659721, 0.315664,
		0.638483, -0.747578, 0.182938,
		33.536488, 34.130276, 31.875435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727058, 34.873947, 31.400784>,  <33.089550, 34.653580, 31.747377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727058, 34.873947, 31.400784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826294, 34.487843, 31.433563>,  <33.885834, 34.256180, 31.453232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826294, 34.487843, 31.433563>,  <33.727058, 34.873947, 31.400784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826294, 34.487843, 31.433563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414249, 0.029234, -0.909694,
		0.875700, 0.259631, 0.407112,
		0.248087, -0.965265, 0.081951,
		33.900719, 34.198261, 31.458149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415691, 34.783627, 31.197775>,  <33.727058, 34.873947, 31.400784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415691, 34.783627, 31.197775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273869, 34.412254, 31.153400>,  <34.188774, 34.189430, 31.126776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273869, 34.412254, 31.153400>,  <34.415691, 34.783627, 31.197775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273869, 34.412254, 31.153400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416100, -0.050419, -0.907920,
		0.837346, -0.368073, 0.404195,
		-0.354560, -0.928429, -0.110937,
		34.167500, 34.133724, 31.120119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008354, 34.491409, 30.823109>,  <34.415691, 34.783627, 31.197775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008354, 34.491409, 30.823109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685860, 34.263237, 30.760384>,  <34.492363, 34.126335, 30.722748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685860, 34.263237, 30.760384>,  <35.008354, 34.491409, 30.823109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685860, 34.263237, 30.760384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191545, -0.000911, -0.981483,
		0.559723, -0.821346, 0.109997,
		-0.806238, -0.570429, -0.156814,
		34.443989, 34.092110, 30.713339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273148, 33.828533, 30.466663>,  <35.008354, 34.491409, 30.823109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273148, 33.828533, 30.466663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881367, 33.811466, 30.387817>,  <34.646297, 33.801228, 30.340509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881367, 33.811466, 30.387817>,  <35.273148, 33.828533, 30.466663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881367, 33.811466, 30.387817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201599, -0.234596, -0.950959,
		-0.005668, -0.971156, 0.238377,
		-0.979451, -0.042666, -0.197114,
		34.587532, 33.798668, 30.328684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140282, 33.171494, 30.199266>,  <35.273148, 33.828533, 30.466663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140282, 33.171494, 30.199266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832958, 33.392681, 30.070312>,  <34.648563, 33.525394, 29.992941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832958, 33.392681, 30.070312>,  <35.140282, 33.171494, 30.199266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832958, 33.392681, 30.070312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227053, -0.235462, -0.944989,
		-0.598460, -0.799238, 0.055353,
		-0.768305, 0.552970, -0.322384,
		34.602467, 33.558571, 29.973597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772724, 32.765324, 29.755604>,  <35.140282, 33.171494, 30.199266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772724, 32.765324, 29.755604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681721, 33.142651, 29.658955>,  <34.627117, 33.369049, 29.600965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681721, 33.142651, 29.658955>,  <34.772724, 32.765324, 29.755604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681721, 33.142651, 29.658955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298218, -0.168713, -0.939469,
		-0.926987, -0.285796, -0.242932,
		-0.227511, 0.943322, -0.241625,
		34.613468, 33.425648, 29.586468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486397, 32.694096, 29.119669>,  <34.772724, 32.765324, 29.755604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486397, 32.694096, 29.119669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594715, 33.079098, 29.113396>,  <34.659706, 33.310101, 29.109631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594715, 33.079098, 29.113396>,  <34.486397, 32.694096, 29.119669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594715, 33.079098, 29.113396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232658, -0.081251, -0.969159,
		-0.934097, 0.258798, -0.245938,
		0.270799, 0.962508, -0.015685,
		34.675957, 33.367851, 29.108690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128292, 33.007996, 28.556671>,  <34.486397, 32.694096, 29.119669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128292, 33.007996, 28.556671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424599, 33.262348, 28.643318>,  <34.602383, 33.414959, 28.695307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424599, 33.262348, 28.643318>,  <34.128292, 33.007996, 28.556671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424599, 33.262348, 28.643318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037565, 0.282744, -0.958460,
		-0.670714, 0.718130, 0.185560,
		0.740764, 0.635882, 0.216616,
		34.646828, 33.453114, 28.708303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934307, 33.567902, 28.130007>,  <34.128292, 33.007996, 28.556671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934307, 33.567902, 28.130007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307980, 33.655354, 28.242794>,  <34.532185, 33.707825, 28.310467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307980, 33.655354, 28.242794>,  <33.934307, 33.567902, 28.130007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307980, 33.655354, 28.242794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179876, 0.393918, -0.901373,
		-0.308135, 0.892766, 0.328666,
		0.934183, 0.218626, 0.281968,
		34.588234, 33.720940, 28.327385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115105, 34.229473, 27.936266>,  <33.934307, 33.567902, 28.130007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115105, 34.229473, 27.936266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455822, 34.021053, 27.958023>,  <34.660252, 33.896000, 27.971077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455822, 34.021053, 27.958023>,  <34.115105, 34.229473, 27.936266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455822, 34.021053, 27.958023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244342, 0.303293, -0.921037,
		0.463409, 0.797823, 0.385657,
		0.851792, -0.521049, 0.054393,
		34.711361, 33.864738, 27.974340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561089, 34.680550, 27.640377>,  <34.115105, 34.229473, 27.936266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561089, 34.680550, 27.640377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742466, 34.324120, 27.632725>,  <34.851292, 34.110260, 27.628134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742466, 34.324120, 27.632725>,  <34.561089, 34.680550, 27.640377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742466, 34.324120, 27.632725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303440, 0.174523, -0.936731,
		0.838039, 0.418953, 0.349526,
		0.453447, -0.891078, -0.019130,
		34.878502, 34.056797, 27.626986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178757, 34.815540, 27.256245>,  <34.561089, 34.680550, 27.640377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178757, 34.815540, 27.256245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109932, 34.422264, 27.231789>,  <35.068638, 34.186298, 27.217115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109932, 34.422264, 27.231789>,  <35.178757, 34.815540, 27.256245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109932, 34.422264, 27.231789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238755, 0.018593, -0.970901,
		0.955714, -0.181657, 0.231542,
		-0.172066, -0.983186, -0.061141,
		35.058311, 34.127308, 27.213446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801559, 34.478054, 26.990759>,  <35.178757, 34.815540, 27.256245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801559, 34.478054, 26.990759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482174, 34.255451, 26.898880>,  <35.290543, 34.121891, 26.843752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482174, 34.255451, 26.898880>,  <35.801559, 34.478054, 26.990759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482174, 34.255451, 26.898880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239523, 0.056397, -0.969251,
		0.552351, -0.828926, 0.088265,
		-0.798460, -0.556508, -0.229698,
		35.242638, 34.088497, 26.829971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084518, 34.065868, 26.333227>,  <35.801559, 34.478054, 26.990759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084518, 34.065868, 26.333227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688057, 34.015961, 26.351322>,  <35.450180, 33.986015, 26.362179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688057, 34.015961, 26.351322>,  <36.084518, 34.065868, 26.333227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688057, 34.015961, 26.351322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067992, 0.184648, -0.980450,
		0.113973, -0.974853, -0.191498,
		-0.991154, -0.124765, 0.045237,
		35.390709, 33.978531, 26.364893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828037, 33.652462, 25.680300>,  <36.084518, 34.065868, 26.333227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828037, 33.652462, 25.680300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501095, 33.823639, 25.834599>,  <35.304932, 33.926346, 25.927177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501095, 33.823639, 25.834599>,  <35.828037, 33.652462, 25.680300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501095, 33.823639, 25.834599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300135, 0.255244, -0.919113,
		-0.491785, -0.867017, -0.080185,
		-0.817353, 0.427939, 0.385748,
		35.255890, 33.952019, 25.950323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243294, 33.305317, 25.356091>,  <35.828037, 33.652462, 25.680300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243294, 33.305317, 25.356091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108837, 33.660393, 25.481964>,  <35.028164, 33.873436, 25.557487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108837, 33.660393, 25.481964>,  <35.243294, 33.305317, 25.356091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108837, 33.660393, 25.481964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382442, 0.176686, -0.906929,
		-0.860668, -0.425201, 0.280097,
		-0.336138, 0.887686, 0.314683,
		35.007996, 33.926697, 25.576368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672302, 33.410950, 24.912991>,  <35.243294, 33.305317, 25.356091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672302, 33.410950, 24.912991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725262, 33.766930, 25.087559>,  <34.757038, 33.980518, 25.192299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725262, 33.766930, 25.087559>,  <34.672302, 33.410950, 24.912991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725262, 33.766930, 25.087559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408737, 0.450135, -0.793922,
		-0.902998, -0.073270, 0.423351,
		0.132394, 0.889950, 0.436419,
		34.764980, 34.033913, 25.218485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998142, 33.690647, 25.014456>,  <34.672302, 33.410950, 24.912991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998142, 33.690647, 25.014456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282898, 33.970726, 24.992764>,  <34.453751, 34.138771, 24.979748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282898, 33.970726, 24.992764>,  <33.998142, 33.690647, 25.014456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282898, 33.970726, 24.992764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442216, 0.386937, -0.809151,
		-0.545579, 0.600008, 0.585094,
		0.711891, 0.700193, -0.054229,
		34.496464, 34.180782, 24.976496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683636, 34.216820, 24.918983>,  <33.998142, 33.690647, 25.014456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683636, 34.216820, 24.918983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039108, 34.317463, 24.765652>,  <34.252392, 34.377850, 24.673653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039108, 34.317463, 24.765652>,  <33.683636, 34.216820, 24.918983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039108, 34.317463, 24.765652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450879, 0.327456, -0.830350,
		-0.083399, 0.910751, 0.404448,
		0.888680, 0.251607, -0.383329,
		34.305714, 34.392944, 24.650654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632553, 34.850185, 24.770109>,  <33.683636, 34.216820, 24.918983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632553, 34.850185, 24.770109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940506, 34.767994, 24.528427>,  <34.125278, 34.718678, 24.383417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940506, 34.767994, 24.528427>,  <33.632553, 34.850185, 24.770109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940506, 34.767994, 24.528427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462296, 0.473125, -0.749957,
		0.439967, 0.856697, 0.269256,
		0.769878, -0.205480, -0.604207,
		34.171471, 34.706348, 24.347164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873535, 35.571045, 24.758503>,  <33.632553, 34.850185, 24.770109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873535, 35.571045, 24.758503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536377, 35.509666, 24.552212>,  <33.334080, 35.472839, 24.428436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536377, 35.509666, 24.552212>,  <33.873535, 35.571045, 24.758503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536377, 35.509666, 24.552212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521428, 0.469477, 0.712534,
		0.132790, 0.869510, -0.475731,
		-0.842900, -0.153442, -0.515729,
		33.283508, 35.463634, 24.397493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483826, 36.272228, 24.712559>,  <33.873535, 35.571045, 24.758503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483826, 36.272228, 24.712559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218296, 35.979931, 24.648876>,  <33.058979, 35.804550, 24.610666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218296, 35.979931, 24.648876>,  <33.483826, 36.272228, 24.712559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218296, 35.979931, 24.648876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579480, 0.367985, 0.727179,
		-0.472797, 0.574977, -0.667731,
		-0.663826, -0.730745, -0.159205,
		33.019150, 35.760708, 24.601114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775082, 36.580391, 24.607534>,  <33.483826, 36.272228, 24.712559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775082, 36.580391, 24.607534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745647, 36.205070, 24.742691>,  <32.727985, 35.979877, 24.823786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745647, 36.205070, 24.742691>,  <32.775082, 36.580391, 24.607534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745647, 36.205070, 24.742691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366622, 0.340537, 0.865808,
		-0.927455, -0.060169, -0.369061,
		-0.073585, -0.938304, 0.337892,
		32.723572, 35.923580, 24.844059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296108, 36.675770, 25.149591>,  <32.775082, 36.580391, 24.607534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296108, 36.675770, 25.149591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367622, 36.286720, 25.208969>,  <32.410530, 36.053291, 25.244596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367622, 36.286720, 25.208969>,  <32.296108, 36.675770, 25.149591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367622, 36.286720, 25.208969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250806, 0.100839, 0.962771,
		-0.951385, -0.209359, -0.225912,
		0.178784, -0.972625, 0.148445,
		32.421257, 35.994934, 25.253502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672958, 36.376865, 25.482471>,  <32.296108, 36.675770, 25.149591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672958, 36.376865, 25.482471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991594, 36.147774, 25.559853>,  <32.182777, 36.010319, 25.606281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991594, 36.147774, 25.559853>,  <31.672958, 36.376865, 25.482471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991594, 36.147774, 25.559853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149820, 0.122984, 0.981035,
		-0.585657, -0.810467, 0.012162,
		0.796592, -0.572728, 0.193451,
		32.230572, 35.975956, 25.617887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424995, 35.867310, 25.935154>,  <31.672958, 36.376865, 25.482471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424995, 35.867310, 25.935154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822775, 35.864498, 25.977154>,  <32.061443, 35.862812, 26.002354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822775, 35.864498, 25.977154>,  <31.424995, 35.867310, 25.935154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822775, 35.864498, 25.977154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104030, 0.084812, 0.990951,
		-0.015873, -0.996372, 0.083610,
		0.994447, -0.007031, 0.104999,
		32.121109, 35.862389, 26.008654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519003, 35.486073, 26.441263>,  <31.424995, 35.867310, 25.935154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519003, 35.486073, 26.441263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854128, 35.704456, 26.442345>,  <32.055202, 35.835487, 26.442993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854128, 35.704456, 26.442345>,  <31.519003, 35.486073, 26.441263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854128, 35.704456, 26.442345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086936, 0.128519, 0.987889,
		0.538996, -0.827898, 0.155137,
		0.837810, 0.545956, 0.002703,
		32.105473, 35.868244, 26.443155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039299, 35.169666, 26.872908>,  <31.519003, 35.486073, 26.441263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039299, 35.169666, 26.872908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138813, 35.556770, 26.857220>,  <32.198521, 35.789032, 26.847807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138813, 35.556770, 26.857220>,  <32.039299, 35.169666, 26.872908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138813, 35.556770, 26.857220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047359, 0.052600, 0.997492,
		0.967400, -0.246304, 0.058918,
		0.248785, 0.967764, -0.039221,
		32.213448, 35.847099, 26.845453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457981, 35.195156, 27.275536>,  <32.039299, 35.169666, 26.872908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457981, 35.195156, 27.275536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357079, 35.581394, 27.250267>,  <32.296539, 35.813137, 27.235106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357079, 35.581394, 27.250267>,  <32.457981, 35.195156, 27.275536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357079, 35.581394, 27.250267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096358, 0.039895, 0.994547,
		0.962852, 0.256964, 0.082980,
		-0.252252, 0.965597, -0.063173,
		32.281403, 35.871075, 27.231316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796768, 35.503857, 27.781404>,  <32.457981, 35.195156, 27.275536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796768, 35.503857, 27.781404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511501, 35.774025, 27.706356>,  <32.340340, 35.936127, 27.661327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511501, 35.774025, 27.706356>,  <32.796768, 35.503857, 27.781404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511501, 35.774025, 27.706356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134168, 0.131185, 0.982237,
		0.688034, 0.725672, -0.002938,
		-0.713168, 0.675418, -0.187622,
		32.297550, 35.976650, 27.650070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050606, 36.057297, 28.091568>,  <32.796768, 35.503857, 27.781404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050606, 36.057297, 28.091568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658157, 36.120403, 28.046833>,  <32.422688, 36.158268, 28.019993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658157, 36.120403, 28.046833>,  <33.050606, 36.057297, 28.091568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658157, 36.120403, 28.046833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073033, 0.233195, 0.969684,
		0.179064, 0.959547, -0.217271,
		-0.981123, 0.157768, -0.111835,
		32.363819, 36.167732, 28.013283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847710, 36.720188, 28.499031>,  <33.050606, 36.057297, 28.091568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847710, 36.720188, 28.499031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498241, 36.529541, 28.459961>,  <32.288563, 36.415154, 28.436520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498241, 36.529541, 28.459961>,  <32.847710, 36.720188, 28.499031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498241, 36.529541, 28.459961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204892, 0.178349, 0.962399,
		-0.441276, 0.860829, -0.253473,
		-0.873668, -0.476618, -0.097676,
		32.236141, 36.386555, 28.430658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408028, 37.080364, 28.892948>,  <32.847710, 36.720188, 28.499031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408028, 37.080364, 28.892948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219929, 36.731003, 28.842304>,  <32.107071, 36.521385, 28.811918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219929, 36.731003, 28.842304>,  <32.408028, 37.080364, 28.892948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219929, 36.731003, 28.842304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298409, 0.022349, 0.954176,
		-0.830554, 0.486479, -0.271141,
		-0.470246, -0.873406, -0.126608,
		32.078854, 36.468983, 28.804321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740549, 37.227913, 29.162308>,  <32.408028, 37.080364, 28.892948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740549, 37.227913, 29.162308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791552, 36.831276, 29.171074>,  <31.822153, 36.593292, 29.176334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791552, 36.831276, 29.171074>,  <31.740549, 37.227913, 29.162308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791552, 36.831276, 29.171074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132709, 0.004841, 0.991143,
		-0.982920, -0.129284, -0.130976,
		0.127504, -0.991596, 0.021915,
		31.829803, 36.533798, 29.177649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171253, 37.018955, 29.537521>,  <31.740549, 37.227913, 29.162308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171253, 37.018955, 29.537521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436317, 36.719677, 29.550667>,  <31.595356, 36.540108, 29.558554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436317, 36.719677, 29.550667>,  <31.171253, 37.018955, 29.537521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436317, 36.719677, 29.550667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091477, -0.037310, 0.995108,
		-0.743313, -0.662424, -0.093167,
		0.662660, -0.748199, 0.032864,
		31.635115, 36.495216, 29.560526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859318, 36.492996, 29.957306>,  <31.171253, 37.018955, 29.537521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859318, 36.492996, 29.957306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243408, 36.381390, 29.961544>,  <31.473862, 36.314426, 29.964087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243408, 36.381390, 29.961544>,  <30.859318, 36.492996, 29.957306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243408, 36.381390, 29.961544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117247, -0.368472, 0.922216,
		-0.253411, -0.886779, -0.386531,
		0.960227, -0.279019, 0.010597,
		31.531477, 36.297684, 29.964724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800591, 35.796028, 30.219076>,  <30.859318, 36.492996, 29.957306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800591, 35.796028, 30.219076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171679, 35.925793, 30.292934>,  <31.394331, 36.003651, 30.337250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171679, 35.925793, 30.292934>,  <30.800591, 35.796028, 30.219076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171679, 35.925793, 30.292934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047054, -0.389074, 0.920004,
		0.370303, -0.862193, -0.345686,
		0.927719, 0.324414, 0.184645,
		31.449995, 36.023117, 30.348328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145222, 35.210442, 30.431463>,  <30.800591, 35.796028, 30.219076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145222, 35.210442, 30.431463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337137, 35.533016, 30.569721>,  <31.452286, 35.726559, 30.652676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337137, 35.533016, 30.569721>,  <31.145222, 35.210442, 30.431463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337137, 35.533016, 30.569721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000016, -0.393939, 0.919136,
		0.877384, -0.440997, -0.188994,
		0.479789, 0.806433, 0.345643,
		31.481073, 35.774944, 30.673414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658585, 34.980721, 30.899729>,  <31.145222, 35.210442, 30.431463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658585, 34.980721, 30.899729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644230, 35.365990, 31.006325>,  <31.635618, 35.597149, 31.070282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644230, 35.365990, 31.006325>,  <31.658585, 34.980721, 30.899729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644230, 35.365990, 31.006325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145299, -0.268857, 0.952158,
		0.988737, -0.004552, 0.149595,
		-0.035885, 0.963169, 0.266490,
		31.633465, 35.654942, 31.086271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052311, 34.961891, 31.437944>,  <31.658585, 34.980721, 30.899729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052311, 34.961891, 31.437944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824438, 35.287834, 31.480774>,  <31.687716, 35.483402, 31.506472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824438, 35.287834, 31.480774>,  <32.052311, 34.961891, 31.437944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824438, 35.287834, 31.480774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160027, -0.237767, 0.958049,
		0.806136, 0.528647, 0.265851,
		-0.569680, 0.814862, 0.107075,
		31.653534, 35.532291, 31.512896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369011, 35.333580, 32.050846>,  <32.052311, 34.961891, 31.437944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369011, 35.333580, 32.050846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988638, 35.446934, 32.001175>,  <31.760414, 35.514946, 31.971373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988638, 35.446934, 32.001175>,  <32.369011, 35.333580, 32.050846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988638, 35.446934, 32.001175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231883, -0.387080, 0.892412,
		0.204828, 0.877419, 0.433799,
		-0.950934, 0.283381, -0.124174,
		31.703358, 35.531948, 31.963923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269047, 35.602139, 32.644939>,  <32.369011, 35.333580, 32.050846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269047, 35.602139, 32.644939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931181, 35.470146, 32.476341>,  <31.728462, 35.390949, 32.375183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931181, 35.470146, 32.476341>,  <32.269047, 35.602139, 32.644939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931181, 35.470146, 32.476341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277682, -0.403077, 0.872022,
		-0.457646, 0.853605, 0.248834,
		-0.844661, -0.329981, -0.421497,
		31.677782, 35.371151, 32.349892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678724, 35.890961, 33.126804>,  <32.269047, 35.602139, 32.644939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678724, 35.890961, 33.126804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528925, 35.590149, 32.909840>,  <31.439045, 35.409664, 32.779659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528925, 35.590149, 32.909840>,  <31.678724, 35.890961, 33.126804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528925, 35.590149, 32.909840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359432, -0.421503, 0.832553,
		-0.854728, 0.506749, -0.112450,
		-0.374497, -0.752025, -0.542412,
		31.416576, 35.364540, 32.747116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084620, 35.685749, 33.524956>,  <31.678724, 35.890961, 33.126804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084620, 35.685749, 33.524956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179529, 35.365669, 33.304634>,  <31.236475, 35.173622, 33.172440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179529, 35.365669, 33.304634>,  <31.084620, 35.685749, 33.524956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179529, 35.365669, 33.304634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338015, -0.599571, 0.725438,
		-0.910740, 0.014053, -0.412741,
		0.237273, -0.800198, -0.550804,
		31.250711, 35.125610, 33.139393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402199, 35.196278, 33.444271>,  <31.084620, 35.685749, 33.524956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402199, 35.196278, 33.444271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744398, 34.995628, 33.392887>,  <30.949717, 34.875240, 33.362057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744398, 34.995628, 33.392887>,  <30.402199, 35.196278, 33.444271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744398, 34.995628, 33.392887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282392, -0.659921, 0.696247,
		-0.434027, -0.559360, -0.706213,
		0.855497, -0.501619, -0.128465,
		31.001047, 34.845142, 33.354347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209993, 34.507339, 33.506542>,  <30.402199, 35.196278, 33.444271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209993, 34.507339, 33.506542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605274, 34.492897, 33.566078>,  <30.842442, 34.484230, 33.601799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605274, 34.492897, 33.566078>,  <30.209993, 34.507339, 33.506542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605274, 34.492897, 33.566078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134260, -0.671907, 0.728365,
		0.073708, -0.739755, -0.668827,
		0.988201, -0.036110, 0.148844,
		30.901735, 34.482063, 33.610733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365276, 33.773113, 33.471550>,  <30.209993, 34.507339, 33.506542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365276, 33.773113, 33.471550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658791, 33.964588, 33.664387>,  <30.834900, 34.079475, 33.780090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658791, 33.964588, 33.664387>,  <30.365276, 33.773113, 33.471550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658791, 33.964588, 33.664387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050203, -0.669459, 0.741151,
		0.677522, -0.568049, -0.467208,
		0.733787, 0.478691, 0.482091,
		30.878927, 34.108196, 33.809013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668886, 33.188343, 33.780121>,  <30.365276, 33.773113, 33.471550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668886, 33.188343, 33.780121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816936, 33.518715, 33.950226>,  <30.905767, 33.716938, 34.052288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816936, 33.518715, 33.950226>,  <30.668886, 33.188343, 33.780121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816936, 33.518715, 33.950226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073354, -0.430363, 0.899670,
		0.926080, -0.364187, -0.098705,
		0.370127, 0.825927, 0.425266,
		30.927975, 33.766495, 34.077805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303703, 33.052143, 34.140446>,  <30.668886, 33.188343, 33.780121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303703, 33.052143, 34.140446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114496, 33.358139, 34.315281>,  <31.000971, 33.541737, 34.420181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114496, 33.358139, 34.315281>,  <31.303703, 33.052143, 34.140446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114496, 33.358139, 34.315281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241151, -0.364738, 0.899340,
		0.847407, 0.530809, -0.011950,
		-0.473019, 0.764989, 0.437086,
		30.972589, 33.587635, 34.446407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672836, 33.156933, 34.700336>,  <31.303703, 33.052143, 34.140446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672836, 33.156933, 34.700336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345972, 33.374443, 34.776817>,  <31.149855, 33.504951, 34.822704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345972, 33.374443, 34.776817>,  <31.672836, 33.156933, 34.700336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345972, 33.374443, 34.776817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143831, -0.128851, 0.981178,
		0.558178, 0.829279, 0.027080,
		-0.817160, 0.543777, 0.191197,
		31.100824, 33.537575, 34.834175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877434, 33.656212, 35.253326>,  <31.672836, 33.156933, 34.700336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877434, 33.656212, 35.253326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486488, 33.571667, 35.249729>,  <31.251921, 33.520939, 35.247570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486488, 33.571667, 35.249729>,  <31.877434, 33.656212, 35.253326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486488, 33.571667, 35.249729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064394, -0.337738, 0.939035,
		-0.201517, 0.917201, 0.343704,
		-0.977366, -0.211364, -0.008998,
		31.193279, 33.508259, 35.247028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639162, 33.768478, 35.898941>,  <31.877434, 33.656212, 35.253326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639162, 33.768478, 35.898941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325848, 33.553558, 35.773869>,  <31.137859, 33.424606, 35.698826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325848, 33.553558, 35.773869>,  <31.639162, 33.768478, 35.898941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325848, 33.553558, 35.773869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117346, -0.366140, 0.923131,
		-0.610484, 0.759769, 0.223743,
		-0.783287, -0.537302, -0.312679,
		31.090862, 33.392368, 35.680065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092573, 33.778149, 36.370441>,  <31.639162, 33.768478, 35.898941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092573, 33.778149, 36.370441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998266, 33.452953, 36.157478>,  <30.941683, 33.257835, 36.029701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998266, 33.452953, 36.157478>,  <31.092573, 33.778149, 36.370441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998266, 33.452953, 36.157478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304749, -0.458366, 0.834882,
		-0.922791, 0.359087, -0.139692,
		-0.235766, -0.812993, -0.532408,
		30.927536, 33.209057, 35.997757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372643, 33.685417, 36.526527>,  <31.092573, 33.778149, 36.370441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372643, 33.685417, 36.526527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537529, 33.351326, 36.380939>,  <30.636461, 33.150871, 36.293587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537529, 33.351326, 36.380939>,  <30.372643, 33.685417, 36.526527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537529, 33.351326, 36.380939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405787, -0.525991, 0.747443,
		-0.815729, -0.160414, -0.555746,
		0.412217, -0.835225, -0.363972,
		30.661194, 33.100758, 36.271748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902994, 33.139786, 36.793991>,  <30.372643, 33.685417, 36.526527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902994, 33.139786, 36.793991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227470, 32.930733, 36.689049>,  <30.422155, 32.805302, 36.626083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227470, 32.930733, 36.689049>,  <29.902994, 33.139786, 36.793991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227470, 32.930733, 36.689049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102362, -0.568605, 0.816217,
		-0.575776, -0.635238, -0.514737,
		0.811174, -0.522648, -0.262365,
		30.470827, 32.773945, 36.610344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756929, 32.439037, 36.792179>,  <29.902994, 33.139786, 36.793991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756929, 32.439037, 36.792179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153540, 32.443893, 36.843918>,  <30.391506, 32.446808, 36.874962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153540, 32.443893, 36.843918>,  <29.756929, 32.439037, 36.792179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153540, 32.443893, 36.843918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092530, -0.632867, 0.768711,
		0.091189, -0.774165, -0.626381,
		0.991526, 0.012139, 0.129344,
		30.450996, 32.447536, 36.882721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944063, 31.762377, 36.991219>,  <29.756929, 32.439037, 36.792179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944063, 31.762377, 36.991219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274263, 31.943851, 37.125515>,  <30.472383, 32.052734, 37.206093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274263, 31.943851, 37.125515>,  <29.944063, 31.762377, 36.991219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274263, 31.943851, 37.125515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095588, -0.698643, 0.709056,
		0.556250, -0.553233, -0.620096,
		0.825499, 0.453686, 0.335738,
		30.521914, 32.079956, 37.226238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435825, 31.144234, 37.209824>,  <29.944063, 31.762377, 36.991219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435825, 31.144234, 37.209824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522217, 31.489079, 37.393177>,  <30.574051, 31.695986, 37.503189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522217, 31.489079, 37.393177>,  <30.435825, 31.144234, 37.209824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522217, 31.489079, 37.393177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227246, -0.500954, 0.835107,
		0.949586, -0.076197, -0.304106,
		0.215976, 0.862113, 0.458383,
		30.587009, 31.747713, 37.530693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781771, 30.893147, 37.549976>,  <30.435825, 31.144234, 37.209824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781771, 30.893147, 37.549976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474974, 30.756672, 37.332607>,  <29.290895, 30.674788, 37.202187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474974, 30.756672, 37.332607>,  <29.781771, 30.893147, 37.549976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474974, 30.756672, 37.332607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551649, 0.081930, -0.830043,
		0.327724, -0.936418, 0.125377,
		-0.766994, -0.341189, -0.543424,
		29.244875, 30.654316, 37.169579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929876, 30.285255, 37.148056>,  <29.781771, 30.893147, 37.549976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929876, 30.285255, 37.148056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622545, 30.442158, 36.945747>,  <29.438147, 30.536299, 36.824364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622545, 30.442158, 36.945747>,  <29.929876, 30.285255, 37.148056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622545, 30.442158, 36.945747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583877, 0.105816, -0.804916,
		-0.262216, -0.913749, -0.310332,
		-0.768329, 0.392258, -0.505770,
		29.392046, 30.559835, 36.794018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986164, 30.067736, 36.497231>,  <29.929876, 30.285255, 37.148056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986164, 30.067736, 36.497231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737814, 30.378151, 36.452911>,  <29.588804, 30.564400, 36.426319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737814, 30.378151, 36.452911>,  <29.986164, 30.067736, 36.497231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737814, 30.378151, 36.452911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427785, 0.216974, -0.877452,
		-0.656897, -0.592186, -0.466692,
		-0.620875, 0.776040, -0.110799,
		29.551552, 30.610964, 36.419670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594505, 30.006386, 35.799015>,  <29.986164, 30.067736, 36.497231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594505, 30.006386, 35.799015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585783, 30.393440, 35.899574>,  <29.580549, 30.625673, 35.959911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585783, 30.393440, 35.899574>,  <29.594505, 30.006386, 35.799015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585783, 30.393440, 35.899574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118807, 0.252183, -0.960359,
		-0.992678, 0.008927, -0.120461,
		-0.021805, 0.967638, 0.251397,
		29.579241, 30.683731, 35.974995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184229, 30.233294, 35.212181>,  <29.594505, 30.006386, 35.799015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184229, 30.233294, 35.212181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378801, 30.551113, 35.357552>,  <29.495544, 30.741804, 35.444775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378801, 30.551113, 35.357552>,  <29.184229, 30.233294, 35.212181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378801, 30.551113, 35.357552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110967, 0.356403, -0.927720,
		-0.866645, 0.491598, 0.085196,
		0.486429, 0.794549, 0.363425,
		29.524731, 30.789478, 35.466579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927366, 30.807508, 34.859955>,  <29.184229, 30.233294, 35.212181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927366, 30.807508, 34.859955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283703, 30.904167, 35.013844>,  <29.497505, 30.962162, 35.106178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283703, 30.904167, 35.013844>,  <28.927366, 30.807508, 34.859955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283703, 30.904167, 35.013844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293098, 0.341332, -0.893077,
		-0.347128, 0.908349, 0.233246,
		0.890840, 0.241648, 0.384721,
		29.550955, 30.976662, 35.129261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025982, 31.431334, 34.540497>,  <28.927366, 30.807508, 34.859955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025982, 31.431334, 34.540497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391006, 31.363857, 34.689510>,  <29.610022, 31.323372, 34.778919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391006, 31.363857, 34.689510>,  <29.025982, 31.431334, 34.540497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391006, 31.363857, 34.689510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408911, 0.387954, -0.826005,
		-0.005187, 0.906110, 0.423010,
		0.912560, -0.168689, 0.372530,
		29.664774, 31.313250, 34.801270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337931, 32.058037, 34.513496>,  <29.025982, 31.431334, 34.540497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337931, 32.058037, 34.513496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608976, 31.764015, 34.504166>,  <29.771603, 31.587603, 34.498566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608976, 31.764015, 34.504166>,  <29.337931, 32.058037, 34.513496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608976, 31.764015, 34.504166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293331, 0.299228, -0.907976,
		0.674388, 0.608412, 0.418373,
		0.677612, -0.735050, -0.023329,
		29.812260, 31.543501, 34.497166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881355, 32.378067, 34.152534>,  <29.337931, 32.058037, 34.513496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881355, 32.378067, 34.152534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972731, 31.990261, 34.117096>,  <30.027555, 31.757576, 34.095833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972731, 31.990261, 34.117096>,  <29.881355, 32.378067, 34.152534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972731, 31.990261, 34.117096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341767, 0.165073, -0.925174,
		0.911599, 0.181064, 0.369058,
		0.228438, -0.969519, -0.088599,
		30.041262, 31.699406, 34.090515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670815, 32.264832, 33.906628>,  <29.881355, 32.378067, 34.152534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670815, 32.264832, 33.906628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502209, 31.916485, 33.805504>,  <30.401045, 31.707476, 33.744831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502209, 31.916485, 33.805504>,  <30.670815, 32.264832, 33.906628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502209, 31.916485, 33.805504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429256, 0.053951, -0.901570,
		0.798788, -0.488545, 0.351084,
		-0.421517, -0.870869, -0.252806,
		30.375753, 31.655224, 33.729660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253004, 31.819412, 33.593578>,  <30.670815, 32.264832, 33.906628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253004, 31.819412, 33.593578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891785, 31.698265, 33.471745>,  <30.675053, 31.625576, 33.398643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.891785, 31.698265, 33.471745>,  <31.253004, 31.819412, 33.593578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891785, 31.698265, 33.471745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340142, -0.071190, -0.937676,
		0.262309, -0.950370, 0.167306,
		-0.903049, -0.302869, -0.304587,
		30.620871, 31.607405, 33.380367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377771, 31.333067, 33.044140>,  <31.253004, 31.819412, 33.593578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377771, 31.333067, 33.044140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995388, 31.436302, 32.988235>,  <30.765959, 31.498243, 32.954693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995388, 31.436302, 32.988235>,  <31.377771, 31.333067, 33.044140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995388, 31.436302, 32.988235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124304, -0.075344, -0.989380,
		-0.265877, -0.963179, 0.039945,
		-0.955959, 0.258088, -0.139760,
		30.708601, 31.513729, 32.946308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136959, 30.863382, 32.608303>,  <31.377771, 31.333067, 33.044140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136959, 30.863382, 32.608303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922821, 31.199055, 32.569973>,  <30.794338, 31.400457, 32.546974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922821, 31.199055, 32.569973>,  <31.136959, 30.863382, 32.608303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922821, 31.199055, 32.569973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021113, -0.100117, -0.994751,
		-0.844369, -0.534559, 0.035880,
		-0.535346, 0.839180, -0.095822,
		30.762217, 31.450809, 32.541225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719568, 30.694710, 32.077328>,  <31.136959, 30.863382, 32.608303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719568, 30.694710, 32.077328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707979, 31.092403, 32.118629>,  <30.701027, 31.331018, 32.143410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707979, 31.092403, 32.118629>,  <30.719568, 30.694710, 32.077328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707979, 31.092403, 32.118629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025254, 0.102534, -0.994409,
		-0.999261, -0.031417, 0.022137,
		-0.028971, 0.994233, 0.103252,
		30.699287, 31.390673, 32.149605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209669, 30.930317, 31.643734>,  <30.719568, 30.694710, 32.077328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209669, 30.930317, 31.643734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407263, 31.263794, 31.742474>,  <30.525820, 31.463881, 31.801718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407263, 31.263794, 31.742474>,  <30.209669, 30.930317, 31.643734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407263, 31.263794, 31.742474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077081, 0.324778, -0.942644,
		-0.866047, 0.446626, 0.224698,
		0.493986, 0.833693, 0.246847,
		30.555458, 31.513903, 31.816528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865381, 31.444843, 31.212593>,  <30.209669, 30.930317, 31.643734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865381, 31.444843, 31.212593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206156, 31.627525, 31.315063>,  <30.410620, 31.737135, 31.376545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206156, 31.627525, 31.315063>,  <29.865381, 31.444843, 31.212593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206156, 31.627525, 31.315063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001504, 0.487080, -0.873356,
		-0.523643, 0.744429, 0.414274,
		0.851937, 0.456704, 0.256176,
		30.461737, 31.764536, 31.391916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747692, 32.197086, 31.086376>,  <29.865381, 31.444843, 31.212593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747692, 32.197086, 31.086376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147385, 32.186001, 31.097488>,  <30.387199, 32.179348, 31.104155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147385, 32.186001, 31.097488>,  <29.747692, 32.197086, 31.086376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147385, 32.186001, 31.097488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039224, 0.724865, -0.687773,
		-0.001075, 0.688333, 0.725394,
		0.999230, -0.027713, 0.027778,
		30.447153, 32.177689, 31.105822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059196, 32.818031, 31.240213>,  <29.747692, 32.197086, 31.086376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059196, 32.818031, 31.240213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368614, 32.645058, 31.054901>,  <30.554266, 32.541275, 30.943714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368614, 32.645058, 31.054901>,  <30.059196, 32.818031, 31.240213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368614, 32.645058, 31.054901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085786, 0.795750, -0.599519,
		0.627907, 0.424013, 0.652646,
		0.773546, -0.432430, -0.463282,
		30.600677, 32.515327, 30.915916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513124, 33.367958, 31.134270>,  <30.059196, 32.818031, 31.240213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513124, 33.367958, 31.134270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650118, 33.082169, 30.890224>,  <30.732315, 32.910694, 30.743797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650118, 33.082169, 30.890224>,  <30.513124, 33.367958, 31.134270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650118, 33.082169, 30.890224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063926, 0.665602, -0.743564,
		0.937346, 0.215658, 0.273632,
		0.342485, -0.714469, -0.610113,
		30.752863, 32.867828, 30.707191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087849, 33.662235, 30.809336>,  <30.513124, 33.367958, 31.134270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087849, 33.662235, 30.809336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003412, 33.375843, 30.543159>,  <30.952749, 33.204006, 30.383453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003412, 33.375843, 30.543159>,  <31.087849, 33.662235, 30.809336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003412, 33.375843, 30.543159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201595, 0.634256, -0.746377,
		0.956452, -0.291704, 0.010451,
		-0.211092, -0.715980, -0.665442,
		30.940084, 33.161049, 30.343527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564871, 33.727318, 30.303875>,  <31.087849, 33.662235, 30.809336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564871, 33.727318, 30.303875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243523, 33.546627, 30.148678>,  <31.050714, 33.438213, 30.055559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243523, 33.546627, 30.148678>,  <31.564871, 33.727318, 30.303875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243523, 33.546627, 30.148678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042534, 0.606364, -0.794049,
		0.593944, -0.654426, -0.467928,
		-0.803381, -0.451718, -0.387982,
		31.002512, 33.411106, 30.032280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634214, 33.822552, 29.569315>,  <31.564871, 33.727318, 30.303875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634214, 33.822552, 29.569315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252022, 33.719719, 29.627224>,  <31.022705, 33.658020, 29.661970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252022, 33.719719, 29.627224>,  <31.634214, 33.822552, 29.569315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252022, 33.719719, 29.627224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271953, 0.577080, -0.770078,
		0.114430, -0.775168, -0.621305,
		-0.955483, -0.257086, 0.144774,
		30.965378, 33.642593, 29.670656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338266, 33.644466, 28.906260>,  <31.634214, 33.822552, 29.569315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338266, 33.644466, 28.906260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011900, 33.715740, 29.126270>,  <30.816080, 33.758503, 29.258278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011900, 33.715740, 29.126270>,  <31.338266, 33.644466, 28.906260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011900, 33.715740, 29.126270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425668, 0.458662, -0.780023,
		-0.391264, -0.870563, -0.298384,
		-0.815916, 0.178182, 0.550028,
		30.767124, 33.769196, 29.291279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830826, 33.500252, 28.381264>,  <31.338266, 33.644466, 28.906260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830826, 33.500252, 28.381264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706646, 33.741817, 28.674904>,  <30.632137, 33.886757, 28.851088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706646, 33.741817, 28.674904>,  <30.830826, 33.500252, 28.381264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706646, 33.741817, 28.674904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592375, 0.481067, -0.646271,
		-0.743446, -0.635498, 0.208398,
		-0.310450, 0.603918, 0.734101,
		30.613510, 33.922993, 28.895134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125872, 33.691547, 28.156773>,  <30.830826, 33.500252, 28.381264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125872, 33.691547, 28.156773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151024, 33.952011, 28.459305>,  <30.166115, 34.108292, 28.640823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151024, 33.952011, 28.459305>,  <30.125872, 33.691547, 28.156773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151024, 33.952011, 28.459305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579542, 0.640791, -0.503506,
		-0.812513, -0.406663, 0.417671,
		0.062883, 0.651163, 0.756329,
		30.169889, 34.147358, 28.686203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469780, 33.880157, 28.425587>,  <30.125872, 33.691547, 28.156773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469780, 33.880157, 28.425587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726904, 34.169960, 28.525093>,  <29.881178, 34.343842, 28.584797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726904, 34.169960, 28.525093>,  <29.469780, 33.880157, 28.425587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726904, 34.169960, 28.525093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560354, 0.666159, -0.492174,
		-0.522301, 0.176978, 0.834194,
		0.642810, 0.724508, 0.248765,
		29.919746, 34.387314, 28.599722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076126, 34.409798, 28.740723>,  <29.469780, 33.880157, 28.425587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076126, 34.409798, 28.740723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412815, 34.578968, 28.606480>,  <29.614828, 34.680470, 28.525934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.412815, 34.578968, 28.606480>,  <29.076126, 34.409798, 28.740723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412815, 34.578968, 28.606480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539884, 0.665229, -0.515748,
		0.005133, 0.615307, 0.788271,
		0.841724, 0.422928, -0.335609,
		29.665333, 34.705845, 28.505796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921238, 35.170841, 28.676807>,  <29.076126, 34.409798, 28.740723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921238, 35.170841, 28.676807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262489, 35.123669, 28.473530>,  <29.467241, 35.095367, 28.351562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262489, 35.123669, 28.473530>,  <28.921238, 35.170841, 28.676807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262489, 35.123669, 28.473530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330245, 0.632022, -0.701061,
		0.403866, 0.765925, 0.500251,
		0.853130, -0.117930, -0.508195,
		29.518429, 35.088291, 28.321072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205130, 35.817505, 28.547163>,  <28.921238, 35.170841, 28.676807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205130, 35.817505, 28.547163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332479, 35.576572, 28.254360>,  <29.408890, 35.432014, 28.078678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332479, 35.576572, 28.254360>,  <29.205130, 35.817505, 28.547163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332479, 35.576572, 28.254360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385213, 0.623356, -0.680469,
		0.866169, 0.498622, -0.033565,
		0.318374, -0.602332, -0.732007,
		29.427992, 35.395874, 28.034758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441286, 36.278976, 27.968815>,  <29.205130, 35.817505, 28.547163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441286, 36.278976, 27.968815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374701, 35.922211, 27.800632>,  <29.334749, 35.708153, 27.699724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374701, 35.922211, 27.800632>,  <29.441286, 36.278976, 27.968815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374701, 35.922211, 27.800632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337710, 0.452185, -0.825518,
		0.926414, 0.004574, -0.376480,
		-0.166463, -0.891912, -0.420455,
		29.324762, 35.654636, 27.674496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602934, 36.390453, 27.316902>,  <29.441286, 36.278976, 27.968815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602934, 36.390453, 27.316902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393131, 36.052521, 27.274670>,  <29.267250, 35.849762, 27.249331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393131, 36.052521, 27.274670>,  <29.602934, 36.390453, 27.316902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393131, 36.052521, 27.274670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358123, 0.331421, -0.872874,
		0.772427, -0.420015, -0.476387,
		-0.524505, -0.844836, -0.105581,
		29.235781, 35.799068, 27.242996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710892, 36.085545, 26.598352>,  <29.602934, 36.390453, 27.316902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710892, 36.085545, 26.598352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364061, 35.971706, 26.761906>,  <29.155964, 35.903404, 26.860039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364061, 35.971706, 26.761906>,  <29.710892, 36.085545, 26.598352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364061, 35.971706, 26.761906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474029, 0.218885, -0.852869,
		0.153215, -0.933328, -0.324692,
		-0.867077, -0.284586, 0.408887,
		29.103939, 35.886330, 26.884571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304840, 35.779263, 26.027180>,  <29.710892, 36.085545, 26.598352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304840, 35.779263, 26.027180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041298, 35.802525, 26.327187>,  <28.883173, 35.816483, 26.507191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041298, 35.802525, 26.327187>,  <29.304840, 35.779263, 26.027180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041298, 35.802525, 26.327187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737802, 0.144643, -0.659338,
		-0.146828, -0.987774, -0.052394,
		-0.658856, 0.058153, 0.750019,
		28.843641, 35.819969, 26.552193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765944, 35.373890, 25.801664>,  <29.304840, 35.779263, 26.027180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765944, 35.373890, 25.801664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608706, 35.611439, 26.082462>,  <28.514362, 35.753967, 26.250940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608706, 35.611439, 26.082462>,  <28.765944, 35.373890, 25.801664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608706, 35.611439, 26.082462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724866, 0.269572, -0.633956,
		-0.565724, -0.758058, 0.324507,
		-0.393097, 0.593868, 0.701994,
		28.490776, 35.789600, 26.293060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040462, 35.223030, 25.884483>,  <28.765944, 35.373890, 25.801664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040462, 35.223030, 25.884483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.065197, 35.595531, 26.028114>,  <28.080038, 35.819035, 26.114292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.065197, 35.595531, 26.028114>,  <28.040462, 35.223030, 25.884483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065197, 35.595531, 26.028114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699532, 0.297055, -0.649933,
		-0.711921, -0.210996, 0.669813,
		0.061838, 0.931256, 0.359078,
		28.083748, 35.874908, 26.135838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358686, 35.372913, 25.984264>,  <28.040462, 35.223030, 25.884483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358686, 35.372913, 25.984264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521196, 35.738369, 25.989895>,  <27.618702, 35.957642, 25.993273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521196, 35.738369, 25.989895>,  <27.358686, 35.372913, 25.984264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521196, 35.738369, 25.989895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723047, 0.330867, -0.606407,
		-0.558697, 0.236191, 0.795029,
		0.406277, 0.913642, 0.014078,
		27.643080, 36.012463, 25.994118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821287, 35.883057, 26.089434>,  <27.358686, 35.372913, 25.984264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821287, 35.883057, 26.089434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114267, 36.092018, 25.914795>,  <27.290054, 36.217396, 25.810011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114267, 36.092018, 25.914795>,  <26.821287, 35.883057, 26.089434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114267, 36.092018, 25.914795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667336, 0.423874, -0.612367,
		-0.134838, 0.739885, 0.659082,
		0.732449, 0.522399, -0.436598,
		27.334002, 36.248737, 25.783815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572783, 36.551723, 26.019110>,  <26.821287, 35.883057, 26.089434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572783, 36.551723, 26.019110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876230, 36.500401, 25.763599>,  <27.058298, 36.469608, 25.610292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876230, 36.500401, 25.763599>,  <26.572783, 36.551723, 26.019110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876230, 36.500401, 25.763599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580946, 0.310642, -0.752332,
		0.294960, 0.941827, 0.161120,
		0.758617, -0.128306, -0.638778,
		27.103815, 36.461910, 25.571966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525066, 37.058754, 25.552105>,  <26.572783, 36.551723, 26.019110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525066, 37.058754, 25.552105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759037, 36.825787, 25.326309>,  <26.899420, 36.686005, 25.190832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759037, 36.825787, 25.326309>,  <26.525066, 37.058754, 25.552105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759037, 36.825787, 25.326309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565822, 0.205633, -0.798474,
		0.581125, 0.786448, -0.209267,
		0.584926, -0.582421, -0.564488,
		26.934515, 36.651062, 25.156963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656115, 37.499054, 24.971836>,  <26.525066, 37.058754, 25.552105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656115, 37.499054, 24.971836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781889, 37.141193, 24.844883>,  <26.857353, 36.926476, 24.768711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781889, 37.141193, 24.844883>,  <26.656115, 37.499054, 24.971836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781889, 37.141193, 24.844883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434325, 0.161707, -0.886122,
		0.844092, 0.416475, -0.337723,
		0.314436, -0.894650, -0.317382,
		26.876219, 36.872799, 24.749668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866491, 37.642002, 24.312399>,  <26.656115, 37.499054, 24.971836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866491, 37.642002, 24.312399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796833, 37.249008, 24.285866>,  <26.755037, 37.013214, 24.269945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796833, 37.249008, 24.285866>,  <26.866491, 37.642002, 24.312399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796833, 37.249008, 24.285866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611547, 0.160703, -0.774716,
		0.771806, -0.094347, -0.628820,
		-0.174146, -0.982483, -0.066334,
		26.744589, 36.954262, 24.265966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317381, 38.254791, 24.400808>,  <26.866491, 37.642002, 24.312399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317381, 38.254791, 24.400808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520437, 38.228386, 24.057194>,  <26.642271, 38.212543, 23.851025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520437, 38.228386, 24.057194>,  <26.317381, 38.254791, 24.400808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520437, 38.228386, 24.057194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787820, -0.439187, -0.431803,
		-0.348773, 0.895967, -0.274957,
		0.507639, -0.066015, -0.859037,
		26.672729, 38.208580, 23.799482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879158, 38.605663, 23.890244>,  <26.317381, 38.254791, 24.400808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879158, 38.605663, 23.890244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117373, 38.319447, 23.744179>,  <26.260302, 38.147717, 23.656540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.117373, 38.319447, 23.744179>,  <25.879158, 38.605663, 23.890244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.117373, 38.319447, 23.744179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769975, -0.378811, -0.513460,
		0.229074, 0.586948, -0.776542,
		0.595537, -0.715538, -0.365160,
		26.296034, 38.104786, 23.634630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.869654, 38.560616, 23.148922>,  <25.879158, 38.605663, 23.890244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.869654, 38.560616, 23.148922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984514, 38.201500, 23.282501>,  <26.053431, 37.986031, 23.362650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984514, 38.201500, 23.282501>,  <25.869654, 38.560616, 23.148922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984514, 38.201500, 23.282501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784350, -0.420504, -0.456040,
		0.549853, -0.130980, -0.824928,
		0.287153, -0.897787, 0.333949,
		26.070660, 37.932163, 23.382687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.277422, 38.215794, 23.568901>,  <25.869654, 38.560616, 23.148922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.277422, 38.215794, 23.568901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.004585, 38.508255, 23.574100>,  <24.840883, 38.683731, 23.577221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.004585, 38.508255, 23.574100>,  <25.277422, 38.215794, 23.568901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.004585, 38.508255, 23.574100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696182, -0.654702, 0.294442,
		0.223793, 0.191786, 0.955581,
		-0.682091, 0.731152, 0.013000,
		24.799957, 38.727600, 23.578001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.962185, 38.262470, 24.251270>,  <25.277422, 38.215794, 23.568901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.962185, 38.262470, 24.251270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.717819, 38.378746, 23.956711>,  <24.571199, 38.448513, 23.779976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.717819, 38.378746, 23.956711>,  <24.962185, 38.262470, 24.251270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.717819, 38.378746, 23.956711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688602, -0.654079, 0.313063,
		-0.390658, 0.698340, 0.599756,
		-0.610912, 0.290693, -0.736399,
		24.534546, 38.465954, 23.735790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.290726, 38.563530, 24.510008>,  <24.962185, 38.262470, 24.251270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.290726, 38.563530, 24.510008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.266457, 38.392010, 24.149464>,  <24.251896, 38.289097, 23.933138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.266457, 38.392010, 24.149464>,  <24.290726, 38.563530, 24.510008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.266457, 38.392010, 24.149464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727005, -0.599775, 0.334267,
		-0.683946, 0.675573, -0.275351,
		-0.060673, -0.428802, -0.901359,
		24.248255, 38.263371, 23.879057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.918282, 38.743065, 23.884663>,  <24.290726, 38.563530, 24.510008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.918282, 38.743065, 23.884663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.526255, 38.820915, 23.868717>,  <23.291039, 38.867626, 23.859150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.526255, 38.820915, 23.868717>,  <23.918282, 38.743065, 23.884663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.526255, 38.820915, 23.868717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101795, 0.319633, -0.942058,
		-0.170610, -0.927337, -0.333074,
		-0.980066, 0.194630, -0.039865,
		23.232235, 38.879303, 23.856758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.660776, 38.533604, 23.220346>,  <23.918282, 38.743065, 23.884663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.660776, 38.533604, 23.220346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.390774, 38.794037, 23.359173>,  <23.228773, 38.950298, 23.442469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.390774, 38.794037, 23.359173>,  <23.660776, 38.533604, 23.220346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.390774, 38.794037, 23.359173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061497, 0.419114, -0.905849,
		-0.735245, -0.632797, -0.242865,
		-0.675006, 0.651085, 0.347067,
		23.188272, 38.989361, 23.463293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.196503, 38.560654, 22.700638>,  <23.660776, 38.533604, 23.220346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.196503, 38.560654, 22.700638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.146015, 38.908920, 22.890800>,  <23.115723, 39.117882, 23.004898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.146015, 38.908920, 22.890800>,  <23.196503, 38.560654, 22.700638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.146015, 38.908920, 22.890800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167924, 0.491075, -0.854779,
		-0.977686, -0.028055, -0.208188,
		-0.126217, 0.870665, 0.475407,
		23.108150, 39.170120, 23.033422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.646667, 38.882618, 22.393349>,  <23.196503, 38.560654, 22.700638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.646667, 38.882618, 22.393349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.876640, 39.156128, 22.573086>,  <23.014624, 39.320232, 22.680927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.876640, 39.156128, 22.573086>,  <22.646667, 38.882618, 22.393349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.876640, 39.156128, 22.573086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038315, 0.526080, -0.849571,
		-0.817303, 0.505663, 0.276262,
		0.574933, 0.683772, 0.449341,
		23.049120, 39.361259, 22.707888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.332060, 39.466324, 22.170353>,  <22.646667, 38.882618, 22.393349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.332060, 39.466324, 22.170353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.686056, 39.584995, 22.313892>,  <22.898455, 39.656197, 22.400015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.686056, 39.584995, 22.313892>,  <22.332060, 39.466324, 22.170353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.686056, 39.584995, 22.313892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167788, 0.515714, -0.840170,
		-0.434324, 0.803754, 0.406623,
		0.884992, 0.296679, 0.358847,
		22.951553, 39.674000, 22.421547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.305943, 40.167473, 21.957119>,  <22.332060, 39.466324, 22.170353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.305943, 40.167473, 21.957119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.683878, 40.095303, 22.066467>,  <22.910639, 40.052002, 22.132076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.683878, 40.095303, 22.066467>,  <22.305943, 40.167473, 21.957119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.683878, 40.095303, 22.066467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327393, 0.545367, -0.771614,
		-0.009870, 0.818549, 0.574352,
		0.944837, -0.180423, 0.273370,
		22.967329, 40.041176, 22.148478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.689409, 40.791855, 21.809832>,  <22.305943, 40.167473, 21.957119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.689409, 40.791855, 21.809832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.990200, 40.528500, 21.822853>,  <23.170675, 40.370487, 21.830666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.990200, 40.528500, 21.822853>,  <22.689409, 40.791855, 21.809832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.990200, 40.528500, 21.822853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402115, 0.419027, -0.814076,
		0.522335, 0.625257, 0.579846,
		0.751977, -0.658385, 0.032553,
		23.215794, 40.330986, 21.832619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.353672, 41.142849, 21.685808>,  <22.689409, 40.791855, 21.809832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.353672, 41.142849, 21.685808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.408846, 40.759869, 21.584412>,  <23.441950, 40.530079, 21.523573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.408846, 40.759869, 21.584412>,  <23.353672, 41.142849, 21.685808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.408846, 40.759869, 21.584412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320112, 0.285298, -0.903401,
		0.937285, 0.043463, 0.345844,
		0.137933, -0.957453, -0.253493,
		23.450226, 40.472633, 21.508364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.983971, 41.147480, 21.474138>,  <23.353672, 41.142849, 21.685808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.983971, 41.147480, 21.474138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.844292, 40.808056, 21.315140>,  <23.760485, 40.604401, 21.219742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.844292, 40.808056, 21.315140>,  <23.983971, 41.147480, 21.474138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.844292, 40.808056, 21.315140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307485, 0.296944, -0.904034,
		0.885164, -0.437909, 0.157229,
		-0.349196, -0.848563, -0.397495,
		23.739532, 40.553486, 21.195890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.478157, 41.001408, 21.098263>,  <23.983971, 41.147480, 21.474138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.478157, 41.001408, 21.098263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.156429, 40.813042, 20.953316>,  <23.963392, 40.700024, 20.866348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.156429, 40.813042, 20.953316>,  <24.478157, 41.001408, 21.098263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.156429, 40.813042, 20.953316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145335, 0.435409, -0.888424,
		0.576151, -0.767240, -0.281768,
		-0.804319, -0.470915, -0.362368,
		23.915134, 40.671768, 20.844606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.648027, 40.775879, 20.463322>,  <24.478157, 41.001408, 21.098263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.648027, 40.775879, 20.463322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.249313, 40.778088, 20.431351>,  <24.010084, 40.779411, 20.412169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.249313, 40.778088, 20.431351>,  <24.648027, 40.775879, 20.463322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.249313, 40.778088, 20.431351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076344, 0.368072, -0.926658,
		0.024303, -0.929781, -0.367310,
		-0.996785, 0.005522, -0.079928,
		23.950277, 40.779743, 20.407372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.554138, 40.780922, 19.703983>,  <24.648027, 40.775879, 20.463322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.554138, 40.780922, 19.703983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.186747, 40.868343, 19.835823>,  <23.966312, 40.920795, 19.914927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.186747, 40.868343, 19.835823>,  <24.554138, 40.780922, 19.703983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.186747, 40.868343, 19.835823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196282, 0.471604, -0.859688,
		-0.343327, -0.854298, -0.390259,
		-0.918477, 0.218553, 0.329597,
		23.911203, 40.933910, 19.934702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.151777, 40.613533, 19.178637>,  <24.554138, 40.780922, 19.703983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.151777, 40.613533, 19.178637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.891972, 40.852604, 19.366646>,  <23.736088, 40.996044, 19.479450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.891972, 40.852604, 19.366646>,  <24.151777, 40.613533, 19.178637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.891972, 40.852604, 19.366646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313794, 0.352365, -0.881687,
		-0.692580, -0.720157, -0.041319,
		-0.649512, 0.597673, 0.470022,
		23.697119, 41.031906, 19.507652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.468555, 40.446007, 18.923599>,  <24.151777, 40.613533, 19.178637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.468555, 40.446007, 18.923599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465364, 40.814388, 19.079433>,  <23.463449, 41.035419, 19.172934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465364, 40.814388, 19.079433>,  <23.468555, 40.446007, 18.923599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.465364, 40.814388, 19.079433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433633, 0.347873, -0.831232,
		-0.901054, -0.175569, 0.396581,
		-0.007978, 0.920956, 0.389585,
		23.462971, 41.090675, 19.196308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.784107, 40.754944, 18.854486>,  <23.468555, 40.446007, 18.923599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.784107, 40.754944, 18.854486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.041834, 41.059734, 18.880577>,  <23.196470, 41.242607, 18.896233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.041834, 41.059734, 18.880577>,  <22.784107, 40.754944, 18.854486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.041834, 41.059734, 18.880577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387468, 0.398791, -0.831164,
		-0.659336, 0.510259, 0.552187,
		0.644317, 0.761972, 0.065228,
		23.235128, 41.288326, 18.900146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.384380, 41.275978, 18.541868>,  <22.784107, 40.754944, 18.854486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.384380, 41.275978, 18.541868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.759346, 41.414494, 18.556488>,  <22.984325, 41.497604, 18.565260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.759346, 41.414494, 18.556488>,  <22.384380, 41.275978, 18.541868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.759346, 41.414494, 18.556488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100636, 0.369906, -0.923603,
		-0.333353, 0.862122, 0.381605,
		0.937416, 0.346289, 0.036549,
		23.040571, 41.518379, 18.567453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.387569, 42.013050, 18.292576>,  <22.384380, 41.275978, 18.541868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.387569, 42.013050, 18.292576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.752874, 41.860329, 18.235756>,  <22.972057, 41.768696, 18.201664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.752874, 41.860329, 18.235756>,  <22.387569, 42.013050, 18.292576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.752874, 41.860329, 18.235756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073349, 0.497112, -0.864580,
		0.400711, 0.779171, 0.481999,
		0.913264, -0.381801, -0.142047,
		23.026854, 41.745789, 18.193142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.637629, 42.501812, 17.944881>,  <22.387569, 42.013050, 18.292576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.637629, 42.501812, 17.944881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.884565, 42.194752, 17.876057>,  <23.032728, 42.010517, 17.834763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.884565, 42.194752, 17.876057>,  <22.637629, 42.501812, 17.944881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.884565, 42.194752, 17.876057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205633, 0.368569, -0.906571,
		0.759343, 0.524285, 0.385388,
		0.617344, -0.767647, -0.172060,
		23.069769, 41.964458, 17.824438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.241798, 42.788082, 17.729176>,  <22.637629, 42.501812, 17.944881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.241798, 42.788082, 17.729176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.244671, 42.411160, 17.595303>,  <23.246395, 42.185005, 17.514978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.244671, 42.411160, 17.595303>,  <23.241798, 42.788082, 17.729176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.244671, 42.411160, 17.595303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202557, 0.329122, -0.922307,
		0.979244, -0.061167, 0.193234,
		0.007182, -0.942304, -0.334680,
		23.246826, 42.128468, 17.494898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.789669, 42.718342, 17.316801>,  <23.241798, 42.788082, 17.729176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.789669, 42.718342, 17.316801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.562269, 42.412960, 17.194199>,  <23.425829, 42.229733, 17.120636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.562269, 42.412960, 17.194199>,  <23.789669, 42.718342, 17.316801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.562269, 42.412960, 17.194199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135107, 0.280870, -0.950188,
		0.811515, -0.581591, -0.056526,
		-0.568498, -0.763455, -0.306508,
		23.391720, 42.183922, 17.102247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.280989, 42.382641, 16.855440>,  <23.789669, 42.718342, 17.316801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.280989, 42.382641, 16.855440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.918879, 42.241783, 16.760387>,  <23.701612, 42.157269, 16.703356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.918879, 42.241783, 16.760387>,  <24.280989, 42.382641, 16.855440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.918879, 42.241783, 16.760387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129099, 0.304875, -0.943602,
		0.404737, -0.884897, -0.230533,
		-0.905274, -0.352149, -0.237634,
		23.647297, 42.136139, 16.689098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.260401, 41.996582, 16.179008>,  <24.280989, 42.382641, 16.855440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.260401, 41.996582, 16.179008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.896601, 42.159847, 16.210533>,  <23.678320, 42.257805, 16.229448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.896601, 42.159847, 16.210533>,  <24.260401, 41.996582, 16.179008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.896601, 42.159847, 16.210533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084915, 0.368005, -0.925938,
		-0.406935, -0.835450, -0.369360,
		-0.909502, 0.408161, 0.078812,
		23.623751, 42.282295, 16.234177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.918892, 41.815414, 15.620739>,  <24.260401, 41.996582, 16.179008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.918892, 41.815414, 15.620739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.765650, 42.155235, 15.765788>,  <23.673704, 42.359127, 15.852818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.765650, 42.155235, 15.765788>,  <23.918892, 41.815414, 15.620739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.765650, 42.155235, 15.765788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199471, 0.459402, -0.865541,
		-0.901910, -0.259262, -0.345460,
		-0.383106, 0.849549, 0.362624,
		23.650719, 42.410099, 15.874576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.564886, 42.159950, 15.017067>,  <23.918892, 41.815414, 15.620739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.564886, 42.159950, 15.017067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.660881, 42.421646, 15.303946>,  <23.718477, 42.578663, 15.476074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.660881, 42.421646, 15.303946>,  <23.564886, 42.159950, 15.017067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.660881, 42.421646, 15.303946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148195, 0.705439, -0.693104,
		-0.959398, 0.272622, 0.072342,
		0.239988, 0.654242, 0.717198,
		23.732878, 42.617920, 15.519106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.367617, 41.480000, 15.247171>,  <23.564886, 42.159950, 15.017067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.367617, 41.480000, 15.247171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.205997, 41.319580, 14.918319>,  <23.109026, 41.223328, 14.721007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.205997, 41.319580, 14.918319>,  <23.367617, 41.480000, 15.247171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.205997, 41.319580, 14.918319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637608, 0.767923, -0.061246,
		0.655896, 0.499451, -0.565994,
		-0.404050, -0.401053, -0.822131,
		23.084782, 41.199265, 14.671679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.401569, 40.776516, 14.832651>,  <23.367617, 41.480000, 15.247171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.401569, 40.776516, 14.832651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.449409, 40.440651, 14.620742>,  <23.478113, 40.239132, 14.493596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.449409, 40.440651, 14.620742>,  <23.401569, 40.776516, 14.832651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.449409, 40.440651, 14.620742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943703, -0.069615, 0.323387,
		-0.308416, -0.538627, 0.784067,
		0.119602, -0.839664, -0.529774,
		23.485291, 40.188751, 14.461809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.623178, 40.133503, 15.261595>,  <23.401569, 40.776516, 14.832651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.623178, 40.133503, 15.261595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.736513, 40.166309, 14.879392>,  <23.804514, 40.185993, 14.650070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.736513, 40.166309, 14.879392>,  <23.623178, 40.133503, 15.261595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.736513, 40.166309, 14.879392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957513, -0.080047, 0.277058,
		-0.053760, -0.993411, -0.101217,
		0.283334, 0.082022, -0.955507,
		23.821514, 40.190914, 14.592739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.018209, 39.523598, 14.959194>,  <23.623178, 40.133503, 15.261595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.018209, 39.523598, 14.959194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.128519, 39.889076, 14.839786>,  <24.194704, 40.108364, 14.768141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.128519, 39.889076, 14.839786>,  <24.018209, 39.523598, 14.959194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.128519, 39.889076, 14.839786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946909, -0.204837, 0.247799,
		0.165264, -0.351009, -0.921673,
		0.275772, 0.913693, -0.298521,
		24.211250, 40.163185, 14.750229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.359745, 38.905964, 14.853175>,  <24.018209, 39.523598, 14.959194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.359745, 38.905964, 14.853175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604956, 38.603771, 14.760703>,  <24.752083, 38.422455, 14.705220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604956, 38.603771, 14.760703>,  <24.359745, 38.905964, 14.853175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.604956, 38.603771, 14.760703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752959, -0.470051, -0.460549,
		0.239270, 0.456398, -0.857001,
		0.613028, -0.755482, -0.231180,
		24.788864, 38.377125, 14.691349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.421295, 39.116581, 15.548434>,  <24.359745, 38.905964, 14.853175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.421295, 39.116581, 15.548434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506081, 39.362415, 15.244498>,  <24.556952, 39.509914, 15.062137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506081, 39.362415, 15.244498>,  <24.421295, 39.116581, 15.548434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.506081, 39.362415, 15.244498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976132, -0.095515, 0.195045,
		0.047295, -0.783048, -0.620160,
		0.211964, 0.614583, -0.759841,
		24.569670, 39.546791, 15.016546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.743589, 38.406761, 15.805459>,  <24.421295, 39.116581, 15.548434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.743589, 38.406761, 15.805459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990921, 38.599720, 16.053638>,  <25.139320, 38.715496, 16.202547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990921, 38.599720, 16.053638>,  <24.743589, 38.406761, 15.805459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.990921, 38.599720, 16.053638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682944, -0.060860, 0.727931,
		0.388915, -0.873834, 0.291821,
		0.618331, 0.482401, 0.620449,
		25.176420, 38.744442, 16.239773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.918985, 38.060722, 16.343718>,  <24.743589, 38.406761, 15.805459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.918985, 38.060722, 16.343718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.936663, 38.442478, 16.461823>,  <24.947269, 38.671532, 16.532686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.936663, 38.442478, 16.461823>,  <24.918985, 38.060722, 16.343718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.936663, 38.442478, 16.461823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666336, -0.192046, 0.720496,
		0.744341, -0.228587, 0.627459,
		0.044195, 0.954393, 0.295264,
		24.949921, 38.728798, 16.550402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.879282, 37.952473, 17.015112>,  <24.918985, 38.060722, 16.343718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.879282, 37.952473, 17.015112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.806578, 38.345505, 16.999645>,  <24.762955, 38.581326, 16.990366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.806578, 38.345505, 16.999645>,  <24.879282, 37.952473, 17.015112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.806578, 38.345505, 16.999645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505437, -0.059621, 0.860801,
		0.843503, 0.176002, 0.507471,
		-0.181759, 0.982583, -0.038667,
		24.752050, 38.640278, 16.988045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.025532, 38.243019, 17.641443>,  <24.879282, 37.952473, 17.015112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.025532, 38.243019, 17.641443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783489, 38.515499, 17.476608>,  <24.638264, 38.678986, 17.377708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783489, 38.515499, 17.476608>,  <25.025532, 38.243019, 17.641443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.783489, 38.515499, 17.476608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507053, 0.069306, 0.859124,
		0.613792, 0.728813, 0.303465,
		-0.605109, 0.681197, -0.412086,
		24.601957, 38.719856, 17.352982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.017956, 38.804050, 18.080605>,  <25.025532, 38.243019, 17.641443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.017956, 38.804050, 18.080605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687651, 38.805717, 17.855003>,  <24.489468, 38.806717, 17.719643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687651, 38.805717, 17.855003>,  <25.017956, 38.804050, 18.080605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.687651, 38.805717, 17.855003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563065, -0.064149, 0.823919,
		-0.032750, 0.997932, 0.055316,
		-0.825764, 0.004164, -0.564001,
		24.439922, 38.806965, 17.685802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.528498, 39.312939, 18.363979>,  <25.017956, 38.804050, 18.080605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.528498, 39.312939, 18.363979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.276125, 39.092209, 18.145836>,  <24.124702, 38.959770, 18.014950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.276125, 39.092209, 18.145836>,  <24.528498, 39.312939, 18.363979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.276125, 39.092209, 18.145836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586463, -0.120971, 0.800891,
		-0.507926, 0.825139, -0.247301,
		-0.630930, -0.551826, -0.545358,
		24.086845, 38.926662, 17.982229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.841515, 39.435997, 18.794191>,  <24.528498, 39.312939, 18.363979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.841515, 39.435997, 18.794191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.745867, 39.152023, 18.529217>,  <23.688478, 38.981640, 18.370232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.745867, 39.152023, 18.529217>,  <23.841515, 39.435997, 18.794191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.745867, 39.152023, 18.529217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531724, -0.475105, 0.701103,
		-0.812460, 0.519880, -0.263880,
		-0.239119, -0.709930, -0.662436,
		23.674131, 38.939045, 18.330486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.048649, 39.389702, 18.644045>,  <23.841515, 39.435997, 18.794191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.048649, 39.389702, 18.644045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.212824, 39.033264, 18.566593>,  <23.311329, 38.819401, 18.520123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.212824, 39.033264, 18.566593>,  <23.048649, 39.389702, 18.644045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.212824, 39.033264, 18.566593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477775, -0.391000, 0.786670,
		-0.776707, -0.230367, -0.586224,
		0.410436, -0.891095, -0.193629,
		23.335955, 38.765934, 18.508505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.426659, 39.020519, 18.587833>,  <23.048649, 39.389702, 18.644045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.426659, 39.020519, 18.587833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.733353, 38.773617, 18.658382>,  <22.917370, 38.625473, 18.700712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.733353, 38.773617, 18.658382>,  <22.426659, 39.020519, 18.587833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.733353, 38.773617, 18.658382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589235, -0.567639, 0.574968,
		-0.254789, -0.544773, -0.798940,
		0.766736, -0.617259, 0.176372,
		22.963373, 38.588440, 18.711294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.211973, 38.363621, 18.566975>,  <22.426659, 39.020519, 18.587833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.211973, 38.363621, 18.566975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.551975, 38.291214, 18.764854>,  <22.755976, 38.247768, 18.883581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.551975, 38.291214, 18.764854>,  <22.211973, 38.363621, 18.566975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.551975, 38.291214, 18.764854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491627, -0.609888, 0.621562,
		0.189198, -0.771537, -0.607400,
		0.850004, -0.181016, 0.494698,
		22.806976, 38.236908, 18.913263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.136587, 37.681217, 18.718115>,  <22.211973, 38.363621, 18.566975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.136587, 37.681217, 18.718115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.419483, 37.791981, 18.978310>,  <22.589222, 37.858440, 19.134426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.419483, 37.791981, 18.978310>,  <22.136587, 37.681217, 18.718115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.419483, 37.791981, 18.978310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501538, -0.451957, 0.737696,
		0.498266, -0.847971, -0.180762,
		0.707242, 0.276910, 0.650485,
		22.631657, 37.875053, 19.173454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.200659, 37.141296, 19.255005>,  <22.136587, 37.681217, 18.718115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.200659, 37.141296, 19.255005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.380033, 37.451385, 19.432961>,  <22.487658, 37.637440, 19.539734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.380033, 37.451385, 19.432961>,  <22.200659, 37.141296, 19.255005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.380033, 37.451385, 19.432961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534663, -0.166217, 0.828557,
		0.716269, -0.609422, 0.339948,
		0.448436, 0.775227, 0.444891,
		22.514565, 37.683952, 19.566427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.532227, 36.877548, 19.880173>,  <22.200659, 37.141296, 19.255005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.532227, 36.877548, 19.880173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.467764, 37.271027, 19.912079>,  <22.429087, 37.507114, 19.931223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.467764, 37.271027, 19.912079>,  <22.532227, 36.877548, 19.880173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.467764, 37.271027, 19.912079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533976, -0.154878, 0.831193,
		0.829998, 0.091361, 0.550232,
		-0.161158, 0.983700, 0.079764,
		22.419416, 37.566135, 19.936008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.511967, 36.959557, 20.615248>,  <22.532227, 36.877548, 19.880173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.511967, 36.959557, 20.615248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.379921, 37.306820, 20.467014>,  <22.300694, 37.515179, 20.378075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.379921, 37.306820, 20.467014>,  <22.511967, 36.959557, 20.615248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.379921, 37.306820, 20.467014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447005, 0.202003, 0.871425,
		0.831390, 0.453323, 0.321385,
		-0.330116, 0.868155, -0.370581,
		22.280886, 37.567265, 20.355841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.558197, 37.423958, 21.173582>,  <22.511967, 36.959557, 20.615248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.558197, 37.423958, 21.173582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.300739, 37.601944, 20.924511>,  <22.146265, 37.708736, 20.775068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.300739, 37.601944, 20.924511>,  <22.558197, 37.423958, 21.173582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.300739, 37.601944, 20.924511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548809, 0.298719, 0.780754,
		0.533412, 0.844260, 0.051931,
		-0.643646, 0.444964, -0.622677,
		22.107645, 37.735432, 20.737707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.526510, 38.180565, 21.324797>,  <22.558197, 37.423958, 21.173582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.526510, 38.180565, 21.324797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.187716, 38.074062, 21.140743>,  <21.984438, 38.010162, 21.030312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.187716, 38.074062, 21.140743>,  <22.526510, 38.180565, 21.324797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.187716, 38.074062, 21.140743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531554, 0.437192, 0.725475,
		0.008003, 0.859053, -0.511825,
		-0.846987, -0.266256, -0.460131,
		21.933619, 37.994186, 21.002705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.042391, 38.741966, 21.278082>,  <22.526510, 38.180565, 21.324797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.042391, 38.741966, 21.278082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.813694, 38.415493, 21.244732>,  <21.676476, 38.219608, 21.224722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.813694, 38.415493, 21.244732>,  <22.042391, 38.741966, 21.278082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.813694, 38.415493, 21.244732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476053, 0.247268, 0.843939,
		-0.668196, 0.522205, -0.529921,
		-0.571741, -0.816187, -0.083374,
		21.642172, 38.170635, 21.219719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.505377, 39.015514, 21.508379>,  <22.042391, 38.741966, 21.278082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.505377, 39.015514, 21.508379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.425751, 38.623760, 21.522087>,  <21.377975, 38.388706, 21.530312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.425751, 38.623760, 21.522087>,  <21.505377, 39.015514, 21.508379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.425751, 38.623760, 21.522087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422656, 0.117351, 0.898660,
		-0.884158, 0.164406, -0.437304,
		-0.199063, -0.979387, 0.034269,
		21.366032, 38.329945, 21.532368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.747419, 38.935944, 21.741953>,  <21.505377, 39.015514, 21.508379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.747419, 38.935944, 21.741953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.932074, 38.595798, 21.842976>,  <21.042866, 38.391712, 21.903589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.932074, 38.595798, 21.842976>,  <20.747419, 38.935944, 21.741953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.932074, 38.595798, 21.842976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326004, 0.102153, 0.939833,
		-0.824995, -0.516193, -0.230063,
		0.461633, -0.850358, 0.252557,
		21.070564, 38.340691, 21.918743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.381567, 38.558838, 22.162836>,  <20.747419, 38.935944, 21.741953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.381567, 38.558838, 22.162836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.740957, 38.434711, 22.287060>,  <20.956591, 38.360233, 22.361593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.740957, 38.434711, 22.287060>,  <20.381567, 38.558838, 22.162836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.740957, 38.434711, 22.287060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226192, 0.279070, 0.933251,
		-0.376275, -0.908747, 0.180545,
		0.898473, -0.310321, 0.310559,
		21.010500, 38.341614, 22.380228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.183699, 38.263653, 22.774961>,  <20.381567, 38.558838, 22.162836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.183699, 38.263653, 22.774961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.580717, 38.288696, 22.816784>,  <20.818928, 38.303722, 22.841877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.580717, 38.288696, 22.816784>,  <20.183699, 38.263653, 22.774961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.580717, 38.288696, 22.816784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116347, 0.231452, 0.965864,
		0.036273, -0.970830, 0.237011,
		0.992546, 0.062610, 0.104558,
		20.878481, 38.307480, 22.848150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.370691, 37.784382, 23.271009>,  <20.183699, 38.263653, 22.774961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.370691, 37.784382, 23.271009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.622162, 38.094181, 23.242947>,  <20.773045, 38.280060, 23.226109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.622162, 38.094181, 23.242947>,  <20.370691, 37.784382, 23.271009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.622162, 38.094181, 23.242947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272106, 0.303586, 0.913123,
		0.728510, -0.554968, 0.401602,
		0.628675, 0.774498, -0.070155,
		20.810764, 38.326530, 23.221901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.832102, 37.566822, 22.965990>,  <20.370691, 37.784382, 23.271009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.832102, 37.566822, 22.965990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.503036, 37.526817, 22.742126>,  <19.305597, 37.502815, 22.607807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.503036, 37.526817, 22.742126>,  <19.832102, 37.566822, 22.965990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.503036, 37.526817, 22.742126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358075, -0.673471, 0.646699,
		-0.441593, 0.732417, 0.518229,
		-0.822666, -0.100013, -0.559660,
		19.256237, 37.496815, 22.574228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.239151, 37.671894, 23.274240>,  <19.832102, 37.566822, 22.965990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.239151, 37.671894, 23.274240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.142378, 37.397984, 22.999271>,  <19.084314, 37.233639, 22.834290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.142378, 37.397984, 22.999271>,  <19.239151, 37.671894, 23.274240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.142378, 37.397984, 22.999271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202924, -0.657096, 0.725979,
		-0.948836, 0.315135, 0.020017,
		-0.241935, -0.684773, -0.687425,
		19.069798, 37.192551, 22.793043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.480461, 37.506981, 23.190716>,  <19.239151, 37.671894, 23.274240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.480461, 37.506981, 23.190716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.706392, 37.190575, 23.096691>,  <18.841951, 37.000729, 23.040276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.706392, 37.190575, 23.096691>,  <18.480461, 37.506981, 23.190716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.706392, 37.190575, 23.096691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301575, -0.463017, 0.833468,
		-0.768128, -0.399879, -0.500077,
		0.564830, -0.791020, -0.235062,
		18.875841, 36.953270, 23.026173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.110519, 36.850903, 23.105062>,  <18.480461, 37.506981, 23.190716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.110519, 36.850903, 23.105062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.485117, 36.761471, 23.213131>,  <18.709875, 36.707813, 23.277971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.485117, 36.761471, 23.213131>,  <18.110519, 36.850903, 23.105062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.485117, 36.761471, 23.213131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348933, -0.517183, 0.781516,
		-0.035002, -0.826156, -0.562353,
		0.936494, -0.223578, 0.270171,
		18.766066, 36.694397, 23.294182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.155790, 37.018143, 23.852646>,  <18.110519, 36.850903, 23.105062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.155790, 37.018143, 23.852646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.024857, 37.396095, 23.849915>,  <17.946297, 37.622868, 23.848276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.024857, 37.396095, 23.849915>,  <18.155790, 37.018143, 23.852646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.024857, 37.396095, 23.849915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527762, -0.188817, -0.828139,
		-0.783785, -0.267474, 0.560481,
		-0.327335, 0.944884, -0.006830,
		17.926657, 37.679562, 23.847866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.798218, 28.870878, 30.251650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.178448, 28.852722, 30.128784>,  <29.406586, 28.841829, 30.055065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.178448, 28.852722, 30.128784>,  <28.798218, 28.870878, 30.251650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178448, 28.852722, 30.128784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194789, 0.683214, -0.703759,
		0.241803, 0.728807, 0.640603,
		0.950573, -0.045389, -0.307166,
		29.463619, 28.839106, 30.036634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038013, 29.595631, 29.973289>,  <28.798218, 28.870878, 30.251650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038013, 29.595631, 29.973289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.309376, 29.346100, 29.818058>,  <29.472193, 29.196381, 29.724920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.309376, 29.346100, 29.818058>,  <29.038013, 29.595631, 29.973289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309376, 29.346100, 29.818058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031801, 0.552660, -0.832800,
		0.733999, 0.552635, 0.394766,
		0.678406, -0.623828, -0.388077,
		29.512897, 29.158951, 29.701635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531492, 30.054609, 29.681494>,  <29.038013, 29.595631, 29.973289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531492, 30.054609, 29.681494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.571363, 29.688393, 29.525623>,  <29.595285, 29.468662, 29.432102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.571363, 29.688393, 29.525623>,  <29.531492, 30.054609, 29.681494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571363, 29.688393, 29.525623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305613, 0.400865, -0.863660,
		0.946924, -0.033003, 0.319759,
		0.099677, -0.915542, -0.389675,
		29.601267, 29.413731, 29.408720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046837, 30.102009, 29.276642>,  <29.531492, 30.054609, 29.681494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046837, 30.102009, 29.276642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.883902, 29.778229, 29.107471>,  <29.786140, 29.583961, 29.005968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.883902, 29.778229, 29.107471>,  <30.046837, 30.102009, 29.276642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883902, 29.778229, 29.107471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267470, 0.337049, -0.902694,
		0.873234, -0.480821, 0.079211,
		-0.407336, -0.809450, -0.422928,
		29.761702, 29.535395, 28.980593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689280, 29.702478, 28.876410>,  <30.046837, 30.102009, 29.276642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689280, 29.702478, 28.876410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.359165, 29.552879, 28.707165>,  <30.161097, 29.463120, 28.605618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.359165, 29.552879, 28.707165>,  <30.689280, 29.702478, 28.876410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359165, 29.552879, 28.707165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221706, 0.474514, -0.851870,
		0.519370, -0.796845, -0.308694,
		-0.825289, -0.373997, -0.423114,
		30.111580, 29.440680, 28.580231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957598, 29.427109, 28.304411>,  <30.689280, 29.702478, 28.876410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957598, 29.427109, 28.304411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.572905, 29.509552, 28.232204>,  <30.342089, 29.559017, 28.188881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.572905, 29.509552, 28.232204>,  <30.957598, 29.427109, 28.304411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572905, 29.509552, 28.232204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240225, 0.317508, -0.917322,
		-0.131753, -0.925585, -0.354871,
		-0.961735, 0.206109, -0.180516,
		30.284384, 29.571384, 28.178049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846722, 29.233912, 27.550911>,  <30.957598, 29.427109, 28.304411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846722, 29.233912, 27.550911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.540113, 29.474976, 27.639675>,  <30.356148, 29.619614, 27.692934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.540113, 29.474976, 27.639675>,  <30.846722, 29.233912, 27.550911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540113, 29.474976, 27.639675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125648, 0.479587, -0.868452,
		-0.629807, -0.637805, -0.443337,
		-0.766521, 0.602662, 0.221908,
		30.310158, 29.655775, 27.706247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359528, 29.069925, 26.996099>,  <30.846722, 29.233912, 27.550911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359528, 29.069925, 26.996099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.259418, 29.422729, 27.155811>,  <30.199354, 29.634411, 27.251638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.259418, 29.422729, 27.155811>,  <30.359528, 29.069925, 26.996099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259418, 29.422729, 27.155811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085934, 0.431014, -0.898244,
		-0.964355, -0.190492, -0.183664,
		-0.250270, 0.882009, 0.399281,
		30.184338, 29.687332, 27.275595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749435, 29.403498, 26.571693>,  <30.359528, 29.069925, 26.996099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749435, 29.403498, 26.571693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.938057, 29.701870, 26.759830>,  <30.051229, 29.880894, 26.872713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.938057, 29.701870, 26.759830>,  <29.749435, 29.403498, 26.571693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938057, 29.701870, 26.759830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048867, 0.510445, -0.858521,
		-0.880481, 0.427825, 0.204252,
		0.471556, 0.745930, 0.470344,
		30.079523, 29.925650, 26.900934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331686, 30.037214, 26.457672>,  <29.749435, 29.403498, 26.571693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331686, 30.037214, 26.457672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.684809, 30.190304, 26.566616>,  <29.896683, 30.282158, 26.631983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.684809, 30.190304, 26.566616>,  <29.331686, 30.037214, 26.457672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684809, 30.190304, 26.566616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133841, 0.760714, -0.635138,
		-0.450269, 0.524250, 0.722786,
		0.882805, 0.382722, 0.272360,
		29.949650, 30.305120, 26.648325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138622, 30.605743, 26.787178>,  <29.331686, 30.037214, 26.457672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138622, 30.605743, 26.787178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.508677, 30.646210, 26.640816>,  <29.730709, 30.670490, 26.552999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.508677, 30.646210, 26.640816>,  <29.138622, 30.605743, 26.787178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508677, 30.646210, 26.640816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349256, 0.604590, -0.715885,
		0.148798, 0.790086, 0.594662,
		0.925137, 0.101167, -0.365904,
		29.786219, 30.676559, 26.531044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279438, 31.455908, 26.659332>,  <29.138622, 30.605743, 26.787178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279438, 31.455908, 26.659332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.543568, 31.247185, 26.443298>,  <29.702045, 31.121952, 26.313679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.543568, 31.247185, 26.443298>,  <29.279438, 31.455908, 26.659332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543568, 31.247185, 26.443298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102288, 0.649975, -0.753040,
		0.743981, 0.552496, 0.375821,
		0.660326, -0.521805, -0.540083,
		29.741665, 31.090643, 26.281273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748453, 31.895592, 26.530514>,  <29.279438, 31.455908, 26.659332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748453, 31.895592, 26.530514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.789804, 31.611794, 26.251678>,  <29.814615, 31.441515, 26.084377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.789804, 31.611794, 26.251678>,  <29.748453, 31.895592, 26.530514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789804, 31.611794, 26.251678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052486, 0.695976, -0.716145,
		0.993257, 0.110620, 0.034709,
		0.103377, -0.709494, -0.697088,
		29.820818, 31.398945, 26.042553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304482, 32.088547, 26.200638>,  <29.748453, 31.895592, 26.530514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304482, 32.088547, 26.200638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.095362, 31.868233, 25.940388>,  <29.969891, 31.736044, 25.784237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.095362, 31.868233, 25.940388>,  <30.304482, 32.088547, 26.200638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095362, 31.868233, 25.940388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008523, 0.766575, -0.642098,
		0.852414, -0.330142, -0.405458,
		-0.522797, -0.550789, -0.650626,
		29.938522, 31.702995, 25.745199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510859, 32.258743, 25.574848>,  <30.304482, 32.088547, 26.200638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510859, 32.258743, 25.574848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.174706, 32.067146, 25.473400>,  <29.973015, 31.952188, 25.412531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.174706, 32.067146, 25.473400>,  <30.510859, 32.258743, 25.574848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174706, 32.067146, 25.473400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028222, 0.505980, -0.862084,
		0.541265, -0.717319, -0.438733,
		-0.840379, -0.478998, -0.253625,
		29.922590, 31.923449, 25.397314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648798, 31.958706, 24.902296>,  <30.510859, 32.258743, 25.574848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648798, 31.958706, 24.902296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.251514, 31.979057, 24.944149>,  <30.013144, 31.991268, 24.969261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.251514, 31.979057, 24.944149>,  <30.648798, 31.958706, 24.902296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251514, 31.979057, 24.944149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059123, 0.553837, -0.830523,
		-0.100205, -0.831069, -0.547068,
		-0.993209, 0.050878, 0.104632,
		29.953552, 31.994320, 24.975538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394127, 31.941143, 24.262829>,  <30.648798, 31.958706, 24.902296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394127, 31.941143, 24.262829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.084242, 32.095093, 24.463505>,  <29.898312, 32.187462, 24.583910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.084242, 32.095093, 24.463505>,  <30.394127, 31.941143, 24.262829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084242, 32.095093, 24.463505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273879, 0.510885, -0.814853,
		-0.569925, -0.768678, -0.290378,
		-0.774710, 0.384877, 0.501691,
		29.851830, 32.210556, 24.614012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788260, 31.931606, 23.688181>,  <30.394127, 31.941143, 24.262829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788260, 31.931606, 23.688181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.680508, 32.165138, 23.994534>,  <29.615856, 32.305256, 24.178345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.680508, 32.165138, 23.994534>,  <29.788260, 31.931606, 23.688181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680508, 32.165138, 23.994534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361501, 0.675822, -0.642325,
		-0.892609, -0.449898, 0.029002,
		-0.269381, 0.583830, 0.765883,
		29.599693, 32.340286, 24.224298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195374, 32.215191, 23.443953>,  <29.788260, 31.931606, 23.688181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195374, 32.215191, 23.443953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.309616, 32.470963, 23.729485>,  <29.378160, 32.624428, 23.900805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.309616, 32.470963, 23.729485>,  <29.195374, 32.215191, 23.443953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309616, 32.470963, 23.729485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304895, 0.766782, -0.564875,
		-0.908553, -0.056313, 0.413956,
		0.285605, 0.639433, 0.713832,
		29.395298, 32.662792, 23.943634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593306, 32.590599, 23.703915>,  <29.195374, 32.215191, 23.443953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593306, 32.590599, 23.703915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.909815, 32.824562, 23.775208>,  <29.099720, 32.964939, 23.817984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.909815, 32.824562, 23.775208>,  <28.593306, 32.590599, 23.703915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909815, 32.824562, 23.775208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354777, 0.676572, -0.645278,
		-0.498016, 0.447359, 0.742866,
		0.791273, 0.584911, 0.178231,
		29.147198, 33.000034, 23.828676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280743, 33.166630, 23.600458>,  <28.593306, 32.590599, 23.703915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280743, 33.166630, 23.600458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.670406, 33.256958, 23.598492>,  <28.904203, 33.311153, 23.597311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.670406, 33.256958, 23.598492>,  <28.280743, 33.166630, 23.600458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670406, 33.256958, 23.598492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154332, 0.649559, -0.744483,
		-0.164924, 0.726002, 0.667624,
		0.974157, 0.225819, -0.004918,
		28.962654, 33.324703, 23.597017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224125, 33.937225, 23.573366>,  <28.280743, 33.166630, 23.600458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224125, 33.937225, 23.573366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.584810, 33.808361, 23.458038>,  <28.801222, 33.731045, 23.388842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.584810, 33.808361, 23.458038>,  <28.224125, 33.937225, 23.573366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584810, 33.808361, 23.458038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062689, 0.562415, -0.824475,
		0.427767, 0.761514, 0.486941,
		0.901712, -0.322158, -0.288322,
		28.855324, 33.711712, 23.371542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466164, 33.781773, 23.421574>,  <28.224125, 33.937225, 23.573366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466164, 33.781773, 23.421574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.118816, 33.974201, 23.469753>,  <26.910408, 34.089657, 23.498661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.118816, 33.974201, 23.469753>,  <27.466164, 33.781773, 23.421574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118816, 33.974201, 23.469753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217919, -0.588331, 0.778703,
		0.445477, 0.649952, 0.615721,
		-0.868367, 0.481072, 0.120451,
		26.858307, 34.118523, 23.505888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398268, 34.053669, 24.124966>,  <27.466164, 33.781773, 23.421574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398268, 34.053669, 24.124966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.031321, 33.990761, 23.978703>,  <26.811153, 33.953014, 23.890945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.031321, 33.990761, 23.978703>,  <27.398268, 34.053669, 24.124966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031321, 33.990761, 23.978703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138049, -0.735906, 0.662861,
		-0.373337, 0.658566, 0.653384,
		-0.917367, -0.157272, -0.365655,
		26.756111, 33.943581, 23.869005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933374, 34.172104, 24.682302>,  <27.398268, 34.053669, 24.124966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933374, 34.172104, 24.682302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.701178, 33.962921, 24.432648>,  <26.561859, 33.837410, 24.282856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.701178, 33.962921, 24.432648>,  <26.933374, 34.172104, 24.682302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701178, 33.962921, 24.432648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256320, -0.610175, 0.749657,
		-0.772870, 0.595149, 0.220158,
		-0.580492, -0.522957, -0.624135,
		26.527029, 33.806034, 24.245407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211233, 34.029781, 25.058853>,  <26.933374, 34.172104, 24.682302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211233, 34.029781, 25.058853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.236721, 33.753574, 24.770653>,  <26.252014, 33.587849, 24.597733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.236721, 33.753574, 24.770653>,  <26.211233, 34.029781, 25.058853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236721, 33.753574, 24.770653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285586, -0.704393, 0.649824,
		-0.956232, 0.164358, -0.242087,
		0.063720, -0.690520, -0.720502,
		26.255836, 33.546417, 24.554502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.568502, 33.553120, 25.069944>,  <26.211233, 34.029781, 25.058853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.568502, 33.553120, 25.069944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.842686, 33.314316, 24.903225>,  <26.007196, 33.171032, 24.803194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.842686, 33.314316, 24.903225>,  <25.568502, 33.553120, 25.069944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842686, 33.314316, 24.903225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278244, -0.743773, 0.607768,
		-0.672847, -0.300630, -0.675942,
		0.685461, -0.597012, -0.416797,
		26.048325, 33.135212, 24.778185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291513, 32.867596, 25.089462>,  <25.568502, 33.553120, 25.069944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.291513, 32.867596, 25.089462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.666574, 32.759808, 25.001652>,  <25.891611, 32.695133, 24.948965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.666574, 32.759808, 25.001652>,  <25.291513, 32.867596, 25.089462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666574, 32.759808, 25.001652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087464, -0.794204, 0.601324,
		-0.336388, -0.544633, -0.768257,
		0.937653, -0.269473, -0.219525,
		25.947870, 32.678967, 24.935795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286119, 32.040142, 25.074438>,  <25.291513, 32.867596, 25.089462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286119, 32.040142, 25.074438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.657293, 32.173393, 25.141327>,  <25.879997, 32.253345, 25.181459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.657293, 32.173393, 25.141327>,  <25.286119, 32.040142, 25.074438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.657293, 32.173393, 25.141327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080794, -0.617716, 0.782240,
		0.363880, -0.712358, -0.600115,
		0.927935, 0.333127, 0.167220,
		25.935675, 32.273331, 25.191492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.563017, 31.459345, 25.206280>,  <25.286119, 32.040142, 25.074438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.563017, 31.459345, 25.206280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.794094, 31.746113, 25.362381>,  <25.932741, 31.918173, 25.456041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.794094, 31.746113, 25.362381>,  <25.563017, 31.459345, 25.206280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.794094, 31.746113, 25.362381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012779, -0.485989, 0.873872,
		0.816154, -0.499842, -0.289914,
		0.577693, 0.716919, 0.390254,
		25.967402, 31.961189, 25.479458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.091461, 31.124161, 25.533644>,  <25.563017, 31.459345, 25.206280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.091461, 31.124161, 25.533644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.145538, 31.490440, 25.685020>,  <26.177984, 31.710209, 25.775846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.145538, 31.490440, 25.685020>,  <26.091461, 31.124161, 25.533644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145538, 31.490440, 25.685020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282671, -0.401719, 0.871045,
		0.949642, -0.010783, -0.313150,
		0.135191, 0.915699, 0.378442,
		26.186096, 31.765150, 25.798553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830368, 31.206261, 25.849073>,  <26.091461, 31.124161, 25.533644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830368, 31.206261, 25.849073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.575600, 31.442802, 26.046913>,  <26.422739, 31.584728, 26.165617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.575600, 31.442802, 26.046913>,  <26.830368, 31.206261, 25.849073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575600, 31.442802, 26.046913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306415, -0.394526, 0.866291,
		0.707417, 0.703313, 0.070083,
		-0.636923, 0.591354, 0.494600,
		26.384523, 31.620209, 26.195293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201925, 31.371468, 26.420803>,  <26.830368, 31.206261, 25.849073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201925, 31.371468, 26.420803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.830021, 31.469395, 26.530792>,  <26.606878, 31.528151, 26.596785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.830021, 31.469395, 26.530792>,  <27.201925, 31.371468, 26.420803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.830021, 31.469395, 26.530792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209068, -0.263680, 0.941681,
		0.303043, 0.933026, 0.193976,
		-0.929761, 0.244816, 0.274972,
		26.551092, 31.542839, 26.613283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287464, 31.630695, 27.094114>,  <27.201925, 31.371468, 26.420803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287464, 31.630695, 27.094114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.892315, 31.568634, 27.096397>,  <26.655226, 31.531397, 27.097767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.892315, 31.568634, 27.096397>,  <27.287464, 31.630695, 27.094114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892315, 31.568634, 27.096397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056844, -0.327222, 0.943236,
		-0.144480, 0.932123, 0.332074,
		-0.987874, -0.155155, 0.005709,
		26.595953, 31.522087, 27.098110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944519, 32.000782, 27.603836>,  <27.287464, 31.630695, 27.094114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944519, 32.000782, 27.603836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.691450, 31.697239, 27.542053>,  <26.539608, 31.515112, 27.504984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.691450, 31.697239, 27.542053>,  <26.944519, 32.000782, 27.603836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691450, 31.697239, 27.542053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007150, -0.205167, 0.978701,
		-0.774386, 0.618093, 0.135229,
		-0.632673, -0.758859, -0.154459,
		26.501648, 31.469582, 27.495716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339741, 32.001148, 28.169983>,  <26.944519, 32.000782, 27.603836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339741, 32.001148, 28.169983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.358707, 31.620777, 28.047680>,  <26.370087, 31.392555, 27.974298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.358707, 31.620777, 28.047680>,  <26.339741, 32.001148, 28.169983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358707, 31.620777, 28.047680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022296, -0.307034, 0.951438,
		-0.998627, -0.038295, -0.035760,
		0.047415, -0.950928, -0.305758,
		26.372932, 31.335499, 27.955952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082214, 31.730116, 28.689604>,  <26.339741, 32.001148, 28.169983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082214, 31.730116, 28.689604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.198805, 31.393425, 28.507820>,  <26.268759, 31.191410, 28.398750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.198805, 31.393425, 28.507820>,  <26.082214, 31.730116, 28.689604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198805, 31.393425, 28.507820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110887, -0.501618, 0.857953,
		-0.950130, -0.199679, -0.239546,
		0.291475, -0.841729, -0.454460,
		26.286247, 31.140905, 28.371483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.664593, 31.154442, 29.026903>,  <26.082214, 31.730116, 28.689604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.664593, 31.154442, 29.026903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.985317, 30.991360, 28.852146>,  <26.177752, 30.893511, 28.747292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.985317, 30.991360, 28.852146>,  <25.664593, 31.154442, 29.026903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985317, 30.991360, 28.852146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192498, -0.515917, 0.834730,
		-0.565731, -0.753393, -0.335182,
		0.801806, -0.407711, -0.436897,
		26.225861, 30.869047, 28.721077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.654949, 30.390551, 29.115191>,  <25.664593, 31.154442, 29.026903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.654949, 30.390551, 29.115191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.038582, 30.482979, 29.049747>,  <26.268761, 30.538437, 29.010481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.038582, 30.482979, 29.049747>,  <25.654949, 30.390551, 29.115191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038582, 30.482979, 29.049747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275750, -0.631266, 0.724890,
		0.064221, -0.740344, -0.669154,
		0.959082, 0.231072, -0.163609,
		26.326307, 30.552299, 29.000664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956959, 29.776752, 28.987974>,  <25.654949, 30.390551, 29.115191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956959, 29.776752, 28.987974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.233454, 30.031536, 29.124489>,  <26.399351, 30.184406, 29.206398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.233454, 30.031536, 29.124489>,  <25.956959, 29.776752, 28.987974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233454, 30.031536, 29.124489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280275, -0.671628, 0.685830,
		0.666062, -0.378416, -0.642777,
		0.691236, 0.636960, 0.341285,
		26.440825, 30.222624, 29.226875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<26.553104, 29.300098, 29.258574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.671568, 29.655468, 29.398853>,  <26.742647, 29.868690, 29.483021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.671568, 29.655468, 29.398853>,  <26.553104, 29.300098, 29.258574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671568, 29.655468, 29.398853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546544, -0.458750, 0.700598,
		0.783312, -0.015816, -0.621427,
		0.296161, 0.888424, 0.350700,
		26.760416, 29.921995, 29.504063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275312, 29.211176, 29.336372>,  <26.553104, 29.300098, 29.258574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275312, 29.211176, 29.336372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.177164, 29.516190, 29.575817>,  <27.118275, 29.699198, 29.719484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.177164, 29.516190, 29.575817>,  <27.275312, 29.211176, 29.336372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.177164, 29.516190, 29.575817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486688, -0.437140, 0.756336,
		0.838409, 0.476918, -0.263855,
		-0.245369, 0.762534, 0.598612,
		27.103554, 29.744949, 29.755402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829046, 29.168728, 29.739855>,  <27.275312, 29.211176, 29.336372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829046, 29.168728, 29.739855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.568615, 29.389381, 29.948391>,  <27.412355, 29.521774, 30.073513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.568615, 29.389381, 29.948391>,  <27.829046, 29.168728, 29.739855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568615, 29.389381, 29.948391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471676, -0.244079, 0.847318,
		0.594657, 0.797575, -0.101277,
		-0.651080, 0.551633, 0.521340,
		27.373291, 29.554871, 30.104794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257999, 29.602341, 30.258036>,  <27.829046, 29.168728, 29.739855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257999, 29.602341, 30.258036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.883888, 29.552124, 30.390396>,  <27.659422, 29.521994, 30.469812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.883888, 29.552124, 30.390396>,  <28.257999, 29.602341, 30.258036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883888, 29.552124, 30.390396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352715, -0.253640, 0.900699,
		-0.029147, 0.959117, 0.281504,
		-0.935277, -0.125544, 0.330902,
		27.603306, 29.514462, 30.489666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214613, 29.979647, 30.905846>,  <28.257999, 29.602341, 30.258036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214613, 29.979647, 30.905846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.887838, 29.750011, 30.927887>,  <27.691774, 29.612230, 30.941113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.887838, 29.750011, 30.927887>,  <28.214613, 29.979647, 30.905846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887838, 29.750011, 30.927887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311551, -0.358892, 0.879848,
		-0.485335, 0.735948, 0.472050,
		-0.816937, -0.574089, 0.055103,
		27.642757, 29.577785, 30.944418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855053, 30.145285, 31.525579>,  <28.214613, 29.979647, 30.905846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855053, 30.145285, 31.525579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.754324, 29.775311, 31.411682>,  <27.693888, 29.553326, 31.343344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.754324, 29.775311, 31.411682>,  <27.855053, 30.145285, 31.525579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754324, 29.775311, 31.411682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251701, -0.346693, 0.903577,
		-0.934469, 0.155870, 0.320112,
		-0.251821, -0.924937, -0.284741,
		27.678778, 29.497829, 31.326260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610088, 29.803181, 32.178852>,  <27.855053, 30.145285, 31.525579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610088, 29.803181, 32.178852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.639631, 29.492092, 31.929150>,  <27.657358, 29.305439, 31.779329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.639631, 29.492092, 31.929150>,  <27.610088, 29.803181, 32.178852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639631, 29.492092, 31.929150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197003, -0.602249, 0.773619,
		-0.977617, -0.180119, 0.108732,
		0.073860, -0.777723, -0.624252,
		27.661789, 29.258776, 31.741875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179722, 29.306311, 32.463776>,  <27.610088, 29.803181, 32.178852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179722, 29.306311, 32.463776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.432444, 29.103981, 32.228840>,  <27.584076, 28.982584, 32.087879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.432444, 29.103981, 32.228840>,  <27.179722, 29.306311, 32.463776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432444, 29.103981, 32.228840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187939, -0.635156, 0.749170,
		-0.752001, -0.583711, -0.306229,
		0.631802, -0.505824, -0.587340,
		27.621984, 28.952234, 32.052639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907192, 28.657007, 32.460186>,  <27.179722, 29.306311, 32.463776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907192, 28.657007, 32.460186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.304842, 28.649239, 32.417583>,  <27.543432, 28.644577, 32.392021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.304842, 28.649239, 32.417583>,  <26.907192, 28.657007, 32.460186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304842, 28.649239, 32.417583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088585, -0.419596, 0.903378,
		-0.062232, -0.907503, -0.415410,
		0.994123, -0.019420, -0.106504,
		27.603079, 28.643412, 32.385632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134619, 28.006914, 32.778885>,  <26.907192, 28.657007, 32.460186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134619, 28.006914, 32.778885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.450590, 28.250763, 32.752434>,  <27.640173, 28.397072, 32.736565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.450590, 28.250763, 32.752434>,  <27.134619, 28.006914, 32.778885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450590, 28.250763, 32.752434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264758, -0.241803, 0.933507,
		0.553096, -0.754912, -0.352409,
		0.789929, 0.609622, -0.066128,
		27.687569, 28.433649, 32.732594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554171, 27.700859, 33.180550>,  <27.134619, 28.006914, 32.778885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554171, 27.700859, 33.180550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.742908, 28.052532, 33.154011>,  <27.856152, 28.263536, 33.138088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.742908, 28.052532, 33.154011>,  <27.554171, 27.700859, 33.180550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742908, 28.052532, 33.154011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181081, -0.022991, 0.983199,
		0.862887, -0.475929, -0.170051,
		0.471842, 0.879183, -0.066343,
		27.884460, 28.316288, 33.134109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121477, 27.570871, 33.529297>,  <27.554171, 27.700859, 33.180550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121477, 27.570871, 33.529297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.061661, 27.966362, 33.526226>,  <28.025772, 28.203657, 33.524384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.061661, 27.966362, 33.526226>,  <28.121477, 27.570871, 33.529297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061661, 27.966362, 33.526226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011842, 0.005976, 0.999912,
		0.988685, 0.149618, 0.010815,
		-0.149540, 0.988726, -0.007680,
		28.016798, 28.262980, 33.523922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628214, 27.882629, 33.998959>,  <28.121477, 27.570871, 33.529297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628214, 27.882629, 33.998959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.347923, 28.167763, 33.987278>,  <28.179749, 28.338842, 33.980270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.347923, 28.167763, 33.987278>,  <28.628214, 27.882629, 33.998959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347923, 28.167763, 33.987278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100007, 0.138667, 0.985277,
		0.706385, 0.687490, -0.168456,
		-0.700727, 0.712832, -0.029199,
		28.137705, 28.381613, 33.978519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808249, 28.216923, 34.573711>,  <28.628214, 27.882629, 33.998959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808249, 28.216923, 34.573711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.445770, 28.365498, 34.492867>,  <28.228283, 28.454643, 34.444359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.445770, 28.365498, 34.492867>,  <28.808249, 28.216923, 34.573711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445770, 28.365498, 34.492867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119983, 0.232456, 0.965178,
		0.405484, 0.898888, -0.166084,
		-0.906194, 0.371437, -0.202108,
		28.173912, 28.476929, 34.432236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698656, 28.844141, 34.930412>,  <28.808249, 28.216923, 34.573711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698656, 28.844141, 34.930412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.319942, 28.727360, 34.876202>,  <28.092714, 28.657291, 34.843674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.319942, 28.727360, 34.876202>,  <28.698656, 28.844141, 34.930412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319942, 28.727360, 34.876202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156756, 0.050481, 0.986346,
		-0.281126, 0.955099, -0.093560,
		-0.946782, -0.291953, -0.135526,
		28.035908, 28.639774, 34.835545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325277, 29.292295, 35.359837>,  <28.698656, 28.844141, 34.930412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325277, 29.292295, 35.359837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.090281, 28.976330, 35.289539>,  <27.949282, 28.786751, 35.247360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.090281, 28.976330, 35.289539>,  <28.325277, 29.292295, 35.359837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090281, 28.976330, 35.289539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323897, 0.030518, 0.945600,
		-0.741582, 0.612455, -0.273781,
		-0.587493, -0.789916, -0.175741,
		27.914032, 28.739355, 35.236816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643686, 29.454103, 35.515945>,  <28.325277, 29.292295, 35.359837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643686, 29.454103, 35.515945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.662302, 29.055485, 35.543442>,  <27.673471, 28.816313, 35.559940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.662302, 29.055485, 35.543442>,  <27.643686, 29.454103, 35.515945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662302, 29.055485, 35.543442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238905, 0.055711, 0.969444,
		-0.969927, -0.061541, -0.235488,
		0.046541, -0.996549, 0.068738,
		27.676264, 28.756519, 35.564064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065243, 29.275740, 35.934650>,  <27.643686, 29.454103, 35.515945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065243, 29.275740, 35.934650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.296247, 28.949268, 35.941994>,  <27.434851, 28.753386, 35.946400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.296247, 28.949268, 35.941994>,  <27.065243, 29.275740, 35.934650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296247, 28.949268, 35.941994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147135, -0.081935, 0.985717,
		-0.803014, -0.571964, -0.167407,
		0.577511, -0.816176, 0.018361,
		27.469501, 28.704416, 35.947502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723661, 28.680679, 36.413387>,  <27.065243, 29.275740, 35.934650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723661, 28.680679, 36.413387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.112328, 28.600143, 36.363857>,  <27.345528, 28.551823, 36.334141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.112328, 28.600143, 36.363857>,  <26.723661, 28.680679, 36.413387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112328, 28.600143, 36.363857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082977, -0.199980, 0.976280,
		-0.221332, -0.958889, -0.177606,
		0.971662, -0.201345, -0.123828,
		27.403826, 28.539742, 36.326710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708450, 28.040506, 36.631966>,  <26.723661, 28.680679, 36.413387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708450, 28.040506, 36.631966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.074337, 28.194191, 36.682045>,  <27.293869, 28.286402, 36.712093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.074337, 28.194191, 36.682045>,  <26.708450, 28.040506, 36.631966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.074337, 28.194191, 36.682045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145588, 0.024322, 0.989046,
		0.376959, -0.922924, 0.078184,
		0.914716, 0.384212, 0.125198,
		27.348751, 28.309454, 36.719604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941933, 27.706852, 37.193848>,  <26.708450, 28.040506, 36.631966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941933, 27.706852, 37.193848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.225069, 27.987061, 37.157555>,  <27.394951, 28.155186, 37.135780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.225069, 27.987061, 37.157555>,  <26.941933, 27.706852, 37.193848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225069, 27.987061, 37.157555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058734, 0.069632, 0.995842,
		0.703928, -0.710224, 0.008144,
		0.707838, 0.700523, -0.090730,
		27.437420, 28.197218, 37.130337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531248, 27.424362, 37.531754>,  <26.941933, 27.706852, 37.193848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531248, 27.424362, 37.531754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.523634, 27.823956, 37.515415>,  <27.519066, 28.063711, 37.505611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.523634, 27.823956, 37.515415>,  <27.531248, 27.424362, 37.531754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523634, 27.823956, 37.515415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171455, 0.036987, 0.984497,
		0.985008, 0.025742, 0.170577,
		-0.019033, 0.998984, -0.040846,
		27.517923, 28.123652, 37.503162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841175, 27.651110, 38.172874>,  <27.531248, 27.424362, 37.531754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841175, 27.651110, 38.172874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.600559, 27.943329, 38.043602>,  <27.456190, 28.118660, 37.966038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.600559, 27.943329, 38.043602>,  <27.841175, 27.651110, 38.172874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600559, 27.943329, 38.043602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157765, 0.287951, 0.944560,
		0.783109, 0.619177, -0.057959,
		-0.601540, 0.730550, -0.323182,
		27.420097, 28.162495, 37.946648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511162, 27.848110, 37.961884>,  <27.841175, 27.651110, 38.172874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511162, 27.848110, 37.961884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.632751, 27.995907, 38.313126>,  <28.705706, 28.084585, 38.523872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.632751, 27.995907, 38.313126>,  <28.511162, 27.848110, 37.961884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632751, 27.995907, 38.313126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747739, -0.663679, 0.020420,
		0.590328, 0.650390, -0.478024,
		0.303973, 0.369491, 0.878110,
		28.723944, 28.106754, 38.576557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107677, 27.844419, 37.543213>,  <28.511162, 27.848110, 37.961884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107677, 27.844419, 37.543213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.480051, 27.703548, 37.581848>,  <29.703476, 27.619026, 37.605030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.480051, 27.703548, 37.581848>,  <29.107677, 27.844419, 37.543213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480051, 27.703548, 37.581848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217397, 0.321928, -0.921467,
		0.293426, 0.878825, 0.376256,
		0.930935, -0.352179, 0.096592,
		29.759331, 27.597895, 37.610825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527096, 28.387880, 37.281712>,  <29.107677, 27.844419, 37.543213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527096, 28.387880, 37.281712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.758341, 28.062740, 37.253258>,  <29.897087, 27.867657, 37.236187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.758341, 28.062740, 37.253258>,  <29.527096, 28.387880, 37.281712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758341, 28.062740, 37.253258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465955, 0.400437, -0.789009,
		0.669832, 0.422991, 0.610249,
		0.578110, -0.812852, -0.071131,
		29.931774, 27.818884, 37.231918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118767, 28.597166, 36.982403>,  <29.527096, 28.387880, 37.281712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118767, 28.597166, 36.982403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.176054, 28.204384, 36.933002>,  <30.210426, 27.968714, 36.903362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.176054, 28.204384, 36.933002>,  <30.118767, 28.597166, 36.982403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176054, 28.204384, 36.933002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452279, 0.175930, -0.874352,
		0.880302, 0.069369, 0.469315,
		0.143219, -0.981955, -0.123498,
		30.219019, 27.909798, 36.895954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820608, 28.546608, 36.676727>,  <30.118767, 28.597166, 36.982403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820608, 28.546608, 36.676727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613457, 28.217106, 36.584438>,  <30.489166, 28.019405, 36.529064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.613457, 28.217106, 36.584438>,  <30.820608, 28.546608, 36.676727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613457, 28.217106, 36.584438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327363, 0.058338, -0.943096,
		0.790339, -0.563938, 0.239455,
		-0.517878, -0.823754, -0.230719,
		30.458094, 27.969980, 36.515224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172752, 28.421858, 36.049026>,  <30.820608, 28.546608, 36.676727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172752, 28.421858, 36.049026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.851885, 28.183296, 36.037498>,  <30.659365, 28.040159, 36.030582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.851885, 28.183296, 36.037498>,  <31.172752, 28.421858, 36.049026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851885, 28.183296, 36.037498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046161, 0.110057, -0.992853,
		0.595312, -0.795104, -0.115815,
		-0.802168, -0.596403, -0.028815,
		30.611235, 28.004375, 36.028854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373915, 27.849173, 35.588684>,  <31.172752, 28.421858, 36.049026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373915, 27.849173, 35.588684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.982632, 27.930897, 35.603455>,  <30.747862, 27.979931, 35.612316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.982632, 27.930897, 35.603455>,  <31.373915, 27.849173, 35.588684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982632, 27.930897, 35.603455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009437, 0.221409, -0.975135,
		-0.207406, -0.953538, -0.218512,
		-0.978210, 0.204311, 0.036923,
		30.689169, 27.992189, 35.614532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146202, 27.440161, 35.101860>,  <31.373915, 27.849173, 35.588684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146202, 27.440161, 35.101860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.854212, 27.704811, 35.170429>,  <30.679018, 27.863602, 35.211571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.854212, 27.704811, 35.170429>,  <31.146202, 27.440161, 35.101860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854212, 27.704811, 35.170429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213585, 0.017427, -0.976769,
		-0.649243, -0.749632, 0.128592,
		-0.729976, 0.661626, 0.171425,
		30.635220, 27.903299, 35.221855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547657, 27.165318, 34.945187>,  <31.146202, 27.440161, 35.101860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547657, 27.165318, 34.945187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.497883, 27.559986, 34.903236>,  <30.468018, 27.796787, 34.878067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.497883, 27.559986, 34.903236>,  <30.547657, 27.165318, 34.945187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497883, 27.559986, 34.903236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059976, -0.112980, -0.991785,
		-0.990413, -0.117124, 0.073235,
		-0.124436, 0.986670, -0.104873,
		30.460552, 27.855988, 34.871773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083975, 27.201502, 34.488739>,  <30.547657, 27.165318, 34.945187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083975, 27.201502, 34.488739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.195639, 27.585438, 34.477589>,  <30.262636, 27.815800, 34.470898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.195639, 27.585438, 34.477589>,  <30.083975, 27.201502, 34.488739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195639, 27.585438, 34.477589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184065, 0.024996, -0.982596,
		-0.942439, 0.279431, 0.183651,
		0.279158, 0.959840, -0.027877,
		30.279387, 27.873390, 34.469227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525492, 27.550173, 34.147232>,  <30.083975, 27.201502, 34.488739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525492, 27.550173, 34.147232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.855457, 27.776024, 34.136593>,  <30.053436, 27.911535, 34.130211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.855457, 27.776024, 34.136593>,  <29.525492, 27.550173, 34.147232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855457, 27.776024, 34.136593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158751, 0.186259, -0.969591,
		-0.542506, 0.804053, 0.243283,
		0.824916, 0.564630, -0.026598,
		30.102932, 27.945414, 34.128613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325083, 28.180023, 33.854053>,  <29.525492, 27.550173, 34.147232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325083, 28.180023, 33.854053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.717403, 28.144005, 33.784866>,  <29.952795, 28.122395, 33.743355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.717403, 28.144005, 33.784866>,  <29.325083, 28.180023, 33.854053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717403, 28.144005, 33.784866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169925, 0.040500, -0.984624,
		0.095667, 0.995114, 0.024421,
		0.980802, -0.090046, -0.172970,
		30.011644, 28.116991, 33.732975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441437, 28.569429, 33.377815>,  <29.325083, 28.180023, 33.854053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441437, 28.569429, 33.377815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.754345, 28.321796, 33.350128>,  <29.942091, 28.173218, 33.333515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.754345, 28.321796, 33.350128>,  <29.441437, 28.569429, 33.377815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754345, 28.321796, 33.350128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185369, -0.125264, -0.974653,
		0.594718, 0.775273, -0.212748,
		0.782271, -0.619081, -0.069215,
		29.989027, 28.136072, 33.329365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778786, 28.747705, 32.759731>,  <29.441437, 28.569429, 33.377815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778786, 28.747705, 32.759731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.933155, 28.380966, 32.800632>,  <30.025776, 28.160923, 32.825172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.933155, 28.380966, 32.800632>,  <29.778786, 28.747705, 32.759731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933155, 28.380966, 32.800632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029273, -0.098611, -0.994695,
		0.922067, 0.386867, -0.011217,
		0.385921, -0.916848, 0.102251,
		30.048931, 28.105911, 32.831306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306477, 28.713615, 32.281601>,  <29.778786, 28.747705, 32.759731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306477, 28.713615, 32.281601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.184280, 28.341362, 32.362190>,  <30.110964, 28.118010, 32.410545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.184280, 28.341362, 32.362190>,  <30.306477, 28.713615, 32.281601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184280, 28.341362, 32.362190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122225, -0.171517, -0.977570,
		0.944318, -0.323263, -0.061350,
		-0.305490, -0.930636, 0.201478,
		30.092634, 28.062172, 32.422634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828417, 28.245956, 31.926527>,  <30.306477, 28.713615, 32.281601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828417, 28.245956, 31.926527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.478401, 28.057541, 31.971115>,  <30.268391, 27.944490, 31.997868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.478401, 28.057541, 31.971115>,  <30.828417, 28.245956, 31.926527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478401, 28.057541, 31.971115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105295, -0.039541, -0.993655,
		0.472459, -0.881225, -0.014999,
		-0.875040, -0.471041, 0.111470,
		30.215889, 27.916229, 32.004555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851517, 27.684875, 31.414408>,  <30.828417, 28.245956, 31.926527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851517, 27.684875, 31.414408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.467314, 27.716572, 31.521103>,  <30.236792, 27.735590, 31.585119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.467314, 27.716572, 31.521103>,  <30.851517, 27.684875, 31.414408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467314, 27.716572, 31.521103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268809, -0.016548, -0.963051,
		-0.071898, -0.996718, 0.037195,
		-0.960506, 0.079240, 0.266737,
		30.179161, 27.740343, 31.601124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464682, 27.153793, 30.951674>,  <30.851517, 27.684875, 31.414408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464682, 27.153793, 30.951674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.223244, 27.439983, 31.092396>,  <30.078381, 27.611698, 31.176828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.223244, 27.439983, 31.092396>,  <30.464682, 27.153793, 30.951674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223244, 27.439983, 31.092396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243263, 0.254942, -0.935856,
		-0.759274, -0.650459, 0.020168,
		-0.603595, 0.715477, 0.351804,
		30.042166, 27.654627, 31.197937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976873, 27.288263, 30.393139>,  <30.464682, 27.153793, 30.951674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976873, 27.288263, 30.393139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.929289, 27.621456, 30.609283>,  <29.900738, 27.821371, 30.738970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.929289, 27.621456, 30.609283>,  <29.976873, 27.288263, 30.393139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929289, 27.621456, 30.609283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099385, 0.531503, -0.841205,
		-0.987912, -0.153775, 0.019557,
		-0.118961, 0.832981, 0.540362,
		29.893600, 27.871351, 30.771393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467194, 27.654863, 30.002312>,  <29.976873, 27.288263, 30.393139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467194, 27.654863, 30.002312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.620087, 27.912426, 30.267426>,  <29.711823, 28.066963, 30.426493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.620087, 27.912426, 30.267426>,  <29.467194, 27.654863, 30.002312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620087, 27.912426, 30.267426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245675, 0.762245, -0.598854,
		-0.890810, 0.066072, 0.449547,
		0.382232, 0.643908, 0.662783,
		29.734756, 28.105598, 30.466261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921522, 28.139719, 30.147802>,  <29.467194, 27.654863, 30.002312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921522, 28.139719, 30.147802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.295166, 28.280926, 30.169037>,  <29.519352, 28.365650, 30.181778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.295166, 28.280926, 30.169037>,  <28.921522, 28.139719, 30.147802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295166, 28.280926, 30.169037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226370, 0.700725, -0.676565,
		-0.276037, 0.619969, 0.734467,
		0.934109, 0.353019, 0.053084,
		29.575399, 28.386831, 30.184961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.482496, 41.650745, 16.592163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.852444, 41.802856, 16.591949>,  <23.074413, 41.894123, 16.591822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.852444, 41.802856, 16.591949>,  <22.482496, 41.650745, 16.592163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.852444, 41.802856, 16.591949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119734, -0.289874, 0.949546,
		0.360941, -0.878271, -0.313628,
		0.924871, 0.380282, -0.000532,
		23.129906, 41.916943, 16.591789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.878548, 41.053665, 16.765812>,  <22.482496, 41.650745, 16.592163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.878548, 41.053665, 16.765812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.057137, 41.397457, 16.865383>,  <23.164289, 41.603733, 16.925125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.057137, 41.397457, 16.865383>,  <22.878548, 41.053665, 16.765812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.057137, 41.397457, 16.865383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194740, -0.364857, 0.910470,
		0.873351, -0.358021, -0.330272,
		0.446470, 0.859477, 0.248927,
		23.191078, 41.655300, 16.940062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.339399, 40.848663, 17.216919>,  <22.878548, 41.053665, 16.765812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.339399, 40.848663, 17.216919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.329262, 41.241611, 17.291016>,  <23.323179, 41.477379, 17.335474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.329262, 41.241611, 17.291016>,  <23.339399, 40.848663, 17.216919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.329262, 41.241611, 17.291016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129866, -0.180498, 0.974964,
		0.991208, 0.048767, -0.123001,
		-0.025345, 0.982366, 0.185244,
		23.321659, 41.536320, 17.346588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.911520, 40.966705, 17.615721>,  <23.339399, 40.848663, 17.216919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.911520, 40.966705, 17.615721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.677299, 41.284473, 17.680252>,  <23.536768, 41.475136, 17.718971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.677299, 41.284473, 17.680252>,  <23.911520, 40.966705, 17.615721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.677299, 41.284473, 17.680252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139657, -0.097178, 0.985420,
		0.798515, 0.599544, -0.054044,
		-0.585551, 0.794420, 0.161329,
		23.501635, 41.522800, 17.728651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.287937, 41.383095, 18.185484>,  <23.911520, 40.966705, 17.615721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.287937, 41.383095, 18.185484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.910376, 41.515118, 18.189678>,  <23.683840, 41.594334, 18.192194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.910376, 41.515118, 18.189678>,  <24.287937, 41.383095, 18.185484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.910376, 41.515118, 18.189678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012171, 0.003040, 0.999921,
		0.330003, 0.943955, -0.006887,
		-0.943902, 0.330061, 0.010486,
		23.627205, 41.614136, 18.192823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.230967, 42.014130, 18.544464>,  <24.287937, 41.383095, 18.185484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.230967, 42.014130, 18.544464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.864145, 41.855476, 18.560928>,  <23.644053, 41.760284, 18.570807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.864145, 41.855476, 18.560928>,  <24.230967, 42.014130, 18.544464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.864145, 41.855476, 18.560928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054649, -0.022756, 0.998246,
		-0.395003, 0.917694, 0.042544,
		-0.917053, -0.396635, 0.041163,
		23.589029, 41.736485, 18.573277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.918968, 42.426140, 19.029533>,  <24.230967, 42.014130, 18.544464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.918968, 42.426140, 19.029533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.711493, 42.084759, 19.009201>,  <23.587008, 41.879932, 18.997002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.711493, 42.084759, 19.009201>,  <23.918968, 42.426140, 19.029533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.711493, 42.084759, 19.009201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133192, -0.139393, 0.981239,
		-0.844524, 0.502188, 0.185975,
		-0.518690, -0.853450, -0.050833,
		23.555885, 41.828724, 18.993952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.499760, 42.324348, 19.708611>,  <23.918968, 42.426140, 19.029533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.499760, 42.324348, 19.708611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.494225, 41.953743, 19.558208>,  <23.490904, 41.731380, 19.467966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.494225, 41.953743, 19.558208>,  <23.499760, 42.324348, 19.708611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.494225, 41.953743, 19.558208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119873, -0.374869, 0.919295,
		-0.992693, -0.032351, 0.116252,
		-0.013839, -0.926513, -0.376007,
		23.490072, 41.675789, 19.445406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.147739, 41.930584, 20.273209>,  <23.499760, 42.324348, 19.708611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.147739, 41.930584, 20.273209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.314291, 41.666214, 20.023468>,  <23.414221, 41.507591, 19.873625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.314291, 41.666214, 20.023468>,  <23.147739, 41.930584, 20.273209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.314291, 41.666214, 20.023468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164211, -0.620748, 0.766620,
		-0.894240, -0.421728, -0.149935,
		0.416377, -0.660921, -0.624350,
		23.439203, 41.467937, 19.836163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.873388, 41.396446, 20.460808>,  <23.147739, 41.930584, 20.273209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.873388, 41.396446, 20.460808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.188158, 41.236553, 20.272778>,  <23.377020, 41.140617, 20.159960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.188158, 41.236553, 20.272778>,  <22.873388, 41.396446, 20.460808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.188158, 41.236553, 20.272778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037769, -0.729177, 0.683282,
		-0.615894, -0.555444, -0.558709,
		0.786923, -0.399727, -0.470075,
		23.424234, 41.116634, 20.131756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.676424, 40.633213, 20.389326>,  <22.873388, 41.396446, 20.460808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.676424, 40.633213, 20.389326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.071486, 40.695171, 20.398727>,  <23.308521, 40.732346, 20.404367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.071486, 40.695171, 20.398727>,  <22.676424, 40.633213, 20.389326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.071486, 40.695171, 20.398727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088576, -0.675821, 0.731725,
		0.129223, -0.720607, -0.681195,
		0.987652, 0.154893, 0.023504,
		23.367781, 40.741638, 20.405779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.908175, 39.993408, 20.510540>,  <22.676424, 40.633213, 20.389326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.908175, 39.993408, 20.510540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.224689, 40.217770, 20.607903>,  <23.414598, 40.352386, 20.666321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.224689, 40.217770, 20.607903>,  <22.908175, 39.993408, 20.510540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.224689, 40.217770, 20.607903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202343, -0.615871, 0.761420,
		0.576991, -0.553252, -0.600827,
		0.791289, 0.560906, 0.243406,
		23.462076, 40.386040, 20.680923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.327694, 39.475533, 20.617960>,  <22.908175, 39.993408, 20.510540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.327694, 39.475533, 20.617960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.452520, 39.810982, 20.796543>,  <23.527416, 40.012253, 20.903694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.452520, 39.810982, 20.796543>,  <23.327694, 39.475533, 20.617960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.452520, 39.810982, 20.796543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147399, -0.506975, 0.849264,
		0.938556, -0.199220, -0.281822,
		0.312067, 0.838622, 0.446460,
		23.546141, 40.062569, 20.930481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.644026, 39.235779, 21.177486>,  <23.327694, 39.475533, 20.617960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.644026, 39.235779, 21.177486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.580051, 39.614475, 21.289276>,  <23.541666, 39.841694, 21.356350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.580051, 39.614475, 21.289276>,  <23.644026, 39.235779, 21.177486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.580051, 39.614475, 21.289276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080389, -0.294669, 0.952212,
		0.983848, 0.129829, 0.123236,
		-0.159938, 0.946739, 0.279473,
		23.532070, 39.898499, 21.373117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.115227, 39.348721, 21.744190>,  <23.644026, 39.235779, 21.177486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.115227, 39.348721, 21.744190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.839947, 39.636917, 21.778301>,  <23.674780, 39.809837, 21.798767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.839947, 39.636917, 21.778301>,  <24.115227, 39.348721, 21.744190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.839947, 39.636917, 21.778301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128986, -0.237168, 0.962867,
		0.713965, 0.651644, 0.256152,
		-0.688198, 0.720494, 0.085277,
		23.633488, 39.853065, 21.803885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.211901, 39.704273, 22.340599>,  <24.115227, 39.348721, 21.744190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.211901, 39.704273, 22.340599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.830725, 39.816730, 22.295235>,  <23.602018, 39.884205, 22.268017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.830725, 39.816730, 22.295235>,  <24.211901, 39.704273, 22.340599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.830725, 39.816730, 22.295235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188412, -0.256180, 0.948089,
		0.237497, 0.924840, 0.297096,
		-0.952941, 0.281145, -0.113409,
		23.544842, 39.901073, 22.261211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.106539, 40.098095, 22.887356>,  <24.211901, 39.704273, 22.340599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.106539, 40.098095, 22.887356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.752966, 39.954014, 22.768082>,  <23.540823, 39.867565, 22.696516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.752966, 39.954014, 22.768082>,  <24.106539, 40.098095, 22.887356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.752966, 39.954014, 22.768082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099366, -0.478425, 0.872488,
		-0.456937, 0.800849, 0.387103,
		-0.883932, -0.360207, -0.298187,
		23.487787, 39.845951, 22.678625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.607864, 40.359276, 23.358744>,  <24.106539, 40.098095, 22.887356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.607864, 40.359276, 23.358744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.433100, 40.056145, 23.164917>,  <23.328241, 39.874268, 23.048620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.433100, 40.056145, 23.164917>,  <23.607864, 40.359276, 23.358744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.433100, 40.056145, 23.164917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201602, -0.442500, 0.873814,
		-0.876620, 0.479471, 0.040555,
		-0.436914, -0.757827, -0.484567,
		23.302025, 39.828796, 23.019547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.062090, 40.234028, 23.755013>,  <23.607864, 40.359276, 23.358744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.062090, 40.234028, 23.755013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.063681, 39.911316, 23.518677>,  <23.064634, 39.717690, 23.376875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.063681, 39.911316, 23.518677>,  <23.062090, 40.234028, 23.755013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.063681, 39.911316, 23.518677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390378, -0.545214, 0.741853,
		-0.920646, 0.227701, -0.317117,
		0.003976, -0.806780, -0.590839,
		23.064873, 39.669281, 23.341425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.355410, 39.926723, 23.822569>,  <23.062090, 40.234028, 23.755013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.355410, 39.926723, 23.822569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.626814, 39.646397, 23.734497>,  <22.789656, 39.478199, 23.681654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.626814, 39.646397, 23.734497>,  <22.355410, 39.926723, 23.822569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.626814, 39.646397, 23.734497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209907, -0.472201, 0.856134,
		-0.703962, -0.534679, -0.467500,
		0.678511, -0.700817, -0.220179,
		22.830368, 39.436153, 23.668444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.059498, 39.316319, 23.750412>,  <22.355410, 39.926723, 23.822569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.059498, 39.316319, 23.750412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.441885, 39.215466, 23.810478>,  <22.671318, 39.154953, 23.846518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.441885, 39.215466, 23.810478>,  <22.059498, 39.316319, 23.750412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.441885, 39.215466, 23.810478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262750, -0.507477, 0.820628,
		-0.130702, -0.823951, -0.551381,
		0.955970, -0.252133, 0.150165,
		22.728676, 39.139824, 23.855528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.879095, 39.085476, 23.139252>,  <22.059498, 39.316319, 23.750412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.879095, 39.085476, 23.139252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.557304, 38.850368, 23.173542>,  <21.364229, 38.709305, 23.194117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.557304, 38.850368, 23.173542>,  <21.879095, 39.085476, 23.139252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.557304, 38.850368, 23.173542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429703, -0.675528, -0.599181,
		0.410088, -0.445190, 0.796011,
		-0.804477, -0.587765, 0.085726,
		21.315962, 38.674038, 23.199261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.157532, 38.405819, 22.985590>,  <21.879095, 39.085476, 23.139252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.157532, 38.405819, 22.985590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.763021, 38.356476, 22.941685>,  <21.526316, 38.326870, 22.915342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.763021, 38.356476, 22.941685>,  <22.157532, 38.405819, 22.985590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.763021, 38.356476, 22.941685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164116, -0.659082, -0.733946,
		0.018195, -0.741885, 0.670280,
		-0.986273, -0.123358, -0.109763,
		21.467140, 38.319469, 22.908756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.996088, 37.637600, 22.805206>,  <22.157532, 38.405819, 22.985590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.996088, 37.637600, 22.805206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.696781, 37.864670, 22.667896>,  <21.517197, 38.000912, 22.585510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.696781, 37.864670, 22.667896>,  <21.996088, 37.637600, 22.805206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.696781, 37.864670, 22.667896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035041, -0.482909, -0.874969,
		-0.662470, -0.666741, 0.341454,
		-0.748269, 0.567676, -0.343275,
		21.472300, 38.034973, 22.564913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.762197, 37.263081, 22.227800>,  <21.996088, 37.637600, 22.805206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.762197, 37.263081, 22.227800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.561903, 37.595181, 22.129864>,  <21.441727, 37.794441, 22.071102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.561903, 37.595181, 22.129864>,  <21.762197, 37.263081, 22.227800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.561903, 37.595181, 22.129864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092760, -0.229763, -0.968816,
		-0.860616, -0.507831, 0.038036,
		-0.500735, 0.830251, -0.244844,
		21.411682, 37.844257, 22.056410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.340860, 37.026688, 21.562790>,  <21.762197, 37.263081, 22.227800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.340860, 37.026688, 21.562790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.332148, 37.426510, 21.554741>,  <21.326920, 37.666405, 21.549911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.332148, 37.426510, 21.554741>,  <21.340860, 37.026688, 21.562790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.332148, 37.426510, 21.554741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147441, -0.016697, -0.988930,
		-0.988831, -0.024507, -0.147013,
		-0.021781, 0.999560, -0.020124,
		21.325613, 37.726379, 21.548704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.996901, 37.130131, 20.930708>,  <21.340860, 37.026688, 21.562790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.996901, 37.130131, 20.930708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.192057, 37.465363, 21.028347>,  <21.309151, 37.666500, 21.086929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.192057, 37.465363, 21.028347>,  <20.996901, 37.130131, 20.930708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.192057, 37.465363, 21.028347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501535, -0.040266, -0.864200,
		-0.714440, 0.544058, -0.439973,
		0.487891, 0.838081, 0.244096,
		21.338425, 37.716785, 21.101576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.812202, 37.646435, 20.410215>,  <20.996901, 37.130131, 20.930708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.812202, 37.646435, 20.410215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.160288, 37.752941, 20.576023>,  <21.369139, 37.816845, 20.675508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.160288, 37.752941, 20.576023>,  <20.812202, 37.646435, 20.410215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.160288, 37.752941, 20.576023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438311, -0.034233, -0.898171,
		-0.224964, 0.963291, -0.146498,
		0.870215, 0.266268, 0.414520,
		21.421352, 37.832821, 20.700378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.143639, 38.054268, 19.914738>,  <20.812202, 37.646435, 20.410215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.143639, 38.054268, 19.914738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.427015, 37.954048, 20.178658>,  <21.597040, 37.893917, 20.337009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.427015, 37.954048, 20.178658>,  <21.143639, 38.054268, 19.914738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.427015, 37.954048, 20.178658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704020, 0.185056, -0.685646,
		0.049690, 0.950252, 0.307494,
		0.708440, -0.250552, 0.659801,
		21.639547, 37.878883, 20.376598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.720623, 38.639542, 19.909277>,  <21.143639, 38.054268, 19.914738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.720623, 38.639542, 19.909277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.894064, 38.314346, 20.064735>,  <21.998129, 38.119228, 20.158010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.894064, 38.314346, 20.064735>,  <21.720623, 38.639542, 19.909277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.894064, 38.314346, 20.064735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840365, 0.209159, -0.500039,
		0.325235, 0.543424, 0.773895,
		0.433600, -0.812984, 0.388648,
		22.024143, 38.070450, 20.181330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.428610, 38.843819, 20.175077>,  <21.720623, 38.639542, 19.909277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.428610, 38.843819, 20.175077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.409870, 38.450459, 20.104965>,  <22.398626, 38.214443, 20.062899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.409870, 38.450459, 20.104965>,  <22.428610, 38.843819, 20.175077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.409870, 38.450459, 20.104965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698870, 0.093106, -0.709163,
		0.713713, -0.155719, 0.682909,
		-0.046847, -0.983404, -0.175278,
		22.395817, 38.155437, 20.052382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.047335, 38.645489, 20.321079>,  <22.428610, 38.843819, 20.175077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.047335, 38.645489, 20.321079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.887415, 38.368294, 20.081104>,  <22.791462, 38.201977, 19.937119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.887415, 38.368294, 20.081104>,  <23.047335, 38.645489, 20.321079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.887415, 38.368294, 20.081104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766172, 0.106612, -0.633730,
		0.503129, -0.713021, 0.488325,
		-0.399802, -0.692990, -0.599937,
		22.767475, 38.160397, 19.901123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.622505, 38.348446, 20.051905>,  <23.047335, 38.645489, 20.321079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.622505, 38.348446, 20.051905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.336121, 38.202141, 19.814041>,  <23.164289, 38.114357, 19.671324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.336121, 38.202141, 19.814041>,  <23.622505, 38.348446, 20.051905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.336121, 38.202141, 19.814041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627576, 0.035977, -0.777724,
		0.305857, -0.930012, 0.203786,
		-0.715961, -0.365764, -0.594657,
		23.121332, 38.092411, 19.635645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.979988, 37.941967, 19.521433>,  <23.622505, 38.348446, 20.051905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.979988, 37.941967, 19.521433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.623547, 38.031094, 19.363300>,  <23.409681, 38.084568, 19.268421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.623547, 38.031094, 19.363300>,  <23.979988, 37.941967, 19.521433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.623547, 38.031094, 19.363300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436572, 0.183182, -0.880823,
		-0.123842, -0.957496, -0.260509,
		-0.891105, 0.222814, -0.395330,
		23.356215, 38.097939, 19.244701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.988113, 37.629250, 18.961422>,  <23.979988, 37.941967, 19.521433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.988113, 37.629250, 18.961422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.694584, 37.884911, 18.869347>,  <23.518467, 38.038307, 18.814100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.694584, 37.884911, 18.869347>,  <23.988113, 37.629250, 18.961422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.694584, 37.884911, 18.869347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476519, 0.242781, -0.844978,
		-0.484186, -0.729753, -0.482727,
		-0.733821, 0.639155, -0.230190,
		23.474438, 38.076656, 18.800289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.672695, 37.534740, 18.212307>,  <23.988113, 37.629250, 18.961422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.672695, 37.534740, 18.212307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.592796, 37.912701, 18.316048>,  <23.544857, 38.139477, 18.378292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.592796, 37.912701, 18.316048>,  <23.672695, 37.534740, 18.212307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.592796, 37.912701, 18.316048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275280, 0.308141, -0.910643,
		-0.940384, -0.110504, -0.321663,
		-0.199747, 0.944901, 0.259351,
		23.532873, 38.196171, 18.393852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.511494, 37.874996, 17.581543>,  <23.672695, 37.534740, 18.212307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.511494, 37.874996, 17.581543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.594522, 38.187424, 17.817120>,  <23.644341, 38.374878, 17.958466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.594522, 38.187424, 17.817120>,  <23.511494, 37.874996, 17.581543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.594522, 38.187424, 17.817120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413185, 0.475705, -0.776520,
		-0.886675, 0.404526, -0.223981,
		0.207573, 0.781066, 0.588940,
		23.656794, 38.421745, 17.993801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.230791, 38.316643, 17.276897>,  <23.511494, 37.874996, 17.581543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.230791, 38.316643, 17.276897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.507204, 38.507999, 17.493641>,  <23.673052, 38.622814, 17.623686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.507204, 38.507999, 17.493641>,  <23.230791, 38.316643, 17.276897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.507204, 38.507999, 17.493641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417247, 0.348124, -0.839473,
		-0.590234, 0.806193, 0.040957,
		0.691035, 0.478396, 0.541856,
		23.714514, 38.651520, 17.656199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.363033, 39.003582, 16.993876>,  <23.230791, 38.316643, 17.276897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.363033, 39.003582, 16.993876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.694132, 38.914665, 17.199951>,  <23.892792, 38.861313, 17.323597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.694132, 38.914665, 17.199951>,  <23.363033, 39.003582, 16.993876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.694132, 38.914665, 17.199951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551695, 0.489863, -0.675031,
		-0.102315, 0.842982, 0.528122,
		0.827747, -0.222296, 0.515189,
		23.942455, 38.847977, 17.354507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.786068, 39.659447, 16.976873>,  <23.363033, 39.003582, 16.993876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.786068, 39.659447, 16.976873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.028265, 39.353233, 17.063904>,  <24.173584, 39.169506, 17.116123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.028265, 39.353233, 17.063904>,  <23.786068, 39.659447, 16.976873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.028265, 39.353233, 17.063904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678876, 0.354143, -0.643203,
		0.415339, 0.537163, 0.734132,
		0.605492, -0.765532, 0.217578,
		24.209913, 39.123573, 17.129177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.460421, 39.941498, 16.903551>,  <23.786068, 39.659447, 16.976873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.460421, 39.941498, 16.903551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.558788, 39.555019, 16.934513>,  <24.617809, 39.323132, 16.953091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.558788, 39.555019, 16.934513>,  <24.460421, 39.941498, 16.903551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.558788, 39.555019, 16.934513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861902, 0.181442, -0.473502,
		0.443450, 0.183160, 0.877385,
		0.245921, -0.966194, 0.077406,
		24.632565, 39.265160, 16.957735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.213619, 39.826630, 17.208712>,  <24.460421, 39.941498, 16.903551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.213619, 39.826630, 17.208712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.137663, 39.488708, 17.008610>,  <25.092089, 39.285957, 16.888550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.137663, 39.488708, 17.008610>,  <25.213619, 39.826630, 17.208712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.137663, 39.488708, 17.008610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896341, 0.058748, -0.439456,
		0.400642, -0.531846, 0.746074,
		-0.189893, -0.844801, -0.500253,
		25.080694, 39.235268, 16.858534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<25.374071, 31.116594, 26.973352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.744434, 31.257381, 27.028217>,  <25.966652, 31.341854, 27.061136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.744434, 31.257381, 27.028217>,  <25.374071, 31.116594, 26.973352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.744434, 31.257381, 27.028217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119518, 0.617410, -0.777509,
		-0.358342, 0.703509, 0.613731,
		0.925909, 0.351966, 0.137162,
		26.022207, 31.362970, 27.069366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299206, 31.826149, 26.901022>,  <25.374071, 31.116594, 26.973352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.299206, 31.826149, 26.901022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.685823, 31.755829, 26.826305>,  <25.917793, 31.713636, 26.781475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.685823, 31.755829, 26.826305>,  <25.299206, 31.826149, 26.901022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.685823, 31.755829, 26.826305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006246, 0.711867, -0.702287,
		0.256433, 0.679956, 0.686951,
		0.966542, -0.175798, -0.186793,
		25.975786, 31.703089, 26.770267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712006, 32.453850, 26.858124>,  <25.299206, 31.826149, 26.901022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.712006, 32.453850, 26.858124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918640, 32.195007, 26.633842>,  <26.042622, 32.039700, 26.499273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918640, 32.195007, 26.633842>,  <25.712006, 32.453850, 26.858124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918640, 32.195007, 26.633842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018644, 0.646189, -0.762949,
		0.856031, 0.404585, 0.321749,
		0.516588, -0.647109, -0.560701,
		26.073616, 32.000874, 26.465631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211178, 32.883774, 26.382511>,  <25.712006, 32.453850, 26.858124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211178, 32.883774, 26.382511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210812, 32.522156, 26.211533>,  <26.210592, 32.305187, 26.108946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210812, 32.522156, 26.211533>,  <26.211178, 32.883774, 26.382511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210812, 32.522156, 26.211533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211782, 0.417574, -0.883618,
		0.977317, -0.091336, 0.191076,
		-0.000918, -0.904041, -0.427445,
		26.210537, 32.250942, 26.083300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809233, 32.809334, 25.915579>,  <26.211178, 32.883774, 26.382511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809233, 32.809334, 25.915579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540415, 32.547810, 25.776501>,  <26.379124, 32.390896, 25.693054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540415, 32.547810, 25.776501>,  <26.809233, 32.809334, 25.915579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540415, 32.547810, 25.776501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166973, 0.323649, -0.931328,
		0.721439, -0.683951, -0.108339,
		-0.672046, -0.653806, -0.347695,
		26.338800, 32.351669, 25.672192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176691, 32.560352, 25.334190>,  <26.809233, 32.809334, 25.915579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176691, 32.560352, 25.334190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787182, 32.481083, 25.289474>,  <26.553476, 32.433521, 25.262646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787182, 32.481083, 25.289474>,  <27.176691, 32.560352, 25.334190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787182, 32.481083, 25.289474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018598, 0.558999, -0.828960,
		0.226766, -0.805138, -0.548023,
		-0.973771, -0.198172, -0.111788,
		26.495050, 32.421631, 25.255938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159864, 32.371181, 24.585970>,  <27.176691, 32.560352, 25.334190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159864, 32.371181, 24.585970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789135, 32.471020, 24.698181>,  <26.566696, 32.530922, 24.765509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789135, 32.471020, 24.698181>,  <27.159864, 32.371181, 24.585970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789135, 32.471020, 24.698181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200548, 0.302568, -0.931790,
		-0.317452, -0.919866, -0.230371,
		-0.926825, 0.249599, 0.280528,
		26.511087, 32.545898, 24.782339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750795, 32.377380, 23.947416>,  <27.159864, 32.371181, 24.585970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750795, 32.377380, 23.947416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575703, 32.631050, 24.202354>,  <26.470648, 32.783253, 24.355318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575703, 32.631050, 24.202354>,  <26.750795, 32.377380, 23.947416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575703, 32.631050, 24.202354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219927, 0.611811, -0.759816,
		-0.871793, -0.472765, -0.128337,
		-0.437732, 0.634177, 0.637346,
		26.444384, 32.821304, 24.393559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283531, 32.687031, 23.531916>,  <26.750795, 32.377380, 23.947416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283531, 32.687031, 23.531916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277586, 32.951988, 23.831520>,  <26.274019, 33.110962, 24.011284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277586, 32.951988, 23.831520>,  <26.283531, 32.687031, 23.531916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277586, 32.951988, 23.831520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074938, 0.747726, -0.659765,
		-0.997077, 0.046323, -0.060752,
		-0.014863, 0.662390, 0.749012,
		26.273127, 33.150703, 24.056223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736250, 33.102680, 23.432398>,  <26.283531, 32.687031, 23.531916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.736250, 33.102680, 23.432398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971745, 33.318359, 23.673283>,  <26.113041, 33.447765, 23.817814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971745, 33.318359, 23.673283>,  <25.736250, 33.102680, 23.432398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.971745, 33.318359, 23.673283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019493, 0.735324, -0.677436,
		-0.808089, 0.410571, 0.422403,
		0.588738, 0.539194, 0.602210,
		26.148367, 33.480118, 23.853945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.535032, 33.847893, 23.366884>,  <25.736250, 33.102680, 23.432398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.535032, 33.847893, 23.366884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894405, 33.862206, 23.541943>,  <26.110029, 33.870792, 23.646978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894405, 33.862206, 23.541943>,  <25.535032, 33.847893, 23.366884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.894405, 33.862206, 23.541943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231400, 0.808468, -0.541140,
		-0.373187, 0.587451, 0.718076,
		0.898435, 0.035783, 0.437646,
		26.163937, 33.872940, 23.673237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615276, 34.487537, 23.749044>,  <25.535032, 33.847893, 23.366884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615276, 34.487537, 23.749044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984531, 34.373367, 23.646008>,  <26.206083, 34.304867, 23.584185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984531, 34.373367, 23.646008>,  <25.615276, 34.487537, 23.749044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984531, 34.373367, 23.646008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124074, 0.855298, -0.503061,
		0.363904, 0.432434, 0.824970,
		0.923136, -0.285423, -0.257593,
		26.261473, 34.287739, 23.568729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076624, 35.051174, 23.899185>,  <25.615276, 34.487537, 23.749044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076624, 35.051174, 23.899185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205687, 34.821373, 23.598297>,  <26.283125, 34.683491, 23.417765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205687, 34.821373, 23.598297>,  <26.076624, 35.051174, 23.899185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205687, 34.821373, 23.598297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123105, 0.813446, -0.568463,
		0.938476, 0.090817, 0.333190,
		0.322658, -0.574507, -0.752219,
		26.302485, 34.649021, 23.372631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733192, 35.269211, 23.780704>,  <26.076624, 35.051174, 23.899185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733192, 35.269211, 23.780704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519356, 35.105431, 23.484985>,  <26.391054, 35.007160, 23.307554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519356, 35.105431, 23.484985>,  <26.733192, 35.269211, 23.780704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519356, 35.105431, 23.484985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019161, 0.880440, -0.473770,
		0.844894, -0.239108, -0.478521,
		-0.534591, -0.409454, -0.739297,
		26.358978, 34.982594, 23.263195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079161, 35.652561, 24.372398>,  <26.733192, 35.269211, 23.780704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079161, 35.652561, 24.372398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028549, 36.036877, 24.471092>,  <26.998182, 36.267467, 24.530308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028549, 36.036877, 24.471092>,  <27.079161, 35.652561, 24.372398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028549, 36.036877, 24.471092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563763, -0.135007, 0.814828,
		0.816187, 0.242200, -0.524574,
		-0.126530, 0.960787, 0.246734,
		26.990591, 36.325111, 24.545113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735260, 35.868153, 24.552483>,  <27.079161, 35.652561, 24.372398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735260, 35.868153, 24.552483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488255, 36.131538, 24.724575>,  <27.340052, 36.289570, 24.827831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488255, 36.131538, 24.724575>,  <27.735260, 35.868153, 24.552483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488255, 36.131538, 24.724575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606473, 0.050284, 0.793513,
		0.500869, 0.750927, -0.430394,
		-0.617512, 0.658468, 0.430231,
		27.303001, 36.329079, 24.853645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109182, 36.463364, 24.728737>,  <27.735260, 35.868153, 24.552483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109182, 36.463364, 24.728737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804201, 36.465706, 24.987545>,  <27.621212, 36.467110, 25.142830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804201, 36.465706, 24.987545>,  <28.109182, 36.463364, 24.728737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804201, 36.465706, 24.987545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641531, -0.123425, 0.757103,
		0.084291, 0.992337, 0.090349,
		-0.762452, 0.005855, 0.647018,
		27.575466, 36.467461, 25.181650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359793, 36.873295, 25.271334>,  <28.109182, 36.463364, 24.728737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359793, 36.873295, 25.271334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047909, 36.672924, 25.421600>,  <27.860779, 36.552700, 25.511761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047909, 36.672924, 25.421600>,  <28.359793, 36.873295, 25.271334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047909, 36.672924, 25.421600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536593, -0.225386, 0.813184,
		-0.322677, 0.835627, 0.444530,
		-0.779710, -0.500928, 0.375665,
		27.813995, 36.522644, 25.534300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324415, 37.158131, 25.899775>,  <28.359793, 36.873295, 25.271334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324415, 37.158131, 25.899775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133389, 36.807499, 25.923565>,  <28.018772, 36.597118, 25.937840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133389, 36.807499, 25.923565>,  <28.324415, 37.158131, 25.899775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133389, 36.807499, 25.923565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490374, -0.209763, 0.845892,
		-0.729017, 0.433134, 0.530027,
		-0.477565, -0.876581, 0.059477,
		27.990120, 36.544525, 25.941408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133879, 37.092968, 26.571951>,  <28.324415, 37.158131, 25.899775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133879, 37.092968, 26.571951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128849, 36.720753, 26.425556>,  <28.125832, 36.497425, 26.337719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128849, 36.720753, 26.425556>,  <28.133879, 37.092968, 26.571951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128849, 36.720753, 26.425556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567255, -0.308058, 0.763755,
		-0.823446, -0.198004, 0.531724,
		-0.012575, -0.930534, -0.365988,
		28.125076, 36.441593, 26.315760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891411, 36.670631, 27.073141>,  <28.133879, 37.092968, 26.571951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891411, 36.670631, 27.073141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068769, 36.397491, 26.840893>,  <28.175184, 36.233608, 26.701544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068769, 36.397491, 26.840893>,  <27.891411, 36.670631, 27.073141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068769, 36.397491, 26.840893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482410, -0.364150, 0.796665,
		-0.755433, -0.633335, 0.167949,
		0.443398, -0.682847, -0.580619,
		28.201788, 36.192638, 26.666708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809835, 35.969604, 27.370932>,  <27.891411, 36.670631, 27.073141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809835, 35.969604, 27.370932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144291, 35.935169, 27.154243>,  <28.344965, 35.914509, 27.024231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144291, 35.935169, 27.154243>,  <27.809835, 35.969604, 27.370932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144291, 35.935169, 27.154243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490700, -0.323943, 0.808872,
		-0.245118, -0.942152, -0.228620,
		0.836140, -0.086085, -0.541718,
		28.395132, 35.909344, 26.991728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091463, 35.358566, 27.495455>,  <27.809835, 35.969604, 27.370932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091463, 35.358566, 27.495455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409372, 35.518925, 27.313194>,  <28.600119, 35.615139, 27.203838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409372, 35.518925, 27.313194>,  <28.091463, 35.358566, 27.495455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409372, 35.518925, 27.313194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590279, -0.336071, 0.733912,
		0.141094, -0.852254, -0.503742,
		0.794773, 0.400899, -0.455650,
		28.647804, 35.639194, 27.176498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487583, 34.781002, 27.395864>,  <28.091463, 35.358566, 27.495455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487583, 34.781002, 27.395864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735495, 35.089031, 27.335392>,  <28.884241, 35.273849, 27.299109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735495, 35.089031, 27.335392>,  <28.487583, 34.781002, 27.395864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735495, 35.089031, 27.335392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651362, -0.397330, 0.646418,
		0.437722, -0.499111, -0.747855,
		0.619780, 0.770076, -0.151182,
		28.921429, 35.320053, 27.290037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118671, 34.495495, 27.132256>,  <28.487583, 34.781002, 27.395864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118671, 34.495495, 27.132256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164183, 34.843552, 27.324051>,  <29.191490, 35.052387, 27.439127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164183, 34.843552, 27.324051>,  <29.118671, 34.495495, 27.132256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164183, 34.843552, 27.324051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708384, -0.409442, 0.574933,
		0.696596, 0.274244, -0.662982,
		0.113780, 0.870142, 0.479486,
		29.198317, 35.104595, 27.467897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867266, 34.572887, 27.186337>,  <29.118671, 34.495495, 27.132256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867266, 34.572887, 27.186337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754297, 34.849483, 27.452293>,  <29.686516, 35.015442, 27.611868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754297, 34.849483, 27.452293>,  <29.867266, 34.572887, 27.186337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754297, 34.849483, 27.452293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687845, -0.337151, 0.642805,
		0.668661, 0.638885, -0.380418,
		-0.282420, 0.691488, 0.664894,
		29.669571, 35.056931, 27.651762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465542, 34.795433, 27.486477>,  <29.867266, 34.572887, 27.186337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465542, 34.795433, 27.486477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188234, 34.897053, 27.756245>,  <30.021851, 34.958023, 27.918106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188234, 34.897053, 27.756245>,  <30.465542, 34.795433, 27.486477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188234, 34.897053, 27.756245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579553, -0.359712, 0.731249,
		0.428367, 0.897813, 0.102144,
		-0.693267, 0.254045, 0.674419,
		29.980253, 34.973267, 27.958570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736130, 35.186646, 27.993416>,  <30.465542, 34.795433, 27.486477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736130, 35.186646, 27.993416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404764, 35.041420, 28.164021>,  <30.205944, 34.954285, 28.266384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404764, 35.041420, 28.164021>,  <30.736130, 35.186646, 27.993416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404764, 35.041420, 28.164021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548885, -0.374509, 0.747307,
		-0.111585, 0.853188, 0.509528,
		-0.828416, -0.363061, 0.426513,
		30.156239, 34.932503, 28.291975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198763, 35.794491, 28.120388>,  <30.736130, 35.186646, 27.993416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198763, 35.794491, 28.120388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510836, 36.024723, 28.218380>,  <31.698080, 36.162865, 28.277176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510836, 36.024723, 28.218380>,  <31.198763, 35.794491, 28.120388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510836, 36.024723, 28.218380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100633, 0.271042, -0.957293,
		-0.617403, 0.771517, 0.153540,
		0.780183, 0.575585, 0.244982,
		31.744890, 36.197399, 28.291874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107635, 36.507221, 27.826948>,  <31.198763, 35.794491, 28.120388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107635, 36.507221, 27.826948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491768, 36.418705, 27.894821>,  <31.722248, 36.365597, 27.935545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491768, 36.418705, 27.894821>,  <31.107635, 36.507221, 27.826948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491768, 36.418705, 27.894821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175304, 0.005864, -0.984497,
		0.216860, 0.975191, 0.044424,
		0.960333, -0.221286, 0.169683,
		31.779867, 36.352318, 27.945726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444456, 36.919125, 27.394855>,  <31.107635, 36.507221, 27.826948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444456, 36.919125, 27.394855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713818, 36.632515, 27.467651>,  <31.875435, 36.460548, 27.511330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713818, 36.632515, 27.467651>,  <31.444456, 36.919125, 27.394855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713818, 36.632515, 27.467651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286228, 0.025728, -0.957816,
		0.681616, 0.697088, 0.222415,
		0.673405, -0.716524, 0.181989,
		31.915838, 36.417557, 27.522247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062531, 37.132416, 26.991453>,  <31.444456, 36.919125, 27.394855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062531, 37.132416, 26.991453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128063, 36.747627, 27.078873>,  <32.167381, 36.516754, 27.131325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128063, 36.747627, 27.078873>,  <32.062531, 37.132416, 26.991453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128063, 36.747627, 27.078873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368606, -0.145802, -0.918081,
		0.915036, 0.230966, 0.330703,
		0.163828, -0.961975, 0.218549,
		32.177212, 36.459034, 27.144438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705662, 37.000332, 26.801727>,  <32.062531, 37.132416, 26.991453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705662, 37.000332, 26.801727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538376, 36.637028, 26.806755>,  <32.438004, 36.419044, 26.809771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538376, 36.637028, 26.806755>,  <32.705662, 37.000332, 26.801727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538376, 36.637028, 26.806755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415957, -0.203792, -0.886256,
		0.807514, -0.365415, 0.463026,
		-0.418212, -0.908263, 0.012568,
		32.412910, 36.364548, 26.810526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172482, 36.580334, 26.472935>,  <32.705662, 37.000332, 26.801727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172482, 36.580334, 26.472935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842091, 36.354870, 26.470081>,  <32.643856, 36.219593, 26.468370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842091, 36.354870, 26.470081>,  <33.172482, 36.580334, 26.472935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842091, 36.354870, 26.470081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303264, -0.433666, -0.848507,
		0.475173, -0.703012, 0.529136,
		-0.825979, -0.563655, -0.007132,
		32.594296, 36.185772, 26.467941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407825, 35.920887, 26.239204>,  <33.172482, 36.580334, 26.472935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407825, 35.920887, 26.239204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015034, 35.881882, 26.174438>,  <32.779358, 35.858479, 26.135580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015034, 35.881882, 26.174438>,  <33.407825, 35.920887, 26.239204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015034, 35.881882, 26.174438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181485, -0.247164, -0.951826,
		0.052793, -0.964055, 0.260406,
		-0.981975, -0.097510, -0.161913,
		32.720440, 35.852631, 26.125864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368847, 35.354065, 25.855158>,  <33.407825, 35.920887, 26.239204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368847, 35.354065, 25.855158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019154, 35.540352, 25.800285>,  <32.809338, 35.652126, 25.767361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019154, 35.540352, 25.800285>,  <33.368847, 35.354065, 25.855158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019154, 35.540352, 25.800285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039417, -0.349708, -0.936029,
		-0.483903, -0.812901, 0.324084,
		-0.874233, 0.465721, -0.137183,
		32.756882, 35.680069, 25.759130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954132, 34.831837, 25.572823>,  <33.368847, 35.354065, 25.855158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954132, 34.831837, 25.572823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790894, 35.185101, 25.480309>,  <32.692951, 35.397057, 25.424801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790894, 35.185101, 25.480309>,  <32.954132, 34.831837, 25.572823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790894, 35.185101, 25.480309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043406, -0.271823, -0.961368,
		-0.911908, -0.382288, 0.149264,
		-0.408093, 0.883158, -0.231284,
		32.668465, 35.450047, 25.410923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444893, 34.682270, 25.138762>,  <32.954132, 34.831837, 25.572823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444893, 34.682270, 25.138762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541550, 35.061211, 25.054726>,  <32.599545, 35.288574, 25.004305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541550, 35.061211, 25.054726>,  <32.444893, 34.682270, 25.138762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541550, 35.061211, 25.054726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181870, -0.256883, -0.949176,
		-0.953170, 0.191151, -0.234368,
		0.241641, 0.947350, -0.210089,
		32.614040, 35.345417, 24.991699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111645, 34.835255, 24.486366>,  <32.444893, 34.682270, 25.138762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111645, 34.835255, 24.486366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395466, 35.116516, 24.504723>,  <32.565758, 35.285275, 24.515736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395466, 35.116516, 24.504723>,  <32.111645, 34.835255, 24.486366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395466, 35.116516, 24.504723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254751, -0.195259, -0.947088,
		-0.656989, 0.683701, -0.317676,
		0.709554, 0.703155, 0.045891,
		32.608334, 35.327461, 24.518490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098984, 35.232948, 23.967611>,  <32.111645, 34.835255, 24.486366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098984, 35.232948, 23.967611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478336, 35.277664, 24.086319>,  <32.705948, 35.304493, 24.157543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478336, 35.277664, 24.086319>,  <32.098984, 35.232948, 23.967611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478336, 35.277664, 24.086319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303461, -0.048182, -0.951625,
		-0.092087, 0.992563, -0.079620,
		0.948383, 0.111794, 0.296768,
		32.762852, 35.311203, 24.175350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.473076, 36.035862, 31.821035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.837366, 35.887924, 31.894569>,  <31.055941, 35.799160, 31.938690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.837366, 35.887924, 31.894569>,  <30.473076, 36.035862, 31.821035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837366, 35.887924, 31.894569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386550, 0.606500, -0.694793,
		0.145472, 0.703825, 0.695318,
		0.910724, -0.369848, 0.183834,
		31.110582, 35.776970, 31.949720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969976, 36.599358, 31.787336>,  <30.473076, 36.035862, 31.821035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969976, 36.599358, 31.787336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.177011, 36.271130, 31.690369>,  <31.301233, 36.074192, 31.632189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.177011, 36.271130, 31.690369>,  <30.969976, 36.599358, 31.787336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177011, 36.271130, 31.690369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361463, 0.466495, -0.807296,
		0.775530, 0.330221, 0.538058,
		0.517588, -0.820571, -0.242418,
		31.332287, 36.024960, 31.617643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694420, 36.805389, 31.574186>,  <30.969976, 36.599358, 31.787336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694420, 36.805389, 31.574186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.646290, 36.449341, 31.398369>,  <31.617413, 36.235710, 31.292879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.646290, 36.449341, 31.398369>,  <31.694420, 36.805389, 31.574186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646290, 36.449341, 31.398369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336910, 0.379867, -0.861506,
		0.933816, -0.251747, 0.254185,
		-0.120324, -0.890126, -0.439542,
		31.610193, 36.182304, 31.266506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277931, 36.749573, 31.199919>,  <31.694420, 36.805389, 31.574186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277931, 36.749573, 31.199919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.041985, 36.464207, 31.048607>,  <31.900417, 36.292988, 30.957821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.041985, 36.464207, 31.048607>,  <32.277931, 36.749573, 31.199919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041985, 36.464207, 31.048607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288266, 0.251550, -0.923918,
		0.754295, -0.654033, 0.057273,
		-0.589866, -0.713417, -0.378278,
		31.865025, 36.250183, 30.935123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639378, 36.473701, 30.655811>,  <32.277931, 36.749573, 31.199919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639378, 36.473701, 30.655811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.282623, 36.337288, 30.536987>,  <32.068573, 36.255440, 30.465693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.282623, 36.337288, 30.536987>,  <32.639378, 36.473701, 30.655811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282623, 36.337288, 30.536987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318509, -0.007312, -0.947892,
		0.321088, -0.940024, 0.115143,
		-0.891883, -0.341031, -0.297059,
		32.015057, 36.234978, 30.447870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796673, 36.042179, 30.116016>,  <32.639378, 36.473701, 30.655811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796673, 36.042179, 30.116016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.404675, 36.106724, 30.069427>,  <32.169476, 36.145451, 30.041473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.404675, 36.106724, 30.069427>,  <32.796673, 36.042179, 30.116016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404675, 36.106724, 30.069427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087000, -0.178985, -0.979997,
		-0.178985, -0.970528, 0.161366,
		0.979997, -0.161366, 0.116472,
		32.110676, 36.155132, 30.034485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574429, 35.605141, 29.636438>,  <32.796673, 36.042179, 30.116016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574429, 35.605141, 29.636438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.292080, 35.887646, 29.614735>,  <32.122673, 36.057148, 29.601711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.292080, 35.887646, 29.614735>,  <32.574429, 35.605141, 29.636438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292080, 35.887646, 29.614735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020547, -0.096984, -0.995074,
		-0.708047, -0.701275, 0.082970,
		-0.705867, 0.706264, -0.054260,
		32.080318, 36.099525, 29.598457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089142, 35.261467, 29.154812>,  <32.574429, 35.605141, 29.636438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089142, 35.261467, 29.154812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.018764, 35.654560, 29.177696>,  <31.976538, 35.890415, 29.191427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.018764, 35.654560, 29.177696>,  <32.089142, 35.261467, 29.154812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018764, 35.654560, 29.177696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072454, 0.045032, -0.996355,
		-0.981730, -0.179449, 0.063280,
		-0.175945, 0.982736, 0.057211,
		31.965981, 35.949383, 29.194859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536715, 35.303905, 28.639706>,  <32.089142, 35.261467, 29.154812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536715, 35.303905, 28.639706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.680428, 35.672234, 28.700382>,  <31.766655, 35.893230, 28.736788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.680428, 35.672234, 28.700382>,  <31.536715, 35.303905, 28.639706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680428, 35.672234, 28.700382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066047, 0.137049, -0.988360,
		-0.930889, 0.365120, -0.011578,
		0.359283, 0.920818, 0.151692,
		31.788212, 35.948479, 28.745890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834553, 35.263321, 28.737486>,  <31.536715, 35.303905, 28.639706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834553, 35.263321, 28.737486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.538540, 34.997707, 28.694740>,  <30.360933, 34.838341, 28.669092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.538540, 34.997707, 28.694740>,  <30.834553, 35.263321, 28.737486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538540, 34.997707, 28.694740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488292, -0.639707, 0.593588,
		-0.462522, 0.387092, 0.797642,
		-0.740030, -0.664029, -0.106865,
		30.316530, 34.798500, 28.662682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646704, 35.061283, 29.451757>,  <30.834553, 35.263321, 28.737486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646704, 35.061283, 29.451757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.529400, 34.767632, 29.206791>,  <30.459017, 34.591438, 29.059811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.529400, 34.767632, 29.206791>,  <30.646704, 35.061283, 29.451757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529400, 34.767632, 29.206791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131496, -0.665464, 0.734757,
		-0.946947, 0.134944, 0.291688,
		-0.293259, -0.734131, -0.612414,
		30.441422, 34.547394, 29.023067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920570, 34.752476, 29.612434>,  <30.646704, 35.061283, 29.451757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920570, 34.752476, 29.612434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.144678, 34.478981, 29.425411>,  <30.279142, 34.314884, 29.313198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.144678, 34.478981, 29.425411>,  <29.920570, 34.752476, 29.612434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144678, 34.478981, 29.425411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021402, -0.552330, 0.833350,
		-0.828035, -0.476906, -0.294820,
		0.560268, -0.683734, -0.467556,
		30.312757, 34.273861, 29.285145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862436, 34.153133, 30.149065>,  <29.920570, 34.752476, 29.612434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862436, 34.153133, 30.149065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.107920, 34.038494, 29.854794>,  <30.255209, 33.969711, 29.678230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.107920, 34.038494, 29.854794>,  <29.862436, 34.153133, 30.149065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107920, 34.038494, 29.854794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180709, -0.856065, 0.484250,
		-0.768575, -0.430131, -0.473582,
		0.613707, -0.286602, -0.735678,
		30.292032, 33.952515, 29.634090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684469, 33.518818, 29.909378>,  <29.862436, 34.153133, 30.149065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684469, 33.518818, 29.909378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.074387, 33.554298, 29.827492>,  <30.308338, 33.575584, 29.778360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.074387, 33.554298, 29.827492>,  <29.684469, 33.518818, 29.909378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074387, 33.554298, 29.827492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188892, -0.816394, 0.545730,
		-0.118722, -0.570643, -0.812571,
		0.974795, 0.088698, -0.204714,
		30.366825, 33.580910, 29.766077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949291, 32.762962, 29.687958>,  <29.684469, 33.518818, 29.909378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949291, 32.762962, 29.687958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.272707, 32.981197, 29.776138>,  <30.466757, 33.112137, 29.829046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.272707, 32.981197, 29.776138>,  <29.949291, 32.762962, 29.687958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272707, 32.981197, 29.776138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319762, -0.721863, 0.613731,
		0.493979, -0.425734, -0.758113,
		0.808540, 0.545587, 0.220452,
		30.515268, 33.144875, 29.842274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468884, 32.175430, 29.701744>,  <29.949291, 32.762962, 29.687958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468884, 32.175430, 29.701744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.632877, 32.497601, 29.872955>,  <30.731274, 32.690903, 29.975681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.632877, 32.497601, 29.872955>,  <30.468884, 32.175430, 29.701744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632877, 32.497601, 29.872955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267161, -0.554744, 0.787962,
		0.872088, -0.208700, -0.442614,
		0.409985, 0.805421, 0.428029,
		30.755873, 32.739227, 30.001364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124250, 31.910643, 29.861059>,  <30.468884, 32.175430, 29.701744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124250, 31.910643, 29.861059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.022354, 32.206112, 30.110687>,  <30.961216, 32.383392, 30.260464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.022354, 32.206112, 30.110687>,  <31.124250, 31.910643, 29.861059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022354, 32.206112, 30.110687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135759, -0.611653, 0.779391,
		0.957432, 0.283265, 0.055531,
		-0.254740, 0.738675, 0.624072,
		30.945932, 32.427715, 30.297909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601866, 31.867390, 30.437500>,  <31.124250, 31.910643, 29.861059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601866, 31.867390, 30.437500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.286634, 32.074947, 30.569973>,  <31.097496, 32.199482, 30.649456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.286634, 32.074947, 30.569973>,  <31.601866, 31.867390, 30.437500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286634, 32.074947, 30.569973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011844, -0.550683, 0.834630,
		0.615463, 0.653830, 0.440127,
		-0.788077, 0.518896, 0.331181,
		31.050211, 32.230618, 30.669327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728283, 31.959148, 31.110115>,  <31.601866, 31.867390, 30.437500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728283, 31.959148, 31.110115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.335329, 32.033691, 31.115696>,  <31.099558, 32.078419, 31.119043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.335329, 32.033691, 31.115696>,  <31.728283, 31.959148, 31.110115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335329, 32.033691, 31.115696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063739, -0.404308, 0.912399,
		0.175672, 0.895436, 0.409064,
		-0.982383, 0.186356, 0.013951,
		31.040613, 32.089600, 31.119881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563848, 32.286209, 31.696655>,  <31.728283, 31.959148, 31.110115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563848, 32.286209, 31.696655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.208828, 32.130478, 31.598125>,  <30.995815, 32.037037, 31.539007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.208828, 32.130478, 31.598125>,  <31.563848, 32.286209, 31.696655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208828, 32.130478, 31.598125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168813, -0.222652, 0.960171,
		-0.428668, 0.893783, 0.131891,
		-0.887550, -0.389330, -0.246326,
		30.942562, 32.013680, 31.524227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100990, 32.679813, 32.035435>,  <31.563848, 32.286209, 31.696655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100990, 32.679813, 32.035435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.911245, 32.334705, 31.965462>,  <30.797400, 32.127640, 31.923477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.911245, 32.334705, 31.965462>,  <31.100990, 32.679813, 32.035435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911245, 32.334705, 31.965462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096286, -0.146674, 0.984488,
		-0.875049, 0.483847, -0.013497,
		-0.474361, -0.862774, -0.174934,
		30.768936, 32.075874, 31.912981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383007, 32.643875, 32.343689>,  <31.100990, 32.679813, 32.035435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383007, 32.643875, 32.343689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.525726, 32.272305, 32.304092>,  <30.611359, 32.049362, 32.280334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.525726, 32.272305, 32.304092>,  <30.383007, 32.643875, 32.343689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525726, 32.272305, 32.304092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235225, -0.191885, 0.952811,
		-0.904082, -0.316677, -0.286970,
		0.356799, -0.928922, -0.098989,
		30.632767, 31.993628, 32.274395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800421, 32.436035, 32.655560>,  <30.383007, 32.643875, 32.343689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800421, 32.436035, 32.655560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.107254, 32.181969, 32.619450>,  <30.291355, 32.029530, 32.597782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.107254, 32.181969, 32.619450>,  <29.800421, 32.436035, 32.655560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107254, 32.181969, 32.619450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182666, -0.351126, 0.918337,
		-0.614992, -0.687952, -0.385366,
		0.767084, -0.635163, -0.090274,
		30.337379, 31.991421, 32.592369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.204727, 29.450291, 31.632496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.950661, 29.751598, 31.700783>,  <32.798222, 29.932383, 31.741755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.950661, 29.751598, 31.700783>,  <33.204727, 29.450291, 31.632496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950661, 29.751598, 31.700783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072434, 0.161961, -0.984135,
		-0.768968, -0.637459, -0.048310,
		-0.635170, 0.753269, 0.170716,
		32.760109, 29.977579, 31.751997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689770, 29.383308, 31.096218>,  <33.204727, 29.450291, 31.632496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689770, 29.383308, 31.096218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.626728, 29.765263, 31.196899>,  <32.588905, 29.994434, 31.257309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.626728, 29.765263, 31.196899>,  <32.689770, 29.383308, 31.096218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626728, 29.765263, 31.196899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122058, 0.234099, -0.964520,
		-0.979931, -0.182731, 0.079657,
		-0.157601, 0.954886, 0.251705,
		32.579449, 30.051729, 31.272411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105892, 29.562513, 30.788723>,  <32.689770, 29.383308, 31.096218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105892, 29.562513, 30.788723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.292236, 29.912056, 30.844357>,  <32.404041, 30.121782, 30.877737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.292236, 29.912056, 30.844357>,  <32.105892, 29.562513, 30.788723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292236, 29.912056, 30.844357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132851, 0.224475, -0.965381,
		-0.874828, 0.431257, 0.220668,
		0.465862, 0.873858, 0.139084,
		32.431995, 30.174213, 30.886082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666842, 30.156998, 30.536900>,  <32.105892, 29.562513, 30.788723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666842, 30.156998, 30.536900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.045567, 30.284668, 30.520550>,  <32.272800, 30.361271, 30.510740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.045567, 30.284668, 30.520550>,  <31.666842, 30.156998, 30.536900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045567, 30.284668, 30.520550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149896, 0.325085, -0.933730,
		-0.284737, 0.890195, 0.355638,
		0.946814, 0.319176, -0.040873,
		32.329609, 30.380421, 30.508287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600378, 30.819542, 30.266121>,  <31.666842, 30.156998, 30.536900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600378, 30.819542, 30.266121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.970919, 30.690796, 30.187866>,  <32.193245, 30.613548, 30.140913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.970919, 30.690796, 30.187866>,  <31.600378, 30.819542, 30.266121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970919, 30.690796, 30.187866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137071, 0.195716, -0.971034,
		0.350830, 0.926336, 0.137184,
		0.926353, -0.321864, -0.195637,
		32.248825, 30.594236, 30.129175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721449, 31.156221, 29.671793>,  <31.600378, 30.819542, 30.266121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721449, 31.156221, 29.671793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.031834, 30.905521, 29.700268>,  <32.218063, 30.755102, 29.717352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.031834, 30.905521, 29.700268>,  <31.721449, 31.156221, 29.671793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031834, 30.905521, 29.700268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106098, 0.018438, -0.994185,
		0.621792, 0.779003, 0.080803,
		0.775963, -0.626749, 0.071186,
		32.264622, 30.717497, 29.721624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157967, 31.525202, 29.339867>,  <31.721449, 31.156221, 29.671793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157967, 31.525202, 29.339867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.309769, 31.155163, 29.334656>,  <32.400848, 30.933140, 29.331530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.309769, 31.155163, 29.334656>,  <32.157967, 31.525202, 29.339867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309769, 31.155163, 29.334656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311995, 0.141222, -0.939529,
		0.870996, 0.352492, 0.342221,
		0.379506, -0.925098, -0.013028,
		32.423622, 30.877634, 29.330748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788265, 31.535940, 28.958727>,  <32.157967, 31.525202, 29.339867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788265, 31.535940, 28.958727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.685879, 31.149273, 28.956287>,  <32.624447, 30.917273, 28.954824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.685879, 31.149273, 28.956287>,  <32.788265, 31.535940, 28.958727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685879, 31.149273, 28.956287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185234, -0.042854, -0.981760,
		0.948773, -0.252426, 0.190029,
		-0.255965, -0.966667, -0.006099,
		32.609089, 30.859272, 28.954458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257370, 31.201565, 28.519140>,  <32.788265, 31.535940, 28.958727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257370, 31.201565, 28.519140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.959816, 30.935326, 28.543175>,  <32.781284, 30.775581, 28.557596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.959816, 30.935326, 28.543175>,  <33.257370, 31.201565, 28.519140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959816, 30.935326, 28.543175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051589, -0.146830, -0.987815,
		0.666310, -0.731724, 0.143563,
		-0.743888, -0.665597, 0.060086,
		32.736649, 30.735647, 28.561201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447598, 30.472441, 28.343462>,  <33.257370, 31.201565, 28.519140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447598, 30.472441, 28.343462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.059116, 30.545803, 28.282623>,  <32.826027, 30.589821, 28.246120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.059116, 30.545803, 28.282623>,  <33.447598, 30.472441, 28.343462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059116, 30.545803, 28.282623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125671, -0.148021, -0.980967,
		-0.202432, -0.971828, 0.120709,
		-0.971199, 0.183409, -0.152095,
		32.767757, 30.600824, 28.236996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350132, 30.254282, 27.695509>,  <33.447598, 30.472441, 28.343462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350132, 30.254282, 27.695509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.993225, 30.425613, 27.752625>,  <32.779079, 30.528412, 27.786894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.993225, 30.425613, 27.752625>,  <33.350132, 30.254282, 27.695509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993225, 30.425613, 27.752625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109140, 0.102263, -0.988752,
		-0.438111, -0.897819, -0.044498,
		-0.892271, 0.428327, 0.142791,
		32.725544, 30.554111, 27.795462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840176, 29.947252, 27.261045>,  <33.350132, 30.254282, 27.695509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840176, 29.947252, 27.261045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.680008, 30.304836, 27.341549>,  <32.583908, 30.519386, 27.389851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.680008, 30.304836, 27.341549>,  <32.840176, 29.947252, 27.261045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680008, 30.304836, 27.341549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334372, 0.061945, -0.940403,
		-0.853149, -0.443847, 0.274111,
		-0.400415, 0.893959, 0.201258,
		32.559883, 30.573025, 27.401926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280647, 29.937151, 26.877230>,  <32.840176, 29.947252, 27.261045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280647, 29.937151, 26.877230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.340637, 30.323586, 26.961308>,  <32.376629, 30.555447, 27.011755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.340637, 30.323586, 26.961308>,  <32.280647, 29.937151, 26.877230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340637, 30.323586, 26.961308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218367, 0.239717, -0.945966,
		-0.964274, 0.095967, 0.246912,
		0.149971, 0.966088, 0.210197,
		32.385628, 30.613413, 27.024366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704847, 30.299986, 26.623558>,  <32.280647, 29.937151, 26.877230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704847, 30.299986, 26.623558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.007347, 30.561691, 26.621639>,  <32.188847, 30.718716, 26.620489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.007347, 30.561691, 26.621639>,  <31.704847, 30.299986, 26.623558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007347, 30.561691, 26.621639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267723, 0.302751, -0.914695,
		-0.597002, 0.693021, 0.404117,
		0.756250, 0.654266, -0.004795,
		32.234222, 30.757971, 26.620201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096472, 30.780998, 26.924215>,  <31.704847, 30.299986, 26.623558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096472, 30.780998, 26.924215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.727543, 30.644184, 26.852287>,  <30.506186, 30.562096, 26.809130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.727543, 30.644184, 26.852287>,  <31.096472, 30.780998, 26.924215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727543, 30.644184, 26.852287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042140, -0.373544, 0.926655,
		-0.384120, 0.862251, 0.330114,
		-0.922321, -0.342036, -0.179821,
		30.450846, 30.541573, 26.798342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653372, 30.955875, 27.484917>,  <31.096472, 30.780998, 26.924215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653372, 30.955875, 27.484917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.486008, 30.635563, 27.313484>,  <30.385590, 30.443377, 27.210625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.486008, 30.635563, 27.313484>,  <30.653372, 30.955875, 27.484917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486008, 30.635563, 27.313484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214962, -0.371157, 0.903346,
		-0.882453, 0.470100, -0.016841,
		-0.418412, -0.800780, -0.428582,
		30.360483, 30.395329, 27.184910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950033, 30.816618, 27.815828>,  <30.653372, 30.955875, 27.484917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950033, 30.816618, 27.815828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.044193, 30.467548, 27.644703>,  <30.100689, 30.258106, 27.542027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.044193, 30.467548, 27.644703>,  <29.950033, 30.816618, 27.815828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044193, 30.467548, 27.644703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325403, -0.485547, 0.811391,
		-0.915806, -0.051788, -0.398268,
		0.235398, -0.872675, -0.427815,
		30.114813, 30.205746, 27.516357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337524, 30.461672, 27.864496>,  <29.950033, 30.816618, 27.815828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337524, 30.461672, 27.864496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.628197, 30.191799, 27.812740>,  <29.802601, 30.029877, 27.781687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.628197, 30.191799, 27.812740>,  <29.337524, 30.461672, 27.864496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628197, 30.191799, 27.812740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309468, -0.489652, 0.815151,
		-0.613324, -0.552311, -0.564612,
		0.726680, -0.674681, -0.129393,
		29.846201, 29.989395, 27.773922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047665, 29.776047, 27.838282>,  <29.337524, 30.461672, 27.864496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047665, 29.776047, 27.838282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.424883, 29.707027, 27.952049>,  <29.651213, 29.665615, 28.020309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.424883, 29.707027, 27.952049>,  <29.047665, 29.776047, 27.838282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424883, 29.707027, 27.952049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330947, -0.573418, 0.749443,
		0.033776, -0.800886, -0.597863,
		0.943045, -0.172548, 0.284419,
		29.707796, 29.655262, 28.037374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976490, 29.058697, 28.152822>,  <29.047665, 29.776047, 27.838282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976490, 29.058697, 28.152822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.331556, 29.194065, 28.277737>,  <29.544596, 29.275286, 28.352686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.331556, 29.194065, 28.277737>,  <28.976490, 29.058697, 28.152822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331556, 29.194065, 28.277737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091467, -0.535074, 0.839839,
		0.451314, -0.774059, -0.444013,
		0.887665, 0.338419, 0.312288,
		29.597857, 29.295591, 28.371424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238907, 28.461586, 28.456268>,  <28.976490, 29.058697, 28.152822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238907, 28.461586, 28.456268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.439817, 28.773773, 28.605179>,  <29.560364, 28.961084, 28.694525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.439817, 28.773773, 28.605179>,  <29.238907, 28.461586, 28.456268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439817, 28.773773, 28.605179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125748, -0.491873, 0.861538,
		0.855515, -0.385918, -0.345198,
		0.502276, 0.780467, 0.372276,
		29.590500, 29.007914, 28.716862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848995, 28.318550, 28.684210>,  <29.238907, 28.461586, 28.456268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848995, 28.318550, 28.684210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.760735, 28.641628, 28.902912>,  <29.707777, 28.835474, 29.034134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.760735, 28.641628, 28.902912>,  <29.848995, 28.318550, 28.684210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760735, 28.641628, 28.902912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253825, -0.493705, 0.831762,
		0.941745, 0.322312, -0.096075,
		-0.220654, 0.807694, 0.546756,
		29.694538, 28.883936, 29.066938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416374, 28.455223, 29.135080>,  <29.848995, 28.318550, 28.684210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416374, 28.455223, 29.135080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.110397, 28.641880, 29.312668>,  <29.926811, 28.753874, 29.419220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.110397, 28.641880, 29.312668>,  <30.416374, 28.455223, 29.135080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110397, 28.641880, 29.312668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313487, -0.332411, 0.889511,
		0.562666, 0.819601, 0.107987,
		-0.764940, 0.466645, 0.443970,
		29.880915, 28.781874, 29.445858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736757, 28.712589, 29.690439>,  <30.416374, 28.455223, 29.135080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736757, 28.712589, 29.690439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.349180, 28.741760, 29.784950>,  <30.116634, 28.759264, 29.841658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.349180, 28.741760, 29.784950>,  <30.736757, 28.712589, 29.690439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349180, 28.741760, 29.784950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173939, -0.478148, 0.860883,
		0.175760, 0.875246, 0.450614,
		-0.968945, 0.072929, 0.236279,
		30.058496, 28.763639, 29.855833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670061, 28.983601, 30.348667>,  <30.736757, 28.712589, 29.690439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670061, 28.983601, 30.348667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.318844, 28.794918, 30.316349>,  <30.108112, 28.681707, 30.296959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.318844, 28.794918, 30.316349>,  <30.670061, 28.983601, 30.348667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318844, 28.794918, 30.316349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089025, -0.326865, 0.940869,
		-0.470224, 0.818933, 0.328996,
		-0.878045, -0.471708, -0.080795,
		30.055429, 28.653406, 30.292110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427937, 29.023197, 31.037670>,  <30.670061, 28.983601, 30.348667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427937, 29.023197, 31.037670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.195477, 28.746414, 30.866341>,  <30.056002, 28.580345, 30.763544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.195477, 28.746414, 30.866341>,  <30.427937, 29.023197, 31.037670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195477, 28.746414, 30.866341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000365, -0.526104, 0.850420,
		-0.813797, 0.494377, 0.305492,
		-0.581149, -0.691958, -0.428322,
		30.021132, 28.538826, 30.737844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816837, 28.956522, 31.472342>,  <30.427937, 29.023197, 31.037670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816837, 28.956522, 31.472342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.862011, 28.615299, 31.268562>,  <29.889114, 28.410564, 31.146296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.862011, 28.615299, 31.268562>,  <29.816837, 28.956522, 31.472342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862011, 28.615299, 31.268562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115683, -0.520529, 0.845971,
		-0.986845, -0.036605, -0.157470,
		0.112935, -0.853059, -0.509447,
		29.895891, 28.359381, 31.115728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264168, 28.536127, 31.596830>,  <29.816837, 28.956522, 31.472342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264168, 28.536127, 31.596830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.555120, 28.283592, 31.489250>,  <29.729692, 28.132072, 31.424702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.555120, 28.283592, 31.489250>,  <29.264168, 28.536127, 31.596830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555120, 28.283592, 31.489250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058132, -0.447201, 0.892542,
		-0.683769, -0.633582, -0.361986,
		0.727379, -0.631336, -0.268951,
		29.773335, 28.094193, 31.408566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521091, 28.474417, 31.349968>,  <29.264168, 28.536127, 31.596830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521091, 28.474417, 31.349968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.212507, 28.570065, 31.585823>,  <28.027357, 28.627453, 31.727337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.212507, 28.570065, 31.585823>,  <28.521091, 28.474417, 31.349968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212507, 28.570065, 31.585823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525955, 0.281871, -0.802446,
		-0.358084, -0.929177, -0.091685,
		-0.771458, 0.239121, 0.589639,
		27.981070, 28.641800, 31.762714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892479, 28.163441, 31.052885>,  <28.521091, 28.474417, 31.349968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892479, 28.163441, 31.052885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.803089, 28.495743, 31.256809>,  <27.749454, 28.695124, 31.379164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.803089, 28.495743, 31.256809>,  <27.892479, 28.163441, 31.052885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803089, 28.495743, 31.256809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643127, 0.267350, -0.717574,
		-0.732425, -0.488232, 0.474535,
		-0.223476, 0.830755, 0.509809,
		27.736046, 28.744968, 31.409752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170174, 28.295515, 31.102407>,  <27.892479, 28.163441, 31.052885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170174, 28.295515, 31.102407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.354469, 28.646523, 31.155598>,  <27.465046, 28.857126, 31.187511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.354469, 28.646523, 31.155598>,  <27.170174, 28.295515, 31.102407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354469, 28.646523, 31.155598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637035, 0.431289, -0.638887,
		-0.617986, 0.209649, 0.757721,
		0.460739, 0.877518, 0.132977,
		27.492691, 28.909779, 31.195490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694010, 28.692614, 31.028999>,  <27.170174, 28.295515, 31.102407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694010, 28.692614, 31.028999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.988611, 28.961189, 30.996170>,  <27.165371, 29.122334, 30.976473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.988611, 28.961189, 30.996170>,  <26.694010, 28.692614, 31.028999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988611, 28.961189, 30.996170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539120, 0.509377, -0.670734,
		-0.408550, 0.538244, 0.737143,
		0.736503, 0.671438, -0.082072,
		27.209562, 29.162621, 30.971548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405617, 29.456203, 31.027330>,  <26.694010, 28.692614, 31.028999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405617, 29.456203, 31.027330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.760410, 29.479202, 30.844048>,  <26.973286, 29.493002, 30.734077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.760410, 29.479202, 30.844048>,  <26.405617, 29.456203, 31.027330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.760410, 29.479202, 30.844048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412623, 0.544228, -0.730450,
		0.207370, 0.836965, 0.506447,
		0.886984, 0.057498, -0.458207,
		27.026505, 29.496452, 30.706585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436834, 30.254288, 30.695074>,  <26.405617, 29.456203, 31.027330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436834, 30.254288, 30.695074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.731628, 30.052345, 30.515308>,  <26.908504, 29.931181, 30.407450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.731628, 30.052345, 30.515308>,  <26.436834, 30.254288, 30.695074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731628, 30.052345, 30.515308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150408, 0.525737, -0.837244,
		0.658960, 0.684634, 0.311527,
		0.736987, -0.504854, -0.449414,
		26.952724, 29.900888, 30.380484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822273, 30.782919, 30.470768>,  <26.436834, 30.254288, 30.695074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822273, 30.782919, 30.470768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.916718, 30.461323, 30.252464>,  <26.973385, 30.268366, 30.121483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.916718, 30.461323, 30.252464>,  <26.822273, 30.782919, 30.470768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916718, 30.461323, 30.252464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118986, 0.533491, -0.837394,
		0.964414, 0.262655, 0.030299,
		0.236110, -0.803990, -0.545759,
		26.987551, 30.220125, 30.088737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256012, 31.002758, 30.054199>,  <26.822273, 30.782919, 30.470768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256012, 31.002758, 30.054199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.070978, 30.688538, 29.889797>,  <26.959959, 30.500006, 29.791155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.070978, 30.688538, 29.889797>,  <27.256012, 31.002758, 30.054199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070978, 30.688538, 29.889797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213600, 0.548682, -0.808284,
		0.860461, -0.286107, -0.421604,
		-0.462582, -0.785551, -0.411007,
		26.932203, 30.452871, 29.766495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.510405, 30.978193, 29.426849>,  <27.256012, 31.002758, 30.054199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.510405, 30.978193, 29.426849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.186344, 30.748692, 29.378742>,  <26.991907, 30.610991, 29.349878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.186344, 30.748692, 29.378742>,  <27.510405, 30.978193, 29.426849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186344, 30.748692, 29.378742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231130, 0.501163, -0.833915,
		0.538739, -0.647796, -0.538629,
		-0.810147, -0.573756, -0.120272,
		26.943298, 30.576567, 29.342661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565413, 30.852711, 28.738035>,  <27.510405, 30.978193, 29.426849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565413, 30.852711, 28.738035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.182114, 30.781403, 28.827461>,  <26.952135, 30.738617, 28.881117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.182114, 30.781403, 28.827461>,  <27.565413, 30.852711, 28.738035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182114, 30.781403, 28.827461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279467, 0.418460, -0.864169,
		0.060502, -0.890568, -0.450809,
		-0.958247, -0.178270, 0.223567,
		26.894640, 30.727921, 28.894531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363466, 30.544621, 28.128357>,  <27.565413, 30.852711, 28.738035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363466, 30.544621, 28.128357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.026106, 30.646606, 28.317532>,  <26.823690, 30.707798, 28.431036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.026106, 30.646606, 28.317532>,  <27.363466, 30.544621, 28.128357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.026106, 30.646606, 28.317532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429562, 0.208733, -0.878582,
		-0.322727, -0.944152, -0.066522,
		-0.843400, 0.254967, 0.472935,
		26.773087, 30.723097, 28.459412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881062, 30.201891, 27.695518>,  <27.363466, 30.544621, 28.128357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881062, 30.201891, 27.695518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.673512, 30.472385, 27.904697>,  <26.548981, 30.634682, 28.030205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.673512, 30.472385, 27.904697>,  <26.881062, 30.201891, 27.695518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673512, 30.472385, 27.904697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449499, 0.304516, -0.839774,
		-0.727131, -0.670802, 0.145962,
		-0.518875, 0.676235, 0.522948,
		26.517849, 30.675257, 28.061583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181707, 30.129459, 27.625223>,  <26.881062, 30.201891, 27.695518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181707, 30.129459, 27.625223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.250902, 30.514381, 27.709167>,  <26.292419, 30.745335, 27.759535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.250902, 30.514381, 27.709167>,  <26.181707, 30.129459, 27.625223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.250902, 30.514381, 27.709167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490865, 0.268960, -0.828681,
		-0.853890, 0.040335, 0.518889,
		0.172985, 0.962306, 0.209863,
		26.302797, 30.803074, 27.772127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650249, 30.537004, 27.295879>,  <26.181707, 30.129459, 27.625223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650249, 30.537004, 27.295879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.926619, 30.821133, 27.349644>,  <26.092440, 30.991610, 27.381903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.926619, 30.821133, 27.349644>,  <25.650249, 30.537004, 27.295879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926619, 30.821133, 27.349644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285690, 0.439072, -0.851820,
		-0.664082, 0.550144, 0.506297,
		0.690924, 0.710322, 0.134409,
		26.133896, 31.034229, 27.389967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.863338, 32.699875, 15.553908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.250759, 32.694973, 15.653317>,  <43.483212, 32.692032, 15.712963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.250759, 32.694973, 15.653317>,  <42.863338, 32.699875, 15.553908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250759, 32.694973, 15.653317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248322, 0.015815, 0.968548,
		-0.015811, -0.999800, 0.012271,
		0.968548, -0.012266, 0.248523,
		43.541325, 32.691296, 15.727874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896080, 32.218639, 16.107609>,  <42.863338, 32.699875, 15.553908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896080, 32.218639, 16.107609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.217625, 32.453468, 16.145882>,  <43.410553, 32.594364, 16.168846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.217625, 32.453468, 16.145882>,  <42.896080, 32.218639, 16.107609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217625, 32.453468, 16.145882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243341, 0.177794, 0.953506,
		0.542763, -0.789771, 0.285780,
		0.803861, 0.587070, 0.095684,
		43.458782, 32.629589, 16.174587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314545, 31.965879, 16.705105>,  <42.896080, 32.218639, 16.107609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314545, 31.965879, 16.705105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.377502, 32.359142, 16.667942>,  <43.415276, 32.595100, 16.645643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.377502, 32.359142, 16.667942>,  <43.314545, 31.965879, 16.705105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377502, 32.359142, 16.667942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237259, 0.128972, 0.962847,
		0.958611, -0.129503, 0.253562,
		0.157394, 0.983156, -0.092909,
		43.424721, 32.654091, 16.640070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.596333, 32.169437, 17.359362>,  <43.314545, 31.965879, 16.705105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.596333, 32.169437, 17.359362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.468136, 32.517532, 17.209705>,  <43.391216, 32.726387, 17.119911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.468136, 32.517532, 17.209705>,  <43.596333, 32.169437, 17.359362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468136, 32.517532, 17.209705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276521, 0.291819, 0.915629,
		0.905992, 0.396908, 0.147113,
		-0.320491, 0.870233, -0.374140,
		43.371990, 32.778603, 17.097464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748989, 32.743496, 17.813866>,  <43.596333, 32.169437, 17.359362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748989, 32.743496, 17.813866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.441383, 32.879528, 17.597363>,  <43.256821, 32.961147, 17.467461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.441383, 32.879528, 17.597363>,  <43.748989, 32.743496, 17.813866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441383, 32.879528, 17.597363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351460, 0.482318, 0.802400,
		0.533937, 0.807289, -0.251386,
		-0.769017, 0.340079, -0.541257,
		43.210678, 32.981552, 17.434986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778198, 33.487556, 17.912668>,  <43.748989, 32.743496, 17.813866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778198, 33.487556, 17.912668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.412029, 33.361607, 17.812382>,  <43.192329, 33.286037, 17.752211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.412029, 33.361607, 17.812382>,  <43.778198, 33.487556, 17.912668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412029, 33.361607, 17.812382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392586, 0.561114, 0.728716,
		-0.088776, 0.765508, -0.637272,
		-0.915420, -0.314877, -0.250714,
		43.137402, 33.267143, 17.737167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494591, 33.946033, 18.191641>,  <43.778198, 33.487556, 17.912668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494591, 33.946033, 18.191641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.190449, 33.715340, 18.072147>,  <43.007965, 33.576923, 18.000452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.190449, 33.715340, 18.072147>,  <43.494591, 33.946033, 18.191641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190449, 33.715340, 18.072147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518424, 0.261818, 0.814057,
		-0.391279, 0.773841, -0.498066,
		-0.760353, -0.576733, -0.298734,
		42.962341, 33.542320, 17.982527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817158, 34.295082, 18.179083>,  <43.494591, 33.946033, 18.191641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817158, 34.295082, 18.179083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.736752, 33.903980, 18.203014>,  <42.688507, 33.669319, 18.217373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.736752, 33.903980, 18.203014>,  <42.817158, 34.295082, 18.179083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736752, 33.903980, 18.203014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630398, 0.175867, 0.756088,
		-0.749794, 0.114271, -0.651729,
		-0.201017, -0.977759, 0.059827,
		42.676445, 33.610653, 18.220963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048615, 34.308922, 18.236292>,  <42.817158, 34.295082, 18.179083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048615, 34.308922, 18.236292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.189980, 33.957191, 18.363972>,  <42.274799, 33.746155, 18.440578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.189980, 33.957191, 18.363972>,  <42.048615, 34.308922, 18.236292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189980, 33.957191, 18.363972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600667, 0.048276, 0.798041,
		-0.717146, -0.473770, -0.511120,
		0.353413, -0.879324, 0.319199,
		42.296005, 33.693394, 18.459732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497215, 33.961376, 18.473436>,  <42.048615, 34.308922, 18.236292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497215, 33.961376, 18.473436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.819454, 33.784058, 18.630665>,  <42.012798, 33.677666, 18.725002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.819454, 33.784058, 18.630665>,  <41.497215, 33.961376, 18.473436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819454, 33.784058, 18.630665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459966, -0.049796, 0.886539,
		-0.373424, -0.894992, -0.244016,
		0.805596, -0.443294, 0.393071,
		42.061134, 33.651070, 18.748587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293182, 33.419983, 18.824381>,  <41.497215, 33.961376, 18.473436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293182, 33.419983, 18.824381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.638603, 33.525906, 18.996033>,  <41.845856, 33.589458, 19.099024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.638603, 33.525906, 18.996033>,  <41.293182, 33.419983, 18.824381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638603, 33.525906, 18.996033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439779, -0.020876, 0.897864,
		0.246717, -0.964076, 0.098427,
		0.863554, 0.264804, 0.429131,
		41.897671, 33.605347, 19.124771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309845, 33.038010, 19.397789>,  <41.293182, 33.419983, 18.824381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309845, 33.038010, 19.397789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.579777, 33.318974, 19.488316>,  <41.741737, 33.487553, 19.542631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.579777, 33.318974, 19.488316>,  <41.309845, 33.038010, 19.397789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579777, 33.318974, 19.488316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306715, -0.011972, 0.951726,
		0.671214, -0.711669, 0.207362,
		0.674831, 0.702413, 0.226315,
		41.782227, 33.529697, 19.556210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618176, 32.876858, 20.015129>,  <41.309845, 33.038010, 19.397789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618176, 32.876858, 20.015129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.693913, 33.267845, 19.977825>,  <41.739353, 33.502438, 19.955442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.693913, 33.267845, 19.977825>,  <41.618176, 32.876858, 20.015129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693913, 33.267845, 19.977825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358094, 0.157175, 0.920361,
		0.914286, -0.140864, 0.379787,
		0.189338, 0.977473, -0.093261,
		41.750713, 33.561089, 19.949846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024292, 33.091984, 20.612240>,  <41.618176, 32.876858, 20.015129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024292, 33.091984, 20.612240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.832958, 33.420643, 20.488247>,  <41.718159, 33.617840, 20.413851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.832958, 33.420643, 20.488247>,  <42.024292, 33.091984, 20.612240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832958, 33.420643, 20.488247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297921, 0.180221, 0.937424,
		0.826098, 0.540754, 0.158580,
		-0.478336, 0.821648, -0.309981,
		41.689457, 33.667137, 20.395252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956848, 33.595837, 21.210138>,  <42.024292, 33.091984, 20.612240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956848, 33.595837, 21.210138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.686142, 33.719940, 20.943089>,  <41.523716, 33.794403, 20.782858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.686142, 33.719940, 20.943089>,  <41.956848, 33.595837, 21.210138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686142, 33.719940, 20.943089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633276, 0.217112, 0.742848,
		0.375424, 0.925528, 0.049545,
		-0.676770, 0.310259, -0.667624,
		41.483112, 33.813019, 20.742802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673203, 34.126728, 21.621210>,  <41.956848, 33.595837, 21.210138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673203, 34.126728, 21.621210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.404106, 34.093136, 21.327171>,  <41.242649, 34.072979, 21.150747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.404106, 34.093136, 21.327171>,  <41.673203, 34.126728, 21.621210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404106, 34.093136, 21.327171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721726, 0.293221, 0.627004,
		0.162891, 0.952349, -0.257871,
		-0.672740, -0.083979, -0.735098,
		41.202286, 34.067944, 21.106642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335892, 34.748901, 21.515747>,  <41.673203, 34.126728, 21.621210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335892, 34.748901, 21.515747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.062241, 34.494556, 21.372837>,  <40.898048, 34.341949, 21.287090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.062241, 34.494556, 21.372837>,  <41.335892, 34.748901, 21.515747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062241, 34.494556, 21.372837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667828, 0.349195, 0.657320,
		-0.293204, 0.688292, -0.663540,
		-0.684132, -0.635860, -0.357275,
		40.857002, 34.303799, 21.265654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776176, 35.139668, 21.435589>,  <41.335892, 34.748901, 21.515747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776176, 35.139668, 21.435589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.644241, 34.762646, 21.456715>,  <40.565079, 34.536430, 21.469391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.644241, 34.762646, 21.456715>,  <40.776176, 35.139668, 21.435589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644241, 34.762646, 21.456715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761430, 0.298692, 0.575332,
		-0.558060, 0.149552, -0.816213,
		-0.329838, -0.942559, 0.052814,
		40.545288, 34.479877, 21.472559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127979, 35.116005, 21.563341>,  <40.776176, 35.139668, 21.435589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127979, 35.116005, 21.563341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.152035, 34.726364, 21.650524>,  <40.166470, 34.492580, 21.702833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.152035, 34.726364, 21.650524>,  <40.127979, 35.116005, 21.563341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152035, 34.726364, 21.650524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724421, 0.107629, 0.680904,
		-0.686729, -0.198841, -0.699189,
		0.060139, -0.974104, 0.217957,
		40.170078, 34.434132, 21.715912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464458, 34.902836, 21.620155>,  <40.127979, 35.116005, 21.563341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464458, 34.902836, 21.620155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.635128, 34.593914, 21.808411>,  <39.737530, 34.408562, 21.921364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.635128, 34.593914, 21.808411>,  <39.464458, 34.902836, 21.620155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635128, 34.593914, 21.808411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711810, 0.034262, 0.701536,
		-0.557924, -0.634329, -0.535115,
		0.426671, -0.772304, 0.470637,
		39.763130, 34.362225, 21.949602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819283, 34.368221, 21.827000>,  <39.464458, 34.902836, 21.620155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819283, 34.368221, 21.827000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.147430, 34.349609, 22.054977>,  <39.344318, 34.338440, 22.191763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.147430, 34.349609, 22.054977>,  <38.819283, 34.368221, 21.827000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147430, 34.349609, 22.054977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571656, -0.041471, 0.819445,
		-0.014491, -0.998056, -0.060619,
		0.820365, -0.046528, 0.569944,
		39.393539, 34.335651, 22.225960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440800, 34.591328, 21.301441>,  <38.819283, 34.368221, 21.827000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440800, 34.591328, 21.301441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.113987, 34.582973, 21.070957>,  <37.917900, 34.577961, 20.932667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.113987, 34.582973, 21.070957>,  <38.440800, 34.591328, 21.301441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113987, 34.582973, 21.070957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573843, 0.067921, -0.816144,
		0.056184, -0.997472, -0.043507,
		-0.817036, -0.020888, -0.576209,
		37.868877, 34.576710, 20.898094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647259, 34.194775, 20.711441>,  <38.440800, 34.591328, 21.301441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647259, 34.194775, 20.711441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.303501, 34.340340, 20.567772>,  <38.097248, 34.427681, 20.481569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.303501, 34.340340, 20.567772>,  <38.647259, 34.194775, 20.711441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303501, 34.340340, 20.567772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405429, 0.056966, -0.912350,
		-0.311558, -0.929688, -0.196498,
		-0.859395, 0.363916, -0.359174,
		38.045681, 34.449512, 20.460020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216934, 33.801052, 20.148075>,  <38.647259, 34.194775, 20.711441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216934, 33.801052, 20.148075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.156513, 34.193085, 20.096512>,  <38.120262, 34.428307, 20.065573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.156513, 34.193085, 20.096512>,  <38.216934, 33.801052, 20.148075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156513, 34.193085, 20.096512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218148, -0.094141, -0.971364,
		-0.964155, -0.174848, -0.199583,
		-0.151052, 0.980084, -0.128909,
		38.111198, 34.487110, 20.057838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866482, 33.888596, 19.474672>,  <38.216934, 33.801052, 20.148075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866482, 33.888596, 19.474672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.976582, 34.262077, 19.566269>,  <38.042641, 34.486164, 19.621227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.976582, 34.262077, 19.566269>,  <37.866482, 33.888596, 19.474672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976582, 34.262077, 19.566269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262315, 0.156212, -0.952254,
		-0.924893, 0.322176, -0.201927,
		0.275250, 0.933702, 0.228991,
		38.059158, 34.542187, 19.634966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526012, 34.321518, 18.922626>,  <37.866482, 33.888596, 19.474672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526012, 34.321518, 18.922626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.813026, 34.543575, 19.090893>,  <37.985237, 34.676807, 19.191853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.813026, 34.543575, 19.090893>,  <37.526012, 34.321518, 18.922626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813026, 34.543575, 19.090893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183937, 0.431491, -0.883166,
		-0.671794, 0.711081, 0.207500,
		0.717537, 0.555139, 0.420668,
		38.028286, 34.710117, 19.217093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534378, 35.002750, 18.490778>,  <37.526012, 34.321518, 18.922626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534378, 35.002750, 18.490778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.877365, 34.970921, 18.694118>,  <38.083157, 34.951824, 18.816124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.877365, 34.970921, 18.694118>,  <37.534378, 35.002750, 18.490778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877365, 34.970921, 18.694118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510557, 0.254286, -0.821383,
		-0.063910, 0.963850, 0.258667,
		0.857465, -0.079570, 0.508352,
		38.134605, 34.947048, 18.846624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870464, 35.651073, 18.501047>,  <37.534378, 35.002750, 18.490778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870464, 35.651073, 18.501047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.152481, 35.376049, 18.570534>,  <38.321690, 35.211033, 18.612225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.152481, 35.376049, 18.570534>,  <37.870464, 35.651073, 18.501047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152481, 35.376049, 18.570534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494566, 0.301151, -0.815299,
		0.508254, 0.660733, 0.552368,
		0.705041, -0.687561, 0.173715,
		38.363995, 35.169781, 18.622648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590786, 35.935272, 18.300200>,  <37.870464, 35.651073, 18.501047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590786, 35.935272, 18.300200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.659500, 35.541565, 18.316750>,  <38.700729, 35.305340, 18.326679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.659500, 35.541565, 18.316750>,  <38.590786, 35.935272, 18.300200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659500, 35.541565, 18.316750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628808, 0.077219, -0.773717,
		0.758348, 0.158929, 0.632179,
		0.171783, -0.984266, 0.041377,
		38.711037, 35.246284, 18.329163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284462, 35.924435, 18.271582>,  <38.590786, 35.935272, 18.300200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284462, 35.924435, 18.271582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.140774, 35.571381, 18.150311>,  <39.054562, 35.359547, 18.077547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.140774, 35.571381, 18.150311>,  <39.284462, 35.924435, 18.271582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140774, 35.571381, 18.150311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622122, 0.015680, -0.782763,
		0.695649, -0.469794, 0.543475,
		-0.359216, -0.882637, -0.303177,
		39.033009, 35.306591, 18.059357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876804, 35.507065, 18.195740>,  <39.284462, 35.924435, 18.271582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876804, 35.507065, 18.195740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.579502, 35.368080, 17.967060>,  <39.401119, 35.284691, 17.829853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.579502, 35.368080, 17.967060>,  <39.876804, 35.507065, 18.195740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579502, 35.368080, 17.967060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593820, 0.050944, -0.802984,
		0.308129, -0.936310, 0.168465,
		-0.743259, -0.347461, -0.571697,
		39.356525, 35.263844, 17.795551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181522, 34.891090, 17.851017>,  <39.876804, 35.507065, 18.195740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181522, 34.891090, 17.851017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.863342, 34.977013, 17.624348>,  <39.672436, 35.028564, 17.488346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.863342, 34.977013, 17.624348>,  <40.181522, 34.891090, 17.851017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863342, 34.977013, 17.624348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542052, -0.165960, -0.823794,
		-0.271000, -0.962453, 0.015578,
		-0.795449, 0.214804, -0.566675,
		39.624706, 35.041454, 17.454346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059925, 34.376877, 17.413292>,  <40.181522, 34.891090, 17.851017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059925, 34.376877, 17.413292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.875511, 34.688118, 17.242641>,  <39.764862, 34.874863, 17.140251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.875511, 34.688118, 17.242641>,  <40.059925, 34.376877, 17.413292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875511, 34.688118, 17.242641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399216, -0.247505, -0.882818,
		-0.792513, -0.577323, -0.196522,
		-0.461031, 0.778099, -0.426628,
		39.737202, 34.921547, 17.114653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889164, 34.161400, 16.766506>,  <40.059925, 34.376877, 17.413292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889164, 34.161400, 16.766506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.859390, 34.558205, 16.725754>,  <39.841526, 34.796288, 16.701303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.859390, 34.558205, 16.725754>,  <39.889164, 34.161400, 16.766506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859390, 34.558205, 16.725754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395158, -0.064459, -0.916349,
		-0.915593, -0.108466, -0.387202,
		-0.074434, 0.992008, -0.101880,
		39.837059, 34.855808, 16.695190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631172, 34.275726, 16.091700>,  <39.889164, 34.161400, 16.766506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631172, 34.275726, 16.091700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.803902, 34.624821, 16.182785>,  <39.907539, 34.834278, 16.237436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.803902, 34.624821, 16.182785>,  <39.631172, 34.275726, 16.091700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803902, 34.624821, 16.182785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493212, -0.017105, -0.869741,
		-0.755161, 0.487888, -0.437832,
		0.431825, 0.872739, 0.227715,
		39.933449, 34.886642, 16.251101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563675, 34.721252, 15.507630>,  <39.631172, 34.275726, 16.091700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563675, 34.721252, 15.507630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.878319, 34.863239, 15.709716>,  <40.067104, 34.948429, 15.830967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.878319, 34.863239, 15.709716>,  <39.563675, 34.721252, 15.507630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878319, 34.863239, 15.709716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507395, 0.094640, -0.856501,
		-0.351840, 0.930077, -0.105662,
		0.786613, 0.354964, 0.505214,
		40.114304, 34.969727, 15.861280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812317, 35.072819, 15.017031>,  <39.563675, 34.721252, 15.507630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812317, 35.072819, 15.017031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.124512, 35.031719, 15.263700>,  <40.311829, 35.007061, 15.411701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.124512, 35.031719, 15.263700>,  <39.812317, 35.072819, 15.017031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124512, 35.031719, 15.263700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622172, 0.224210, -0.750088,
		-0.061193, 0.969109, 0.238920,
		0.780485, -0.102749, 0.616673,
		40.358658, 35.000893, 15.448702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207664, 35.551979, 14.738230>,  <39.812317, 35.072819, 15.017031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207664, 35.551979, 14.738230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.424362, 35.317974, 14.979650>,  <40.554379, 35.177570, 15.124501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.424362, 35.317974, 14.979650>,  <40.207664, 35.551979, 14.738230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424362, 35.317974, 14.979650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798789, 0.134814, -0.586312,
		0.261635, 0.799738, 0.540339,
		0.541741, -0.585016, 0.603550,
		40.586884, 35.142467, 15.160714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876423, 35.826344, 14.793515>,  <40.207664, 35.551979, 14.738230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876423, 35.826344, 14.793515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.920555, 35.443954, 14.902280>,  <40.947033, 35.214520, 14.967539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.920555, 35.443954, 14.902280>,  <40.876423, 35.826344, 14.793515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920555, 35.443954, 14.902280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790313, -0.081512, -0.607257,
		0.602687, 0.281895, 0.746527,
		0.110331, -0.955976, 0.271912,
		40.953655, 35.157162, 14.983853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574013, 35.758511, 15.069346>,  <40.876423, 35.826344, 14.793515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574013, 35.758511, 15.069346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.448963, 35.395142, 14.958327>,  <41.373932, 35.177120, 14.891716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.448963, 35.395142, 14.958327>,  <41.574013, 35.758511, 15.069346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448963, 35.395142, 14.958327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863128, -0.149684, -0.482291,
		0.396580, -0.390335, 0.830881,
		-0.312625, -0.908424, -0.277547,
		41.355175, 35.122616, 14.875063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041908, 35.353027, 15.253301>,  <41.574013, 35.758511, 15.069346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041908, 35.353027, 15.253301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.860012, 35.143242, 14.965369>,  <41.750874, 35.017372, 14.792610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.860012, 35.143242, 14.965369>,  <42.041908, 35.353027, 15.253301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860012, 35.143242, 14.965369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887345, -0.336109, -0.315673,
		-0.076381, -0.782283, 0.618222,
		-0.454736, -0.524465, -0.719828,
		41.723591, 34.985901, 14.749421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370071, 34.616920, 15.240699>,  <42.041908, 35.353027, 15.253301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370071, 34.616920, 15.240699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.190594, 34.720066, 14.898429>,  <42.082909, 34.781952, 14.693067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.190594, 34.720066, 14.898429>,  <42.370071, 34.616920, 15.240699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190594, 34.720066, 14.898429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817194, -0.269189, -0.509637,
		-0.361756, -0.927924, -0.089942,
		-0.448693, 0.257864, -0.855675,
		42.055984, 34.797424, 14.641726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<29.454971, 31.767023, 32.748249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.846092, 31.712177, 32.811630>,  <30.080765, 31.679270, 32.849659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.846092, 31.712177, 32.811630>,  <29.454971, 31.767023, 32.748249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846092, 31.712177, 32.811630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195767, -0.328177, 0.924108,
		-0.074709, -0.934612, -0.347734,
		0.977801, -0.137114, 0.158449,
		30.139433, 31.671043, 32.859165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527225, 31.157896, 33.064953>,  <29.454971, 31.767023, 32.748249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527225, 31.157896, 33.064953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.869530, 31.340557, 33.162235>,  <30.074911, 31.450153, 33.220604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.869530, 31.340557, 33.162235>,  <29.527225, 31.157896, 33.064953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869530, 31.340557, 33.162235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108987, -0.300412, 0.947562,
		0.505767, -0.837390, -0.207311,
		0.855758, 0.456651, 0.243203,
		30.126257, 31.477552, 33.235195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854586, 30.555361, 33.391361>,  <29.527225, 31.157896, 33.064953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854586, 30.555361, 33.391361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.981005, 30.919304, 33.498894>,  <30.056856, 31.137671, 33.563412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.981005, 30.919304, 33.498894>,  <29.854586, 30.555361, 33.391361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981005, 30.919304, 33.498894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117985, -0.243462, 0.962708,
		0.941379, -0.335978, 0.030405,
		0.316046, 0.909860, 0.268830,
		30.075819, 31.192263, 33.579544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273472, 30.405416, 34.006470>,  <29.854586, 30.555361, 33.391361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273472, 30.405416, 34.006470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.164692, 30.790131, 34.019222>,  <30.099424, 31.020958, 34.026875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.164692, 30.790131, 34.019222>,  <30.273472, 30.405416, 34.006470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164692, 30.790131, 34.019222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083906, -0.056705, 0.994859,
		0.958646, 0.267877, 0.096121,
		-0.271950, 0.961783, 0.031883,
		30.083107, 31.078665, 34.028786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705276, 30.563791, 34.531124>,  <30.273472, 30.405416, 34.006470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705276, 30.563791, 34.531124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.434801, 30.858402, 34.524227>,  <30.272516, 31.035168, 34.520088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.434801, 30.858402, 34.524227>,  <30.705276, 30.563791, 34.531124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434801, 30.858402, 34.524227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182810, -0.145065, 0.972387,
		0.713687, 0.660670, 0.232736,
		-0.676189, 0.736526, -0.017246,
		30.231945, 31.079361, 34.519054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887520, 31.051626, 35.104782>,  <30.705276, 30.563791, 34.531124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887520, 31.051626, 35.104782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.504686, 31.121159, 35.012028>,  <30.274986, 31.162878, 34.956375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.504686, 31.121159, 35.012028>,  <30.887520, 31.051626, 35.104782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504686, 31.121159, 35.012028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260621, -0.166283, 0.951013,
		0.126758, 0.970635, 0.204451,
		-0.957084, 0.173833, -0.231890,
		30.217562, 31.173309, 34.942459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642399, 31.307865, 35.707256>,  <30.887520, 31.051626, 35.104782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642399, 31.307865, 35.707256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.303837, 31.219574, 35.513401>,  <30.100700, 31.166599, 35.397087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.303837, 31.219574, 35.513401>,  <30.642399, 31.307865, 35.707256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303837, 31.219574, 35.513401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487598, -0.044691, 0.871924,
		-0.214118, 0.974311, -0.069800,
		-0.846405, -0.220729, -0.484641,
		30.049915, 31.153355, 35.368008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183283, 31.760422, 36.060310>,  <30.642399, 31.307865, 35.707256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183283, 31.760422, 36.060310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.979040, 31.472137, 35.872757>,  <29.856495, 31.299168, 35.760223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.979040, 31.472137, 35.872757>,  <30.183283, 31.760422, 36.060310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979040, 31.472137, 35.872757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533145, -0.162451, 0.830281,
		-0.674564, 0.673932, -0.301295,
		-0.510608, -0.720712, -0.468887,
		29.825857, 31.255924, 35.732090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.553457, 31.963034, 36.285507>,  <30.183283, 31.760422, 36.060310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.553457, 31.963034, 36.285507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.543474, 31.576221, 36.184132>,  <29.537483, 31.344135, 36.123306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.543474, 31.576221, 36.184132>,  <29.553457, 31.963034, 36.285507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543474, 31.576221, 36.184132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589030, -0.190611, 0.785309,
		-0.807725, 0.168883, -0.564852,
		-0.024959, -0.967030, -0.253438,
		29.535986, 31.286112, 36.108101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791393, 31.621595, 36.247211>,  <29.553457, 31.963034, 36.285507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791393, 31.621595, 36.247211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.025747, 31.302662, 36.305176>,  <29.166359, 31.111301, 36.339954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.025747, 31.302662, 36.305176>,  <28.791393, 31.621595, 36.247211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025747, 31.302662, 36.305176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648340, -0.353885, 0.674107,
		-0.486207, -0.488900, -0.724279,
		0.585883, -0.797334, 0.144912,
		29.201513, 31.063461, 36.348648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.340147, 30.979431, 36.167740>,  <28.791393, 31.621595, 36.247211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.340147, 30.979431, 36.167740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.666946, 30.864521, 36.367733>,  <28.863026, 30.795574, 36.487728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.666946, 30.864521, 36.367733>,  <28.340147, 30.979431, 36.167740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666946, 30.864521, 36.367733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566550, -0.238423, 0.788781,
		-0.107387, -0.927701, -0.357545,
		0.817000, -0.287272, 0.499986,
		28.912046, 30.778339, 36.517727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152473, 30.295521, 36.406017>,  <28.340147, 30.979431, 36.167740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.152473, 30.295521, 36.406017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.464422, 30.426479, 36.619411>,  <28.651592, 30.505054, 36.747448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.464422, 30.426479, 36.619411>,  <28.152473, 30.295521, 36.406017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464422, 30.426479, 36.619411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519790, -0.136114, 0.843381,
		0.348737, -0.935031, 0.064026,
		0.779872, 0.327399, 0.533487,
		28.698383, 30.524698, 36.779457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533257, 30.464876, 36.813839>,  <28.152473, 30.295521, 36.406017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.533257, 30.464876, 36.813839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.665730, 30.524223, 37.186569>,  <27.745214, 30.559832, 37.410210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.665730, 30.524223, 37.186569>,  <27.533257, 30.464876, 36.813839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665730, 30.524223, 37.186569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170276, -0.961949, 0.213681,
		0.928075, -0.229436, -0.293319,
		0.331184, 0.148367, 0.931829,
		27.765085, 30.568733, 37.466118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017504, 29.946527, 37.009304>,  <27.533257, 30.464876, 36.813839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017504, 29.946527, 37.009304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.854952, 30.060978, 37.356403>,  <27.757420, 30.129648, 37.564663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.854952, 30.060978, 37.356403>,  <28.017504, 29.946527, 37.009304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854952, 30.060978, 37.356403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012974, -0.947801, 0.318598,
		0.913612, 0.140730, 0.381456,
		-0.406381, 0.286126, 0.867748,
		27.733038, 30.146816, 37.616726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760078, 29.456984, 37.535259>,  <28.017504, 29.946527, 37.009304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760078, 29.456984, 37.535259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.691053, 29.062984, 37.535770>,  <27.649639, 28.826586, 37.536076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.691053, 29.062984, 37.535770>,  <27.760078, 29.456984, 37.535259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691053, 29.062984, 37.535770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177260, -0.032330, -0.983633,
		0.968918, -0.169509, 0.180179,
		-0.172560, -0.984998, 0.001278,
		27.639286, 28.767485, 37.536152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311646, 29.144495, 37.252193>,  <27.760078, 29.456984, 37.535259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311646, 29.144495, 37.252193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.041624, 28.853306, 37.204258>,  <27.879612, 28.678593, 37.175495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.041624, 28.853306, 37.204258>,  <28.311646, 29.144495, 37.252193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041624, 28.853306, 37.204258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231797, -0.055062, -0.971205,
		0.700410, -0.683393, 0.205911,
		-0.675052, -0.727971, -0.119842,
		27.839108, 28.634914, 37.168304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642649, 28.699059, 36.852070>,  <28.311646, 29.144495, 37.252193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642649, 28.699059, 36.852070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.261690, 28.583572, 36.812920>,  <28.033115, 28.514280, 36.789429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.261690, 28.583572, 36.812920>,  <28.642649, 28.699059, 36.852070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261690, 28.583572, 36.812920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171960, -0.243662, -0.954494,
		0.251730, -0.925889, 0.281712,
		-0.952398, -0.288718, -0.097879,
		27.975971, 28.496958, 36.783554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666374, 28.183434, 36.269493>,  <28.642649, 28.699059, 36.852070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666374, 28.183434, 36.269493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.293331, 28.323544, 36.304264>,  <28.069506, 28.407610, 36.325127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.293331, 28.323544, 36.304264>,  <28.666374, 28.183434, 36.269493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293331, 28.323544, 36.304264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139471, -0.127655, -0.981963,
		-0.332858, -0.927908, 0.167904,
		-0.932606, 0.350272, 0.086925,
		28.013550, 28.428625, 36.330341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261780, 27.646725, 36.027809>,  <28.666374, 28.183434, 36.269493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261780, 27.646725, 36.027809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.026564, 27.969082, 36.000248>,  <27.885435, 28.162497, 35.983711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.026564, 27.969082, 36.000248>,  <28.261780, 27.646725, 36.027809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026564, 27.969082, 36.000248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009834, -0.078061, -0.996900,
		-0.808774, -0.586893, 0.037978,
		-0.588038, 0.805893, -0.068905,
		27.850153, 28.210850, 35.979576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749397, 27.459978, 35.527046>,  <28.261780, 27.646725, 36.027809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749397, 27.459978, 35.527046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.754374, 27.859081, 35.553341>,  <27.757360, 28.098543, 35.569118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.754374, 27.859081, 35.553341>,  <27.749397, 27.459978, 35.527046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754374, 27.859081, 35.553341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141878, 0.066837, -0.987625,
		-0.989806, 0.002962, 0.142391,
		0.012442, 0.997760, 0.065735,
		27.758106, 28.158409, 35.573063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184958, 27.668795, 34.994953>,  <27.749397, 27.459978, 35.527046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184958, 27.668795, 34.994953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.394045, 28.001358, 35.070347>,  <27.519497, 28.200895, 35.115582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.394045, 28.001358, 35.070347>,  <27.184958, 27.668795, 34.994953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394045, 28.001358, 35.070347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218468, 0.344351, -0.913068,
		-0.824036, 0.436102, 0.361635,
		0.522720, 0.831407, 0.188484,
		27.550861, 28.250780, 35.126892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.800943, 28.224762, 34.634232>,  <27.184958, 27.668795, 34.994953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.800943, 28.224762, 34.634232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.180693, 28.330059, 34.702805>,  <27.408543, 28.393238, 34.743950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.180693, 28.330059, 34.702805>,  <26.800943, 28.224762, 34.634232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180693, 28.330059, 34.702805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086022, 0.307016, -0.947809,
		-0.302139, 0.914573, 0.268829,
		0.949375, 0.263245, 0.171435,
		27.465506, 28.409033, 34.754234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922361, 28.832752, 34.201847>,  <26.800943, 28.224762, 34.634232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.922361, 28.832752, 34.201847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.303934, 28.732647, 34.268036>,  <27.532877, 28.672585, 34.307751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.303934, 28.732647, 34.268036>,  <26.922361, 28.832752, 34.201847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303934, 28.732647, 34.268036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225379, 0.233695, -0.945828,
		0.198033, 0.939551, 0.279333,
		0.953933, -0.250261, 0.165476,
		27.590115, 28.657568, 34.317680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238783, 29.283709, 33.842194>,  <26.922361, 28.832752, 34.201847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238783, 29.283709, 33.842194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.509655, 28.991669, 33.878807>,  <27.672178, 28.816444, 33.900776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.509655, 28.991669, 33.878807>,  <27.238783, 29.283709, 33.842194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509655, 28.991669, 33.878807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286595, 0.147136, -0.946686,
		0.677708, 0.667312, 0.308881,
		0.677182, -0.730100, 0.091533,
		27.712811, 28.772638, 33.906265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874119, 29.550512, 33.530270>,  <27.238783, 29.283709, 33.842194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874119, 29.550512, 33.530270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.926386, 29.153942, 33.530788>,  <27.957747, 28.916000, 33.531101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.926386, 29.153942, 33.530788>,  <27.874119, 29.550512, 33.530270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926386, 29.153942, 33.530788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256585, 0.032550, -0.965973,
		0.957648, 0.126555, 0.258639,
		0.130667, -0.991425, 0.001300,
		27.965586, 28.856514, 33.531178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403490, 29.492062, 33.056698>,  <27.874119, 29.550512, 33.530270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403490, 29.492062, 33.056698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.242765, 29.126053, 33.071026>,  <28.146330, 28.906448, 33.079620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.242765, 29.126053, 33.071026>,  <28.403490, 29.492062, 33.056698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242765, 29.126053, 33.071026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092204, -0.079341, -0.992574,
		0.911068, -0.395525, 0.116249,
		-0.401811, -0.915022, 0.035817,
		28.122223, 28.851547, 33.081772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777744, 29.160887, 32.611095>,  <28.403490, 29.492062, 33.056698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777744, 29.160887, 32.611095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.436239, 28.954929, 32.642014>,  <28.231337, 28.831354, 32.660564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.436239, 28.954929, 32.642014>,  <28.777744, 29.160887, 32.611095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436239, 28.954929, 32.642014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067337, -0.038022, -0.997006,
		0.516292, -0.856410, -0.002209,
		-0.853761, -0.514894, 0.077298,
		28.180111, 28.800461, 32.665203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756483, 28.430056, 32.233681>,  <28.777744, 29.160887, 32.611095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756483, 28.430056, 32.233681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.414171, 28.632526, 32.276432>,  <28.208784, 28.754009, 32.302082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.414171, 28.632526, 32.276432>,  <28.756483, 28.430056, 32.233681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414171, 28.632526, 32.276432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166808, -0.074424, -0.983176,
		-0.489709, -0.859211, 0.148126,
		-0.855781, 0.506179, 0.106877,
		28.157436, 28.784380, 32.308495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950773, 27.729242, 31.906305>,  <28.756483, 28.430056, 32.233681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950773, 27.729242, 31.906305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.339542, 27.721333, 31.812519>,  <29.572803, 27.716587, 31.756248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.339542, 27.721333, 31.812519>,  <28.950773, 27.729242, 31.906305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339542, 27.721333, 31.812519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218644, -0.292297, 0.930998,
		-0.086943, -0.956123, -0.279767,
		0.971924, -0.019774, -0.234463,
		29.631119, 27.715401, 31.742180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199150, 27.162216, 32.202721>,  <28.950773, 27.729242, 31.906305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199150, 27.162216, 32.202721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.534122, 27.371590, 32.139816>,  <29.735106, 27.497213, 32.102074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.534122, 27.371590, 32.139816>,  <29.199150, 27.162216, 32.202721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534122, 27.371590, 32.139816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255036, -0.119762, 0.959486,
		0.483393, -0.843608, -0.233787,
		0.837429, 0.523433, -0.157258,
		29.785351, 27.528620, 32.092640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813730, 26.849688, 32.752125>,  <29.199150, 27.162216, 32.202721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813730, 26.849688, 32.752125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.913158, 27.216591, 32.627644>,  <29.972816, 27.436733, 32.552956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.913158, 27.216591, 32.627644>,  <29.813730, 26.849688, 32.752125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913158, 27.216591, 32.627644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450849, 0.174796, 0.875318,
		0.857291, -0.357885, -0.370096,
		0.248572, 0.917259, -0.311203,
		29.987730, 27.491768, 32.534283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503351, 26.916338, 32.970951>,  <29.813730, 26.849688, 32.752125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503351, 26.916338, 32.970951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.340563, 27.279327, 32.929245>,  <30.242889, 27.497120, 32.904221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.340563, 27.279327, 32.929245>,  <30.503351, 26.916338, 32.970951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340563, 27.279327, 32.929245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397266, 0.278625, 0.874384,
		0.822530, 0.314425, -0.473899,
		-0.406969, 0.907472, -0.104267,
		30.218472, 27.551569, 32.897964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992832, 27.326719, 33.304558>,  <30.503351, 26.916338, 32.970951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992832, 27.326719, 33.304558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.666916, 27.558552, 33.298801>,  <30.471367, 27.697651, 33.295349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.666916, 27.558552, 33.298801>,  <30.992832, 27.326719, 33.304558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666916, 27.558552, 33.298801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268939, 0.399836, 0.876243,
		0.513606, 0.710084, -0.481654,
		-0.814789, 0.579579, -0.014389,
		30.422480, 27.732426, 33.294483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268442, 27.918835, 33.518322>,  <30.992832, 27.326719, 33.304558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268442, 27.918835, 33.518322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.881214, 27.996201, 33.582108>,  <30.648876, 28.042620, 33.620377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.881214, 27.996201, 33.582108>,  <31.268442, 27.918835, 33.518322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881214, 27.996201, 33.582108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219442, 0.346389, 0.912064,
		0.121172, 0.917935, -0.377772,
		-0.968072, 0.193416, 0.159461,
		30.590792, 28.054226, 33.629948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237604, 28.584038, 33.965839>,  <31.268442, 27.918835, 33.518322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237604, 28.584038, 33.965839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.898823, 28.381393, 34.030354>,  <30.695553, 28.259808, 34.069061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.898823, 28.381393, 34.030354>,  <31.237604, 28.584038, 33.965839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898823, 28.381393, 34.030354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109325, 0.130928, 0.985346,
		-0.520302, 0.852176, -0.055505,
		-0.846955, -0.506610, 0.161286,
		30.644735, 28.229410, 34.078739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389778, 29.375795, 34.214733>,  <31.237604, 28.584038, 33.965839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389778, 29.375795, 34.214733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.758116, 29.491756, 34.319042>,  <31.979118, 29.561333, 34.381630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.758116, 29.491756, 34.319042>,  <31.389778, 29.375795, 34.214733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758116, 29.491756, 34.319042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131208, 0.399413, -0.907333,
		-0.367195, 0.869728, 0.329760,
		0.920843, 0.289901, 0.260777,
		32.034370, 29.578726, 34.397274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443525, 30.074924, 33.851574>,  <31.389778, 29.375795, 34.214733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443525, 30.074924, 33.851574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811930, 29.957130, 33.953568>,  <32.032974, 29.886454, 34.014763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811930, 29.957130, 33.953568>,  <31.443525, 30.074924, 33.851574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811930, 29.957130, 33.953568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342769, 0.301709, -0.889652,
		0.185058, 0.906780, 0.378818,
		0.921012, -0.294485, 0.254983,
		32.088234, 29.868786, 34.030064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859068, 30.605680, 33.532967>,  <31.443525, 30.074924, 33.851574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859068, 30.605680, 33.532967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.054764, 30.259346, 33.574867>,  <32.172180, 30.051546, 33.600006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.054764, 30.259346, 33.574867>,  <31.859068, 30.605680, 33.532967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054764, 30.259346, 33.574867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277829, 0.040877, -0.959760,
		0.826712, 0.498657, 0.260553,
		0.489242, -0.865835, 0.104748,
		32.201538, 29.999596, 33.606293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504318, 30.747368, 33.414246>,  <31.859068, 30.605680, 33.532967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504318, 30.747368, 33.414246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.481487, 30.352043, 33.357708>,  <32.467789, 30.114847, 33.323784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.481487, 30.352043, 33.357708>,  <32.504318, 30.747368, 33.414246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481487, 30.352043, 33.357708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451820, 0.100675, -0.886410,
		0.890281, -0.114459, 0.440794,
		-0.057081, -0.988314, -0.141344,
		32.464363, 30.055550, 33.315304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143795, 30.500620, 33.280617>,  <32.504318, 30.747368, 33.414246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143795, 30.500620, 33.280617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.896515, 30.224724, 33.129841>,  <32.748146, 30.059185, 33.039375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.896515, 30.224724, 33.129841>,  <33.143795, 30.500620, 33.280617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896515, 30.224724, 33.129841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469639, 0.060423, -0.880789,
		0.630294, -0.721529, 0.286576,
		-0.618199, -0.689743, -0.376942,
		32.711056, 30.017801, 33.016758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489571, 30.199827, 32.779572>,  <33.143795, 30.500620, 33.280617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489571, 30.199827, 32.779572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.116959, 30.090214, 32.683933>,  <32.893391, 30.024445, 32.626553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.116959, 30.090214, 32.683933>,  <33.489571, 30.199827, 32.779572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116959, 30.090214, 32.683933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218835, 0.102725, -0.970340,
		0.290468, -0.956218, -0.035722,
		-0.931525, -0.274035, -0.239092,
		32.837502, 30.008003, 32.612206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509853, 29.688061, 32.281773>,  <33.489571, 30.199827, 32.779572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509853, 29.688061, 32.281773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136017, 29.822712, 32.235775>,  <32.911716, 29.903503, 32.208176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136017, 29.822712, 32.235775>,  <33.509853, 29.688061, 32.281773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136017, 29.822712, 32.235775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178220, 0.163324, -0.970342,
		-0.307864, -0.927366, -0.212635,
		-0.934590, 0.336628, -0.114993,
		32.855640, 29.923700, 32.201279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.852827, 32.964520, 38.111984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.799269, 32.603897, 37.947414>,  <30.767134, 32.387524, 37.848671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.799269, 32.603897, 37.947414>,  <30.852827, 32.964520, 38.111984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799269, 32.603897, 37.947414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242924, 0.372638, -0.895616,
		0.960760, -0.219863, 0.169116,
		-0.133894, -0.901555, -0.411426,
		30.759100, 32.333431, 37.823986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458996, 32.818008, 37.656509>,  <30.852827, 32.964520, 38.111984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458996, 32.818008, 37.656509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.162443, 32.591957, 37.511745>,  <30.984512, 32.456326, 37.424885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.162443, 32.591957, 37.511745>,  <31.458996, 32.818008, 37.656509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162443, 32.591957, 37.511745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085976, 0.454868, -0.886399,
		0.665554, -0.688275, -0.288644,
		-0.741381, -0.565130, -0.361915,
		30.940029, 32.422417, 37.403172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728264, 32.476795, 36.934155>,  <31.458996, 32.818008, 37.656509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728264, 32.476795, 36.934155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.331589, 32.433445, 36.906403>,  <31.093584, 32.407433, 36.889751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.331589, 32.433445, 36.906403>,  <31.728264, 32.476795, 36.934155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331589, 32.433445, 36.906403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024522, 0.370091, -0.928672,
		0.126322, -0.922652, -0.364357,
		-0.991686, -0.108377, -0.069376,
		31.034082, 32.400932, 36.885590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596678, 32.226082, 36.257633>,  <31.728264, 32.476795, 36.934155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596678, 32.226082, 36.257633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.244762, 32.385620, 36.361092>,  <31.033613, 32.481342, 36.423168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.244762, 32.385620, 36.361092>,  <31.596678, 32.226082, 36.257633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244762, 32.385620, 36.361092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068131, 0.432685, -0.898967,
		-0.470462, -0.808521, -0.353496,
		-0.879786, 0.398846, 0.258647,
		30.980827, 32.505272, 36.438686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100424, 32.021122, 35.760811>,  <31.596678, 32.226082, 36.257633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100424, 32.021122, 35.760811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.967161, 32.351997, 35.941814>,  <30.887203, 32.550522, 36.050419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.967161, 32.351997, 35.941814>,  <31.100424, 32.021122, 35.760811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967161, 32.351997, 35.941814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006514, 0.477900, -0.878390,
		-0.942849, -0.295589, -0.153827,
		-0.333157, 0.827187, 0.452513,
		30.867214, 32.600155, 36.077568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569817, 32.241344, 35.256504>,  <31.100424, 32.021122, 35.760811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569817, 32.241344, 35.256504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.673807, 32.540638, 35.500652>,  <30.736202, 32.720215, 35.647141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.673807, 32.540638, 35.500652>,  <30.569817, 32.241344, 35.256504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673807, 32.540638, 35.500652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204004, 0.660401, -0.722671,
		-0.943819, 0.063360, 0.324332,
		0.259977, 0.748236, 0.610373,
		30.751801, 32.765110, 35.683765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130356, 32.755981, 35.190910>,  <30.569817, 32.241344, 35.256504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130356, 32.755981, 35.190910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.448841, 32.947990, 35.338219>,  <30.639933, 33.063194, 35.426601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.448841, 32.947990, 35.338219>,  <30.130356, 32.755981, 35.190910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448841, 32.947990, 35.338219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102151, 0.706616, -0.700185,
		-0.596328, 0.519879, 0.611652,
		0.796215, 0.480021, 0.368269,
		30.687706, 33.091995, 35.448700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969982, 33.540779, 35.493908>,  <30.130356, 32.755981, 35.190910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969982, 33.540779, 35.493908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.345682, 33.480564, 35.370522>,  <30.571102, 33.444435, 35.296490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.345682, 33.480564, 35.370522>,  <29.969982, 33.540779, 35.493908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345682, 33.480564, 35.370522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128419, 0.679291, -0.722545,
		0.318310, 0.718262, 0.618691,
		0.939248, -0.150542, -0.308463,
		30.627457, 33.435402, 35.277981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068329, 34.226116, 35.135559>,  <29.969982, 33.540779, 35.493908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068329, 34.226116, 35.135559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.383551, 33.997757, 35.043430>,  <30.572683, 33.860741, 34.988152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.383551, 33.997757, 35.043430>,  <30.068329, 34.226116, 35.135559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383551, 33.997757, 35.043430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195982, 0.587335, -0.785257,
		0.583577, 0.573686, 0.574737,
		0.788054, -0.570896, -0.230322,
		30.619967, 33.826488, 34.974335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637630, 34.690350, 34.946014>,  <30.068329, 34.226116, 35.135559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637630, 34.690350, 34.946014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.733673, 34.336185, 34.786819>,  <30.791300, 34.123688, 34.691303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.733673, 34.336185, 34.786819>,  <30.637630, 34.690350, 34.946014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733673, 34.336185, 34.786819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384281, 0.463182, -0.798618,
		0.891446, 0.038816, 0.451461,
		0.240108, -0.885413, -0.397986,
		30.805706, 34.070560, 34.667423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342136, 34.790134, 34.816536>,  <30.637630, 34.690350, 34.946014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342136, 34.790134, 34.816536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.227274, 34.482132, 34.588631>,  <31.158358, 34.297329, 34.451885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.227274, 34.482132, 34.588631>,  <31.342136, 34.790134, 34.816536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227274, 34.482132, 34.588631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425992, 0.430102, -0.795954,
		0.857947, -0.471278, 0.204511,
		-0.287155, -0.770007, -0.569765,
		31.141127, 34.251129, 34.417702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949917, 34.662323, 34.374531>,  <31.342136, 34.790134, 34.816536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949917, 34.662323, 34.374531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.606724, 34.516293, 34.229984>,  <31.400808, 34.428673, 34.143257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.606724, 34.516293, 34.229984>,  <31.949917, 34.662323, 34.374531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606724, 34.516293, 34.229984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269401, 0.279186, -0.921671,
		0.437369, -0.888130, -0.141185,
		-0.857981, -0.365075, -0.361371,
		31.349329, 34.406769, 34.121574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465191, 34.103661, 34.489742>,  <31.949917, 34.662323, 34.374531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465191, 34.103661, 34.489742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.836552, 33.973980, 34.417122>,  <33.059368, 33.896172, 34.373550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.836552, 33.973980, 34.417122>,  <32.465191, 34.103661, 34.489742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836552, 33.973980, 34.417122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091393, -0.672831, 0.734129,
		-0.360154, -0.664977, -0.654289,
		0.928405, -0.324197, -0.181549,
		33.115074, 33.876720, 34.362656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446098, 33.398949, 34.336037>,  <32.465191, 34.103661, 34.489742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446098, 33.398949, 34.336037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.814857, 33.484264, 34.465416>,  <33.036114, 33.535454, 34.543045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.814857, 33.484264, 34.465416>,  <32.446098, 33.398949, 34.336037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814857, 33.484264, 34.465416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072913, -0.724415, 0.685498,
		0.380521, -0.655540, -0.652282,
		0.921893, 0.213286, 0.323452,
		33.091427, 33.548252, 34.562450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610020, 32.789989, 34.552883>,  <32.446098, 33.398949, 34.336037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610020, 32.789989, 34.552883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.914055, 33.004913, 34.699070>,  <33.096478, 33.133869, 34.786781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.914055, 33.004913, 34.699070>,  <32.610020, 32.789989, 34.552883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914055, 33.004913, 34.699070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033639, -0.594192, 0.803619,
		0.648951, -0.598526, -0.469712,
		0.760087, 0.537310, 0.365468,
		33.142082, 33.166107, 34.808712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092583, 32.318035, 34.710270>,  <32.610020, 32.789989, 34.552883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092583, 32.318035, 34.710270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.164524, 32.638035, 34.939232>,  <33.207687, 32.830036, 35.076611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.164524, 32.638035, 34.939232>,  <33.092583, 32.318035, 34.710270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164524, 32.638035, 34.939232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095640, -0.593358, 0.799237,
		0.979033, -0.089001, -0.183229,
		0.179853, 0.800004, 0.572405,
		33.218479, 32.878036, 35.110954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658470, 32.153397, 35.224369>,  <33.092583, 32.318035, 34.710270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658470, 32.153397, 35.224369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.466419, 32.458923, 35.396904>,  <33.351189, 32.642242, 35.500427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.466419, 32.458923, 35.396904>,  <33.658470, 32.153397, 35.224369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466419, 32.458923, 35.396904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005161, -0.494177, 0.869346,
		0.877184, 0.415169, 0.241210,
		-0.480126, 0.763821, 0.431342,
		33.322380, 32.688068, 35.526306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100456, 32.287418, 35.762615>,  <33.658470, 32.153397, 35.224369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100456, 32.287418, 35.762615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.750259, 32.457401, 35.854641>,  <33.540142, 32.559391, 35.909855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.750259, 32.457401, 35.854641>,  <34.100456, 32.287418, 35.762615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750259, 32.457401, 35.854641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033759, -0.421130, 0.906372,
		0.482058, 0.801285, 0.354348,
		-0.875489, 0.424961, 0.230060,
		33.487614, 32.584888, 35.923660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279499, 32.555283, 36.425453>,  <34.100456, 32.287418, 35.762615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279499, 32.555283, 36.425453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.880138, 32.571941, 36.410152>,  <33.640522, 32.581936, 36.400970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.880138, 32.571941, 36.410152>,  <34.279499, 32.555283, 36.425453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880138, 32.571941, 36.410152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048214, -0.273400, 0.960691,
		0.029548, 0.960998, 0.274971,
		-0.998400, 0.041644, -0.038255,
		33.580620, 32.584435, 36.398674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121414, 32.887756, 37.028187>,  <34.279499, 32.555283, 36.425453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121414, 32.887756, 37.028187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.804001, 32.671276, 36.916904>,  <33.613552, 32.541389, 36.850136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.804001, 32.671276, 36.916904>,  <34.121414, 32.887756, 37.028187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804001, 32.671276, 36.916904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102117, -0.332273, 0.937639,
		-0.599891, 0.772462, 0.208406,
		-0.793538, -0.541200, -0.278210,
		33.565941, 32.508915, 36.833443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661377, 32.948040, 37.620678>,  <34.121414, 32.887756, 37.028187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661377, 32.948040, 37.620678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.561310, 32.627140, 37.403862>,  <33.501270, 32.434601, 37.273773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.561310, 32.627140, 37.403862>,  <33.661377, 32.948040, 37.620678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561310, 32.627140, 37.403862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149310, -0.521179, 0.840285,
		-0.956621, 0.291141, 0.010595,
		-0.250164, -0.802253, -0.542041,
		33.486259, 32.386463, 37.241249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225956, 32.660370, 37.976547>,  <33.661377, 32.948040, 37.620678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225956, 32.660370, 37.976547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.274715, 32.352722, 37.725601>,  <33.303970, 32.168133, 37.575031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.274715, 32.352722, 37.725601>,  <33.225956, 32.660370, 37.976547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274715, 32.352722, 37.725601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192016, -0.638414, 0.745357,
		-0.973792, 0.029608, -0.225504,
		0.121897, -0.769123, -0.627368,
		33.311283, 32.121986, 37.537392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676540, 32.241566, 38.187836>,  <33.225956, 32.660370, 37.976547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676540, 32.241566, 38.187836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.906887, 31.983669, 37.986763>,  <33.045094, 31.828932, 37.866119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.906887, 31.983669, 37.986763>,  <32.676540, 32.241566, 38.187836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906887, 31.983669, 37.986763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193039, -0.704719, 0.682720,
		-0.794429, -0.296116, -0.530282,
		0.575864, -0.644738, -0.502687,
		33.079647, 31.790249, 37.835957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269444, 31.671291, 38.063007>,  <32.676540, 32.241566, 38.187836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269444, 31.671291, 38.063007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.656185, 31.569588, 38.053684>,  <32.888229, 31.508566, 38.048092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.656185, 31.569588, 38.053684>,  <32.269444, 31.671291, 38.063007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656185, 31.569588, 38.053684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169191, -0.706385, 0.687309,
		-0.191219, -0.660585, -0.725991,
		0.966856, -0.254258, -0.023309,
		32.946243, 31.493311, 38.046692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142445, 30.878992, 38.160133>,  <32.269444, 31.671291, 38.063007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142445, 30.878992, 38.160133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.512737, 31.002468, 38.247520>,  <32.734913, 31.076553, 38.299953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.512737, 31.002468, 38.247520>,  <32.142445, 30.878992, 38.160133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512737, 31.002468, 38.247520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110450, -0.773191, 0.624481,
		0.361692, -0.553972, -0.749863,
		0.925732, 0.308692, 0.218471,
		32.790459, 31.095076, 38.313061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617378, 30.271255, 38.141590>,  <32.142445, 30.878992, 38.160133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617378, 30.271255, 38.141590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.820011, 30.535507, 38.363201>,  <32.941589, 30.694057, 38.496170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.820011, 30.535507, 38.363201>,  <32.617378, 30.271255, 38.141590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820011, 30.535507, 38.363201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062674, -0.669096, 0.740528,
		0.859913, -0.340412, -0.380353,
		0.506578, 0.660628, 0.554030,
		32.971985, 30.733696, 38.529411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681206, 30.331326, 37.381935>,  <32.617378, 30.271255, 38.141590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681206, 30.331326, 37.381935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.597912, 29.944103, 37.326069>,  <32.547935, 29.711769, 37.292549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.597912, 29.944103, 37.326069>,  <32.681206, 30.331326, 37.381935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597912, 29.944103, 37.326069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105962, 0.164280, -0.980706,
		0.972321, -0.189422, -0.136787,
		-0.208238, -0.968055, -0.139661,
		32.535439, 29.653687, 37.284172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015709, 30.112204, 36.718681>,  <32.681206, 30.331326, 37.381935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015709, 30.112204, 36.718681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.761932, 29.806328, 36.763817>,  <32.609665, 29.622803, 36.790897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.761932, 29.806328, 36.763817>,  <33.015709, 30.112204, 36.718681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761932, 29.806328, 36.763817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037872, -0.115058, -0.992636,
		0.772041, -0.634045, 0.044038,
		-0.634443, -0.764688, 0.112842,
		32.571598, 29.576921, 36.797668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230377, 29.641855, 36.282822>,  <33.015709, 30.112204, 36.718681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230377, 29.641855, 36.282822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.846050, 29.560123, 36.357738>,  <32.615456, 29.511084, 36.402687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.846050, 29.560123, 36.357738>,  <33.230377, 29.641855, 36.282822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846050, 29.560123, 36.357738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161275, -0.137423, -0.977295,
		0.225427, -0.969208, 0.099086,
		-0.960819, -0.204329, 0.187288,
		32.557804, 29.498825, 36.413925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104134, 28.917635, 35.995934>,  <33.230377, 29.641855, 36.282822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104134, 28.917635, 35.995934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.783073, 29.154995, 36.020046>,  <32.590439, 29.297411, 36.034515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.783073, 29.154995, 36.020046>,  <33.104134, 28.917635, 35.995934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783073, 29.154995, 36.020046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123019, -0.065806, -0.990220,
		-0.583628, -0.802214, 0.125818,
		-0.802648, 0.593399, 0.060282,
		32.542278, 29.333014, 36.038132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795006, 28.710642, 35.488155>,  <33.104134, 28.917635, 35.995934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795006, 28.710642, 35.488155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.577427, 29.039261, 35.556480>,  <32.446880, 29.236433, 35.597477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.577427, 29.039261, 35.556480>,  <32.795006, 28.710642, 35.488155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577427, 29.039261, 35.556480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236185, 0.045437, -0.970645,
		-0.805192, -0.568327, 0.169321,
		-0.543950, 0.821547, 0.170816,
		32.414242, 29.285725, 35.607723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101891, 28.588259, 35.193127>,  <32.795006, 28.710642, 35.488155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101891, 28.588259, 35.193127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.142281, 28.985081, 35.223148>,  <32.166515, 29.223173, 35.241161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.142281, 28.985081, 35.223148>,  <32.101891, 28.588259, 35.193127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142281, 28.985081, 35.223148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147789, 0.089555, -0.984956,
		-0.983851, 0.088362, 0.155658,
		0.100973, 0.992055, 0.075050,
		32.172573, 29.282698, 35.245663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596542, 28.897753, 34.746853>,  <32.101891, 28.588259, 35.193127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596542, 28.897753, 34.746853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.886053, 29.167545, 34.805130>,  <32.059761, 29.329420, 34.840096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.886053, 29.167545, 34.805130>,  <31.596542, 28.897753, 34.746853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886053, 29.167545, 34.805130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051900, 0.263752, -0.963193,
		-0.688081, 0.689574, 0.225902,
		0.723775, 0.674479, 0.145694,
		32.103188, 29.369888, 34.848839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794655, 29.099342, 34.560204>,  <31.596542, 28.897753, 34.746853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794655, 29.099342, 34.560204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.631697, 28.736401, 34.518753>,  <30.533922, 28.518635, 34.493881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.631697, 28.736401, 34.518753>,  <30.794655, 29.099342, 34.560204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631697, 28.736401, 34.518753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189084, -0.027207, 0.981584,
		-0.893464, 0.419485, -0.160482,
		-0.407394, -0.907354, -0.103627,
		30.509480, 28.464195, 34.487663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095127, 29.091839, 34.848694>,  <30.794655, 29.099342, 34.560204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095127, 29.091839, 34.848694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.242788, 28.720703, 34.870007>,  <30.331385, 28.498022, 34.882793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.242788, 28.720703, 34.870007>,  <30.095127, 29.091839, 34.848694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242788, 28.720703, 34.870007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301330, -0.065259, 0.951284,
		-0.879162, -0.367225, -0.303677,
		0.369153, -0.927840, 0.053283,
		30.353535, 28.442350, 34.885990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622622, 28.783754, 35.387405>,  <30.095127, 29.091839, 34.848694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622622, 28.783754, 35.387405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.918669, 28.522057, 35.325191>,  <30.096296, 28.365038, 35.287865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.918669, 28.522057, 35.325191>,  <29.622622, 28.783754, 35.387405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918669, 28.522057, 35.325191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147817, -0.383900, 0.911466,
		-0.656033, -0.651600, -0.380839,
		0.740116, -0.654247, -0.155533,
		30.140703, 28.325783, 35.278530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400747, 28.214006, 35.799480>,  <29.622622, 28.783754, 35.387405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400747, 28.214006, 35.799480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.788080, 28.145760, 35.726570>,  <30.020479, 28.104811, 35.682823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.788080, 28.145760, 35.726570>,  <29.400747, 28.214006, 35.799480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788080, 28.145760, 35.726570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100309, -0.402690, 0.909824,
		-0.228629, -0.899295, -0.372823,
		0.968332, -0.170615, -0.182274,
		30.078579, 28.094574, 35.671886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443022, 27.569326, 35.882202>,  <29.400747, 28.214006, 35.799480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443022, 27.569326, 35.882202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.809242, 27.717484, 35.944904>,  <30.028975, 27.806377, 35.982525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.809242, 27.717484, 35.944904>,  <29.443022, 27.569326, 35.882202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809242, 27.717484, 35.944904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016872, -0.354031, 0.935081,
		0.401843, -0.858762, -0.317885,
		0.915553, 0.370392, 0.156754,
		30.083908, 27.828602, 35.991932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764782, 26.968819, 36.102062>,  <29.443022, 27.569326, 35.882202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764782, 26.968819, 36.102062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.955679, 27.292923, 36.238132>,  <30.070217, 27.487385, 36.319775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.955679, 27.292923, 36.238132>,  <29.764782, 26.968819, 36.102062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955679, 27.292923, 36.238132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003058, -0.385569, 0.922674,
		0.878766, -0.441381, -0.181533,
		0.477244, 0.810259, 0.340175,
		30.098852, 27.536001, 36.340183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107849, 26.678907, 36.570911>,  <29.764782, 26.968819, 36.102062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107849, 26.678907, 36.570911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.174561, 27.059525, 36.674255>,  <30.214588, 27.287895, 36.736259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.174561, 27.059525, 36.674255>,  <30.107849, 26.678907, 36.570911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174561, 27.059525, 36.674255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122021, -0.279930, 0.952234,
		0.978415, -0.127288, -0.162795,
		0.166780, 0.951545, 0.258355,
		30.224594, 27.344988, 36.751762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660400, 26.712011, 37.060020>,  <30.107849, 26.678907, 36.570911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660400, 26.712011, 37.060020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.436466, 27.039196, 37.112965>,  <30.302105, 27.235508, 37.144730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.436466, 27.039196, 37.112965>,  <30.660400, 26.712011, 37.060020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436466, 27.039196, 37.112965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112235, -0.233122, 0.965949,
		0.820966, 0.525919, 0.222315,
		-0.559837, 0.817963, 0.132359,
		30.268515, 27.284584, 37.152672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969366, 27.125917, 37.636490>,  <30.660400, 26.712011, 37.060020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969366, 27.125917, 37.636490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.585154, 27.231609, 37.601707>,  <30.354626, 27.295025, 37.580837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.585154, 27.231609, 37.601707>,  <30.969366, 27.125917, 37.636490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585154, 27.231609, 37.601707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144900, -0.208445, 0.967241,
		0.237450, 0.941665, 0.238505,
		-0.960532, 0.264230, -0.086952,
		30.296993, 27.310879, 37.575623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.859486, 33.610580, 22.905731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644745, 33.740860, 23.217041>,  <29.515902, 33.819027, 23.403828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644745, 33.740860, 23.217041>,  <29.859486, 33.610580, 22.905731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644745, 33.740860, 23.217041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147962, -0.871837, 0.466912,
		0.830601, 0.365817, 0.419856,
		-0.536851, 0.325695, 0.778276,
		29.483690, 33.838570, 23.450523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229424, 33.527882, 23.487808>,  <29.859486, 33.610580, 22.905731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229424, 33.527882, 23.487808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835289, 33.505119, 23.552155>,  <29.598808, 33.491463, 23.590761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835289, 33.505119, 23.552155>,  <30.229424, 33.527882, 23.487808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835289, 33.505119, 23.552155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150458, -0.734463, 0.661760,
		0.080488, 0.676258, 0.732254,
		-0.985335, -0.056910, 0.160864,
		29.539688, 33.488045, 23.600414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085552, 33.744919, 24.226656>,  <30.229424, 33.527882, 23.487808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085552, 33.744919, 24.226656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813644, 33.497990, 24.068253>,  <29.650499, 33.349831, 23.973209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813644, 33.497990, 24.068253>,  <30.085552, 33.744919, 24.226656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813644, 33.497990, 24.068253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002234, -0.541687, 0.840578,
		-0.733422, 0.570514, 0.369601,
		-0.679770, -0.617324, -0.396010,
		29.609713, 33.312794, 23.949450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688505, 33.548698, 24.820166>,  <30.085552, 33.744919, 24.226656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688505, 33.548698, 24.820166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620224, 33.255539, 24.556736>,  <29.579256, 33.079643, 24.398678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620224, 33.255539, 24.556736>,  <29.688505, 33.548698, 24.820166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620224, 33.255539, 24.556736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006692, -0.667504, 0.744576,
		-0.985300, 0.131508, 0.109039,
		-0.170701, -0.732901, -0.658572,
		29.569014, 33.035667, 24.359165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433729, 33.099960, 25.227207>,  <29.688505, 33.548698, 24.820166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433729, 33.099960, 25.227207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455486, 32.856266, 24.910759>,  <29.468540, 32.710049, 24.720890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455486, 32.856266, 24.910759>,  <29.433729, 33.099960, 25.227207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455486, 32.856266, 24.910759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070885, -0.792650, 0.605542,
		-0.996000, 0.023141, -0.086301,
		0.054393, -0.609237, -0.791120,
		29.471804, 32.673496, 24.673424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847267, 32.659481, 25.278145>,  <29.433729, 33.099960, 25.227207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847267, 32.659481, 25.278145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160728, 32.525249, 25.069042>,  <29.348804, 32.444710, 24.943581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160728, 32.525249, 25.069042>,  <28.847267, 32.659481, 25.278145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160728, 32.525249, 25.069042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011402, -0.849159, 0.528015,
		-0.621092, -0.407820, -0.669273,
		0.783655, -0.335577, -0.522756,
		29.395824, 32.424576, 24.912214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651299, 32.031902, 25.022491>,  <28.847267, 32.659481, 25.278145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651299, 32.031902, 25.022491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051067, 32.034035, 25.009056>,  <29.290928, 32.035313, 25.000994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051067, 32.034035, 25.009056>,  <28.651299, 32.031902, 25.022491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051067, 32.034035, 25.009056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020734, -0.878347, 0.477573,
		-0.026959, -0.477994, -0.877950,
		0.999421, 0.005329, -0.033590,
		29.350893, 32.035633, 24.998980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815662, 31.378479, 25.043486>,  <28.651299, 32.031902, 25.022491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815662, 31.378479, 25.043486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156357, 31.545048, 25.170696>,  <29.360773, 31.644989, 25.247023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156357, 31.545048, 25.170696>,  <28.815662, 31.378479, 25.043486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156357, 31.545048, 25.170696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226709, -0.840078, 0.492821,
		0.472386, -0.347654, -0.809931,
		0.851736, 0.416421, 0.318025,
		29.411877, 31.669973, 25.266104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343214, 30.925234, 24.904505>,  <28.815662, 31.378479, 25.043486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343214, 30.925234, 24.904505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516190, 31.165451, 25.173531>,  <29.619976, 31.309582, 25.334946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516190, 31.165451, 25.173531>,  <29.343214, 30.925234, 24.904505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516190, 31.165451, 25.173531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336570, -0.799514, 0.497492,
		0.836490, 0.011230, -0.547867,
		0.432440, 0.600543, 0.672565,
		29.645922, 31.345613, 25.375299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855839, 30.547647, 25.082439>,  <29.343214, 30.925234, 24.904505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855839, 30.547647, 25.082439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854845, 30.809643, 25.384693>,  <29.854250, 30.966839, 25.566046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854845, 30.809643, 25.384693>,  <29.855839, 30.547647, 25.082439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854845, 30.809643, 25.384693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357982, -0.704979, 0.612253,
		0.933725, 0.272024, -0.232724,
		-0.002482, 0.654987, 0.755636,
		29.854101, 31.006140, 25.611383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531591, 30.414967, 25.476665>,  <29.855839, 30.547647, 25.082439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531591, 30.414967, 25.476665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281738, 30.615135, 25.716469>,  <30.131826, 30.735237, 25.860350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281738, 30.615135, 25.716469>,  <30.531591, 30.414967, 25.476665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281738, 30.615135, 25.716469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407973, -0.445487, 0.796931,
		0.665875, 0.742373, 0.074108,
		-0.624635, 0.500423, 0.599507,
		30.094347, 30.765263, 25.896320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972208, 30.590157, 26.071980>,  <30.531591, 30.414967, 25.476665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972208, 30.590157, 26.071980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596411, 30.620407, 26.205624>,  <30.370932, 30.638557, 26.285810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596411, 30.620407, 26.205624>,  <30.972208, 30.590157, 26.071980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596411, 30.620407, 26.205624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223754, -0.603048, 0.765681,
		0.259390, 0.794112, 0.549639,
		-0.939495, 0.075626, 0.334110,
		30.314562, 30.643095, 26.305857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290846, 31.189795, 26.300344>,  <30.972208, 30.590157, 26.071980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290846, 31.189795, 26.300344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688745, 31.173351, 26.262863>,  <31.927486, 31.163486, 26.240374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688745, 31.173351, 26.262863>,  <31.290846, 31.189795, 26.300344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688745, 31.173351, 26.262863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088850, 0.107193, -0.990260,
		0.050750, 0.993388, 0.102978,
		0.994751, -0.041106, -0.093703,
		31.987171, 31.161020, 26.234753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523306, 31.718824, 25.866343>,  <31.290846, 31.189795, 26.300344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523306, 31.718824, 25.866343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828138, 31.461384, 25.838032>,  <32.011036, 31.306919, 25.821045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828138, 31.461384, 25.838032>,  <31.523306, 31.718824, 25.866343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828138, 31.461384, 25.838032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211416, 0.350663, -0.912326,
		0.611995, 0.680301, 0.403301,
		0.762079, -0.643604, -0.070778,
		32.056763, 31.268303, 25.816799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942070, 32.028118, 25.478619>,  <31.523306, 31.718824, 25.866343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942070, 32.028118, 25.478619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100513, 31.661213, 25.461975>,  <32.195580, 31.441071, 25.451990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100513, 31.661213, 25.461975>,  <31.942070, 32.028118, 25.478619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100513, 31.661213, 25.461975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385114, 0.207102, -0.899331,
		0.833537, 0.340210, 0.435285,
		0.396110, -0.917260, -0.041608,
		32.219345, 31.386036, 25.449493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569511, 32.100044, 25.233547>,  <31.942070, 32.028118, 25.478619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569511, 32.100044, 25.233547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523125, 31.710567, 25.155094>,  <32.495293, 31.476881, 25.108023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523125, 31.710567, 25.155094>,  <32.569511, 32.100044, 25.233547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523125, 31.710567, 25.155094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501026, 0.113156, -0.858003,
		0.857627, -0.197765, 0.474725,
		-0.115965, -0.973696, -0.196132,
		32.488335, 31.418459, 25.096254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258919, 31.872175, 25.122177>,  <32.569511, 32.100044, 25.233547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258919, 31.872175, 25.122177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986832, 31.642887, 24.939430>,  <32.823578, 31.505314, 24.829782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986832, 31.642887, 24.939430>,  <33.258919, 31.872175, 25.122177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986832, 31.642887, 24.939430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462194, 0.148350, -0.874282,
		0.568931, -0.805862, 0.164028,
		-0.680217, -0.573219, -0.456865,
		32.782768, 31.470922, 24.802370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659931, 31.475695, 24.759800>,  <33.258919, 31.872175, 25.122177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659931, 31.475695, 24.759800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301243, 31.439564, 24.586487>,  <33.086029, 31.417885, 24.482498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301243, 31.439564, 24.586487>,  <33.659931, 31.475695, 24.759800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301243, 31.439564, 24.586487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399050, 0.258448, -0.879752,
		0.191450, -0.961792, -0.195709,
		-0.896719, -0.090331, -0.433284,
		33.032227, 31.412466, 24.456501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811523, 31.292690, 24.145136>,  <33.659931, 31.475695, 24.759800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811523, 31.292690, 24.145136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425919, 31.387051, 24.096085>,  <33.194557, 31.443666, 24.066654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425919, 31.387051, 24.096085>,  <33.811523, 31.292690, 24.145136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425919, 31.387051, 24.096085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193478, 0.306094, -0.932133,
		-0.182357, -0.922310, -0.340719,
		-0.964008, 0.235903, -0.122629,
		33.136715, 31.457821, 24.059296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664040, 30.877697, 23.673277>,  <33.811523, 31.292690, 24.145136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664040, 30.877697, 23.673277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414547, 31.190304, 23.667805>,  <33.264851, 31.377869, 23.664520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414547, 31.190304, 23.667805>,  <33.664040, 30.877697, 23.673277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414547, 31.190304, 23.667805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334294, 0.250898, -0.908459,
		-0.706544, -0.571210, -0.417750,
		-0.623733, 0.781518, -0.013682,
		33.227428, 31.424759, 23.663700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605110, 30.991520, 22.920826>,  <33.664040, 30.877697, 23.673277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605110, 30.991520, 22.920826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455208, 31.328651, 23.075329>,  <33.365265, 31.530931, 23.168030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455208, 31.328651, 23.075329>,  <33.605110, 30.991520, 22.920826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455208, 31.328651, 23.075329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171375, 0.472413, -0.864556,
		-0.911147, -0.257803, -0.321479,
		-0.374756, 0.842831, 0.386256,
		33.342781, 31.581501, 23.191206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149529, 31.331760, 22.435638>,  <33.605110, 30.991520, 22.920826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149529, 31.331760, 22.435638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284916, 31.599022, 22.700668>,  <33.366150, 31.759378, 22.859686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284916, 31.599022, 22.700668>,  <33.149529, 31.331760, 22.435638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284916, 31.599022, 22.700668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339767, 0.569852, -0.748216,
		-0.877493, 0.478373, -0.034137,
		0.338473, 0.668153, 0.662576,
		33.386459, 31.799467, 22.899441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025043, 31.993057, 22.125338>,  <33.149529, 31.331760, 22.435638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025043, 31.993057, 22.125338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303558, 32.099804, 22.391861>,  <33.470665, 32.163853, 22.551775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303558, 32.099804, 22.391861>,  <33.025043, 31.993057, 22.125338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303558, 32.099804, 22.391861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487700, 0.505201, -0.711984,
		-0.526626, 0.820703, 0.221612,
		0.696285, 0.266869, 0.666309,
		33.512444, 32.179863, 22.591753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043671, 32.728806, 22.086576>,  <33.025043, 31.993057, 22.125338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043671, 32.728806, 22.086576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395996, 32.609493, 22.233650>,  <33.607391, 32.537907, 22.321894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395996, 32.609493, 22.233650>,  <33.043671, 32.728806, 22.086576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395996, 32.609493, 22.233650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471806, 0.617797, -0.629067,
		-0.039517, 0.727568, 0.684896,
		0.880816, -0.298280, 0.367685,
		33.660240, 32.520008, 22.343956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367458, 33.387684, 22.432201>,  <33.043671, 32.728806, 22.086576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367458, 33.387684, 22.432201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669880, 33.132950, 22.371780>,  <33.851334, 32.980110, 22.335527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669880, 33.132950, 22.371780>,  <33.367458, 33.387684, 22.432201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669880, 33.132950, 22.371780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548186, 0.742237, -0.385456,
		0.357588, 0.208622, 0.910279,
		0.756057, -0.636837, -0.151052,
		33.896698, 32.941898, 22.326466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940575, 33.703960, 22.661379>,  <33.367458, 33.387684, 22.432201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940575, 33.703960, 22.661379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099335, 33.421082, 22.427338>,  <34.194592, 33.251354, 22.286913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099335, 33.421082, 22.427338>,  <33.940575, 33.703960, 22.661379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099335, 33.421082, 22.427338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668613, 0.659488, -0.343559,
		0.628832, -0.254850, 0.734589,
		0.396896, -0.707197, -0.585103,
		34.218403, 33.208923, 22.251806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158901, 34.150970, 23.325066>,  <33.940575, 33.703960, 22.661379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158901, 34.150970, 23.325066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148598, 34.538300, 23.424419>,  <34.142414, 34.770695, 23.484032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148598, 34.538300, 23.424419>,  <34.158901, 34.150970, 23.325066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148598, 34.538300, 23.424419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743853, -0.147429, 0.651880,
		0.667847, 0.201554, -0.716489,
		-0.025758, 0.968318, 0.248387,
		34.140869, 34.828796, 23.498936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878967, 34.417862, 23.128912>,  <34.158901, 34.150970, 23.325066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878967, 34.417862, 23.128912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654873, 34.577404, 23.419304>,  <34.520416, 34.673130, 23.593538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654873, 34.577404, 23.419304>,  <34.878967, 34.417862, 23.128912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654873, 34.577404, 23.419304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635223, -0.355624, 0.685582,
		0.531626, 0.845248, -0.054130,
		-0.560237, 0.398858, 0.725980,
		34.486801, 34.697060, 23.637098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307495, 34.399441, 23.715237>,  <34.878967, 34.417862, 23.128912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307495, 34.399441, 23.715237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975861, 34.487541, 23.920799>,  <34.776878, 34.540401, 24.044136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975861, 34.487541, 23.920799>,  <35.307495, 34.399441, 23.715237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975861, 34.487541, 23.920799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472822, -0.214370, 0.854684,
		0.298408, 0.951597, 0.073594,
		-0.829091, 0.220248, 0.513906,
		34.727135, 34.553616, 24.074970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416359, 34.865513, 24.242666>,  <35.307495, 34.399441, 23.715237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416359, 34.865513, 24.242666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085674, 34.689800, 24.383282>,  <34.887264, 34.584373, 24.467651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085674, 34.689800, 24.383282>,  <35.416359, 34.865513, 24.242666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085674, 34.689800, 24.383282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431439, -0.093925, 0.897239,
		-0.361126, 0.893424, 0.267174,
		-0.826709, -0.439285, 0.351539,
		34.837662, 34.558014, 24.488743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422359, 35.094143, 24.911140>,  <35.416359, 34.865513, 24.242666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422359, 35.094143, 24.911140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137959, 34.813461, 24.929428>,  <34.967319, 34.645054, 24.940401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137959, 34.813461, 24.929428>,  <35.422359, 35.094143, 24.911140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137959, 34.813461, 24.929428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253912, -0.195558, 0.947251,
		-0.655748, 0.685105, 0.317214,
		-0.711001, -0.701703, 0.045720,
		34.924660, 34.602951, 24.943144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968964, 35.278614, 25.564894>,  <35.422359, 35.094143, 24.911140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968964, 35.278614, 25.564894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931705, 34.891182, 25.472656>,  <34.909351, 34.658722, 25.417313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931705, 34.891182, 25.472656>,  <34.968964, 35.278614, 25.564894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931705, 34.891182, 25.472656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071452, -0.237507, 0.968754,
		-0.993086, 0.073755, 0.091329,
		-0.093141, -0.968582, -0.230595,
		34.903763, 34.600609, 25.403477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518265, 34.975170, 26.106827>,  <34.968964, 35.278614, 25.564894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518265, 34.975170, 26.106827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690189, 34.657101, 25.935730>,  <34.793343, 34.466259, 25.833073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690189, 34.657101, 25.935730>,  <34.518265, 34.975170, 26.106827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690189, 34.657101, 25.935730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084969, -0.436007, 0.895923,
		-0.898913, -0.421420, -0.119834,
		0.429808, -0.795175, -0.427741,
		34.819130, 34.418549, 25.807407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168056, 34.421928, 26.437866>,  <34.518265, 34.975170, 26.106827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168056, 34.421928, 26.437866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505142, 34.289143, 26.268333>,  <34.707394, 34.209473, 26.166613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505142, 34.289143, 26.268333>,  <34.168056, 34.421928, 26.437866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505142, 34.289143, 26.268333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177826, -0.571437, 0.801148,
		-0.508144, -0.750508, -0.422527,
		0.842715, -0.331962, -0.423832,
		34.757957, 34.189552, 26.141184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122345, 33.753365, 26.521948>,  <34.168056, 34.421928, 26.437866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122345, 33.753365, 26.521948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506882, 33.855095, 26.479721>,  <34.737602, 33.916134, 26.454384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506882, 33.855095, 26.479721>,  <34.122345, 33.753365, 26.521948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506882, 33.855095, 26.479721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179496, -0.288031, 0.940648,
		0.208824, -0.923231, -0.322546,
		0.961340, 0.254326, -0.105568,
		34.795284, 33.931393, 26.448051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395863, 33.160645, 26.699821>,  <34.122345, 33.753365, 26.521948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395863, 33.160645, 26.699821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646896, 33.468781, 26.744907>,  <34.797516, 33.653664, 26.771959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646896, 33.468781, 26.744907>,  <34.395863, 33.160645, 26.699821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646896, 33.468781, 26.744907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023273, -0.163274, 0.986306,
		0.778198, -0.616370, -0.120397,
		0.627587, 0.770344, 0.112715,
		34.835171, 33.699883, 26.778723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061630, 32.866413, 27.065041>,  <34.395863, 33.160645, 26.699821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061630, 32.866413, 27.065041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018494, 33.260132, 27.120937>,  <34.992611, 33.496365, 27.154476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018494, 33.260132, 27.120937>,  <35.061630, 32.866413, 27.065041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018494, 33.260132, 27.120937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261298, -0.107557, 0.959247,
		0.959215, 0.139965, -0.245595,
		-0.107845, 0.984297, 0.139742,
		34.986141, 33.555420, 27.162861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411636, 32.903210, 27.679062>,  <35.061630, 32.866413, 27.065041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411636, 32.903210, 27.679062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264832, 33.274048, 27.648617>,  <35.176750, 33.496552, 27.630350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264832, 33.274048, 27.648617>,  <35.411636, 32.903210, 27.679062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264832, 33.274048, 27.648617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001059, 0.082239, 0.996612,
		0.930216, 0.365687, -0.031164,
		-0.367011, 0.927097, -0.076113,
		35.154728, 33.552177, 27.625784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799950, 33.186607, 28.167839>,  <35.411636, 32.903210, 27.679062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799950, 33.186607, 28.167839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481976, 33.422825, 28.112213>,  <35.291191, 33.564556, 28.078838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481976, 33.422825, 28.112213>,  <35.799950, 33.186607, 28.167839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481976, 33.422825, 28.112213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066180, 0.143443, 0.987443,
		0.603080, 0.794152, -0.074945,
		-0.794930, 0.590548, -0.139065,
		35.243496, 33.599991, 28.070494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895096, 33.839214, 28.511597>,  <35.799950, 33.186607, 28.167839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895096, 33.839214, 28.511597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500633, 33.779312, 28.483101>,  <35.263958, 33.743370, 28.466003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500633, 33.779312, 28.483101>,  <35.895096, 33.839214, 28.511597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500633, 33.779312, 28.483101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120354, 0.350758, 0.928700,
		-0.114091, 0.924414, -0.363924,
		-0.986153, -0.149756, -0.071238,
		35.204788, 33.734386, 28.461729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604527, 34.291298, 28.978849>,  <35.895096, 33.839214, 28.511597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604527, 34.291298, 28.978849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294300, 34.051830, 28.898754>,  <35.108166, 33.908150, 28.850697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294300, 34.051830, 28.898754>,  <35.604527, 34.291298, 28.978849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294300, 34.051830, 28.898754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277021, 0.037742, 0.960122,
		-0.567241, 0.800105, -0.195116,
		-0.775563, -0.598671, -0.200237,
		35.061630, 33.872231, 28.838682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043770, 34.603233, 29.291542>,  <35.604527, 34.291298, 28.978849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043770, 34.603233, 29.291542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927273, 34.225807, 29.228477>,  <34.857372, 33.999352, 29.190638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927273, 34.225807, 29.228477>,  <35.043770, 34.603233, 29.291542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927273, 34.225807, 29.228477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544451, 0.027975, 0.838326,
		-0.786606, 0.329999, -0.521873,
		-0.291246, -0.943567, -0.157663,
		34.839897, 33.942738, 29.181179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323399, 34.673695, 29.263968>,  <35.043770, 34.603233, 29.291542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323399, 34.673695, 29.263968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387749, 34.291229, 29.361843>,  <34.426357, 34.061749, 29.420568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387749, 34.291229, 29.361843>,  <34.323399, 34.673695, 29.263968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387749, 34.291229, 29.361843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511790, 0.131167, 0.849038,
		-0.843913, -0.261819, -0.468253,
		0.160875, -0.956162, 0.244690,
		34.436012, 34.004379, 29.435249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739063, 34.523129, 29.657476>,  <34.323399, 34.673695, 29.263968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739063, 34.523129, 29.657476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003342, 34.237793, 29.750973>,  <34.161907, 34.066593, 29.807070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003342, 34.237793, 29.750973>,  <33.739063, 34.523129, 29.657476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003342, 34.237793, 29.750973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326571, 0.007227, 0.945145,
		-0.675895, -0.700785, -0.228180,
		0.660694, -0.713336, 0.233741,
		34.201550, 34.023792, 29.821095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361660, 33.871181, 30.006670>,  <33.739063, 34.523129, 29.657476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361660, 33.871181, 30.006670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744938, 33.837765, 30.116127>,  <33.974907, 33.817715, 30.181801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744938, 33.837765, 30.116127>,  <33.361660, 33.871181, 30.006670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744938, 33.837765, 30.116127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283738, -0.154557, 0.946364,
		-0.036767, -0.984446, -0.171799,
		0.958197, -0.083541, 0.273642,
		34.032398, 33.812702, 30.198219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391960, 33.385033, 30.480247>,  <33.361660, 33.871181, 30.006670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391960, 33.385033, 30.480247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732212, 33.584751, 30.546143>,  <33.936363, 33.704582, 30.585680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732212, 33.584751, 30.546143>,  <33.391960, 33.385033, 30.480247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732212, 33.584751, 30.546143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183988, -0.010841, 0.982869,
		0.492527, -0.866364, 0.082643,
		0.850626, 0.499294, 0.164740,
		33.987400, 33.734539, 30.595564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684483, 32.970139, 30.898857>,  <33.391960, 33.385033, 30.480247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684483, 32.970139, 30.898857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825363, 33.338699, 30.964558>,  <33.909889, 33.559834, 31.003979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825363, 33.338699, 30.964558>,  <33.684483, 32.970139, 30.898857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825363, 33.338699, 30.964558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295640, -0.056987, 0.953598,
		0.888005, -0.384415, 0.252332,
		0.352198, 0.921400, 0.164253,
		33.931023, 33.615120, 31.013834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125065, 32.936207, 31.533695>,  <33.684483, 32.970139, 30.898857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125065, 32.936207, 31.533695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037613, 33.326080, 31.514977>,  <33.985142, 33.560005, 31.503744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037613, 33.326080, 31.514977>,  <34.125065, 32.936207, 31.533695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037613, 33.326080, 31.514977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253533, -0.010428, 0.967270,
		0.942296, 0.223340, 0.249395,
		-0.218631, 0.974685, -0.046798,
		33.972023, 33.618484, 31.500937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283012, 33.156170, 32.169834>,  <34.125065, 32.936207, 31.533695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283012, 33.156170, 32.169834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060448, 33.471619, 32.065155>,  <33.926910, 33.660889, 32.002350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060448, 33.471619, 32.065155>,  <34.283012, 33.156170, 32.169834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060448, 33.471619, 32.065155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149726, 0.214636, 0.965149,
		0.817305, 0.576203, -0.001349,
		-0.556412, 0.788620, -0.261696,
		33.893524, 33.708206, 31.986647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503971, 33.604233, 32.632679>,  <34.283012, 33.156170, 32.169834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503971, 33.604233, 32.632679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152271, 33.745914, 32.505276>,  <33.941250, 33.830925, 32.428833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152271, 33.745914, 32.505276>,  <34.503971, 33.604233, 32.632679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152271, 33.745914, 32.505276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238407, 0.251662, 0.937992,
		0.412402, 0.900668, -0.136829,
		-0.879254, 0.354209, -0.318512,
		33.888496, 33.852177, 32.409721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411362, 34.176376, 32.987068>,  <34.503971, 33.604233, 32.632679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411362, 34.176376, 32.987068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033154, 34.116573, 32.871395>,  <33.806229, 34.080692, 32.801991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.033154, 34.116573, 32.871395>,  <34.411362, 34.176376, 32.987068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033154, 34.116573, 32.871395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321046, 0.280978, 0.904423,
		-0.053966, 0.947997, -0.313671,
		-0.945525, -0.149511, -0.289187,
		33.749496, 34.071720, 32.784637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881134, 34.814579, 33.015911>,  <34.411362, 34.176376, 32.987068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881134, 34.814579, 33.015911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696232, 34.465092, 33.076492>,  <33.585289, 34.255398, 33.112843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696232, 34.465092, 33.076492>,  <33.881134, 34.814579, 33.015911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696232, 34.465092, 33.076492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134461, 0.237883, 0.961942,
		-0.876494, 0.424297, -0.227444,
		-0.462254, -0.873718, 0.151451,
		33.557556, 34.202976, 33.121929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416275, 34.970161, 33.617237>,  <33.881134, 34.814579, 33.015911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416275, 34.970161, 33.617237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379032, 34.572613, 33.593407>,  <33.356686, 34.334084, 33.579109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379032, 34.572613, 33.593407>,  <33.416275, 34.970161, 33.617237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379032, 34.572613, 33.593407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234792, -0.036231, 0.971370,
		-0.967577, 0.104426, -0.229981,
		-0.093104, -0.993872, -0.059574,
		33.351101, 34.274452, 33.575535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835400, 34.694950, 34.017036>,  <33.416275, 34.970161, 33.617237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835400, 34.694950, 34.017036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051128, 34.361473, 33.969543>,  <33.180565, 34.161388, 33.941048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051128, 34.361473, 33.969543>,  <32.835400, 34.694950, 34.017036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051128, 34.361473, 33.969543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134706, -0.224593, 0.965097,
		-0.831258, -0.504500, -0.233430,
		0.539318, -0.833689, -0.118735,
		33.212925, 34.111366, 33.933922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172211, 34.379925, 33.767162>,  <32.835400, 34.694950, 34.017036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172211, 34.379925, 33.767162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775583, 34.413776, 33.727924>,  <31.537605, 34.434086, 33.704380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775583, 34.413776, 33.727924>,  <32.172211, 34.379925, 33.767162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775583, 34.413776, 33.727924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110876, 0.162695, -0.980427,
		-0.067011, -0.983041, -0.170707,
		-0.991573, 0.084626, -0.098094,
		31.478111, 34.439163, 33.698498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024761, 34.050007, 33.080544>,  <32.172211, 34.379925, 33.767162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024761, 34.050007, 33.080544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727243, 34.305698, 33.158672>,  <31.548733, 34.459114, 33.205551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727243, 34.305698, 33.158672>,  <32.024761, 34.050007, 33.080544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727243, 34.305698, 33.158672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001728, 0.294062, -0.955785,
		-0.668406, -0.710570, -0.219826,
		-0.743795, 0.639232, 0.195325,
		31.504105, 34.497467, 33.217270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623083, 34.087383, 32.431976>,  <32.024761, 34.050007, 33.080544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623083, 34.087383, 32.431976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509663, 34.413551, 32.633846>,  <31.441610, 34.609253, 32.754967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509663, 34.413551, 32.633846>,  <31.623083, 34.087383, 32.431976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509663, 34.413551, 32.633846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099606, 0.498381, -0.861217,
		-0.953770, -0.294467, -0.060096,
		-0.283550, 0.815418, 0.504671,
		31.424597, 34.658176, 32.785248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025124, 34.282681, 32.202473>,  <31.623083, 34.087383, 32.431976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025124, 34.282681, 32.202473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145275, 34.624329, 32.372299>,  <31.217365, 34.829315, 32.474194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145275, 34.624329, 32.372299>,  <31.025124, 34.282681, 32.202473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145275, 34.624329, 32.372299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104378, 0.471884, -0.875460,
		-0.948092, 0.218655, 0.230895,
		0.300379, 0.854117, 0.424567,
		31.235390, 34.880562, 32.499668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566687, 34.830429, 31.994078>,  <31.025124, 34.282681, 32.202473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566687, 34.830429, 31.994078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918230, 34.999180, 32.083187>,  <31.129156, 35.100430, 32.136654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918230, 34.999180, 32.083187>,  <30.566687, 34.830429, 31.994078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918230, 34.999180, 32.083187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024916, 0.506896, -0.861647,
		-0.476431, 0.751715, 0.456002,
		0.878859, 0.421877, 0.222771,
		31.181889, 35.125744, 32.150017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
