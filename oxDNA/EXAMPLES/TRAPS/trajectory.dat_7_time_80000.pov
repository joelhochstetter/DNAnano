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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.146683, 52.955925, 49.553757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236107, 53.233421, 49.827614>,  <36.289761, 53.399921, 49.991928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236107, 53.233421, 49.827614>,  <36.146683, 52.955925, 49.553757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236107, 53.233421, 49.827614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324447, -0.715334, 0.618895,
		0.919105, 0.083770, -0.385005,
		0.223563, 0.693743, 0.684646,
		36.303177, 53.441544, 50.033009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867664, 53.112358, 49.546715>,  <36.146683, 52.955925, 49.553757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867664, 53.112358, 49.546715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610107, 53.100239, 49.852524>,  <36.455574, 53.092968, 50.036007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610107, 53.100239, 49.852524>,  <36.867664, 53.112358, 49.546715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610107, 53.100239, 49.852524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248485, -0.953334, 0.171494,
		0.723644, 0.300394, 0.621371,
		-0.643890, -0.030301, 0.764518,
		36.416939, 53.091148, 50.081879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379723, 53.446648, 49.117031>,  <36.867664, 53.112358, 49.546715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379723, 53.446648, 49.117031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325947, 53.424583, 48.721275>,  <37.293682, 53.411346, 48.483822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325947, 53.424583, 48.721275>,  <37.379723, 53.446648, 49.117031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325947, 53.424583, 48.721275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831580, 0.536701, -0.142921,
		0.538887, -0.841967, -0.026294,
		-0.134446, -0.055153, -0.989385,
		37.285614, 53.408035, 48.424461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949635, 53.100273, 48.694016>,  <37.379723, 53.446648, 49.117031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949635, 53.100273, 48.694016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787884, 53.421631, 48.519188>,  <37.690834, 53.614445, 48.414291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787884, 53.421631, 48.519188>,  <37.949635, 53.100273, 48.694016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787884, 53.421631, 48.519188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893153, 0.449753, 0.000358,
		0.196862, -0.390228, -0.899426,
		-0.404380, 0.803395, -0.437073,
		37.666569, 53.662651, 48.388065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389473, 53.365452, 48.016373>,  <37.949635, 53.100273, 48.694016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389473, 53.365452, 48.016373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212070, 53.664795, 48.213657>,  <38.105629, 53.844402, 48.332027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212070, 53.664795, 48.213657>,  <38.389473, 53.365452, 48.016373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212070, 53.664795, 48.213657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884255, 0.455160, 0.104512,
		-0.146280, 0.482481, -0.863606,
		-0.443503, 0.748360, 0.493216,
		38.079018, 53.889301, 48.361622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743534, 53.912968, 47.750923>,  <38.389473, 53.365452, 48.016373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743534, 53.912968, 47.750923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584911, 54.025562, 48.100441>,  <38.489738, 54.093121, 48.310150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584911, 54.025562, 48.100441>,  <38.743534, 53.912968, 47.750923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584911, 54.025562, 48.100441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759925, 0.634662, 0.140423,
		-0.515033, 0.719700, -0.465588,
		-0.396554, 0.281489, 0.873790,
		38.465946, 54.110008, 48.362579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761883, 54.713024, 47.862736>,  <38.743534, 53.912968, 47.750923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761883, 54.713024, 47.862736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750858, 54.493656, 48.197037>,  <38.744244, 54.362034, 48.397617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750858, 54.493656, 48.197037>,  <38.761883, 54.713024, 47.862736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750858, 54.493656, 48.197037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889699, 0.367694, 0.270624,
		-0.455716, 0.751024, 0.477793,
		-0.027563, -0.548420, 0.835749,
		38.742588, 54.329132, 48.447762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165596, 55.111660, 48.439129>,  <38.761883, 54.713024, 47.862736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165596, 55.111660, 48.439129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132488, 54.737198, 48.575817>,  <39.112625, 54.512520, 48.657829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132488, 54.737198, 48.575817>,  <39.165596, 55.111660, 48.439129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132488, 54.737198, 48.575817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913827, 0.065502, 0.400786,
		-0.397579, 0.345443, 0.850059,
		-0.082768, -0.936151, 0.341717,
		39.107658, 54.456352, 48.678333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622044, 55.041851, 48.954453>,  <39.165596, 55.111660, 48.439129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622044, 55.041851, 48.954453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547421, 54.652092, 48.904266>,  <39.502647, 54.418236, 48.874153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547421, 54.652092, 48.904266>,  <39.622044, 55.041851, 48.954453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547421, 54.652092, 48.904266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865243, -0.223446, 0.448806,
		-0.465351, -0.024831, 0.884778,
		-0.186556, -0.974400, -0.125466,
		39.491455, 54.359772, 48.866627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833271, 54.701126, 49.563053>,  <39.622044, 55.041851, 48.954453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833271, 54.701126, 49.563053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855442, 54.452038, 49.250862>,  <39.868744, 54.302586, 49.063549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855442, 54.452038, 49.250862>,  <39.833271, 54.701126, 49.563053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855442, 54.452038, 49.250862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869131, -0.354670, 0.344704,
		-0.491466, -0.697444, 0.521568,
		0.055427, -0.622721, -0.780478,
		39.872070, 54.265221, 49.016720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857933, 53.956120, 49.819881>,  <39.833271, 54.701126, 49.563053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857933, 53.956120, 49.819881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046085, 54.129772, 49.512566>,  <40.158978, 54.233963, 49.328175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046085, 54.129772, 49.512566>,  <39.857933, 53.956120, 49.819881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046085, 54.129772, 49.512566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881874, -0.263095, 0.391255,
		-0.032277, -0.861574, -0.506605,
		0.470380, 0.434133, -0.768291,
		40.187199, 54.260014, 49.282078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391758, 53.499714, 49.649445>,  <39.857933, 53.956120, 49.819881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391758, 53.499714, 49.649445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496719, 53.866848, 49.530304>,  <40.559696, 54.087128, 49.458820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496719, 53.866848, 49.530304>,  <40.391758, 53.499714, 49.649445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496719, 53.866848, 49.530304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872517, -0.093847, 0.479486,
		0.412138, -0.385701, -0.825455,
		0.262404, 0.917838, -0.297853,
		40.575439, 54.142200, 49.440948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129688, 53.422840, 49.554562>,  <40.391758, 53.499714, 49.649445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129688, 53.422840, 49.554562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039459, 53.806934, 49.620358>,  <40.985321, 54.037392, 49.659836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.039459, 53.806934, 49.620358>,  <41.129688, 53.422840, 49.554562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039459, 53.806934, 49.620358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822526, 0.097233, 0.560355,
		0.522080, 0.261703, -0.811754,
		-0.225576, 0.960238, 0.164494,
		40.971786, 54.095005, 49.669704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720764, 53.758415, 49.722889>,  <41.129688, 53.422840, 49.554562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720764, 53.758415, 49.722889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457775, 54.031010, 49.851460>,  <41.299984, 54.194565, 49.928600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457775, 54.031010, 49.851460>,  <41.720764, 53.758415, 49.722889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457775, 54.031010, 49.851460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705476, 0.406933, 0.580267,
		0.264643, 0.608266, -0.748316,
		-0.657471, 0.681482, 0.321425,
		41.260532, 54.235455, 49.947887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922215, 54.538929, 49.599876>,  <41.720764, 53.758415, 49.722889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922215, 54.538929, 49.599876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691475, 54.466751, 49.918545>,  <41.553032, 54.423443, 50.109745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.691475, 54.466751, 49.918545>,  <41.922215, 54.538929, 49.599876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691475, 54.466751, 49.918545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744366, 0.285521, 0.603652,
		-0.336394, 0.941231, -0.030384,
		-0.576852, -0.180448, 0.796668,
		41.518421, 54.412617, 50.157547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325851, 55.124756, 49.733044>,  <41.922215, 54.538929, 49.599876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325851, 55.124756, 49.733044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188911, 55.182957, 50.104340>,  <42.106747, 55.217876, 50.327118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188911, 55.182957, 50.104340>,  <42.325851, 55.124756, 49.733044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188911, 55.182957, 50.104340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810914, -0.453239, 0.370125,
		0.474569, 0.879433, 0.037172,
		-0.342348, 0.145507, 0.928238,
		42.086208, 55.226608, 50.382812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833237, 55.070934, 49.990570>,  <42.325851, 55.124756, 49.733044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833237, 55.070934, 49.990570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613575, 55.086124, 50.324512>,  <42.481777, 55.095238, 50.524879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613575, 55.086124, 50.324512>,  <42.833237, 55.070934, 49.990570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613575, 55.086124, 50.324512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770201, -0.364738, 0.523217,
		0.324375, 0.930335, 0.171046,
		-0.549155, 0.037979, 0.834857,
		42.448830, 55.097519, 50.574970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207741, 55.258606, 50.538597>,  <42.833237, 55.070934, 49.990570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207741, 55.258606, 50.538597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894024, 55.102348, 50.731377>,  <42.705791, 55.008595, 50.847046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894024, 55.102348, 50.731377>,  <43.207741, 55.258606, 50.538597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894024, 55.102348, 50.731377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619877, -0.461967, 0.634302,
		-0.025140, 0.796232, 0.604469,
		-0.784296, -0.390642, 0.481952,
		42.658733, 54.985157, 50.875961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.164268, 55.442539, 51.238060>,  <43.207741, 55.258606, 50.538597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.164268, 55.442539, 51.238060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995201, 55.085701, 51.174164>,  <42.893761, 54.871597, 51.135826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.995201, 55.085701, 51.174164>,  <43.164268, 55.442539, 51.238060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995201, 55.085701, 51.174164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794106, -0.449488, 0.409091,
		-0.436750, 0.046059, 0.898403,
		-0.422664, -0.892098, -0.159738,
		42.868401, 54.818073, 51.126244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661449, 54.860916, 51.150188>,  <43.164268, 55.442539, 51.238060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661449, 54.860916, 51.150188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727211, 54.783169, 51.537010>,  <43.766666, 54.736519, 51.769104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727211, 54.783169, 51.537010>,  <43.661449, 54.860916, 51.150188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727211, 54.783169, 51.537010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985398, 0.076396, -0.152164,
		-0.044303, 0.977949, 0.204091,
		0.164401, -0.194370, 0.967054,
		43.776531, 54.724857, 51.827126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048439, 55.381222, 51.580555>,  <43.661449, 54.860916, 51.150188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048439, 55.381222, 51.580555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.111767, 54.997868, 51.675583>,  <44.149761, 54.767857, 51.732597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.111767, 54.997868, 51.675583>,  <44.048439, 55.381222, 51.580555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.111767, 54.997868, 51.675583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982707, 0.129536, -0.132312,
		0.096033, 0.254405, 0.962318,
		0.158316, -0.958383, 0.237566,
		44.159260, 54.710354, 51.746853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665524, 55.256927, 52.100124>,  <44.048439, 55.381222, 51.580555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665524, 55.256927, 52.100124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640358, 54.935257, 51.863705>,  <44.625259, 54.742256, 51.721851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.640358, 54.935257, 51.863705>,  <44.665524, 55.256927, 52.100124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640358, 54.935257, 51.863705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965407, 0.101115, -0.240343,
		0.253042, -0.585725, 0.769997,
		-0.062917, -0.804178, -0.591050,
		44.621483, 54.694004, 51.686390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.234806, 54.641922, 52.287224>,  <44.665524, 55.256927, 52.100124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.234806, 54.641922, 52.287224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.097973, 54.669060, 51.912338>,  <45.015873, 54.685341, 51.687405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.097973, 54.669060, 51.912338>,  <45.234806, 54.641922, 52.287224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097973, 54.669060, 51.912338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937586, 0.091029, -0.335629,
		0.062543, -0.993535, -0.094751,
		-0.342084, 0.067846, -0.937217,
		44.995346, 54.689415, 51.631172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.545723, 54.132610, 51.853058>,  <45.234806, 54.641922, 52.287224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.545723, 54.132610, 51.853058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442280, 54.459324, 51.646763>,  <45.380215, 54.655354, 51.522987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442280, 54.459324, 51.646763>,  <45.545723, 54.132610, 51.853058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442280, 54.459324, 51.646763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887541, -0.009841, -0.460623,
		-0.381305, -0.576859, -0.722385,
		-0.258606, 0.816784, -0.515739,
		45.364697, 54.704361, 51.492043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.807190, 54.024651, 51.117542>,  <45.545723, 54.132610, 51.853058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.807190, 54.024651, 51.117542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778141, 54.404987, 51.237961>,  <45.760712, 54.633190, 51.310211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778141, 54.404987, 51.237961>,  <45.807190, 54.024651, 51.117542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.778141, 54.404987, 51.237961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881815, 0.202235, -0.426032,
		-0.465971, 0.234533, -0.853150,
		-0.072619, 0.950839, 0.301050,
		45.756355, 54.690239, 51.328278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.099609, 54.371090, 50.639847>,  <45.807190, 54.024651, 51.117542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.099609, 54.371090, 50.639847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129349, 54.676815, 50.896069>,  <46.147194, 54.860249, 51.049801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129349, 54.676815, 50.896069>,  <46.099609, 54.371090, 50.639847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.129349, 54.676815, 50.896069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798625, 0.339038, -0.497243,
		-0.597218, 0.548531, -0.585187,
		0.074353, 0.764308, 0.640551,
		46.151653, 54.906109, 51.088234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.357437, 54.948662, 50.173538>,  <46.099609, 54.371090, 50.639847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.357437, 54.948662, 50.173538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457066, 54.979134, 50.559731>,  <46.516842, 54.997417, 50.791447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.457066, 54.979134, 50.559731>,  <46.357437, 54.948662, 50.173538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457066, 54.979134, 50.559731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897214, 0.357204, -0.259640,
		-0.364655, 0.930914, 0.020614,
		0.249066, 0.076184, 0.965485,
		46.531784, 55.001987, 50.849377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.978107, 55.213795, 50.138668>,  <46.357437, 54.948662, 50.173538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.978107, 55.213795, 50.138668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.980011, 55.207287, 50.538612>,  <46.981152, 55.203381, 50.778580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.980011, 55.207287, 50.538612>,  <46.978107, 55.213795, 50.138668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.980011, 55.207287, 50.538612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961674, 0.274195, -0.000115,
		-0.274154, 0.961537, 0.016945,
		0.004757, -0.016264, 0.999856,
		46.981438, 55.202404, 50.838570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.321423, 55.741863, 50.367558>,  <46.978107, 55.213795, 50.138668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.321423, 55.741863, 50.367558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.343185, 55.487476, 50.675476>,  <47.356243, 55.334846, 50.860229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.343185, 55.487476, 50.675476>,  <47.321423, 55.741863, 50.367558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.343185, 55.487476, 50.675476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978479, 0.187636, 0.085860,
		-0.199046, 0.748561, 0.632485,
		0.054405, -0.635964, 0.769799,
		47.359509, 55.296688, 50.906414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.795399, 56.059685, 50.896957>,  <47.321423, 55.741863, 50.367558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.795399, 56.059685, 50.896957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.812733, 55.667976, 50.976097>,  <47.823132, 55.432949, 51.023582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.812733, 55.667976, 50.976097>,  <47.795399, 56.059685, 50.896957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.812733, 55.667976, 50.976097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969284, 0.089198, 0.229198,
		-0.242096, 0.181841, 0.953060,
		0.043333, -0.979274, 0.197850,
		47.825733, 55.374195, 51.035454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.251652, 55.949066, 51.404572>,  <47.795399, 56.059685, 50.896957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.251652, 55.949066, 51.404572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.276501, 55.581120, 51.249657>,  <48.291412, 55.360352, 51.156708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.276501, 55.581120, 51.249657>,  <48.251652, 55.949066, 51.404572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.276501, 55.581120, 51.249657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997389, 0.042901, 0.058094,
		-0.036823, -0.389889, 0.920125,
		0.062125, -0.919862, -0.387291,
		48.295139, 55.305161, 51.133469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.585251, 55.572052, 51.818172>,  <48.251652, 55.949066, 51.404572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.585251, 55.572052, 51.818172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.650608, 55.490143, 51.432144>,  <48.689823, 55.440998, 51.200527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.650608, 55.490143, 51.432144>,  <48.585251, 55.572052, 51.818172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.650608, 55.490143, 51.432144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956789, 0.271391, 0.104404,
		0.240534, -0.940433, 0.240269,
		0.163392, -0.204775, -0.965075,
		48.699627, 55.428711, 51.142620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.128597, 55.084393, 51.732906>,  <48.585251, 55.572052, 51.818172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.128597, 55.084393, 51.732906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.096653, 55.333366, 51.421471>,  <49.077488, 55.482750, 51.234608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.096653, 55.333366, 51.421471>,  <49.128597, 55.084393, 51.732906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.096653, 55.333366, 51.421471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910641, 0.363229, 0.196974,
		0.405409, -0.693285, -0.595818,
		-0.079859, 0.622431, -0.778590,
		49.072697, 55.520096, 51.187893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.783356, 55.089848, 51.368607>,  <49.128597, 55.084393, 51.732906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.783356, 55.089848, 51.368607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.579441, 55.433945, 51.372467>,  <49.457092, 55.640404, 51.374783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.579441, 55.433945, 51.372467>,  <49.783356, 55.089848, 51.368607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.579441, 55.433945, 51.372467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800952, 0.470493, 0.370287,
		0.313996, 0.196498, -0.928867,
		-0.509787, 0.860247, 0.009653,
		49.426506, 55.692020, 51.375362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.944164, 55.629971, 50.837955>,  <49.783356, 55.089848, 51.368607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.944164, 55.629971, 50.837955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.837917, 55.755150, 51.202705>,  <49.774170, 55.830257, 51.421555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.837917, 55.755150, 51.202705>,  <49.944164, 55.629971, 50.837955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.837917, 55.755150, 51.202705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953390, 0.225722, 0.200244,
		-0.143165, 0.922559, -0.358312,
		-0.265616, 0.312943, 0.911874,
		49.758232, 55.849033, 51.476269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.685001, 55.707855, 50.974834>,  <49.944164, 55.629971, 50.837955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.685001, 55.707855, 50.974834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.512650, 55.776005, 51.329308>,  <50.409237, 55.816895, 51.541992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.512650, 55.776005, 51.329308>,  <50.685001, 55.707855, 50.974834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.512650, 55.776005, 51.329308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900171, 0.150272, 0.408791,
		-0.063521, 0.973854, -0.218115,
		-0.430879, 0.170374, 0.886181,
		50.383385, 55.827118, 51.595161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.178993, 56.081078, 51.496487>,  <50.685001, 55.707855, 50.974834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.178993, 56.081078, 51.496487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.933254, 55.903156, 51.757172>,  <50.785812, 55.796402, 51.913582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.933254, 55.903156, 51.757172>,  <51.178993, 56.081078, 51.496487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.933254, 55.903156, 51.757172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733196, -0.016619, 0.679814,
		-0.291556, 0.895472, 0.336341,
		-0.614344, -0.444808, 0.651711,
		50.748951, 55.769714, 51.952686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.259663, 56.456642, 52.109882>,  <51.178993, 56.081078, 51.496487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.259663, 56.456642, 52.109882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.137180, 56.077274, 52.142723>,  <51.063690, 55.849655, 52.162430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.137180, 56.077274, 52.142723>,  <51.259663, 56.456642, 52.109882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.137180, 56.077274, 52.142723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632568, -0.138257, 0.762064,
		-0.711405, 0.285284, 0.642274,
		-0.306204, -0.948419, 0.082105,
		51.045319, 55.792747, 52.167355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.999023, 56.177307, 52.848705>,  <51.259663, 56.456642, 52.109882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.999023, 56.177307, 52.848705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.161785, 55.888866, 52.624405>,  <51.259441, 55.715801, 52.489822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.161785, 55.888866, 52.624405>,  <50.999023, 56.177307, 52.848705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.161785, 55.888866, 52.624405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772884, -0.055440, 0.632120,
		-0.486911, -0.690609, 0.534769,
		0.406900, -0.721101, -0.560755,
		51.283855, 55.672535, 52.456177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.968723, 55.579655, 53.211609>,  <50.999023, 56.177307, 52.848705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.968723, 55.579655, 53.211609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.282394, 55.613705, 52.965744>,  <51.470596, 55.634136, 52.818226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.282394, 55.613705, 52.965744>,  <50.968723, 55.579655, 53.211609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.282394, 55.613705, 52.965744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602438, 0.133016, 0.787004,
		0.148756, -0.987451, 0.053025,
		0.784181, 0.085128, -0.614665,
		51.517651, 55.639244, 52.781345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.546093, 55.176628, 53.468792>,  <50.968723, 55.579655, 53.211609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.546093, 55.176628, 53.468792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.697891, 55.458801, 53.229340>,  <51.788971, 55.628105, 53.085670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.697891, 55.458801, 53.229340>,  <51.546093, 55.176628, 53.468792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.697891, 55.458801, 53.229340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798359, 0.077300, 0.597200,
		0.467556, -0.704554, -0.533851,
		0.379493, 0.705429, -0.598628,
		51.811741, 55.670429, 53.049751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.224545, 54.948601, 53.232822>,  <51.546093, 55.176628, 53.468792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.224545, 54.948601, 53.232822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.194550, 55.346939, 53.253448>,  <52.176552, 55.585941, 53.265823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.194550, 55.346939, 53.253448>,  <52.224545, 54.948601, 53.232822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.194550, 55.346939, 53.253448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862797, 0.038867, 0.504053,
		0.499957, 0.082289, -0.862132,
		-0.074986, 0.995850, 0.051567,
		52.172054, 55.645695, 53.268917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.818512, 55.499950, 52.900795>,  <52.224545, 54.948601, 53.232822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.818512, 55.499950, 52.900795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.624157, 55.623726, 53.227760>,  <52.507545, 55.697990, 53.423939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.624157, 55.623726, 53.227760>,  <52.818512, 55.499950, 52.900795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.624157, 55.623726, 53.227760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858407, -0.007038, 0.512921,
		0.164470, 0.950894, -0.262204,
		-0.485888, 0.309438, 0.817411,
		52.478390, 55.716557, 53.472984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.248486, 56.010220, 52.693687>,  <52.818512, 55.499950, 52.900795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.248486, 56.010220, 52.693687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.391838, 56.323624, 52.490643>,  <53.477848, 56.511665, 52.368816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.391838, 56.323624, 52.490643>,  <53.248486, 56.010220, 52.693687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.391838, 56.323624, 52.490643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804123, 0.017161, 0.594215,
		0.474288, -0.621136, -0.623892,
		0.358382, 0.783515, -0.507609,
		53.499352, 56.558678, 52.338360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.886074, 55.811306, 52.279537>,  <53.248486, 56.010220, 52.693687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.886074, 55.811306, 52.279537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.818390, 56.166851, 52.449852>,  <53.777779, 56.380177, 52.552040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.818390, 56.166851, 52.449852>,  <53.886074, 55.811306, 52.279537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.818390, 56.166851, 52.449852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671412, -0.212307, 0.710022,
		0.721508, 0.406022, -0.560867,
		-0.169209, 0.888860, 0.425789,
		53.767628, 56.433510, 52.577587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.468857, 56.169861, 52.319496>,  <53.886074, 55.811306, 52.279537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.468857, 56.169861, 52.319496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.214516, 56.291344, 52.603317>,  <54.061913, 56.364235, 52.773609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.214516, 56.291344, 52.603317>,  <54.468857, 56.169861, 52.319496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.214516, 56.291344, 52.603317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644178, -0.297550, 0.704627,
		0.425126, 0.905111, -0.006444,
		-0.635848, 0.303706, 0.709549,
		54.023762, 56.382454, 52.816181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.747169, 56.717876, 52.759850>,  <54.468857, 56.169861, 52.319496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.747169, 56.717876, 52.759850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.492195, 56.526211, 53.001205>,  <54.339211, 56.411213, 53.146019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.492195, 56.526211, 53.001205>,  <54.747169, 56.717876, 52.759850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.492195, 56.526211, 53.001205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730135, -0.125496, 0.671680,
		-0.246120, 0.868709, 0.429848,
		-0.637439, -0.479161, 0.603388,
		54.300964, 56.382462, 53.182220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.952770, 56.944630, 53.361042>,  <54.747169, 56.717876, 52.759850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.952770, 56.944630, 53.361042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.797035, 56.584522, 53.438942>,  <54.703594, 56.368458, 53.485680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.797035, 56.584522, 53.438942>,  <54.952770, 56.944630, 53.361042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.797035, 56.584522, 53.438942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706215, -0.156030, 0.690591,
		-0.591332, 0.406408, 0.696533,
		-0.389342, -0.900271, 0.194745,
		54.680233, 56.314442, 53.497364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.829098, 56.818508, 54.160057>,  <54.952770, 56.944630, 53.361042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.829098, 56.818508, 54.160057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.888580, 56.474190, 53.965363>,  <54.924271, 56.267597, 53.848545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.888580, 56.474190, 53.965363>,  <54.829098, 56.818508, 54.160057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.888580, 56.474190, 53.965363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763346, -0.212976, 0.609872,
		-0.628640, -0.462241, 0.625416,
		0.148710, -0.860799, -0.486735,
		54.933193, 56.215950, 53.819344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.960510, 56.366226, 54.724228>,  <54.829098, 56.818508, 54.160057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.960510, 56.366226, 54.724228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.057777, 56.131119, 54.415581>,  <55.116138, 55.990055, 54.230392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.057777, 56.131119, 54.415581>,  <54.960510, 56.366226, 54.724228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.057777, 56.131119, 54.415581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788066, -0.344076, 0.510454,
		-0.565525, -0.732212, 0.379535,
		0.243172, -0.587773, -0.771616,
		55.130730, 55.954788, 54.184097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.150085, 55.633686, 54.924789>,  <54.960510, 56.366226, 54.724228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.150085, 55.633686, 54.924789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.322342, 55.723984, 54.575256>,  <55.425697, 55.778164, 54.365536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.322342, 55.723984, 54.575256>,  <55.150085, 55.633686, 54.924789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.322342, 55.723984, 54.575256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893675, -0.241905, 0.377925,
		-0.126071, -0.943675, -0.305916,
		0.430640, 0.225744, -0.873836,
		55.451534, 55.791706, 54.313107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.514175, 55.099110, 54.582809>,  <55.150085, 55.633686, 54.924789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.514175, 55.099110, 54.582809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.667175, 55.465759, 54.536346>,  <55.758976, 55.685749, 54.508469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.667175, 55.465759, 54.536346>,  <55.514175, 55.099110, 54.582809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.667175, 55.465759, 54.536346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778417, -0.251969, 0.574960,
		0.497754, -0.310342, -0.809894,
		0.382503, 0.916624, -0.116156,
		55.781925, 55.740746, 54.501499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.207954, 55.024349, 54.476448>,  <55.514175, 55.099110, 54.582809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.207954, 55.024349, 54.476448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.187897, 55.393837, 54.628361>,  <56.175861, 55.615528, 54.719509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.187897, 55.393837, 54.628361>,  <56.207954, 55.024349, 54.476448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.187897, 55.393837, 54.628361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868589, -0.147370, 0.473113,
		0.492991, 0.353595, -0.794941,
		-0.050140, 0.923717, 0.379780,
		56.172855, 55.670952, 54.742294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.866329, 55.528889, 54.292751>,  <56.207954, 55.024349, 54.476448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.866329, 55.528889, 54.292751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.676094, 55.575615, 54.641502>,  <56.561954, 55.603649, 54.850754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.676094, 55.575615, 54.641502>,  <56.866329, 55.528889, 54.292751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.676094, 55.575615, 54.641502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803101, -0.346786, 0.484530,
		0.358955, 0.930642, 0.071114,
		-0.475585, 0.116813, 0.871880,
		56.533417, 55.610661, 54.903065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.417763, 55.346279, 54.775311>,  <56.866329, 55.528889, 54.292751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.417763, 55.346279, 54.775311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.086868, 55.368546, 54.998947>,  <56.888332, 55.381905, 55.133129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.086868, 55.368546, 54.998947>,  <57.417763, 55.346279, 54.775311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.086868, 55.368546, 54.998947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476081, -0.458988, 0.750118,
		0.298371, 0.886697, 0.353190,
		-0.827237, 0.055666, 0.559088,
		56.838696, 55.385246, 55.166672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.680637, 55.700344, 55.326992>,  <57.417763, 55.346279, 54.775311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.680637, 55.700344, 55.326992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.352905, 55.494175, 55.427414>,  <57.156265, 55.370472, 55.487667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.352905, 55.494175, 55.427414>,  <57.680637, 55.700344, 55.326992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.352905, 55.494175, 55.427414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495998, -0.417633, 0.761294,
		-0.287542, 0.748276, 0.597831,
		-0.819332, -0.515427, 0.251057,
		57.107105, 55.339546, 55.502731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.571693, 55.856083, 56.002316>,  <57.680637, 55.700344, 55.326992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.571693, 55.856083, 56.002316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.419945, 55.493828, 55.926537>,  <57.328896, 55.276474, 55.881069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.419945, 55.493828, 55.926537>,  <57.571693, 55.856083, 56.002316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.419945, 55.493828, 55.926537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596226, -0.395863, 0.698432,
		-0.707524, 0.152013, 0.690146,
		-0.379374, -0.905640, -0.189448,
		57.306133, 55.222137, 55.869701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.272717, 55.473743, 56.604992>,  <57.571693, 55.856083, 56.002316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.272717, 55.473743, 56.604992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.403343, 55.209038, 56.335052>,  <57.481720, 55.050217, 56.173088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.403343, 55.209038, 56.335052>,  <57.272717, 55.473743, 56.604992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.403343, 55.209038, 56.335052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481526, -0.497905, 0.721265,
		-0.813318, -0.560500, 0.156055,
		0.326569, -0.661763, -0.674850,
		57.501312, 55.010509, 56.132599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.108616, 54.834766, 56.976856>,  <57.272717, 55.473743, 56.604992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.108616, 54.834766, 56.976856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.393204, 54.764412, 56.704720>,  <57.563957, 54.722198, 56.541435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.393204, 54.764412, 56.704720>,  <57.108616, 54.834766, 56.976856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.393204, 54.764412, 56.704720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356825, -0.743637, 0.565403,
		-0.605379, -0.645032, -0.466314,
		0.711471, -0.175891, -0.680346,
		57.606644, 54.711643, 56.500614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.233677, 54.060146, 57.070435>,  <57.108616, 54.834766, 56.976856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.233677, 54.060146, 57.070435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.549103, 54.259998, 56.927025>,  <57.738358, 54.379910, 56.840977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.549103, 54.259998, 56.927025>,  <57.233677, 54.060146, 57.070435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.549103, 54.259998, 56.927025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609717, -0.559274, 0.561657,
		0.080105, -0.661501, -0.745654,
		0.788561, 0.499629, -0.358527,
		57.785671, 54.409885, 56.819466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.916836, 54.158707, 57.218025>,  <57.233677, 54.060146, 57.070435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.916836, 54.158707, 57.218025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.184135, 54.198860, 57.512878>,  <58.344517, 54.222954, 57.689789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.184135, 54.198860, 57.512878>,  <57.916836, 54.158707, 57.218025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.184135, 54.198860, 57.512878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592624, -0.670799, -0.445898,
		0.449706, 0.734814, -0.507753,
		0.668252, 0.100384, 0.737131,
		58.384613, 54.228973, 57.734016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.538589, 54.313786, 56.909081>,  <57.916836, 54.158707, 57.218025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.538589, 54.313786, 56.909081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.610931, 54.143524, 57.263733>,  <58.654339, 54.041367, 57.476524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.610931, 54.143524, 57.263733>,  <58.538589, 54.313786, 56.909081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.610931, 54.143524, 57.263733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639637, -0.633892, -0.434794,
		0.747098, 0.645756, 0.157619,
		0.180858, -0.425653, 0.886629,
		58.665188, 54.015827, 57.529720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.185925, 54.405186, 57.045967>,  <58.538589, 54.313786, 56.909081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.185925, 54.405186, 57.045967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.072929, 54.070904, 57.234344>,  <59.005131, 53.870335, 57.347370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.072929, 54.070904, 57.234344>,  <59.185925, 54.405186, 57.045967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.072929, 54.070904, 57.234344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666303, -0.524127, -0.530406,
		0.690101, 0.163958, 0.704896,
		-0.282491, -0.835708, 0.470946,
		58.988182, 53.820190, 57.375629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.814884, 54.082752, 57.374126>,  <59.185925, 54.405186, 57.045967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.814884, 54.082752, 57.374126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.535027, 53.823185, 57.254532>,  <59.367111, 53.667442, 57.182774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.535027, 53.823185, 57.254532>,  <59.814884, 54.082752, 57.374126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.535027, 53.823185, 57.254532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686508, -0.494594, -0.532994,
		0.197992, -0.578167, 0.791531,
		-0.699647, -0.648922, -0.298991,
		59.325134, 53.628510, 57.164833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.081097, 54.459496, 58.074207>,  <59.814884, 54.082752, 57.374126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.081097, 54.459496, 58.074207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.293365, 54.747997, 58.252274>,  <60.420727, 54.921101, 58.359116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.293365, 54.747997, 58.252274>,  <60.081097, 54.459496, 58.074207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.293365, 54.747997, 58.252274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647673, -0.683868, 0.335922,
		0.546723, 0.110059, -0.830049,
		0.530673, 0.721256, 0.445169,
		60.452568, 54.964375, 58.385826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.699753, 54.653416, 57.667416>,  <60.081097, 54.459496, 58.074207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.699753, 54.653416, 57.667416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.718582, 54.692513, 58.065056>,  <60.729881, 54.715969, 58.303638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.718582, 54.692513, 58.065056>,  <60.699753, 54.653416, 57.667416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.718582, 54.692513, 58.065056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628869, -0.776118, 0.046528,
		0.776085, 0.622968, -0.097998,
		0.047073, 0.097737, 0.994098,
		60.732704, 54.721832, 58.363285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.367657, 54.608208, 57.859123>,  <60.699753, 54.653416, 57.667416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.367657, 54.608208, 57.859123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.118637, 54.496731, 58.151634>,  <60.969227, 54.429844, 58.327141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.118637, 54.496731, 58.151634>,  <61.367657, 54.608208, 57.859123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.118637, 54.496731, 58.151634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657369, -0.693246, 0.295425,
		0.424620, 0.664634, 0.614784,
		-0.622546, -0.278697, 0.731276,
		60.931873, 54.413120, 58.371017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.676006, 54.606270, 58.566158>,  <61.367657, 54.608208, 57.859123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.676006, 54.606270, 58.566158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.367287, 54.351944, 58.569557>,  <61.182056, 54.199348, 58.571598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.367287, 54.351944, 58.569557>,  <61.676006, 54.606270, 58.566158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.367287, 54.351944, 58.569557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622301, -0.752512, 0.215562,
		-0.130661, 0.171659, 0.976453,
		-0.771796, -0.635814, 0.008500,
		61.135750, 54.161201, 58.572105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.343117, 54.284729, 58.201279>,  <61.676006, 54.606270, 58.566158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.343117, 54.284729, 58.201279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.353516, 54.494473, 57.860840>,  <62.359756, 54.620319, 57.656574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.353516, 54.494473, 57.860840>,  <62.343117, 54.284729, 58.201279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.353516, 54.494473, 57.860840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999659, -0.011656, 0.023356,
		0.002327, -0.851416, -0.524485,
		0.025999, 0.524361, -0.851099,
		62.361317, 54.651779, 57.605511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.742104, 53.858917, 57.707230>,  <62.343117, 54.284729, 58.201279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.742104, 53.858917, 57.707230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.783920, 54.255737, 57.735229>,  <62.809010, 54.493832, 57.752029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.783920, 54.255737, 57.735229>,  <62.742104, 53.858917, 57.707230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.783920, 54.255737, 57.735229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993972, -0.101883, -0.040482,
		-0.033029, 0.073809, -0.996725,
		0.104537, 0.992055, 0.069999,
		62.815281, 54.553352, 57.756229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.321983, 54.060841, 57.241943>,  <62.742104, 53.858917, 57.707230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.321983, 54.060841, 57.241943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.281906, 54.362907, 57.501076>,  <63.257858, 54.544147, 57.656555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.281906, 54.362907, 57.501076>,  <63.321983, 54.060841, 57.241943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.281906, 54.362907, 57.501076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984169, 0.170891, -0.046987,
		-0.146192, 0.632869, -0.760332,
		-0.100197, 0.755164, 0.647833,
		63.251846, 54.589458, 57.695427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.946449, 54.430191, 57.254890>,  <63.321983, 54.060841, 57.241943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.946449, 54.430191, 57.254890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.754829, 54.719250, 57.454208>,  <63.639858, 54.892685, 57.573799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.754829, 54.719250, 57.454208>,  <63.946449, 54.430191, 57.254890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.754829, 54.719250, 57.454208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851116, 0.521270, 0.062283,
		-0.214737, 0.453943, -0.864768,
		-0.479051, 0.722643, 0.498294,
		63.611115, 54.936043, 57.603695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.922722, 55.076534, 56.956081>,  <63.946449, 54.430191, 57.254890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.922722, 55.076534, 56.956081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.955795, 55.098000, 57.354134>,  <63.975639, 55.110878, 57.592964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.955795, 55.098000, 57.354134>,  <63.922722, 55.076534, 56.956081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.955795, 55.098000, 57.354134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891642, 0.442024, -0.097923,
		-0.445126, 0.895397, -0.011302,
		0.082684, 0.053666, 0.995130,
		63.980602, 55.114098, 57.652672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.949070, 55.754311, 57.184273>,  <63.922722, 55.076534, 56.956081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.949070, 55.754311, 57.184273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.160492, 55.507591, 57.417572>,  <64.287346, 55.359558, 57.557552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.160492, 55.507591, 57.417572>,  <63.949070, 55.754311, 57.184273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.160492, 55.507591, 57.417572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848891, 0.386476, -0.360583,
		-0.003004, 0.685706, 0.727873,
		0.528559, -0.616802, 0.583251,
		64.319061, 55.322552, 57.592548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.456154, 56.080269, 57.700615>,  <63.949070, 55.754311, 57.184273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.456154, 56.080269, 57.700615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.573418, 55.708771, 57.609848>,  <64.643776, 55.485870, 57.555389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.573418, 55.708771, 57.609848>,  <64.456154, 56.080269, 57.700615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.573418, 55.708771, 57.609848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929389, 0.332512, -0.160221,
		0.224256, -0.163920, 0.960645,
		0.293163, -0.928744, -0.226914,
		64.661369, 55.430149, 57.541775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.189606, 56.178291, 57.867149>,  <64.456154, 56.080269, 57.700615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.189606, 56.178291, 57.867149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.167610, 55.839958, 57.654907>,  <65.154411, 55.636959, 57.527561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.167610, 55.839958, 57.654907>,  <65.189606, 56.178291, 57.867149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.167610, 55.839958, 57.654907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965375, 0.090688, -0.244597,
		0.255008, -0.525684, 0.811559,
		-0.054982, -0.845832, -0.530608,
		65.151115, 55.586208, 57.495724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.704140, 55.803646, 58.094448>,  <65.189606, 56.178291, 57.867149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.704140, 55.803646, 58.094448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.612595, 55.693890, 57.720856>,  <65.557663, 55.628036, 57.496700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.612595, 55.693890, 57.720856>,  <65.704140, 55.803646, 58.094448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.612595, 55.693890, 57.720856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972399, -0.019720, -0.232488,
		0.045375, -0.961416, 0.271331,
		-0.228869, -0.274391, -0.933985,
		65.543938, 55.611572, 57.440659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.842583, 55.046776, 58.031902>,  <65.704140, 55.803646, 58.094448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.842583, 55.046776, 58.031902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.913071, 55.300987, 57.731224>,  <65.955360, 55.453514, 57.550816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.913071, 55.300987, 57.731224>,  <65.842583, 55.046776, 58.031902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.913071, 55.300987, 57.731224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951395, 0.085981, 0.295727,
		0.252575, -0.767275, -0.589487,
		0.176219, 0.635529, -0.751698,
		65.965935, 55.491646, 57.505714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.227074, 54.627434, 57.673103>,  <65.842583, 55.046776, 58.031902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.227074, 54.627434, 57.673103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.242470, 55.027054, 57.664932>,  <66.251709, 55.266827, 57.660030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.242470, 55.027054, 57.664932>,  <66.227074, 54.627434, 57.673103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.242470, 55.027054, 57.664932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810717, -0.019266, 0.585120,
		0.584171, -0.039083, -0.810689,
		0.038487, 0.999050, -0.020430,
		66.254013, 55.326771, 57.658802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.941048, 54.806873, 57.590683>,  <66.227074, 54.627434, 57.673103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.941048, 54.806873, 57.590683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.764717, 55.114815, 57.775291>,  <66.658920, 55.299580, 57.886055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.764717, 55.114815, 57.775291>,  <66.941048, 54.806873, 57.590683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.764717, 55.114815, 57.775291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716768, -0.007585, 0.697271,
		0.540300, 0.638171, -0.548465,
		-0.440818, 0.769857, 0.461519,
		66.632469, 55.345772, 57.913746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.543045, 55.288696, 57.708031>,  <66.941048, 54.806873, 57.590683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.543045, 55.288696, 57.708031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.246773, 55.330238, 57.973541>,  <67.069008, 55.355164, 58.132847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.246773, 55.330238, 57.973541>,  <67.543045, 55.288696, 57.708031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.246773, 55.330238, 57.973541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666121, -0.015202, 0.745689,
		0.087536, 0.994476, -0.057921,
		-0.740689, 0.103857, 0.663772,
		67.024567, 55.361397, 58.172672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.526596, 55.928349, 58.048672>,  <67.543045, 55.288696, 57.708031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.526596, 55.928349, 58.048672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.363419, 55.654861, 58.290703>,  <67.265511, 55.490768, 58.435921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.363419, 55.654861, 58.290703>,  <67.526596, 55.928349, 58.048672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.363419, 55.654861, 58.290703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711316, 0.177464, 0.680100,
		-0.572375, 0.707841, 0.413943,
		-0.407942, -0.683717, 0.605074,
		67.241035, 55.449745, 58.472225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.206635, 55.836552, 57.783035>,  <67.526596, 55.928349, 58.048672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.206635, 55.836552, 57.783035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.088196, 56.162403, 57.982513>,  <68.017128, 56.357914, 58.102200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.088196, 56.162403, 57.982513>,  <68.206635, 55.836552, 57.783035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.088196, 56.162403, 57.982513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357160, -0.578669, 0.733198,
		0.885867, 0.038986, 0.462298,
		-0.296102, 0.814630, 0.498699,
		67.999367, 56.406792, 58.132122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.479607, 55.869804, 58.526360>,  <68.206635, 55.836552, 57.783035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.479607, 55.869804, 58.526360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.147446, 56.087921, 58.572136>,  <67.948151, 56.218792, 58.599602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.147446, 56.087921, 58.572136>,  <68.479607, 55.869804, 58.526360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.147446, 56.087921, 58.572136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121905, -0.378235, 0.917648,
		0.543668, 0.748064, 0.380560,
		-0.830400, 0.545288, 0.114441,
		67.898323, 56.251507, 58.606468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.226921, 55.715034, 59.220379>,  <68.479607, 55.869804, 58.526360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.226921, 55.715034, 59.220379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.958069, 55.981201, 59.090477>,  <67.796761, 56.140900, 59.012535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.958069, 55.981201, 59.090477>,  <68.226921, 55.715034, 59.220379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.958069, 55.981201, 59.090477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455941, -0.026372, 0.889619,
		0.583400, 0.746009, 0.321115,
		-0.672132, 0.665414, -0.324751,
		67.756432, 56.180824, 58.993053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.314262, 56.432373, 59.609219>,  <68.226921, 55.715034, 59.220379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.314262, 56.432373, 59.609219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.945457, 56.321426, 59.501167>,  <67.724174, 56.254860, 59.436337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.945457, 56.321426, 59.501167>,  <68.314262, 56.432373, 59.609219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.945457, 56.321426, 59.501167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254215, -0.092525, 0.962712,
		-0.292017, 0.956299, 0.014798,
		-0.922009, -0.277366, -0.270125,
		67.668854, 56.238216, 59.420132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.590988, 55.679722, 59.885136>,  <68.314262, 56.432373, 59.609219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.590988, 55.679722, 59.885136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.792107, 55.660248, 59.539925>,  <68.912781, 55.648563, 59.332798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.792107, 55.660248, 59.539925>,  <68.590988, 55.679722, 59.885136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.792107, 55.660248, 59.539925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856541, -0.106257, 0.505022,
		-0.116295, -0.993146, -0.011717,
		0.502805, -0.048695, -0.863027,
		68.942947, 55.645641, 59.281017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.059875, 55.135723, 59.980690>,  <68.590988, 55.679722, 59.885136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.059875, 55.135723, 59.980690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.181419, 55.432335, 59.741425>,  <69.254349, 55.610302, 59.597866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.181419, 55.432335, 59.741425>,  <69.059875, 55.135723, 59.980690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.181419, 55.432335, 59.741425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784095, 0.161996, 0.599127,
		0.541172, -0.651067, -0.532207,
		0.303856, 0.741531, -0.598166,
		69.272575, 55.654793, 59.561974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.883194, 55.014126, 59.744316>,  <69.059875, 55.135723, 59.980690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.883194, 55.014126, 59.744316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.769592, 55.397354, 59.729179>,  <69.701431, 55.627293, 59.720097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.769592, 55.397354, 59.729179>,  <69.883194, 55.014126, 59.744316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.769592, 55.397354, 59.729179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645630, 0.220269, 0.731194,
		0.708873, 0.183236, -0.681120,
		-0.284010, 0.958074, -0.037840,
		69.684387, 55.684776, 59.717827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.393219, 55.382969, 59.840435>,  <69.883194, 55.014126, 59.744316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.393219, 55.382969, 59.840435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.134285, 55.682045, 59.899635>,  <69.978920, 55.861492, 59.935158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.134285, 55.682045, 59.899635>,  <70.393219, 55.382969, 59.840435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.134285, 55.682045, 59.899635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708273, 0.518347, 0.479234,
		0.281603, 0.415056, -0.865118,
		-0.647340, 0.747693, 0.148005,
		69.940086, 55.906353, 59.944038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.547844, 56.046238, 59.572830>,  <70.393219, 55.382969, 59.840435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.547844, 56.046238, 59.572830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.318352, 56.111450, 59.893890>,  <70.180656, 56.150578, 60.086525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.318352, 56.111450, 59.893890>,  <70.547844, 56.046238, 59.572830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.318352, 56.111450, 59.893890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724261, 0.558604, 0.404238,
		-0.382460, 0.813254, -0.438569,
		-0.573735, 0.163034, 0.802651,
		70.146233, 56.160358, 60.134686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.497597, 56.733509, 59.785713>,  <70.547844, 56.046238, 59.572830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.497597, 56.733509, 59.785713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.469025, 56.516819, 60.120720>,  <70.451881, 56.386803, 60.321724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.469025, 56.516819, 60.120720>,  <70.497597, 56.733509, 59.785713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.469025, 56.516819, 60.120720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748578, 0.525793, 0.403946,
		-0.659188, 0.655798, 0.367968,
		-0.071432, -0.541730, 0.837512,
		70.447594, 56.354301, 60.371975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.925331, 57.203617, 60.090946>,  <70.497597, 56.733509, 59.785713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.925331, 57.203617, 60.090946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.867287, 56.912861, 60.359444>,  <70.832458, 56.738407, 60.520542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.867287, 56.912861, 60.359444>,  <70.925331, 57.203617, 60.090946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.867287, 56.912861, 60.359444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602020, 0.473517, 0.642925,
		-0.785184, 0.497398, 0.368892,
		-0.145113, -0.726895, 0.671242,
		70.823753, 56.694794, 60.560818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.199455, 56.502747, 60.165447>,  <70.925331, 57.203617, 60.090946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.199455, 56.502747, 60.165447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.435768, 56.358047, 59.876968>,  <71.577553, 56.271229, 59.703880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.435768, 56.358047, 59.876968>,  <71.199455, 56.502747, 60.165447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.435768, 56.358047, 59.876968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690404, 0.689209, 0.219849,
		0.417525, -0.627798, 0.656919,
		0.590775, -0.361747, -0.721196,
		71.612999, 56.249523, 59.660610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.826912, 56.229183, 60.375393>,  <71.199455, 56.502747, 60.165447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.826912, 56.229183, 60.375393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.892075, 56.375565, 60.008888>,  <71.931175, 56.463394, 59.788986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.892075, 56.375565, 60.008888>,  <71.826912, 56.229183, 60.375393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.892075, 56.375565, 60.008888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643316, 0.664717, 0.379864,
		0.748069, -0.651328, -0.127140,
		0.162904, 0.365955, -0.916264,
		71.940948, 56.485352, 59.734009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.620193, 56.345116, 60.315468>,  <71.826912, 56.229183, 60.375393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.620193, 56.345116, 60.315468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.433777, 56.582596, 60.053070>,  <72.321930, 56.725086, 59.895634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.433777, 56.582596, 60.053070>,  <72.620193, 56.345116, 60.315468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.433777, 56.582596, 60.053070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577874, 0.765692, 0.282450,
		0.669979, -0.247448, -0.699927,
		-0.466037, 0.593705, -0.655991,
		72.293968, 56.760708, 59.856274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.123215, 56.688065, 59.865261>,  <72.620193, 56.345116, 60.315468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.123215, 56.688065, 59.865261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.784828, 56.888882, 59.937149>,  <72.581795, 57.009373, 59.980282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.784828, 56.888882, 59.937149>,  <73.123215, 56.688065, 59.865261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.784828, 56.888882, 59.937149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533061, 0.787531, 0.309258,
		0.013725, 0.357424, -0.933842,
		-0.845966, 0.502039, 0.179720,
		72.531036, 57.039494, 59.991066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.115036, 57.380848, 59.562771>,  <73.123215, 56.688065, 59.865261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.115036, 57.380848, 59.562771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.858871, 57.399109, 59.869438>,  <72.705170, 57.410065, 60.053440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.858871, 57.399109, 59.869438>,  <73.115036, 57.380848, 59.562771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.858871, 57.399109, 59.869438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531065, 0.747454, 0.399102,
		-0.554830, 0.662743, -0.502927,
		-0.640417, 0.045653, 0.766669,
		72.666748, 57.412804, 60.099438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.808472, 58.087944, 59.835484>,  <73.115036, 57.380848, 59.562771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.808472, 58.087944, 59.835484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.808205, 57.843369, 60.152000>,  <72.808044, 57.696625, 60.341911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.808205, 57.843369, 60.152000>,  <72.808472, 58.087944, 59.835484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.808205, 57.843369, 60.152000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631840, 0.613075, 0.474254,
		-0.775099, 0.500287, 0.385921,
		-0.000665, -0.611434, 0.791295,
		72.808006, 57.659939, 60.389389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.760475, 58.509323, 60.434849>,  <72.808472, 58.087944, 59.835484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.760475, 58.509323, 60.434849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.984482, 58.208351, 60.573540>,  <73.118889, 58.027767, 60.656754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.984482, 58.208351, 60.573540>,  <72.760475, 58.509323, 60.434849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.984482, 58.208351, 60.573540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755271, 0.635683, 0.159600,
		-0.340500, 0.172497, 0.924286,
		0.560023, -0.752430, 0.346732,
		73.152489, 57.982620, 60.677559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
