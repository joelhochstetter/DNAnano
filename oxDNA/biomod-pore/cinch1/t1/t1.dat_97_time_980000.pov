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
	<43.013134, 32.804317, 22.909054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689831, 32.583782, 22.991749>,  <42.495850, 32.451462, 23.041365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689831, 32.583782, 22.991749>,  <43.013134, 32.804317, 22.909054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689831, 32.583782, 22.991749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427622, 0.790979, 0.437598,
		-0.404788, 0.265289, -0.875082,
		-0.808261, -0.551338, 0.206735,
		42.447353, 32.418381, 23.053770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356491, 33.109825, 22.466158>,  <43.013134, 32.804317, 22.909054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356491, 33.109825, 22.466158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303288, 32.929134, 22.819031>,  <42.271366, 32.820721, 23.030754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303288, 32.929134, 22.819031>,  <42.356491, 33.109825, 22.466158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303288, 32.929134, 22.819031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439050, 0.824848, 0.356176,
		-0.888563, -0.339948, -0.308044,
		-0.133008, -0.451732, 0.882183,
		42.263386, 32.793613, 23.083685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836143, 33.502499, 22.747158>,  <42.356491, 33.109825, 22.466158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836143, 33.502499, 22.747158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939129, 33.270630, 23.056400>,  <42.000919, 33.131508, 23.241945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939129, 33.270630, 23.056400>,  <41.836143, 33.502499, 22.747158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939129, 33.270630, 23.056400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288230, 0.717586, 0.634029,
		-0.922298, -0.386075, 0.017677,
		0.257467, -0.579669, 0.773107,
		42.016369, 33.096729, 23.288332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209702, 33.459736, 23.124966>,  <41.836143, 33.502499, 22.747158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209702, 33.459736, 23.124966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544315, 33.409100, 23.338200>,  <41.745083, 33.378716, 23.466141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544315, 33.409100, 23.338200>,  <41.209702, 33.459736, 23.124966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544315, 33.409100, 23.338200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273633, 0.746396, 0.606645,
		-0.474691, -0.653351, 0.589747,
		0.836537, -0.126594, 0.533086,
		41.795277, 33.371120, 23.498125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064346, 33.587395, 23.837284>,  <41.209702, 33.459736, 23.124966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064346, 33.587395, 23.837284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459164, 33.647182, 23.813965>,  <41.696056, 33.683056, 23.799973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459164, 33.647182, 23.813965>,  <41.064346, 33.587395, 23.837284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459164, 33.647182, 23.813965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117202, 0.919916, 0.374189,
		0.109561, -0.362509, 0.925518,
		0.987046, 0.149469, -0.058300,
		41.755276, 33.692024, 23.796474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471424, 34.041336, 24.221565>,  <41.064346, 33.587395, 23.837284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471424, 34.041336, 24.221565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075806, 34.059162, 24.165279>,  <39.838436, 34.069859, 24.131508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075806, 34.059162, 24.165279>,  <40.471424, 34.041336, 24.221565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075806, 34.059162, 24.165279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114494, 0.833312, -0.540817,
		0.093158, -0.551004, -0.829287,
		-0.989047, 0.044567, -0.140717,
		39.779091, 34.072533, 24.123064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460705, 34.182987, 23.446196>,  <40.471424, 34.041336, 24.221565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460705, 34.182987, 23.446196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104141, 34.301147, 23.583675>,  <39.890202, 34.372044, 23.666164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104141, 34.301147, 23.583675>,  <40.460705, 34.182987, 23.446196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104141, 34.301147, 23.583675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060292, 0.828938, -0.556082,
		-0.449175, -0.474973, -0.756732,
		-0.891407, 0.295403, 0.343701,
		39.836720, 34.389767, 23.686785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001942, 34.375187, 22.805294>,  <40.460705, 34.182987, 23.446196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001942, 34.375187, 22.805294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827068, 34.555237, 23.116745>,  <39.722145, 34.663265, 23.303616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827068, 34.555237, 23.116745>,  <40.001942, 34.375187, 22.805294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827068, 34.555237, 23.116745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033930, 0.856874, -0.514408,
		-0.898734, -0.251308, -0.359335,
		-0.437180, 0.450123, 0.778629,
		39.695915, 34.690273, 23.350334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274899, 34.745522, 22.611675>,  <40.001942, 34.375187, 22.805294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274899, 34.745522, 22.611675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420666, 34.937393, 22.930950>,  <39.508125, 35.052517, 23.122515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420666, 34.937393, 22.930950>,  <39.274899, 34.745522, 22.611675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420666, 34.937393, 22.930950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168866, 0.876958, -0.449920,
		-0.915796, 0.029172, 0.400582,
		0.364419, 0.479680, 0.798189,
		39.529991, 35.081299, 23.170406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864986, 35.257462, 22.676132>,  <39.274899, 34.745522, 22.611675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864986, 35.257462, 22.676132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192650, 35.372028, 22.874905>,  <39.389248, 35.440769, 22.994169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192650, 35.372028, 22.874905>,  <38.864986, 35.257462, 22.676132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192650, 35.372028, 22.874905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008334, 0.872244, -0.489000,
		-0.573505, 0.396428, 0.716894,
		0.819159, 0.286419, 0.496933,
		39.438396, 35.457954, 23.023985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710373, 35.881321, 22.827589>,  <38.864986, 35.257462, 22.676132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710373, 35.881321, 22.827589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096855, 35.895348, 22.929737>,  <39.328743, 35.903763, 22.991026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096855, 35.895348, 22.929737>,  <38.710373, 35.881321, 22.827589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096855, 35.895348, 22.929737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037499, 0.961045, -0.273838,
		-0.255026, 0.274160, 0.927253,
		0.966207, 0.035065, 0.255372,
		39.386719, 35.905869, 23.006348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764957, 36.524689, 23.117861>,  <38.710373, 35.881321, 22.827589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764957, 36.524689, 23.117861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121037, 36.398479, 22.986408>,  <39.334682, 36.322754, 22.907537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121037, 36.398479, 22.986408>,  <38.764957, 36.524689, 23.117861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121037, 36.398479, 22.986408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099111, 0.838196, -0.536287,
		0.444667, 0.444830, 0.777430,
		0.890196, -0.315521, -0.328630,
		39.388096, 36.303822, 22.887819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148060, 37.000401, 23.305517>,  <38.764957, 36.524689, 23.117861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148060, 37.000401, 23.305517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355995, 36.803818, 23.026020>,  <39.480755, 36.685867, 22.858322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355995, 36.803818, 23.026020>,  <39.148060, 37.000401, 23.305517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355995, 36.803818, 23.026020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170995, 0.861255, -0.478541,
		0.836976, 0.129283, 0.531750,
		0.519839, -0.491453, -0.698742,
		39.511948, 36.656384, 22.816397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654858, 37.463566, 23.246170>,  <39.148060, 37.000401, 23.305517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654858, 37.463566, 23.246170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679970, 37.212952, 22.935425>,  <39.695038, 37.062584, 22.748978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679970, 37.212952, 22.935425>,  <39.654858, 37.463566, 23.246170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679970, 37.212952, 22.935425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241106, 0.764863, -0.597371,
		0.968466, -0.149804, 0.199077,
		0.062778, -0.626532, -0.776863,
		39.698803, 37.024990, 22.702366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335751, 37.436211, 22.950790>,  <39.654858, 37.463566, 23.246170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335751, 37.436211, 22.950790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089931, 37.335724, 22.651665>,  <39.942440, 37.275433, 22.472189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089931, 37.335724, 22.651665>,  <40.335751, 37.436211, 22.950790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089931, 37.335724, 22.651665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310947, 0.794060, -0.522285,
		0.725015, -0.553498, -0.409870,
		-0.614544, -0.251216, -0.747814,
		39.905567, 37.260361, 22.427320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727882, 37.226864, 22.308578>,  <40.335751, 37.436211, 22.950790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727882, 37.226864, 22.308578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368042, 37.352283, 22.186989>,  <40.152138, 37.427536, 22.114035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368042, 37.352283, 22.186989>,  <40.727882, 37.226864, 22.308578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368042, 37.352283, 22.186989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431045, 0.749272, -0.502784,
		0.070111, -0.583333, -0.809202,
		-0.899602, 0.313552, -0.303975,
		40.098160, 37.446350, 22.095797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865047, 37.539944, 21.637087>,  <40.727882, 37.226864, 22.308578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865047, 37.539944, 21.637087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520397, 37.697914, 21.764606>,  <40.313606, 37.792694, 21.841118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520397, 37.697914, 21.764606>,  <40.865047, 37.539944, 21.637087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520397, 37.697914, 21.764606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282257, 0.894884, -0.345707,
		-0.421815, -0.207888, -0.882527,
		-0.861628, 0.394924, 0.318798,
		40.261909, 37.816391, 21.860247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799911, 38.075077, 21.111446>,  <40.865047, 37.539944, 21.637087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799911, 38.075077, 21.111446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528843, 38.161358, 21.392654>,  <40.366203, 38.213127, 21.561380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528843, 38.161358, 21.392654>,  <40.799911, 38.075077, 21.111446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528843, 38.161358, 21.392654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242457, 0.968094, -0.063314,
		-0.694248, 0.127547, -0.708344,
		-0.677668, 0.215699, 0.703022,
		40.325542, 38.226067, 21.603561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528008, 38.639927, 20.897039>,  <40.799911, 38.075077, 21.111446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528008, 38.639927, 20.897039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445656, 38.645088, 21.288437>,  <40.396244, 38.648186, 21.523275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445656, 38.645088, 21.288437>,  <40.528008, 38.639927, 20.897039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445656, 38.645088, 21.288437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279842, 0.958932, 0.046239,
		-0.937710, 0.283342, -0.201038,
		-0.205883, 0.012900, 0.978492,
		40.383892, 38.648960, 21.581984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071423, 39.167236, 20.998009>,  <40.528008, 38.639927, 20.897039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071423, 39.167236, 20.998009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208645, 39.102077, 21.368042>,  <40.290977, 39.062984, 21.590061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208645, 39.102077, 21.368042>,  <40.071423, 39.167236, 20.998009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208645, 39.102077, 21.368042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210581, 0.973118, 0.093260,
		-0.915407, 0.162812, 0.368134,
		0.343054, -0.162893, 0.925084,
		40.311562, 39.053211, 21.645567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873497, 39.773212, 21.356613>,  <40.071423, 39.167236, 20.998009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873497, 39.773212, 21.356613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157173, 39.623093, 21.595345>,  <40.327377, 39.533020, 21.738583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157173, 39.623093, 21.595345>,  <39.873497, 39.773212, 21.356613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157173, 39.623093, 21.595345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230488, 0.923444, 0.306798,
		-0.666277, -0.080016, 0.741399,
		0.709189, -0.375297, 0.596827,
		40.369930, 39.510502, 21.774393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864590, 40.107441, 22.156683>,  <39.873497, 39.773212, 21.356613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864590, 40.107441, 22.156683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226322, 39.945492, 22.102619>,  <40.443359, 39.848320, 22.070181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226322, 39.945492, 22.102619>,  <39.864590, 40.107441, 22.156683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226322, 39.945492, 22.102619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415738, 0.763742, 0.493822,
		-0.096711, -0.502767, 0.858995,
		0.904328, -0.404875, -0.135157,
		40.497620, 39.824028, 22.062073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231609, 40.413303, 22.697453>,  <39.864590, 40.107441, 22.156683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231609, 40.413303, 22.697453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552059, 40.254917, 22.517937>,  <40.744328, 40.159885, 22.410227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552059, 40.254917, 22.517937>,  <40.231609, 40.413303, 22.697453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552059, 40.254917, 22.517937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579804, 0.699418, 0.417901,
		0.148418, -0.595001, 0.789903,
		0.801124, -0.395965, -0.448790,
		40.792397, 40.136127, 22.383299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808945, 40.295780, 23.223394>,  <40.231609, 40.413303, 22.697453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808945, 40.295780, 23.223394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983978, 40.336372, 22.866020>,  <41.088997, 40.360729, 22.651596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.983978, 40.336372, 22.866020>,  <40.808945, 40.295780, 23.223394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.983978, 40.336372, 22.866020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513168, 0.787722, 0.340812,
		0.738364, -0.607614, 0.292614,
		0.437581, 0.101483, -0.893434,
		41.115253, 40.366817, 22.597990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518551, 40.442780, 23.370678>,  <40.808945, 40.295780, 23.223394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518551, 40.442780, 23.370678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485161, 40.562359, 22.990433>,  <41.465126, 40.634106, 22.762285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485161, 40.562359, 22.990433>,  <41.518551, 40.442780, 23.370678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485161, 40.562359, 22.990433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536111, 0.817599, 0.210040,
		0.840010, -0.492098, -0.228522,
		-0.083479, 0.298949, -0.950611,
		41.460117, 40.652042, 22.705250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139240, 40.546101, 23.187449>,  <41.518551, 40.442780, 23.370678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139240, 40.546101, 23.187449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918728, 40.750912, 22.923958>,  <41.786419, 40.873798, 22.765863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918728, 40.750912, 22.923958>,  <42.139240, 40.546101, 23.187449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918728, 40.750912, 22.923958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510116, 0.831624, 0.219505,
		0.660204, -0.215017, -0.719652,
		-0.551283, 0.512024, -0.658725,
		41.753342, 40.904518, 22.726341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556183, 40.857269, 22.647287>,  <42.139240, 40.546101, 23.187449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556183, 40.857269, 22.647287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227451, 41.081684, 22.686970>,  <42.030212, 41.216331, 22.710779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227451, 41.081684, 22.686970>,  <42.556183, 40.857269, 22.647287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227451, 41.081684, 22.686970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569167, 0.816266, 0.098783,
		-0.025559, 0.137649, -0.990151,
		-0.821824, 0.561037, 0.099208,
		41.980904, 41.249996, 22.716732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566120, 41.460266, 22.238838>,  <42.556183, 40.857269, 22.647287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566120, 41.460266, 22.238838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342571, 41.583630, 22.546745>,  <42.208443, 41.657646, 22.731489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342571, 41.583630, 22.546745>,  <42.566120, 41.460266, 22.238838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342571, 41.583630, 22.546745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551522, 0.831441, 0.067302,
		-0.619261, 0.462158, -0.634765,
		-0.558874, 0.308409, 0.769769,
		42.174908, 41.676151, 22.777676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154411, 42.094933, 22.189240>,  <42.566120, 41.460266, 22.238838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154411, 42.094933, 22.189240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257164, 42.061443, 22.574364>,  <42.318813, 42.041348, 22.805439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257164, 42.061443, 22.574364>,  <42.154411, 42.094933, 22.189240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257164, 42.061443, 22.574364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314646, 0.949208, -0.001404,
		-0.913790, 0.303305, 0.270174,
		0.256877, -0.083726, 0.962811,
		42.334229, 42.036327, 22.863207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782196, 42.516323, 22.636850>,  <42.154411, 42.094933, 22.189240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782196, 42.516323, 22.636850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141014, 42.439686, 22.796150>,  <42.356304, 42.393703, 22.891731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141014, 42.439686, 22.796150>,  <41.782196, 42.516323, 22.636850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141014, 42.439686, 22.796150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083290, 0.958283, 0.273416,
		-0.434023, -0.212095, 0.875580,
		0.897043, -0.191596, 0.398252,
		42.410126, 42.382206, 22.915627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877808, 42.590836, 23.429733>,  <41.782196, 42.516323, 22.636850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877808, 42.590836, 23.429733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183613, 42.695831, 23.194237>,  <42.367096, 42.758831, 23.052938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183613, 42.695831, 23.194237>,  <41.877808, 42.590836, 23.429733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183613, 42.695831, 23.194237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094513, 0.949109, 0.300432,
		0.637638, -0.174042, 0.750418,
		0.764516, 0.262491, -0.588739,
		42.412968, 42.774578, 23.017614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634037, 42.777931, 24.122746>,  <41.877808, 42.590836, 23.429733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634037, 42.777931, 24.122746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365944, 43.069340, 24.179386>,  <41.205090, 43.244183, 24.213371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365944, 43.069340, 24.179386>,  <41.634037, 42.777931, 24.122746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365944, 43.069340, 24.179386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206739, -0.366522, 0.907149,
		0.712775, 0.578726, 0.396268,
		-0.670232, 0.728518, 0.141603,
		41.164875, 43.287895, 24.221867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792976, 42.947872, 24.766560>,  <41.634037, 42.777931, 24.122746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792976, 42.947872, 24.766560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416462, 43.059258, 24.690208>,  <41.190552, 43.126087, 24.644398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416462, 43.059258, 24.690208>,  <41.792976, 42.947872, 24.766560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416462, 43.059258, 24.690208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298555, -0.422644, 0.855708,
		0.157606, 0.862457, 0.480966,
		-0.941289, 0.278460, -0.190880,
		41.134075, 43.142796, 24.632944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430462, 43.184734, 25.441578>,  <41.792976, 42.947872, 24.766560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430462, 43.184734, 25.441578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153912, 43.068550, 25.176964>,  <40.987980, 42.998840, 25.018196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153912, 43.068550, 25.176964>,  <41.430462, 43.184734, 25.441578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153912, 43.068550, 25.176964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390105, -0.620605, 0.680197,
		-0.608124, 0.728341, 0.315761,
		-0.691378, -0.290464, -0.661534,
		40.946499, 42.981411, 24.978504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833920, 42.962730, 25.808626>,  <41.430462, 43.184734, 25.441578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833920, 42.962730, 25.808626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743568, 42.803284, 25.453079>,  <40.689358, 42.707615, 25.239752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743568, 42.803284, 25.453079>,  <40.833920, 42.962730, 25.808626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743568, 42.803284, 25.453079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670858, -0.597952, 0.438637,
		-0.706347, 0.695382, -0.132350,
		-0.225881, -0.398618, -0.888865,
		40.675804, 42.683697, 25.186420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219025, 42.531155, 26.059669>,  <40.833920, 42.962730, 25.808626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219025, 42.531155, 26.059669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213943, 42.417156, 25.676292>,  <40.210896, 42.348755, 25.446266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213943, 42.417156, 25.676292>,  <40.219025, 42.531155, 26.059669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213943, 42.417156, 25.676292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733737, -0.648534, 0.202569,
		-0.679315, 0.705817, -0.200880,
		-0.012699, -0.285001, -0.958443,
		40.210133, 42.331657, 25.388760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441628, 42.296631, 25.893747>,  <40.219025, 42.531155, 26.059669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441628, 42.296631, 25.893747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702232, 42.095310, 25.666687>,  <39.858593, 41.974518, 25.530451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702232, 42.095310, 25.666687>,  <39.441628, 42.296631, 25.893747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702232, 42.095310, 25.666687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493621, -0.849425, 0.186589,
		-0.576087, 0.158640, -0.801846,
		0.651507, -0.503300, -0.567650,
		39.897686, 41.944321, 25.496391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059074, 41.853317, 25.357466>,  <39.441628, 42.296631, 25.893747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059074, 41.853317, 25.357466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403160, 41.702114, 25.494366>,  <39.609612, 41.611393, 25.576506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403160, 41.702114, 25.494366>,  <39.059074, 41.853317, 25.357466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403160, 41.702114, 25.494366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455803, -0.870915, 0.183715,
		0.228623, -0.314033, -0.921474,
		0.860218, -0.378009, 0.342248,
		39.661224, 41.588711, 25.597040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197369, 41.273308, 24.990986>,  <39.059074, 41.853317, 25.357466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197369, 41.273308, 24.990986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439148, 41.246822, 25.308540>,  <39.584217, 41.230930, 25.499073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439148, 41.246822, 25.308540>,  <39.197369, 41.273308, 24.990986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439148, 41.246822, 25.308540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149973, -0.988180, 0.031764,
		0.782400, -0.138261, -0.607234,
		0.604448, -0.066216, 0.793888,
		39.620483, 41.226959, 25.546707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677273, 40.676949, 24.902584>,  <39.197369, 41.273308, 24.990986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677273, 40.676949, 24.902584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670879, 40.741028, 25.297367>,  <39.667046, 40.779476, 25.534237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670879, 40.741028, 25.297367>,  <39.677273, 40.676949, 24.902584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670879, 40.741028, 25.297367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248042, -0.956861, 0.151300,
		0.968617, -0.242389, 0.055027,
		-0.015980, 0.160200, 0.986955,
		39.666084, 40.789089, 25.593454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078373, 40.159462, 25.086617>,  <39.677273, 40.676949, 24.902584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078373, 40.159462, 25.086617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831726, 40.287804, 25.374180>,  <39.683739, 40.364811, 25.546719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831726, 40.287804, 25.374180>,  <40.078373, 40.159462, 25.086617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831726, 40.287804, 25.374180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269938, -0.943989, 0.189782,
		0.739537, -0.077038, 0.668693,
		-0.616619, 0.320856, 0.718910,
		39.646740, 40.384060, 25.589853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303905, 39.674431, 25.609106>,  <40.078373, 40.159462, 25.086617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303905, 39.674431, 25.609106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947273, 39.823021, 25.712711>,  <39.733295, 39.912174, 25.774874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947273, 39.823021, 25.712711>,  <40.303905, 39.674431, 25.609106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947273, 39.823021, 25.712711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320990, -0.921842, 0.217192,
		0.319450, 0.110505, 0.941138,
		-0.891581, 0.371478, 0.259012,
		39.679798, 39.934464, 25.790415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050316, 39.208881, 26.128403>,  <40.303905, 39.674431, 25.609106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050316, 39.208881, 26.128403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747032, 39.408276, 25.960293>,  <39.565063, 39.527912, 25.859426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747032, 39.408276, 25.960293>,  <40.050316, 39.208881, 26.128403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747032, 39.408276, 25.960293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500988, -0.857942, -0.113782,
		-0.417290, 0.124282, 0.900235,
		-0.758208, 0.498487, -0.420275,
		39.519569, 39.557823, 25.834209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490818, 38.803028, 26.291445>,  <40.050316, 39.208881, 26.128403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490818, 38.803028, 26.291445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338352, 39.054325, 26.020142>,  <39.246872, 39.205101, 25.857359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338352, 39.054325, 26.020142>,  <39.490818, 38.803028, 26.291445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338352, 39.054325, 26.020142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578175, -0.734455, -0.355373,
		-0.721407, 0.256695, 0.643179,
		-0.381164, 0.628239, -0.678255,
		39.224003, 39.242798, 25.816664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772770, 38.638489, 26.329912>,  <39.490818, 38.803028, 26.291445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772770, 38.638489, 26.329912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822346, 38.813602, 25.973713>,  <38.852093, 38.918671, 25.759993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822346, 38.813602, 25.973713>,  <38.772770, 38.638489, 26.329912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822346, 38.813602, 25.973713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574396, -0.700127, -0.424137,
		-0.809141, 0.564065, 0.164688,
		0.123939, 0.437783, -0.890498,
		38.859528, 38.944939, 25.706564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220543, 38.421486, 26.037914>,  <38.772770, 38.638489, 26.329912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220543, 38.421486, 26.037914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440948, 38.550747, 25.730160>,  <38.573193, 38.628304, 25.545507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440948, 38.550747, 25.730160>,  <38.220543, 38.421486, 26.037914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440948, 38.550747, 25.730160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488503, -0.622589, -0.611349,
		-0.676571, 0.712710, -0.185194,
		0.551014, 0.323153, -0.769386,
		38.606255, 38.647694, 25.499344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696079, 38.660698, 25.472910>,  <38.220543, 38.421486, 26.037914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696079, 38.660698, 25.472910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050415, 38.564686, 25.314075>,  <38.263016, 38.507076, 25.218775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050415, 38.564686, 25.314075>,  <37.696079, 38.660698, 25.472910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050415, 38.564686, 25.314075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456106, -0.607621, -0.650204,
		-0.085206, 0.757087, -0.647734,
		0.885837, -0.240034, -0.397085,
		38.316166, 38.492676, 25.194950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574375, 38.609772, 24.820108>,  <37.696079, 38.660698, 25.472910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574375, 38.609772, 24.820108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913406, 38.401955, 24.863361>,  <38.116825, 38.277264, 24.889313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913406, 38.401955, 24.863361>,  <37.574375, 38.609772, 24.820108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913406, 38.401955, 24.863361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266258, -0.592601, -0.760218,
		0.459042, 0.615552, -0.640606,
		0.847577, -0.519538, 0.108133,
		38.167679, 38.246094, 24.895802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613674, 38.362560, 24.193987>,  <37.574375, 38.609772, 24.820108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613674, 38.362560, 24.193987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865173, 38.137356, 24.408535>,  <38.016075, 38.002235, 24.537264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865173, 38.137356, 24.408535>,  <37.613674, 38.362560, 24.193987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865173, 38.137356, 24.408535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343681, -0.819946, -0.457790,
		0.697535, 0.103495, -0.709038,
		0.628752, -0.563007, 0.536371,
		38.053799, 37.968452, 24.569447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008099, 37.752735, 23.709024>,  <37.613674, 38.362560, 24.193987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008099, 37.752735, 23.709024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084496, 37.619144, 24.078236>,  <38.130333, 37.538990, 24.299763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084496, 37.619144, 24.078236>,  <38.008099, 37.752735, 23.709024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084496, 37.619144, 24.078236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207670, -0.932801, -0.294543,
		0.959372, -0.135430, -0.247515,
		0.190993, -0.333977, 0.923028,
		38.141792, 37.518951, 24.355145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415405, 37.116127, 23.650307>,  <38.008099, 37.752735, 23.709024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415405, 37.116127, 23.650307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238140, 37.086983, 24.007698>,  <38.131783, 37.069496, 24.222132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238140, 37.086983, 24.007698>,  <38.415405, 37.116127, 23.650307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238140, 37.086983, 24.007698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073346, -0.990403, -0.117146,
		0.893437, -0.117447, 0.433563,
		-0.443160, -0.072862, 0.893476,
		38.105190, 37.065125, 24.275742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714977, 36.553856, 24.015303>,  <38.415405, 37.116127, 23.650307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714977, 36.553856, 24.015303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350479, 36.618462, 24.166855>,  <38.131783, 36.657223, 24.257786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350479, 36.618462, 24.166855>,  <38.714977, 36.553856, 24.015303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350479, 36.618462, 24.166855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195701, -0.979216, -0.053257,
		0.362404, -0.122677, 0.923912,
		-0.911243, 0.161510, 0.378880,
		38.077106, 36.666916, 24.280519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625908, 36.053093, 24.577433>,  <38.714977, 36.553856, 24.015303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625908, 36.053093, 24.577433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253265, 36.182396, 24.510967>,  <38.029678, 36.259979, 24.471088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253265, 36.182396, 24.510967>,  <38.625908, 36.053093, 24.577433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253265, 36.182396, 24.510967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338204, -0.938424, 0.070552,
		-0.133124, 0.121924, 0.983571,
		-0.931609, 0.323256, -0.166162,
		37.973782, 36.279373, 24.461119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212414, 35.607307, 24.934250>,  <38.625908, 36.053093, 24.577433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212414, 35.607307, 24.934250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939625, 35.765079, 24.687889>,  <37.775951, 35.859741, 24.540071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939625, 35.765079, 24.687889>,  <38.212414, 35.607307, 24.934250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939625, 35.765079, 24.687889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327721, -0.917643, -0.224790,
		-0.653843, 0.048544, 0.755071,
		-0.681974, 0.394430, -0.615903,
		37.735031, 35.883408, 24.503119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519608, 35.212852, 25.079834>,  <38.212414, 35.607307, 24.934250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519608, 35.212852, 25.079834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495472, 35.359318, 24.708397>,  <37.480991, 35.447197, 24.485535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495472, 35.359318, 24.708397>,  <37.519608, 35.212852, 25.079834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495472, 35.359318, 24.708397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331575, -0.884813, -0.327359,
		-0.941498, 0.288147, 0.174796,
		-0.060334, 0.366166, -0.928592,
		37.477371, 35.469166, 24.429819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909630, 35.125832, 24.965118>,  <37.519608, 35.212852, 25.079834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909630, 35.125832, 24.965118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111179, 35.136551, 24.619774>,  <37.232109, 35.142982, 24.412567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111179, 35.136551, 24.619774>,  <36.909630, 35.125832, 24.965118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111179, 35.136551, 24.619774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296708, -0.933330, -0.202138,
		-0.811220, 0.358019, -0.462326,
		0.503872, 0.026803, -0.863363,
		37.262341, 35.144592, 24.360765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381031, 35.026142, 24.457132>,  <36.909630, 35.125832, 24.965118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381031, 35.026142, 24.457132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745640, 34.932907, 24.321606>,  <36.964405, 34.876965, 24.240290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745640, 34.932907, 24.321606>,  <36.381031, 35.026142, 24.457132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745640, 34.932907, 24.321606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375966, -0.806182, -0.456859,
		-0.166658, 0.543820, -0.822487,
		0.911523, -0.233088, -0.338814,
		37.019096, 34.862980, 24.219961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250408, 34.912025, 23.730936>,  <36.381031, 35.026142, 24.457132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250408, 34.912025, 23.730936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546337, 34.699581, 23.896145>,  <36.723896, 34.572117, 23.995270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546337, 34.699581, 23.896145>,  <36.250408, 34.912025, 23.730936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546337, 34.699581, 23.896145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295074, -0.807827, -0.510242,
		0.604642, 0.255618, -0.754366,
		0.739824, -0.531107, 0.413020,
		36.768284, 34.540249, 24.020050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034325, 34.595833, 22.985968>,  <36.250408, 34.912025, 23.730936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034325, 34.595833, 22.985968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927559, 34.949379, 22.832325>,  <35.863499, 35.161507, 22.740139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927559, 34.949379, 22.832325>,  <36.034325, 34.595833, 22.985968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927559, 34.949379, 22.832325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906897, -0.365199, -0.210162,
		-0.326030, 0.292249, 0.899052,
		-0.266913, 0.883867, -0.384105,
		35.847485, 35.214539, 22.717093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319832, 34.568748, 23.046949>,  <36.034325, 34.595833, 22.985968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319832, 34.568748, 23.046949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378746, 34.844376, 22.763119>,  <35.414093, 35.009750, 22.592821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378746, 34.844376, 22.763119>,  <35.319832, 34.568748, 23.046949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378746, 34.844376, 22.763119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695970, -0.437552, -0.569363,
		-0.702804, 0.577700, 0.415124,
		0.147283, 0.689065, -0.709575,
		35.422932, 35.051094, 22.550245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645775, 34.930733, 22.922266>,  <35.319832, 34.568748, 23.046949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645775, 34.930733, 22.922266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928326, 34.880791, 22.643570>,  <35.097855, 34.850826, 22.476353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928326, 34.880791, 22.643570>,  <34.645775, 34.930733, 22.922266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928326, 34.880791, 22.643570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670131, -0.434937, -0.601460,
		-0.227941, 0.891763, -0.390899,
		0.706376, -0.124856, -0.696738,
		35.140240, 34.843334, 22.434549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107040, 35.528000, 22.922573>,  <34.645775, 34.930733, 22.922266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107040, 35.528000, 22.922573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124748, 35.214081, 23.169842>,  <35.135372, 35.025730, 23.318203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124748, 35.214081, 23.169842>,  <35.107040, 35.528000, 22.922573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124748, 35.214081, 23.169842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706241, 0.462231, 0.536252,
		-0.706587, 0.412839, 0.574716,
		0.044265, -0.784797, 0.618170,
		35.138027, 34.978642, 23.355293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712032, 35.851402, 22.375822>,  <35.107040, 35.528000, 22.922573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712032, 35.851402, 22.375822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088707, 35.931217, 22.484200>,  <35.314713, 35.979107, 22.549227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088707, 35.931217, 22.484200>,  <34.712032, 35.851402, 22.375822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088707, 35.931217, 22.484200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066257, -0.679486, 0.730691,
		0.329902, -0.706034, -0.626642,
		0.941687, 0.199537, 0.270944,
		35.371212, 35.991077, 22.565483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507381, 36.119335, 21.765211>,  <34.712032, 35.851402, 22.375822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507381, 36.119335, 21.765211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379768, 35.834774, 22.015690>,  <34.303200, 35.664036, 22.165977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.379768, 35.834774, 22.015690>,  <34.507381, 36.119335, 21.765211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379768, 35.834774, 22.015690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409383, -0.699348, -0.585933,
		0.854764, 0.069421, 0.514353,
		-0.319036, -0.711402, 0.626198,
		34.284058, 35.621353, 22.203548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887779, 35.602013, 21.671404>,  <34.507381, 36.119335, 21.765211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887779, 35.602013, 21.671404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593666, 35.400921, 21.853226>,  <34.417198, 35.280266, 21.962318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593666, 35.400921, 21.853226>,  <34.887779, 35.602013, 21.671404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593666, 35.400921, 21.853226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225355, -0.813862, -0.535578,
		0.639196, -0.291366, 0.711713,
		-0.735285, -0.502727, 0.454556,
		34.373081, 35.250103, 21.989594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255589, 35.056599, 21.784225>,  <34.887779, 35.602013, 21.671404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255589, 35.056599, 21.784225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869549, 34.955879, 21.813015>,  <34.637924, 34.895447, 21.830290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869549, 34.955879, 21.813015>,  <35.255589, 35.056599, 21.784225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869549, 34.955879, 21.813015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194450, -0.873091, -0.447102,
		0.175422, -0.417502, 0.891582,
		-0.965099, -0.251800, 0.071976,
		34.580021, 34.880341, 21.834608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395844, 34.453308, 21.891764>,  <35.255589, 35.056599, 21.784225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395844, 34.453308, 21.891764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999519, 34.459087, 21.837971>,  <34.761726, 34.462555, 21.805695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999519, 34.459087, 21.837971>,  <35.395844, 34.453308, 21.891764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999519, 34.459087, 21.837971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047553, -0.893604, -0.446330,
		-0.126623, -0.448623, 0.884706,
		-0.990811, 0.014446, -0.134484,
		34.702278, 34.463421, 21.797625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102245, 33.907871, 22.192392>,  <35.395844, 34.453308, 21.891764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102245, 33.907871, 22.192392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862892, 34.029568, 21.895912>,  <34.719280, 34.102585, 21.718025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862892, 34.029568, 21.895912>,  <35.102245, 33.907871, 22.192392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862892, 34.029568, 21.895912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080055, -0.943174, -0.322514,
		-0.797200, -0.133650, 0.588736,
		-0.598385, 0.304239, -0.741198,
		34.683376, 34.120838, 21.673553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494873, 33.430565, 22.163942>,  <35.102245, 33.907871, 22.192392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494873, 33.430565, 22.163942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513580, 33.630215, 21.817837>,  <34.524807, 33.750004, 21.610172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513580, 33.630215, 21.817837>,  <34.494873, 33.430565, 22.163942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513580, 33.630215, 21.817837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311945, -0.815595, -0.487335,
		-0.948948, 0.292709, 0.117555,
		0.046770, 0.499127, -0.865266,
		34.527611, 33.779953, 21.558256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866428, 33.477703, 21.935238>,  <34.494873, 33.430565, 22.163942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866428, 33.477703, 21.935238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084564, 33.514786, 21.602009>,  <34.215446, 33.537037, 21.402071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084564, 33.514786, 21.602009>,  <33.866428, 33.477703, 21.935238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084564, 33.514786, 21.602009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555925, -0.703826, -0.442239,
		-0.627336, 0.704297, -0.332288,
		0.545341, 0.092706, -0.833072,
		34.248165, 33.542599, 21.352087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388908, 33.364025, 21.336327>,  <33.866428, 33.477703, 21.935238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388908, 33.364025, 21.336327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761658, 33.305355, 21.203598>,  <33.985306, 33.270153, 21.123960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761658, 33.305355, 21.203598>,  <33.388908, 33.364025, 21.336327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761658, 33.305355, 21.203598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293936, -0.841351, -0.453574,
		-0.212653, 0.520206, -0.827142,
		0.931869, -0.146674, -0.331823,
		34.041218, 33.261353, 21.104052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168781, 33.232845, 20.673418>,  <33.388908, 33.364025, 21.336327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168781, 33.232845, 20.673418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540546, 33.109955, 20.755199>,  <33.763607, 33.036221, 20.804268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540546, 33.109955, 20.755199>,  <33.168781, 33.232845, 20.673418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540546, 33.109955, 20.755199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235481, -0.920293, -0.312426,
		0.284143, 0.242228, -0.927679,
		0.929415, -0.307224, 0.204455,
		33.819370, 33.017788, 20.816536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263069, 32.712616, 20.110788>,  <33.168781, 33.232845, 20.673418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263069, 32.712616, 20.110788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567711, 32.650219, 20.362385>,  <33.750496, 32.612782, 20.513344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567711, 32.650219, 20.362385>,  <33.263069, 32.712616, 20.110788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567711, 32.650219, 20.362385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278230, -0.955298, 0.099974,
		0.585280, -0.251145, -0.770956,
		0.761600, -0.155990, 0.628992,
		33.796192, 32.603420, 20.551083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605793, 32.168430, 19.848660>,  <33.263069, 32.712616, 20.110788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605793, 32.168430, 19.848660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704483, 32.174168, 20.236252>,  <33.763699, 32.177608, 20.468807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704483, 32.174168, 20.236252>,  <33.605793, 32.168430, 19.848660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704483, 32.174168, 20.236252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028892, -0.999337, 0.022147,
		0.968654, -0.033460, -0.246149,
		0.246727, 0.014341, 0.968979,
		33.778500, 32.178471, 20.526945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181480, 31.666470, 19.913254>,  <33.605793, 32.168430, 19.848660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181480, 31.666470, 19.913254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023682, 31.733887, 20.274578>,  <33.929005, 31.774338, 20.491373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023682, 31.733887, 20.274578>,  <34.181480, 31.666470, 19.913254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023682, 31.733887, 20.274578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114847, -0.984370, 0.133512,
		0.911693, -0.051073, 0.407686,
		-0.394495, 0.168543, 0.903309,
		33.905334, 31.784451, 20.545570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485245, 31.120407, 20.383480>,  <34.181480, 31.666470, 19.913254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485245, 31.120407, 20.383480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160500, 31.206932, 20.600399>,  <33.965652, 31.258846, 20.730551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160500, 31.206932, 20.600399>,  <34.485245, 31.120407, 20.383480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160500, 31.206932, 20.600399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144692, -0.974403, 0.172053,
		0.565631, 0.061218, 0.822383,
		-0.811865, 0.216310, 0.542295,
		33.916939, 31.271826, 20.763088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503960, 30.660629, 21.035946>,  <34.485245, 31.120407, 20.383480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503960, 30.660629, 21.035946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126495, 30.792534, 21.046989>,  <33.900017, 30.871677, 21.053616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126495, 30.792534, 21.046989>,  <34.503960, 30.660629, 21.035946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126495, 30.792534, 21.046989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307972, -0.905698, 0.291314,
		0.121069, 0.266400, 0.956229,
		-0.943661, 0.329761, 0.027608,
		33.843399, 30.891462, 21.055271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150696, 30.285322, 21.608475>,  <34.503960, 30.660629, 21.035946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150696, 30.285322, 21.608475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862297, 30.407719, 21.359787>,  <33.689259, 30.481157, 21.210575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862297, 30.407719, 21.359787>,  <34.150696, 30.285322, 21.608475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862297, 30.407719, 21.359787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533142, -0.818084, 0.215635,
		-0.442636, 0.486937, 0.752972,
		-0.720995, 0.305993, -0.621719,
		33.646000, 30.499516, 21.173271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573124, 30.329176, 21.904375>,  <34.150696, 30.285322, 21.608475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573124, 30.329176, 21.904375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453098, 30.256458, 21.529800>,  <33.381081, 30.212828, 21.305056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453098, 30.256458, 21.529800>,  <33.573124, 30.329176, 21.904375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453098, 30.256458, 21.529800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371940, -0.881680, 0.290346,
		-0.878419, 0.435421, 0.196949,
		-0.300068, -0.181792, -0.936435,
		33.363079, 30.201921, 21.248869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907768, 29.948027, 21.995916>,  <33.573124, 30.329176, 21.904375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907768, 29.948027, 21.995916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021698, 29.882629, 21.618103>,  <33.090054, 29.843391, 21.391415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021698, 29.882629, 21.618103>,  <32.907768, 29.948027, 21.995916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021698, 29.882629, 21.618103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177509, -0.977302, 0.115635,
		-0.942002, 0.134729, -0.307378,
		0.284822, -0.163491, -0.944535,
		33.107143, 29.833582, 21.334742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382977, 29.442228, 21.585165>,  <32.907768, 29.948027, 21.995916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382977, 29.442228, 21.585165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681595, 29.459976, 21.319622>,  <32.860764, 29.470625, 21.160297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681595, 29.459976, 21.319622>,  <32.382977, 29.442228, 21.585165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681595, 29.459976, 21.319622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046695, -0.991820, -0.118800,
		-0.663696, 0.119688, -0.738365,
		0.746543, 0.044369, -0.663856,
		32.905560, 29.473288, 21.120464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131737, 29.157494, 20.827419>,  <32.382977, 29.442228, 21.585165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131737, 29.157494, 20.827419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527897, 29.121483, 20.869362>,  <32.765594, 29.099876, 20.894527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527897, 29.121483, 20.869362>,  <32.131737, 29.157494, 20.827419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527897, 29.121483, 20.869362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064892, -0.972813, -0.222316,
		0.122021, 0.213378, -0.969320,
		0.990404, -0.090029, 0.104857,
		32.825020, 29.094475, 20.900820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475861, 28.869652, 20.172712>,  <32.131737, 29.157494, 20.827419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475861, 28.869652, 20.172712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735023, 28.767796, 20.459869>,  <32.890522, 28.706682, 20.632164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735023, 28.767796, 20.459869>,  <32.475861, 28.869652, 20.172712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735023, 28.767796, 20.459869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092267, -0.909290, -0.405805,
		0.756107, 0.329163, -0.565644,
		0.647911, -0.254642, 0.717892,
		32.929398, 28.691402, 20.675238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095963, 28.450993, 19.826801>,  <32.475861, 28.869652, 20.172712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095963, 28.450993, 19.826801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107662, 28.380627, 20.220390>,  <33.114681, 28.338408, 20.456543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107662, 28.380627, 20.220390>,  <33.095963, 28.450993, 19.826801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107662, 28.380627, 20.220390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252946, -0.951050, -0.177548,
		0.967038, 0.254083, 0.016683,
		0.029246, -0.175915, 0.983971,
		33.116436, 28.327852, 20.515581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622883, 28.122385, 19.897404>,  <33.095963, 28.450993, 19.826801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622883, 28.122385, 19.897404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437126, 28.033230, 20.240253>,  <33.325672, 27.979736, 20.445963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437126, 28.033230, 20.240253>,  <33.622883, 28.122385, 19.897404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437126, 28.033230, 20.240253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318397, -0.945122, -0.073265,
		0.826418, 0.238883, 0.509871,
		-0.464388, -0.222889, 0.857126,
		33.297810, 27.966364, 20.497391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120487, 27.698198, 20.277327>,  <33.622883, 28.122385, 19.897404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120487, 27.698198, 20.277327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768097, 27.618626, 20.449051>,  <33.556664, 27.570883, 20.552086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768097, 27.618626, 20.449051>,  <34.120487, 27.698198, 20.277327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768097, 27.618626, 20.449051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189146, -0.979739, -0.065847,
		0.433711, 0.023192, 0.900753,
		-0.880976, -0.198932, 0.429311,
		33.503803, 27.558947, 20.577845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279243, 27.229136, 20.727274>,  <34.120487, 27.698198, 20.277327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279243, 27.229136, 20.727274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880482, 27.198494, 20.734314>,  <33.641224, 27.180109, 20.738537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880482, 27.198494, 20.734314>,  <34.279243, 27.229136, 20.727274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880482, 27.198494, 20.734314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078084, -0.990814, 0.110410,
		0.008979, 0.111443, 0.993730,
		-0.996906, -0.076603, 0.017599,
		33.581409, 27.175512, 20.739594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088947, 26.784191, 21.277670>,  <34.279243, 27.229136, 20.727274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088947, 26.784191, 21.277670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803703, 26.769054, 20.997658>,  <33.632557, 26.759974, 20.829651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803703, 26.769054, 20.997658>,  <34.088947, 26.784191, 21.277670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803703, 26.769054, 20.997658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186593, -0.972768, -0.137496,
		-0.675765, -0.228670, 0.700750,
		-0.713109, -0.037840, -0.700032,
		33.589771, 26.757702, 20.787649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708450, 26.267187, 21.461906>,  <34.088947, 26.784191, 21.277670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708450, 26.267187, 21.461906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658833, 26.304047, 21.066711>,  <33.629063, 26.326162, 20.829594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658833, 26.304047, 21.066711>,  <33.708450, 26.267187, 21.461906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658833, 26.304047, 21.066711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276471, -0.953041, -0.123603,
		-0.952973, -0.288490, 0.092826,
		-0.124125, 0.092126, -0.987980,
		33.621620, 26.331692, 20.770315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477798, 25.616037, 21.371668>,  <33.708450, 26.267187, 21.461906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477798, 25.616037, 21.371668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537399, 25.765739, 21.005558>,  <33.573162, 25.855560, 20.785892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537399, 25.765739, 21.005558>,  <33.477798, 25.616037, 21.371668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537399, 25.765739, 21.005558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138400, -0.924392, -0.355451,
		-0.979103, -0.073710, -0.189536,
		0.149005, 0.374255, -0.915276,
		33.582100, 25.878016, 20.730974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101963, 25.194305, 20.929951>,  <33.477798, 25.616037, 21.371668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101963, 25.194305, 20.929951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339951, 25.381119, 20.668297>,  <33.482742, 25.493206, 20.511305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339951, 25.381119, 20.668297>,  <33.101963, 25.194305, 20.929951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339951, 25.381119, 20.668297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088224, -0.846885, -0.524407,
		-0.798893, 0.254295, -0.545073,
		0.594968, 0.467034, -0.654135,
		33.518440, 25.521229, 20.472055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849285, 25.231785, 20.183372>,  <33.101963, 25.194305, 20.929951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849285, 25.231785, 20.183372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248901, 25.220573, 20.196842>,  <33.488670, 25.213846, 20.204924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248901, 25.220573, 20.196842>,  <32.849285, 25.231785, 20.183372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248901, 25.220573, 20.196842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013325, -0.926586, -0.375848,
		0.041738, 0.375039, -0.926069,
		0.999040, -0.028027, 0.033676,
		33.548615, 25.212166, 20.206945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040497, 24.948380, 19.445961>,  <32.849285, 25.231785, 20.183372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040497, 24.948380, 19.445961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344723, 24.914074, 19.703392>,  <33.527256, 24.893490, 19.857851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344723, 24.914074, 19.703392>,  <33.040497, 24.948380, 19.445961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344723, 24.914074, 19.703392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273910, -0.856323, -0.437817,
		0.588659, 0.509269, -0.627795,
		0.760562, -0.085765, 0.643576,
		33.572891, 24.888344, 19.896465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587242, 24.805155, 19.011637>,  <33.040497, 24.948380, 19.445961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587242, 24.805155, 19.011637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691544, 24.662090, 19.370319>,  <33.754124, 24.576252, 19.585529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691544, 24.662090, 19.370319>,  <33.587242, 24.805155, 19.011637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691544, 24.662090, 19.370319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398266, -0.806266, -0.437400,
		0.879426, 0.471183, -0.067795,
		0.260756, -0.357660, 0.896708,
		33.769772, 24.554792, 19.639332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226917, 24.420832, 18.877964>,  <33.587242, 24.805155, 19.011637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226917, 24.420832, 18.877964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113079, 24.295681, 19.240425>,  <34.044777, 24.220591, 19.457901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113079, 24.295681, 19.240425>,  <34.226917, 24.420832, 18.877964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113079, 24.295681, 19.240425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400624, -0.897560, -0.184085,
		0.870922, 0.310637, 0.380788,
		-0.284596, -0.312876, 0.906153,
		34.027699, 24.201818, 19.512272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830826, 24.168926, 19.149231>,  <34.226917, 24.420832, 18.877964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830826, 24.168926, 19.149231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524956, 24.001621, 19.345325>,  <34.341434, 23.901237, 19.462982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524956, 24.001621, 19.345325>,  <34.830826, 24.168926, 19.149231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524956, 24.001621, 19.345325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351258, -0.908324, -0.227078,
		0.540273, -0.001440, 0.841488,
		-0.764671, -0.418264, 0.490238,
		34.295555, 23.876143, 19.492397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092407, 23.538734, 19.478621>,  <34.830826, 24.168926, 19.149231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092407, 23.538734, 19.478621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694668, 23.496365, 19.481625>,  <34.456024, 23.470943, 19.483427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694668, 23.496365, 19.481625>,  <35.092407, 23.538734, 19.478621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694668, 23.496365, 19.481625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101469, -0.968609, -0.226936,
		0.031313, -0.224891, 0.973881,
		-0.994346, -0.105924, 0.007511,
		34.396362, 23.464588, 19.483877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148903, 22.785538, 19.752026>,  <35.092407, 23.538734, 19.478621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148903, 22.785538, 19.752026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780735, 22.876915, 19.625134>,  <34.559834, 22.931742, 19.548998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780735, 22.876915, 19.625134>,  <35.148903, 22.785538, 19.752026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780735, 22.876915, 19.625134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248701, -0.968275, 0.024320,
		-0.301608, 0.101280, 0.948037,
		-0.920424, 0.228443, -0.317228,
		34.504608, 22.945448, 19.529964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666862, 22.543167, 20.138090>,  <35.148903, 22.785538, 19.752026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666862, 22.543167, 20.138090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471344, 22.583015, 19.791412>,  <34.354034, 22.606924, 19.583406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471344, 22.583015, 19.791412>,  <34.666862, 22.543167, 20.138090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471344, 22.583015, 19.791412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369097, -0.923779, 0.101978,
		-0.790474, 0.369740, 0.488307,
		-0.488793, 0.099621, -0.866693,
		34.324707, 22.612902, 19.531404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995003, 22.323292, 20.223782>,  <34.666862, 22.543167, 20.138090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995003, 22.323292, 20.223782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022221, 22.291679, 19.825962>,  <34.038551, 22.272713, 19.587271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022221, 22.291679, 19.825962>,  <33.995003, 22.323292, 20.223782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022221, 22.291679, 19.825962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393521, -0.918162, 0.046038,
		-0.916794, 0.388243, -0.093575,
		0.068043, -0.079031, -0.994548,
		34.042633, 22.267969, 19.527597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392014, 22.067303, 20.106613>,  <33.995003, 22.323292, 20.223782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392014, 22.067303, 20.106613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592258, 21.994965, 19.767986>,  <33.712406, 21.951563, 19.564810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592258, 21.994965, 19.767986>,  <33.392014, 22.067303, 20.106613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592258, 21.994965, 19.767986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386057, -0.921942, -0.031349,
		-0.774819, 0.342518, -0.531355,
		0.500616, -0.180843, -0.846569,
		33.742443, 21.940712, 19.514015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005802, 21.608349, 19.782974>,  <33.392014, 22.067303, 20.106613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005802, 21.608349, 19.782974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331070, 21.555237, 19.556305>,  <33.526230, 21.523369, 19.420303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331070, 21.555237, 19.556305>,  <33.005802, 21.608349, 19.782974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331070, 21.555237, 19.556305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314639, -0.919387, -0.236073,
		-0.489647, 0.370266, -0.789398,
		0.813172, -0.132783, -0.566675,
		33.575020, 21.515402, 19.386303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802845, 21.221487, 19.097828>,  <33.005802, 21.608349, 19.782974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802845, 21.221487, 19.097828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186943, 21.181873, 19.202225>,  <33.417404, 21.158106, 19.264862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186943, 21.181873, 19.202225>,  <32.802845, 21.221487, 19.097828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186943, 21.181873, 19.202225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070947, -0.990835, -0.114945,
		0.269982, 0.091859, -0.958474,
		0.960248, -0.099033, 0.260990,
		33.475018, 21.152163, 19.280521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052372, 20.819344, 18.620049>,  <32.802845, 21.221487, 19.097828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052372, 20.819344, 18.620049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316135, 20.787186, 18.919037>,  <33.474396, 20.767891, 19.098431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316135, 20.787186, 18.919037>,  <33.052372, 20.819344, 18.620049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316135, 20.787186, 18.919037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052629, -0.986890, -0.152573,
		0.749938, 0.139947, -0.646535,
		0.659411, -0.080394, 0.747472,
		33.513958, 20.763067, 19.143278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641644, 20.561636, 18.397499>,  <33.052372, 20.819344, 18.620049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641644, 20.561636, 18.397499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616665, 20.446724, 18.779823>,  <33.601677, 20.377777, 19.009218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616665, 20.446724, 18.779823>,  <33.641644, 20.561636, 18.397499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616665, 20.446724, 18.779823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121008, -0.952793, -0.278466,
		0.990685, 0.098271, 0.094261,
		-0.062446, -0.287278, 0.955810,
		33.597931, 20.360540, 19.066566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121418, 20.036331, 18.331884>,  <33.641644, 20.561636, 18.397499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121418, 20.036331, 18.331884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948147, 19.975140, 18.687176>,  <33.844185, 19.938425, 18.900351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948147, 19.975140, 18.687176>,  <34.121418, 20.036331, 18.331884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948147, 19.975140, 18.687176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095135, -0.987746, -0.123720,
		0.896271, 0.030909, 0.442428,
		-0.433182, -0.152977, 0.888229,
		33.818192, 19.929247, 18.953644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580006, 19.631290, 18.782431>,  <34.121418, 20.036331, 18.331884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580006, 19.631290, 18.782431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183388, 19.593502, 18.818005>,  <33.945415, 19.570829, 18.839350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183388, 19.593502, 18.818005>,  <34.580006, 19.631290, 18.782431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183388, 19.593502, 18.818005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061120, -0.944734, -0.322091,
		0.114447, -0.313933, 0.942522,
		-0.991547, -0.094469, 0.088935,
		33.885925, 19.565161, 18.844685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533512, 19.008249, 19.087181>,  <34.580006, 19.631290, 18.782431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533512, 19.008249, 19.087181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154224, 19.063980, 18.973007>,  <33.926651, 19.097418, 18.904503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154224, 19.063980, 18.973007>,  <34.533512, 19.008249, 19.087181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154224, 19.063980, 18.973007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076072, -0.972121, -0.221798,
		-0.308381, -0.188599, 0.932380,
		-0.948216, 0.139327, -0.285436,
		33.869759, 19.105778, 18.887377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166656, 18.664011, 19.506769>,  <34.533512, 19.008249, 19.087181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166656, 18.664011, 19.506769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970913, 18.715446, 19.161751>,  <33.853466, 18.746307, 18.954739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970913, 18.715446, 19.161751>,  <34.166656, 18.664011, 19.506769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970913, 18.715446, 19.161751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214670, -0.976397, -0.023771,
		-0.845246, 0.173531, 0.505416,
		-0.489362, 0.128590, -0.862548,
		33.824104, 18.754023, 18.902987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707127, 18.196558, 19.559868>,  <34.166656, 18.664011, 19.506769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707127, 18.196558, 19.559868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787300, 18.250465, 19.171711>,  <33.835403, 18.282810, 18.938816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787300, 18.250465, 19.171711>,  <33.707127, 18.196558, 19.559868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787300, 18.250465, 19.171711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282861, -0.956272, -0.074383,
		-0.937985, -0.259577, -0.229793,
		0.200437, 0.134770, -0.970393,
		33.847431, 18.290895, 18.880592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264744, 17.764484, 19.231152>,  <33.707127, 18.196558, 19.559868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264744, 17.764484, 19.231152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606312, 17.831104, 19.033936>,  <33.811253, 17.871077, 18.915606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606312, 17.831104, 19.033936>,  <33.264744, 17.764484, 19.231152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606312, 17.831104, 19.033936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259577, -0.957448, 0.126144,
		-0.451049, -0.235698, -0.860815,
		0.853917, 0.166551, -0.493038,
		33.862488, 17.881069, 18.886024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795982, 17.278128, 19.594168>,  <33.264744, 17.764484, 19.231152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795982, 17.278128, 19.594168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531570, 17.120083, 19.849331>,  <32.372925, 17.025255, 20.002428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531570, 17.120083, 19.849331>,  <32.795982, 17.278128, 19.594168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531570, 17.120083, 19.849331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146194, 0.766026, 0.625964,
		-0.735980, 0.507039, -0.448604,
		-0.661030, -0.395113, 0.637906,
		32.333260, 17.001549, 20.040703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546345, 17.827465, 19.855463>,  <32.795982, 17.278128, 19.594168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546345, 17.827465, 19.855463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476803, 17.535629, 20.120029>,  <32.435078, 17.360527, 20.278770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476803, 17.535629, 20.120029>,  <32.546345, 17.827465, 19.855463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476803, 17.535629, 20.120029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016783, 0.669353, 0.742755,
		-0.984628, 0.140234, -0.104127,
		-0.173857, -0.729590, 0.661417,
		32.424644, 17.316751, 20.318455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063152, 17.981787, 20.333794>,  <32.546345, 17.827465, 19.855463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063152, 17.981787, 20.333794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225388, 17.726269, 20.595310>,  <32.322727, 17.572958, 20.752220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225388, 17.726269, 20.595310>,  <32.063152, 17.981787, 20.333794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225388, 17.726269, 20.595310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177881, 0.756749, 0.629038,
		-0.896583, -0.138831, 0.420554,
		0.405584, -0.638793, 0.653793,
		32.347061, 17.534632, 20.791449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759708, 18.084877, 20.997198>,  <32.063152, 17.981787, 20.333794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759708, 18.084877, 20.997198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133717, 17.944824, 21.019611>,  <32.358124, 17.860792, 21.033060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133717, 17.944824, 21.019611>,  <31.759708, 18.084877, 20.997198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133717, 17.944824, 21.019611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265628, 0.796320, 0.543430,
		-0.234895, -0.493234, 0.837582,
		0.935022, -0.350134, 0.056035,
		32.414223, 17.839785, 21.036421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009136, 17.983137, 21.758585>,  <31.759708, 18.084877, 20.997198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009136, 17.983137, 21.758585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250591, 18.079971, 21.454739>,  <32.395466, 18.138071, 21.272430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250591, 18.079971, 21.454739>,  <32.009136, 17.983137, 21.758585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250591, 18.079971, 21.454739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120329, 0.914206, 0.386973,
		0.788126, -0.324995, 0.522719,
		0.603637, 0.242086, -0.759616,
		32.431683, 18.152597, 21.226854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442490, 18.446213, 22.067364>,  <32.009136, 17.983137, 21.758585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442490, 18.446213, 22.067364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514866, 18.534157, 21.683922>,  <32.558292, 18.586924, 21.453857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514866, 18.534157, 21.683922>,  <32.442490, 18.446213, 22.067364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514866, 18.534157, 21.683922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023839, 0.973426, 0.227759,
		0.983205, -0.064063, 0.170890,
		0.180939, 0.219860, -0.958604,
		32.569149, 18.600115, 21.396341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989323, 18.978373, 22.163887>,  <32.442490, 18.446213, 22.067364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989323, 18.978373, 22.163887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824345, 19.034309, 21.803814>,  <32.725357, 19.067871, 21.587769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824345, 19.034309, 21.803814>,  <32.989323, 18.978373, 22.163887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824345, 19.034309, 21.803814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121475, 0.987766, 0.097790,
		0.902847, -0.069017, -0.424387,
		-0.412445, 0.139842, -0.900185,
		32.700611, 19.076262, 21.533758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346012, 19.550558, 21.881117>,  <32.989323, 18.978373, 22.163887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346012, 19.550558, 21.881117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009171, 19.541714, 21.665573>,  <32.807064, 19.536407, 21.536247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009171, 19.541714, 21.665573>,  <33.346012, 19.550558, 21.881117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009171, 19.541714, 21.665573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079853, 0.993258, 0.084033,
		0.533369, 0.113794, -0.838193,
		-0.842105, -0.022111, -0.538860,
		32.756538, 19.535080, 21.503916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416565, 19.999653, 21.343218>,  <33.346012, 19.550558, 21.881117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416565, 19.999653, 21.343218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017540, 19.994209, 21.370567>,  <32.778126, 19.990944, 21.386978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017540, 19.994209, 21.370567>,  <33.416565, 19.999653, 21.343218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017540, 19.994209, 21.370567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022750, 0.990619, -0.134744,
		-0.065900, -0.135972, -0.988519,
		-0.997567, -0.013609, 0.068375,
		32.718269, 19.990126, 21.391079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156448, 20.609303, 20.909380>,  <33.416565, 19.999653, 21.343218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156448, 20.609303, 20.909380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850830, 20.504780, 21.145329>,  <32.667458, 20.442066, 21.286898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850830, 20.504780, 21.145329>,  <33.156448, 20.609303, 20.909380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850830, 20.504780, 21.145329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172526, 0.963762, 0.203467,
		-0.621664, 0.053690, -0.781442,
		-0.764048, -0.261307, 0.589873,
		32.621616, 20.426388, 21.322290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629803, 21.217531, 20.789370>,  <33.156448, 20.609303, 20.909380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629803, 21.217531, 20.789370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480026, 21.046314, 21.118385>,  <32.390160, 20.943584, 21.315796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480026, 21.046314, 21.118385>,  <32.629803, 21.217531, 20.789370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480026, 21.046314, 21.118385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301208, 0.895117, 0.328692,
		-0.876965, -0.124681, -0.464099,
		-0.374441, -0.428041, 0.822541,
		32.367695, 20.917902, 21.365149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981623, 21.510962, 20.893297>,  <32.629803, 21.217531, 20.789370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981623, 21.510962, 20.893297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086807, 21.351849, 21.244892>,  <32.149918, 21.256380, 21.455849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086807, 21.351849, 21.244892>,  <31.981623, 21.510962, 20.893297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086807, 21.351849, 21.244892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266443, 0.845681, 0.462420,
		-0.927286, -0.355798, 0.116393,
		0.262960, -0.397784, 0.878988,
		32.165695, 21.232513, 21.508589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450054, 21.686359, 21.389174>,  <31.981623, 21.510962, 20.893297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450054, 21.686359, 21.389174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749262, 21.591526, 21.637127>,  <31.928787, 21.534626, 21.785900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749262, 21.591526, 21.637127>,  <31.450054, 21.686359, 21.389174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749262, 21.591526, 21.637127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165740, 0.837693, 0.520384,
		-0.642648, -0.491998, 0.587318,
		0.748021, -0.237082, 0.619885,
		31.973667, 21.520401, 21.823093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249876, 21.675287, 22.094358>,  <31.450054, 21.686359, 21.389174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249876, 21.675287, 22.094358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637705, 21.772743, 22.103893>,  <31.870401, 21.831217, 22.109613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637705, 21.772743, 22.103893>,  <31.249876, 21.675287, 22.094358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637705, 21.772743, 22.103893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225108, 0.849065, 0.477928,
		0.096205, -0.468751, 0.878076,
		0.969573, 0.243641, 0.023835,
		31.928577, 21.845835, 22.111044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351925, 21.759033, 22.815037>,  <31.249876, 21.675287, 22.094358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351925, 21.759033, 22.815037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676355, 21.915390, 22.640976>,  <31.871014, 22.009205, 22.536539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676355, 21.915390, 22.640976>,  <31.351925, 21.759033, 22.815037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676355, 21.915390, 22.640976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097751, 0.824042, 0.558031,
		0.576712, -0.410071, 0.706573,
		0.811078, 0.390892, -0.435150,
		31.919680, 22.032658, 22.510431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837593, 21.797806, 23.371866>,  <31.351925, 21.759033, 22.815037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837593, 21.797806, 23.371866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943029, 22.064182, 23.092712>,  <32.006290, 22.224009, 22.925220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943029, 22.064182, 23.092712>,  <31.837593, 21.797806, 23.371866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943029, 22.064182, 23.092712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093820, 0.737740, 0.668533,
		0.960062, -0.110742, 0.256939,
		0.263589, 0.665939, -0.697887,
		32.022106, 22.263964, 22.883347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335468, 22.244537, 23.667587>,  <31.837593, 21.797806, 23.371866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335468, 22.244537, 23.667587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198563, 22.454517, 23.355873>,  <32.116421, 22.580505, 23.168844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198563, 22.454517, 23.355873>,  <32.335468, 22.244537, 23.667587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198563, 22.454517, 23.355873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032891, 0.822172, 0.568287,
		0.939029, 0.220134, -0.264131,
		-0.342260, 0.524951, -0.779285,
		32.095886, 22.612003, 23.122087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617153, 22.992163, 23.709803>,  <32.335468, 22.244537, 23.667587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617153, 22.992163, 23.709803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324585, 23.049423, 23.443111>,  <32.149044, 23.083778, 23.283096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324585, 23.049423, 23.443111>,  <32.617153, 22.992163, 23.709803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324585, 23.049423, 23.443111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212804, 0.880977, 0.422603,
		0.647869, 0.450985, -0.613904,
		-0.731423, 0.143150, -0.666729,
		32.105160, 23.092369, 23.243093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672512, 23.624315, 23.505297>,  <32.617153, 22.992163, 23.709803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672512, 23.624315, 23.505297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295944, 23.545078, 23.396126>,  <32.070004, 23.497536, 23.330624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295944, 23.545078, 23.396126>,  <32.672512, 23.624315, 23.505297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295944, 23.545078, 23.396126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269619, 0.928236, 0.256290,
		0.202572, 0.314863, -0.927268,
		-0.941419, -0.198092, -0.272927,
		32.013519, 23.485651, 23.314247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448647, 24.049410, 22.814831>,  <32.672512, 23.624315, 23.505297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448647, 24.049410, 22.814831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136978, 23.970608, 23.052853>,  <31.949978, 23.923326, 23.195665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136978, 23.970608, 23.052853>,  <32.448647, 24.049410, 22.814831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136978, 23.970608, 23.052853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069826, 0.970697, 0.229937,
		-0.622915, 0.137609, -0.770092,
		-0.779167, -0.197004, 0.595053,
		31.903229, 23.911507, 23.231369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029034, 24.562141, 22.673395>,  <32.448647, 24.049410, 22.814831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029034, 24.562141, 22.673395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878641, 24.423450, 23.017120>,  <31.788404, 24.340237, 23.223354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878641, 24.423450, 23.017120>,  <32.029034, 24.562141, 22.673395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878641, 24.423450, 23.017120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117021, 0.937697, 0.327155,
		-0.919207, 0.022447, -0.393134,
		-0.375984, -0.346728, 0.859311,
		31.765846, 24.319431, 23.274914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463001, 24.947424, 22.685671>,  <32.029034, 24.562141, 22.673395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463001, 24.947424, 22.685671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495163, 24.831524, 23.067158>,  <31.514460, 24.761984, 23.296051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495163, 24.831524, 23.067158>,  <31.463001, 24.947424, 22.685671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495163, 24.831524, 23.067158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171993, 0.938432, 0.299606,
		-0.981811, -0.188123, 0.025619,
		0.080405, -0.289750, 0.953719,
		31.519285, 24.744598, 23.353273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943134, 25.168562, 23.093761>,  <31.463001, 24.947424, 22.685671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943134, 25.168562, 23.093761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212864, 25.112122, 23.383694>,  <31.374701, 25.078257, 23.557653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212864, 25.112122, 23.383694>,  <30.943134, 25.168562, 23.093761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212864, 25.112122, 23.383694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099553, 0.955242, 0.278572,
		-0.731696, -0.260007, 0.630093,
		0.674322, -0.141103, 0.724831,
		31.415161, 25.069792, 23.601143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700630, 25.517202, 23.611692>,  <30.943134, 25.168562, 23.093761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700630, 25.517202, 23.611692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069332, 25.458447, 23.755241>,  <31.290554, 25.423193, 23.841370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069332, 25.458447, 23.755241>,  <30.700630, 25.517202, 23.611692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069332, 25.458447, 23.755241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015276, 0.938513, 0.344906,
		-0.387468, -0.312437, 0.867324,
		0.921756, -0.146889, 0.358871,
		31.345860, 25.414379, 23.862904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827261, 25.812412, 24.329060>,  <30.700630, 25.517202, 23.611692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827261, 25.812412, 24.329060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194481, 25.793755, 24.171577>,  <31.414814, 25.782560, 24.077087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194481, 25.793755, 24.171577>,  <30.827261, 25.812412, 24.329060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194481, 25.793755, 24.171577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197586, 0.914770, 0.352356,
		0.343715, -0.401272, 0.849023,
		0.918052, -0.046645, -0.393707,
		31.469896, 25.779760, 24.053465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233408, 26.233099, 24.768888>,  <30.827261, 25.812412, 24.329060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233408, 26.233099, 24.768888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491049, 26.222134, 24.463108>,  <31.645634, 26.215555, 24.279640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491049, 26.222134, 24.463108>,  <31.233408, 26.233099, 24.768888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491049, 26.222134, 24.463108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362139, 0.891198, 0.273169,
		0.673787, -0.452785, 0.583950,
		0.644101, -0.027413, -0.764448,
		31.684278, 26.213909, 24.233774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817709, 26.592701, 24.993608>,  <31.233408, 26.233099, 24.768888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817709, 26.592701, 24.993608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906794, 26.588558, 24.603676>,  <31.960243, 26.586073, 24.369717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906794, 26.588558, 24.603676>,  <31.817709, 26.592701, 24.993608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906794, 26.588558, 24.603676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304804, 0.950552, 0.059536,
		0.926010, -0.310391, 0.214855,
		0.222710, -0.010358, -0.974830,
		31.973606, 26.585451, 24.311228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449444, 26.823380, 24.922628>,  <31.817709, 26.592701, 24.993608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449444, 26.823380, 24.922628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311401, 26.887978, 24.552803>,  <32.228577, 26.926737, 24.330908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311401, 26.887978, 24.552803>,  <32.449444, 26.823380, 24.922628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311401, 26.887978, 24.552803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411612, 0.911342, 0.005542,
		0.843489, -0.378649, -0.380985,
		-0.345109, 0.161493, -0.924564,
		32.207867, 26.936426, 24.275434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985989, 27.280958, 24.607050>,  <32.449444, 26.823380, 24.922628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985989, 27.280958, 24.607050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677807, 27.335178, 24.357883>,  <32.492897, 27.367710, 24.208384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677807, 27.335178, 24.357883>,  <32.985989, 27.280958, 24.607050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677807, 27.335178, 24.357883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265147, 0.956742, -0.119757,
		0.579736, -0.257431, -0.773069,
		-0.770456, 0.135549, -0.622915,
		32.446671, 27.375843, 24.171009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213882, 27.637266, 23.944592>,  <32.985989, 27.280958, 24.607050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213882, 27.637266, 23.944592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818684, 27.691078, 23.974953>,  <32.581566, 27.723366, 23.993170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818684, 27.691078, 23.974953>,  <33.213882, 27.637266, 23.944592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818684, 27.691078, 23.974953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117742, 0.973972, -0.193687,
		-0.099982, -0.182425, -0.978123,
		-0.987998, 0.134531, 0.075901,
		32.522285, 27.731438, 23.997723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145340, 28.133152, 23.471121>,  <33.213882, 27.637266, 23.944592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145340, 28.133152, 23.471121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800793, 28.157536, 23.672844>,  <32.594063, 28.172167, 23.793879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800793, 28.157536, 23.672844>,  <33.145340, 28.133152, 23.471121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800793, 28.157536, 23.672844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076930, 0.996977, 0.010886,
		-0.502120, 0.048173, -0.863455,
		-0.861370, 0.060960, 0.504308,
		32.542381, 28.175823, 23.824137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745155, 28.673977, 23.085833>,  <33.145340, 28.133152, 23.471121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745155, 28.673977, 23.085833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628201, 28.632931, 23.466145>,  <32.558029, 28.608303, 23.694332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628201, 28.632931, 23.466145>,  <32.745155, 28.673977, 23.085833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628201, 28.632931, 23.466145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032982, 0.992553, 0.117265,
		-0.955731, 0.065645, -0.286826,
		-0.292388, -0.102613, 0.950779,
		32.540485, 28.602146, 23.751379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039757, 29.041410, 23.166054>,  <32.745155, 28.673977, 23.085833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039757, 29.041410, 23.166054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213043, 29.027321, 23.526295>,  <32.317017, 29.018867, 23.742439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213043, 29.027321, 23.526295>,  <32.039757, 29.041410, 23.166054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213043, 29.027321, 23.526295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059620, 0.995927, 0.067630,
		-0.899316, -0.082992, 0.429351,
		0.433215, -0.035223, 0.900602,
		32.343006, 29.016754, 23.796474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697727, 29.522949, 23.593115>,  <32.039757, 29.041410, 23.166054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697727, 29.522949, 23.593115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021339, 29.457714, 23.818989>,  <32.215508, 29.418573, 23.954514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021339, 29.457714, 23.818989>,  <31.697727, 29.522949, 23.593115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021339, 29.457714, 23.818989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026687, 0.969935, 0.241897,
		-0.587159, -0.180632, 0.789060,
		0.809031, -0.163090, 0.564685,
		32.264050, 29.408787, 23.988394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518019, 29.764738, 24.241444>,  <31.697727, 29.522949, 23.593115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518019, 29.764738, 24.241444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917696, 29.748802, 24.239391>,  <32.157501, 29.739241, 24.238159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917696, 29.748802, 24.239391>,  <31.518019, 29.764738, 24.241444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917696, 29.748802, 24.239391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040002, 0.975213, 0.217623,
		-0.003666, -0.217653, 0.976020,
		0.999193, -0.039840, -0.005131,
		32.217453, 29.736851, 24.237852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734688, 30.129253, 24.789223>,  <31.518019, 29.764738, 24.241444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734688, 30.129253, 24.789223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051781, 30.121544, 24.545517>,  <32.242039, 30.116919, 24.399294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051781, 30.121544, 24.545517>,  <31.734688, 30.129253, 24.789223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051781, 30.121544, 24.545517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169773, 0.966933, 0.190310,
		0.585448, -0.254301, 0.769793,
		0.792734, -0.019274, -0.609263,
		32.289600, 30.115761, 24.362738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294277, 30.428196, 25.116158>,  <31.734688, 30.129253, 24.789223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294277, 30.428196, 25.116158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362080, 30.461403, 24.723347>,  <32.402760, 30.481327, 24.487659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362080, 30.461403, 24.723347>,  <32.294277, 30.428196, 25.116158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362080, 30.461403, 24.723347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189348, 0.975139, 0.115117,
		0.967169, -0.205458, 0.149573,
		0.169506, 0.083016, -0.982027,
		32.412930, 30.486307, 24.428740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829666, 30.906912, 25.117308>,  <32.294277, 30.428196, 25.116158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829666, 30.906912, 25.117308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730762, 30.904438, 24.729736>,  <32.671421, 30.902954, 24.497192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730762, 30.904438, 24.729736>,  <32.829666, 30.906912, 25.117308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730762, 30.904438, 24.729736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334533, 0.937946, -0.091357,
		0.909369, -0.346727, -0.229845,
		-0.247258, -0.006187, -0.968930,
		32.656586, 30.902582, 24.439056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383648, 31.274029, 24.734415>,  <32.829666, 30.906912, 25.117308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383648, 31.274029, 24.734415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074936, 31.272972, 24.480061>,  <32.889709, 31.272339, 24.327448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074936, 31.272972, 24.480061>,  <33.383648, 31.274029, 24.734415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074936, 31.272972, 24.480061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201138, 0.947634, -0.248059,
		0.603241, -0.319347, -0.730833,
		-0.771779, -0.002641, -0.635885,
		32.843403, 31.272181, 24.289295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619701, 31.499083, 23.989027>,  <33.383648, 31.274029, 24.734415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619701, 31.499083, 23.989027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229424, 31.575104, 24.032665>,  <32.995258, 31.620716, 24.058847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229424, 31.575104, 24.032665>,  <33.619701, 31.499083, 23.989027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229424, 31.575104, 24.032665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150436, 0.942898, -0.297174,
		-0.159345, -0.273538, -0.948571,
		-0.975694, 0.190053, 0.109096,
		32.936714, 31.632120, 24.065393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427265, 31.994513, 23.455566>,  <33.619701, 31.499083, 23.989027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427265, 31.994513, 23.455566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101139, 32.017002, 23.686077>,  <32.905464, 32.030495, 23.824385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101139, 32.017002, 23.686077>,  <33.427265, 31.994513, 23.455566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101139, 32.017002, 23.686077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056542, 0.982787, -0.175879,
		-0.576247, -0.175981, -0.798104,
		-0.815317, 0.056223, 0.576279,
		32.856544, 32.033871, 23.858961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885849, 32.387920, 23.062359>,  <33.427265, 31.994513, 23.455566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885849, 32.387920, 23.062359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760334, 32.396843, 23.442051>,  <32.685024, 32.402195, 23.669867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760334, 32.396843, 23.442051>,  <32.885849, 32.387920, 23.062359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760334, 32.396843, 23.442051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382294, 0.912143, -0.147808,
		-0.869131, -0.409266, -0.277692,
		-0.313788, 0.022304, 0.949231,
		32.666199, 32.403534, 23.726820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177925, 32.601501, 23.058273>,  <32.885849, 32.387920, 23.062359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177925, 32.601501, 23.058273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295486, 32.663990, 23.435467>,  <32.366024, 32.701485, 23.661783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295486, 32.663990, 23.435467>,  <32.177925, 32.601501, 23.058273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295486, 32.663990, 23.435467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371453, 0.927678, -0.037914,
		-0.880706, -0.339130, 0.330679,
		0.293906, 0.156223, 0.942981,
		32.383659, 32.710857, 23.718361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608946, 32.983437, 23.405191>,  <32.177925, 32.601501, 23.058273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608946, 32.983437, 23.405191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917521, 33.040672, 23.653194>,  <32.102665, 33.075016, 23.801996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917521, 33.040672, 23.653194>,  <31.608946, 32.983437, 23.405191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917521, 33.040672, 23.653194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180924, 0.983495, -0.001870,
		-0.610043, -0.110731, 0.784593,
		0.771437, 0.143092, 0.620008,
		32.148952, 33.083599, 23.839197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343493, 33.305244, 24.085711>,  <31.608946, 32.983437, 23.405191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343493, 33.305244, 24.085711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720924, 33.409660, 24.004208>,  <31.947384, 33.472309, 23.955307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720924, 33.409660, 24.004208>,  <31.343493, 33.305244, 24.085711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720924, 33.409660, 24.004208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245728, 0.964411, 0.097616,
		0.221987, -0.042040, 0.974143,
		0.943578, 0.261044, -0.203756,
		32.003998, 33.487972, 23.943081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631170, 33.499542, 23.894020>,  <31.343493, 33.305244, 24.085711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631170, 33.499542, 23.894020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233461, 33.515957, 23.854546>,  <29.994837, 33.525806, 23.830862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233461, 33.515957, 23.854546>,  <30.631170, 33.499542, 23.894020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233461, 33.515957, 23.854546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004020, -0.908355, -0.418181,
		-0.106800, -0.416182, 0.902987,
		-0.994272, 0.041032, -0.098685,
		29.935179, 33.528267, 23.824940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292589, 32.949272, 24.290096>,  <30.631170, 33.499542, 23.894020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292589, 32.949272, 24.290096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057421, 33.062382, 23.986942>,  <29.916321, 33.130249, 23.805050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057421, 33.062382, 23.986942>,  <30.292589, 32.949272, 24.290096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057421, 33.062382, 23.986942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089413, -0.953887, -0.286541,
		-0.803962, -0.100698, 0.586093,
		-0.587921, 0.282772, -0.757885,
		29.881044, 33.147213, 23.759577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538250, 32.736485, 24.387463>,  <30.292589, 32.949272, 24.290096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538250, 32.736485, 24.387463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607355, 32.797733, 23.998268>,  <29.648819, 32.834484, 23.764751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607355, 32.797733, 23.998268>,  <29.538250, 32.736485, 24.387463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607355, 32.797733, 23.998268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332296, -0.920867, -0.203922,
		-0.927217, 0.358550, -0.108211,
		0.172764, 0.153122, -0.972988,
		29.659184, 32.843670, 23.706371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016172, 32.386837, 24.085579>,  <29.538250, 32.736485, 24.387463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016172, 32.386837, 24.085579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278482, 32.440815, 23.788460>,  <29.435869, 32.473202, 23.610188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278482, 32.440815, 23.788460>,  <29.016172, 32.386837, 24.085579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278482, 32.440815, 23.788460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239100, -0.896124, -0.373888,
		-0.716093, 0.422789, -0.555391,
		0.655775, 0.134944, -0.742798,
		29.475216, 32.481297, 23.565620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691528, 32.136955, 23.466370>,  <29.016172, 32.386837, 24.085579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691528, 32.136955, 23.466370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069107, 32.135422, 23.334339>,  <29.295654, 32.134502, 23.255121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069107, 32.135422, 23.334339>,  <28.691528, 32.136955, 23.466370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069107, 32.135422, 23.334339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133145, -0.919408, -0.370084,
		-0.302054, 0.393287, -0.868383,
		0.943947, -0.003836, -0.330075,
		29.352291, 32.134270, 23.235317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815327, 32.000057, 22.725859>,  <28.691528, 32.136955, 23.466370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815327, 32.000057, 22.725859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158808, 31.887024, 22.896866>,  <29.364897, 31.819202, 22.999470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158808, 31.887024, 22.896866>,  <28.815327, 32.000057, 22.725859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158808, 31.887024, 22.896866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068555, -0.890073, -0.450634,
		0.507865, 0.357653, -0.783682,
		0.858704, -0.282587, 0.427518,
		29.416418, 31.802248, 23.025122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167068, 31.694353, 22.211531>,  <28.815327, 32.000057, 22.725859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167068, 31.694353, 22.211531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358345, 31.562595, 22.537189>,  <29.473110, 31.483540, 22.732584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358345, 31.562595, 22.537189>,  <29.167068, 31.694353, 22.211531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358345, 31.562595, 22.537189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059415, -0.912745, -0.404186,
		0.876244, 0.241651, -0.416895,
		0.478190, -0.329396, 0.814145,
		29.501802, 31.463778, 22.781433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616693, 31.164865, 22.010294>,  <29.167068, 31.694353, 22.211531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616693, 31.164865, 22.010294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585077, 31.101315, 22.403946>,  <29.566107, 31.063185, 22.640137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585077, 31.101315, 22.403946>,  <29.616693, 31.164865, 22.010294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585077, 31.101315, 22.403946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040821, -0.985874, -0.162436,
		0.996035, -0.053012, 0.071440,
		-0.079042, -0.158876, 0.984129,
		29.561365, 31.053652, 22.699184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079746, 30.646751, 22.133369>,  <29.616693, 31.164865, 22.010294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079746, 30.646751, 22.133369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820436, 30.633869, 22.437660>,  <29.664850, 30.626141, 22.620235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820436, 30.633869, 22.437660>,  <30.079746, 30.646751, 22.133369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820436, 30.633869, 22.437660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283438, -0.917092, -0.280365,
		0.706686, -0.397372, 0.585398,
		-0.648273, -0.032206, 0.760727,
		29.625954, 30.624207, 22.665878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113007, 29.942093, 22.406948>,  <30.079746, 30.646751, 22.133369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113007, 29.942093, 22.406948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787632, 30.071186, 22.600510>,  <29.592407, 30.148642, 22.716646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787632, 30.071186, 22.600510>,  <30.113007, 29.942093, 22.406948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787632, 30.071186, 22.600510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311778, -0.944261, 0.105669,
		0.491036, -0.064916, 0.868717,
		-0.813436, 0.322734, 0.483905,
		29.543602, 30.168007, 22.745682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353115, 29.686195, 23.121775>,  <30.113007, 29.942093, 22.406948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353115, 29.686195, 23.121775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963081, 29.754898, 23.065620>,  <29.729061, 29.796120, 23.031927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963081, 29.754898, 23.065620>,  <30.353115, 29.686195, 23.121775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963081, 29.754898, 23.065620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202828, -0.946577, 0.250705,
		-0.089825, 0.272932, 0.957830,
		-0.975086, 0.171755, -0.140385,
		29.670555, 29.806425, 23.023504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981289, 29.322001, 23.704477>,  <30.353115, 29.686195, 23.121775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981289, 29.322001, 23.704477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699759, 29.370041, 23.424419>,  <29.530840, 29.398865, 23.256384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699759, 29.370041, 23.424419>,  <29.981289, 29.322001, 23.704477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699759, 29.370041, 23.424419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193822, -0.980676, 0.026617,
		-0.683418, 0.154437, 0.713504,
		-0.703827, 0.120103, -0.700145,
		29.488611, 29.406073, 23.214376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432430, 28.824646, 23.844896>,  <29.981289, 29.322001, 23.704477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432430, 28.824646, 23.844896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350206, 28.889584, 23.458862>,  <29.300871, 28.928547, 23.227242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350206, 28.889584, 23.458862>,  <29.432430, 28.824646, 23.844896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350206, 28.889584, 23.458862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296079, -0.950248, -0.096784,
		-0.932782, 0.265845, 0.243402,
		-0.205562, 0.162344, -0.965085,
		29.288538, 28.938288, 23.169336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725946, 28.670170, 23.794249>,  <29.432430, 28.824646, 23.844896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725946, 28.670170, 23.794249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882481, 28.632504, 23.428082>,  <28.976402, 28.609903, 23.208382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882481, 28.632504, 23.428082>,  <28.725946, 28.670170, 23.794249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882481, 28.632504, 23.428082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317972, -0.947319, -0.038484,
		-0.863567, 0.306137, -0.400664,
		0.391338, -0.094166, -0.915417,
		28.999882, 28.604254, 23.153456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204882, 28.289707, 23.385431>,  <28.725946, 28.670170, 23.794249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204882, 28.289707, 23.385431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555189, 28.247547, 23.196999>,  <28.765373, 28.222252, 23.083939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555189, 28.247547, 23.196999>,  <28.204882, 28.289707, 23.385431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555189, 28.247547, 23.196999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209498, -0.962168, -0.174193,
		-0.434901, 0.251244, -0.864718,
		0.875769, -0.105400, -0.471083,
		28.817921, 28.215927, 23.055674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066296, 27.824358, 22.797323>,  <28.204882, 28.289707, 23.385431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066296, 27.824358, 22.797323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463076, 27.796684, 22.839741>,  <28.701143, 27.780081, 22.865192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463076, 27.796684, 22.839741>,  <28.066296, 27.824358, 22.797323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463076, 27.796684, 22.839741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057562, -0.992376, -0.108982,
		0.112776, 0.102001, -0.988371,
		0.991951, -0.069183, 0.106045,
		28.760662, 27.775928, 22.871553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244471, 27.292074, 22.335602>,  <28.066296, 27.824358, 22.797323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244471, 27.292074, 22.335602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549990, 27.328838, 22.591152>,  <28.733301, 27.350897, 22.744482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549990, 27.328838, 22.591152>,  <28.244471, 27.292074, 22.335602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549990, 27.328838, 22.591152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094975, -0.995039, 0.029603,
		0.638429, 0.038067, -0.768738,
		0.763798, 0.091910, 0.638878,
		28.779129, 27.356411, 22.782816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748499, 26.809618, 22.071634>,  <28.244471, 27.292074, 22.335602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748499, 26.809618, 22.071634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882603, 26.888714, 22.440090>,  <28.963064, 26.936172, 22.661163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882603, 26.888714, 22.440090>,  <28.748499, 26.809618, 22.071634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882603, 26.888714, 22.440090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202936, -0.969931, 0.134353,
		0.920010, 0.141890, -0.365307,
		0.335260, 0.197740, 0.921140,
		28.983181, 26.948036, 22.716433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403757, 26.521427, 22.106833>,  <28.748499, 26.809618, 22.071634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403757, 26.521427, 22.106833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262579, 26.548130, 22.480137>,  <29.177872, 26.564152, 22.704119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262579, 26.548130, 22.480137>,  <29.403757, 26.521427, 22.106833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262579, 26.548130, 22.480137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181374, -0.973650, 0.138238,
		0.917896, 0.218059, 0.331538,
		-0.352946, 0.066756, 0.933259,
		29.156694, 26.568157, 22.760115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898087, 26.100145, 22.567717>,  <29.403757, 26.521427, 22.106833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898087, 26.100145, 22.567717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603937, 26.148369, 22.834457>,  <29.427448, 26.177303, 22.994503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.603937, 26.148369, 22.834457>,  <29.898087, 26.100145, 22.567717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603937, 26.148369, 22.834457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088780, -0.958428, 0.271173,
		0.671823, 0.258616, 0.694098,
		-0.735372, 0.120558, 0.666854,
		29.383326, 26.184536, 23.034513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151903, 25.905205, 23.248470>,  <29.898087, 26.100145, 22.567717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151903, 25.905205, 23.248470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756550, 25.855293, 23.213768>,  <29.519337, 25.825346, 23.192947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756550, 25.855293, 23.213768>,  <30.151903, 25.905205, 23.248470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756550, 25.855293, 23.213768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118979, -0.990489, 0.069110,
		-0.094553, 0.057985, 0.993830,
		-0.988384, -0.124779, -0.086754,
		29.460035, 25.817860, 23.187742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937319, 25.387980, 23.772331>,  <30.151903, 25.905205, 23.248470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937319, 25.387980, 23.772331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696962, 25.413380, 23.453609>,  <29.552748, 25.428619, 23.262377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696962, 25.413380, 23.453609>,  <29.937319, 25.387980, 23.772331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696962, 25.413380, 23.453609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009622, -0.997342, -0.072229,
		-0.799271, -0.035735, 0.599907,
		-0.600893, 0.063502, -0.796803,
		29.516695, 25.432430, 23.214569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284994, 24.961138, 23.883924>,  <29.937319, 25.387980, 23.772331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284994, 24.961138, 23.883924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.313368, 25.000565, 23.486885>,  <29.330391, 25.024220, 23.248661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.313368, 25.000565, 23.486885>,  <29.284994, 24.961138, 23.883924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313368, 25.000565, 23.486885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158908, -0.981280, -0.108797,
		-0.984742, 0.165449, -0.053942,
		0.070933, 0.098565, -0.992599,
		29.334648, 25.030134, 23.189106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.652409, 24.512484, 23.557785>,  <29.284994, 24.961138, 23.883924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.652409, 24.512484, 23.557785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956041, 24.587006, 23.308277>,  <29.138220, 24.631720, 23.158573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956041, 24.587006, 23.308277>,  <28.652409, 24.512484, 23.557785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956041, 24.587006, 23.308277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034690, -0.968389, -0.247021,
		-0.650072, 0.165870, -0.741548,
		0.759081, 0.186306, -0.623768,
		29.183765, 24.642897, 23.121147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436148, 24.150301, 22.963585>,  <28.652409, 24.512484, 23.557785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436148, 24.150301, 22.963585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828558, 24.204956, 22.908569>,  <29.064005, 24.237749, 22.875559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828558, 24.204956, 22.908569>,  <28.436148, 24.150301, 22.963585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828558, 24.204956, 22.908569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072594, -0.916704, -0.392916,
		-0.179773, 0.375477, -0.909230,
		0.981026, 0.136640, -0.137541,
		29.122866, 24.245949, 22.867308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551600, 23.872360, 22.406908>,  <28.436148, 24.150301, 22.963585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551600, 23.872360, 22.406908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943213, 23.864006, 22.487961>,  <29.178181, 23.858994, 22.536592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943213, 23.864006, 22.487961>,  <28.551600, 23.872360, 22.406908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943213, 23.864006, 22.487961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068887, -0.902176, -0.425831,
		0.191704, 0.430861, -0.881821,
		0.979032, -0.020887, 0.202631,
		29.236921, 23.857740, 22.548750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859676, 23.584822, 21.848873>,  <28.551600, 23.872360, 22.406908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859676, 23.584822, 21.848873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129999, 23.538898, 22.140106>,  <29.292192, 23.511345, 22.314846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129999, 23.538898, 22.140106>,  <28.859676, 23.584822, 21.848873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129999, 23.538898, 22.140106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368995, -0.802404, -0.469032,
		0.638063, 0.585634, -0.499908,
		0.675809, -0.114808, 0.728080,
		29.332743, 23.504456, 22.358530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439878, 23.394846, 21.503145>,  <28.859676, 23.584822, 21.848873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439878, 23.394846, 21.503145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451059, 23.262924, 21.880600>,  <29.457767, 23.183771, 22.107073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451059, 23.262924, 21.880600>,  <29.439878, 23.394846, 21.503145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451059, 23.262924, 21.880600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209397, -0.921127, -0.328142,
		0.977431, 0.206767, 0.043312,
		0.027953, -0.329806, 0.943635,
		29.459446, 23.163982, 22.163691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031767, 22.896347, 21.547523>,  <29.439878, 23.394846, 21.503145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031767, 22.896347, 21.547523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803576, 22.799427, 21.861427>,  <29.666660, 22.741276, 22.049770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803576, 22.799427, 21.861427>,  <30.031767, 22.896347, 21.547523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803576, 22.799427, 21.861427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240380, -0.962910, -0.122563,
		0.785350, 0.118721, 0.607562,
		-0.570477, -0.242300, 0.784760,
		29.632433, 22.726736, 22.096855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400557, 22.378252, 21.922638>,  <30.031767, 22.896347, 21.547523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400557, 22.378252, 21.922638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022753, 22.349869, 22.050930>,  <29.796070, 22.332838, 22.127905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022753, 22.349869, 22.050930>,  <30.400557, 22.378252, 21.922638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022753, 22.349869, 22.050930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042844, -0.994660, -0.093889,
		0.325681, -0.074937, 0.942505,
		-0.944508, -0.070959, 0.320731,
		29.739401, 22.328581, 22.147150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495409, 21.925907, 22.408876>,  <30.400557, 22.378252, 21.922638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495409, 21.925907, 22.408876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112667, 21.916340, 22.293041>,  <29.883022, 21.910599, 22.223541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112667, 21.916340, 22.293041>,  <30.495409, 21.925907, 22.408876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112667, 21.916340, 22.293041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025327, -0.999679, -0.001114,
		-0.289466, -0.008400, 0.957151,
		-0.956853, -0.023920, -0.289586,
		29.825611, 21.909164, 22.206165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267382, 21.410847, 22.761276>,  <30.495409, 21.925907, 22.408876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267382, 21.410847, 22.761276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998074, 21.460316, 22.469685>,  <29.836489, 21.489998, 22.294729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998074, 21.460316, 22.469685>,  <30.267382, 21.410847, 22.761276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998074, 21.460316, 22.469685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158319, -0.987159, -0.021254,
		-0.722247, 0.101101, 0.684206,
		-0.673272, 0.123673, -0.728979,
		29.796093, 21.497417, 22.250992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745846, 20.995596, 22.972912>,  <30.267382, 21.410847, 22.761276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745846, 20.995596, 22.972912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747835, 21.042599, 22.575687>,  <29.749029, 21.070801, 22.337353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747835, 21.042599, 22.575687>,  <29.745846, 20.995596, 22.972912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747835, 21.042599, 22.575687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188523, -0.975155, -0.116333,
		-0.982056, 0.187793, 0.017301,
		0.004976, 0.117507, -0.993060,
		29.749329, 21.077850, 22.277769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272964, 20.501732, 22.769850>,  <29.745846, 20.995596, 22.972912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272964, 20.501732, 22.769850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451841, 20.587502, 22.422508>,  <29.559168, 20.638964, 22.214104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451841, 20.587502, 22.422508>,  <29.272964, 20.501732, 22.769850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451841, 20.587502, 22.422508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200363, -0.922153, -0.330892,
		-0.871708, 0.321959, -0.369417,
		0.447192, 0.214424, -0.868356,
		29.585999, 20.651829, 22.162001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895300, 20.170742, 22.216757>,  <29.272964, 20.501732, 22.769850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895300, 20.170742, 22.216757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252071, 20.216892, 22.041874>,  <29.466135, 20.244583, 21.936943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252071, 20.216892, 22.041874>,  <28.895300, 20.170742, 22.216757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252071, 20.216892, 22.041874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177024, -0.800625, -0.572418,
		-0.416084, 0.587952, -0.693676,
		0.891928, 0.115376, -0.437209,
		29.519650, 20.251505, 21.910711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730413, 20.062273, 21.576660>,  <28.895300, 20.170742, 22.216757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730413, 20.062273, 21.576660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126478, 20.009544, 21.595432>,  <29.364117, 19.977907, 21.606695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126478, 20.009544, 21.595432>,  <28.730413, 20.062273, 21.576660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126478, 20.009544, 21.595432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098097, -0.893131, -0.438969,
		0.099780, 0.430047, -0.897275,
		0.990162, -0.131820, 0.046931,
		29.423527, 19.969997, 21.609512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857597, 19.802208, 20.975420>,  <28.730413, 20.062273, 21.576660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857597, 19.802208, 20.975420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196003, 19.722809, 21.173351>,  <29.399046, 19.675169, 21.292110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196003, 19.722809, 21.173351>,  <28.857597, 19.802208, 20.975420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196003, 19.722809, 21.173351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071198, -0.877734, -0.473828,
		0.528382, 0.436097, -0.728445,
		0.846016, -0.198499, 0.494828,
		29.449808, 19.663260, 21.321800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418291, 19.716904, 20.479258>,  <28.857597, 19.802208, 20.975420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418291, 19.716904, 20.479258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425783, 19.489777, 20.808434>,  <29.430279, 19.353500, 21.005939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425783, 19.489777, 20.808434>,  <29.418291, 19.716904, 20.479258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425783, 19.489777, 20.808434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269990, -0.789636, -0.550981,
		0.962681, 0.232506, 0.138515,
		0.018730, -0.567816, 0.822942,
		29.431402, 19.319431, 21.055317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671385, 19.251699, 19.960926>,  <29.418291, 19.716904, 20.479258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671385, 19.251699, 19.960926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439007, 19.379978, 19.661686>,  <29.299580, 19.456945, 19.482141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439007, 19.379978, 19.661686>,  <29.671385, 19.251699, 19.960926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439007, 19.379978, 19.661686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264022, 0.943659, 0.199500,
		0.769932, -0.081617, -0.632885,
		-0.580945, 0.320697, -0.748102,
		29.264723, 19.476187, 19.437256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953680, 19.800140, 19.784760>,  <29.671385, 19.251699, 19.960926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953680, 19.800140, 19.784760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606142, 19.860401, 19.596119>,  <29.397619, 19.896557, 19.482935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606142, 19.860401, 19.596119>,  <29.953680, 19.800140, 19.784760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606142, 19.860401, 19.596119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146988, 0.988121, 0.044847,
		0.472757, -0.030355, -0.880670,
		-0.868847, 0.150650, -0.471603,
		29.345488, 19.905596, 19.454638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058676, 20.398399, 19.514965>,  <29.953680, 19.800140, 19.784760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058676, 20.398399, 19.514965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662983, 20.358345, 19.472279>,  <29.425568, 20.334312, 19.446667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662983, 20.358345, 19.472279>,  <30.058676, 20.398399, 19.514965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662983, 20.358345, 19.472279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110543, 0.989172, 0.096540,
		0.095893, 0.107297, -0.989592,
		-0.989235, -0.100135, -0.106716,
		29.366213, 20.328304, 19.440264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831476, 20.719852, 18.892611>,  <30.058676, 20.398399, 19.514965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831476, 20.719852, 18.892611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501486, 20.726109, 19.118591>,  <29.303492, 20.729862, 19.254181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501486, 20.726109, 19.118591>,  <29.831476, 20.719852, 18.892611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501486, 20.726109, 19.118591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055615, 0.992519, -0.108691,
		-0.562426, -0.121087, -0.817933,
		-0.824975, 0.015641, 0.564953,
		29.253994, 20.730801, 19.288076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461807, 21.137615, 18.540888>,  <29.831476, 20.719852, 18.892611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461807, 21.137615, 18.540888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311106, 21.138824, 18.911411>,  <29.220686, 21.139549, 19.133726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311106, 21.138824, 18.911411>,  <29.461807, 21.137615, 18.540888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311106, 21.138824, 18.911411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195458, 0.977220, -0.082686,
		-0.905457, -0.212207, -0.367579,
		-0.376752, 0.003022, 0.926309,
		29.198080, 21.139730, 19.189304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709257, 21.409550, 18.471079>,  <29.461807, 21.137615, 18.540888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709257, 21.409550, 18.471079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849972, 21.474922, 18.839760>,  <28.934401, 21.514145, 19.060968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849972, 21.474922, 18.839760>,  <28.709257, 21.409550, 18.471079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849972, 21.474922, 18.839760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252638, 0.964679, -0.074626,
		-0.901343, -0.206604, 0.380651,
		0.351788, 0.163430, 0.921703,
		28.955509, 21.523951, 19.116270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132944, 21.866001, 18.752766>,  <28.709257, 21.409550, 18.471079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132944, 21.866001, 18.752766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427496, 21.898907, 19.021385>,  <28.604227, 21.918650, 19.182556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.427496, 21.898907, 19.021385>,  <28.132944, 21.866001, 18.752766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427496, 21.898907, 19.021385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140847, 0.989474, 0.033233,
		-0.661745, -0.119058, 0.740215,
		0.736380, 0.082266, 0.671548,
		28.648411, 21.923586, 19.222849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961002, 22.257528, 19.315958>,  <28.132944, 21.866001, 18.752766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961002, 22.257528, 19.315958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358839, 22.288918, 19.343182>,  <28.597540, 22.307751, 19.359516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358839, 22.288918, 19.343182>,  <27.961002, 22.257528, 19.315958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358839, 22.288918, 19.343182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066964, 0.985259, -0.157420,
		-0.079409, 0.152010, 0.985184,
		0.994590, 0.078473, 0.068059,
		28.657217, 22.312460, 19.363600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075220, 22.854784, 19.754120>,  <27.961002, 22.257528, 19.315958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075220, 22.854784, 19.754120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419153, 22.831684, 19.551201>,  <28.625513, 22.817823, 19.429449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419153, 22.831684, 19.551201>,  <28.075220, 22.854784, 19.754120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419153, 22.831684, 19.551201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014919, 0.990317, -0.138023,
		0.510356, 0.126245, 0.850646,
		0.859834, -0.057750, -0.507298,
		28.677103, 22.814360, 19.399012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550615, 23.350727, 20.036789>,  <28.075220, 22.854784, 19.754120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550615, 23.350727, 20.036789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692581, 23.311928, 19.664848>,  <28.777760, 23.288649, 19.441683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692581, 23.311928, 19.664848>,  <28.550615, 23.350727, 20.036789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692581, 23.311928, 19.664848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088312, 0.993634, -0.069943,
		0.930719, -0.057294, 0.361221,
		0.354914, -0.096997, -0.929854,
		28.799055, 23.282829, 19.385893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153854, 23.738037, 20.011494>,  <28.550615, 23.350727, 20.036789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153854, 23.738037, 20.011494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993963, 23.687107, 19.648396>,  <28.898027, 23.656549, 19.430536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993963, 23.687107, 19.648396>,  <29.153854, 23.738037, 20.011494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993963, 23.687107, 19.648396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026988, 0.988242, -0.150498,
		0.916236, -0.084656, -0.391594,
		-0.399730, -0.127323, -0.907747,
		28.874044, 23.648911, 19.376072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611284, 24.117693, 19.525757>,  <29.153854, 23.738037, 20.011494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611284, 24.117693, 19.525757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237366, 24.121460, 19.383736>,  <29.013014, 24.123720, 19.298523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237366, 24.121460, 19.383736>,  <29.611284, 24.117693, 19.525757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237366, 24.121460, 19.383736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062579, 0.979644, 0.190739,
		0.349623, 0.200521, -0.915181,
		-0.934798, 0.009416, -0.355055,
		28.956926, 24.124285, 19.277220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606285, 24.656374, 19.100159>,  <29.611284, 24.117693, 19.525757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606285, 24.656374, 19.100159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221142, 24.583622, 19.179985>,  <28.990057, 24.539970, 19.227880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221142, 24.583622, 19.179985>,  <29.606285, 24.656374, 19.100159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221142, 24.583622, 19.179985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168285, 0.982219, 0.083230,
		-0.211157, 0.046554, -0.976343,
		-0.962857, -0.181878, 0.199568,
		28.932285, 24.529058, 19.239855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194193, 25.057272, 18.637505>,  <29.606285, 24.656374, 19.100159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194193, 25.057272, 18.637505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019629, 24.984581, 18.989986>,  <28.914890, 24.940966, 19.201475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019629, 24.984581, 18.989986>,  <29.194193, 25.057272, 18.637505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019629, 24.984581, 18.989986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104570, 0.982998, 0.150933,
		-0.893649, -0.026278, -0.447996,
		-0.436413, -0.181728, 0.881203,
		28.888704, 24.930063, 19.254347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844837, 25.638401, 18.791988>,  <29.194193, 25.057272, 18.637505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844837, 25.638401, 18.791988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734062, 25.461971, 19.133457>,  <28.667597, 25.356113, 19.338339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734062, 25.461971, 19.133457>,  <28.844837, 25.638401, 18.791988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734062, 25.461971, 19.133457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199352, 0.895466, 0.397995,
		-0.939981, -0.059961, -0.335918,
		-0.276939, -0.441074, 0.853674,
		28.650980, 25.329649, 19.389559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163540, 25.939207, 18.950029>,  <28.844837, 25.638401, 18.791988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163540, 25.939207, 18.950029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308456, 25.813805, 19.301132>,  <28.395407, 25.738564, 19.511793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308456, 25.813805, 19.301132>,  <28.163540, 25.939207, 18.950029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308456, 25.813805, 19.301132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207695, 0.890901, 0.403928,
		-0.908630, -0.328645, 0.257651,
		0.362291, -0.313508, 0.877758,
		28.417143, 25.719751, 19.564459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606030, 25.836229, 19.579288>,  <28.163540, 25.939207, 18.950029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606030, 25.836229, 19.579288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973843, 25.918560, 19.713211>,  <28.194530, 25.967958, 19.793564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973843, 25.918560, 19.713211>,  <27.606030, 25.836229, 19.579288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973843, 25.918560, 19.713211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329039, 0.869054, 0.369430,
		-0.214924, -0.449867, 0.866849,
		0.919533, 0.205828, 0.334804,
		28.249702, 25.980309, 19.813652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553196, 26.068331, 20.270857>,  <27.606030, 25.836229, 19.579288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553196, 26.068331, 20.270857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932072, 26.189480, 20.228710>,  <28.159397, 26.262169, 20.203423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932072, 26.189480, 20.228710>,  <27.553196, 26.068331, 20.270857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932072, 26.189480, 20.228710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203291, 0.821239, 0.533142,
		0.248003, -0.483566, 0.839439,
		0.947190, 0.302871, -0.105365,
		28.216228, 26.280340, 20.197100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806927, 26.246208, 20.935535>,  <27.553196, 26.068331, 20.270857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806927, 26.246208, 20.935535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011560, 26.448696, 20.657825>,  <28.134340, 26.570189, 20.491199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011560, 26.448696, 20.657825>,  <27.806927, 26.246208, 20.935535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011560, 26.448696, 20.657825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216659, 0.857911, 0.465883,
		0.831466, -0.087919, 0.548574,
		0.511588, 0.506220, -0.694276,
		28.165037, 26.600563, 20.449543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066683, 26.791708, 21.263554>,  <27.806927, 26.246208, 20.935535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066683, 26.791708, 21.263554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.176989, 26.941978, 20.909645>,  <28.243172, 27.032141, 20.697300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.176989, 26.941978, 20.909645>,  <28.066683, 26.791708, 21.263554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176989, 26.941978, 20.909645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101878, 0.903855, 0.415531,
		0.955812, -0.204726, 0.210975,
		0.275761, 0.375676, -0.884773,
		28.259718, 27.054682, 20.644213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594122, 27.405401, 21.428120>,  <28.066683, 26.791708, 21.263554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594122, 27.405401, 21.428120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452875, 27.429329, 21.054653>,  <28.368126, 27.443686, 20.830574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452875, 27.429329, 21.054653>,  <28.594122, 27.405401, 21.428120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452875, 27.429329, 21.054653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177612, 0.975519, 0.129677,
		0.918565, 0.211621, -0.333848,
		-0.353118, 0.059821, -0.933664,
		28.346939, 27.447275, 20.774553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992586, 27.941599, 21.077093>,  <28.594122, 27.405401, 21.428120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992586, 27.941599, 21.077093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632843, 27.890297, 20.909901>,  <28.416998, 27.859516, 20.809586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632843, 27.890297, 20.909901>,  <28.992586, 27.941599, 21.077093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632843, 27.890297, 20.909901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193942, 0.973831, 0.118488,
		0.391844, 0.187626, -0.900697,
		-0.899358, -0.128254, -0.417979,
		28.363035, 27.851820, 20.784508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936964, 28.538019, 20.687624>,  <28.992586, 27.941599, 21.077093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936964, 28.538019, 20.687624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556999, 28.413193, 20.694324>,  <28.329020, 28.338297, 20.698345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.556999, 28.413193, 20.694324>,  <28.936964, 28.538019, 20.687624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556999, 28.413193, 20.694324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312049, 0.944193, -0.105476,
		0.017098, -0.105421, -0.994281,
		-0.949912, -0.312068, 0.016752,
		28.272026, 28.319572, 20.699350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585611, 28.798616, 20.114677>,  <28.936964, 28.538019, 20.687624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585611, 28.798616, 20.114677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273146, 28.720173, 20.351768>,  <28.085667, 28.673107, 20.494022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273146, 28.720173, 20.351768>,  <28.585611, 28.798616, 20.114677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273146, 28.720173, 20.351768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254243, 0.967022, -0.015121,
		-0.570215, -0.162509, -0.805261,
		-0.781163, -0.196110, 0.592727,
		28.038797, 28.661341, 20.529587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108006, 29.192772, 19.893080>,  <28.585611, 28.798616, 20.114677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108006, 29.192772, 19.893080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964474, 29.098415, 20.254322>,  <27.878355, 29.041801, 20.471067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964474, 29.098415, 20.254322>,  <28.108006, 29.192772, 19.893080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964474, 29.098415, 20.254322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321651, 0.939526, 0.117605,
		-0.876232, -0.248284, -0.413005,
		-0.358829, -0.235893, 0.903104,
		27.856825, 29.027647, 20.525253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445177, 29.475395, 19.932791>,  <28.108006, 29.192772, 19.893080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445177, 29.475395, 19.932791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581816, 29.431835, 20.306198>,  <27.663799, 29.405699, 20.530243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581816, 29.431835, 20.306198>,  <27.445177, 29.475395, 19.932791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581816, 29.431835, 20.306198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285337, 0.934366, 0.213409,
		-0.895485, -0.339266, 0.288105,
		0.341598, -0.108898, 0.933516,
		27.684296, 29.399166, 20.586252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903275, 29.734068, 20.371407>,  <27.445177, 29.475395, 19.932791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903275, 29.734068, 20.371407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233898, 29.712288, 20.595490>,  <27.432272, 29.699219, 20.729940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233898, 29.712288, 20.595490>,  <26.903275, 29.734068, 20.371407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233898, 29.712288, 20.595490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256699, 0.849300, 0.461298,
		-0.500903, -0.525095, 0.688019,
		0.826560, -0.054452, 0.560208,
		27.481867, 29.695951, 20.763552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735119, 29.707273, 21.085527>,  <26.903275, 29.734068, 20.371407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735119, 29.707273, 21.085527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112812, 29.838982, 21.085068>,  <27.339428, 29.918007, 21.084791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112812, 29.838982, 21.085068>,  <26.735119, 29.707273, 21.085527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112812, 29.838982, 21.085068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297163, 0.853660, 0.427736,
		0.141822, -0.403542, 0.903903,
		0.944236, 0.329269, -0.001150,
		27.396082, 29.937763, 21.084723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832403, 30.009542, 21.682596>,  <26.735119, 29.707273, 21.085527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832403, 30.009542, 21.682596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124357, 30.177593, 21.466908>,  <27.299530, 30.278423, 21.337494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124357, 30.177593, 21.466908>,  <26.832403, 30.009542, 21.682596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124357, 30.177593, 21.466908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234753, 0.894913, 0.379501,
		0.641995, -0.150408, 0.751811,
		0.729886, 0.420127, -0.539221,
		27.343323, 30.303631, 21.305141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154572, 30.468893, 22.093126>,  <26.832403, 30.009542, 21.682596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154572, 30.468893, 22.093126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280832, 30.603699, 21.738323>,  <27.356588, 30.684582, 21.525440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280832, 30.603699, 21.738323>,  <27.154572, 30.468893, 22.093126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.280832, 30.603699, 21.738323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261619, 0.929479, 0.260048,
		0.912095, 0.149973, 0.381563,
		0.315654, 0.337013, -0.887009,
		27.375528, 30.704802, 21.472219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397617, 31.059395, 22.167074>,  <27.154572, 30.468893, 22.093126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397617, 31.059395, 22.167074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.382853, 31.110580, 21.770638>,  <27.373993, 31.141293, 21.532776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.382853, 31.110580, 21.770638>,  <27.397617, 31.059395, 22.167074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.382853, 31.110580, 21.770638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415923, 0.899818, 0.131669,
		0.908650, 0.417078, 0.020009,
		-0.036912, 0.127963, -0.991092,
		27.371778, 31.148970, 21.473310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842686, 31.719627, 22.023001>,  <27.397617, 31.059395, 22.167074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.842686, 31.719627, 22.023001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582867, 31.641251, 21.729145>,  <27.426975, 31.594225, 21.552832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582867, 31.641251, 21.729145>,  <27.842686, 31.719627, 22.023001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582867, 31.641251, 21.729145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366706, 0.927149, 0.076945,
		0.666044, 0.319376, -0.674081,
		-0.649548, -0.195941, -0.734639,
		27.388002, 31.582468, 21.508753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841499, 32.241135, 21.598244>,  <27.842686, 31.719627, 22.023001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841499, 32.241135, 21.598244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488581, 32.079796, 21.501194>,  <27.276829, 31.982994, 21.442965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488581, 32.079796, 21.501194>,  <27.841499, 32.241135, 21.598244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488581, 32.079796, 21.501194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398696, 0.914388, -0.070250,
		0.250186, 0.034752, -0.967574,
		-0.882297, -0.403344, -0.242623,
		27.223892, 31.958794, 21.428408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680538, 32.507118, 20.956135>,  <27.841499, 32.241135, 21.598244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680538, 32.507118, 20.956135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.330442, 32.381683, 21.103443>,  <27.120384, 32.306423, 21.191828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.330442, 32.381683, 21.103443>,  <27.680538, 32.507118, 20.956135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.330442, 32.381683, 21.103443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337258, 0.941412, 0.000080,
		-0.346718, -0.124132, -0.929719,
		-0.875239, -0.313583, 0.368269,
		27.067871, 32.287609, 21.213924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.290356, 33.009808, 20.724892>,  <27.680538, 32.507118, 20.956135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.290356, 33.009808, 20.724892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036747, 32.820435, 20.969475>,  <26.884583, 32.706810, 21.116224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036747, 32.820435, 20.969475>,  <27.290356, 33.009808, 20.724892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036747, 32.820435, 20.969475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611697, 0.790786, -0.021987,
		-0.473123, -0.387966, -0.790972,
		-0.634020, -0.473433, 0.611457,
		26.846540, 32.678406, 21.152912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606291, 33.101860, 20.498577>,  <27.290356, 33.009808, 20.724892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606291, 33.101860, 20.498577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564137, 33.039162, 20.891376>,  <26.538845, 33.001541, 21.127056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.564137, 33.039162, 20.891376>,  <26.606291, 33.101860, 20.498577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564137, 33.039162, 20.891376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533801, 0.842085, 0.077129,
		-0.839017, -0.516065, -0.172415,
		-0.105385, -0.156747, 0.982000,
		26.532520, 32.992138, 21.185976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916952, 33.134911, 20.593220>,  <26.606291, 33.101860, 20.498577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916952, 33.134911, 20.593220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106287, 33.207481, 20.938019>,  <26.219887, 33.251022, 21.144897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106287, 33.207481, 20.938019>,  <25.916952, 33.134911, 20.593220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.106287, 33.207481, 20.938019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542036, 0.831355, 0.122665,
		-0.694371, -0.525295, 0.491848,
		0.473336, 0.181424, 0.861997,
		26.248287, 33.261909, 21.196617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348751, 33.310066, 21.073055>,  <25.916952, 33.134911, 20.593220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348751, 33.310066, 21.073055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669617, 33.473080, 21.247620>,  <25.862135, 33.570889, 21.352358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669617, 33.473080, 21.247620>,  <25.348751, 33.310066, 21.073055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.669617, 33.473080, 21.247620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509167, 0.848635, 0.143416,
		-0.311906, -0.337249, 0.888244,
		0.802162, 0.407532, 0.436410,
		25.910265, 33.595341, 21.378542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.149036, 33.567043, 21.629232>,  <25.348751, 33.310066, 21.073055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.149036, 33.567043, 21.629232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483435, 33.780968, 21.580093>,  <25.684074, 33.909321, 21.550610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483435, 33.780968, 21.580093>,  <25.149036, 33.567043, 21.629232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483435, 33.780968, 21.580093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498941, 0.834025, 0.235501,
		0.228404, -0.135586, 0.964079,
		0.835996, 0.534808, -0.122845,
		25.734234, 33.941410, 21.543240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.131147, 34.019855, 22.159592>,  <25.149036, 33.567043, 21.629232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.131147, 34.019855, 22.159592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381927, 34.195641, 21.902279>,  <25.532394, 34.301113, 21.747892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381927, 34.195641, 21.902279>,  <25.131147, 34.019855, 22.159592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.381927, 34.195641, 21.902279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547652, 0.835875, 0.037286,
		0.554087, 0.328917, 0.764723,
		0.626949, 0.439461, -0.643280,
		25.570013, 34.327480, 21.709295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.350023, 34.640297, 22.490433>,  <25.131147, 34.019855, 22.159592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.350023, 34.640297, 22.490433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361687, 34.669029, 22.091637>,  <25.368685, 34.686268, 21.852360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361687, 34.669029, 22.091637>,  <25.350023, 34.640297, 22.490433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.361687, 34.669029, 22.091637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671106, 0.740594, 0.033731,
		0.740788, 0.668103, 0.069803,
		0.029160, 0.071833, -0.996990,
		25.370434, 34.690578, 21.792540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.921392, 35.243904, 22.466806>,  <25.350023, 34.640297, 22.490433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.921392, 35.243904, 22.466806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.989210, 35.094856, 22.101860>,  <25.029902, 35.005428, 21.882893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.989210, 35.094856, 22.101860>,  <24.921392, 35.243904, 22.466806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.989210, 35.094856, 22.101860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703930, 0.602129, -0.376728,
		0.689737, 0.706113, -0.160210,
		0.169545, -0.372620, -0.912364,
		25.040073, 34.983070, 21.828150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.747503, 35.804020, 22.041195>,  <24.921392, 35.243904, 22.466806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.747503, 35.804020, 22.041195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.435188, 35.852863, 22.286293>,  <24.247799, 35.882168, 22.433352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.435188, 35.852863, 22.286293>,  <24.747503, 35.804020, 22.041195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.435188, 35.852863, 22.286293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202479, 0.878339, -0.433039,
		-0.591076, -0.462181, -0.661073,
		-0.780789, 0.122106, 0.612747,
		24.200953, 35.889496, 22.470118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.930357, 35.737888, 21.716875>,  <24.747503, 35.804020, 22.041195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.930357, 35.737888, 21.716875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.013844, 36.009602, 21.998302>,  <24.063936, 36.172630, 22.167158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.013844, 36.009602, 21.998302>,  <23.930357, 35.737888, 21.716875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.013844, 36.009602, 21.998302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320874, 0.727152, -0.606869,
		-0.923839, -0.099093, 0.369733,
		0.208716, 0.679287, 0.703567,
		24.076458, 36.213387, 22.209373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.318478, 36.154987, 21.983727>,  <23.930357, 35.737888, 21.716875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.318478, 36.154987, 21.983727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.632607, 36.402298, 21.996380>,  <23.821083, 36.550686, 22.003971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.632607, 36.402298, 21.996380>,  <23.318478, 36.154987, 21.983727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.632607, 36.402298, 21.996380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459925, 0.616860, -0.638712,
		-0.414415, 0.487045, 0.768796,
		0.785321, 0.618280, 0.031632,
		23.868202, 36.587784, 22.005869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.685989, 36.619179, 22.229729>,  <23.318478, 36.154987, 21.983727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.685989, 36.619179, 22.229729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.915388, 36.551296, 21.909153>,  <23.053028, 36.510567, 21.716808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.915388, 36.551296, 21.909153>,  <22.685989, 36.619179, 22.229729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.915388, 36.551296, 21.909153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121349, -0.949917, 0.287978,
		-0.810169, -0.262408, -0.524183,
		0.573498, -0.169702, -0.801437,
		23.087437, 36.500385, 21.668722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.374537, 36.060993, 22.432766>,  <22.685989, 36.619179, 22.229729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.374537, 36.060993, 22.432766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.993671, 35.938774, 22.434811>,  <21.765152, 35.865444, 22.436037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.993671, 35.938774, 22.434811>,  <22.374537, 36.060993, 22.432766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.993671, 35.938774, 22.434811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084416, -0.279061, -0.956556,
		0.293701, -0.910365, 0.291505,
		-0.952162, -0.305549, 0.005111,
		21.708023, 35.847111, 22.436344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.323614, 35.403553, 22.031265>,  <22.374537, 36.060993, 22.432766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.323614, 35.403553, 22.031265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.992184, 35.626537, 22.052017>,  <21.793325, 35.760330, 22.064468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.992184, 35.626537, 22.052017>,  <22.323614, 35.403553, 22.031265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.992184, 35.626537, 22.052017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167556, -0.158485, -0.973040,
		-0.534213, -0.814933, 0.224724,
		-0.828578, 0.557465, 0.051882,
		21.743610, 35.793777, 22.067581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.841866, 34.982674, 21.793327>,  <22.323614, 35.403553, 22.031265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.841866, 34.982674, 21.793327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.727364, 35.359093, 21.721233>,  <21.658663, 35.584946, 21.677977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.727364, 35.359093, 21.721233>,  <21.841866, 34.982674, 21.793327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.727364, 35.359093, 21.721233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249855, -0.254913, -0.934126,
		-0.925003, -0.222364, 0.308095,
		-0.286253, 0.941049, -0.180237,
		21.641487, 35.641407, 21.667162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.160421, 34.965900, 21.515305>,  <21.841866, 34.982674, 21.793327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.160421, 34.965900, 21.515305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.318123, 35.318371, 21.410927>,  <21.412745, 35.529854, 21.348299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.318123, 35.318371, 21.410927>,  <21.160421, 34.965900, 21.515305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.318123, 35.318371, 21.410927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194464, -0.197523, -0.960817,
		-0.898191, 0.429550, 0.093483,
		0.394253, 0.881176, -0.260945,
		21.436399, 35.582726, 21.332644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.822123, 35.172981, 20.938845>,  <21.160421, 34.965900, 21.515305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.822123, 35.172981, 20.938845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.114088, 35.443989, 20.902630>,  <21.289267, 35.606594, 20.880901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.114088, 35.443989, 20.902630>,  <20.822123, 35.172981, 20.938845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.114088, 35.443989, 20.902630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192978, 0.077189, -0.978162,
		-0.655735, 0.731444, 0.187087,
		0.729912, 0.677519, -0.090537,
		21.333061, 35.647243, 20.875469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.501455, 35.799782, 20.633867>,  <20.822123, 35.172981, 20.938845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.501455, 35.799782, 20.633867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.886534, 35.835621, 20.531738>,  <21.117580, 35.857124, 20.470461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.886534, 35.835621, 20.531738>,  <20.501455, 35.799782, 20.633867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.886534, 35.835621, 20.531738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264744, 0.116830, -0.957216,
		-0.055939, 0.989102, 0.136193,
		0.962695, 0.089602, -0.255323,
		21.175343, 35.862503, 20.455141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.455635, 36.278080, 20.149742>,  <20.501455, 35.799782, 20.633867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.455635, 36.278080, 20.149742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.830120, 36.149734, 20.092400>,  <21.054811, 36.072727, 20.057995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.830120, 36.149734, 20.092400>,  <20.455635, 36.278080, 20.149742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.830120, 36.149734, 20.092400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079276, 0.204584, -0.975634,
		0.342373, 0.924766, 0.166097,
		0.936214, -0.320863, -0.143356,
		21.110985, 36.053474, 20.049393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.780508, 36.787560, 19.728331>,  <20.455635, 36.278080, 20.149742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.780508, 36.787560, 19.728331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.002478, 36.455639, 19.704727>,  <21.135660, 36.256485, 19.690565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.002478, 36.455639, 19.704727>,  <20.780508, 36.787560, 19.728331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.002478, 36.455639, 19.704727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026938, 0.052973, -0.998233,
		0.831464, 0.555534, 0.007042,
		0.554925, -0.829805, -0.059010,
		21.168955, 36.206696, 19.687025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.158895, 37.035725, 19.220171>,  <20.780508, 36.787560, 19.728331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.158895, 37.035725, 19.220171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.199322, 36.637859, 19.211872>,  <21.223577, 36.399139, 19.206894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.199322, 36.637859, 19.211872>,  <21.158895, 37.035725, 19.220171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.199322, 36.637859, 19.211872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034658, 0.017320, -0.999249,
		0.994276, 0.101707, -0.032723,
		0.101064, -0.994664, -0.020746,
		21.229641, 36.339458, 19.205648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.718399, 36.930382, 18.679892>,  <21.158895, 37.035725, 19.220171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.718399, 36.930382, 18.679892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.495028, 36.599110, 18.698963>,  <21.361004, 36.400345, 18.710407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.495028, 36.599110, 18.698963>,  <21.718399, 36.930382, 18.679892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.495028, 36.599110, 18.698963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064827, -0.013735, -0.997802,
		0.827016, -0.560292, -0.046019,
		-0.558428, -0.828181, 0.047681,
		21.327499, 36.350655, 18.713268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.147392, 36.403923, 18.322886>,  <21.718399, 36.930382, 18.679892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.147392, 36.403923, 18.322886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.752117, 36.343300, 18.331970>,  <21.514952, 36.306927, 18.337421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.752117, 36.343300, 18.331970>,  <22.147392, 36.403923, 18.322886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.752117, 36.343300, 18.331970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038098, 0.099390, -0.994319,
		0.148443, -0.983438, -0.103990,
		-0.988187, -0.151562, 0.022713,
		21.455662, 36.297832, 18.338785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.983305, 36.144283, 17.692564>,  <22.147392, 36.403923, 18.322886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.983305, 36.144283, 17.692564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.610138, 36.235294, 17.804207>,  <21.386238, 36.289902, 17.871193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.610138, 36.235294, 17.804207>,  <21.983305, 36.144283, 17.692564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.610138, 36.235294, 17.804207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245768, 0.164190, -0.955322,
		-0.263186, -0.959830, -0.097257,
		-0.932915, 0.227525, 0.279108,
		21.330263, 36.303551, 17.887939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.578363, 35.863098, 17.214859>,  <21.983305, 36.144283, 17.692564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.578363, 35.863098, 17.214859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.306986, 36.105782, 17.380566>,  <21.144159, 36.251392, 17.479990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.306986, 36.105782, 17.380566>,  <21.578363, 35.863098, 17.214859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.306986, 36.105782, 17.380566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519015, 0.003255, -0.854759,
		-0.519940, -0.794917, 0.312683,
		-0.678444, 0.606710, 0.414266,
		21.103453, 36.287796, 17.504845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.927673, 35.602177, 17.102995>,  <21.578363, 35.863098, 17.214859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.927673, 35.602177, 17.102995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.860289, 35.994473, 17.142529>,  <20.819859, 36.229851, 17.166248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.860289, 35.994473, 17.142529>,  <20.927673, 35.602177, 17.102995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.860289, 35.994473, 17.142529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611209, -0.025267, -0.791066,
		-0.773334, -0.193671, 0.603694,
		-0.168460, 0.980741, 0.098833,
		20.809752, 36.288696, 17.172178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.279018, 35.660542, 17.055019>,  <20.927673, 35.602177, 17.102995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.279018, 35.660542, 17.055019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.412678, 36.029148, 16.975880>,  <20.492874, 36.250313, 16.928396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.412678, 36.029148, 16.975880>,  <20.279018, 35.660542, 17.055019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.412678, 36.029148, 16.975880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669409, 0.084262, -0.738100,
		-0.663502, 0.379079, 0.645030,
		0.334149, 0.921520, -0.197851,
		20.512922, 36.305603, 16.916525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.724339, 35.909401, 16.710884>,  <20.279018, 35.660542, 17.055019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.724339, 35.909401, 16.710884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.020992, 36.147812, 16.587772>,  <20.198984, 36.290859, 16.513905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.020992, 36.147812, 16.587772>,  <19.724339, 35.909401, 16.710884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.020992, 36.147812, 16.587772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459214, 0.116652, -0.880633,
		-0.488978, 0.794446, 0.360217,
		0.741636, 0.596027, -0.307780,
		20.243483, 36.326618, 16.495438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.469124, 36.412163, 16.319906>,  <19.724339, 35.909401, 16.710884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.469124, 36.412163, 16.319906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.855982, 36.469490, 16.235912>,  <20.088097, 36.503887, 16.185516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.855982, 36.469490, 16.235912>,  <19.469124, 36.412163, 16.319906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.855982, 36.469490, 16.235912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229219, 0.134295, -0.964066,
		-0.109969, 0.980522, 0.162734,
		0.967143, 0.143319, -0.209986,
		20.146124, 36.512486, 16.172916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.531862, 37.027000, 15.861780>,  <19.469124, 36.412163, 16.319906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.531862, 37.027000, 15.861780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.869564, 36.824245, 15.792151>,  <20.072186, 36.702591, 15.750374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.869564, 36.824245, 15.792151>,  <19.531862, 37.027000, 15.861780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.869564, 36.824245, 15.792151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067267, 0.222008, -0.972722,
		0.531706, 0.832933, 0.153335,
		0.844254, -0.506887, -0.174072,
		20.122841, 36.672180, 15.739930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.893024, 37.444271, 15.442721>,  <19.531862, 37.027000, 15.861780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.893024, 37.444271, 15.442721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.052588, 37.082951, 15.379577>,  <20.148325, 36.866158, 15.341690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.052588, 37.082951, 15.379577>,  <19.893024, 37.444271, 15.442721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.052588, 37.082951, 15.379577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181669, 0.090890, -0.979150,
		0.898815, 0.419270, -0.127845,
		0.398909, -0.903300, -0.157862,
		20.172260, 36.811962, 15.332218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.362349, 37.489235, 14.913965>,  <19.893024, 37.444271, 15.442721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.362349, 37.489235, 14.913965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.243490, 37.107365, 14.920770>,  <20.172174, 36.878242, 14.924852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.243490, 37.107365, 14.920770>,  <20.362349, 37.489235, 14.913965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.243490, 37.107365, 14.920770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248312, 0.060060, -0.966816,
		0.921979, -0.291511, -0.254905,
		-0.297147, -0.954680, 0.017012,
		20.154346, 36.820961, 14.925873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.547541, 37.260460, 14.247015>,  <20.362349, 37.489235, 14.913965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.547541, 37.260460, 14.247015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.294449, 36.977161, 14.372262>,  <20.142593, 36.807182, 14.447410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.294449, 36.977161, 14.372262>,  <20.547541, 37.260460, 14.247015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.294449, 36.977161, 14.372262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269201, -0.177953, -0.946501,
		0.726075, -0.683170, -0.078065,
		-0.632729, -0.708246, 0.313117,
		20.104630, 36.764687, 14.466197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.537590, 36.752995, 13.734225>,  <20.547541, 37.260460, 14.247015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.537590, 36.752995, 13.734225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.207628, 36.650211, 13.935622>,  <20.009651, 36.588539, 14.056460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.207628, 36.650211, 13.935622>,  <20.537590, 36.752995, 13.734225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.207628, 36.650211, 13.935622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455687, -0.224768, -0.861295,
		0.334489, -0.939920, 0.068318,
		-0.824904, -0.256962, 0.503492,
		19.960157, 36.573124, 14.086670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.335661, 35.983727, 13.493996>,  <20.537590, 36.752995, 13.734225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.335661, 35.983727, 13.493996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.040327, 36.230453, 13.603099>,  <19.863127, 36.378490, 13.668561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.040327, 36.230453, 13.603099>,  <20.335661, 35.983727, 13.493996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.040327, 36.230453, 13.603099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449737, -0.148907, -0.880661,
		-0.502591, -0.772893, 0.387349,
		-0.738335, 0.616817, 0.272759,
		19.818827, 36.415497, 13.684927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704123, 35.674923, 13.233898>,  <20.335661, 35.983727, 13.493996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.704123, 35.674923, 13.233898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.695950, 36.074810, 13.228961>,  <19.691046, 36.314743, 13.225999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.695950, 36.074810, 13.228961>,  <19.704123, 35.674923, 13.233898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.695950, 36.074810, 13.228961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429805, -0.019930, -0.902702,
		-0.902691, -0.013141, 0.430090,
		-0.020434, 0.999715, -0.012342,
		19.689819, 36.374725, 13.225259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.099264, 36.051025, 13.213128>,  <19.704123, 35.674923, 13.233898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.099264, 36.051025, 13.213128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.316505, 36.332657, 13.030128>,  <19.446850, 36.501637, 12.920327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.316505, 36.332657, 13.030128>,  <19.099264, 36.051025, 13.213128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.316505, 36.332657, 13.030128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674822, 0.041775, -0.736797,
		-0.499653, 0.708889, 0.497818,
		0.543104, 0.704082, -0.457500,
		19.479437, 36.543880, 12.892878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.771925, 36.083282, 12.580738>,  <19.099264, 36.051025, 13.213128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.771925, 36.083282, 12.580738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.025896, 36.389244, 12.537309>,  <19.178280, 36.572823, 12.511251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.025896, 36.389244, 12.537309>,  <18.771925, 36.083282, 12.580738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.025896, 36.389244, 12.537309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440388, 0.242869, -0.864334,
		-0.634763, 0.596605, 0.491059,
		0.634929, 0.764903, -0.108573,
		19.216375, 36.618713, 12.504737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.460079, 36.667450, 12.313712>,  <18.771925, 36.083282, 12.580738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.460079, 36.667450, 12.313712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.805441, 36.654530, 12.112321>,  <19.012657, 36.646778, 11.991486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.805441, 36.654530, 12.112321>,  <18.460079, 36.667450, 12.313712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.805441, 36.654530, 12.112321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501663, 0.050966, -0.863560,
		0.053555, 0.998178, 0.027800,
		0.863404, -0.032302, -0.503479,
		19.064463, 36.644840, 11.961277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.558537, 37.255310, 11.855827>,  <18.460079, 36.667450, 12.313712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.558537, 37.255310, 11.855827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800476, 36.980759, 11.694314>,  <18.945641, 36.816029, 11.597406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800476, 36.980759, 11.694314>,  <18.558537, 37.255310, 11.855827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.800476, 36.980759, 11.694314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360048, 0.216555, -0.907452,
		0.710298, 0.694253, -0.116147,
		0.604849, -0.686380, -0.403783,
		18.981930, 36.774845, 11.573179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.739021, 37.666389, 12.479342>,  <18.558537, 37.255310, 11.855827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.739021, 37.666389, 12.479342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.543991, 38.005550, 12.562608>,  <18.426973, 38.209045, 12.612568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.543991, 38.005550, 12.562608>,  <18.739021, 37.666389, 12.479342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.543991, 38.005550, 12.562608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380681, -0.008108, 0.924671,
		0.785719, 0.530090, -0.318827,
		-0.487574, 0.847903, 0.208166,
		18.397718, 38.259922, 12.625057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.115870, 38.266060, 12.861475>,  <18.739021, 37.666389, 12.479342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.115870, 38.266060, 12.861475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.727915, 38.347149, 12.915477>,  <18.495142, 38.395802, 12.947878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.727915, 38.347149, 12.915477>,  <19.115870, 38.266060, 12.861475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.727915, 38.347149, 12.915477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178182, 0.212659, 0.960743,
		0.166055, 0.955866, -0.242376,
		-0.969885, 0.202723, 0.135005,
		18.436949, 38.407967, 12.955978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.157080, 38.886925, 13.265971>,  <19.115870, 38.266060, 12.861475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.157080, 38.886925, 13.265971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800175, 38.714390, 13.319369>,  <18.586031, 38.610870, 13.351408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.800175, 38.714390, 13.319369>,  <19.157080, 38.886925, 13.265971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.800175, 38.714390, 13.319369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144040, 0.008292, 0.989537,
		-0.427927, 0.902155, 0.054731,
		-0.892262, -0.431333, 0.133495,
		18.532495, 38.584991, 13.359418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.667398, 39.337479, 13.674770>,  <19.157080, 38.886925, 13.265971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.667398, 39.337479, 13.674770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.621386, 38.941444, 13.706992>,  <18.593779, 38.703823, 13.726325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.621386, 38.941444, 13.706992>,  <18.667398, 39.337479, 13.674770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.621386, 38.941444, 13.706992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087799, 0.070642, 0.993630,
		-0.989474, 0.121371, 0.078803,
		-0.115031, -0.990090, 0.080555,
		18.586876, 38.644417, 13.731158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.073368, 39.163998, 14.092345>,  <18.667398, 39.337479, 13.674770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.073368, 39.163998, 14.092345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.331205, 38.860966, 14.133487>,  <18.485909, 38.679146, 14.158172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.331205, 38.860966, 14.133487>,  <18.073368, 39.163998, 14.092345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.331205, 38.860966, 14.133487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133964, 0.020531, 0.990773,
		-0.752698, -0.652424, -0.088254,
		0.644592, -0.757576, 0.102855,
		18.524584, 38.633694, 14.164343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.717985, 38.776672, 14.585511>,  <18.073368, 39.163998, 14.092345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.717985, 38.776672, 14.585511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.110113, 38.698021, 14.578431>,  <18.345390, 38.650829, 14.574183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.110113, 38.698021, 14.578431>,  <17.717985, 38.776672, 14.585511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.110113, 38.698021, 14.578431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021522, 0.017321, 0.999618,
		-0.196248, -0.980325, 0.021212,
		0.980318, -0.196630, -0.017700,
		18.404209, 38.639030, 14.573121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.855789, 38.189018, 14.986929>,  <17.717985, 38.776672, 14.585511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.855789, 38.189018, 14.986929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.197609, 38.396301, 14.973031>,  <18.402700, 38.520672, 14.964692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.197609, 38.396301, 14.973031>,  <17.855789, 38.189018, 14.986929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.197609, 38.396301, 14.973031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005747, 0.076329, 0.997066,
		0.519335, -0.851845, 0.068205,
		0.854551, 0.518203, -0.034745,
		18.453974, 38.551762, 14.962607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.427681, 37.846836, 15.358382>,  <17.855789, 38.189018, 14.986929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.427681, 37.846836, 15.358382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.527769, 38.234093, 15.362216>,  <18.587822, 38.466446, 15.364516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.527769, 38.234093, 15.362216>,  <18.427681, 37.846836, 15.358382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.527769, 38.234093, 15.362216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091623, -0.033534, 0.995229,
		0.963844, -0.248150, -0.097095,
		0.250222, 0.968141, 0.009586,
		18.602837, 38.524536, 15.365091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.971300, 37.903637, 15.936826>,  <18.427681, 37.846836, 15.358382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.971300, 37.903637, 15.936826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.842852, 38.277851, 15.877965>,  <18.765781, 38.502380, 15.842649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.842852, 38.277851, 15.877965>,  <18.971300, 37.903637, 15.936826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.842852, 38.277851, 15.877965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174319, 0.211118, 0.961791,
		0.930856, 0.283202, -0.230877,
		-0.321123, 0.935535, -0.147153,
		18.746515, 38.558510, 15.833819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.462687, 38.239227, 16.343088>,  <18.971300, 37.903637, 15.936826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.462687, 38.239227, 16.343088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.174784, 38.503040, 16.256405>,  <19.002041, 38.661327, 16.204395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.174784, 38.503040, 16.256405>,  <19.462687, 38.239227, 16.343088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.174784, 38.503040, 16.256405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075190, 0.384383, 0.920107,
		0.690141, 0.645960, -0.326253,
		-0.719758, 0.659534, -0.216709,
		18.958857, 38.700901, 16.191393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.740406, 38.903927, 16.457512>,  <19.462687, 38.239227, 16.343088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.740406, 38.903927, 16.457512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.343403, 38.929371, 16.499229>,  <19.105200, 38.944637, 16.524260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.343403, 38.929371, 16.499229>,  <19.740406, 38.903927, 16.457512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.343403, 38.929371, 16.499229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118039, 0.279454, 0.952876,
		0.031469, 0.958050, -0.284869,
		-0.992510, 0.063612, 0.104293,
		19.045650, 38.948456, 16.530518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.705669, 39.423008, 16.933172>,  <19.740406, 38.903927, 16.457512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.705669, 39.423008, 16.933172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.344860, 39.250751, 16.945229>,  <19.128374, 39.147400, 16.952463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.344860, 39.250751, 16.945229>,  <19.705669, 39.423008, 16.933172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.344860, 39.250751, 16.945229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002052, 0.065545, 0.997847,
		-0.431685, 0.900142, -0.058239,
		-0.902022, -0.430637, 0.030142,
		19.074253, 39.121559, 16.954271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.371346, 39.862320, 17.286663>,  <19.705669, 39.423008, 16.933172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.371346, 39.862320, 17.286663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.183262, 39.510368, 17.314148>,  <19.070412, 39.299198, 17.330639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.183262, 39.510368, 17.314148>,  <19.371346, 39.862320, 17.286663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.183262, 39.510368, 17.314148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030815, 0.061439, 0.997635,
		-0.882018, 0.471213, -0.001776,
		-0.470208, -0.879877, 0.068710,
		19.042200, 39.246407, 17.334761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.812565, 39.913696, 17.820953>,  <19.371346, 39.862320, 17.286663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.812565, 39.913696, 17.820953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.883469, 39.524250, 17.763477>,  <18.926012, 39.290581, 17.728992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.883469, 39.524250, 17.763477>,  <18.812565, 39.913696, 17.820953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.883469, 39.524250, 17.763477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283031, -0.190264, 0.940049,
		-0.942588, -0.125966, -0.309291,
		0.177261, -0.973618, -0.143688,
		18.936647, 39.232166, 17.720371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.480413, 39.519428, 18.314425>,  <18.812565, 39.913696, 17.820953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.480413, 39.519428, 18.314425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.741245, 39.232143, 18.217293>,  <18.897745, 39.059772, 18.159014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.741245, 39.232143, 18.217293>,  <18.480413, 39.519428, 18.314425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.741245, 39.232143, 18.217293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000872, -0.321001, 0.947078,
		-0.758150, -0.617359, -0.209944,
		0.652080, -0.718211, -0.242829,
		18.936869, 39.016682, 18.144444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.372049, 39.039837, 18.856451>,  <18.480413, 39.519428, 18.314425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.372049, 39.039837, 18.856451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.711788, 38.903011, 18.695652>,  <18.915632, 38.820915, 18.599173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.711788, 38.903011, 18.695652>,  <18.372049, 39.039837, 18.856451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.711788, 38.903011, 18.695652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305312, -0.302882, 0.902800,
		-0.430575, -0.889524, -0.152815,
		0.849346, -0.342067, -0.401995,
		18.966593, 38.800392, 18.575054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.484335, 38.315025, 19.031570>,  <18.372049, 39.039837, 18.856451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.484335, 38.315025, 19.031570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.842957, 38.473545, 18.952435>,  <19.058128, 38.568657, 18.904953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.842957, 38.473545, 18.952435>,  <18.484335, 38.315025, 19.031570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.842957, 38.473545, 18.952435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345054, -0.344834, 0.872942,
		0.277727, -0.850902, -0.445907,
		0.896552, 0.396302, -0.197837,
		19.111921, 38.592434, 18.893084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.997276, 37.783741, 19.251963>,  <18.484335, 38.315025, 19.031570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.997276, 37.783741, 19.251963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.223673, 38.112865, 19.231407>,  <19.359510, 38.310341, 19.219074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.223673, 38.112865, 19.231407>,  <18.997276, 37.783741, 19.251963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.223673, 38.112865, 19.231407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536419, -0.320222, 0.780841,
		0.626026, -0.469516, -0.622612,
		0.565992, 0.822808, -0.051390,
		19.393471, 38.359707, 19.215990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.584637, 37.596684, 19.526926>,  <18.997276, 37.783741, 19.251963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.584637, 37.596684, 19.526926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.615002, 37.995239, 19.542122>,  <19.633221, 38.234371, 19.551239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.615002, 37.995239, 19.542122>,  <19.584637, 37.596684, 19.526926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.615002, 37.995239, 19.542122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434803, -0.067366, 0.898002,
		0.897320, -0.051651, -0.438348,
		0.075912, 0.996391, 0.037991,
		19.637775, 38.294155, 19.553518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.279785, 37.798622, 19.717394>,  <19.584637, 37.596684, 19.526926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.279785, 37.798622, 19.717394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.078945, 38.119370, 19.846951>,  <19.958441, 38.311817, 19.924685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.078945, 38.119370, 19.846951>,  <20.279785, 37.798622, 19.717394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.078945, 38.119370, 19.846951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405738, -0.112325, 0.907061,
		0.763722, 0.586852, -0.268949,
		-0.502100, 0.801865, 0.323894,
		19.928314, 38.359928, 19.944118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.764460, 38.147449, 20.085815>,  <20.279785, 37.798622, 19.717394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.764460, 38.147449, 20.085815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.426369, 38.318573, 20.213921>,  <20.223515, 38.421249, 20.290783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.426369, 38.318573, 20.213921>,  <20.764460, 38.147449, 20.085815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.426369, 38.318573, 20.213921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311005, -0.093571, 0.945791,
		0.434587, 0.899012, -0.053963,
		-0.845228, 0.427811, 0.320262,
		20.172800, 38.446915, 20.309999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.946659, 38.646484, 20.564533>,  <20.764460, 38.147449, 20.085815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.946659, 38.646484, 20.564533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.563686, 38.567799, 20.649033>,  <20.333902, 38.520588, 20.699732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.563686, 38.567799, 20.649033>,  <20.946659, 38.646484, 20.564533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.563686, 38.567799, 20.649033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222326, -0.035776, 0.974316,
		-0.184101, 0.979809, 0.077987,
		-0.957433, -0.196711, 0.211250,
		20.276457, 38.508785, 20.712408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.863241, 38.921093, 21.188951>,  <20.946659, 38.646484, 20.564533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.863241, 38.921093, 21.188951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.526224, 38.707802, 21.158520>,  <20.324013, 38.579826, 21.140261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.526224, 38.707802, 21.158520>,  <20.863241, 38.921093, 21.188951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.526224, 38.707802, 21.158520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029064, -0.186049, 0.982111,
		-0.537843, 0.825260, 0.172252,
		-0.842544, -0.533227, -0.076080,
		20.273460, 38.547832, 21.135696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.301407, 39.161903, 21.588682>,  <20.863241, 38.921093, 21.188951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.301407, 39.161903, 21.588682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.198868, 38.778465, 21.539074>,  <20.137344, 38.548401, 21.509310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.198868, 38.778465, 21.539074>,  <20.301407, 39.161903, 21.588682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.198868, 38.778465, 21.539074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196690, -0.073888, 0.977678,
		-0.946361, 0.275019, -0.169605,
		-0.256348, -0.958595, -0.124018,
		20.121964, 38.490887, 21.501869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.576193, 39.044575, 21.924471>,  <20.301407, 39.161903, 21.588682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.576193, 39.044575, 21.924471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.776699, 38.698963, 21.905773>,  <19.897003, 38.491596, 21.894554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.776699, 38.698963, 21.905773>,  <19.576193, 39.044575, 21.924471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.776699, 38.698963, 21.905773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129251, -0.128184, 0.983292,
		-0.855587, -0.486847, -0.175931,
		0.501264, -0.864030, -0.046747,
		19.927078, 38.439754, 21.891748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.186300, 38.758499, 22.322477>,  <19.576193, 39.044575, 21.924471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.186300, 38.758499, 22.322477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.528023, 38.551838, 22.299747>,  <19.733057, 38.427841, 22.286110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.528023, 38.551838, 22.299747>,  <19.186300, 38.758499, 22.322477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.528023, 38.551838, 22.299747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023561, -0.070723, 0.997218,
		-0.519236, -0.853268, -0.048246,
		0.854306, -0.516655, -0.056826,
		19.784315, 38.396843, 22.282700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.967646, 38.139221, 22.711546>,  <19.186300, 38.758499, 22.322477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.967646, 38.139221, 22.711546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.362026, 38.202427, 22.733204>,  <19.598654, 38.240349, 22.746199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.362026, 38.202427, 22.733204>,  <18.967646, 38.139221, 22.711546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.362026, 38.202427, 22.733204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010480, -0.264987, 0.964195,
		0.166704, -0.951217, -0.259609,
		0.985951, 0.158015, 0.054143,
		19.657812, 38.249832, 22.749447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.121115, 37.503357, 23.017624>,  <18.967646, 38.139221, 22.711546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.121115, 37.503357, 23.017624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.353725, 37.819324, 23.095448>,  <19.493292, 38.008904, 23.142141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.353725, 37.819324, 23.095448>,  <19.121115, 37.503357, 23.017624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.353725, 37.819324, 23.095448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062069, -0.281541, 0.957540,
		0.811157, -0.544758, -0.212753,
		0.581526, 0.789920, 0.194561,
		19.528183, 38.056301, 23.153816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.524679, 37.082764, 23.365429>,  <19.121115, 37.503357, 23.017624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.524679, 37.082764, 23.365429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.187984, 37.119591, 23.152637>,  <17.985968, 37.141689, 23.024963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.187984, 37.119591, 23.152637>,  <18.524679, 37.082764, 23.365429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.187984, 37.119591, 23.152637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313126, 0.719440, 0.619967,
		0.439807, 0.688425, -0.576750,
		-0.841738, 0.092070, -0.531978,
		17.935463, 37.147213, 22.993044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.468342, 37.665054, 23.444826>,  <18.524679, 37.082764, 23.365429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.468342, 37.665054, 23.444826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.105114, 37.540878, 23.332375>,  <17.887177, 37.466373, 23.264904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.105114, 37.540878, 23.332375>,  <18.468342, 37.665054, 23.444826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.105114, 37.540878, 23.332375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417584, 0.619655, 0.664569,
		-0.032106, 0.720870, -0.692326,
		-0.908071, -0.310441, -0.281129,
		17.832693, 37.447746, 23.248035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.533379, 27.018507, 16.384933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.898008, 27.108738, 16.522423>,  <32.116787, 27.162876, 16.604918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.898008, 27.108738, 16.522423>,  <31.533379, 27.018507, 16.384933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898008, 27.108738, 16.522423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360450, 0.840635, 0.404238,
		-0.197760, -0.492388, 0.847611,
		0.911574, 0.225579, 0.343725,
		32.171482, 27.176413, 16.625540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484991, 27.479057, 16.883581>,  <31.533379, 27.018507, 16.384933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484991, 27.479057, 16.883581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.874662, 27.559467, 16.842464>,  <32.108463, 27.607714, 16.817795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.874662, 27.559467, 16.842464>,  <31.484991, 27.479057, 16.883581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874662, 27.559467, 16.842464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156325, 0.929033, 0.335352,
		0.162914, -0.310623, 0.936468,
		0.974178, 0.201027, -0.102794,
		32.166916, 27.619776, 16.811626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660307, 27.835838, 17.577818>,  <31.484991, 27.479057, 16.883581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660307, 27.835838, 17.577818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.972788, 27.894852, 17.335178>,  <32.160275, 27.930260, 17.189594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.972788, 27.894852, 17.335178>,  <31.660307, 27.835838, 17.577818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972788, 27.894852, 17.335178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181989, 0.875650, 0.447344,
		0.597165, -0.459860, 0.657209,
		0.781201, 0.147533, -0.606597,
		32.207150, 27.939112, 17.153200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209538, 27.901905, 18.056002>,  <31.660307, 27.835838, 17.577818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209538, 27.901905, 18.056002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.341301, 28.072159, 17.718880>,  <32.420361, 28.174311, 17.516605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.341301, 28.072159, 17.718880>,  <32.209538, 27.901905, 18.056002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341301, 28.072159, 17.718880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180905, 0.847638, 0.498782,
		0.926695, -0.316771, 0.202219,
		0.329408, 0.425636, -0.842807,
		32.440125, 28.199850, 17.466038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860764, 28.230772, 18.190199>,  <32.209538, 27.901905, 18.056002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860764, 28.230772, 18.190199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.684135, 28.422371, 17.886730>,  <32.578159, 28.537331, 17.704649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.684135, 28.422371, 17.886730>,  <32.860764, 28.230772, 18.190199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684135, 28.422371, 17.886730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048622, 0.857103, 0.512845,
		0.895909, 0.189568, -0.401759,
		-0.441568, 0.478997, -0.758670,
		32.551666, 28.566071, 17.659130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291836, 28.902618, 18.096828>,  <32.860764, 28.230772, 18.190199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291836, 28.902618, 18.096828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.940659, 28.956791, 17.913147>,  <32.729950, 28.989294, 17.802938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.940659, 28.956791, 17.913147>,  <33.291836, 28.902618, 18.096828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940659, 28.956791, 17.913147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017054, 0.949698, 0.312701,
		0.478454, 0.282366, -0.831475,
		-0.877947, 0.135433, -0.459202,
		32.677273, 28.997421, 17.775387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380302, 29.608961, 17.825888>,  <33.291836, 28.902618, 18.096828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380302, 29.608961, 17.825888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.989639, 29.525101, 17.844574>,  <32.755241, 29.474785, 17.855785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.989639, 29.525101, 17.844574>,  <33.380302, 29.608961, 17.825888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989639, 29.525101, 17.844574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148167, 0.815050, 0.560125,
		-0.155505, 0.540130, -0.827090,
		-0.976660, -0.209649, 0.046715,
		32.696640, 29.462206, 17.858589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005970, 30.169935, 17.525539>,  <33.380302, 29.608961, 17.825888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005970, 30.169935, 17.525539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.769222, 29.981728, 17.787319>,  <32.627174, 29.868803, 17.944387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.769222, 29.981728, 17.787319>,  <33.005970, 30.169935, 17.525539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769222, 29.981728, 17.787319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137541, 0.858985, 0.493181,
		-0.794214, 0.201883, -0.573120,
		-0.591866, -0.470519, 0.654451,
		32.591663, 29.840572, 17.983654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523193, 30.629606, 17.622536>,  <33.005970, 30.169935, 17.525539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523193, 30.629606, 17.622536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.426876, 30.399307, 17.935081>,  <32.369083, 30.261127, 18.122608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.426876, 30.399307, 17.935081>,  <32.523193, 30.629606, 17.622536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426876, 30.399307, 17.935081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462458, 0.775852, 0.429169,
		-0.853316, -0.258005, -0.453084,
		-0.240798, -0.575749, 0.781364,
		32.354637, 30.226582, 18.169491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812702, 30.652489, 17.763044>,  <32.523193, 30.629606, 17.622536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812702, 30.652489, 17.763044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.971853, 30.550713, 18.115623>,  <32.067345, 30.489647, 18.327171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.971853, 30.550713, 18.115623>,  <31.812702, 30.652489, 17.763044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971853, 30.550713, 18.115623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505620, 0.740879, 0.442094,
		-0.765533, -0.621578, 0.166131,
		0.397879, -0.254438, 0.881450,
		32.091217, 30.474380, 18.380058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271875, 30.750223, 18.190905>,  <31.812702, 30.652489, 17.763044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271875, 30.750223, 18.190905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.571184, 30.717854, 18.454281>,  <31.750769, 30.698431, 18.612307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.571184, 30.717854, 18.454281>,  <31.271875, 30.750223, 18.190905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571184, 30.717854, 18.454281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520789, 0.543167, 0.658596,
		-0.410940, -0.835716, 0.364290,
		0.748270, -0.080925, 0.658440,
		31.795666, 30.693577, 18.651814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011379, 30.677849, 18.796833>,  <31.271875, 30.750223, 18.190905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011379, 30.677849, 18.796833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.373482, 30.799973, 18.915016>,  <31.590744, 30.873247, 18.985926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.373482, 30.799973, 18.915016>,  <31.011379, 30.677849, 18.796833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373482, 30.799973, 18.915016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424271, 0.686372, 0.590667,
		-0.022459, -0.660060, 0.750877,
		0.905257, 0.305309, 0.295459,
		31.645060, 30.891565, 19.003654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957033, 30.769009, 19.540445>,  <31.011379, 30.677849, 18.796833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957033, 30.769009, 19.540445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.255926, 30.985073, 19.385593>,  <31.435263, 31.114712, 19.292683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.255926, 30.985073, 19.385593>,  <30.957033, 30.769009, 19.540445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255926, 30.985073, 19.385593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438892, 0.838532, 0.322859,
		0.499015, -0.071343, 0.863651,
		0.747233, 0.540161, -0.387128,
		31.480097, 31.147121, 19.269455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135006, 31.259491, 20.020430>,  <30.957033, 30.769009, 19.540445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135006, 31.259491, 20.020430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.284822, 31.421276, 19.686691>,  <31.374712, 31.518347, 19.486448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.284822, 31.421276, 19.686691>,  <31.135006, 31.259491, 20.020430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284822, 31.421276, 19.686691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377621, 0.888375, 0.261136,
		0.846829, 0.217259, 0.485468,
		0.374544, 0.404461, -0.834343,
		31.397186, 31.542614, 19.436388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567751, 31.808170, 20.295631>,  <31.135006, 31.259491, 20.020430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567751, 31.808170, 20.295631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.488937, 31.886921, 19.911461>,  <31.441648, 31.934172, 19.680958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.488937, 31.886921, 19.911461>,  <31.567751, 31.808170, 20.295631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488937, 31.886921, 19.911461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296626, 0.921744, 0.249801,
		0.934447, 0.334107, -0.123217,
		-0.197035, 0.196876, -0.960425,
		31.429827, 31.945984, 19.623333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881535, 32.448650, 20.162367>,  <31.567751, 31.808170, 20.295631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881535, 32.448650, 20.162367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.620161, 32.438671, 19.859737>,  <31.463337, 32.432686, 19.678160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.620161, 32.438671, 19.859737>,  <31.881535, 32.448650, 20.162367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620161, 32.438671, 19.859737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376802, 0.877558, 0.296500,
		0.656540, 0.478821, -0.582825,
		-0.653434, -0.024945, -0.756573,
		31.424131, 32.431187, 19.632765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894537, 33.188370, 19.749903>,  <31.881535, 32.448650, 20.162367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894537, 33.188370, 19.749903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.541489, 33.031937, 19.645573>,  <31.329659, 32.938076, 19.582973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.541489, 33.031937, 19.645573>,  <31.894537, 33.188370, 19.749903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541489, 33.031937, 19.645573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456136, 0.846661, 0.274054,
		0.113653, 0.360858, -0.925669,
		-0.882623, -0.391085, -0.260826,
		31.276701, 32.914612, 19.567326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525967, 33.715099, 19.541489>,  <31.894537, 33.188370, 19.749903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525967, 33.715099, 19.541489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.228472, 33.452694, 19.592857>,  <31.049974, 33.295250, 19.623678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.228472, 33.452694, 19.592857>,  <31.525967, 33.715099, 19.541489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228472, 33.452694, 19.592857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639736, 0.754232, 0.147892,
		-0.193881, 0.027836, -0.980630,
		-0.743739, -0.656017, 0.128424,
		31.005350, 33.255890, 19.631384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980141, 34.040348, 19.204489>,  <31.525967, 33.715099, 19.541489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980141, 34.040348, 19.204489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.819778, 33.785526, 19.467831>,  <30.723560, 33.632633, 19.625835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.819778, 33.785526, 19.467831>,  <30.980141, 34.040348, 19.204489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819778, 33.785526, 19.467831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763197, 0.629767, 0.144646,
		-0.506759, -0.444466, -0.738678,
		-0.400905, -0.637058, 0.658356,
		30.699507, 33.594410, 19.665337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203869, 33.980118, 18.968983>,  <30.980141, 34.040348, 19.204489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203869, 33.980118, 18.968983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.250793, 33.876072, 19.352352>,  <30.278948, 33.813644, 19.582375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.250793, 33.876072, 19.352352>,  <30.203869, 33.980118, 18.968983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250793, 33.876072, 19.352352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744319, 0.615868, 0.258254,
		-0.657440, -0.743669, -0.121363,
		0.117312, -0.260119, 0.958424,
		30.285988, 33.798035, 19.639879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567530, 33.862392, 19.154001>,  <30.203869, 33.980118, 18.968983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567530, 33.862392, 19.154001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.736530, 33.911987, 19.513138>,  <29.837931, 33.941746, 19.728621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.736530, 33.911987, 19.513138>,  <29.567530, 33.862392, 19.154001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736530, 33.911987, 19.513138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714386, 0.655202, 0.245690,
		-0.557805, -0.745210, 0.365399,
		0.422501, 0.123989, 0.897842,
		29.863281, 33.949184, 19.782490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008205, 33.843822, 19.684267>,  <29.567530, 33.862392, 19.154001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008205, 33.843822, 19.684267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.315161, 34.034683, 19.855587>,  <29.499334, 34.149200, 19.958380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.315161, 34.034683, 19.855587>,  <29.008205, 33.843822, 19.684267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315161, 34.034683, 19.855587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604095, 0.761931, 0.233519,
		-0.214911, -0.437933, 0.872942,
		0.767387, 0.477154, 0.428300,
		29.545378, 34.177830, 19.984077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610552, 34.302086, 19.981144>,  <29.008205, 33.843822, 19.684267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610552, 34.302086, 19.981144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.975384, 34.406197, 20.107868>,  <29.194283, 34.468662, 20.183903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.975384, 34.406197, 20.107868>,  <28.610552, 34.302086, 19.981144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975384, 34.406197, 20.107868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372435, 0.849067, 0.374670,
		-0.171476, -0.459719, 0.871352,
		0.912079, 0.260275, 0.316810,
		29.249008, 34.484280, 20.202911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003050, 34.192657, 19.519135>,  <28.610552, 34.302086, 19.981144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003050, 34.192657, 19.519135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.664326, 34.143810, 19.312061>,  <27.461090, 34.114502, 19.187817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.664326, 34.143810, 19.312061>,  <28.003050, 34.192657, 19.519135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664326, 34.143810, 19.312061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295539, -0.917244, -0.267060,
		-0.442228, -0.379145, 0.812824,
		-0.846812, -0.122119, -0.517683,
		27.410282, 34.107174, 19.156755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839949, 33.572701, 19.642929>,  <28.003050, 34.192657, 19.519135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.839949, 33.572701, 19.642929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.614592, 33.650177, 19.321663>,  <27.479378, 33.696663, 19.128902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.614592, 33.650177, 19.321663>,  <27.839949, 33.572701, 19.642929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614592, 33.650177, 19.321663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148578, -0.932527, -0.329115,
		-0.812722, -0.304753, 0.496598,
		-0.563390, 0.193696, -0.803165,
		27.445574, 33.708286, 19.080713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476175, 32.856819, 19.643429>,  <27.839949, 33.572701, 19.642929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476175, 32.856819, 19.643429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.443092, 33.046795, 19.292980>,  <27.423243, 33.160782, 19.082710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.443092, 33.046795, 19.292980>,  <27.476175, 32.856819, 19.643429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443092, 33.046795, 19.292980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316465, -0.821113, -0.474997,
		-0.944992, -0.316547, -0.082393,
		-0.082705, 0.474943, -0.876122,
		27.418282, 33.189278, 19.030144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038698, 32.485519, 19.261011>,  <27.476175, 32.856819, 19.643429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038698, 32.485519, 19.261011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.249352, 32.698578, 18.995998>,  <27.375744, 32.826412, 18.836990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.249352, 32.698578, 18.995998>,  <27.038698, 32.485519, 19.261011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.249352, 32.698578, 18.995998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201320, -0.835338, -0.511548,
		-0.825909, 0.136018, -0.547151,
		0.526636, 0.532644, -0.662529,
		27.407343, 32.858372, 18.797239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819719, 32.235798, 18.475107>,  <27.038698, 32.485519, 19.261011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819719, 32.235798, 18.475107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.168949, 32.425121, 18.428268>,  <27.378487, 32.538715, 18.400166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.168949, 32.425121, 18.428268>,  <26.819719, 32.235798, 18.475107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168949, 32.425121, 18.428268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400100, -0.832720, -0.382750,
		-0.278670, 0.287319, -0.916401,
		0.873077, 0.473313, -0.117098,
		27.430872, 32.567116, 18.393139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982710, 32.194878, 17.771158>,  <26.819719, 32.235798, 18.475107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982710, 32.194878, 17.771158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.332384, 32.263474, 17.952877>,  <27.542189, 32.304630, 18.061909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.332384, 32.263474, 17.952877>,  <26.982710, 32.194878, 17.771158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332384, 32.263474, 17.952877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382545, -0.819463, -0.426777,
		0.299091, 0.546873, -0.781969,
		0.874188, 0.171493, 0.454297,
		27.594641, 32.314922, 18.089167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450626, 32.054955, 17.280636>,  <26.982710, 32.194878, 17.771158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450626, 32.054955, 17.280636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.665499, 32.031559, 17.617210>,  <27.794422, 32.017521, 17.819155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.665499, 32.031559, 17.617210>,  <27.450626, 32.054955, 17.280636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665499, 32.031559, 17.617210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437759, -0.833385, -0.337395,
		0.720975, 0.549589, -0.422075,
		0.537180, -0.058486, 0.841437,
		27.826653, 32.014011, 17.869642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133228, 31.903362, 17.095659>,  <27.450626, 32.054955, 17.280636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133228, 31.903362, 17.095659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.149168, 31.798141, 17.481243>,  <28.158731, 31.735008, 17.712593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.149168, 31.798141, 17.481243>,  <28.133228, 31.903362, 17.095659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149168, 31.798141, 17.481243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492008, -0.834501, -0.248064,
		0.869678, 0.484160, 0.096171,
		0.039848, -0.263052, 0.963958,
		28.161123, 31.719225, 17.770432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791204, 31.699333, 17.330235>,  <28.133228, 31.903362, 17.095659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791204, 31.699333, 17.330235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.569599, 31.520622, 17.611221>,  <28.436636, 31.413397, 17.779814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.569599, 31.520622, 17.611221>,  <28.791204, 31.699333, 17.330235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569599, 31.520622, 17.611221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462822, -0.866675, -0.186202,
		0.692003, 0.221960, 0.686925,
		-0.554011, -0.446776, 0.702469,
		28.403397, 31.386589, 17.821962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326759, 31.338120, 17.774548>,  <28.791204, 31.699333, 17.330235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326759, 31.338120, 17.774548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.966862, 31.174267, 17.834766>,  <28.750923, 31.075954, 17.870897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.966862, 31.174267, 17.834766>,  <29.326759, 31.338120, 17.774548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966862, 31.174267, 17.834766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388828, -0.909066, -0.149707,
		0.198184, -0.076160, 0.977202,
		-0.899742, -0.409633, 0.150549,
		28.696939, 31.051376, 17.879930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479181, 30.811815, 18.303461>,  <29.326759, 31.338120, 17.774548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479181, 30.811815, 18.303461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.138752, 30.709740, 18.119919>,  <28.934494, 30.648495, 18.009792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.138752, 30.709740, 18.119919>,  <29.479181, 30.811815, 18.303461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138752, 30.709740, 18.119919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389502, -0.892903, -0.225858,
		-0.352078, -0.370948, 0.859324,
		-0.851075, -0.255189, -0.458857,
		28.883429, 30.633183, 17.982262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439835, 30.163969, 18.576981>,  <29.479181, 30.811815, 18.303461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439835, 30.163969, 18.576981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.203743, 30.168701, 18.254120>,  <29.062088, 30.171539, 18.060404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.203743, 30.168701, 18.254120>,  <29.439835, 30.163969, 18.576981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203743, 30.168701, 18.254120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244242, -0.950409, -0.192531,
		-0.769400, -0.310777, 0.558068,
		-0.590228, 0.011829, -0.807150,
		29.026674, 30.172251, 18.011974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859461, 29.695007, 18.568727>,  <29.439835, 30.163969, 18.576981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859461, 29.695007, 18.568727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.862906, 29.717171, 18.169357>,  <28.864971, 29.730469, 17.929735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.862906, 29.717171, 18.169357>,  <28.859461, 29.695007, 18.568727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862906, 29.717171, 18.169357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247925, -0.967407, -0.051548,
		-0.968741, -0.247091, -0.022067,
		0.008611, 0.055408, -0.998427,
		28.865488, 29.733793, 17.869829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668444, 28.998346, 18.286436>,  <28.859461, 29.695007, 18.568727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668444, 28.998346, 18.286436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.826946, 29.175758, 17.964874>,  <28.922047, 29.282206, 17.771936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.826946, 29.175758, 17.964874>,  <28.668444, 28.998346, 18.286436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826946, 29.175758, 17.964874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286540, -0.891587, -0.350668,
		-0.872283, -0.091396, -0.480384,
		0.396255, 0.443531, -0.803905,
		28.945822, 29.308817, 17.723703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404457, 28.672867, 17.816570>,  <28.668444, 28.998346, 18.286436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404457, 28.672867, 17.816570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.728930, 28.822086, 17.636429>,  <28.923613, 28.911617, 17.528343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.728930, 28.822086, 17.636429>,  <28.404457, 28.672867, 17.816570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728930, 28.822086, 17.636429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153942, -0.879163, -0.450971,
		-0.564169, 0.296491, -0.770589,
		0.811181, 0.373049, -0.450354,
		28.972284, 28.934002, 17.501322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338537, 28.454889, 17.043421>,  <28.404457, 28.672867, 17.816570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338537, 28.454889, 17.043421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.725098, 28.514175, 17.127422>,  <28.957033, 28.549747, 17.177822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.725098, 28.514175, 17.127422>,  <28.338537, 28.454889, 17.043421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725098, 28.514175, 17.127422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218737, -0.903296, -0.369066,
		0.134993, 0.402601, -0.905367,
		0.966401, 0.148216, 0.210002,
		29.015018, 28.558640, 17.190424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658133, 28.224564, 16.465212>,  <28.338537, 28.454889, 17.043421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658133, 28.224564, 16.465212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.944256, 28.211201, 16.744415>,  <29.115931, 28.203184, 16.911938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.944256, 28.211201, 16.744415>,  <28.658133, 28.224564, 16.465212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944256, 28.211201, 16.744415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242020, -0.925196, -0.292298,
		0.655559, 0.378016, -0.653718,
		0.715310, -0.033406, 0.698008,
		29.158850, 28.201180, 16.953817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.257902, 27.818007, 16.099485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.334517, 27.821724, 16.492062>,  <29.380486, 27.823956, 16.727608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.334517, 27.821724, 16.492062>,  <29.257902, 27.818007, 16.099485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334517, 27.821724, 16.492062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344385, -0.937014, -0.058334,
		0.919083, 0.349167, -0.182672,
		0.191535, 0.009295, 0.981442,
		29.391977, 27.824512, 16.786493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889915, 27.543694, 16.115843>,  <29.257902, 27.818007, 16.099485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889915, 27.543694, 16.115843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.743347, 27.483368, 16.483101>,  <29.655407, 27.447172, 16.703455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.743347, 27.483368, 16.483101>,  <29.889915, 27.543694, 16.115843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743347, 27.483368, 16.483101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412071, -0.911031, 0.014807,
		0.834226, 0.383767, 0.395967,
		-0.366421, -0.150814, 0.918145,
		29.633421, 27.438124, 16.758545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471924, 27.270721, 16.579634>,  <29.889915, 27.543694, 16.115843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471924, 27.270721, 16.579634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.127327, 27.162621, 16.751583>,  <29.920568, 27.097759, 16.854753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.127327, 27.162621, 16.751583>,  <30.471924, 27.270721, 16.579634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127327, 27.162621, 16.751583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332797, -0.939928, 0.076032,
		0.383504, 0.208562, 0.899681,
		-0.861493, -0.270253, 0.429875,
		29.868879, 27.081545, 16.880545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625345, 26.953466, 17.174175>,  <30.471924, 27.270721, 16.579634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625345, 26.953466, 17.174175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.254515, 26.816891, 17.112278>,  <30.032017, 26.734945, 17.075140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.254515, 26.816891, 17.112278>,  <30.625345, 26.953466, 17.174175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254515, 26.816891, 17.112278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273366, -0.898231, 0.344168,
		-0.256508, 0.276769, 0.926068,
		-0.927079, -0.341438, -0.154744,
		29.976391, 26.714458, 17.065855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490133, 26.584581, 17.805824>,  <30.625345, 26.953466, 17.174175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490133, 26.584581, 17.805824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.263969, 26.470535, 17.496239>,  <30.128271, 26.402107, 17.310488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.263969, 26.470535, 17.496239>,  <30.490133, 26.584581, 17.805824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263969, 26.470535, 17.496239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243064, -0.954282, 0.173971,
		-0.788182, -0.089758, 0.608862,
		-0.565410, -0.285114, -0.773965,
		30.094347, 26.385002, 17.264050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108610, 25.975908, 18.024843>,  <30.490133, 26.584581, 17.805824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108610, 25.975908, 18.024843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.050200, 25.982170, 17.629181>,  <30.015152, 25.985928, 17.391783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.050200, 25.982170, 17.629181>,  <30.108610, 25.975908, 18.024843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050200, 25.982170, 17.629181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123824, -0.991722, -0.033975,
		-0.981500, -0.127443, 0.142881,
		-0.146029, 0.015654, -0.989157,
		30.006392, 25.986866, 17.332434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803993, 25.367331, 17.947422>,  <30.108610, 25.975908, 18.024843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803993, 25.367331, 17.947422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.907795, 25.460068, 17.572422>,  <29.970076, 25.515711, 17.347422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.907795, 25.460068, 17.572422>,  <29.803993, 25.367331, 17.947422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907795, 25.460068, 17.572422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127243, -0.970501, -0.204783,
		-0.957323, -0.066148, -0.281349,
		0.259504, 0.231843, -0.937500,
		29.985645, 25.529621, 17.291172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425087, 24.784281, 17.587900>,  <29.803993, 25.367331, 17.947422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425087, 24.784281, 17.587900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.693584, 24.936573, 17.333508>,  <29.854683, 25.027948, 17.180872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.693584, 24.936573, 17.333508>,  <29.425087, 24.784281, 17.587900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693584, 24.936573, 17.333508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077971, -0.889510, -0.450213,
		-0.737123, 0.252615, -0.626765,
		0.671245, 0.380732, -0.635982,
		29.894958, 25.050793, 17.142714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115522, 24.789267, 16.905090>,  <29.425087, 24.784281, 17.587900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115522, 24.789267, 16.905090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.515005, 24.771801, 16.915497>,  <29.754696, 24.761322, 16.921740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.515005, 24.771801, 16.915497>,  <29.115522, 24.789267, 16.905090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515005, 24.771801, 16.915497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033773, -0.952623, -0.302274,
		0.037980, 0.301004, -0.952866,
		0.998708, -0.043662, 0.026015,
		29.814617, 24.758703, 16.923302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235697, 24.436836, 16.300997>,  <29.115522, 24.789267, 16.905090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235697, 24.436836, 16.300997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.580845, 24.420906, 16.502541>,  <29.787933, 24.411348, 16.623466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.580845, 24.420906, 16.502541>,  <29.235697, 24.436836, 16.300997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580845, 24.420906, 16.502541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130764, -0.945358, -0.298661,
		0.488220, 0.323592, -0.810512,
		0.862868, -0.039827, 0.503857,
		29.839705, 24.408958, 16.653698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626757, 24.078066, 15.786838>,  <29.235697, 24.436836, 16.300997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626757, 24.078066, 15.786838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.782557, 24.062767, 16.154930>,  <29.876036, 24.053589, 16.375786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.782557, 24.062767, 16.154930>,  <29.626757, 24.078066, 15.786838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782557, 24.062767, 16.154930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131976, -0.986509, -0.096860,
		0.911522, 0.159175, -0.379198,
		0.389500, -0.038245, 0.920232,
		29.899406, 24.051294, 16.431000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161896, 23.581444, 15.753311>,  <29.626757, 24.078066, 15.786838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161896, 23.581444, 15.753311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.144650, 23.620407, 16.151035>,  <30.134302, 23.643785, 16.389669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.144650, 23.620407, 16.151035>,  <30.161896, 23.581444, 15.753311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144650, 23.620407, 16.151035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109557, -0.988773, 0.101615,
		0.993045, 0.113314, 0.031960,
		-0.043116, 0.097407, 0.994310,
		30.131714, 23.649630, 16.449327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789423, 23.255272, 16.119867>,  <30.161896, 23.581444, 15.753311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789423, 23.255272, 16.119867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.479433, 23.267960, 16.372345>,  <30.293440, 23.275572, 16.523832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.479433, 23.267960, 16.372345>,  <30.789423, 23.255272, 16.119867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479433, 23.267960, 16.372345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004554, -0.998433, 0.055769,
		0.631976, 0.046094, 0.773616,
		-0.774974, 0.031721, 0.631196,
		30.246941, 23.277475, 16.561705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866030, 22.669319, 16.549137>,  <30.789423, 23.255272, 16.119867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866030, 22.669319, 16.549137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.485319, 22.733288, 16.653862>,  <30.256893, 22.771669, 16.716696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.485319, 22.733288, 16.653862>,  <30.866030, 22.669319, 16.549137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485319, 22.733288, 16.653862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091966, -0.962869, 0.253823,
		0.292681, 0.217505, 0.931144,
		-0.951777, 0.159923, 0.261810,
		30.199785, 22.781265, 16.732405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728571, 22.273985, 17.237843>,  <30.866030, 22.669319, 16.549137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728571, 22.273985, 17.237843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.362463, 22.344261, 17.092838>,  <30.142797, 22.386427, 17.005835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.362463, 22.344261, 17.092838>,  <30.728571, 22.273985, 17.237843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362463, 22.344261, 17.092838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251305, -0.952330, 0.172954,
		-0.314845, 0.249400, 0.915791,
		-0.915270, 0.175689, -0.362512,
		30.087883, 22.396969, 16.984085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205795, 22.065466, 17.702360>,  <30.728571, 22.273985, 17.237843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205795, 22.065466, 17.702360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.020113, 22.057297, 17.348164>,  <29.908705, 22.052395, 17.135645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.020113, 22.057297, 17.348164>,  <30.205795, 22.065466, 17.702360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020113, 22.057297, 17.348164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288737, -0.941633, 0.173084,
		-0.837345, 0.336021, 0.431212,
		-0.464204, -0.020424, -0.885493,
		29.880852, 22.051170, 17.082516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580921, 21.706703, 17.780922>,  <30.205795, 22.065466, 17.702360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580921, 21.706703, 17.780922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.617889, 21.651573, 17.386467>,  <29.640070, 21.618496, 17.149794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.617889, 21.651573, 17.386467>,  <29.580921, 21.706703, 17.780922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617889, 21.651573, 17.386467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165688, -0.978695, 0.121256,
		-0.981838, 0.152183, -0.113289,
		0.092422, -0.137825, -0.986135,
		29.645617, 21.610226, 17.090626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016073, 21.308056, 17.480158>,  <29.580921, 21.706703, 17.780922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016073, 21.308056, 17.480158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.302876, 21.260212, 17.205467>,  <29.474957, 21.231506, 17.040653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.302876, 21.260212, 17.205467>,  <29.016073, 21.308056, 17.480158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302876, 21.260212, 17.205467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141987, -0.989575, 0.024111,
		-0.682453, 0.080219, -0.726514,
		0.717006, -0.119610, -0.686728,
		29.517977, 21.224329, 16.999449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908911, 20.667742, 17.231796>,  <29.016073, 21.308056, 17.480158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908911, 20.667742, 17.231796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.260923, 20.749767, 17.060452>,  <29.472132, 20.798983, 16.957645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.260923, 20.749767, 17.060452>,  <28.908911, 20.667742, 17.231796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260923, 20.749767, 17.060452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207305, -0.977374, -0.041994,
		-0.427280, -0.051846, -0.902632,
		0.880032, 0.205063, -0.428360,
		29.524933, 20.811287, 16.931944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928556, 20.266586, 16.602674>,  <28.908911, 20.667742, 17.231796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928556, 20.266586, 16.602674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.305885, 20.341526, 16.712250>,  <29.532282, 20.386490, 16.777996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.305885, 20.341526, 16.712250>,  <28.928556, 20.266586, 16.602674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305885, 20.341526, 16.712250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221899, -0.969842, -0.100834,
		0.246788, 0.155906, -0.956446,
		0.943322, 0.187350, 0.273941,
		29.588882, 20.397732, 16.794432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502165, 19.984081, 16.090221>,  <28.928556, 20.266586, 16.602674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.502165, 19.984081, 16.090221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.699163, 20.006886, 16.437599>,  <29.817362, 20.020569, 16.646027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.699163, 20.006886, 16.437599>,  <29.502165, 19.984081, 16.090221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699163, 20.006886, 16.437599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279285, -0.955431, -0.095662,
		0.824286, 0.289657, -0.486468,
		0.492496, 0.057010, 0.868445,
		29.846912, 20.023989, 16.698133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149216, 19.690819, 15.932753>,  <29.502165, 19.984081, 16.090221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149216, 19.690819, 15.932753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.137377, 19.673702, 16.332211>,  <30.130274, 19.663431, 16.571886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.137377, 19.673702, 16.332211>,  <30.149216, 19.690819, 15.932753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137377, 19.673702, 16.332211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213650, -0.976265, -0.035503,
		0.976462, 0.212310, 0.038035,
		-0.029594, -0.042793, 0.998645,
		30.128498, 19.660864, 16.631804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789860, 19.413326, 16.147234>,  <30.149216, 19.690819, 15.932753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789860, 19.413326, 16.147234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.518129, 19.321201, 16.425938>,  <30.355091, 19.265926, 16.593161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.518129, 19.321201, 16.425938>,  <30.789860, 19.413326, 16.147234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518129, 19.321201, 16.425938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297214, -0.954464, -0.025717,
		0.670955, 0.189616, 0.716844,
		-0.679326, -0.230311, 0.696759,
		30.314331, 19.252108, 16.634966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251478, 19.938332, 16.432339>,  <30.789860, 19.413326, 16.147234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251478, 19.938332, 16.432339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.409479, 20.279346, 16.569248>,  <31.504280, 20.483955, 16.651394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.409479, 20.279346, 16.569248>,  <31.251478, 19.938332, 16.432339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409479, 20.279346, 16.569248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300438, 0.471963, -0.828847,
		-0.868164, 0.224567, 0.442562,
		0.395005, 0.852538, 0.342273,
		31.527981, 20.535109, 16.671930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917196, 19.806931, 16.570507>,  <31.251478, 19.938332, 16.432339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917196, 19.806931, 16.570507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.268528, 19.617783, 16.542408>,  <32.479328, 19.504293, 16.525549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.268528, 19.617783, 16.542408>,  <31.917196, 19.806931, 16.570507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268528, 19.617783, 16.542408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465284, 0.811830, 0.352764,
		-0.109782, -0.342528, 0.933072,
		0.878327, -0.472870, -0.070248,
		32.532024, 19.475922, 16.521334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286247, 19.904396, 17.226385>,  <31.917196, 19.806931, 16.570507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286247, 19.904396, 17.226385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.524212, 19.848904, 16.909695>,  <32.666992, 19.815607, 16.719681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.524212, 19.848904, 16.909695>,  <32.286247, 19.904396, 17.226385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524212, 19.848904, 16.909695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482811, 0.849177, 0.213991,
		0.642628, -0.509560, 0.572169,
		0.594914, -0.138733, -0.791726,
		32.702686, 19.807283, 16.672176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875076, 20.193432, 17.443829>,  <32.286247, 19.904396, 17.226385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875076, 20.193432, 17.443829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.971992, 20.184303, 17.055855>,  <33.030144, 20.178827, 16.823071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.971992, 20.184303, 17.055855>,  <32.875076, 20.193432, 17.443829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971992, 20.184303, 17.055855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510531, 0.853118, 0.107459,
		0.825017, -0.521219, 0.218353,
		0.242290, -0.022820, -0.969935,
		33.044682, 20.177458, 16.764874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643414, 20.410488, 17.341717>,  <32.875076, 20.193432, 17.443829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643414, 20.410488, 17.341717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.485477, 20.449371, 16.976280>,  <33.390717, 20.472702, 16.757017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.485477, 20.449371, 16.976280>,  <33.643414, 20.410488, 17.341717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485477, 20.449371, 16.976280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426269, 0.900263, -0.088435,
		0.813877, -0.424354, -0.396897,
		-0.394840, 0.097209, -0.913593,
		33.367027, 20.478535, 16.702202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127205, 20.751680, 16.919163>,  <33.643414, 20.410488, 17.341717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127205, 20.751680, 16.919163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.773899, 20.813881, 16.742226>,  <33.561916, 20.851202, 16.636065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.773899, 20.813881, 16.742226>,  <34.127205, 20.751680, 16.919163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773899, 20.813881, 16.742226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171639, 0.985153, 0.003599,
		0.436333, -0.072744, -0.896840,
		-0.883263, 0.155503, -0.442341,
		33.508919, 20.860533, 16.609524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213646, 21.200472, 16.285273>,  <34.127205, 20.751680, 16.919163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213646, 21.200472, 16.285273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.836327, 21.236298, 16.413128>,  <33.609936, 21.257793, 16.489841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.836327, 21.236298, 16.413128>,  <34.213646, 21.200472, 16.285273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836327, 21.236298, 16.413128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094165, 0.995556, -0.001061,
		-0.318313, 0.029098, -0.947539,
		-0.943297, 0.089563, 0.319638,
		33.553337, 21.263166, 16.509020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004044, 21.863749, 15.979816>,  <34.213646, 21.200472, 16.285273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004044, 21.863749, 15.979816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.703201, 21.804195, 16.236618>,  <33.522697, 21.768463, 16.390699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.703201, 21.804195, 16.236618>,  <34.004044, 21.863749, 15.979816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703201, 21.804195, 16.236618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004138, 0.975195, 0.221308,
		-0.659028, 0.163791, -0.734067,
		-0.752107, -0.148885, 0.642003,
		33.477570, 21.759529, 16.429218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649948, 22.399672, 15.991557>,  <34.004044, 21.863749, 15.979816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649948, 22.399672, 15.991557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.499653, 22.271114, 16.339241>,  <33.409477, 22.193979, 16.547852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.499653, 22.271114, 16.339241>,  <33.649948, 22.399672, 15.991557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499653, 22.271114, 16.339241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230882, 0.940826, 0.248070,
		-0.897504, -0.107476, -0.427710,
		-0.375739, -0.321394, 0.869210,
		33.386932, 22.174696, 16.600004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010269, 22.729891, 16.075109>,  <33.649948, 22.399672, 15.991557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010269, 22.729891, 16.075109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.095669, 22.643288, 16.456169>,  <33.146908, 22.591326, 16.684805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.095669, 22.643288, 16.456169>,  <33.010269, 22.729891, 16.075109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095669, 22.643288, 16.456169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278320, 0.921246, 0.271744,
		-0.936460, -0.323158, 0.136424,
		0.213496, -0.216508, 0.952651,
		33.159718, 22.578335, 16.741964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439659, 22.817408, 16.392717>,  <33.010269, 22.729891, 16.075109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439659, 22.817408, 16.392717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.737202, 22.862423, 16.656235>,  <32.915726, 22.889433, 16.814346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.737202, 22.862423, 16.656235>,  <32.439659, 22.817408, 16.392717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737202, 22.862423, 16.656235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297072, 0.938666, 0.175083,
		-0.598686, -0.325946, 0.731666,
		0.743858, 0.112538, 0.658795,
		32.960358, 22.896185, 16.853874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085117, 23.079283, 17.004257>,  <32.439659, 22.817408, 16.392717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085117, 23.079283, 17.004257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.476891, 23.143562, 17.053070>,  <32.711952, 23.182131, 17.082357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.476891, 23.143562, 17.053070>,  <32.085117, 23.079283, 17.004257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476891, 23.143562, 17.053070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172853, 0.980207, 0.096516,
		-0.104107, -0.115624, 0.987822,
		0.979430, 0.160700, 0.122033,
		32.770721, 23.191772, 17.089680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107895, 23.626740, 17.513617>,  <32.085117, 23.079283, 17.004257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107895, 23.626740, 17.513617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.469242, 23.623585, 17.342098>,  <32.686050, 23.621693, 17.239187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.469242, 23.623585, 17.342098>,  <32.107895, 23.626740, 17.513617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469242, 23.623585, 17.342098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057069, 0.988729, -0.138413,
		0.425053, 0.149509, 0.892736,
		0.903368, -0.007886, -0.428795,
		32.740253, 23.621220, 17.213459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388977, 24.134863, 17.845646>,  <32.107895, 23.626740, 17.513617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388977, 24.134863, 17.845646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.630428, 24.104214, 17.528217>,  <32.775299, 24.085825, 17.337759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.630428, 24.104214, 17.528217>,  <32.388977, 24.134863, 17.845646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630428, 24.104214, 17.528217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000147, 0.995360, -0.096216,
		0.797263, 0.058196, 0.600820,
		0.603632, -0.076621, -0.793573,
		32.811520, 24.081228, 17.290146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741234, 24.704079, 17.912834>,  <32.388977, 24.134863, 17.845646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741234, 24.704079, 17.912834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.818699, 24.611221, 17.531551>,  <32.865177, 24.555506, 17.302782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.818699, 24.611221, 17.531551>,  <32.741234, 24.704079, 17.912834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818699, 24.611221, 17.531551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085274, 0.963941, -0.252084,
		0.977355, 0.130103, 0.166883,
		0.193662, -0.232145, -0.953207,
		32.876797, 24.541578, 17.245590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276600, 25.146101, 17.744740>,  <32.741234, 24.704079, 17.912834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276600, 25.146101, 17.744740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.108280, 25.032162, 17.400230>,  <33.007290, 24.963799, 17.193525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.108280, 25.032162, 17.400230>,  <33.276600, 25.146101, 17.744740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108280, 25.032162, 17.400230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019443, 0.952036, -0.305369,
		0.906947, -0.111752, -0.406151,
		-0.420796, -0.284850, -0.861273,
		32.982040, 24.946707, 17.141848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498280, 25.537109, 17.265574>,  <33.276600, 25.146101, 17.744740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498280, 25.537109, 17.265574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.174801, 25.415646, 17.064060>,  <32.980713, 25.342768, 16.943151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.174801, 25.415646, 17.064060>,  <33.498280, 25.537109, 17.265574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174801, 25.415646, 17.064060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131996, 0.928288, -0.347647,
		0.573221, -0.214645, -0.790787,
		-0.808699, -0.303660, -0.503782,
		32.932190, 25.324547, 16.912926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554710, 25.703201, 16.626028>,  <33.498280, 25.537109, 17.265574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554710, 25.703201, 16.626028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.157413, 25.657440, 16.633793>,  <32.919033, 25.629984, 16.638451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.157413, 25.657440, 16.633793>,  <33.554710, 25.703201, 16.626028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157413, 25.657440, 16.633793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116034, 0.980162, -0.160684,
		-0.000643, -0.161851, -0.986815,
		-0.993245, -0.114401, 0.019410,
		32.859440, 25.623119, 16.639616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282917, 26.057674, 16.015406>,  <33.554710, 25.703201, 16.626028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282917, 26.057674, 16.015406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.962429, 26.023178, 16.252254>,  <32.770138, 26.002480, 16.394363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.962429, 26.023178, 16.252254>,  <33.282917, 26.057674, 16.015406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962429, 26.023178, 16.252254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225044, 0.960337, -0.164643,
		-0.554436, -0.265169, -0.788851,
		-0.801221, -0.086242, 0.592121,
		32.722061, 25.997305, 16.429892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975399, 26.551975, 15.745527>,  <33.282917, 26.057674, 16.015406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975399, 26.551975, 15.745527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.812881, 26.491459, 16.105980>,  <32.715370, 26.455149, 16.322250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.812881, 26.491459, 16.105980>,  <32.975399, 26.551975, 15.745527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812881, 26.491459, 16.105980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340828, 0.940116, 0.004164,
		-0.847798, -0.305439, -0.433528,
		-0.406295, -0.151289, 0.901130,
		32.690994, 26.446072, 16.376320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160255, 26.796335, 15.792908>,  <32.975399, 26.551975, 15.745527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160255, 26.796335, 15.792908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335617, 26.800636, 16.152393>,  <32.440834, 26.803217, 16.368084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335617, 26.800636, 16.152393>,  <32.160255, 26.796335, 15.792908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335617, 26.800636, 16.152393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257517, 0.959509, 0.114141,
		-0.861096, -0.281474, 0.423421,
		0.438404, 0.010752, 0.898714,
		32.467140, 26.803862, 16.422007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<18.853138, 36.503357, 14.742872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.190189, 36.521812, 14.528266>,  <19.392420, 36.532887, 14.399502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.190189, 36.521812, 14.528266>,  <18.853138, 36.503357, 14.742872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.190189, 36.521812, 14.528266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535118, 0.039698, 0.843844,
		0.060228, -0.998146, 0.008764,
		0.842628, 0.046133, -0.536517,
		19.442978, 36.535656, 14.367311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.333921, 35.831299, 14.956435>,  <18.853138, 36.503357, 14.742872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.333921, 35.831299, 14.956435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.574196, 36.109997, 14.799607>,  <19.718361, 36.277218, 14.705510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.574196, 36.109997, 14.799607>,  <19.333921, 35.831299, 14.956435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.574196, 36.109997, 14.799607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664696, -0.162736, 0.729175,
		0.444247, -0.698613, -0.560878,
		0.600686, 0.696747, -0.392070,
		19.754402, 36.319019, 14.681986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.947496, 35.559521, 15.008739>,  <19.333921, 35.831299, 14.956435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.947496, 35.559521, 15.008739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.997366, 35.954956, 14.974933>,  <20.027287, 36.192219, 14.954649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.997366, 35.954956, 14.974933>,  <19.947496, 35.559521, 15.008739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.997366, 35.954956, 14.974933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487943, 0.013080, 0.872778,
		0.863926, -0.150050, -0.480746,
		0.124672, 0.988592, -0.084516,
		20.034767, 36.251534, 14.949577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.612118, 35.626019, 15.112826>,  <19.947496, 35.559521, 15.008739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.612118, 35.626019, 15.112826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.470461, 35.992313, 15.188727>,  <20.385468, 36.212090, 15.234268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.470461, 35.992313, 15.188727>,  <20.612118, 35.626019, 15.112826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.470461, 35.992313, 15.188727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491691, 0.009726, 0.870715,
		0.795502, 0.401656, -0.453706,
		-0.354141, 0.915739, 0.189754,
		20.364218, 36.267036, 15.245653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.158892, 36.170689, 15.308350>,  <20.612118, 35.626019, 15.112826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.158892, 36.170689, 15.308350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.806765, 36.271183, 15.469306>,  <20.595488, 36.331482, 15.565880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.806765, 36.271183, 15.469306>,  <21.158892, 36.170689, 15.308350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.806765, 36.271183, 15.469306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447400, 0.157709, 0.880319,
		0.157709, 0.954991, -0.251239,
		-0.880319, 0.251239, 0.402391,
		20.542669, 36.346554, 15.590023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.433054, 36.539543, 15.772770>,  <21.158892, 36.170689, 15.308350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.433054, 36.539543, 15.772770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.051281, 36.513142, 15.889182>,  <20.822216, 36.497303, 15.959029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.051281, 36.513142, 15.889182>,  <21.433054, 36.539543, 15.772770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.051281, 36.513142, 15.889182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276065, 0.175080, 0.945058,
		-0.113328, 0.982340, -0.148882,
		-0.954434, -0.066001, 0.291031,
		20.764950, 36.493340, 15.976492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.301250, 37.026703, 16.211222>,  <21.433054, 36.539543, 15.772770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.301250, 37.026703, 16.211222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.968590, 36.823715, 16.301407>,  <20.768993, 36.701923, 16.355518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.968590, 36.823715, 16.301407>,  <21.301250, 37.026703, 16.211222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.968590, 36.823715, 16.301407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239354, 0.038768, 0.970158,
		-0.501067, 0.860797, 0.089224,
		-0.831650, -0.507470, 0.225461,
		20.719095, 36.671474, 16.369045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.010977, 37.452396, 16.746212>,  <21.301250, 37.026703, 16.211222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.010977, 37.452396, 16.746212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.829748, 37.097599, 16.781921>,  <20.721010, 36.884720, 16.803347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.829748, 37.097599, 16.781921>,  <21.010977, 37.452396, 16.746212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.829748, 37.097599, 16.781921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151760, 0.021939, 0.988174,
		-0.878462, 0.461262, 0.124670,
		-0.453072, -0.886993, 0.089274,
		20.693827, 36.831501, 16.808704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.523581, 37.519604, 17.291431>,  <21.010977, 37.452396, 16.746212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.523581, 37.519604, 17.291431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.623278, 37.132679, 17.272758>,  <20.683096, 36.900524, 17.261555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.623278, 37.132679, 17.272758>,  <20.523581, 37.519604, 17.291431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.623278, 37.132679, 17.272758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139384, -0.011870, 0.990167,
		-0.958358, -0.253298, 0.131870,
		0.249242, -0.967316, -0.046682,
		20.698050, 36.842484, 17.258755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.324810, 37.177616, 17.966566>,  <20.523581, 37.519604, 17.291431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.324810, 37.177616, 17.966566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.551674, 36.881481, 17.822212>,  <20.687792, 36.703800, 17.735600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.551674, 36.881481, 17.822212>,  <20.324810, 37.177616, 17.966566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.551674, 36.881481, 17.822212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265555, -0.250393, 0.931013,
		-0.779623, -0.623865, 0.054587,
		0.567158, -0.740335, -0.360882,
		20.721821, 36.659382, 17.713947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.137747, 36.521076, 18.304379>,  <20.324810, 37.177616, 17.966566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.137747, 36.521076, 18.304379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.508524, 36.440643, 18.177673>,  <20.730991, 36.392384, 18.101650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.508524, 36.440643, 18.177673>,  <20.137747, 36.521076, 18.304379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.508524, 36.440643, 18.177673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116031, -0.649234, 0.751686,
		-0.356807, -0.733526, -0.578471,
		0.926944, -0.201086, -0.316763,
		20.786608, 36.380318, 18.082644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.265392, 35.724777, 18.402269>,  <20.137747, 36.521076, 18.304379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.265392, 35.724777, 18.402269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.626585, 35.892803, 18.366112>,  <20.843302, 35.993618, 18.344418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.626585, 35.892803, 18.366112>,  <20.265392, 35.724777, 18.402269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.626585, 35.892803, 18.366112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282010, -0.420669, 0.862269,
		0.324180, -0.804106, -0.498318,
		0.902983, 0.420061, -0.090394,
		20.897480, 36.018822, 18.338993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.713770, 35.237347, 18.742607>,  <20.265392, 35.724777, 18.402269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.713770, 35.237347, 18.742607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.899158, 35.591579, 18.754887>,  <21.010391, 35.804119, 18.762255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.899158, 35.591579, 18.754887>,  <20.713770, 35.237347, 18.742607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.899158, 35.591579, 18.754887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395705, -0.237843, 0.887044,
		0.792849, -0.398974, -0.460662,
		0.463473, 0.885579, 0.030698,
		21.038200, 35.857254, 18.764095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.285057, 35.043285, 19.124159>,  <20.713770, 35.237347, 18.742607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.285057, 35.043285, 19.124159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.261705, 35.441841, 19.148788>,  <21.247694, 35.680977, 19.163567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.261705, 35.441841, 19.148788>,  <21.285057, 35.043285, 19.124159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.261705, 35.441841, 19.148788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322692, -0.039532, 0.945678,
		0.944702, 0.075078, -0.319220,
		-0.058380, 0.996394, 0.061573,
		21.244192, 35.740761, 19.167261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.884071, 35.294060, 19.275152>,  <21.285057, 35.043285, 19.124159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.884071, 35.294060, 19.275152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.631319, 35.567001, 19.422188>,  <21.479668, 35.730766, 19.510408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.631319, 35.567001, 19.422188>,  <21.884071, 35.294060, 19.275152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.631319, 35.567001, 19.422188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364184, -0.157260, 0.917954,
		0.684177, 0.713906, -0.149133,
		-0.631880, 0.682355, 0.367587,
		21.441755, 35.771709, 19.532463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.205074, 35.316910, 19.970280>,  <21.884071, 35.294060, 19.275152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.205074, 35.316910, 19.970280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.882175, 35.552692, 19.982250>,  <21.688437, 35.694160, 19.989431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.882175, 35.552692, 19.982250>,  <22.205074, 35.316910, 19.970280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.882175, 35.552692, 19.982250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237539, 0.278056, 0.930731,
		0.540302, 0.758438, -0.364479,
		-0.807247, 0.589454, 0.029924,
		21.640001, 35.729530, 19.991228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.446793, 35.940853, 20.255531>,  <22.205074, 35.316910, 19.970280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.446793, 35.940853, 20.255531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.055483, 35.886616, 20.318264>,  <21.820698, 35.854073, 20.355904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.055483, 35.886616, 20.318264>,  <22.446793, 35.940853, 20.255531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.055483, 35.886616, 20.318264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110828, 0.297288, 0.948334,
		-0.175213, 0.945111, -0.275802,
		-0.978273, -0.135594, 0.156834,
		21.762001, 35.845936, 20.365314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.296244, 36.494366, 20.715712>,  <22.446793, 35.940853, 20.255531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.296244, 36.494366, 20.715712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.974319, 36.261665, 20.762779>,  <21.781164, 36.122044, 20.791019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.974319, 36.261665, 20.762779>,  <22.296244, 36.494366, 20.715712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.974319, 36.261665, 20.762779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046053, 0.258861, 0.964816,
		-0.591742, 0.771076, -0.235125,
		-0.804811, -0.581750, 0.117669,
		21.732876, 36.087139, 20.798080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.776546, 36.803425, 21.064322>,  <22.296244, 36.494366, 20.715712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.776546, 36.803425, 21.064322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.678364, 36.420773, 21.127079>,  <21.619453, 36.191181, 21.164734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.678364, 36.420773, 21.127079>,  <21.776546, 36.803425, 21.064322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.678364, 36.420773, 21.127079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233493, 0.215424, 0.948195,
		-0.940868, 0.196106, -0.276243,
		-0.245456, -0.956627, 0.156896,
		21.604727, 36.133785, 21.174149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.231522, 36.871910, 21.467012>,  <21.776546, 36.803425, 21.064322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.231522, 36.871910, 21.467012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.383242, 36.505920, 21.522091>,  <21.474274, 36.286327, 21.555138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.383242, 36.505920, 21.522091>,  <21.231522, 36.871910, 21.467012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.383242, 36.505920, 21.522091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091204, 0.185064, 0.978485,
		-0.920768, -0.358581, 0.153643,
		0.379300, -0.914971, 0.137697,
		21.497032, 36.231430, 21.563400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.787098, 36.619423, 21.998758>,  <21.231522, 36.871910, 21.467012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.787098, 36.619423, 21.998758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.142546, 36.435989, 22.001728>,  <21.355814, 36.325928, 22.003510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.142546, 36.435989, 22.001728>,  <20.787098, 36.619423, 21.998758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.142546, 36.435989, 22.001728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143068, 0.292532, 0.945493,
		-0.435762, -0.839121, 0.325559,
		0.888619, -0.458587, 0.007423,
		21.409132, 36.298412, 22.003954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.362501, 37.232147, 21.788359>,  <20.787098, 36.619423, 21.998758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.362501, 37.232147, 21.788359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.220453, 37.603580, 21.831470>,  <20.135225, 37.826443, 21.857338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.220453, 37.603580, 21.831470>,  <20.362501, 37.232147, 21.788359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.220453, 37.603580, 21.831470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256963, 0.013887, -0.966321,
		-0.898811, -0.370853, 0.233681,
		-0.355119, 0.928587, 0.107777,
		20.113918, 37.882156, 21.863804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.779196, 37.277981, 21.324358>,  <20.362501, 37.232147, 21.788359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.779196, 37.277981, 21.324358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.896500, 37.656967, 21.375450>,  <19.966883, 37.884357, 21.406105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.896500, 37.656967, 21.375450>,  <19.779196, 37.277981, 21.324358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.896500, 37.656967, 21.375450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347486, 0.230102, -0.909014,
		-0.890647, 0.222194, 0.396710,
		0.293261, 0.947461, 0.127730,
		19.984478, 37.941204, 21.413769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.261974, 37.744194, 21.099257>,  <19.779196, 37.277981, 21.324358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.261974, 37.744194, 21.099257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.577677, 37.989597, 21.109734>,  <19.767097, 38.136841, 21.116020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.577677, 37.989597, 21.109734>,  <19.261974, 37.744194, 21.099257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.577677, 37.989597, 21.109734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240999, 0.348703, -0.905718,
		-0.564799, 0.708529, 0.423070,
		0.789254, 0.613508, 0.026193,
		19.814453, 38.173649, 21.117592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.993471, 38.428604, 21.006386>,  <19.261974, 37.744194, 21.099257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.993471, 38.428604, 21.006386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.383978, 38.447056, 20.921745>,  <19.618282, 38.458126, 20.870962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.383978, 38.447056, 20.921745>,  <18.993471, 38.428604, 21.006386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.383978, 38.447056, 20.921745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212602, 0.390294, -0.895807,
		0.041264, 0.919534, 0.390838,
		0.976267, 0.046128, -0.211600,
		19.676859, 38.460896, 20.858265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.103716, 39.094536, 20.682281>,  <18.993471, 38.428604, 21.006386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.103716, 39.094536, 20.682281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.414892, 38.875504, 20.559017>,  <19.601597, 38.744083, 20.485058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.414892, 38.875504, 20.559017>,  <19.103716, 39.094536, 20.682281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.414892, 38.875504, 20.559017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193731, 0.257515, -0.946654,
		0.597729, 0.796139, 0.094247,
		0.777939, -0.547584, -0.308161,
		19.648273, 38.711227, 20.466568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.350534, 39.464569, 20.151989>,  <19.103716, 39.094536, 20.682281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.350534, 39.464569, 20.151989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.527370, 39.116543, 20.064766>,  <19.633472, 38.907726, 20.012432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.527370, 39.116543, 20.064766>,  <19.350534, 39.464569, 20.151989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.527370, 39.116543, 20.064766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167267, 0.158872, -0.973027,
		0.881238, 0.466638, -0.075297,
		0.442088, -0.870063, -0.218057,
		19.659996, 38.855522, 19.999350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.933582, 39.537052, 19.701328>,  <19.350534, 39.464569, 20.151989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.933582, 39.537052, 19.701328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.826715, 39.154526, 19.653862>,  <19.762596, 38.925011, 19.625381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.826715, 39.154526, 19.653862>,  <19.933582, 39.537052, 19.701328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.826715, 39.154526, 19.653862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148517, 0.162534, -0.975462,
		0.952137, -0.242986, -0.185453,
		-0.267166, -0.956316, -0.118667,
		19.746565, 38.867630, 19.618261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.277254, 39.252090, 19.088505>,  <19.933582, 39.537052, 19.701328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.277254, 39.252090, 19.088505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.991968, 38.973164, 19.117004>,  <19.820797, 38.805809, 19.134104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.991968, 38.973164, 19.117004>,  <20.277254, 39.252090, 19.088505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.991968, 38.973164, 19.117004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116535, 0.017729, -0.993028,
		0.691190, -0.716546, -0.093906,
		-0.713216, -0.697314, 0.071249,
		19.778004, 38.763969, 19.138378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.340977, 38.883732, 18.524908>,  <20.277254, 39.252090, 19.088505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.340977, 38.883732, 18.524908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.967445, 38.805439, 18.644676>,  <19.743326, 38.758461, 18.716537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.967445, 38.805439, 18.644676>,  <20.340977, 38.883732, 18.524908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.967445, 38.805439, 18.644676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317818, 0.069787, -0.945580,
		0.164188, -0.978170, -0.127378,
		-0.933828, -0.195736, 0.299422,
		19.687298, 38.746719, 18.734503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.089516, 38.352566, 18.077360>,  <20.340977, 38.883732, 18.524908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.089516, 38.352566, 18.077360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.752121, 38.522678, 18.208611>,  <19.549685, 38.624744, 18.287361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.752121, 38.522678, 18.208611>,  <20.089516, 38.352566, 18.077360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.752121, 38.522678, 18.208611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359906, 0.006010, -0.932969,
		-0.398747, -0.905041, 0.147992,
		-0.843486, 0.425282, 0.328126,
		19.499075, 38.650265, 18.307049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.608187, 37.968689, 17.760019>,  <20.089516, 38.352566, 18.077360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.608187, 37.968689, 17.760019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.378056, 38.270710, 17.885807>,  <19.239977, 38.451923, 17.961279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.378056, 38.270710, 17.885807>,  <19.608187, 37.968689, 17.760019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.378056, 38.270710, 17.885807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324741, 0.142004, -0.935082,
		-0.750694, -0.640098, 0.163499,
		-0.575327, 0.755055, 0.314468,
		19.205458, 38.497227, 17.980148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.965530, 37.862537, 17.469843>,  <19.608187, 37.968689, 17.760019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.965530, 37.862537, 17.469843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.976458, 38.250538, 17.566467>,  <18.983013, 38.483337, 17.624443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.976458, 38.250538, 17.566467>,  <18.965530, 37.862537, 17.469843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.976458, 38.250538, 17.566467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146926, 0.242925, -0.958854,
		-0.988770, -0.009300, 0.149154,
		0.027316, 0.970001, 0.241563,
		18.984652, 38.541538, 17.638937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.345507, 38.103302, 17.291121>,  <18.965530, 37.862537, 17.469843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.345507, 38.103302, 17.291121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.574438, 38.430859, 17.308353>,  <18.711798, 38.627392, 17.318693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.574438, 38.430859, 17.308353>,  <18.345507, 38.103302, 17.291121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.574438, 38.430859, 17.308353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257127, 0.229102, -0.938828,
		-0.778668, 0.526241, 0.341681,
		0.572330, 0.818891, 0.043084,
		18.746138, 38.676525, 17.321278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.926460, 38.515812, 16.954016>,  <18.345507, 38.103302, 17.291121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.926460, 38.515812, 16.954016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.273087, 38.715382, 16.958675>,  <18.481062, 38.835125, 16.961472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.273087, 38.715382, 16.958675>,  <17.926460, 38.515812, 16.954016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.273087, 38.715382, 16.958675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133679, 0.254544, -0.957777,
		-0.480828, 0.828419, 0.287275,
		0.866565, 0.498928, 0.011649,
		18.533056, 38.865059, 16.962170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.768877, 39.157993, 16.648493>,  <17.926460, 38.515812, 16.954016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.768877, 39.157993, 16.648493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.157324, 39.065968, 16.623180>,  <18.390392, 39.010754, 16.607994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.157324, 39.065968, 16.623180>,  <17.768877, 39.157993, 16.648493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.157324, 39.065968, 16.623180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020196, 0.184999, -0.982531,
		0.237748, 0.955431, 0.175010,
		0.971117, -0.230060, -0.063279,
		18.448658, 38.996948, 16.604197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.964523, 39.581173, 16.142395>,  <17.768877, 39.157993, 16.648493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.964523, 39.581173, 16.142395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.259649, 39.311207, 16.146725>,  <18.436726, 39.149227, 16.149323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.259649, 39.311207, 16.146725>,  <17.964523, 39.581173, 16.142395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.259649, 39.311207, 16.146725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111436, 0.105973, -0.988105,
		0.665740, 0.730246, 0.153398,
		0.737816, -0.674915, 0.010826,
		18.480993, 39.108734, 16.149973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.542210, 39.821754, 15.669136>,  <17.964523, 39.581173, 16.142395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.542210, 39.821754, 15.669136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.580242, 39.425217, 15.705337>,  <18.603062, 39.187294, 15.727057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.580242, 39.425217, 15.705337>,  <18.542210, 39.821754, 15.669136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.580242, 39.425217, 15.705337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094212, -0.081543, -0.992207,
		0.991001, 0.102868, 0.085644,
		0.095083, -0.991347, 0.090501,
		18.608767, 39.127811, 15.732487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.198383, 39.688675, 15.319528>,  <18.542210, 39.821754, 15.669136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.198383, 39.688675, 15.319528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.984091, 39.351379, 15.337150>,  <18.855516, 39.149002, 15.347723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.984091, 39.351379, 15.337150>,  <19.198383, 39.688675, 15.319528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.984091, 39.351379, 15.337150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288894, -0.232065, -0.928809,
		0.793432, -0.484863, 0.367931,
		-0.535729, -0.843240, 0.044054,
		18.823372, 39.098408, 15.350366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.590464, 39.115845, 14.973856>,  <19.198383, 39.688675, 15.319528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.590464, 39.115845, 14.973856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.240107, 38.923313, 14.960406>,  <19.029892, 38.807793, 14.952336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.240107, 38.923313, 14.960406>,  <19.590464, 39.115845, 14.973856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.240107, 38.923313, 14.960406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197458, -0.293991, -0.935190,
		0.440250, -0.825767, 0.352547,
		-0.875894, -0.481330, -0.033625,
		18.977339, 38.778915, 14.950319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.715240, 38.508167, 14.528534>,  <19.590464, 39.115845, 14.973856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.715240, 38.508167, 14.528534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.315401, 38.509918, 14.539702>,  <19.075497, 38.510971, 14.546404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.315401, 38.509918, 14.539702>,  <19.715240, 38.508167, 14.528534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.315401, 38.509918, 14.539702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028263, -0.152894, -0.987838,
		-0.000055, -0.988233, 0.152957,
		-0.999600, 0.004378, 0.027922,
		19.015520, 38.511230, 14.548079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.546741, 37.850117, 14.251892>,  <19.715240, 38.508167, 14.528534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.546741, 37.850117, 14.251892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.254251, 38.118694, 14.203774>,  <19.078758, 38.279842, 14.174904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.254251, 38.118694, 14.203774>,  <19.546741, 37.850117, 14.251892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.254251, 38.118694, 14.203774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023553, -0.201097, -0.979288,
		-0.681729, -0.713247, 0.162862,
		-0.731226, 0.671445, -0.120295,
		19.034883, 38.320129, 14.167686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.706610, 30.274141, 17.517517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065918, 30.377697, 17.659554>,  <28.281502, 30.439831, 17.744776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065918, 30.377697, 17.659554>,  <27.706610, 30.274141, 17.517517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065918, 30.377697, 17.659554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391238, 0.839106, 0.377933,
		-0.200116, -0.478411, 0.855030,
		0.898269, 0.258890, 0.355091,
		28.335398, 30.455364, 17.766081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561773, 30.505371, 18.207119>,  <27.706610, 30.274141, 17.517517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561773, 30.505371, 18.207119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918921, 30.661072, 18.116547>,  <28.133209, 30.754492, 18.062204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918921, 30.661072, 18.116547>,  <27.561773, 30.505371, 18.207119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918921, 30.661072, 18.116547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304917, 0.892602, 0.332095,
		0.331379, -0.227475, 0.915665,
		0.892868, 0.389251, -0.226429,
		28.186781, 30.777847, 18.048618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781113, 30.788324, 18.795643>,  <27.561773, 30.505371, 18.207119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781113, 30.788324, 18.795643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946884, 30.973419, 18.482178>,  <28.046347, 31.084476, 18.294100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946884, 30.973419, 18.482178>,  <27.781113, 30.788324, 18.795643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946884, 30.973419, 18.482178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328557, 0.879089, 0.345331,
		0.848704, 0.114361, 0.516355,
		0.414430, 0.462736, -0.783660,
		28.071213, 31.112240, 18.247080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109293, 31.332508, 19.026604>,  <27.781113, 30.788324, 18.795643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109293, 31.332508, 19.026604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127047, 31.462872, 18.648861>,  <28.137699, 31.541090, 18.422215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127047, 31.462872, 18.648861>,  <28.109293, 31.332508, 19.026604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.127047, 31.462872, 18.648861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184204, 0.931752, 0.312901,
		0.981885, 0.160067, 0.101388,
		0.044384, 0.325909, -0.944359,
		28.140362, 31.560644, 18.365553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569319, 31.962492, 19.022707>,  <28.109293, 31.332508, 19.026604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569319, 31.962492, 19.022707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363556, 31.985153, 18.680439>,  <28.240097, 31.998751, 18.475079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363556, 31.985153, 18.680439>,  <28.569319, 31.962492, 19.022707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363556, 31.985153, 18.680439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196037, 0.963624, 0.181655,
		0.834837, 0.261188, -0.484590,
		-0.514408, 0.056655, -0.855672,
		28.209234, 32.002151, 18.423737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737196, 32.528595, 18.688160>,  <28.569319, 31.962492, 19.022707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737196, 32.528595, 18.688160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377861, 32.470745, 18.522232>,  <28.162260, 32.436035, 18.422676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377861, 32.470745, 18.522232>,  <28.737196, 32.528595, 18.688160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377861, 32.470745, 18.522232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249274, 0.945334, 0.210250,
		0.361734, 0.292279, -0.885280,
		-0.898338, -0.144623, -0.414817,
		28.108360, 32.427357, 18.397787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574270, 33.179287, 18.243595>,  <28.737196, 32.528595, 18.688160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574270, 33.179287, 18.243595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219578, 33.000027, 18.288963>,  <28.006762, 32.892471, 18.316185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219578, 33.000027, 18.288963>,  <28.574270, 33.179287, 18.243595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219578, 33.000027, 18.288963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437959, 0.892934, 0.104213,
		-0.147980, 0.042735, -0.988067,
		-0.886732, -0.448154, 0.113420,
		27.953558, 32.865582, 18.322989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067314, 33.528877, 17.891005>,  <28.574270, 33.179287, 18.243595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067314, 33.528877, 17.891005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872543, 33.319447, 18.170650>,  <27.755680, 33.193787, 18.338438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872543, 33.319447, 18.170650>,  <28.067314, 33.528877, 17.891005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872543, 33.319447, 18.170650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494378, 0.825072, 0.273581,
		-0.720063, -0.212414, -0.660597,
		-0.486928, -0.523581, 0.699117,
		27.726465, 33.162373, 18.380386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364849, 33.773674, 17.920053>,  <28.067314, 33.528877, 17.891005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364849, 33.773674, 17.920053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370935, 33.576786, 18.268188>,  <27.374586, 33.458652, 18.477070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370935, 33.576786, 18.268188>,  <27.364849, 33.773674, 17.920053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370935, 33.576786, 18.268188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474573, 0.762594, 0.439580,
		-0.880085, -0.419727, -0.221991,
		0.015214, -0.492219, 0.870339,
		27.375500, 33.429119, 18.529289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662651, 33.864124, 18.081560>,  <27.364849, 33.773674, 17.920053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662651, 33.864124, 18.081560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896309, 33.800350, 18.399895>,  <27.036505, 33.762085, 18.590895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896309, 33.800350, 18.399895>,  <26.662651, 33.864124, 18.081560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896309, 33.800350, 18.399895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412554, 0.786083, 0.460297,
		-0.698980, -0.597206, 0.393411,
		0.584146, -0.159435, 0.795835,
		27.071552, 33.752522, 18.638645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269558, 34.029659, 18.532728>,  <26.662651, 33.864124, 18.081560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269558, 34.029659, 18.532728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.618698, 34.045616, 18.727272>,  <26.828182, 34.055191, 18.843998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.618698, 34.045616, 18.727272>,  <26.269558, 34.029659, 18.532728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618698, 34.045616, 18.727272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352781, 0.740199, 0.572408,
		-0.337167, -0.671203, 0.660155,
		0.872848, 0.039894, 0.486358,
		26.880552, 34.057583, 18.873180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.241144, 34.011429, 19.219412>,  <26.269558, 34.029659, 18.532728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.241144, 34.011429, 19.219412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562653, 34.242062, 19.160759>,  <26.755558, 34.380444, 19.125566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562653, 34.242062, 19.160759>,  <26.241144, 34.011429, 19.219412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562653, 34.242062, 19.160759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323188, 0.630093, 0.706069,
		0.499502, -0.520127, 0.692796,
		0.803771, 0.576585, -0.146634,
		26.803783, 34.415039, 19.116768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503021, 34.023430, 19.825037>,  <26.241144, 34.011429, 19.219412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503021, 34.023430, 19.825037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615364, 34.355843, 19.632992>,  <26.682770, 34.555290, 19.517765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615364, 34.355843, 19.632992>,  <26.503021, 34.023430, 19.825037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615364, 34.355843, 19.632992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358376, 0.554873, 0.750788,
		0.890330, -0.038803, 0.453660,
		0.280856, 0.831030, -0.480114,
		26.699621, 34.605152, 19.488958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771822, 34.446304, 20.366394>,  <26.503021, 34.023430, 19.825037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771822, 34.446304, 20.366394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657341, 34.675434, 20.059158>,  <26.588654, 34.812912, 19.874817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657341, 34.675434, 20.059158>,  <26.771822, 34.446304, 20.366394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657341, 34.675434, 20.059158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339091, 0.689191, 0.640338,
		0.896162, 0.443717, -0.003006,
		-0.286201, 0.572828, -0.768087,
		26.571480, 34.847282, 19.828732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.489779, 34.801174, 20.971382>,  <26.771822, 34.446304, 20.366394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.489779, 34.801174, 20.971382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211613, 34.653786, 21.218163>,  <26.044714, 34.565353, 21.366230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211613, 34.653786, 21.218163>,  <26.489779, 34.801174, 20.971382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.211613, 34.653786, 21.218163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519531, -0.850941, 0.077382,
		0.496474, 0.374337, 0.783189,
		-0.695414, -0.368473, 0.616949,
		26.002989, 34.543243, 21.403248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.828716, 34.700470, 21.604591>,  <26.489779, 34.801174, 20.971382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.828716, 34.700470, 21.604591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510347, 34.459160, 21.584343>,  <26.319326, 34.314373, 21.572193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510347, 34.459160, 21.584343>,  <26.828716, 34.700470, 21.604591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510347, 34.459160, 21.584343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604951, -0.795764, -0.028192,
		-0.023275, -0.053062, 0.998320,
		-0.795923, -0.603278, -0.050621,
		26.271570, 34.278175, 21.569157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955488, 34.150703, 21.977594>,  <26.828716, 34.700470, 21.604591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955488, 34.150703, 21.977594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643351, 33.978817, 21.795868>,  <26.456068, 33.875683, 21.686832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643351, 33.978817, 21.795868>,  <26.955488, 34.150703, 21.977594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643351, 33.978817, 21.795868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497581, -0.866717, -0.034865,
		-0.378783, -0.253266, 0.890157,
		-0.780344, -0.429719, -0.454318,
		26.409246, 33.849903, 21.659573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840584, 33.495609, 22.346203>,  <26.955488, 34.150703, 21.977594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840584, 33.495609, 22.346203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654528, 33.447609, 21.995377>,  <26.542894, 33.418808, 21.784882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654528, 33.447609, 21.995377>,  <26.840584, 33.495609, 22.346203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654528, 33.447609, 21.995377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402416, -0.911144, -0.088754,
		-0.788483, -0.394229, 0.472099,
		-0.465140, -0.119999, -0.877066,
		26.514986, 33.411610, 21.732256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.479284, 32.864265, 22.493767>,  <26.840584, 33.495609, 22.346203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.479284, 32.864265, 22.493767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477219, 32.876137, 22.093948>,  <26.475979, 32.883259, 21.854057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477219, 32.876137, 22.093948>,  <26.479284, 32.864265, 22.493767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.477219, 32.876137, 22.093948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287563, -0.957294, -0.029907,
		-0.957748, -0.287587, -0.003588,
		-0.005166, 0.029675, -0.999546,
		26.475670, 32.885040, 21.794085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286409, 32.176182, 22.203382>,  <26.479284, 32.864265, 22.493767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.286409, 32.176182, 22.203382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454269, 32.318890, 21.869530>,  <26.554985, 32.404514, 21.669218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454269, 32.318890, 21.869530>,  <26.286409, 32.176182, 22.203382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454269, 32.318890, 21.869530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218986, -0.932147, -0.288353,
		-0.880875, -0.061766, -0.469302,
		0.419648, 0.356774, -0.834630,
		26.580164, 32.425922, 21.619141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093290, 31.733521, 21.728855>,  <26.286409, 32.176182, 22.203382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093290, 31.733521, 21.728855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396086, 31.937504, 21.565437>,  <26.577763, 32.059895, 21.467386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396086, 31.937504, 21.565437>,  <26.093290, 31.733521, 21.728855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.396086, 31.937504, 21.565437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379416, -0.852076, -0.360570,
		-0.531986, 0.117940, -0.838500,
		0.756991, 0.509958, -0.408544,
		26.623182, 32.090492, 21.442875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113707, 31.426262, 21.047657>,  <26.093290, 31.733521, 21.728855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113707, 31.426262, 21.047657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456898, 31.591885, 21.169266>,  <26.662813, 31.691257, 21.242231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456898, 31.591885, 21.169266>,  <26.113707, 31.426262, 21.047657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456898, 31.591885, 21.169266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508752, -0.766763, -0.391468,
		0.071022, 0.490542, -0.868518,
		0.857979, 0.414057, 0.304021,
		26.714291, 31.716103, 21.260471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503355, 31.341333, 20.466507>,  <26.113707, 31.426262, 21.047657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503355, 31.341333, 20.466507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756008, 31.412014, 20.768452>,  <26.907600, 31.454422, 20.949617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756008, 31.412014, 20.768452>,  <26.503355, 31.341333, 20.466507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756008, 31.412014, 20.768452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492757, -0.843205, -0.214933,
		0.598523, 0.507722, -0.619668,
		0.631634, 0.176703, 0.754861,
		26.945498, 31.465025, 20.994909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088692, 31.158728, 20.194550>,  <26.503355, 31.341333, 20.466507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088692, 31.158728, 20.194550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183933, 31.167961, 20.582935>,  <27.241077, 31.173500, 20.815968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183933, 31.167961, 20.582935>,  <27.088692, 31.158728, 20.194550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183933, 31.167961, 20.582935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508063, -0.854986, -0.104264,
		0.827755, 0.518138, -0.215303,
		0.238105, 0.023082, 0.970965,
		27.255365, 31.174887, 20.874226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850874, 31.076700, 20.261246>,  <27.088692, 31.158728, 20.194550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850874, 31.076700, 20.261246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695137, 30.951035, 20.607590>,  <27.601694, 30.875635, 20.815395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695137, 30.951035, 20.607590>,  <27.850874, 31.076700, 20.261246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695137, 30.951035, 20.607590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532357, -0.843880, -0.066806,
		0.751670, 0.434936, 0.495805,
		-0.389344, -0.314162, 0.865860,
		27.578335, 30.856787, 20.867348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431255, 30.715555, 20.623486>,  <27.850874, 31.076700, 20.261246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431255, 30.715555, 20.623486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103012, 30.596443, 20.818596>,  <27.906065, 30.524977, 20.935663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103012, 30.596443, 20.818596>,  <28.431255, 30.715555, 20.623486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103012, 30.596443, 20.818596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280988, -0.953461, -0.109351,
		0.497640, 0.047325, 0.866092,
		-0.820610, -0.297778, 0.487778,
		27.856829, 30.507111, 20.964930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611542, 30.312830, 21.226635>,  <28.431255, 30.715555, 20.623486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611542, 30.312830, 21.226635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239305, 30.193115, 21.142319>,  <28.015965, 30.121286, 21.091730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239305, 30.193115, 21.142319>,  <28.611542, 30.312830, 21.226635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239305, 30.193115, 21.142319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323409, -0.941934, -0.090378,
		-0.171501, -0.152276, 0.973345,
		-0.930588, -0.299288, -0.210790,
		27.960129, 30.103329, 21.079082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634388, 29.664930, 21.477482>,  <28.611542, 30.312830, 21.226635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634388, 29.664930, 21.477482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301121, 29.675770, 21.256538>,  <28.101160, 29.682274, 21.123972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301121, 29.675770, 21.256538>,  <28.634388, 29.664930, 21.477482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301121, 29.675770, 21.256538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181791, -0.929872, -0.319828,
		-0.522288, -0.366884, 0.769813,
		-0.833167, 0.027097, -0.552357,
		28.051170, 29.683899, 21.090832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552279, 29.486319, 22.335379>,  <28.634388, 29.664930, 21.477482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552279, 29.486319, 22.335379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861301, 29.462666, 22.588253>,  <29.046715, 29.448473, 22.739977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861301, 29.462666, 22.588253>,  <28.552279, 29.486319, 22.335379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861301, 29.462666, 22.588253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083935, 0.977404, 0.194000,
		-0.629372, -0.202939, 0.750138,
		0.772558, -0.059135, 0.632184,
		29.093069, 29.444925, 22.777908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439985, 30.000864, 22.719120>,  <28.552279, 29.486319, 22.335379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439985, 30.000864, 22.719120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828825, 29.940716, 22.791138>,  <29.062128, 29.904627, 22.834349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828825, 29.940716, 22.791138>,  <28.439985, 30.000864, 22.719120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828825, 29.940716, 22.791138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117411, 0.976355, 0.181507,
		-0.203080, -0.155303, 0.966767,
		0.972097, -0.150369, 0.180044,
		29.120455, 29.895605, 22.845152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451565, 30.444260, 23.229263>,  <28.439985, 30.000864, 22.719120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451565, 30.444260, 23.229263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817911, 30.342121, 23.105339>,  <29.037720, 30.280838, 23.030985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817911, 30.342121, 23.105339>,  <28.451565, 30.444260, 23.229263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817911, 30.342121, 23.105339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317302, 0.933164, 0.168894,
		0.245977, -0.252988, 0.935677,
		0.915868, -0.255348, -0.309811,
		29.092672, 30.265516, 23.012396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863853, 30.700174, 23.741322>,  <28.451565, 30.444260, 23.229263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863853, 30.700174, 23.741322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095676, 30.670670, 23.416687>,  <29.234770, 30.652967, 23.221907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095676, 30.670670, 23.416687>,  <28.863853, 30.700174, 23.741322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095676, 30.670670, 23.416687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300347, 0.945123, 0.128582,
		0.757565, -0.318278, 0.569908,
		0.579558, -0.073761, -0.811586,
		29.269545, 30.648540, 23.173212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549541, 30.770535, 23.950556>,  <28.863853, 30.700174, 23.741322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549541, 30.770535, 23.950556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516171, 30.872730, 23.565273>,  <29.496147, 30.934048, 23.334105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516171, 30.872730, 23.565273>,  <29.549541, 30.770535, 23.950556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516171, 30.872730, 23.565273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287961, 0.931521, 0.222143,
		0.954001, -0.258833, -0.151287,
		-0.083429, 0.255489, -0.963206,
		29.491142, 30.949377, 23.276312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083551, 31.002317, 23.914268>,  <29.549541, 30.770535, 23.950556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083551, 31.002317, 23.914268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912405, 31.140434, 23.580154>,  <29.809717, 31.223305, 23.379686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912405, 31.140434, 23.580154>,  <30.083551, 31.002317, 23.914268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912405, 31.140434, 23.580154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342582, 0.917150, 0.203649,
		0.836401, -0.199019, -0.510710,
		-0.427868, 0.345292, -0.835286,
		29.784044, 31.244022, 23.329569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453049, 31.572380, 23.714727>,  <30.083551, 31.002317, 23.914268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453049, 31.572380, 23.714727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137430, 31.628590, 23.475510>,  <29.948059, 31.662315, 23.331980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137430, 31.628590, 23.475510>,  <30.453049, 31.572380, 23.714727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137430, 31.628590, 23.475510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224505, 0.972112, -0.067788,
		0.571838, -0.187752, -0.798592,
		-0.789049, 0.140524, -0.598042,
		29.900715, 31.670748, 23.296097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716473, 32.145298, 23.106070>,  <30.453049, 31.572380, 23.714727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716473, 32.145298, 23.106070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317446, 32.123474, 23.123440>,  <30.078030, 32.110382, 23.133862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317446, 32.123474, 23.123440>,  <30.716473, 32.145298, 23.106070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317446, 32.123474, 23.123440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060432, 0.987119, -0.148137,
		-0.034784, -0.150400, -0.988013,
		-0.997566, -0.054555, 0.043425,
		30.018175, 32.107109, 23.136467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382723, 32.549438, 22.629311>,  <30.716473, 32.145298, 23.106070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382723, 32.549438, 22.629311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089115, 32.516972, 22.899014>,  <29.912951, 32.497490, 23.060835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089115, 32.516972, 22.899014>,  <30.382723, 32.549438, 22.629311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089115, 32.516972, 22.899014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027725, 0.995586, 0.089669,
		-0.678561, 0.047125, -0.733030,
		-0.734020, -0.081169, 0.674259,
		29.868910, 32.492622, 23.101292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862514, 33.062923, 22.445971>,  <30.382723, 32.549438, 22.629311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862514, 33.062923, 22.445971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780180, 33.002747, 22.832752>,  <29.730780, 32.966640, 23.064821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780180, 33.002747, 22.832752>,  <29.862514, 33.062923, 22.445971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780180, 33.002747, 22.832752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062856, 0.988105, 0.140348,
		-0.976566, -0.031890, -0.212843,
		-0.205836, -0.150438, 0.966954,
		29.718430, 32.957615, 23.122839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229441, 33.508888, 22.638649>,  <29.862514, 33.062923, 22.445971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229441, 33.508888, 22.638649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453426, 33.405521, 22.953522>,  <29.587818, 33.343502, 23.142447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453426, 33.405521, 22.953522>,  <29.229441, 33.508888, 22.638649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453426, 33.405521, 22.953522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036366, 0.941531, 0.334958,
		-0.827718, -0.216191, 0.517827,
		0.559965, -0.258419, 0.787184,
		29.621416, 33.327995, 23.189676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945614, 33.655312, 23.273088>,  <29.229441, 33.508888, 22.638649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945614, 33.655312, 23.273088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343081, 33.652767, 23.317966>,  <29.581560, 33.651241, 23.344894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343081, 33.652767, 23.317966>,  <28.945614, 33.655312, 23.273088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343081, 33.652767, 23.317966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025628, 0.959257, 0.281371,
		-0.109416, -0.282464, 0.953018,
		0.993666, -0.006363, 0.112197,
		29.641180, 33.650860, 23.351625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.171047, 25.727945, 23.278622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.569447, 25.763535, 23.282013>,  <28.808487, 25.784889, 23.284048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.569447, 25.763535, 23.282013>,  <28.171047, 25.727945, 23.278622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569447, 25.763535, 23.282013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083706, 0.961848, -0.260465,
		-0.031331, 0.258713, 0.965446,
		0.995998, 0.088975, 0.008480,
		28.868246, 25.790226, 23.284557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288282, 26.251694, 23.678946>,  <28.171047, 25.727945, 23.278622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288282, 26.251694, 23.678946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.609804, 26.218678, 23.443291>,  <28.802717, 26.198868, 23.301897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.609804, 26.218678, 23.443291>,  <28.288282, 26.251694, 23.678946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609804, 26.218678, 23.443291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041079, 0.980263, -0.193384,
		0.593471, 0.179645, 0.784551,
		0.803806, -0.082539, -0.589137,
		28.850946, 26.193916, 23.266550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746937, 26.707333, 23.975418>,  <28.288282, 26.251694, 23.678946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746937, 26.707333, 23.975418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.871967, 26.661877, 23.598190>,  <28.946985, 26.634604, 23.371853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.871967, 26.661877, 23.598190>,  <28.746937, 26.707333, 23.975418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871967, 26.661877, 23.598190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060868, 0.988381, -0.139276,
		0.947940, 0.100938, 0.302028,
		0.312577, -0.113642, -0.943070,
		28.965740, 26.627785, 23.315269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367161, 27.064352, 23.951279>,  <28.746937, 26.707333, 23.975418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367161, 27.064352, 23.951279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.236179, 27.043789, 23.573891>,  <29.157591, 27.031450, 23.347458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.236179, 27.043789, 23.573891>,  <29.367161, 27.064352, 23.951279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236179, 27.043789, 23.573891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165381, 0.979986, -0.110799,
		0.930281, -0.192313, -0.312397,
		-0.327453, -0.051410, -0.943468,
		29.137943, 27.028366, 23.290850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757051, 27.557234, 23.646875>,  <29.367161, 27.064352, 23.951279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757051, 27.557234, 23.646875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.465870, 27.496845, 23.379356>,  <29.291161, 27.460611, 23.218845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.465870, 27.496845, 23.379356>,  <29.757051, 27.557234, 23.646875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465870, 27.496845, 23.379356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085746, 0.947750, -0.307274,
		0.680241, -0.281029, -0.676975,
		-0.727956, -0.150973, -0.668795,
		29.247482, 27.451553, 23.178719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069241, 27.821306, 23.068064>,  <29.757051, 27.557234, 23.646875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069241, 27.821306, 23.068064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.671438, 27.796772, 23.034130>,  <29.432756, 27.782051, 23.013769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.671438, 27.796772, 23.034130>,  <30.069241, 27.821306, 23.068064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671438, 27.796772, 23.034130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044494, 0.981192, -0.187835,
		0.094760, -0.183029, -0.978530,
		-0.994505, -0.061338, -0.084834,
		29.373087, 27.778370, 23.008680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920305, 28.106016, 22.354959>,  <30.069241, 27.821306, 23.068064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920305, 28.106016, 22.354959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.595106, 28.135448, 22.585999>,  <29.399986, 28.153107, 22.724623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.595106, 28.135448, 22.585999>,  <29.920305, 28.106016, 22.354959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595106, 28.135448, 22.585999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008263, 0.993342, -0.114909,
		-0.582206, -0.088648, -0.808194,
		-0.812999, 0.073579, 0.577597,
		29.351206, 28.157522, 22.759277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535955, 28.483065, 21.989397>,  <29.920305, 28.106016, 22.354959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535955, 28.483065, 21.989397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.378754, 28.527115, 22.354565>,  <29.284431, 28.553545, 22.573666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.378754, 28.527115, 22.354565>,  <29.535955, 28.483065, 21.989397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378754, 28.527115, 22.354565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147080, 0.987549, -0.055812,
		-0.907697, 0.112338, -0.404310,
		-0.393006, 0.110126, 0.912918,
		29.260853, 28.560152, 22.628441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017328, 28.991461, 21.899345>,  <29.535955, 28.483065, 21.989397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017328, 28.991461, 21.899345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.105631, 28.987785, 22.289459>,  <29.158611, 28.985580, 22.523527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.105631, 28.987785, 22.289459>,  <29.017328, 28.991461, 21.899345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105631, 28.987785, 22.289459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015944, 0.999788, 0.013028,
		-0.975199, -0.018427, 0.220561,
		0.220754, -0.009189, 0.975286,
		29.171858, 28.985029, 22.582045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279989, 29.056528, 21.718128>,  <29.017328, 28.991461, 21.899345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279989, 29.056528, 21.718128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.091818, 29.168716, 21.383457>,  <27.978914, 29.236031, 21.182653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.091818, 29.168716, 21.383457>,  <28.279989, 29.056528, 21.718128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091818, 29.168716, 21.383457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130187, -0.959829, -0.248556,
		-0.872781, -0.008004, 0.488047,
		-0.470431, 0.280472, -0.836678,
		27.950689, 29.252857, 21.132454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665142, 28.657587, 21.749678>,  <28.279989, 29.056528, 21.718128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665142, 28.657587, 21.749678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.682400, 28.771580, 21.366653>,  <27.692755, 28.839975, 21.136839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.682400, 28.771580, 21.366653>,  <27.665142, 28.657587, 21.749678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682400, 28.771580, 21.366653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165549, -0.947243, -0.274451,
		-0.985257, -0.146683, -0.088045,
		0.043142, 0.284981, -0.957562,
		27.695343, 28.857075, 21.079386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179228, 28.273397, 21.415251>,  <27.665142, 28.657587, 21.749678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179228, 28.273397, 21.415251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.423540, 28.403740, 21.126595>,  <27.570127, 28.481945, 20.953402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.423540, 28.403740, 21.126595>,  <27.179228, 28.273397, 21.415251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423540, 28.403740, 21.126595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123072, -0.939385, -0.320015,
		-0.782177, 0.106645, -0.613861,
		0.610780, 0.325858, -0.721640,
		27.606773, 28.501497, 20.910103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075977, 27.823732, 20.858706>,  <27.179228, 28.273397, 21.415251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075977, 27.823732, 20.858706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.443888, 27.974030, 20.813400>,  <27.664635, 28.064209, 20.786217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.443888, 27.974030, 20.813400>,  <27.075977, 27.823732, 20.858706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443888, 27.974030, 20.813400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348094, -0.914392, -0.206681,
		-0.181226, 0.150674, -0.971830,
		0.919776, 0.375745, -0.113263,
		27.719820, 28.086754, 20.779421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260210, 27.760126, 20.095930>,  <27.075977, 27.823732, 20.858706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260210, 27.760126, 20.095930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.602913, 27.788197, 20.300301>,  <27.808535, 27.805038, 20.422922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.602913, 27.788197, 20.300301>,  <27.260210, 27.760126, 20.095930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602913, 27.788197, 20.300301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352200, -0.803309, -0.480260,
		0.376730, 0.591413, -0.712955,
		0.856755, 0.070174, 0.510927,
		27.859940, 27.809248, 20.453579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852383, 27.615955, 19.562105>,  <27.260210, 27.760126, 20.095930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852383, 27.615955, 19.562105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.024927, 27.586552, 19.921776>,  <28.128454, 27.568911, 20.137579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.024927, 27.586552, 19.921776>,  <27.852383, 27.615955, 19.562105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024927, 27.586552, 19.921776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514090, -0.799002, -0.311943,
		0.741376, 0.596819, -0.306870,
		0.431363, -0.073508, 0.899179,
		28.154337, 27.564499, 20.191530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608625, 27.561720, 19.522364>,  <27.852383, 27.615955, 19.562105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608625, 27.561720, 19.522364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.479458, 27.379147, 19.854000>,  <28.401957, 27.269602, 20.052982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.479458, 27.379147, 19.854000>,  <28.608625, 27.561720, 19.522364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479458, 27.379147, 19.854000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407785, -0.857637, -0.313322,
		0.854069, 0.236913, 0.463074,
		-0.322919, -0.456433, 0.829091,
		28.382582, 27.242216, 20.102728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100035, 27.148901, 19.619438>,  <28.608625, 27.561720, 19.522364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100035, 27.148901, 19.619438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.829933, 26.992348, 19.869511>,  <28.667871, 26.898417, 20.019554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.829933, 26.992348, 19.869511>,  <29.100035, 27.148901, 19.619438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829933, 26.992348, 19.869511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425219, -0.899140, -0.103612,
		0.602678, 0.195874, 0.773571,
		-0.675254, -0.391382, 0.625182,
		28.627357, 26.874933, 20.057066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454294, 26.697104, 20.014736>,  <29.100035, 27.148901, 19.619438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454294, 26.697104, 20.014736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.078394, 26.565189, 20.050762>,  <28.852854, 26.486042, 20.072378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.078394, 26.565189, 20.050762>,  <29.454294, 26.697104, 20.014736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078394, 26.565189, 20.050762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289726, -0.908140, -0.302225,
		0.181460, -0.257922, 0.948972,
		-0.939751, -0.329784, 0.090065,
		28.796469, 26.466253, 20.077782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385057, 25.952579, 20.343227>,  <29.454294, 26.697104, 20.014736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385057, 25.952579, 20.343227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.015308, 25.966553, 20.191273>,  <28.793459, 25.974936, 20.100100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.015308, 25.966553, 20.191273>,  <29.385057, 25.952579, 20.343227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015308, 25.966553, 20.191273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052836, -0.974479, -0.218173,
		-0.377811, -0.221745, 0.898937,
		-0.924374, 0.034932, -0.379884,
		28.737997, 25.977032, 20.077307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080538, 25.353674, 20.628445>,  <29.385057, 25.952579, 20.343227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080538, 25.353674, 20.628445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.862480, 25.468155, 20.313255>,  <28.731646, 25.536844, 20.124142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.862480, 25.468155, 20.313255>,  <29.080538, 25.353674, 20.628445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862480, 25.468155, 20.313255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009134, -0.941892, -0.335790,
		-0.838292, -0.175857, 0.516082,
		-0.545144, 0.286204, -0.787975,
		28.698936, 25.554016, 20.076862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541822, 24.846897, 20.565113>,  <29.080538, 25.353674, 20.628445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541822, 24.846897, 20.565113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.572376, 24.997704, 20.195892>,  <28.590710, 25.088186, 19.974360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.572376, 24.997704, 20.195892>,  <28.541822, 24.846897, 20.565113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572376, 24.997704, 20.195892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070205, -0.921426, -0.382159,
		-0.994604, 0.093995, -0.043917,
		0.076387, 0.377014, -0.923052,
		28.595293, 25.110807, 19.918976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007568, 24.686865, 20.207916>,  <28.541822, 24.846897, 20.565113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007568, 24.686865, 20.207916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.293188, 24.737705, 19.932533>,  <28.464560, 24.768209, 19.767303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.293188, 24.737705, 19.932533>,  <28.007568, 24.686865, 20.207916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293188, 24.737705, 19.932533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226232, -0.888731, -0.398717,
		-0.662533, 0.440456, -0.605845,
		0.714051, 0.127102, -0.688459,
		28.507404, 24.775835, 19.725996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772930, 24.245831, 19.735687>,  <28.007568, 24.686865, 20.207916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772930, 24.245831, 19.735687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.133797, 24.341320, 19.591961>,  <28.350317, 24.398613, 19.505726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.133797, 24.341320, 19.591961>,  <27.772930, 24.245831, 19.735687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133797, 24.341320, 19.591961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130590, -0.944978, -0.299940,
		-0.411146, 0.223673, -0.883702,
		0.902167, 0.238722, -0.359314,
		28.404448, 24.412937, 19.484167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.824604, 25.343126, 20.167044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.426189, 25.307640, 20.169586>,  <34.187141, 25.286348, 20.171112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.426189, 25.307640, 20.169586>,  <34.824604, 25.343126, 20.167044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426189, 25.307640, 20.169586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083723, 0.959295, 0.269711,
		-0.030024, 0.268110, -0.962920,
		-0.996037, -0.088716, 0.006355,
		34.127377, 25.281025, 20.171492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603546, 25.884308, 19.837761>,  <34.824604, 25.343126, 20.167044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603546, 25.884308, 19.837761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.270245, 25.772335, 20.028473>,  <34.070263, 25.705151, 20.142900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.270245, 25.772335, 20.028473>,  <34.603546, 25.884308, 19.837761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270245, 25.772335, 20.028473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262371, 0.959272, 0.104682,
		-0.486667, -0.037866, -0.872766,
		-0.833257, -0.279934, 0.476781,
		34.020267, 25.688354, 20.171507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955296, 26.069052, 19.469740>,  <34.603546, 25.884308, 19.837761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955296, 26.069052, 19.469740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.884789, 26.050060, 19.863018>,  <33.842484, 26.038666, 20.098986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.884789, 26.050060, 19.863018>,  <33.955296, 26.069052, 19.469740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884789, 26.050060, 19.863018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336009, 0.941743, -0.014765,
		-0.925218, -0.332966, -0.181951,
		-0.176268, -0.047477, 0.983197,
		33.831909, 26.035818, 20.157976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297474, 26.442427, 19.529396>,  <33.955296, 26.069052, 19.469740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297474, 26.442427, 19.529396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398624, 26.393311, 19.913265>,  <33.459316, 26.363840, 20.143587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398624, 26.393311, 19.913265>,  <33.297474, 26.442427, 19.529396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398624, 26.393311, 19.913265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367523, 0.905368, 0.212686,
		-0.894975, -0.406486, 0.183817,
		0.252876, -0.122792, 0.959675,
		33.474487, 26.356474, 20.201168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626251, 26.727146, 19.938404>,  <33.297474, 26.442427, 19.529396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626251, 26.727146, 19.938404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.939209, 26.741928, 20.187077>,  <33.126984, 26.750797, 20.336281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.939209, 26.741928, 20.187077>,  <32.626251, 26.727146, 19.938404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939209, 26.741928, 20.187077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235974, 0.941396, 0.241018,
		-0.576341, -0.335272, 0.745267,
		0.782398, 0.036956, 0.621681,
		33.173927, 26.753016, 20.373581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312149, 27.041828, 20.498262>,  <32.626251, 26.727146, 19.938404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312149, 27.041828, 20.498262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.700951, 27.061756, 20.590107>,  <32.934231, 27.073713, 20.645214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.700951, 27.061756, 20.590107>,  <32.312149, 27.041828, 20.498262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700951, 27.061756, 20.590107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164651, 0.841592, 0.514405,
		-0.167613, -0.537811, 0.826235,
		0.972006, 0.049819, 0.229613,
		32.992554, 27.076702, 20.658991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378113, 27.298590, 21.111040>,  <32.312149, 27.041828, 20.498262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378113, 27.298590, 21.111040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733635, 27.386414, 20.950130>,  <32.946949, 27.439108, 20.853584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733635, 27.386414, 20.950130>,  <32.378113, 27.298590, 21.111040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733635, 27.386414, 20.950130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103610, 0.951310, 0.290302,
		0.446425, -0.216342, 0.868275,
		0.888803, 0.219560, -0.402273,
		33.000275, 27.452282, 20.829449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554050, 27.823587, 21.577234>,  <32.378113, 27.298590, 21.111040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554050, 27.823587, 21.577234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.789856, 27.839787, 21.254536>,  <32.931339, 27.849506, 21.060917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.789856, 27.839787, 21.254536>,  <32.554050, 27.823587, 21.577234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789856, 27.839787, 21.254536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230199, 0.948904, 0.215847,
		0.774265, -0.312956, 0.550066,
		0.589510, 0.040498, -0.806745,
		32.966709, 27.851936, 21.012512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265945, 28.058657, 21.746431>,  <32.554050, 27.823587, 21.577234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265945, 28.058657, 21.746431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.187790, 28.167244, 21.369469>,  <33.140896, 28.232397, 21.143291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.187790, 28.167244, 21.369469>,  <33.265945, 28.058657, 21.746431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187790, 28.167244, 21.369469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391040, 0.902802, 0.178988,
		0.899396, -0.333547, -0.282549,
		-0.195385, 0.271469, -0.942406,
		33.129173, 28.248684, 21.086746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926975, 28.403931, 21.464298>,  <33.265945, 28.058657, 21.746431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926975, 28.403931, 21.464298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.615055, 28.489883, 21.229099>,  <33.427902, 28.541456, 21.087980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.615055, 28.489883, 21.229099>,  <33.926975, 28.403931, 21.464298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615055, 28.489883, 21.229099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274828, 0.961404, -0.013131,
		0.562481, -0.171837, -0.808757,
		-0.779798, 0.214883, -0.587997,
		33.381115, 28.554348, 21.052700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071552, 28.851364, 21.052345>,  <33.926975, 28.403931, 21.464298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071552, 28.851364, 21.052345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.680504, 28.925781, 21.013077>,  <33.445873, 28.970432, 20.989515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.680504, 28.925781, 21.013077>,  <34.071552, 28.851364, 21.052345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680504, 28.925781, 21.013077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201144, 0.963363, -0.177405,
		0.061572, -0.193182, -0.979229,
		-0.977625, 0.186043, -0.098173,
		33.387215, 28.981594, 20.983625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950115, 29.228649, 20.506506>,  <34.071552, 28.851364, 21.052345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950115, 29.228649, 20.506506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.621113, 29.306049, 20.720440>,  <33.423714, 29.352489, 20.848801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.621113, 29.306049, 20.720440>,  <33.950115, 29.228649, 20.506506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621113, 29.306049, 20.720440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031714, 0.954488, -0.296558,
		-0.567877, -0.226957, -0.791205,
		-0.822502, 0.193501, 0.534835,
		33.374363, 29.364100, 20.880890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443882, 29.617098, 20.106922>,  <33.950115, 29.228649, 20.506506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443882, 29.617098, 20.106922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355858, 29.685528, 20.491070>,  <33.303043, 29.726585, 20.721558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.355858, 29.685528, 20.491070>,  <33.443882, 29.617098, 20.106922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355858, 29.685528, 20.491070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065598, 0.984868, -0.160409,
		-0.973278, 0.027698, -0.227953,
		-0.220060, 0.171076, 0.960368,
		33.289841, 29.736851, 20.779181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910694, 30.163710, 20.089872>,  <33.443882, 29.617098, 20.106922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910694, 30.163710, 20.089872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.057896, 30.171951, 20.461712>,  <33.146217, 30.176895, 20.684814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.057896, 30.171951, 20.461712>,  <32.910694, 30.163710, 20.089872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057896, 30.171951, 20.461712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017660, 0.999419, -0.029141,
		-0.929658, 0.027140, 0.367422,
		0.367999, 0.020602, 0.929598,
		33.168297, 30.178131, 20.740591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569393, 29.994539, 19.449728>,  <32.910694, 30.163710, 20.089872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569393, 29.994539, 19.449728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.410744, 30.151276, 19.117668>,  <32.315552, 30.245317, 18.918432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.410744, 30.151276, 19.117668>,  <32.569393, 29.994539, 19.449728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410744, 30.151276, 19.117668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131963, -0.870592, -0.473978,
		-0.908445, -0.297541, 0.293592,
		-0.396627, 0.391840, -0.830150,
		32.291756, 30.268827, 18.868624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115608, 29.436794, 19.121979>,  <32.569393, 29.994539, 19.449728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115608, 29.436794, 19.121979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.177814, 29.694832, 18.822735>,  <32.215137, 29.849653, 18.643188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.177814, 29.694832, 18.822735>,  <32.115608, 29.436794, 19.121979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177814, 29.694832, 18.822735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057325, -0.761943, -0.645103,
		-0.986169, 0.057439, -0.155475,
		0.155517, 0.645092, -0.748111,
		32.224468, 29.888359, 18.598301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633675, 29.261410, 18.659973>,  <32.115608, 29.436794, 19.121979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633675, 29.261410, 18.659973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.918631, 29.439888, 18.443302>,  <32.089603, 29.546974, 18.313299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.918631, 29.439888, 18.443302>,  <31.633675, 29.261410, 18.659973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918631, 29.439888, 18.443302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086319, -0.821703, -0.563340,
		-0.696456, 0.354560, -0.623887,
		0.712389, 0.446195, -0.541676,
		32.132347, 29.573746, 18.280800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410032, 29.222141, 17.924667>,  <31.633675, 29.261410, 18.659973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410032, 29.222141, 17.924667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.805212, 29.283592, 17.932163>,  <32.042320, 29.320463, 17.936661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.805212, 29.283592, 17.932163>,  <31.410032, 29.222141, 17.924667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805212, 29.283592, 17.932163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133368, -0.783656, -0.606710,
		-0.078524, 0.601898, -0.794702,
		0.987951, 0.153630, 0.018738,
		32.101597, 29.329681, 17.937784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569798, 29.079235, 17.223921>,  <31.410032, 29.222141, 17.924667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569798, 29.079235, 17.223921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.943880, 29.073215, 17.365437>,  <32.168327, 29.069603, 17.450346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.943880, 29.073215, 17.365437>,  <31.569798, 29.079235, 17.223921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943880, 29.073215, 17.365437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214583, -0.770671, -0.600016,
		0.281684, 0.637055, -0.717506,
		0.935205, -0.015050, 0.353787,
		32.224442, 29.068701, 17.471573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006039, 29.052019, 16.614937>,  <31.569798, 29.079235, 17.223921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006039, 29.052019, 16.614937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.216652, 28.918552, 16.927711>,  <32.343021, 28.838472, 17.115377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.216652, 28.918552, 16.927711>,  <32.006039, 29.052019, 16.614937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216652, 28.918552, 16.927711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292395, -0.792576, -0.535097,
		0.798290, 0.510382, -0.319756,
		0.526535, -0.333667, 0.781938,
		32.374611, 28.818453, 17.162292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655560, 28.806547, 16.376186>,  <32.006039, 29.052019, 16.614937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655560, 28.806547, 16.376186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.548313, 28.609467, 16.707333>,  <32.483963, 28.491219, 16.906019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.548313, 28.609467, 16.707333>,  <32.655560, 28.806547, 16.376186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548313, 28.609467, 16.707333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103874, -0.869102, -0.483603,
		0.957770, -0.043669, 0.284201,
		-0.268118, -0.492702, 0.827863,
		32.467876, 28.461657, 16.955692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238548, 28.318779, 16.546936>,  <32.655560, 28.806547, 16.376186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238548, 28.318779, 16.546936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.894321, 28.196453, 16.709862>,  <32.687786, 28.123058, 16.807617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.894321, 28.196453, 16.709862>,  <33.238548, 28.318779, 16.546936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894321, 28.196453, 16.709862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187789, -0.933855, -0.304385,
		0.473456, -0.185455, 0.861073,
		-0.860567, -0.305813, 0.407313,
		32.636150, 28.104710, 16.832056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412846, 27.805382, 16.988876>,  <33.238548, 28.318779, 16.546936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412846, 27.805382, 16.988876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.023071, 27.764774, 16.908707>,  <32.789207, 27.740410, 16.860605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.023071, 27.764774, 16.908707>,  <33.412846, 27.805382, 16.988876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023071, 27.764774, 16.908707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122957, -0.987606, -0.097555,
		-0.188035, -0.119704, 0.974841,
		-0.974436, -0.101520, -0.200423,
		32.730740, 27.734318, 16.848579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226318, 27.148911, 17.248320>,  <33.412846, 27.805382, 16.988876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226318, 27.148911, 17.248320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.896233, 27.179531, 17.024479>,  <32.698181, 27.197905, 16.890175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.896233, 27.179531, 17.024479>,  <33.226318, 27.148911, 17.248320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896233, 27.179531, 17.024479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021643, -0.994331, -0.104106,
		-0.564398, -0.073799, 0.822197,
		-0.825219, 0.076552, -0.559601,
		32.648666, 27.202497, 16.856598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614132, 26.836672, 17.649429>,  <33.226318, 27.148911, 17.248320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614132, 26.836672, 17.649429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.596584, 26.805328, 17.251045>,  <32.586056, 26.786522, 17.012014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.596584, 26.805328, 17.251045>,  <32.614132, 26.836672, 17.649429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596584, 26.805328, 17.251045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274523, -0.957597, 0.087432,
		-0.960579, 0.277250, 0.020499,
		-0.043871, -0.078358, -0.995960,
		32.583424, 26.781820, 16.952257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191914, 26.277203, 17.567198>,  <32.614132, 26.836672, 17.649429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191914, 26.277203, 17.567198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.340275, 26.319881, 17.198189>,  <32.429291, 26.345490, 16.976784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.340275, 26.319881, 17.198189>,  <32.191914, 26.277203, 17.567198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340275, 26.319881, 17.198189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047051, -0.989943, -0.133413,
		-0.927480, 0.092889, -0.362149,
		0.370900, 0.106698, -0.922523,
		32.451546, 26.351891, 16.921432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700558, 26.003826, 17.175264>,  <32.191914, 26.277203, 17.567198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700558, 26.003826, 17.175264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.040894, 25.984653, 16.965969>,  <32.245094, 25.973150, 16.840393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.040894, 25.984653, 16.965969>,  <31.700558, 26.003826, 17.175264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040894, 25.984653, 16.965969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111111, -0.989723, -0.090013,
		-0.513544, 0.134724, -0.847420,
		0.850839, -0.047932, -0.523236,
		32.296146, 25.970274, 16.808998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526468, 25.558243, 16.689451>,  <31.700558, 26.003826, 17.175264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526468, 25.558243, 16.689451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.926226, 25.561623, 16.675957>,  <32.166080, 25.563650, 16.667860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.926226, 25.561623, 16.675957>,  <31.526468, 25.558243, 16.689451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926226, 25.561623, 16.675957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006678, -0.998611, -0.052272,
		-0.034130, 0.052015, -0.998063,
		0.999395, 0.008449, -0.033736,
		32.226044, 25.564157, 16.665836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782747, 25.485399, 16.351130>,  <31.526468, 25.558243, 16.689451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782747, 25.485399, 16.351130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.501812, 25.350430, 16.601845>,  <30.333250, 25.269447, 16.752274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.501812, 25.350430, 16.601845>,  <30.782747, 25.485399, 16.351130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501812, 25.350430, 16.601845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256016, 0.941333, 0.219884,
		-0.664211, -0.006035, -0.747521,
		-0.702339, -0.337426, 0.626789,
		30.291111, 25.249201, 16.789881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226431, 25.961206, 16.094725>,  <30.782747, 25.485399, 16.351130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226431, 25.961206, 16.094725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.156628, 25.811901, 16.459190>,  <30.114746, 25.722319, 16.677870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.156628, 25.811901, 16.459190>,  <30.226431, 25.961206, 16.094725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156628, 25.811901, 16.459190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427653, 0.862262, 0.271324,
		-0.886939, -0.342315, -0.310097,
		-0.174507, -0.373262, 0.911166,
		30.104275, 25.699923, 16.732540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530453, 25.861994, 16.137590>,  <30.226431, 25.961206, 16.094725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530453, 25.861994, 16.137590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.708355, 25.912838, 16.492226>,  <29.815096, 25.943344, 16.705006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.708355, 25.912838, 16.492226>,  <29.530453, 25.861994, 16.137590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708355, 25.912838, 16.492226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341781, 0.939058, 0.036822,
		-0.827875, -0.319395, 0.461096,
		0.444757, 0.127110, 0.886586,
		29.841782, 25.950972, 16.758202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027628, 26.137104, 16.423832>,  <29.530453, 25.861994, 16.137590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027628, 26.137104, 16.423832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.322956, 26.191822, 16.688004>,  <29.500153, 26.224653, 16.846506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.322956, 26.191822, 16.688004>,  <29.027628, 26.137104, 16.423832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.322956, 26.191822, 16.688004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415151, 0.863900, 0.285177,
		-0.531536, -0.484731, 0.694626,
		0.738322, 0.136793, 0.660431,
		29.544453, 26.232861, 16.886133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752495, 26.359739, 17.092016>,  <29.027628, 26.137104, 16.423832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752495, 26.359739, 17.092016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.137274, 26.468594, 17.101784>,  <29.368141, 26.533907, 17.107643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.137274, 26.468594, 17.101784>,  <28.752495, 26.359739, 17.092016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137274, 26.468594, 17.101784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267716, 0.920900, 0.283323,
		0.054617, -0.279079, 0.958714,
		0.961949, 0.272137, 0.024418,
		29.425858, 26.550236, 17.109110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742142, 26.805189, 17.642904>,  <28.752495, 26.359739, 17.092016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742142, 26.805189, 17.642904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.078869, 26.894127, 17.446171>,  <29.280905, 26.947489, 17.328131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.078869, 26.894127, 17.446171>,  <28.742142, 26.805189, 17.642904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078869, 26.894127, 17.446171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184238, 0.974854, 0.125363,
		0.507342, -0.014918, 0.861616,
		0.841820, 0.222344, -0.491836,
		29.331415, 26.960831, 17.298620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241222, 27.246161, 17.990614>,  <28.742142, 26.805189, 17.642904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241222, 27.246161, 17.990614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.370556, 27.308971, 17.617348>,  <29.448156, 27.346659, 17.393389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.370556, 27.308971, 17.617348>,  <29.241222, 27.246161, 17.990614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370556, 27.308971, 17.617348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021853, 0.987112, 0.158533,
		0.946032, -0.030867, 0.322600,
		0.323335, 0.157027, -0.933165,
		29.467556, 27.356079, 17.337399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655012, 27.755329, 18.093899>,  <29.241222, 27.246161, 17.990614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655012, 27.755329, 18.093899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.574474, 27.761139, 17.702133>,  <29.526152, 27.764624, 17.467073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.574474, 27.761139, 17.702133>,  <29.655012, 27.755329, 18.093899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574474, 27.761139, 17.702133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070601, 0.997505, 0.000277,
		0.976973, -0.069092, -0.201865,
		-0.201342, 0.014522, -0.979413,
		29.514072, 27.765495, 17.408310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162640, 28.225039, 17.786200>,  <29.655012, 27.755329, 18.093899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162640, 28.225039, 17.786200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.837679, 28.208092, 17.553577>,  <29.642702, 28.197924, 17.414003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.837679, 28.208092, 17.553577>,  <30.162640, 28.225039, 17.786200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837679, 28.208092, 17.553577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035367, 0.991941, -0.121668,
		0.582023, -0.119411, -0.804357,
		-0.812403, -0.042366, -0.581555,
		29.593958, 28.195381, 17.379110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261829, 28.885330, 17.314253>,  <30.162640, 28.225039, 17.786200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261829, 28.885330, 17.314253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.879002, 28.770115, 17.301285>,  <29.649305, 28.700985, 17.293505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.879002, 28.770115, 17.301285>,  <30.261829, 28.885330, 17.314253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879002, 28.770115, 17.301285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289847, 0.951977, 0.098632,
		0.002453, 0.103794, -0.994596,
		-0.957070, -0.288039, -0.032419,
		29.591881, 28.683702, 17.291559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023819, 29.402719, 16.956438>,  <30.261829, 28.885330, 17.314253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023819, 29.402719, 16.956438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.694553, 29.250732, 17.125210>,  <29.496994, 29.159540, 17.226473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.694553, 29.250732, 17.125210>,  <30.023819, 29.402719, 16.956438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694553, 29.250732, 17.125210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300197, 0.921979, 0.244615,
		-0.481956, 0.074697, -0.873006,
		-0.823165, -0.379967, 0.421929,
		29.447603, 29.136742, 17.251789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501951, 29.771254, 16.671829>,  <30.023819, 29.402719, 16.956438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501951, 29.771254, 16.671829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.325663, 29.618046, 16.996559>,  <29.219889, 29.526121, 17.191397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.325663, 29.618046, 16.996559>,  <29.501951, 29.771254, 16.671829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325663, 29.618046, 16.996559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343553, 0.907510, 0.241655,
		-0.829298, -0.172402, -0.531548,
		-0.440723, -0.383019, 0.811825,
		29.193445, 29.503139, 17.240107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855257, 30.128981, 16.659088>,  <29.501951, 29.771254, 16.671829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855257, 30.128981, 16.659088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.878857, 29.985489, 17.031719>,  <28.893017, 29.899395, 17.255297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.878857, 29.985489, 17.031719>,  <28.855257, 30.128981, 16.659088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878857, 29.985489, 17.031719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600619, 0.732636, 0.320158,
		-0.797356, -0.578411, -0.172236,
		0.058997, -0.358728, 0.931576,
		28.896555, 29.877871, 17.311192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198084, 30.158148, 16.949572>,  <28.855257, 30.128981, 16.659088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198084, 30.158148, 16.949572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.440557, 30.159130, 17.267700>,  <28.586042, 30.159719, 17.458576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.440557, 30.159130, 17.267700>,  <28.198084, 30.158148, 16.949572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440557, 30.159130, 17.267700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428407, 0.843529, 0.323922,
		-0.670080, -0.537077, 0.512387,
		0.606184, 0.002457, 0.795321,
		28.622414, 30.159866, 17.506296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.166908, 41.580849, 21.748709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.352352, 41.368961, 22.032810>,  <41.463619, 41.241829, 22.203272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.352352, 41.368961, 22.032810>,  <41.166908, 41.580849, 21.748709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352352, 41.368961, 22.032810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444138, -0.832561, -0.331034,
		0.766685, -0.161979, -0.621254,
		0.463611, -0.529721, 0.710254,
		41.491436, 41.210045, 22.245886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193115, 41.056053, 21.517910>,  <41.166908, 41.580849, 21.748709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193115, 41.056053, 21.517910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.311806, 40.929134, 21.878193>,  <41.383018, 40.852985, 22.094364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.311806, 40.929134, 21.878193>,  <41.193115, 41.056053, 21.517910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311806, 40.929134, 21.878193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407932, -0.894918, -0.180866,
		0.863449, -0.313760, -0.394981,
		0.296727, -0.317294, 0.900709,
		41.400826, 40.833946, 22.148405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631508, 40.450188, 21.366913>,  <41.193115, 41.056053, 21.517910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631508, 40.450188, 21.366913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.465458, 40.451748, 21.730816>,  <41.365829, 40.452682, 21.949158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.465458, 40.451748, 21.730816>,  <41.631508, 40.450188, 21.366913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465458, 40.451748, 21.730816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504976, -0.832789, -0.226854,
		0.756751, -0.553577, 0.347677,
		-0.415123, 0.003896, 0.909757,
		41.340919, 40.452915, 22.003742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718769, 39.764381, 21.616287>,  <41.631508, 40.450188, 21.366913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718769, 39.764381, 21.616287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.425873, 39.865265, 21.869339>,  <41.250137, 39.925793, 22.021170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.425873, 39.865265, 21.869339>,  <41.718769, 39.764381, 21.616287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425873, 39.865265, 21.869339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392734, -0.915268, -0.089688,
		0.556405, -0.314128, 0.769244,
		-0.732238, 0.252206, 0.632629,
		41.206200, 39.940926, 22.059128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636856, 39.233364, 22.098484>,  <41.718769, 39.764381, 21.616287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636856, 39.233364, 22.098484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.286385, 39.426003, 22.090752>,  <41.076103, 39.541584, 22.086111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.286385, 39.426003, 22.090752>,  <41.636856, 39.233364, 22.098484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286385, 39.426003, 22.090752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477916, -0.873286, -0.094693,
		-0.062487, -0.073729, 0.995319,
		-0.876180, 0.481596, -0.019333,
		41.023529, 39.570480, 22.084951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168568, 38.968445, 22.595638>,  <41.636856, 39.233364, 22.098484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168568, 38.968445, 22.595638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.926987, 39.132484, 22.322273>,  <40.782036, 39.230907, 22.158255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.926987, 39.132484, 22.322273>,  <41.168568, 38.968445, 22.595638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926987, 39.132484, 22.322273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526208, -0.849188, -0.044552,
		-0.598616, 0.332709, 0.728672,
		-0.603957, 0.410103, -0.683412,
		40.745800, 39.255516, 22.117250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582394, 38.977562, 22.895153>,  <41.168568, 38.968445, 22.595638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582394, 38.977562, 22.895153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.510891, 38.992153, 22.501865>,  <40.467991, 39.000908, 22.265894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.510891, 38.992153, 22.501865>,  <40.582394, 38.977562, 22.895153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510891, 38.992153, 22.501865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471146, -0.880462, 0.052995,
		-0.863752, 0.472712, 0.174571,
		-0.178755, 0.036474, -0.983217,
		40.457264, 39.003094, 22.206900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951668, 38.584465, 22.784676>,  <40.582394, 38.977562, 22.895153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951668, 38.584465, 22.784676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.071312, 38.626472, 22.405308>,  <40.143097, 38.651676, 22.177687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.071312, 38.626472, 22.405308>,  <39.951668, 38.584465, 22.784676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071312, 38.626472, 22.405308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566579, -0.780207, -0.265078,
		-0.767803, 0.616644, -0.173868,
		0.299111, 0.105017, -0.948422,
		40.161045, 38.657978, 22.120781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350883, 38.492119, 22.434431>,  <39.951668, 38.584465, 22.784676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350883, 38.492119, 22.434431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.670296, 38.388363, 22.217152>,  <39.861942, 38.326107, 22.086784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.670296, 38.388363, 22.217152>,  <39.350883, 38.492119, 22.434431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670296, 38.388363, 22.217152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423244, -0.883610, -0.200245,
		-0.428033, 0.389807, -0.815376,
		0.798531, -0.259392, -0.543198,
		39.909855, 38.310547, 22.054192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022919, 38.240929, 21.868570>,  <39.350883, 38.492119, 22.434431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022919, 38.240929, 21.868570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.394485, 38.092854, 21.871986>,  <39.617424, 38.004009, 21.874037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.394485, 38.092854, 21.871986>,  <39.022919, 38.240929, 21.868570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394485, 38.092854, 21.871986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368285, -0.921249, 0.125165,
		-0.038465, -0.119414, -0.992099,
		0.928917, -0.370189, 0.008543,
		39.673161, 37.981796, 21.874550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867920, 37.508984, 21.697462>,  <39.022919, 38.240929, 21.868570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867920, 37.508984, 21.697462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.258739, 37.509689, 21.782661>,  <39.493233, 37.510113, 21.833782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.258739, 37.509689, 21.782661>,  <38.867920, 37.508984, 21.697462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258739, 37.509689, 21.782661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053511, -0.965866, 0.253456,
		0.206177, -0.259037, -0.943605,
		0.977051, 0.001764, 0.213000,
		39.551853, 37.510220, 21.846561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171402, 36.924942, 21.387337>,  <38.867920, 37.508984, 21.697462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171402, 36.924942, 21.387337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.403450, 37.026016, 21.697075>,  <39.542679, 37.086662, 21.882917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.403450, 37.026016, 21.697075>,  <39.171402, 36.924942, 21.387337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403450, 37.026016, 21.697075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024778, -0.944750, 0.326855,
		0.814152, -0.208803, -0.541810,
		0.580123, 0.252685, 0.774343,
		39.577488, 37.101822, 21.929379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595039, 36.414040, 21.568386>,  <39.171402, 36.924942, 21.387337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595039, 36.414040, 21.568386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.660580, 36.591934, 21.920605>,  <39.699902, 36.698673, 22.131935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.660580, 36.591934, 21.920605>,  <39.595039, 36.414040, 21.568386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660580, 36.591934, 21.920605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015166, -0.891367, 0.453029,
		0.986369, -0.087581, -0.139302,
		0.163846, 0.444741, 0.880545,
		39.709732, 36.725357, 22.184769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173527, 36.136570, 21.868549>,  <39.595039, 36.414040, 21.568386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173527, 36.136570, 21.868549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.954346, 36.279362, 22.171154>,  <39.822838, 36.365036, 22.352716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.954346, 36.279362, 22.171154>,  <40.173527, 36.136570, 21.868549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954346, 36.279362, 22.171154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174567, -0.835657, 0.520773,
		0.818090, 0.417422, 0.395585,
		-0.547955, 0.356983, 0.756511,
		39.789959, 36.386456, 22.398108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603977, 36.025581, 22.489346>,  <40.173527, 36.136570, 21.868549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603977, 36.025581, 22.489346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.233246, 36.110031, 22.613552>,  <40.010807, 36.160702, 22.688076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.233246, 36.110031, 22.613552>,  <40.603977, 36.025581, 22.489346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233246, 36.110031, 22.613552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037024, -0.771549, 0.635091,
		0.373658, 0.600116, 0.707276,
		-0.926827, 0.211121, 0.310515,
		39.955196, 36.173367, 22.706707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641525, 36.009098, 23.196529>,  <40.603977, 36.025581, 22.489346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641525, 36.009098, 23.196529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.249771, 35.969196, 23.126263>,  <40.014721, 35.945255, 23.084103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.249771, 35.969196, 23.126263>,  <40.641525, 36.009098, 23.196529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249771, 35.969196, 23.126263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033888, -0.776125, 0.629668,
		-0.199150, 0.622639, 0.756743,
		-0.979383, -0.099754, -0.175665,
		39.955956, 35.939270, 23.073563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380417, 35.810688, 23.895784>,  <40.641525, 36.009098, 23.196529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380417, 35.810688, 23.895784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.080162, 35.715904, 23.649078>,  <39.900009, 35.659035, 23.501055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.080162, 35.715904, 23.649078>,  <40.380417, 35.810688, 23.895784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080162, 35.715904, 23.649078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084864, -0.891165, 0.445671,
		-0.655246, 0.386876, 0.648829,
		-0.750633, -0.236962, -0.616765,
		39.854973, 35.644817, 23.464048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935795, 35.545105, 24.296703>,  <40.380417, 35.810688, 23.895784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935795, 35.545105, 24.296703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.814884, 35.410763, 23.939865>,  <39.742340, 35.330158, 23.725763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.814884, 35.410763, 23.939865>,  <39.935795, 35.545105, 24.296703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814884, 35.410763, 23.939865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196753, -0.893737, 0.403142,
		-0.932695, 0.297381, 0.204072,
		-0.302273, -0.335856, -0.892094,
		39.724201, 35.310005, 23.672237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261753, 35.321201, 24.415249>,  <39.935795, 35.545105, 24.296703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261753, 35.321201, 24.415249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.393417, 35.139954, 24.083866>,  <39.472416, 35.031204, 23.885036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.393417, 35.139954, 24.083866>,  <39.261753, 35.321201, 24.415249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393417, 35.139954, 24.083866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328091, -0.877566, 0.349620,
		-0.885444, 0.156728, -0.437522,
		0.329159, -0.453116, -0.828457,
		39.492165, 35.004021, 23.835329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784161, 34.869572, 24.203791>,  <39.261753, 35.321201, 24.415249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784161, 34.869572, 24.203791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.110657, 34.708664, 24.037937>,  <39.306557, 34.612118, 23.938425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.110657, 34.708664, 24.037937>,  <38.784161, 34.869572, 24.203791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110657, 34.708664, 24.037937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231897, -0.885512, 0.402607,
		-0.529120, -0.232474, -0.816080,
		0.816244, -0.402274, -0.414633,
		39.355530, 34.587982, 23.913548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584068, 34.317268, 23.748959>,  <38.784161, 34.869572, 24.203791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584068, 34.317268, 23.748959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.957279, 34.227722, 23.861629>,  <39.181206, 34.173996, 23.929232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.957279, 34.227722, 23.861629>,  <38.584068, 34.317268, 23.748959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957279, 34.227722, 23.861629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315247, -0.885980, 0.340087,
		0.173427, -0.406109, -0.897217,
		0.933028, -0.223865, 0.281677,
		39.237186, 34.160564, 23.946133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969006, 34.671017, 23.438463>,  <38.584068, 34.317268, 23.748959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969006, 34.671017, 23.438463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.628605, 34.762894, 23.627369>,  <37.424362, 34.818020, 23.740711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.628605, 34.762894, 23.627369>,  <37.969006, 34.671017, 23.438463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628605, 34.762894, 23.627369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335006, 0.929978, 0.151365,
		-0.404426, 0.287023, -0.868365,
		-0.851006, 0.229691, 0.472262,
		37.373302, 34.831802, 23.769047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731831, 35.291862, 23.180300>,  <37.969006, 34.671017, 23.438463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731831, 35.291862, 23.180300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.575790, 35.268150, 23.547844>,  <37.482166, 35.253922, 23.768370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.575790, 35.268150, 23.547844>,  <37.731831, 35.291862, 23.180300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575790, 35.268150, 23.547844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292586, 0.938222, 0.184752,
		-0.873047, 0.340918, -0.348659,
		-0.390105, -0.059284, 0.918860,
		37.458759, 35.250366, 23.823502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336834, 35.908314, 23.221134>,  <37.731831, 35.291862, 23.180300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336834, 35.908314, 23.221134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.369427, 35.784111, 23.599964>,  <37.388985, 35.709591, 23.827261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.369427, 35.784111, 23.599964>,  <37.336834, 35.908314, 23.221134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369427, 35.784111, 23.599964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179251, 0.939305, 0.292533,
		-0.980423, 0.145926, 0.132197,
		0.081485, -0.310503, 0.947073,
		37.393871, 35.690960, 23.884087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945637, 36.348026, 23.610144>,  <37.336834, 35.908314, 23.221134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945637, 36.348026, 23.610144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.201191, 36.208843, 23.884586>,  <37.354523, 36.125332, 24.049252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.201191, 36.208843, 23.884586>,  <36.945637, 36.348026, 23.610144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201191, 36.208843, 23.884586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169070, 0.933566, 0.316023,
		-0.750490, -0.085904, 0.655275,
		0.638890, -0.347960, 0.686108,
		37.392857, 36.104454, 24.090418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816265, 36.752705, 24.143978>,  <36.945637, 36.348026, 23.610144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816265, 36.752705, 24.143978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.170845, 36.606014, 24.256912>,  <37.383595, 36.518002, 24.324673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.170845, 36.606014, 24.256912>,  <36.816265, 36.752705, 24.143978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170845, 36.606014, 24.256912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248736, 0.891942, 0.377586,
		-0.390298, -0.264485, 0.881882,
		0.886452, -0.366727, 0.282336,
		37.436779, 36.495995, 24.341614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969990, 36.932514, 24.865980>,  <36.816265, 36.752705, 24.143978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969990, 36.932514, 24.865980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.329857, 36.844131, 24.715366>,  <37.545776, 36.791100, 24.624998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.329857, 36.844131, 24.715366>,  <36.969990, 36.932514, 24.865980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329857, 36.844131, 24.715366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402684, 0.753183, 0.520155,
		0.168666, -0.619590, 0.766590,
		0.899665, -0.220961, -0.376535,
		37.599758, 36.777843, 24.602406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459370, 37.072083, 25.416210>,  <36.969990, 36.932514, 24.865980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459370, 37.072083, 25.416210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.668064, 37.062046, 25.075115>,  <37.793282, 37.056023, 24.870459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.668064, 37.062046, 25.075115>,  <37.459370, 37.072083, 25.416210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668064, 37.062046, 25.075115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576270, 0.747410, 0.330593,
		0.629049, -0.663889, 0.404411,
		0.521738, -0.025091, -0.852737,
		37.824585, 37.054520, 24.819294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197678, 36.980267, 25.509148>,  <37.459370, 37.072083, 25.416210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197678, 36.980267, 25.509148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.156132, 37.165939, 25.157295>,  <38.131207, 37.277344, 24.946184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.156132, 37.165939, 25.157295>,  <38.197678, 36.980267, 25.509148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156132, 37.165939, 25.157295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669125, 0.686951, 0.283498,
		0.735857, -0.559137, -0.381943,
		-0.103862, 0.464181, -0.879630,
		38.124973, 37.305195, 24.893406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812550, 37.133648, 25.242931>,  <38.197678, 36.980267, 25.509148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812550, 37.133648, 25.242931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.597321, 37.402908, 25.040012>,  <38.468185, 37.564465, 24.918261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.597321, 37.402908, 25.040012>,  <38.812550, 37.133648, 25.242931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597321, 37.402908, 25.040012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551874, 0.736257, 0.391614,
		0.637115, -0.069248, -0.767651,
		-0.538070, 0.673150, -0.507297,
		38.435898, 37.604855, 24.887823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262833, 37.606056, 24.860701>,  <38.812550, 37.133648, 25.242931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262833, 37.606056, 24.860701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.911499, 37.793064, 24.900608>,  <38.700699, 37.905270, 24.924553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.911499, 37.793064, 24.900608>,  <39.262833, 37.606056, 24.860701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911499, 37.793064, 24.900608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471627, 0.813369, 0.340586,
		0.078080, 0.346203, -0.934905,
		-0.878335, 0.467519, 0.099771,
		38.647999, 37.933319, 24.930540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452236, 38.272736, 24.642759>,  <39.262833, 37.606056, 24.860701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452236, 38.272736, 24.642759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.096199, 38.327248, 24.816727>,  <38.882576, 38.359955, 24.921108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.096199, 38.327248, 24.816727>,  <39.452236, 38.272736, 24.642759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096199, 38.327248, 24.816727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295726, 0.898796, 0.323592,
		-0.346806, 0.416645, -0.840317,
		-0.890096, 0.136280, 0.434921,
		38.829170, 38.368134, 24.947203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388874, 38.935921, 24.547306>,  <39.452236, 38.272736, 24.642759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388874, 38.935921, 24.547306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.120876, 38.853527, 24.832592>,  <38.960079, 38.804092, 25.003763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.120876, 38.853527, 24.832592>,  <39.388874, 38.935921, 24.547306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120876, 38.853527, 24.832592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159762, 0.898217, 0.409490,
		-0.724970, 0.388302, -0.568894,
		-0.669996, -0.205980, 0.713217,
		38.919876, 38.791733, 25.046556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978786, 39.548668, 24.575676>,  <39.388874, 38.935921, 24.547306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978786, 39.548668, 24.575676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.959995, 39.369373, 24.932747>,  <38.948719, 39.261795, 25.146990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.959995, 39.369373, 24.932747>,  <38.978786, 39.548668, 24.575676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959995, 39.369373, 24.932747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071288, 0.889882, 0.450587,
		-0.996349, 0.084805, -0.009851,
		-0.046978, -0.448240, 0.892678,
		38.945900, 39.234901, 25.200550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645744, 39.994026, 24.946806>,  <38.978786, 39.548668, 24.575676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645744, 39.994026, 24.946806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.798656, 39.760204, 25.233067>,  <38.890404, 39.619911, 25.404823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.798656, 39.760204, 25.233067>,  <38.645744, 39.994026, 24.946806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798656, 39.760204, 25.233067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172500, 0.806008, 0.566211,
		-0.907801, -0.093004, 0.408960,
		0.382285, -0.584552, 0.715651,
		38.913342, 39.584839, 25.447762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415356, 40.246834, 25.544035>,  <38.645744, 39.994026, 24.946806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415356, 40.246834, 25.544035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.747879, 40.044285, 25.635696>,  <38.947392, 39.922756, 25.690693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.747879, 40.044285, 25.635696>,  <38.415356, 40.246834, 25.544035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747879, 40.044285, 25.635696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396069, 0.828948, 0.394936,
		-0.389941, -0.237554, 0.889671,
		0.831309, -0.506373, 0.229153,
		38.997272, 39.892372, 25.704443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556641, 40.512054, 26.218048>,  <38.415356, 40.246834, 25.544035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556641, 40.512054, 26.218048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.882690, 40.327229, 26.078297>,  <39.078320, 40.216331, 25.994446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.882690, 40.327229, 26.078297>,  <38.556641, 40.512054, 26.218048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882690, 40.327229, 26.078297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561912, 0.777287, 0.282984,
		0.140808, -0.426986, 0.893228,
		0.815124, -0.462070, -0.349376,
		39.127228, 40.188606, 25.973484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029568, 40.726555, 26.686110>,  <38.556641, 40.512054, 26.218048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029568, 40.726555, 26.686110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.228535, 40.594463, 26.365231>,  <39.347916, 40.515209, 26.172703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.228535, 40.594463, 26.365231>,  <39.029568, 40.726555, 26.686110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228535, 40.594463, 26.365231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529179, 0.848249, -0.021060,
		0.687416, -0.414030, 0.596689,
		0.497422, -0.330232, -0.802196,
		39.377762, 40.495392, 26.124573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579128, 40.907707, 26.873072>,  <39.029568, 40.726555, 26.686110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579128, 40.907707, 26.873072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.584599, 40.886074, 26.473694>,  <39.587883, 40.873093, 26.234068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.584599, 40.886074, 26.473694>,  <39.579128, 40.907707, 26.873072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584599, 40.886074, 26.473694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468668, 0.882405, -0.041380,
		0.883269, -0.467372, 0.037420,
		0.013679, -0.054087, -0.998443,
		39.588703, 40.869846, 26.174162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262497, 41.096638, 26.617538>,  <39.579128, 40.907707, 26.873072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262497, 41.096638, 26.617538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.060040, 41.122849, 26.273556>,  <39.938564, 41.138573, 26.067165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.060040, 41.122849, 26.273556>,  <40.262497, 41.096638, 26.617538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060040, 41.122849, 26.273556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534685, 0.806205, -0.253269,
		0.676708, -0.587997, -0.443087,
		-0.506140, 0.065523, -0.859959,
		39.908199, 41.142506, 26.015568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746719, 41.090710, 26.117487>,  <40.262497, 41.096638, 26.617538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746719, 41.090710, 26.117487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.414986, 41.261978, 25.973896>,  <40.215946, 41.364738, 25.887741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.414986, 41.261978, 25.973896>,  <40.746719, 41.090710, 26.117487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414986, 41.261978, 25.973896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541605, 0.773951, -0.328122,
		0.137339, -0.466549, -0.873768,
		-0.829338, 0.428174, -0.358979,
		40.166183, 41.390430, 25.866203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890129, 41.164204, 25.438972>,  <40.746719, 41.090710, 26.117487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890129, 41.164204, 25.438972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.647720, 41.471188, 25.522629>,  <40.502274, 41.655376, 25.572823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.647720, 41.471188, 25.522629>,  <40.890129, 41.164204, 25.438972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647720, 41.471188, 25.522629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738036, 0.640577, -0.212046,
		-0.296707, 0.025846, -0.954619,
		-0.606026, 0.767459, 0.209139,
		40.465912, 41.701424, 25.585371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.292356, 23.693497, 18.846537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.666601, 23.777737, 18.733204>,  <28.891148, 23.828281, 18.665205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.666601, 23.777737, 18.733204>,  <28.292356, 23.693497, 18.846537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666601, 23.777737, 18.733204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314139, -0.862855, 0.395978,
		-0.161081, -0.459487, -0.873456,
		0.935612, 0.210602, -0.283332,
		28.947285, 23.840918, 18.648205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547470, 23.376135, 18.187117>,  <28.292356, 23.693497, 18.846537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547470, 23.376135, 18.187117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.803825, 23.434780, 18.488518>,  <28.957638, 23.469967, 18.669359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.803825, 23.434780, 18.488518>,  <28.547470, 23.376135, 18.187117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803825, 23.434780, 18.488518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086350, -0.989130, 0.119017,
		0.762762, -0.011212, -0.646582,
		0.640888, 0.146614, 0.753503,
		28.996092, 23.478764, 18.714569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160442, 22.911175, 18.213203>,  <28.547470, 23.376135, 18.187117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160442, 22.911175, 18.213203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.077932, 23.029110, 18.586411>,  <29.028425, 23.099871, 18.810335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.077932, 23.029110, 18.586411>,  <29.160442, 22.911175, 18.213203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077932, 23.029110, 18.586411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077558, -0.945596, 0.315962,
		0.975415, 0.137538, 0.172187,
		-0.206277, 0.294840, 0.933016,
		29.016048, 23.117561, 18.866316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657700, 22.660454, 18.575644>,  <29.160442, 22.911175, 18.213203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657700, 22.660454, 18.575644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.357628, 22.732410, 18.830162>,  <29.177586, 22.775583, 18.982874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.357628, 22.732410, 18.830162>,  <29.657700, 22.660454, 18.575644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357628, 22.732410, 18.830162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013554, -0.966264, 0.257197,
		0.661098, 0.184319, 0.727307,
		-0.750177, 0.179890, 0.636297,
		29.132574, 22.786377, 19.021051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929079, 22.460760, 19.212500>,  <29.657700, 22.660454, 18.575644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929079, 22.460760, 19.212500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.545238, 22.429062, 19.320488>,  <29.314934, 22.410044, 19.385281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.545238, 22.429062, 19.320488>,  <29.929079, 22.460760, 19.212500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545238, 22.429062, 19.320488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169123, -0.929287, 0.328366,
		0.224858, 0.360759, 0.905148,
		-0.959602, -0.079245, 0.269970,
		29.257359, 22.405289, 19.401480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774799, 22.045734, 19.971106>,  <29.929079, 22.460760, 19.212500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774799, 22.045734, 19.971106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.441177, 22.000744, 19.755070>,  <29.241003, 21.973749, 19.625448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.441177, 22.000744, 19.755070>,  <29.774799, 22.045734, 19.971106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441177, 22.000744, 19.755070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001869, -0.979567, 0.201110,
		-0.551675, 0.166728, 0.817225,
		-0.834057, -0.112474, -0.540091,
		29.190960, 21.967001, 19.593042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251856, 21.609112, 20.376587>,  <29.774799, 22.045734, 19.971106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251856, 21.609112, 20.376587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.166071, 21.592854, 19.986233>,  <29.114599, 21.583099, 19.752020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.166071, 21.592854, 19.986233>,  <29.251856, 21.609112, 20.376587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166071, 21.592854, 19.986233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013733, -0.998910, 0.044622,
		-0.976635, 0.022972, 0.213672,
		-0.214464, -0.040645, -0.975886,
		29.101732, 21.580660, 19.693466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672861, 21.209562, 20.355928>,  <29.251856, 21.609112, 20.376587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672861, 21.209562, 20.355928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.848215, 21.175293, 19.998051>,  <28.953428, 21.154732, 19.783323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.848215, 21.175293, 19.998051>,  <28.672861, 21.209562, 20.355928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848215, 21.175293, 19.998051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033081, -0.996310, 0.079193,
		-0.898177, -0.005119, -0.439604,
		0.438387, -0.085672, -0.894694,
		28.979731, 21.149591, 19.729643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297079, 20.675615, 20.076647>,  <28.672861, 21.209562, 20.355928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297079, 20.675615, 20.076647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.593786, 20.696144, 19.809170>,  <28.771811, 20.708462, 19.648684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.593786, 20.696144, 19.809170>,  <28.297079, 20.675615, 20.076647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593786, 20.696144, 19.809170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098664, -0.977869, -0.184495,
		-0.663361, 0.202828, -0.720287,
		0.741767, 0.051320, -0.668692,
		28.816317, 20.711540, 19.608562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038410, 20.264177, 19.488590>,  <28.297079, 20.675615, 20.076647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038410, 20.264177, 19.488590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.436255, 20.292561, 19.458347>,  <28.674961, 20.309591, 19.440201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.436255, 20.292561, 19.458347>,  <28.038410, 20.264177, 19.488590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436255, 20.292561, 19.458347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023413, -0.864024, -0.502906,
		-0.101014, 0.498425, -0.861027,
		0.994609, 0.070960, -0.075609,
		28.734638, 20.313848, 19.435665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308853, 20.174273, 18.733486>,  <28.038410, 20.264177, 19.488590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308853, 20.174273, 18.733486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.623861, 20.076473, 18.959770>,  <28.812866, 20.017794, 19.095541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.623861, 20.076473, 18.959770>,  <28.308853, 20.174273, 18.733486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623861, 20.076473, 18.959770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053958, -0.941765, -0.331913,
		0.613920, 0.230864, -0.754854,
		0.787522, -0.244498, 0.565712,
		28.860117, 20.003124, 19.129484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648149, 19.806467, 18.321703>,  <28.308853, 20.174273, 18.733486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648149, 19.806467, 18.321703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.813896, 19.709641, 18.672634>,  <28.913343, 19.651545, 18.883192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.813896, 19.709641, 18.672634>,  <28.648149, 19.806467, 18.321703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813896, 19.709641, 18.672634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030114, -0.967098, -0.252615,
		0.909612, 0.078255, -0.408023,
		0.414366, -0.242068, 0.877327,
		28.938206, 19.637020, 18.935833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125162, 19.331268, 18.218433>,  <28.648149, 19.806467, 18.321703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125162, 19.331268, 18.218433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.107819, 19.265106, 18.612541>,  <29.097412, 19.225409, 18.849007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.107819, 19.265106, 18.612541>,  <29.125162, 19.331268, 18.218433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107819, 19.265106, 18.612541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225273, -0.962420, -0.151657,
		0.973330, 0.215379, 0.078991,
		-0.043358, -0.165407, 0.985272,
		29.094810, 19.215485, 18.908123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735357, 19.197014, 17.765808>,  <29.125162, 19.331268, 18.218433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735357, 19.197014, 17.765808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.984615, 19.264420, 17.460312>,  <30.134171, 19.304863, 17.277014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.984615, 19.264420, 17.460312>,  <29.735357, 19.197014, 17.765808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984615, 19.264420, 17.460312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271019, 0.962534, -0.008752,
		0.733649, 0.212441, 0.645467,
		0.623143, 0.168512, -0.763738,
		30.171558, 19.314974, 17.231190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140930, 19.727720, 17.917276>,  <29.735357, 19.197014, 17.765808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140930, 19.727720, 17.917276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.118868, 19.705536, 17.518501>,  <30.105631, 19.692225, 17.279236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.118868, 19.705536, 17.518501>,  <30.140930, 19.727720, 17.917276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118868, 19.705536, 17.518501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090372, 0.994635, -0.050334,
		0.994380, 0.087319, -0.059870,
		-0.055154, -0.055462, -0.996937,
		30.102322, 19.688898, 17.219419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620134, 20.205893, 17.697142>,  <30.140930, 19.727720, 17.917276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620134, 20.205893, 17.697142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.348577, 20.160522, 17.406971>,  <30.185644, 20.133301, 17.232868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.348577, 20.160522, 17.406971>,  <30.620134, 20.205893, 17.697142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348577, 20.160522, 17.406971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001612, 0.987763, -0.155952,
		0.734238, -0.107044, -0.670400,
		-0.678891, -0.113425, -0.725426,
		30.144911, 20.126495, 17.189342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750792, 20.746838, 17.150280>,  <30.620134, 20.205893, 17.697142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750792, 20.746838, 17.150280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.372747, 20.636406, 17.080376>,  <30.145920, 20.570147, 17.038433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.372747, 20.636406, 17.080376>,  <30.750792, 20.746838, 17.150280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372747, 20.636406, 17.080376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212999, 0.926163, -0.311215,
		0.247779, -0.256909, -0.934132,
		-0.945112, -0.276082, -0.174763,
		30.089214, 20.553581, 17.027946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718185, 20.812311, 16.495140>,  <30.750792, 20.746838, 17.150280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718185, 20.812311, 16.495140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.350313, 20.834637, 16.650612>,  <30.129589, 20.848032, 16.743895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.350313, 20.834637, 16.650612>,  <30.718185, 20.812311, 16.495140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350313, 20.834637, 16.650612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081093, 0.941513, -0.327074,
		-0.384203, -0.332323, -0.861365,
		-0.919681, 0.055812, 0.388681,
		30.074409, 20.851379, 16.767216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349232, 21.199011, 16.051517>,  <30.718185, 20.812311, 16.495140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349232, 21.199011, 16.051517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.096334, 21.202675, 16.361404>,  <29.944597, 21.204874, 16.547337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.096334, 21.202675, 16.361404>,  <30.349232, 21.199011, 16.051517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096334, 21.202675, 16.361404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239703, 0.948558, -0.206835,
		-0.736759, -0.316472, -0.597522,
		-0.632241, 0.009160, 0.774717,
		29.906662, 21.205423, 16.593819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831152, 21.637569, 15.843193>,  <30.349232, 21.199011, 16.051517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831152, 21.637569, 15.843193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.719673, 21.642128, 16.227318>,  <29.652786, 21.644863, 16.457792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.719673, 21.642128, 16.227318>,  <29.831152, 21.637569, 15.843193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719673, 21.642128, 16.227318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109271, 0.993060, -0.043496,
		-0.954143, -0.117057, -0.275515,
		-0.278695, 0.011395, 0.960312,
		29.636065, 21.645546, 16.515411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314041, 22.090565, 15.903226>,  <29.831152, 21.637569, 15.843193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314041, 22.090565, 15.903226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.470726, 22.064373, 16.270329>,  <29.564737, 22.048658, 16.490589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.470726, 22.064373, 16.270329>,  <29.314041, 22.090565, 15.903226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470726, 22.064373, 16.270329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093371, 0.989486, 0.110449,
		-0.915338, -0.128956, 0.381478,
		0.391711, -0.065479, 0.917755,
		29.588240, 22.044729, 16.545654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.951330, 22.577774, 16.361427>,  <29.314041, 22.090565, 15.903226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.951330, 22.577774, 16.361427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.298555, 22.537750, 16.555935>,  <29.506889, 22.513737, 16.672640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.298555, 22.537750, 16.555935>,  <28.951330, 22.577774, 16.361427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298555, 22.537750, 16.555935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077471, 0.994781, 0.066397,
		-0.490375, -0.019965, 0.871283,
		0.868061, -0.100058, 0.486269,
		29.558973, 22.507732, 16.701815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955973, 23.073109, 16.921598>,  <28.951330, 22.577774, 16.361427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955973, 23.073109, 16.921598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.339869, 22.967041, 16.884541>,  <29.570206, 22.903400, 16.862307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.339869, 22.967041, 16.884541>,  <28.955973, 23.073109, 16.921598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339869, 22.967041, 16.884541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280809, 0.897946, 0.338880,
		-0.006673, -0.351251, 0.936257,
		0.959741, -0.265171, -0.092642,
		29.627790, 22.887489, 16.856749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300608, 23.396425, 17.459112>,  <28.955973, 23.073109, 16.921598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300608, 23.396425, 17.459112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.592361, 23.357090, 17.188313>,  <29.767414, 23.333488, 17.025833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.592361, 23.357090, 17.188313>,  <29.300608, 23.396425, 17.459112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592361, 23.357090, 17.188313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266958, 0.952069, 0.149322,
		0.629868, -0.289644, 0.720675,
		0.729383, -0.098337, -0.677001,
		29.811176, 23.327589, 16.985212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771345, 23.663940, 17.735023>,  <29.300608, 23.396425, 17.459112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771345, 23.663940, 17.735023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.877609, 23.657322, 17.349453>,  <29.941368, 23.653351, 17.118111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.877609, 23.657322, 17.349453>,  <29.771345, 23.663940, 17.735023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877609, 23.657322, 17.349453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242302, 0.968904, 0.050147,
		0.933121, -0.246883, 0.261407,
		0.265659, -0.016546, -0.963925,
		29.957306, 23.652359, 17.060276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467949, 23.889898, 17.621626>,  <29.771345, 23.663940, 17.735023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467949, 23.889898, 17.621626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.288300, 23.954384, 17.270103>,  <30.180510, 23.993076, 17.059191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.288300, 23.954384, 17.270103>,  <30.467949, 23.889898, 17.621626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288300, 23.954384, 17.270103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266246, 0.963050, 0.040602,
		0.852878, -0.215743, -0.475452,
		-0.449124, 0.161215, -0.878804,
		30.153563, 24.002748, 17.006462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957527, 24.291571, 17.250046>,  <30.467949, 23.889898, 17.621626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957527, 24.291571, 17.250046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.614370, 24.347939, 17.052395>,  <30.408476, 24.381760, 16.933804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.614370, 24.347939, 17.052395>,  <30.957527, 24.291571, 17.250046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614370, 24.347939, 17.052395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176825, 0.983888, -0.026409,
		0.482447, -0.110031, -0.868987,
		-0.857892, 0.140918, -0.494130,
		30.357002, 24.390213, 16.904156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115686, 24.818287, 16.717442>,  <30.957527, 24.291571, 17.250046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115686, 24.818287, 16.717442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.719378, 24.799576, 16.768330>,  <30.481592, 24.788349, 16.798862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.719378, 24.799576, 16.768330>,  <31.115686, 24.818287, 16.717442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719378, 24.799576, 16.768330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002633, 0.931748, 0.363096,
		-0.135520, 0.360080, -0.923026,
		-0.990771, -0.046776, 0.127219,
		30.422146, 24.785543, 16.806496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823507, 24.954151, 16.360338>,  <31.115686, 24.818287, 16.717442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823507, 24.954151, 16.360338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.161732, 25.067856, 16.541103>,  <32.364666, 25.136078, 16.649563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.161732, 25.067856, 16.541103>,  <31.823507, 24.954151, 16.360338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161732, 25.067856, 16.541103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280287, -0.956790, 0.077404,
		0.454387, 0.061215, -0.888698,
		0.845560, 0.284261, 0.451911,
		32.415401, 25.153133, 16.676676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389679, 24.618235, 16.034084>,  <31.823507, 24.954151, 16.360338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389679, 24.618235, 16.034084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.587852, 24.721394, 16.365875>,  <32.706757, 24.783289, 16.564951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.587852, 24.721394, 16.365875>,  <32.389679, 24.618235, 16.034084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587852, 24.721394, 16.365875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309923, -0.944543, 0.108561,
		0.811476, 0.203289, -0.547887,
		0.495434, 0.257898, 0.829478,
		32.736481, 24.798763, 16.614719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013664, 24.276110, 15.990065>,  <32.389679, 24.618235, 16.034084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013664, 24.276110, 15.990065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994301, 24.351391, 16.382439>,  <32.982681, 24.396559, 16.617863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994301, 24.351391, 16.382439>,  <33.013664, 24.276110, 15.990065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994301, 24.351391, 16.382439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280832, -0.939906, 0.194191,
		0.958535, 0.284880, -0.007350,
		-0.048413, 0.188203, 0.980936,
		32.979778, 24.407852, 16.676720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605091, 23.968472, 16.252672>,  <33.013664, 24.276110, 15.990065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605091, 23.968472, 16.252672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355186, 23.992111, 16.564102>,  <33.205242, 24.006294, 16.750961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355186, 23.992111, 16.564102>,  <33.605091, 23.968472, 16.252672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355186, 23.992111, 16.564102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258126, -0.925437, 0.277377,
		0.736916, 0.374265, 0.562921,
		-0.624760, 0.059099, 0.778577,
		33.167759, 24.009842, 16.797676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981621, 23.780365, 16.815903>,  <33.605091, 23.968472, 16.252672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981621, 23.780365, 16.815903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.600208, 23.711502, 16.914814>,  <33.371361, 23.670185, 16.974161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.600208, 23.711502, 16.914814>,  <33.981621, 23.780365, 16.815903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600208, 23.711502, 16.914814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243509, -0.923646, 0.295942,
		0.177449, 0.342403, 0.922644,
		-0.953528, -0.172157, 0.247279,
		33.314152, 23.659855, 16.988998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965542, 23.464533, 17.466906>,  <33.981621, 23.780365, 16.815903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965542, 23.464533, 17.466906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.603954, 23.369495, 17.324699>,  <33.387001, 23.312473, 17.239376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.603954, 23.369495, 17.324699>,  <33.965542, 23.464533, 17.466906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603954, 23.369495, 17.324699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160280, -0.959076, 0.233416,
		-0.396425, 0.154018, 0.905056,
		-0.903968, -0.237594, -0.355516,
		33.332764, 23.298218, 17.218044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963707, 22.868147, 17.707411>,  <33.965542, 23.464533, 17.466906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963707, 22.868147, 17.707411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648991, 22.873398, 17.460579>,  <33.460159, 22.876549, 17.312479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648991, 22.873398, 17.460579>,  <33.963707, 22.868147, 17.707411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648991, 22.873398, 17.460579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023452, -0.998416, -0.051144,
		-0.616775, -0.054712, 0.785236,
		-0.786790, 0.013129, -0.617081,
		33.412952, 22.877337, 17.275455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823715, 22.931107, 18.403494>,  <33.963707, 22.868147, 17.707411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823715, 22.931107, 18.403494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.949409, 22.800674, 18.760128>,  <34.024826, 22.722414, 18.974110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.949409, 22.800674, 18.760128>,  <33.823715, 22.931107, 18.403494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949409, 22.800674, 18.760128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027861, 0.935588, 0.351994,
		-0.948936, -0.135449, 0.284911,
		0.314236, -0.326082, 0.891586,
		34.043682, 22.702850, 19.027603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345505, 23.133432, 18.919542>,  <33.823715, 22.931107, 18.403494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345505, 23.133432, 18.919542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.688610, 23.085804, 19.119568>,  <33.894474, 23.057226, 19.239584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.688610, 23.085804, 19.119568>,  <33.345505, 23.133432, 18.919542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688610, 23.085804, 19.119568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124387, 0.895814, 0.426669,
		-0.498768, -0.428182, 0.753585,
		0.857763, -0.119073, 0.500064,
		33.945938, 23.050081, 19.269587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126434, 23.300621, 19.589293>,  <33.345505, 23.133432, 18.919542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126434, 23.300621, 19.589293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522720, 23.346855, 19.560635>,  <33.760490, 23.374596, 19.543440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522720, 23.346855, 19.560635>,  <33.126434, 23.300621, 19.589293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522720, 23.346855, 19.560635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050950, 0.803956, 0.592502,
		0.126082, -0.583348, 0.802377,
		0.990711, 0.115585, -0.071642,
		33.819935, 23.381531, 19.539143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271187, 23.496548, 20.251072>,  <33.126434, 23.300621, 19.589293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271187, 23.496548, 20.251072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.594807, 23.595531, 20.037830>,  <33.788979, 23.654922, 19.909885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.594807, 23.595531, 20.037830>,  <33.271187, 23.496548, 20.251072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594807, 23.595531, 20.037830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106466, 0.830332, 0.547005,
		0.578018, -0.499311, 0.645433,
		0.809049, 0.247462, -0.533106,
		33.837521, 23.669769, 19.877899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808647, 23.721390, 20.715670>,  <33.271187, 23.496548, 20.251072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808647, 23.721390, 20.715670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.881104, 23.859989, 20.347511>,  <33.924576, 23.943150, 20.126617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.881104, 23.859989, 20.347511>,  <33.808647, 23.721390, 20.715670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881104, 23.859989, 20.347511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003207, 0.936079, 0.351774,
		0.983452, -0.060769, 0.170672,
		0.181139, 0.346500, -0.920394,
		33.935444, 23.963940, 20.071392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220444, 24.236990, 20.849110>,  <33.808647, 23.721390, 20.715670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220444, 24.236990, 20.849110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083263, 24.309650, 20.480461>,  <34.000954, 24.353247, 20.259272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083263, 24.309650, 20.480461>,  <34.220444, 24.236990, 20.849110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083263, 24.309650, 20.480461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153572, 0.957081, 0.245788,
		0.926713, 0.225830, -0.300339,
		-0.342955, 0.181652, -0.921621,
		33.980377, 24.364145, 20.203976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621189, 24.816872, 20.689095>,  <34.220444, 24.236990, 20.849110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621189, 24.816872, 20.689095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301071, 24.826950, 20.449463>,  <34.109001, 24.832996, 20.305685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301071, 24.826950, 20.449463>,  <34.621189, 24.816872, 20.689095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301071, 24.826950, 20.449463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169629, 0.948789, 0.266508,
		0.575114, 0.314905, -0.755036,
		-0.800294, 0.025197, -0.599078,
		34.060982, 24.834509, 20.269739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.039391, 19.076706, 22.287422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.979403, 19.138924, 21.896870>,  <29.943411, 19.176254, 21.662539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.979403, 19.138924, 21.896870>,  <30.039391, 19.076706, 22.287422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979403, 19.138924, 21.896870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168100, 0.977180, 0.129850,
		0.974295, -0.144656, -0.172693,
		-0.149968, 0.155542, -0.976379,
		29.934412, 19.185587, 21.603956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583326, 19.489401, 22.018402>,  <30.039391, 19.076706, 22.287422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583326, 19.489401, 22.018402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.240499, 19.530617, 21.816483>,  <30.034803, 19.555347, 21.695332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.240499, 19.530617, 21.816483>,  <30.583326, 19.489401, 22.018402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240499, 19.530617, 21.816483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031266, 0.988393, 0.148669,
		0.514257, 0.111636, -0.850340,
		-0.857066, 0.103041, -0.504797,
		29.983379, 19.561529, 21.665043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720657, 19.983927, 21.552298>,  <30.583326, 19.489401, 22.018402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720657, 19.983927, 21.552298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.321018, 19.974468, 21.566391>,  <30.081234, 19.968794, 21.574846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.321018, 19.974468, 21.566391>,  <30.720657, 19.983927, 21.552298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321018, 19.974468, 21.566391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013052, 0.961329, 0.275094,
		-0.040374, 0.274386, -0.960772,
		-0.999099, -0.023646, 0.035232,
		30.021288, 19.967375, 21.576960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587761, 20.659576, 21.302263>,  <30.720657, 19.983927, 21.552298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587761, 20.659576, 21.302263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.255856, 20.523537, 21.479271>,  <30.056713, 20.441914, 21.585476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.255856, 20.523537, 21.479271>,  <30.587761, 20.659576, 21.302263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255856, 20.523537, 21.479271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208553, 0.924392, 0.319383,
		-0.517685, 0.172724, -0.837955,
		-0.829764, -0.340098, 0.442521,
		30.006926, 20.421507, 21.612028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124044, 21.095366, 21.038671>,  <30.587761, 20.659576, 21.302263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124044, 21.095366, 21.038671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.967556, 20.936981, 21.370975>,  <29.873663, 20.841951, 21.570358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.967556, 20.936981, 21.370975>,  <30.124044, 21.095366, 21.038671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967556, 20.936981, 21.370975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184086, 0.918135, 0.350915,
		-0.901699, -0.015647, -0.432082,
		-0.391219, -0.395959, 0.830761,
		29.850191, 20.818193, 21.620203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451468, 21.273113, 21.066475>,  <30.124044, 21.095366, 21.038671>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451468, 21.273113, 21.066475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.545622, 21.199368, 21.448177>,  <29.602114, 21.155119, 21.677198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.545622, 21.199368, 21.448177>,  <29.451468, 21.273113, 21.066475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545622, 21.199368, 21.448177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319553, 0.912574, 0.255136,
		-0.917867, -0.364990, 0.155890,
		0.235384, -0.184366, 0.954256,
		29.616238, 21.144058, 21.734453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821890, 21.546843, 21.367611>,  <29.451468, 21.273113, 21.066475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821890, 21.546843, 21.367611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.118612, 21.542538, 21.635822>,  <29.296646, 21.539955, 21.796749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.118612, 21.542538, 21.635822>,  <28.821890, 21.546843, 21.367611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118612, 21.542538, 21.635822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235357, 0.932093, 0.275334,
		-0.627959, -0.362058, 0.688898,
		0.741804, -0.010761, 0.670530,
		29.341154, 21.539309, 21.836981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549850, 21.969923, 21.877495>,  <28.821890, 21.546843, 21.367611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549850, 21.969923, 21.877495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.942892, 21.955486, 21.950367>,  <29.178717, 21.946825, 21.994091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.942892, 21.955486, 21.950367>,  <28.549850, 21.969923, 21.877495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942892, 21.955486, 21.950367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036557, 0.924158, 0.380256,
		-0.182087, -0.380301, 0.906761,
		0.982602, -0.036091, 0.182180,
		29.237673, 21.944658, 22.005020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543186, 22.111143, 22.646414>,  <28.549850, 21.969923, 21.877495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543186, 22.111143, 22.646414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.914921, 22.183582, 22.517704>,  <29.137960, 22.227045, 22.440477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.914921, 22.183582, 22.517704>,  <28.543186, 22.111143, 22.646414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914921, 22.183582, 22.517704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048468, 0.923753, 0.379910,
		0.366042, -0.337468, 0.867253,
		0.929335, 0.181097, -0.321776,
		29.193722, 22.237911, 22.421171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885948, 22.613832, 23.146704>,  <28.543186, 22.111143, 22.646414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885948, 22.613832, 23.146704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.116240, 22.639874, 22.820686>,  <29.254416, 22.655499, 22.625076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.116240, 22.639874, 22.820686>,  <28.885948, 22.613832, 23.146704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116240, 22.639874, 22.820686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134245, 0.975771, 0.172771,
		0.806544, -0.208885, 0.553041,
		0.575730, 0.065104, -0.815044,
		29.288960, 22.659405, 22.576174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465662, 22.896105, 23.418665>,  <28.885948, 22.613832, 23.146704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465662, 22.896105, 23.418665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.483646, 22.970955, 23.026142>,  <29.494436, 23.015865, 22.790628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.483646, 22.970955, 23.026142>,  <29.465662, 22.896105, 23.418665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483646, 22.970955, 23.026142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110923, 0.975291, 0.191059,
		0.992811, -0.117440, 0.023093,
		0.044960, 0.187124, -0.981307,
		29.497135, 23.027092, 22.731750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092772, 23.333740, 23.365723>,  <29.465662, 22.896105, 23.418665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092772, 23.333740, 23.365723> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.865610, 23.396576, 23.042538>,  <29.729313, 23.434277, 22.848625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.865610, 23.396576, 23.042538>,  <30.092772, 23.333740, 23.365723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865610, 23.396576, 23.042538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045898, 0.986135, 0.159468,
		0.821813, 0.053479, -0.567242,
		-0.567905, 0.157089, -0.807965,
		29.695238, 23.443703, 22.800148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800421, 23.142649, 23.039431>,  <30.092772, 23.333740, 23.365723>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800421, 23.142649, 23.039431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.171425, 23.267323, 23.121967>,  <31.394028, 23.342127, 23.171490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.171425, 23.267323, 23.121967>,  <30.800421, 23.142649, 23.039431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171425, 23.267323, 23.121967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363342, -0.881394, -0.301874,
		0.087778, 0.354964, -0.930750,
		0.927511, 0.311683, 0.206340,
		31.449678, 23.360826, 23.183868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147728, 23.132008, 22.402172>,  <30.800421, 23.142649, 23.039431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147728, 23.132008, 22.402172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.448435, 23.120403, 22.665688>,  <31.628859, 23.113441, 22.823797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.448435, 23.120403, 22.665688>,  <31.147728, 23.132008, 22.402172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448435, 23.120403, 22.665688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400892, -0.773110, -0.491515,
		0.523577, 0.633609, -0.569568,
		0.751766, -0.029010, 0.658791,
		31.673965, 23.111700, 22.863325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787186, 23.232317, 22.026451>,  <31.147728, 23.132008, 22.402172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787186, 23.232317, 22.026451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.886545, 23.054356, 22.370628>,  <31.946161, 22.947578, 22.577135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.886545, 23.054356, 22.370628>,  <31.787186, 23.232317, 22.026451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886545, 23.054356, 22.370628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467316, -0.723033, -0.508762,
		0.848477, 0.528474, 0.028310,
		0.248398, -0.444902, 0.860442,
		31.961065, 22.920885, 22.628761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499054, 23.111368, 21.961039>,  <31.787186, 23.232317, 22.026451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499054, 23.111368, 21.961039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.331699, 22.854992, 22.218456>,  <32.231285, 22.701166, 22.372906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.331699, 22.854992, 22.218456>,  <32.499054, 23.111368, 21.961039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331699, 22.854992, 22.218456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416601, -0.765032, -0.491091,
		0.807090, 0.062633, 0.587097,
		-0.418389, -0.640939, 0.643542,
		32.206181, 22.662710, 22.411518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898537, 22.605247, 21.887255>,  <32.499054, 23.111368, 21.961039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898537, 22.605247, 21.887255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.614525, 22.428410, 22.106491>,  <32.444118, 22.322306, 22.238033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.614525, 22.428410, 22.106491>,  <32.898537, 22.605247, 21.887255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614525, 22.428410, 22.106491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243324, -0.884445, -0.398185,
		0.660794, -0.149360, 0.735557,
		-0.710032, -0.442096, 0.548093,
		32.401516, 22.295780, 22.270920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195259, 22.000107, 22.011755>,  <32.898537, 22.605247, 21.887255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195259, 22.000107, 22.011755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.811028, 21.926960, 22.095516>,  <32.580490, 21.883072, 22.145773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.811028, 21.926960, 22.095516>,  <33.195259, 22.000107, 22.011755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811028, 21.926960, 22.095516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112252, -0.944210, -0.309626,
		0.254340, -0.273914, 0.927514,
		-0.960579, -0.182865, 0.209402,
		32.522854, 21.872101, 22.158337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100201, 21.366402, 22.374870>,  <33.195259, 22.000107, 22.011755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100201, 21.366402, 22.374870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.746479, 21.416676, 22.194996>,  <32.534248, 21.446840, 22.087070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.746479, 21.416676, 22.194996>,  <33.100201, 21.366402, 22.374870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746479, 21.416676, 22.194996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000189, -0.963186, -0.268835,
		-0.466919, -0.237646, 0.851769,
		-0.884300, 0.125685, -0.449685,
		32.481190, 21.454382, 22.060091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704651, 20.764118, 22.595070>,  <33.100201, 21.366402, 22.374870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704651, 20.764118, 22.595070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.528206, 20.900135, 22.262856>,  <32.422337, 20.981745, 22.063526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.528206, 20.900135, 22.262856>,  <32.704651, 20.764118, 22.595070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528206, 20.900135, 22.262856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012672, -0.922987, -0.384622,
		-0.897360, -0.180187, 0.402836,
		-0.441117, 0.340040, -0.830536,
		32.395870, 21.002148, 22.013695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071507, 20.369192, 22.502052>,  <32.704651, 20.764118, 22.595070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071507, 20.369192, 22.502052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.160641, 20.520805, 22.142792>,  <32.214123, 20.611774, 21.927235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.160641, 20.520805, 22.142792>,  <32.071507, 20.369192, 22.502052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160641, 20.520805, 22.142792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012919, -0.922385, -0.386057,
		-0.974770, 0.074424, -0.210437,
		0.222836, 0.379035, -0.898152,
		32.227493, 20.634516, 21.873346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638731, 20.083611, 22.074846>,  <32.071507, 20.369192, 22.502052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638731, 20.083611, 22.074846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.937284, 20.200130, 21.835495>,  <32.116417, 20.270042, 21.691885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.937284, 20.200130, 21.835495>,  <31.638731, 20.083611, 22.074846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937284, 20.200130, 21.835495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009638, -0.903755, -0.427942,
		-0.665447, 0.313642, -0.677355,
		0.746383, 0.291301, -0.598378,
		32.161198, 20.287521, 21.655981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432652, 19.904396, 21.404558>,  <31.638731, 20.083611, 22.074846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432652, 19.904396, 21.404558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.831614, 19.931374, 21.394447>,  <32.070992, 19.947561, 21.388380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.831614, 19.931374, 21.394447>,  <31.432652, 19.904396, 21.404558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831614, 19.931374, 21.394447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054504, -0.936171, -0.347293,
		-0.047088, 0.345013, -0.937416,
		0.997402, 0.067446, -0.025278,
		32.130833, 19.951607, 21.386864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614414, 19.568750, 20.804632>,  <31.432652, 19.904396, 21.404558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614414, 19.568750, 20.804632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.958773, 19.573048, 21.008099>,  <32.165386, 19.575626, 21.130178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.958773, 19.573048, 21.008099>,  <31.614414, 19.568750, 20.804632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958773, 19.573048, 21.008099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167956, -0.949731, -0.264199,
		0.480258, 0.312881, -0.819425,
		0.860897, 0.010744, 0.508666,
		32.217041, 19.576271, 21.160698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123573, 19.270050, 20.386639>,  <31.614414, 19.568750, 20.804632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123573, 19.270050, 20.386639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.318348, 19.192249, 20.727242>,  <32.435211, 19.145569, 20.931602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.318348, 19.192249, 20.727242>,  <32.123573, 19.270050, 20.386639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318348, 19.192249, 20.727242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195193, -0.926002, -0.323140,
		0.851349, 0.323556, -0.412936,
		0.486934, -0.194503, 0.851507,
		32.464428, 19.133898, 20.982693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751759, 18.980499, 20.175461>,  <32.123573, 19.270050, 20.386639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751759, 18.980499, 20.175461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.694225, 18.852104, 20.549900>,  <32.659706, 18.775068, 20.774563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.694225, 18.852104, 20.549900>,  <32.751759, 18.980499, 20.175461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694225, 18.852104, 20.549900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322946, -0.909372, -0.262200,
		0.935424, 0.264595, 0.234461,
		-0.143835, -0.320986, 0.936098,
		32.651073, 18.755808, 20.830730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127571, 19.656879, 20.051687>,  <32.751759, 18.980499, 20.175461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127571, 19.656879, 20.051687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.337360, 19.768486, 19.729923>,  <33.463234, 19.835449, 19.536865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.337360, 19.768486, 19.729923>,  <33.127571, 19.656879, 20.051687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337360, 19.768486, 19.729923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127186, 0.908505, 0.398048,
		0.841873, -0.311075, 0.441001,
		0.524474, 0.279017, -0.804410,
		33.494701, 19.852192, 19.488600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805546, 19.958481, 20.252245>,  <33.127571, 19.656879, 20.051687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805546, 19.958481, 20.252245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.728085, 20.083073, 19.880119>,  <33.681610, 20.157827, 19.656845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.728085, 20.083073, 19.880119>,  <33.805546, 19.958481, 20.252245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728085, 20.083073, 19.880119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263356, 0.929962, 0.256542,
		0.945062, -0.195324, -0.262119,
		-0.193651, 0.311479, -0.930312,
		33.669991, 20.176516, 19.601027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333092, 20.521318, 20.124435>,  <33.805546, 19.958481, 20.252245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333092, 20.521318, 20.124435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.084057, 20.598663, 19.821121>,  <33.934635, 20.645071, 19.639133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.084057, 20.598663, 19.821121>,  <34.333092, 20.521318, 20.124435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084057, 20.598663, 19.821121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213534, 0.974197, 0.073099,
		0.752853, -0.116409, -0.647813,
		-0.622588, 0.193363, -0.758285,
		33.897282, 20.656672, 19.593636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685131, 21.061346, 19.787537>,  <34.333092, 20.521318, 20.124435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685131, 21.061346, 19.787537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.324604, 21.063866, 19.614288>,  <34.108288, 21.065378, 19.510340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.324604, 21.063866, 19.614288>,  <34.685131, 21.061346, 19.787537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324604, 21.063866, 19.614288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123767, 0.961955, -0.243568,
		0.415107, -0.273137, -0.867803,
		-0.901315, 0.006298, -0.433119,
		34.054211, 21.065756, 19.484352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768238, 21.197155, 19.102217>,  <34.685131, 21.061346, 19.787537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768238, 21.197155, 19.102217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.387886, 21.302589, 19.167145>,  <34.159676, 21.365850, 19.206102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.387886, 21.302589, 19.167145>,  <34.768238, 21.197155, 19.102217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387886, 21.302589, 19.167145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190315, 0.911340, -0.365020,
		-0.244144, -0.316198, -0.916740,
		-0.950881, 0.263587, 0.162322,
		34.102623, 21.381666, 19.215841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475151, 21.570053, 18.513424>,  <34.768238, 21.197155, 19.102217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475151, 21.570053, 18.513424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.242146, 21.678410, 18.819965>,  <34.102345, 21.743423, 19.003891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.242146, 21.678410, 18.819965>,  <34.475151, 21.570053, 18.513424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242146, 21.678410, 18.819965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289609, 0.950125, -0.115714,
		-0.759478, 0.154538, -0.631911,
		-0.582512, 0.270889, 0.766354,
		34.067390, 21.759676, 19.049871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195148, 22.197855, 18.244591>,  <34.475151, 21.570053, 18.513424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195148, 22.197855, 18.244591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.129799, 22.215111, 18.638840>,  <34.090588, 22.225464, 18.875389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.129799, 22.215111, 18.638840>,  <34.195148, 22.197855, 18.244591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129799, 22.215111, 18.638840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148747, 0.988700, -0.018619,
		-0.975286, 0.143566, -0.167946,
		-0.163376, 0.043140, 0.985620,
		34.080788, 22.228052, 18.934526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527119, 22.279009, 17.943903>,  <34.195148, 22.197855, 18.244591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527119, 22.279009, 17.943903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.422806, 22.369987, 17.568615>,  <33.360218, 22.424576, 17.343441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.422806, 22.369987, 17.568615>,  <33.527119, 22.279009, 17.943903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422806, 22.369987, 17.568615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078339, -0.973631, -0.214257,
		-0.962213, 0.017624, 0.271726,
		-0.260785, 0.227448, -0.938221,
		33.344570, 22.438221, 17.287149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105251, 21.740034, 17.726910>,  <33.527119, 22.279009, 17.943903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105251, 21.740034, 17.726910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.165264, 21.876854, 17.355858>,  <33.201271, 21.958946, 17.133226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.165264, 21.876854, 17.355858>,  <33.105251, 21.740034, 17.726910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165264, 21.876854, 17.355858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015234, -0.938936, -0.343755,
		-0.988564, 0.037443, -0.146082,
		0.150032, 0.342050, -0.927627,
		33.210274, 21.979469, 17.077570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586906, 21.493368, 17.360609>,  <33.105251, 21.740034, 17.726910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586906, 21.493368, 17.360609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.850632, 21.574425, 17.070992>,  <33.008865, 21.623058, 16.897221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.850632, 21.574425, 17.070992>,  <32.586906, 21.493368, 17.360609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850632, 21.574425, 17.070992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245623, -0.852108, -0.462148,
		-0.710616, 0.482543, -0.512033,
		0.659314, 0.202643, -0.724045,
		33.048428, 21.635218, 16.853779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292187, 21.326031, 16.677340>,  <32.586906, 21.493368, 17.360609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292187, 21.326031, 16.677340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.685497, 21.331734, 16.604706>,  <32.921482, 21.335155, 16.561127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.685497, 21.331734, 16.604706>,  <32.292187, 21.326031, 16.677340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685497, 21.331734, 16.604706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062516, -0.909956, -0.409966,
		-0.171077, 0.414460, -0.893843,
		0.983272, 0.014256, -0.181583,
		32.980480, 21.336010, 16.550232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416084, 21.117392, 16.025145>,  <32.292187, 21.326031, 16.677340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416084, 21.117392, 16.025145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.748734, 21.027218, 16.228157>,  <32.948322, 20.973114, 16.349964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.748734, 21.027218, 16.228157>,  <32.416084, 21.117392, 16.025145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748734, 21.027218, 16.228157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180714, -0.974014, -0.136524,
		0.525119, 0.021818, -0.850749,
		0.831621, -0.225433, 0.507530,
		32.998219, 20.959587, 16.380417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762157, 20.774050, 15.623920>,  <32.416084, 21.117392, 16.025145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762157, 20.774050, 15.623920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.941887, 20.670696, 15.965995>,  <33.049725, 20.608685, 16.171240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.941887, 20.670696, 15.965995>,  <32.762157, 20.774050, 15.623920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941887, 20.670696, 15.965995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159813, -0.965067, -0.207616,
		0.878956, -0.043382, -0.474925,
		0.449328, -0.258385, 0.855185,
		33.076687, 20.593182, 16.222549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170044, 20.236412, 15.435241>,  <32.762157, 20.774050, 15.623920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170044, 20.236412, 15.435241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.134518, 20.207882, 15.832637>,  <33.113201, 20.190763, 16.071075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.134518, 20.207882, 15.832637>,  <33.170044, 20.236412, 15.435241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134518, 20.207882, 15.832637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250500, -0.963775, -0.091585,
		0.964034, -0.257004, 0.067735,
		-0.088819, -0.071323, 0.993491,
		33.107872, 20.186485, 16.130684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537643, 19.567726, 15.718558>,  <33.170044, 20.236412, 15.435241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537643, 19.567726, 15.718558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.269138, 19.637539, 16.006710>,  <33.108036, 19.679426, 16.179602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.269138, 19.637539, 16.006710>,  <33.537643, 19.567726, 15.718558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269138, 19.637539, 16.006710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214428, -0.976051, 0.036667,
		0.709526, -0.129856, 0.692611,
		-0.671262, 0.174531, 0.720379,
		33.067760, 19.689898, 16.222824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700832, 19.023577, 16.201929>,  <33.537643, 19.567726, 15.718558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700832, 19.023577, 16.201929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.337551, 19.157528, 16.302353>,  <33.119583, 19.237898, 16.362606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.337551, 19.157528, 16.302353>,  <33.700832, 19.023577, 16.201929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337551, 19.157528, 16.302353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342310, -0.939470, 0.014816,
		0.240823, -0.072484, 0.967859,
		-0.908200, 0.334876, 0.251058,
		33.065090, 19.257990, 16.377670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.513348, 34.687973, 20.667934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199558, 34.527378, 20.478870>,  <30.011284, 34.431019, 20.365431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199558, 34.527378, 20.478870>,  <30.513348, 34.687973, 20.667934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199558, 34.527378, 20.478870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537334, -0.820563, -0.194804,
		-0.309636, -0.406796, 0.859443,
		-0.784473, -0.401489, -0.472661,
		29.964216, 34.406933, 20.337072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386106, 34.036407, 20.953371>,  <30.513348, 34.687973, 20.667934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386106, 34.036407, 20.953371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238487, 34.020676, 20.581940>,  <30.149916, 34.011234, 20.359081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238487, 34.020676, 20.581940>,  <30.386106, 34.036407, 20.953371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238487, 34.020676, 20.581940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457445, -0.877396, -0.144638,
		-0.809042, -0.478151, 0.341794,
		-0.369048, -0.039334, -0.928578,
		30.127773, 34.008877, 20.303366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234295, 33.395729, 20.830832>,  <30.386106, 34.036407, 20.953371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234295, 33.395729, 20.830832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270802, 33.519848, 20.452332>,  <30.292706, 33.594318, 20.225231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270802, 33.519848, 20.452332>,  <30.234295, 33.395729, 20.830832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270802, 33.519848, 20.452332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532460, -0.818183, -0.216941,
		-0.841520, -0.484041, -0.239890,
		0.091266, 0.310293, -0.946250,
		30.298182, 33.612934, 20.168457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202068, 32.785080, 20.527531>,  <30.234295, 33.395729, 20.830832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202068, 32.785080, 20.527531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340570, 33.027172, 20.240810>,  <30.423672, 33.172428, 20.068777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340570, 33.027172, 20.240810>,  <30.202068, 32.785080, 20.527531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340570, 33.027172, 20.240810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498298, -0.766024, -0.406086,
		-0.794863, -0.216573, -0.566824,
		0.346254, 0.605230, -0.716802,
		30.444447, 33.208740, 20.025770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023399, 32.404396, 19.901806>,  <30.202068, 32.785080, 20.527531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023399, 32.404396, 19.901806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311623, 32.665184, 19.807373>,  <30.484556, 32.821655, 19.750713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311623, 32.665184, 19.807373>,  <30.023399, 32.404396, 19.901806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311623, 32.665184, 19.807373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512724, -0.730190, -0.451593,
		-0.466810, 0.204352, -0.860423,
		0.720556, 0.651968, -0.236084,
		30.527790, 32.860775, 19.736547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119234, 32.441097, 19.258423>,  <30.023399, 32.404396, 19.901806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119234, 32.441097, 19.258423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481667, 32.585159, 19.347244>,  <30.699125, 32.671597, 19.400537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481667, 32.585159, 19.347244>,  <30.119234, 32.441097, 19.258423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481667, 32.585159, 19.347244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422831, -0.789616, -0.444658,
		0.015192, 0.496787, -0.867739,
		0.906081, 0.360151, 0.222053,
		30.753490, 32.693203, 19.413860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551260, 32.343601, 18.641907>,  <30.119234, 32.441097, 19.258423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551260, 32.343601, 18.641907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813253, 32.364147, 18.943466>,  <30.970449, 32.376472, 19.124401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813253, 32.364147, 18.943466>,  <30.551260, 32.343601, 18.641907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813253, 32.364147, 18.943466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597870, -0.645359, -0.475460,
		0.462114, 0.762151, -0.453407,
		0.654983, 0.051362, 0.753897,
		31.009748, 32.379555, 19.169636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181343, 32.228752, 18.331339>,  <30.551260, 32.343601, 18.641907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181343, 32.228752, 18.331339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268341, 32.160500, 18.715752>,  <31.320539, 32.119549, 18.946400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268341, 32.160500, 18.715752>,  <31.181343, 32.228752, 18.331339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268341, 32.160500, 18.715752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611096, -0.743945, -0.270386,
		0.761090, 0.646090, -0.057536,
		0.217497, -0.170628, 0.961031,
		31.333590, 32.109310, 19.004061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832315, 31.930504, 18.294714>,  <31.181343, 32.228752, 18.331339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832315, 31.930504, 18.294714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714445, 31.823448, 18.661655>,  <31.643723, 31.759214, 18.881821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714445, 31.823448, 18.661655>,  <31.832315, 31.930504, 18.294714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714445, 31.823448, 18.661655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613309, -0.789144, -0.033224,
		0.732815, 0.552830, 0.396688,
		-0.294677, -0.267639, 0.917352,
		31.626041, 31.743156, 18.936861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449883, 31.882462, 18.770107>,  <31.832315, 31.930504, 18.294714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449883, 31.882462, 18.770107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171101, 31.656609, 18.946945>,  <32.003830, 31.521097, 19.053047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171101, 31.656609, 18.946945>,  <32.449883, 31.882462, 18.770107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171101, 31.656609, 18.946945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618054, -0.785601, -0.028994,
		0.363680, 0.253029, 0.896501,
		-0.696955, -0.564630, 0.442093,
		31.962013, 31.487219, 19.079573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775578, 31.466558, 19.229900>,  <32.449883, 31.882462, 18.770107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775578, 31.466558, 19.229900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430496, 31.293858, 19.124580>,  <32.223446, 31.190237, 19.061388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430496, 31.293858, 19.124580>,  <32.775578, 31.466558, 19.229900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430496, 31.293858, 19.124580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481192, -0.860983, -0.164809,
		-0.155539, -0.268880, 0.950532,
		-0.862706, -0.431754, -0.263299,
		32.171684, 31.164331, 19.045591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693165, 30.755213, 19.546055>,  <32.775578, 31.466558, 19.229900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693165, 30.755213, 19.546055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419975, 30.744610, 19.254070>,  <32.256062, 30.738247, 19.078880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419975, 30.744610, 19.254070>,  <32.693165, 30.755213, 19.546055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419975, 30.744610, 19.254070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346960, -0.891179, -0.292264,
		-0.642778, -0.452876, 0.617851,
		-0.682976, -0.026508, -0.729960,
		32.215084, 30.736658, 19.035082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611671, 30.733326, 20.386196>,  <32.693165, 30.755213, 19.546055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611671, 30.733326, 20.386196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908440, 30.674679, 20.647900>,  <33.086502, 30.639490, 20.804922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908440, 30.674679, 20.647900>,  <32.611671, 30.733326, 20.386196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908440, 30.674679, 20.647900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139989, 0.988166, 0.062696,
		-0.655710, 0.045074, 0.753666,
		0.741921, -0.146616, 0.654260,
		33.131016, 30.630693, 20.844177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511353, 31.187344, 20.932339>,  <32.611671, 30.733326, 20.386196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511353, 31.187344, 20.932339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900639, 31.095432, 20.929546>,  <33.134212, 31.040285, 20.927870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900639, 31.095432, 20.929546>,  <32.511353, 31.187344, 20.932339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900639, 31.095432, 20.929546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229853, 0.972143, 0.045893,
		-0.003757, -0.046268, 0.998922,
		0.973218, -0.229778, -0.006982,
		33.192604, 31.026499, 20.927452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839596, 31.746513, 21.298223>,  <32.511353, 31.187344, 20.932339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839596, 31.746513, 21.298223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172523, 31.596161, 21.135273>,  <33.372280, 31.505949, 21.037502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172523, 31.596161, 21.135273>,  <32.839596, 31.746513, 21.298223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172523, 31.596161, 21.135273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435301, 0.898245, 0.060574,
		0.343156, -0.227748, 0.911249,
		0.832320, -0.375881, -0.407377,
		33.422218, 31.483397, 21.013060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383125, 31.837162, 21.739164>,  <32.839596, 31.746513, 21.298223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383125, 31.837162, 21.739164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540146, 31.823730, 21.371517>,  <33.634357, 31.815672, 21.150928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540146, 31.823730, 21.371517>,  <33.383125, 31.837162, 21.739164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540146, 31.823730, 21.371517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325637, 0.939674, 0.104750,
		0.860154, -0.340418, 0.379805,
		0.392551, -0.033577, -0.919117,
		33.657913, 31.813658, 21.095781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064617, 32.003212, 21.791393>,  <33.383125, 31.837162, 21.739164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064617, 32.003212, 21.791393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976345, 32.086597, 21.410271>,  <33.923382, 32.136627, 21.181597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976345, 32.086597, 21.410271>,  <34.064617, 32.003212, 21.791393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976345, 32.086597, 21.410271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460182, 0.883577, 0.086735,
		0.859961, -0.419326, -0.290917,
		-0.220678, 0.208464, -0.952809,
		33.910141, 32.149136, 21.124428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611698, 32.263981, 21.475189>,  <34.064617, 32.003212, 21.791393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611698, 32.263981, 21.475189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370228, 32.380962, 21.178528>,  <34.225346, 32.451153, 21.000530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370228, 32.380962, 21.178528>,  <34.611698, 32.263981, 21.475189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370228, 32.380962, 21.178528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499713, 0.863660, -0.066175,
		0.621182, -0.410562, -0.667512,
		-0.603672, 0.292457, -0.741653,
		34.189125, 32.468700, 20.956032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046406, 32.706169, 21.052458>,  <34.611698, 32.263981, 21.475189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046406, 32.706169, 21.052458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659458, 32.793938, 21.001766>,  <34.427292, 32.846600, 20.971352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659458, 32.793938, 21.001766>,  <35.046406, 32.706169, 21.052458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659458, 32.793938, 21.001766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208672, 0.973573, 0.092803,
		0.143742, 0.063329, -0.987587,
		-0.967365, 0.219421, -0.126729,
		34.369247, 32.859764, 20.963747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261047, 33.167603, 20.711243>,  <35.046406, 32.706169, 21.052458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261047, 33.167603, 20.711243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879948, 33.186367, 20.831287>,  <34.651287, 33.197624, 20.903315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879948, 33.186367, 20.831287>,  <35.261047, 33.167603, 20.711243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879948, 33.186367, 20.831287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080846, 0.991526, 0.101685,
		-0.292800, 0.121143, -0.948469,
		-0.952750, 0.046907, 0.300112,
		34.594124, 33.200439, 20.921322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977688, 33.783852, 20.360964>,  <35.261047, 33.167603, 20.711243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977688, 33.783852, 20.360964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725922, 33.696877, 20.659374>,  <34.574860, 33.644691, 20.838421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725922, 33.696877, 20.659374>,  <34.977688, 33.783852, 20.360964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725922, 33.696877, 20.659374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009474, 0.962130, 0.272427,
		-0.777009, 0.164403, -0.607642,
		-0.629418, -0.217435, 0.746026,
		34.537098, 33.631645, 20.883183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521595, 34.340908, 20.390596>,  <34.977688, 33.783852, 20.360964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521595, 34.340908, 20.390596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535965, 34.186485, 20.759308>,  <34.544586, 34.093834, 20.980534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535965, 34.186485, 20.759308>,  <34.521595, 34.340908, 20.390596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535965, 34.186485, 20.759308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172355, 0.906157, 0.386229,
		-0.984379, -0.172750, -0.033982,
		0.035928, -0.386053, 0.921777,
		34.546741, 34.070671, 21.035841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056725, 34.755836, 20.744242>,  <34.521595, 34.340908, 20.390596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056725, 34.755836, 20.744242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215302, 34.530479, 21.034187>,  <34.310448, 34.395264, 21.208155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215302, 34.530479, 21.034187>,  <34.056725, 34.755836, 20.744242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215302, 34.530479, 21.034187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145379, 0.741071, 0.655499,
		-0.906478, -0.365245, 0.211883,
		0.396438, -0.563392, 0.724863,
		34.334232, 34.361462, 21.251646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542114, 34.549423, 21.257511>,  <34.056725, 34.755836, 20.744242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542114, 34.549423, 21.257511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901859, 34.533810, 21.431694>,  <34.117706, 34.524441, 21.536203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901859, 34.533810, 21.431694>,  <33.542114, 34.549423, 21.257511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901859, 34.533810, 21.431694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326814, 0.601580, 0.728900,
		-0.290412, -0.797859, 0.528282,
		0.899363, -0.039032, 0.435457,
		34.171669, 34.522099, 21.562330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298126, 34.475494, 21.898012>,  <33.542114, 34.549423, 21.257511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298126, 34.475494, 21.898012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676987, 34.603806, 21.897182>,  <33.904305, 34.680794, 21.896685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676987, 34.603806, 21.897182>,  <33.298126, 34.475494, 21.898012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676987, 34.603806, 21.897182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242119, 0.719109, 0.651353,
		0.210431, -0.616428, 0.758772,
		0.947152, 0.320778, -0.002074,
		33.961132, 34.700039, 21.896561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382858, 34.562744, 22.561138>,  <33.298126, 34.475494, 21.898012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382858, 34.562744, 22.561138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666508, 34.785450, 22.388092>,  <33.836697, 34.919071, 22.284266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666508, 34.785450, 22.388092>,  <33.382858, 34.562744, 22.561138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666508, 34.785450, 22.388092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033852, 0.639743, 0.767843,
		0.704270, -0.529852, 0.472505,
		0.709125, 0.556764, -0.432615,
		33.879246, 34.952480, 22.258308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111118, 33.862671, 22.536709>,  <33.382858, 34.562744, 22.561138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111118, 33.862671, 22.536709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050007, 33.947769, 22.150673>,  <33.013340, 33.998829, 21.919052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050007, 33.947769, 22.150673>,  <33.111118, 33.862671, 22.536709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050007, 33.947769, 22.150673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481387, 0.836846, 0.260683,
		0.863090, 0.504409, -0.025440,
		-0.152780, 0.212747, -0.965089,
		33.004173, 34.011593, 21.861147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879749, 33.886890, 23.253565>,  <33.111118, 33.862671, 22.536709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879749, 33.886890, 23.253565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596855, 33.961781, 23.526260>,  <32.427120, 34.006714, 23.689878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596855, 33.961781, 23.526260>,  <32.879749, 33.886890, 23.253565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596855, 33.961781, 23.526260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215442, -0.861356, 0.460055,
		0.673354, 0.472241, 0.568843,
		-0.707233, 0.187227, 0.681738,
		32.384686, 34.017948, 23.730782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281582, 33.735031, 23.781887>,  <32.879749, 33.886890, 23.253565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281582, 33.735031, 23.781887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892590, 33.679432, 23.856678>,  <32.659195, 33.646072, 23.901552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892590, 33.679432, 23.856678>,  <33.281582, 33.735031, 23.781887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892590, 33.679432, 23.856678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198134, -0.915607, 0.349867,
		0.122566, 0.377285, 0.917951,
		-0.972482, -0.138995, 0.186975,
		32.600845, 33.637733, 23.912771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288895, 33.449169, 24.425459>,  <33.281582, 33.735031, 23.781887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288895, 33.449169, 24.425459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954704, 33.327679, 24.242275>,  <32.754189, 33.254784, 24.132364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954704, 33.327679, 24.242275>,  <33.288895, 33.449169, 24.425459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954704, 33.327679, 24.242275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117023, -0.912598, 0.391754,
		-0.536918, 0.273710, 0.797999,
		-0.835479, -0.303723, -0.457960,
		32.704060, 33.236561, 24.104887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958344, 32.953903, 24.877138>,  <33.288895, 33.449169, 24.425459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958344, 32.953903, 24.877138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765675, 32.895622, 24.531475>,  <32.650074, 32.860653, 24.324078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765675, 32.895622, 24.531475>,  <32.958344, 32.953903, 24.877138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765675, 32.895622, 24.531475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004898, -0.986514, 0.163606,
		-0.876340, 0.074572, 0.475886,
		-0.481669, -0.145705, -0.864156,
		32.621174, 32.851910, 24.272228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394367, 32.451756, 24.991465>,  <32.958344, 32.953903, 24.877138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394367, 32.451756, 24.991465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503132, 32.449165, 24.606544>,  <32.568390, 32.447609, 24.375593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503132, 32.449165, 24.606544>,  <32.394367, 32.451756, 24.991465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503132, 32.449165, 24.606544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071727, -0.997332, -0.013554,
		-0.959645, 0.072708, -0.271655,
		0.271916, -0.006478, -0.962299,
		32.584705, 32.447224, 24.317854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921116, 32.054920, 24.715939>,  <32.394367, 32.451756, 24.991465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921116, 32.054920, 24.715939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222095, 32.056179, 24.452480>,  <32.402683, 32.056934, 24.294405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222095, 32.056179, 24.452480>,  <31.921116, 32.054920, 24.715939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222095, 32.056179, 24.452480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084973, -0.991168, -0.101811,
		-0.653147, 0.132575, -0.745535,
		0.752448, 0.003147, -0.658644,
		32.447830, 32.057121, 24.254887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663961, 31.741060, 24.141134>,  <31.921116, 32.054920, 24.715939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663961, 31.741060, 24.141134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061371, 31.731377, 24.096722>,  <32.299816, 31.725567, 24.070074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061371, 31.731377, 24.096722>,  <31.663961, 31.741060, 24.141134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061371, 31.731377, 24.096722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052662, -0.963886, -0.261055,
		-0.100700, 0.265211, -0.958917,
		0.993522, -0.024211, -0.111030,
		32.359428, 31.724113, 24.063412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776918, 31.435251, 23.508541>,  <31.663961, 31.741060, 24.141134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776918, 31.435251, 23.508541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097122, 31.389206, 23.743805>,  <32.289246, 31.361580, 23.884964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097122, 31.389206, 23.743805>,  <31.776918, 31.435251, 23.508541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097122, 31.389206, 23.743805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085046, -0.949632, -0.301608,
		0.593255, 0.291460, -0.750399,
		0.800510, -0.115112, 0.588161,
		32.337276, 31.354671, 23.920254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303295, 31.034763, 23.160124>,  <31.776918, 31.435251, 23.508541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303295, 31.034763, 23.160124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407059, 30.977627, 23.542183>,  <32.469315, 30.943346, 23.771418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407059, 30.977627, 23.542183>,  <32.303295, 31.034763, 23.160124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407059, 30.977627, 23.542183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164501, -0.968014, -0.189441,
		0.951655, 0.206265, -0.227612,
		0.259407, -0.142840, 0.955147,
		32.484882, 30.934774, 23.828728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865627, 30.589796, 23.235531>,  <32.303295, 31.034763, 23.160124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865627, 30.589796, 23.235531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723038, 30.560135, 23.608074>,  <32.637486, 30.542337, 23.831600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723038, 30.560135, 23.608074>,  <32.865627, 30.589796, 23.235531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723038, 30.560135, 23.608074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102021, -0.987795, -0.117696,
		0.928718, -0.136974, 0.344559,
		-0.356475, -0.074154, 0.931357,
		32.616096, 30.537889, 23.887482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295242, 29.981625, 23.594101>,  <32.865627, 30.589796, 23.235531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295242, 29.981625, 23.594101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991604, 30.021877, 23.851360>,  <32.809422, 30.046030, 24.005716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991604, 30.021877, 23.851360>,  <33.295242, 29.981625, 23.594101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991604, 30.021877, 23.851360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045931, -0.977237, 0.207120,
		0.649354, 0.186765, 0.737196,
		-0.759098, 0.100634, 0.643151,
		32.763874, 30.052067, 24.044306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599022, 29.713022, 24.204535>,  <33.295242, 29.981625, 23.594101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599022, 29.713022, 24.204535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199417, 29.720707, 24.220551>,  <32.959656, 29.725317, 24.230160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199417, 29.720707, 24.220551>,  <33.599022, 29.713022, 24.204535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199417, 29.720707, 24.220551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008783, -0.969255, 0.245902,
		0.043532, 0.245308, 0.968467,
		-0.999014, 0.019211, 0.040039,
		32.899712, 29.726471, 24.232563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326508, 29.244419, 24.714821>,  <33.599022, 29.713022, 24.204535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326508, 29.244419, 24.714821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009811, 29.298122, 24.476452>,  <32.819794, 29.330345, 24.333431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009811, 29.298122, 24.476452>,  <33.326508, 29.244419, 24.714821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009811, 29.298122, 24.476452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124657, -0.990530, -0.057543,
		-0.598003, 0.028726, 0.800979,
		-0.791741, 0.134258, -0.595920,
		32.772289, 29.338400, 24.297676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802155, 28.843122, 24.962051>,  <33.326508, 29.244419, 24.714821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802155, 28.843122, 24.962051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664913, 28.906666, 24.591743>,  <32.582569, 28.944792, 24.369558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664913, 28.906666, 24.591743>,  <32.802155, 28.843122, 24.962051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664913, 28.906666, 24.591743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210213, -0.973582, -0.089154,
		-0.915474, 0.164020, 0.367432,
		-0.343102, 0.158858, -0.925768,
		32.561981, 28.954323, 24.314013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164433, 28.534790, 24.989124>,  <32.802155, 28.843122, 24.962051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164433, 28.534790, 24.989124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255459, 28.548828, 24.599873>,  <32.310074, 28.557251, 24.366322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255459, 28.548828, 24.599873>,  <32.164433, 28.534790, 24.989124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255459, 28.548828, 24.599873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341010, -0.933195, -0.113399,
		-0.912099, 0.357653, -0.200397,
		0.227567, 0.035094, -0.973130,
		32.323730, 28.559357, 24.307934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556559, 28.336821, 24.592875>,  <32.164433, 28.534790, 24.989124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556559, 28.336821, 24.592875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887636, 28.258659, 24.382450>,  <32.086281, 28.211761, 24.256195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887636, 28.258659, 24.382450>,  <31.556559, 28.336821, 24.592875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887636, 28.258659, 24.382450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321487, -0.933454, -0.159088,
		-0.459969, 0.300799, -0.835433,
		0.827693, -0.195405, -0.526063,
		32.135944, 28.200037, 24.224632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271311, 27.920351, 24.033424>,  <31.556559, 28.336821, 24.592875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271311, 27.920351, 24.033424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667316, 27.864285, 24.039402>,  <31.904921, 27.830645, 24.042988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667316, 27.864285, 24.039402>,  <31.271311, 27.920351, 24.033424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667316, 27.864285, 24.039402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131971, -0.958902, -0.251177,
		0.049537, 0.246697, -0.967826,
		0.990015, -0.140168, 0.014944,
		31.964321, 27.822233, 24.043886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460140, 27.597647, 23.330282>,  <31.271311, 27.920351, 24.033424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460140, 27.597647, 23.330282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753340, 27.517933, 23.590435>,  <31.929260, 27.470104, 23.746527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753340, 27.517933, 23.590435>,  <31.460140, 27.597647, 23.330282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753340, 27.517933, 23.590435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013375, -0.960161, -0.279128,
		0.680097, 0.195902, -0.706463,
		0.733000, -0.199283, 0.650383,
		31.973240, 27.458147, 23.785549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876719, 27.166519, 23.067347>,  <31.460140, 27.597647, 23.330282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876719, 27.166519, 23.067347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979578, 27.086086, 23.445435>,  <32.041294, 27.037827, 23.672287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979578, 27.086086, 23.445435>,  <31.876719, 27.166519, 23.067347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979578, 27.086086, 23.445435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028103, -0.979254, -0.200679,
		0.965964, 0.025040, -0.257463,
		0.257147, -0.201084, 0.945220,
		32.056721, 27.025761, 23.729000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235703, 26.683685, 22.992769>,  <31.876719, 27.166519, 23.067347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235703, 26.683685, 22.992769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166519, 26.637798, 23.384060>,  <32.125011, 26.610266, 23.618834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166519, 26.637798, 23.384060>,  <32.235703, 26.683685, 22.992769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166519, 26.637798, 23.384060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052926, -0.990676, -0.125536,
		0.983507, -0.073486, 0.165272,
		-0.172956, -0.114718, 0.978226,
		32.114632, 26.603382, 23.677528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487835, 26.108778, 23.249985>,  <32.235703, 26.683685, 22.992769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487835, 26.108778, 23.249985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236935, 26.147549, 23.559090>,  <32.086395, 26.170811, 23.744553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236935, 26.147549, 23.559090>,  <32.487835, 26.108778, 23.249985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236935, 26.147549, 23.559090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148522, -0.988903, 0.003484,
		0.764523, -0.112587, 0.634687,
		-0.627252, 0.096929, 0.772761,
		32.048759, 26.176628, 23.790918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681438, 25.610922, 23.732862>,  <32.487835, 26.108778, 23.249985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681438, 25.610922, 23.732862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305607, 25.679413, 23.851440>,  <32.080109, 25.720507, 23.922588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305607, 25.679413, 23.851440>,  <32.681438, 25.610922, 23.732862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305607, 25.679413, 23.851440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181174, -0.983431, -0.006201,
		0.290474, -0.059535, 0.955029,
		-0.939575, 0.171225, 0.296447,
		32.023735, 25.730780, 23.940374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567211, 25.034622, 24.187292>,  <32.681438, 25.610922, 23.732862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567211, 25.034622, 24.187292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192657, 25.165237, 24.135818>,  <31.967926, 25.243607, 24.104935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192657, 25.165237, 24.135818>,  <32.567211, 25.034622, 24.187292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192657, 25.165237, 24.135818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334356, -0.941413, 0.044124,
		-0.106736, 0.084343, 0.990704,
		-0.936383, 0.326538, -0.128684,
		31.911743, 25.263199, 24.097214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993637, 24.761662, 24.757933>,  <32.567211, 25.034622, 24.187292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993637, 24.761662, 24.757933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820196, 24.842499, 24.406673>,  <31.716131, 24.891001, 24.195917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820196, 24.842499, 24.406673>,  <31.993637, 24.761662, 24.757933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820196, 24.842499, 24.406673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323030, -0.944616, -0.057888,
		-0.841212, 0.258569, 0.474873,
		-0.433605, 0.202094, -0.878149,
		31.690115, 24.903128, 24.143229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536303, 24.286005, 24.594925>,  <31.993637, 24.761662, 24.757933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536303, 24.286005, 24.594925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525000, 24.420437, 24.218361>,  <31.518217, 24.501097, 23.992422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525000, 24.420437, 24.218361>,  <31.536303, 24.286005, 24.594925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525000, 24.420437, 24.218361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028610, -0.941127, -0.336839,
		-0.999191, -0.036451, 0.016978,
		-0.028257, 0.336081, -0.941409,
		31.516523, 24.521261, 23.935938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097670, 23.867002, 24.251377>,  <31.536303, 24.286005, 24.594925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097670, 23.867002, 24.251377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276386, 24.029636, 23.932613>,  <31.383615, 24.127216, 23.741354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276386, 24.029636, 23.932613>,  <31.097670, 23.867002, 24.251377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276386, 24.029636, 23.932613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017074, -0.894476, -0.446790,
		-0.894476, 0.186015, -0.406585,
		0.446790, 0.406585, -0.796911,
		31.410423, 24.151611, 23.693541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697916, 23.697443, 23.571814>,  <31.097670, 23.867002, 24.251377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697916, 23.697443, 23.571814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076527, 23.768585, 23.464142>,  <31.303692, 23.811270, 23.399538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076527, 23.768585, 23.464142>,  <30.697916, 23.697443, 23.571814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076527, 23.768585, 23.464142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040581, -0.893336, -0.447553,
		-0.320067, 0.412697, -0.852783,
		0.946525, 0.177854, -0.269179,
		31.360485, 23.821941, 23.383389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523878, 23.850910, 22.834194>,  <30.697916, 23.697443, 23.571814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523878, 23.850910, 22.834194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126596, 23.847488, 22.787762>,  <29.888227, 23.845436, 22.759903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126596, 23.847488, 22.787762>,  <30.523878, 23.850910, 22.834194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126596, 23.847488, 22.787762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031938, 0.979047, 0.201115,
		0.111928, 0.203455, -0.972665,
		-0.993203, -0.008555, -0.116081,
		29.828636, 23.844921, 22.752937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402313, 24.463894, 22.684786>,  <30.523878, 23.850910, 22.834194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402313, 24.463894, 22.684786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014273, 24.387257, 22.744373>,  <29.781448, 24.341274, 22.780125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014273, 24.387257, 22.744373>,  <30.402313, 24.463894, 22.684786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014273, 24.387257, 22.744373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177778, 0.978852, 0.101209,
		-0.165208, 0.071700, -0.983649,
		-0.970104, -0.191592, 0.148968,
		29.723242, 24.329779, 22.789064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055225, 24.872351, 22.202873>,  <30.402313, 24.463894, 22.684786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055225, 24.872351, 22.202873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781143, 24.793194, 22.483253>,  <29.616693, 24.745701, 22.651482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781143, 24.793194, 22.483253>,  <30.055225, 24.872351, 22.202873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781143, 24.793194, 22.483253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199478, 0.976573, 0.080706,
		-0.700502, -0.084525, -0.708628,
		-0.685205, -0.197890, 0.700952,
		29.575583, 24.733828, 22.693539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480001, 25.233107, 21.931541>,  <30.055225, 24.872351, 22.202873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480001, 25.233107, 21.931541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440165, 25.170250, 22.324558>,  <29.416262, 25.132536, 22.560368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440165, 25.170250, 22.324558>,  <29.480001, 25.233107, 21.931541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440165, 25.170250, 22.324558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088376, 0.984945, 0.148569,
		-0.991096, -0.072036, -0.111981,
		-0.099593, -0.157142, 0.982541,
		29.410286, 25.123108, 22.619320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043068, 25.774670, 22.019278>,  <29.480001, 25.233107, 21.931541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043068, 25.774670, 22.019278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178591, 25.662155, 22.378407>,  <29.259905, 25.594646, 22.593884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178591, 25.662155, 22.378407>,  <29.043068, 25.774670, 22.019278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178591, 25.662155, 22.378407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006448, 0.953546, 0.301179,
		-0.940834, -0.107831, 0.321255,
		0.338807, -0.281288, 0.897823,
		29.280233, 25.577768, 22.647753>
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
