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
	<43.006203, 32.316578, 23.523960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245605, 32.416515, 23.219494>,  <43.389248, 32.476479, 23.036814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245605, 32.416515, 23.219494>,  <43.006203, 32.316578, 23.523960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245605, 32.416515, 23.219494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792159, 0.042867, -0.608807,
		-0.119477, 0.967337, 0.223570,
		0.598506, 0.249842, -0.761164,
		43.425156, 32.491467, 22.991144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687767, 32.894814, 23.111967>,  <43.006203, 32.316578, 23.523960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687767, 32.894814, 23.111967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951401, 32.660988, 22.922699>,  <43.109581, 32.520695, 22.809137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951401, 32.660988, 22.922699>,  <42.687767, 32.894814, 23.111967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951401, 32.660988, 22.922699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669090, -0.168495, -0.723828,
		0.343396, 0.793660, -0.502178,
		0.659088, -0.584562, -0.473170,
		43.149128, 32.485619, 22.780748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757442, 33.527653, 23.595871>,  <42.687767, 32.894814, 23.111967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757442, 33.527653, 23.595871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571812, 33.513287, 23.949898>,  <42.460434, 33.504669, 24.162313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.571812, 33.513287, 23.949898>,  <42.757442, 33.527653, 23.595871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571812, 33.513287, 23.949898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549796, 0.795097, -0.256018,
		-0.694520, -0.605418, -0.388731,
		-0.464077, -0.035913, 0.885067,
		42.432590, 33.502514, 24.215418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953117, 33.473862, 23.335636>,  <42.757442, 33.527653, 23.595871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953117, 33.473862, 23.335636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.046154, 33.615654, 23.697906>,  <42.101974, 33.700729, 23.915268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.046154, 33.615654, 23.697906>,  <41.953117, 33.473862, 23.335636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046154, 33.615654, 23.697906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439921, 0.868851, -0.227087,
		-0.867394, -0.345607, 0.358028,
		0.232590, 0.354478, 0.905675,
		42.115932, 33.721996, 23.969608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773979, 33.277935, 22.642794>,  <41.953117, 33.473862, 23.335636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773979, 33.277935, 22.642794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672764, 33.580681, 22.401752>,  <41.612034, 33.762329, 22.257128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672764, 33.580681, 22.401752>,  <41.773979, 33.277935, 22.642794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672764, 33.580681, 22.401752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859456, 0.461840, 0.219178,
		0.444195, -0.462452, -0.767352,
		-0.253035, 0.756863, -0.602604,
		41.596855, 33.807739, 22.220972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539867, 33.523376, 22.328030>,  <41.773979, 33.277935, 22.642794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539867, 33.523376, 22.328030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228596, 33.763870, 22.255413>,  <42.041832, 33.908169, 22.211843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228596, 33.763870, 22.255413>,  <42.539867, 33.523376, 22.328030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228596, 33.763870, 22.255413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617708, 0.680455, -0.394231,
		-0.113496, -0.418920, -0.900902,
		-0.778175, 0.601238, -0.181541,
		41.995144, 33.944241, 22.200951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188915, 33.170887, 21.661688>,  <42.539867, 33.523376, 22.328030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188915, 33.170887, 21.661688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063095, 33.549496, 21.690392>,  <41.987602, 33.776661, 21.707615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.063095, 33.549496, 21.690392>,  <42.188915, 33.170887, 21.661688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063095, 33.549496, 21.690392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477320, 0.223065, -0.849946,
		-0.820500, -0.233101, -0.521960,
		-0.314555, 0.946523, 0.071761,
		41.968727, 33.833454, 21.711920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093216, 33.327892, 21.051538>,  <42.188915, 33.170887, 21.661688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093216, 33.327892, 21.051538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116184, 33.692318, 21.214840>,  <42.129967, 33.910973, 21.312820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116184, 33.692318, 21.214840>,  <42.093216, 33.327892, 21.051538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116184, 33.692318, 21.214840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390737, 0.355797, -0.848960,
		-0.918710, 0.208269, -0.335554,
		0.057423, 0.911061, 0.408253,
		42.133411, 33.965637, 21.337317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890629, 33.822994, 20.507113>,  <42.093216, 33.327892, 21.051538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890629, 33.822994, 20.507113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081684, 34.032047, 20.789593>,  <42.196316, 34.157478, 20.959080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081684, 34.032047, 20.789593>,  <41.890629, 33.822994, 20.507113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081684, 34.032047, 20.789593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467832, 0.529073, -0.707966,
		-0.743636, 0.668535, 0.008202,
		0.477639, 0.522631, 0.706199,
		42.224976, 34.188835, 21.001453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822712, 34.443996, 20.355221>,  <41.890629, 33.822994, 20.507113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822712, 34.443996, 20.355221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169971, 34.425060, 20.552837>,  <42.378326, 34.413696, 20.671408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169971, 34.425060, 20.552837>,  <41.822712, 34.443996, 20.355221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169971, 34.425060, 20.552837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470272, 0.396623, -0.788374,
		-0.158625, 0.916760, 0.366592,
		0.868149, -0.047342, 0.494041,
		42.430416, 34.410858, 20.701050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151062, 35.069920, 20.260769>,  <41.822712, 34.443996, 20.355221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151062, 35.069920, 20.260769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481171, 34.869324, 20.364643>,  <42.679237, 34.748966, 20.426968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481171, 34.869324, 20.364643>,  <42.151062, 35.069920, 20.260769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481171, 34.869324, 20.364643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470638, 0.356583, -0.807062,
		0.312134, 0.788262, 0.530298,
		0.825271, -0.501489, 0.259685,
		42.728752, 34.718876, 20.442549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629143, 35.593987, 20.230928>,  <42.151062, 35.069920, 20.260769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629143, 35.593987, 20.230928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850925, 35.261681, 20.211273>,  <42.983994, 35.062298, 20.199480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850925, 35.261681, 20.211273>,  <42.629143, 35.593987, 20.230928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850925, 35.261681, 20.211273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281508, 0.242788, -0.928336,
		0.783156, 0.500888, 0.368481,
		0.554455, -0.830762, -0.049138,
		43.017262, 35.012451, 20.196531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215916, 35.837585, 20.152090>,  <42.629143, 35.593987, 20.230928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215916, 35.837585, 20.152090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238956, 35.464470, 20.009773>,  <43.252781, 35.240601, 19.924383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238956, 35.464470, 20.009773>,  <43.215916, 35.837585, 20.152090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238956, 35.464470, 20.009773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101417, 0.360007, -0.927421,
		0.993175, 0.017335, 0.115337,
		0.057599, -0.932789, -0.355792,
		43.256237, 35.184635, 19.903036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631748, 35.908642, 19.535759>,  <43.215916, 35.837585, 20.152090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631748, 35.908642, 19.535759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474052, 35.545059, 19.481537>,  <43.379436, 35.326908, 19.449003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474052, 35.545059, 19.481537>,  <43.631748, 35.908642, 19.535759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474052, 35.545059, 19.481537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153011, 0.080523, -0.984938,
		0.906182, -0.409040, 0.107335,
		-0.394237, -0.908957, -0.135556,
		43.355782, 35.272373, 19.440870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135792, 35.515732, 19.227308>,  <43.631748, 35.908642, 19.535759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135792, 35.515732, 19.227308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783169, 35.338860, 19.161179>,  <43.571594, 35.232735, 19.121500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783169, 35.338860, 19.161179>,  <44.135792, 35.515732, 19.227308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783169, 35.338860, 19.161179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239611, -0.117370, -0.963748,
		0.406747, -0.889213, 0.209420,
		-0.881557, -0.442181, -0.165325,
		43.518703, 35.206203, 19.111582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195976, 34.683449, 18.937260>,  <44.135792, 35.515732, 19.227308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195976, 34.683449, 18.937260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866776, 34.869156, 18.806335>,  <43.669254, 34.980579, 18.727781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.866776, 34.869156, 18.806335>,  <44.195976, 34.683449, 18.937260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866776, 34.869156, 18.806335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246552, -0.227150, -0.942133,
		-0.511749, -0.856073, 0.072479,
		-0.822998, 0.464266, -0.327310,
		43.619877, 35.008434, 18.708143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014175, 34.236320, 18.414280>,  <44.195976, 34.683449, 18.937260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014175, 34.236320, 18.414280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.814983, 34.580360, 18.370033>,  <43.695469, 34.786785, 18.343485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.814983, 34.580360, 18.370033>,  <44.014175, 34.236320, 18.414280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814983, 34.580360, 18.370033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146147, -0.042494, -0.988350,
		-0.854783, -0.508348, -0.104540,
		-0.497983, 0.860102, -0.110617,
		43.665588, 34.838390, 18.336847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534641, 34.039730, 17.888197>,  <44.014175, 34.236320, 18.414280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534641, 34.039730, 17.888197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541248, 34.439674, 17.889145>,  <43.545212, 34.679642, 17.889713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541248, 34.439674, 17.889145>,  <43.534641, 34.039730, 17.888197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541248, 34.439674, 17.889145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126967, 0.000255, -0.991907,
		-0.991769, 0.016687, -0.126945,
		0.016520, 0.999861, 0.002372,
		43.546204, 34.739632, 17.889856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122459, 34.221237, 17.340986>,  <43.534641, 34.039730, 17.888197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122459, 34.221237, 17.340986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375366, 34.523006, 17.411514>,  <43.527111, 34.704067, 17.453831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375366, 34.523006, 17.411514>,  <43.122459, 34.221237, 17.340986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375366, 34.523006, 17.411514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086767, 0.157198, -0.983748,
		-0.769880, 0.637286, 0.033931,
		0.632262, 0.754424, 0.176319,
		43.565044, 34.749332, 17.464411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006100, 34.722664, 16.859951>,  <43.122459, 34.221237, 17.340986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006100, 34.722664, 16.859951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.382519, 34.801208, 16.970131>,  <43.608372, 34.848335, 17.036240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.382519, 34.801208, 16.970131>,  <43.006100, 34.722664, 16.859951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.382519, 34.801208, 16.970131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214246, 0.284173, -0.934529,
		-0.261777, 0.938450, 0.225352,
		0.941048, 0.196357, 0.275450,
		43.664833, 34.860115, 17.052765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126308, 35.108078, 16.341686>,  <43.006100, 34.722664, 16.859951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126308, 35.108078, 16.341686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485996, 35.074429, 16.513416>,  <43.701809, 35.054237, 16.616453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485996, 35.074429, 16.513416>,  <43.126308, 35.108078, 16.341686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485996, 35.074429, 16.513416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437400, 0.153055, -0.886147,
		0.008840, 0.984630, 0.174428,
		0.899224, -0.084128, 0.429324,
		43.755764, 35.049191, 16.642214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567192, 35.730518, 16.178537>,  <43.126308, 35.108078, 16.341686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567192, 35.730518, 16.178537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860977, 35.476055, 16.273075>,  <44.037251, 35.323376, 16.329798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860977, 35.476055, 16.273075>,  <43.567192, 35.730518, 16.178537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860977, 35.476055, 16.273075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521237, 0.305774, -0.796752,
		0.434593, 0.708380, 0.556171,
		0.734466, -0.636160, 0.236346,
		44.081318, 35.285206, 16.343979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252773, 36.045418, 16.174252>,  <43.567192, 35.730518, 16.178537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252773, 36.045418, 16.174252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342800, 35.659428, 16.120346>,  <44.396816, 35.427834, 16.088003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342800, 35.659428, 16.120346>,  <44.252773, 36.045418, 16.174252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342800, 35.659428, 16.120346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547947, 0.239724, -0.801428,
		0.805667, 0.106532, 0.582711,
		0.225067, -0.964978, -0.134764,
		44.410320, 35.369934, 16.079916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.844345, 36.048939, 15.805657>,  <44.252773, 36.045418, 16.174252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.844345, 36.048939, 15.805657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.758583, 35.659447, 15.775004>,  <44.707127, 35.425751, 15.756613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.758583, 35.659447, 15.775004>,  <44.844345, 36.048939, 15.805657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758583, 35.659447, 15.775004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449152, -0.028620, -0.892997,
		0.867348, -0.225884, 0.443491,
		-0.214407, -0.973734, -0.076633,
		44.694260, 35.367325, 15.752014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.461296, 35.722855, 15.691301>,  <44.844345, 36.048939, 15.805657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.461296, 35.722855, 15.691301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181591, 35.460663, 15.577191>,  <45.013767, 35.303349, 15.508725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181591, 35.460663, 15.577191>,  <45.461296, 35.722855, 15.691301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181591, 35.460663, 15.577191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537073, -0.218333, -0.814790,
		0.471794, -0.722963, 0.504713,
		-0.699259, -0.655481, -0.285276,
		44.971813, 35.264019, 15.491609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.832039, 35.198112, 15.543295>,  <45.461296, 35.722855, 15.691301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.832039, 35.198112, 15.543295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496044, 35.183685, 15.326732>,  <45.294449, 35.175030, 15.196794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.496044, 35.183685, 15.326732>,  <45.832039, 35.198112, 15.543295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496044, 35.183685, 15.326732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541633, 0.004096, -0.840605,
		0.032536, -0.999341, 0.016094,
		-0.839985, -0.036067, -0.541409,
		45.244049, 35.172863, 15.164309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.995815, 34.731510, 15.074356>,  <45.832039, 35.198112, 15.543295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.995815, 34.731510, 15.074356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.728271, 35.016151, 14.988336>,  <45.567745, 35.186935, 14.936724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.728271, 35.016151, 14.988336>,  <45.995815, 34.731510, 15.074356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.728271, 35.016151, 14.988336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532088, 0.256254, -0.806980,
		-0.519142, -0.654183, -0.550034,
		-0.668860, 0.711603, -0.215051,
		45.527615, 35.229633, 14.923820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.997532, 34.668682, 14.401355>,  <45.995815, 34.731510, 15.074356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.997532, 34.668682, 14.401355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871490, 35.036015, 14.497170>,  <45.795864, 35.256413, 14.554660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.871490, 35.036015, 14.497170>,  <45.997532, 34.668682, 14.401355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.871490, 35.036015, 14.497170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555116, 0.383058, -0.738318,
		-0.769777, -0.099675, -0.630483,
		-0.315103, 0.918331, 0.239538,
		45.776958, 35.311512, 14.569032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945942, 35.040680, 13.810898>,  <45.997532, 34.668682, 14.401355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.945942, 35.040680, 13.810898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005951, 35.329838, 14.080689>,  <46.041958, 35.503330, 14.242564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005951, 35.329838, 14.080689>,  <45.945942, 35.040680, 13.810898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.005951, 35.329838, 14.080689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507713, 0.529050, -0.679951,
		-0.848364, 0.444450, -0.287652,
		0.150022, 0.722890, 0.674480,
		46.050957, 35.546703, 14.283033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.604153, 35.693359, 13.609540>,  <45.945942, 35.040680, 13.810898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.604153, 35.693359, 13.609540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.934772, 35.733822, 13.831021>,  <46.133144, 35.758099, 13.963910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.934772, 35.733822, 13.831021>,  <45.604153, 35.693359, 13.609540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.934772, 35.733822, 13.831021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392804, 0.600913, -0.696138,
		-0.403144, 0.792888, 0.456950,
		0.826547, 0.101152, 0.553705,
		46.182735, 35.764168, 13.997132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.089771, 35.787395, 14.140654>,  <45.604153, 35.693359, 13.609540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.089771, 35.787395, 14.140654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008194, 36.041237, 14.438832>,  <44.959248, 36.193542, 14.617740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008194, 36.041237, 14.438832>,  <45.089771, 35.787395, 14.140654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008194, 36.041237, 14.438832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707682, 0.621711, -0.335652,
		-0.676457, 0.459084, -0.575889,
		-0.203944, 0.634600, 0.745446,
		44.947010, 36.231617, 14.662466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881145, 36.506573, 13.909423>,  <45.089771, 35.787395, 14.140654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881145, 36.506573, 13.909423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.069206, 36.481846, 14.261590>,  <45.182041, 36.467010, 14.472891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.069206, 36.481846, 14.261590>,  <44.881145, 36.506573, 13.909423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.069206, 36.481846, 14.261590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716334, 0.609462, -0.339738,
		-0.515581, 0.790402, 0.330818,
		0.470150, -0.061814, 0.880419,
		45.210251, 36.463303, 14.525716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473446, 37.282299, 14.027806>,  <44.881145, 36.506573, 13.909423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.473446, 37.282299, 14.027806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833031, 37.352451, 14.188359>,  <45.048782, 37.394543, 14.284691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833031, 37.352451, 14.188359>,  <44.473446, 37.282299, 14.027806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833031, 37.352451, 14.188359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358019, 0.233758, -0.903980,
		-0.252368, 0.956346, 0.147349,
		0.898962, 0.175382, 0.401383,
		45.102718, 37.405067, 14.308774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908363, 37.532623, 14.356644>,  <44.473446, 37.282299, 14.027806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908363, 37.532623, 14.356644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788254, 37.222935, 14.133782>,  <43.716187, 37.037121, 14.000066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788254, 37.222935, 14.133782>,  <43.908363, 37.532623, 14.356644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788254, 37.222935, 14.133782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934100, 0.120426, 0.336088,
		-0.193110, 0.621356, -0.759359,
		-0.300277, -0.774218, -0.557153,
		43.698170, 36.990669, 13.966637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308392, 37.724255, 13.984623>,  <43.908363, 37.532623, 14.356644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308392, 37.724255, 13.984623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303833, 37.325466, 14.015391>,  <43.301098, 37.086193, 14.033853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.303833, 37.325466, 14.015391>,  <43.308392, 37.724255, 13.984623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303833, 37.325466, 14.015391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975954, 0.027841, 0.216191,
		-0.217678, -0.072607, -0.973316,
		-0.011401, -0.996972, 0.076921,
		43.300411, 37.026375, 14.038467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.700439, 37.488361, 13.552127>,  <43.308392, 37.724255, 13.984623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.700439, 37.488361, 13.552127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796223, 37.202320, 13.814818>,  <42.853691, 37.030697, 13.972433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796223, 37.202320, 13.814818>,  <42.700439, 37.488361, 13.552127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796223, 37.202320, 13.814818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921262, 0.046177, 0.386192,
		-0.306492, -0.697495, -0.647738,
		0.239456, -0.715100, 0.656728,
		42.868061, 36.987789, 14.011837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018894, 37.129055, 13.550884>,  <42.700439, 37.488361, 13.552127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018894, 37.129055, 13.550884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229347, 37.046570, 13.880893>,  <42.355621, 36.997078, 14.078897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229347, 37.046570, 13.880893>,  <42.018894, 37.129055, 13.550884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229347, 37.046570, 13.880893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842040, 0.009376, 0.539334,
		-0.118951, -0.978463, -0.168704,
		0.526136, -0.206209, 0.825020,
		42.387188, 36.984707, 14.128399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600327, 36.682827, 14.020603>,  <42.018894, 37.129055, 13.550884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600327, 36.682827, 14.020603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892273, 36.797363, 14.268893>,  <42.067440, 36.866085, 14.417868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892273, 36.797363, 14.268893>,  <41.600327, 36.682827, 14.020603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892273, 36.797363, 14.268893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630383, -0.069287, 0.773186,
		0.264400, -0.955620, 0.129932,
		0.729870, 0.286338, 0.620726,
		42.111233, 36.883263, 14.455112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620525, 36.207851, 14.638716>,  <41.600327, 36.682827, 14.020603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620525, 36.207851, 14.638716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.806812, 36.542686, 14.753528>,  <41.918587, 36.743587, 14.822414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.806812, 36.542686, 14.753528>,  <41.620525, 36.207851, 14.638716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806812, 36.542686, 14.753528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511601, -0.009966, 0.859165,
		0.722058, -0.546976, 0.423615,
		0.465721, 0.837089, 0.287030,
		41.946529, 36.793812, 14.839637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786316, 36.047329, 15.354430>,  <41.620525, 36.207851, 14.638716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786316, 36.047329, 15.354430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811794, 36.444172, 15.311240>,  <41.827084, 36.682278, 15.285326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811794, 36.444172, 15.311240>,  <41.786316, 36.047329, 15.354430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811794, 36.444172, 15.311240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377385, 0.124108, 0.917702,
		0.923863, -0.017709, 0.382313,
		0.063700, 0.992111, -0.107976,
		41.830906, 36.741806, 15.278848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157703, 36.316757, 15.968496>,  <41.786316, 36.047329, 15.354430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157703, 36.316757, 15.968496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954479, 36.626110, 15.816838>,  <41.832542, 36.811722, 15.725843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954479, 36.626110, 15.816838>,  <42.157703, 36.316757, 15.968496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954479, 36.626110, 15.816838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406234, 0.172997, 0.897244,
		0.759503, 0.609879, 0.226280,
		-0.508065, 0.773382, -0.379145,
		41.802059, 36.858124, 15.703094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333252, 36.877857, 16.381098>,  <42.157703, 36.316757, 15.968496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333252, 36.877857, 16.381098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977901, 36.944626, 16.210022>,  <41.764690, 36.984688, 16.107376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977901, 36.944626, 16.210022>,  <42.333252, 36.877857, 16.381098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977901, 36.944626, 16.210022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416638, 0.098215, 0.903751,
		0.192860, 0.981066, -0.017707,
		-0.888379, 0.166920, -0.427692,
		41.711388, 36.994701, 16.081715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081367, 37.464260, 16.730429>,  <42.333252, 36.877857, 16.381098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081367, 37.464260, 16.730429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779480, 37.263573, 16.561348>,  <41.598347, 37.143162, 16.459900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779480, 37.263573, 16.561348>,  <42.081367, 37.464260, 16.730429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779480, 37.263573, 16.561348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550603, 0.134095, 0.823926,
		-0.356694, 0.854576, -0.377451,
		-0.754722, -0.501715, -0.422701,
		41.553062, 37.113060, 16.434538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483036, 37.780891, 16.988804>,  <42.081367, 37.464260, 16.730429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483036, 37.780891, 16.988804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326271, 37.443211, 16.842529>,  <41.232212, 37.240604, 16.754765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326271, 37.443211, 16.842529>,  <41.483036, 37.780891, 16.988804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326271, 37.443211, 16.842529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584823, -0.078235, 0.807379,
		-0.710199, 0.530288, -0.463046,
		-0.391917, -0.844200, -0.365687,
		41.208694, 37.189949, 16.732822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692921, 37.855400, 17.080332>,  <41.483036, 37.780891, 16.988804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692921, 37.855400, 17.080332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804989, 37.471687, 17.065994>,  <40.872231, 37.241459, 17.057392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804989, 37.471687, 17.065994>,  <40.692921, 37.855400, 17.080332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804989, 37.471687, 17.065994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546876, -0.190186, 0.815325,
		-0.788943, -0.208828, -0.577893,
		0.280169, -0.959281, -0.035843,
		40.889038, 37.183903, 17.055241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101128, 37.538376, 17.390810>,  <40.692921, 37.855400, 17.080332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101128, 37.538376, 17.390810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364155, 37.239979, 17.432961>,  <40.521973, 37.060940, 17.458250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364155, 37.239979, 17.432961>,  <40.101128, 37.538376, 17.390810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364155, 37.239979, 17.432961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448427, -0.275153, 0.850414,
		-0.605405, -0.606459, -0.515453,
		0.657569, -0.745988, 0.105373,
		40.561424, 37.016182, 17.464573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788822, 36.980801, 17.718330>,  <40.101128, 37.538376, 17.390810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788822, 36.980801, 17.718330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161671, 36.853443, 17.787354>,  <40.385380, 36.777027, 17.828768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161671, 36.853443, 17.787354>,  <39.788822, 36.980801, 17.718330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161671, 36.853443, 17.787354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274485, -0.310306, 0.910147,
		-0.236240, -0.895732, -0.376637,
		0.932121, -0.318394, 0.172558,
		40.441307, 36.757923, 17.839121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668804, 36.264870, 18.155954>,  <39.788822, 36.980801, 17.718330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668804, 36.264870, 18.155954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051022, 36.375572, 18.196648>,  <40.280350, 36.441994, 18.221064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.051022, 36.375572, 18.196648>,  <39.668804, 36.264870, 18.155954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051022, 36.375572, 18.196648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014011, -0.387245, 0.921870,
		0.294532, -0.879458, -0.373905,
		0.955539, 0.276759, 0.101734,
		40.337685, 36.458599, 18.227167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075474, 35.675293, 18.255066>,  <39.668804, 36.264870, 18.155954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075474, 35.675293, 18.255066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288960, 35.973728, 18.414318>,  <40.417049, 36.152790, 18.509869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288960, 35.973728, 18.414318>,  <40.075474, 35.675293, 18.255066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288960, 35.973728, 18.414318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056919, -0.438028, 0.897157,
		0.843749, -0.501485, -0.191314,
		0.533711, 0.746086, 0.398130,
		40.449074, 36.197556, 18.533756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423779, 35.365849, 18.692318>,  <40.075474, 35.675293, 18.255066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423779, 35.365849, 18.692318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466240, 35.743355, 18.817566>,  <40.491714, 35.969856, 18.892714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466240, 35.743355, 18.817566>,  <40.423779, 35.365849, 18.692318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466240, 35.743355, 18.817566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053367, -0.309036, 0.949552,
		0.992917, -0.117506, 0.017561,
		0.106151, 0.943763, 0.313118,
		40.498085, 36.026485, 18.911501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091679, 35.410194, 19.129885>,  <40.423779, 35.365849, 18.692318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091679, 35.410194, 19.129885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817986, 35.686348, 19.223854>,  <40.653770, 35.852039, 19.280235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817986, 35.686348, 19.223854>,  <41.091679, 35.410194, 19.129885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817986, 35.686348, 19.223854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050072, -0.365854, 0.929324,
		0.727540, 0.624114, 0.284899,
		-0.684236, 0.690386, 0.234922,
		40.612713, 35.893463, 19.294331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237938, 35.601799, 19.767550>,  <41.091679, 35.410194, 19.129885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237938, 35.601799, 19.767550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859238, 35.727512, 19.739582>,  <40.632019, 35.802940, 19.722801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859238, 35.727512, 19.739582>,  <41.237938, 35.601799, 19.767550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859238, 35.727512, 19.739582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158752, -0.266734, 0.950605,
		0.280113, 0.911085, 0.302424,
		-0.946750, 0.314287, -0.069921,
		40.575214, 35.821800, 19.718605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086159, 36.035435, 20.382414>,  <41.237938, 35.601799, 19.767550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086159, 36.035435, 20.382414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740604, 35.900829, 20.232502>,  <40.533272, 35.820065, 20.142555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740604, 35.900829, 20.232502>,  <41.086159, 36.035435, 20.382414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740604, 35.900829, 20.232502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308969, -0.233602, 0.921937,
		-0.397798, 0.912242, 0.097831,
		-0.863884, -0.336518, -0.374781,
		40.481438, 35.799873, 20.120068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644661, 36.126472, 20.941469>,  <41.086159, 36.035435, 20.382414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644661, 36.126472, 20.941469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423702, 35.895744, 20.700760>,  <40.291126, 35.757305, 20.556334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423702, 35.895744, 20.700760>,  <40.644661, 36.126472, 20.941469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423702, 35.895744, 20.700760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536197, -0.306863, 0.786338,
		-0.638241, 0.757041, -0.139780,
		-0.552397, -0.576823, -0.601775,
		40.257984, 35.722698, 20.520227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923836, 36.100628, 21.256220>,  <40.644661, 36.126472, 20.941469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923836, 36.100628, 21.256220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932247, 35.794346, 20.999081>,  <39.937294, 35.610577, 20.844797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932247, 35.794346, 20.999081>,  <39.923836, 36.100628, 21.256220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932247, 35.794346, 20.999081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547724, -0.546738, 0.633305,
		-0.836394, 0.338787, -0.430892,
		0.021030, -0.765703, -0.642850,
		39.938557, 35.564636, 20.806225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259758, 35.856731, 21.244764>,  <39.923836, 36.100628, 21.256220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259758, 35.856731, 21.244764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495678, 35.558472, 21.120743>,  <39.637230, 35.379517, 21.046329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495678, 35.558472, 21.120743>,  <39.259758, 35.856731, 21.244764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495678, 35.558472, 21.120743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393876, -0.600803, 0.695627,
		-0.704977, -0.288161, -0.648051,
		0.589804, -0.745654, -0.310053,
		39.672619, 35.334774, 21.027727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822056, 35.252304, 21.329947>,  <39.259758, 35.856731, 21.244764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822056, 35.252304, 21.329947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209503, 35.153080, 21.336201>,  <39.441971, 35.093544, 21.339952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209503, 35.153080, 21.336201>,  <38.822056, 35.252304, 21.329947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209503, 35.153080, 21.336201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163447, -0.588312, 0.791943,
		-0.187250, -0.769647, -0.610395,
		0.968619, -0.248058, 0.015635,
		39.500088, 35.078663, 21.340891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922672, 34.469948, 21.253057>,  <38.822056, 35.252304, 21.329947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922672, 34.469948, 21.253057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242092, 34.627052, 21.435509>,  <39.433746, 34.721313, 21.544979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242092, 34.627052, 21.435509>,  <38.922672, 34.469948, 21.253057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242092, 34.627052, 21.435509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049891, -0.711986, 0.700419,
		0.599854, -0.582079, -0.548963,
		0.798553, 0.392761, 0.456128,
		39.481659, 34.744881, 21.572348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455349, 33.890415, 21.305567>,  <38.922672, 34.469948, 21.253057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455349, 33.890415, 21.305567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447601, 34.180504, 21.580864>,  <39.442955, 34.354557, 21.746042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447601, 34.180504, 21.580864>,  <39.455349, 33.890415, 21.305567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447601, 34.180504, 21.580864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240019, -0.671615, 0.700946,
		0.970575, -0.151618, 0.187072,
		-0.019365, 0.725221, 0.688244,
		39.441792, 34.398071, 21.787336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839157, 33.664650, 21.924423>,  <39.455349, 33.890415, 21.305567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839157, 33.664650, 21.924423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600220, 33.938808, 22.090992>,  <39.456856, 34.103306, 22.190933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600220, 33.938808, 22.090992>,  <39.839157, 33.664650, 21.924423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600220, 33.938808, 22.090992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416009, -0.708731, 0.569770,
		0.685651, 0.167114, 0.708488,
		-0.597344, 0.685400, 0.416421,
		39.421017, 34.144428, 22.215918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863239, 33.502007, 22.584255>,  <39.839157, 33.664650, 21.924423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863239, 33.502007, 22.584255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528175, 33.706650, 22.507748>,  <39.327137, 33.829437, 22.461843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528175, 33.706650, 22.507748>,  <39.863239, 33.502007, 22.584255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528175, 33.706650, 22.507748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507396, -0.599254, 0.619229,
		0.202187, 0.615750, 0.761559,
		-0.837657, 0.511612, -0.191267,
		39.276878, 33.860134, 22.450367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489422, 33.672920, 23.221054>,  <39.863239, 33.502007, 22.584255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489422, 33.672920, 23.221054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220505, 33.669868, 22.924957>,  <39.059155, 33.668037, 22.747299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220505, 33.669868, 22.924957>,  <39.489422, 33.672920, 23.221054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220505, 33.669868, 22.924957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649888, -0.472756, 0.595104,
		-0.354492, 0.881161, 0.312876,
		-0.672296, -0.007625, -0.740243,
		39.018818, 33.667580, 22.702885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712723, 33.940754, 23.377806>,  <39.489422, 33.672920, 23.221054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712723, 33.940754, 23.377806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700199, 33.671860, 23.081936>,  <38.692684, 33.510525, 22.904413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700199, 33.671860, 23.081936>,  <38.712723, 33.940754, 23.377806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700199, 33.671860, 23.081936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719897, -0.498210, 0.483255,
		-0.693375, 0.547621, -0.468340,
		-0.031309, -0.672233, -0.739677,
		38.690807, 33.470188, 22.860033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053757, 33.895733, 23.223717>,  <38.712723, 33.940754, 23.377806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053757, 33.895733, 23.223717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228752, 33.553970, 23.111580>,  <38.333752, 33.348911, 23.044298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228752, 33.553970, 23.111580>,  <38.053757, 33.895733, 23.223717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228752, 33.553970, 23.111580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508445, -0.492181, 0.706571,
		-0.741677, -0.166581, -0.649743,
		0.437492, -0.854406, -0.280342,
		38.360001, 33.297649, 23.027477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319004, 33.637505, 22.992424>,  <38.053757, 33.895733, 23.223717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319004, 33.637505, 22.992424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111095, 33.837196, 23.269730>,  <36.986351, 33.957012, 23.436113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111095, 33.837196, 23.269730>,  <37.319004, 33.637505, 22.992424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111095, 33.837196, 23.269730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131610, -0.848595, 0.512411,
		0.844110, 0.175094, 0.506775,
		-0.519767, 0.499227, 0.693263,
		36.955166, 33.986965, 23.477709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482391, 33.430714, 23.634062>,  <37.319004, 33.637505, 22.992424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482391, 33.430714, 23.634062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117134, 33.584011, 23.689613>,  <36.897980, 33.675991, 23.722944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117134, 33.584011, 23.689613>,  <37.482391, 33.430714, 23.634062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117134, 33.584011, 23.689613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220616, -0.751125, 0.622206,
		0.342773, 0.537526, 0.770437,
		-0.913146, 0.383246, 0.138879,
		36.843189, 33.698986, 23.731277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440445, 33.488510, 24.349106>,  <37.482391, 33.430714, 23.634062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440445, 33.488510, 24.349106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070049, 33.456333, 24.201553>,  <36.847813, 33.437027, 24.113022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070049, 33.456333, 24.201553>,  <37.440445, 33.488510, 24.349106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070049, 33.456333, 24.201553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194762, -0.735234, 0.649230,
		-0.323438, 0.673024, 0.665152,
		-0.925989, -0.080440, -0.368882,
		36.792252, 33.432201, 24.090889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091522, 33.307941, 24.887463>,  <37.440445, 33.488510, 24.349106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091522, 33.307941, 24.887463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803818, 33.224045, 24.622532>,  <36.631195, 33.173706, 24.463573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803818, 33.224045, 24.622532>,  <37.091522, 33.307941, 24.887463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803818, 33.224045, 24.622532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286206, -0.779229, 0.557573,
		-0.633053, 0.590600, 0.500435,
		-0.719257, -0.209745, -0.662327,
		36.588039, 33.161121, 24.423834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537914, 33.309406, 25.238977>,  <37.091522, 33.307941, 24.887463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537914, 33.309406, 25.238977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496159, 33.065731, 24.924526>,  <36.471104, 32.919525, 24.735855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496159, 33.065731, 24.924526>,  <36.537914, 33.309406, 25.238977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496159, 33.065731, 24.924526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327500, -0.725304, 0.605539,
		-0.939067, 0.320668, -0.123795,
		-0.104388, -0.609185, -0.786128,
		36.464844, 32.882977, 24.688688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975018, 32.957478, 25.447489>,  <36.537914, 33.309406, 25.238977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975018, 32.957478, 25.447489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101891, 32.743542, 25.134224>,  <36.178013, 32.615181, 24.946264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101891, 32.743542, 25.134224>,  <35.975018, 32.957478, 25.447489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101891, 32.743542, 25.134224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305144, -0.839444, 0.449690,
		-0.897933, 0.096344, -0.429459,
		0.317182, -0.534838, -0.783163,
		36.197044, 32.583092, 24.899275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416985, 32.517052, 25.309252>,  <35.975018, 32.957478, 25.447489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416985, 32.517052, 25.309252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738186, 32.329273, 25.162384>,  <35.930904, 32.216606, 25.074265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738186, 32.329273, 25.162384>,  <35.416985, 32.517052, 25.309252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738186, 32.329273, 25.162384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298906, -0.850220, 0.433338,
		-0.515601, -0.238222, -0.823047,
		0.803001, -0.469443, -0.367168,
		35.979088, 32.188442, 25.052233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172764, 31.874500, 24.986830>,  <35.416985, 32.517052, 25.309252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172764, 31.874500, 24.986830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558460, 31.785301, 25.044121>,  <35.789879, 31.731783, 25.078495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558460, 31.785301, 25.044121>,  <35.172764, 31.874500, 24.986830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558460, 31.785301, 25.044121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261318, -0.890082, 0.373453,
		0.044206, -0.397526, -0.916526,
		0.964240, -0.222996, 0.143228,
		35.847733, 31.718403, 25.087090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185371, 31.241137, 24.713913>,  <35.172764, 31.874500, 24.986830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185371, 31.241137, 24.713913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488892, 31.288342, 24.970131>,  <35.671001, 31.316664, 25.123861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488892, 31.288342, 24.970131>,  <35.185371, 31.241137, 24.713913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488892, 31.288342, 24.970131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165977, -0.915946, 0.365368,
		0.629824, -0.383556, -0.675430,
		0.758797, 0.118011, 0.640547,
		35.716530, 31.323746, 25.162294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569351, 30.548573, 24.709026>,  <35.185371, 31.241137, 24.713913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569351, 30.548573, 24.709026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680950, 30.741623, 25.041107>,  <35.747910, 30.857452, 25.240355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680950, 30.741623, 25.041107>,  <35.569351, 30.548573, 24.709026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680950, 30.741623, 25.041107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303642, -0.775836, 0.553065,
		0.911022, -0.406389, -0.069913,
		0.279000, 0.482626, 0.830200,
		35.764648, 30.886410, 25.290167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750160, 30.020641, 25.040987>,  <35.569351, 30.548573, 24.709026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750160, 30.020641, 25.040987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753521, 30.290112, 25.336578>,  <35.755539, 30.451794, 25.513933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753521, 30.290112, 25.336578>,  <35.750160, 30.020641, 25.040987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753521, 30.290112, 25.336578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377086, -0.682313, 0.626303,
		0.926140, -0.283922, 0.248300,
		0.008402, 0.673675, 0.738980,
		35.756042, 30.492214, 25.558273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860386, 29.662954, 25.614960>,  <35.750160, 30.020641, 25.040987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860386, 29.662954, 25.614960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755527, 29.995880, 25.810318>,  <35.692612, 30.195635, 25.927534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755527, 29.995880, 25.810318>,  <35.860386, 29.662954, 25.614960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755527, 29.995880, 25.810318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347769, -0.553570, 0.756715,
		0.900187, 0.028520, 0.434569,
		-0.262145, 0.832314, 0.488398,
		35.676884, 30.245575, 25.956837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273994, 29.712526, 26.263962>,  <35.860386, 29.662954, 25.614960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273994, 29.712526, 26.263962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905689, 29.868576, 26.263363>,  <35.684708, 29.962206, 26.263004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905689, 29.868576, 26.263363>,  <36.273994, 29.712526, 26.263962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905689, 29.868576, 26.263363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291156, -0.684617, 0.668227,
		0.259666, 0.615714, 0.743956,
		-0.920762, 0.390123, -0.001497,
		35.629459, 29.985613, 26.262913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115726, 29.596235, 26.928057>,  <36.273994, 29.712526, 26.263962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115726, 29.596235, 26.928057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765018, 29.708984, 26.772202>,  <35.554592, 29.776634, 26.678688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765018, 29.708984, 26.772202>,  <36.115726, 29.596235, 26.928057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765018, 29.708984, 26.772202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479023, -0.440301, 0.759389,
		0.042492, 0.852458, 0.521067,
		-0.876773, 0.281871, -0.389638,
		35.501987, 29.793545, 26.655310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678577, 30.037333, 27.323769>,  <36.115726, 29.596235, 26.928057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678577, 30.037333, 27.323769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437237, 29.826923, 27.084011>,  <35.292435, 29.700678, 26.940157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437237, 29.826923, 27.084011>,  <35.678577, 30.037333, 27.323769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437237, 29.826923, 27.084011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375314, -0.475873, 0.795414,
		-0.703640, 0.704872, 0.089694,
		-0.603349, -0.526022, -0.599392,
		35.256233, 29.669117, 26.904194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179092, 29.910864, 27.736826>,  <35.678577, 30.037333, 27.323769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179092, 29.910864, 27.736826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136662, 29.650757, 27.435921>,  <35.111202, 29.494694, 27.255377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136662, 29.650757, 27.435921>,  <35.179092, 29.910864, 27.736826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136662, 29.650757, 27.435921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287258, -0.704237, 0.649256,
		-0.951961, 0.284966, -0.112089,
		-0.106079, -0.650265, -0.752265,
		35.104839, 29.455677, 27.210241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591961, 29.649492, 27.808422>,  <35.179092, 29.910864, 27.736826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591961, 29.649492, 27.808422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772167, 29.359974, 27.599365>,  <34.880291, 29.186262, 27.473930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772167, 29.359974, 27.599365>,  <34.591961, 29.649492, 27.808422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772167, 29.359974, 27.599365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407811, -0.687615, 0.600730,
		-0.794182, -0.057499, -0.604954,
		0.450517, -0.723795, -0.522642,
		34.907322, 29.142836, 27.442572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067471, 29.168705, 27.661280>,  <34.591961, 29.649492, 27.808422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067471, 29.168705, 27.661280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423626, 28.989697, 27.627979>,  <34.637318, 28.882292, 27.608000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423626, 28.989697, 27.627979>,  <34.067471, 29.168705, 27.661280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423626, 28.989697, 27.627979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332480, -0.764290, 0.552555,
		-0.310909, -0.464309, -0.829308,
		0.890389, -0.447523, -0.083251,
		34.690742, 28.855440, 27.603004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914593, 28.507610, 27.669306>,  <34.067471, 29.168705, 27.661280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914593, 28.507610, 27.669306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307308, 28.498936, 27.744804>,  <34.542938, 28.493731, 27.790104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307308, 28.498936, 27.744804>,  <33.914593, 28.507610, 27.669306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307308, 28.498936, 27.744804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137343, -0.767446, 0.626230,
		0.131273, -0.640747, -0.756446,
		0.981786, -0.021685, 0.188747,
		34.601845, 28.492430, 27.801428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964123, 27.791714, 27.696482>,  <33.914593, 28.507610, 27.669306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964123, 27.791714, 27.696482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297325, 27.940804, 27.860031>,  <34.497246, 28.030258, 27.958160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297325, 27.940804, 27.860031>,  <33.964123, 27.791714, 27.696482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297325, 27.940804, 27.860031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056135, -0.792143, 0.607748,
		0.550408, -0.483306, -0.680783,
		0.833006, 0.372726, 0.408872,
		34.547226, 28.052622, 27.982693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466751, 27.227945, 27.714008>,  <33.964123, 27.791714, 27.696482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466751, 27.227945, 27.714008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604301, 27.501652, 27.971233>,  <34.686832, 27.665874, 28.125568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604301, 27.501652, 27.971233>,  <34.466751, 27.227945, 27.714008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604301, 27.501652, 27.971233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219246, -0.724407, 0.653579,
		0.913061, -0.083761, -0.399129,
		0.343876, 0.684265, 0.643063,
		34.707466, 27.706932, 28.164152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036510, 26.886854, 28.008087>,  <34.466751, 27.227945, 27.714008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036510, 26.886854, 28.008087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932976, 27.168137, 28.272964>,  <34.870853, 27.336906, 28.431890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932976, 27.168137, 28.272964>,  <35.036510, 26.886854, 28.008087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932976, 27.168137, 28.272964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128659, -0.654350, 0.745166,
		0.957314, 0.278074, 0.078896,
		-0.258837, 0.703207, 0.662195,
		34.855324, 27.379099, 28.471622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601181, 26.949421, 28.589273>,  <35.036510, 26.886854, 28.008087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601181, 26.949421, 28.589273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250973, 27.082821, 28.729122>,  <35.040848, 27.162861, 28.813030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250973, 27.082821, 28.729122>,  <35.601181, 26.949421, 28.589273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250973, 27.082821, 28.729122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136888, -0.522738, 0.841431,
		0.463376, 0.784553, 0.412018,
		-0.875525, 0.333499, 0.349620,
		34.988316, 27.182871, 28.834007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711887, 27.025637, 29.336868>,  <35.601181, 26.949421, 28.589273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711887, 27.025637, 29.336868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313755, 27.052715, 29.309338>,  <35.074875, 27.068962, 29.292820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313755, 27.052715, 29.309338>,  <35.711887, 27.025637, 29.336868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313755, 27.052715, 29.309338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094667, -0.544688, 0.833279,
		0.018919, 0.835902, 0.548552,
		-0.995329, 0.067695, -0.068827,
		35.015156, 27.073023, 29.288689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477814, 27.380116, 29.906353>,  <35.711887, 27.025637, 29.336868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477814, 27.380116, 29.906353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197083, 27.145142, 29.745178>,  <35.028645, 27.004156, 29.648474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.197083, 27.145142, 29.745178>,  <35.477814, 27.380116, 29.906353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197083, 27.145142, 29.745178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009900, -0.557548, 0.830086,
		-0.712280, 0.586565, 0.385486,
		-0.701826, -0.587437, -0.402937,
		34.986534, 26.968910, 29.624298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961647, 27.418367, 30.406473>,  <35.477814, 27.380116, 29.906353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961647, 27.418367, 30.406473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939312, 27.086166, 30.184792>,  <34.925911, 26.886845, 30.051783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939312, 27.086166, 30.184792>,  <34.961647, 27.418367, 30.406473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939312, 27.086166, 30.184792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083462, -0.557012, 0.826300,
		-0.994945, -0.000114, 0.100420,
		-0.055840, -0.830505, -0.554206,
		34.922562, 26.837015, 30.018530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887566, 26.903418, 30.878273>,  <34.961647, 27.418367, 30.406473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887566, 26.903418, 30.878273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902252, 26.654186, 30.565754>,  <34.911064, 26.504648, 30.378242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902252, 26.654186, 30.565754>,  <34.887566, 26.903418, 30.878273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902252, 26.654186, 30.565754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033406, -0.782152, 0.622191,
		-0.998767, 0.003257, -0.049530,
		0.036713, -0.623079, -0.781297,
		34.913265, 26.467262, 30.331366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347111, 26.337826, 31.039124>,  <34.887566, 26.903418, 30.878273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347111, 26.337826, 31.039124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644497, 26.223328, 30.797356>,  <34.822929, 26.154629, 30.652294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644497, 26.223328, 30.797356>,  <34.347111, 26.337826, 31.039124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644497, 26.223328, 30.797356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045133, -0.880238, 0.472382,
		-0.667249, -0.378479, -0.641508,
		0.743466, -0.286243, -0.604419,
		34.867538, 26.137455, 30.616030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158855, 25.583195, 30.673998>,  <34.347111, 26.337826, 31.039124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158855, 25.583195, 30.673998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554962, 25.637417, 30.686642>,  <34.792625, 25.669950, 30.694229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554962, 25.637417, 30.686642>,  <34.158855, 25.583195, 30.673998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554962, 25.637417, 30.686642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120864, -0.950043, 0.287767,
		0.069040, -0.281145, -0.957179,
		0.990265, 0.135556, 0.031611,
		34.852043, 25.678083, 30.696125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382698, 24.976429, 30.318354>,  <34.158855, 25.583195, 30.673998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382698, 24.976429, 30.318354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674122, 25.129692, 30.545475>,  <34.848976, 25.221649, 30.681747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674122, 25.129692, 30.545475>,  <34.382698, 24.976429, 30.318354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674122, 25.129692, 30.545475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188114, -0.908969, 0.372005,
		0.658650, -0.164215, -0.734312,
		0.728556, 0.383156, 0.567801,
		34.892689, 25.244638, 30.715815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951447, 24.460089, 30.391560>,  <34.382698, 24.976429, 30.318354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951447, 24.460089, 30.391560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031876, 24.716625, 30.687737>,  <35.080132, 24.870548, 30.865442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031876, 24.716625, 30.687737>,  <34.951447, 24.460089, 30.391560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031876, 24.716625, 30.687737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218027, -0.766217, 0.604463,
		0.955006, 0.039898, -0.293892,
		0.201068, 0.641342, 0.740440,
		35.092197, 24.909027, 30.909868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642513, 24.318193, 30.539190>,  <34.951447, 24.460089, 30.391560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642513, 24.318193, 30.539190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500656, 24.512859, 30.858536>,  <35.415543, 24.629660, 31.050142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500656, 24.512859, 30.858536>,  <35.642513, 24.318193, 30.539190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500656, 24.512859, 30.858536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163630, -0.808382, 0.565459,
		0.920572, 0.331172, 0.207054,
		-0.354643, 0.486666, 0.798364,
		35.394264, 24.658859, 31.098045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998077, 23.993622, 31.009892>,  <35.642513, 24.318193, 30.539190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998077, 23.993622, 31.009892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709049, 24.171909, 31.221260>,  <35.535633, 24.278881, 31.348082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709049, 24.171909, 31.221260>,  <35.998077, 23.993622, 31.009892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709049, 24.171909, 31.221260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052775, -0.797725, 0.600707,
		0.689283, 0.406164, 0.599933,
		-0.722567, 0.445719, 0.528423,
		35.492279, 24.305626, 31.379787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077808, 23.857618, 31.757757>,  <35.998077, 23.993622, 31.009892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077808, 23.857618, 31.757757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696114, 23.965427, 31.705917>,  <35.467098, 24.030113, 31.674814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696114, 23.965427, 31.705917>,  <36.077808, 23.857618, 31.757757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696114, 23.965427, 31.705917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291457, -0.741015, 0.604937,
		0.067008, 0.615024, 0.785656,
		-0.954234, 0.269521, -0.129599,
		35.409843, 24.046284, 31.667038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788322, 23.959295, 32.394379>,  <36.077808, 23.857618, 31.757757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788322, 23.959295, 32.394379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473721, 23.869965, 32.164062>,  <35.284958, 23.816366, 32.025871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473721, 23.869965, 32.164062>,  <35.788322, 23.959295, 32.394379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473721, 23.869965, 32.164062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319006, -0.651411, 0.688403,
		-0.528816, 0.725113, 0.441095,
		-0.786504, -0.223327, -0.575792,
		35.237770, 23.802967, 31.991325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240742, 23.895662, 32.842770>,  <35.788322, 23.959295, 32.394379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240742, 23.895662, 32.842770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108021, 23.703953, 32.517757>,  <35.028389, 23.588926, 32.322750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108021, 23.703953, 32.517757>,  <35.240742, 23.895662, 32.842770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108021, 23.703953, 32.517757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414491, -0.699660, 0.581956,
		-0.847412, 0.529879, 0.033491,
		-0.331798, -0.479275, -0.812530,
		35.008480, 23.560171, 32.273998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493416, 23.734665, 32.956715>,  <35.240742, 23.895662, 32.842770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493416, 23.734665, 32.956715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591969, 23.482292, 32.662445>,  <34.651100, 23.330870, 32.485882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591969, 23.482292, 32.662445>,  <34.493416, 23.734665, 32.956715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591969, 23.482292, 32.662445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440771, -0.748981, 0.494721,
		-0.863143, 0.202373, -0.462633,
		0.246385, -0.630930, -0.735678,
		34.665886, 23.293013, 32.441742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928089, 23.505125, 32.710457>,  <34.493416, 23.734665, 32.956715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928089, 23.505125, 32.710457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208080, 23.230145, 32.633064>,  <34.376076, 23.065157, 32.586628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208080, 23.230145, 32.633064>,  <33.928089, 23.505125, 32.710457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208080, 23.230145, 32.633064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532923, -0.683160, 0.499284,
		-0.475415, -0.246377, -0.844558,
		0.699981, -0.687452, -0.193484,
		34.418076, 23.023909, 32.575020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525074, 22.893147, 32.678711>,  <33.928089, 23.505125, 32.710457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525074, 22.893147, 32.678711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902977, 22.763851, 32.700401>,  <34.129719, 22.686274, 32.713417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902977, 22.763851, 32.700401>,  <33.525074, 22.893147, 32.678711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902977, 22.763851, 32.700401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294811, -0.765791, 0.571533,
		-0.143216, -0.555949, -0.818785,
		0.944762, -0.323240, 0.054226,
		34.186405, 22.666880, 32.716667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467823, 22.149958, 32.587132>,  <33.525074, 22.893147, 32.678711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467823, 22.149958, 32.587132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814575, 22.244442, 32.762733>,  <34.022625, 22.301132, 32.868095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814575, 22.244442, 32.762733>,  <33.467823, 22.149958, 32.587132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814575, 22.244442, 32.762733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171145, -0.686085, 0.707104,
		0.468222, -0.688107, -0.554326,
		0.866878, 0.236212, 0.439007,
		34.074638, 22.315306, 32.894436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744965, 21.499863, 32.713146>,  <33.467823, 22.149958, 32.587132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744965, 21.499863, 32.713146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924458, 21.760098, 32.958218>,  <34.032154, 21.916239, 33.105259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924458, 21.760098, 32.958218>,  <33.744965, 21.499863, 32.713146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924458, 21.760098, 32.958218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122898, -0.634138, 0.763391,
		0.885174, -0.417857, -0.204605,
		0.448736, 0.650588, 0.612676,
		34.059078, 21.955275, 33.142021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850342, 21.032852, 33.367329>,  <33.744965, 21.499863, 32.713146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850342, 21.032852, 33.367329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926514, 21.404354, 33.494549>,  <33.972218, 21.627254, 33.570881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926514, 21.404354, 33.494549>,  <33.850342, 21.032852, 33.367329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926514, 21.404354, 33.494549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297587, -0.254117, 0.920253,
		0.935509, -0.269893, 0.227992,
		0.190434, 0.928753, 0.318046,
		33.983643, 21.682980, 33.589962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288765, 21.010935, 34.052429>,  <33.850342, 21.032852, 33.367329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288765, 21.010935, 34.052429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062843, 21.338394, 34.010841>,  <33.927288, 21.534870, 33.985889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062843, 21.338394, 34.010841>,  <34.288765, 21.010935, 34.052429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062843, 21.338394, 34.010841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487852, -0.229629, 0.842182,
		0.665577, 0.526390, 0.529075,
		-0.564807, 0.818648, -0.103965,
		33.893402, 21.583988, 33.979652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207829, 21.442286, 34.666443>,  <34.288765, 21.010935, 34.052429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207829, 21.442286, 34.666443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865955, 21.428230, 34.459259>,  <33.660831, 21.419798, 34.334949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865955, 21.428230, 34.459259>,  <34.207829, 21.442286, 34.666443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865955, 21.428230, 34.459259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481075, -0.321418, 0.815633,
		-0.195140, 0.946285, 0.257807,
		-0.854685, -0.035138, -0.517956,
		33.609550, 21.417688, 34.303871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645054, 21.755224, 34.983147>,  <34.207829, 21.442286, 34.666443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645054, 21.755224, 34.983147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481266, 21.468517, 34.757378>,  <33.382992, 21.296494, 34.621914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481266, 21.468517, 34.757378>,  <33.645054, 21.755224, 34.983147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481266, 21.468517, 34.757378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526299, -0.319767, 0.787882,
		-0.745215, 0.619671, -0.246300,
		-0.409469, -0.716769, -0.564427,
		33.358425, 21.253487, 34.588051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871510, 21.645784, 35.151905>,  <33.645054, 21.755224, 34.983147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871510, 21.645784, 35.151905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949013, 21.287918, 34.990894>,  <32.995514, 21.073198, 34.894287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949013, 21.287918, 34.990894>,  <32.871510, 21.645784, 35.151905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949013, 21.287918, 34.990894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535183, -0.440265, 0.720934,
		-0.822216, 0.075743, -0.564114,
		0.193754, -0.894667, -0.402529,
		33.007137, 21.019518, 34.870136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498096, 21.540579, 35.803181>,  <32.871510, 21.645784, 35.151905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498096, 21.540579, 35.803181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511223, 21.727406, 36.156628>,  <33.519100, 21.839500, 36.368694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511223, 21.727406, 36.156628>,  <33.498096, 21.540579, 35.803181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511223, 21.727406, 36.156628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290404, -0.841491, 0.455586,
		0.956341, -0.271556, 0.108023,
		0.032817, 0.467066, 0.883614,
		33.521069, 21.867525, 36.421711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678440, 22.262817, 36.068375>,  <33.498096, 21.540579, 35.803181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678440, 22.262817, 36.068375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001438, 22.449413, 35.923962>,  <34.195236, 22.561371, 35.837315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001438, 22.449413, 35.923962>,  <33.678440, 22.262817, 36.068375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001438, 22.449413, 35.923962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165177, -0.408738, -0.897580,
		-0.566279, 0.784423, -0.252999,
		0.807492, 0.466491, -0.361029,
		34.243687, 22.589361, 35.815655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950020, 22.207146, 36.235214>,  <33.678440, 22.262817, 36.068375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950020, 22.207146, 36.235214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817623, 22.564987, 36.355301>,  <32.738186, 22.779692, 36.427353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817623, 22.564987, 36.355301>,  <32.950020, 22.207146, 36.235214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817623, 22.564987, 36.355301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857280, 0.418032, -0.300533,
		-0.394357, 0.157893, -0.905291,
		-0.330988, 0.894605, 0.300213,
		32.718327, 22.833368, 36.445366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854881, 22.713129, 35.663704>,  <32.950020, 22.207146, 36.235214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854881, 22.713129, 35.663704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947979, 22.888138, 36.011131>,  <33.003838, 22.993143, 36.219585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947979, 22.888138, 36.011131>,  <32.854881, 22.713129, 35.663704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947979, 22.888138, 36.011131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876398, 0.292815, -0.382342,
		-0.421612, 0.850196, -0.315294,
		0.232743, 0.437523, 0.868564,
		33.017803, 23.019394, 36.271702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943279, 23.460106, 35.625690>,  <32.854881, 22.713129, 35.663704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943279, 23.460106, 35.625690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171108, 23.330566, 35.927872>,  <33.307808, 23.252844, 36.109180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171108, 23.330566, 35.927872>,  <32.943279, 23.460106, 35.625690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171108, 23.330566, 35.927872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764732, 0.545692, -0.342645,
		-0.301279, 0.772880, 0.558469,
		0.569576, -0.323847, 0.755451,
		33.341980, 23.233412, 36.154507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145157, 23.977829, 36.150024>,  <32.943279, 23.460106, 35.625690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145157, 23.977829, 36.150024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423813, 23.699909, 36.078537>,  <33.591007, 23.533157, 36.035645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423813, 23.699909, 36.078537>,  <33.145157, 23.977829, 36.150024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423813, 23.699909, 36.078537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574241, 0.689359, -0.441624,
		0.430046, 0.205023, 0.879219,
		0.696641, -0.694802, -0.178723,
		33.632805, 23.491468, 36.024921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744232, 24.190739, 36.369888>,  <33.145157, 23.977829, 36.150024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744232, 24.190739, 36.369888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836323, 23.924297, 36.086113>,  <33.891579, 23.764433, 35.915848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836323, 23.924297, 36.086113>,  <33.744232, 24.190739, 36.369888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836323, 23.924297, 36.086113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781433, 0.561021, -0.273163,
		0.579964, -0.491489, 0.649677,
		0.230226, -0.666104, -0.709437,
		33.905392, 23.724466, 35.873283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401344, 24.080805, 36.379757>,  <33.744232, 24.190739, 36.369888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401344, 24.080805, 36.379757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344456, 23.942467, 36.008778>,  <34.310322, 23.859465, 35.786190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344456, 23.942467, 36.008778>,  <34.401344, 24.080805, 36.379757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344456, 23.942467, 36.008778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761986, 0.559792, -0.325594,
		0.631784, -0.753010, 0.183915,
		-0.142222, -0.345845, -0.927450,
		34.301788, 23.838713, 35.730541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089603, 23.916334, 36.046825>,  <34.401344, 24.080805, 36.379757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089603, 23.916334, 36.046825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839954, 23.973217, 35.739517>,  <34.690166, 24.007347, 35.555130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839954, 23.973217, 35.739517>,  <35.089603, 23.916334, 36.046825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839954, 23.973217, 35.739517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641013, 0.655410, -0.399425,
		0.446734, -0.741765, -0.500214,
		-0.624124, 0.142207, -0.768275,
		34.652718, 24.015879, 35.509033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578281, 24.068745, 35.495682>,  <35.089603, 23.916334, 36.046825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578281, 24.068745, 35.495682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222469, 24.235271, 35.420406>,  <35.008984, 24.335188, 35.375240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222469, 24.235271, 35.420406>,  <35.578281, 24.068745, 35.495682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222469, 24.235271, 35.420406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437569, 0.657824, -0.613026,
		-0.131418, -0.627651, -0.767322,
		-0.889529, 0.416319, -0.188191,
		34.955612, 24.360167, 35.363949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549339, 24.154276, 34.769928>,  <35.578281, 24.068745, 35.495682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549339, 24.154276, 34.769928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236736, 24.385220, 34.864506>,  <35.049175, 24.523785, 34.921253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236736, 24.385220, 34.864506>,  <35.549339, 24.154276, 34.769928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236736, 24.385220, 34.864506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255259, 0.641703, -0.723229,
		-0.569292, -0.504851, -0.648869,
		-0.781504, 0.577358, 0.236449,
		35.002285, 24.558428, 34.935440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103367, 24.224714, 34.078461>,  <35.549339, 24.154276, 34.769928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103367, 24.224714, 34.078461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054092, 24.527103, 34.335625>,  <35.024529, 24.708536, 34.489922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054092, 24.527103, 34.335625>,  <35.103367, 24.224714, 34.078461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054092, 24.527103, 34.335625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181507, 0.654076, -0.734329,
		-0.975644, 0.026234, -0.217787,
		-0.123186, 0.755973, 0.642907,
		35.017136, 24.753895, 34.528496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587738, 24.689728, 33.716141>,  <35.103367, 24.224714, 34.078461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587738, 24.689728, 33.716141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787373, 24.904243, 33.988407>,  <34.907154, 25.032953, 34.151768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787373, 24.904243, 33.988407>,  <34.587738, 24.689728, 33.716141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787373, 24.904243, 33.988407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026861, 0.775537, -0.630730,
		-0.866134, 0.333074, 0.372657,
		0.499089, 0.536287, 0.680666,
		34.937099, 25.065130, 34.192608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174797, 25.296673, 33.771648>,  <34.587738, 24.689728, 33.716141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174797, 25.296673, 33.771648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532501, 25.379845, 33.930172>,  <34.747124, 25.429749, 34.025288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532501, 25.379845, 33.930172>,  <34.174797, 25.296673, 33.771648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532501, 25.379845, 33.930172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054181, 0.828704, -0.557058,
		-0.444252, 0.519628, 0.729813,
		0.894262, 0.207932, 0.396307,
		34.800781, 25.442225, 34.049065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183453, 26.039570, 34.005917>,  <34.174797, 25.296673, 33.771648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183453, 26.039570, 34.005917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571716, 25.965275, 33.944820>,  <34.804672, 25.920698, 33.908161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571716, 25.965275, 33.944820>,  <34.183453, 26.039570, 34.005917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571716, 25.965275, 33.944820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113202, 0.913312, -0.391212,
		0.212165, 0.362442, 0.907536,
		0.970655, -0.185736, -0.152743,
		34.862911, 25.909554, 33.898998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385086, 26.694263, 33.973015>,  <34.183453, 26.039570, 34.005917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385086, 26.694263, 33.973015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701424, 26.489311, 33.839127>,  <34.891224, 26.366341, 33.758793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701424, 26.489311, 33.839127>,  <34.385086, 26.694263, 33.973015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701424, 26.489311, 33.839127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274865, 0.786000, -0.553763,
		0.546829, 0.345935, 0.762435,
		0.790840, -0.512380, -0.334722,
		34.938675, 26.335598, 33.738708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960056, 27.055868, 34.188156>,  <34.385086, 26.694263, 33.973015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960056, 27.055868, 34.188156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068295, 26.868977, 33.851475>,  <35.133240, 26.756842, 33.649464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068295, 26.868977, 33.851475>,  <34.960056, 27.055868, 34.188156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068295, 26.868977, 33.851475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093657, 0.882956, -0.460018,
		0.958125, 0.045649, 0.282687,
		0.270600, -0.467231, -0.841707,
		35.149475, 26.728807, 33.598961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482525, 27.460344, 33.941589>,  <34.960056, 27.055868, 34.188156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482525, 27.460344, 33.941589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375984, 27.237049, 33.627285>,  <35.312061, 27.103071, 33.438702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375984, 27.237049, 33.627285>,  <35.482525, 27.460344, 33.941589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375984, 27.237049, 33.627285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228676, 0.755342, -0.614138,
		0.936357, -0.343262, -0.073531,
		-0.266352, -0.558237, -0.785766,
		35.296078, 27.069578, 33.391556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026543, 27.483852, 33.466164>,  <35.482525, 27.460344, 33.941589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026543, 27.483852, 33.466164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706295, 27.401413, 33.241123>,  <35.514145, 27.351950, 33.106098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706295, 27.401413, 33.241123>,  <36.026543, 27.483852, 33.466164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706295, 27.401413, 33.241123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235540, 0.755119, -0.611813,
		0.550929, -0.622348, -0.556022,
		-0.800624, -0.206100, -0.562605,
		35.466106, 27.339582, 33.072342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235588, 27.520128, 32.734528>,  <36.026543, 27.483852, 33.466164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235588, 27.520128, 32.734528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836376, 27.535641, 32.714775>,  <35.596851, 27.544949, 32.702923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836376, 27.535641, 32.714775>,  <36.235588, 27.520128, 32.734528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836376, 27.535641, 32.714775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062306, 0.708967, -0.702484,
		0.007765, -0.704175, -0.709984,
		-0.998027, 0.038781, -0.049379,
		35.536968, 27.547276, 32.699963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098526, 27.499462, 32.078213>,  <36.235588, 27.520128, 32.734528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098526, 27.499462, 32.078213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748260, 27.629341, 32.221199>,  <35.538101, 27.707268, 32.306992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.748260, 27.629341, 32.221199>,  <36.098526, 27.499462, 32.078213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748260, 27.629341, 32.221199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044536, 0.682762, -0.729282,
		-0.480859, -0.654528, -0.583411,
		-0.875666, 0.324698, 0.357462,
		35.485561, 27.726751, 32.328438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745037, 27.636135, 31.429939>,  <36.098526, 27.499462, 32.078213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745037, 27.636135, 31.429939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563301, 27.838554, 31.723194>,  <35.454258, 27.960007, 31.899147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563301, 27.838554, 31.723194>,  <35.745037, 27.636135, 31.429939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563301, 27.838554, 31.723194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237787, 0.724228, -0.647265,
		-0.858505, -0.468410, -0.208714,
		-0.454342, 0.506050, 0.733135,
		35.426998, 27.990370, 31.943134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161041, 28.004843, 31.069426>,  <35.745037, 27.636135, 31.429939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161041, 28.004843, 31.069426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252693, 28.199085, 31.406872>,  <35.307682, 28.315632, 31.609339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252693, 28.199085, 31.406872>,  <35.161041, 28.004843, 31.069426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252693, 28.199085, 31.406872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261230, 0.804202, -0.533870,
		-0.937689, 0.342701, 0.057408,
		0.229126, 0.485607, 0.843615,
		35.321430, 28.344767, 31.659956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842381, 28.695894, 31.039927>,  <35.161041, 28.004843, 31.069426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842381, 28.695894, 31.039927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140511, 28.756290, 31.299679>,  <35.319389, 28.792528, 31.455530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140511, 28.756290, 31.299679>,  <34.842381, 28.695894, 31.039927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140511, 28.756290, 31.299679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223534, 0.861045, -0.456765,
		-0.628111, 0.485596, 0.608008,
		0.745325, 0.150988, 0.649379,
		35.364109, 28.801586, 31.494492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787117, 29.417637, 31.106577>,  <34.842381, 28.695894, 31.039927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787117, 29.417637, 31.106577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118813, 29.390545, 31.328487>,  <35.317829, 29.374289, 31.461634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118813, 29.390545, 31.328487>,  <34.787117, 29.417637, 31.106577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118813, 29.390545, 31.328487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320188, 0.871160, -0.372237,
		-0.458085, 0.486305, 0.744087,
		0.829239, -0.067731, 0.554775,
		35.367584, 29.370226, 31.494919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952011, 30.048660, 31.440784>,  <34.787117, 29.417637, 31.106577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952011, 30.048660, 31.440784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316963, 29.885147, 31.449375>,  <35.535934, 29.787039, 31.454531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316963, 29.885147, 31.449375>,  <34.952011, 30.048660, 31.440784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316963, 29.885147, 31.449375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407483, 0.901974, -0.142829,
		0.039013, 0.139067, 0.989514,
		0.912379, -0.408782, 0.021479,
		35.590675, 29.762512, 31.455818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394253, 30.452806, 31.913151>,  <34.952011, 30.048660, 31.440784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394253, 30.452806, 31.913151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616417, 30.265064, 31.638569>,  <35.749714, 30.152418, 31.473820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616417, 30.265064, 31.638569>,  <35.394253, 30.452806, 31.913151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616417, 30.265064, 31.638569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571041, 0.815353, -0.095459,
		0.604508, -0.338976, 0.720878,
		0.555412, -0.469356, -0.686456,
		35.783039, 30.124258, 31.432632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054951, 30.806665, 32.078686>,  <35.394253, 30.452806, 31.913151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054951, 30.806665, 32.078686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105289, 30.624538, 31.726128>,  <36.135494, 30.515263, 31.514593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105289, 30.624538, 31.726128>,  <36.054951, 30.806665, 32.078686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105289, 30.624538, 31.726128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473872, 0.808132, -0.349811,
		0.871555, -0.373644, 0.317462,
		0.125846, -0.455316, -0.881391,
		36.143044, 30.487944, 31.461710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793713, 30.884235, 31.834272>,  <36.054951, 30.806665, 32.078686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793713, 30.884235, 31.834272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550198, 30.832825, 31.521133>,  <36.404087, 30.801977, 31.333250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550198, 30.832825, 31.521133>,  <36.793713, 30.884235, 31.834272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550198, 30.832825, 31.521133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354606, 0.838637, -0.413451,
		0.709667, -0.529309, -0.464979,
		-0.608792, -0.128529, -0.782849,
		36.367561, 30.794266, 31.286278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161995, 31.124643, 31.250444>,  <36.793713, 30.884235, 31.834272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161995, 31.124643, 31.250444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794315, 31.108807, 31.093727>,  <36.573708, 31.099304, 30.999697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794315, 31.108807, 31.093727>,  <37.161995, 31.124643, 31.250444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794315, 31.108807, 31.093727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166001, 0.863250, -0.476700,
		0.357089, -0.503221, -0.786928,
		-0.919201, -0.039594, -0.391792,
		36.518555, 31.096928, 30.976189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270851, 31.238167, 30.608208>,  <37.161995, 31.124643, 31.250444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270851, 31.238167, 30.608208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879230, 31.315361, 30.634151>,  <36.644257, 31.361677, 30.649717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879230, 31.315361, 30.634151>,  <37.270851, 31.238167, 30.608208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879230, 31.315361, 30.634151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113394, 0.781479, -0.613541,
		-0.169089, -0.593337, -0.786995,
		-0.979056, 0.192984, 0.064859,
		36.585514, 31.373257, 30.653608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157993, 31.416405, 29.925800>,  <37.270851, 31.238167, 30.608208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157993, 31.416405, 29.925800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856506, 31.544746, 30.155224>,  <36.675613, 31.621752, 30.292877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856506, 31.544746, 30.155224>,  <37.157993, 31.416405, 29.925800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856506, 31.544746, 30.155224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091911, 0.812688, -0.575405,
		-0.650745, -0.486407, -0.583044,
		-0.753713, 0.320853, 0.573559,
		36.630394, 31.641003, 30.327291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589622, 31.583584, 29.449131>,  <37.157993, 31.416405, 29.925800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589622, 31.583584, 29.449131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525391, 31.793400, 29.783573>,  <36.486851, 31.919291, 29.984238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525391, 31.793400, 29.783573>,  <36.589622, 31.583584, 29.449131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525391, 31.793400, 29.783573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086290, 0.836393, -0.541296,
		-0.983244, -0.159068, -0.089045,
		-0.160579, 0.524542, 0.836104,
		36.477219, 31.950762, 30.034405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922684, 31.886265, 29.350508>,  <36.589622, 31.583584, 29.449131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922684, 31.886265, 29.350508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107777, 32.117855, 29.619034>,  <36.218830, 32.256809, 29.780149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107777, 32.117855, 29.619034>,  <35.922684, 31.886265, 29.350508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107777, 32.117855, 29.619034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297744, 0.814780, -0.497476,
		-0.835003, 0.030317, 0.549410,
		0.462730, 0.578977, 0.671317,
		36.246597, 32.291550, 29.820429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429138, 32.343857, 29.472935>,  <35.922684, 31.886265, 29.350508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429138, 32.343857, 29.472935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780369, 32.485664, 29.601490>,  <35.991108, 32.570751, 29.678623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780369, 32.485664, 29.601490>,  <35.429138, 32.343857, 29.472935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780369, 32.485664, 29.601490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094206, 0.786568, -0.610275,
		-0.469150, 0.505593, 0.724068,
		0.878079, 0.354522, 0.321389,
		36.043793, 32.592022, 29.697906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332428, 33.056313, 29.556793>,  <35.429138, 32.343857, 29.472935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332428, 33.056313, 29.556793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730808, 33.025280, 29.538647>,  <35.969837, 33.006660, 29.527760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730808, 33.025280, 29.538647>,  <35.332428, 33.056313, 29.556793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730808, 33.025280, 29.538647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041793, 0.846693, -0.530437,
		0.079563, 0.526395, 0.846509,
		0.995953, -0.077581, -0.045366,
		36.029594, 33.002007, 29.525038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585026, 33.770630, 29.599321>,  <35.332428, 33.056313, 29.556793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585026, 33.770630, 29.599321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891628, 33.560101, 29.452106>,  <36.075592, 33.433784, 29.363777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891628, 33.560101, 29.452106>,  <35.585026, 33.770630, 29.599321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891628, 33.560101, 29.452106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253400, 0.774413, -0.579718,
		0.590129, 0.351099, 0.726965,
		0.766509, -0.526321, -0.368035,
		36.121582, 33.402203, 29.341696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214775, 34.227051, 29.477964>,  <35.585026, 33.770630, 29.599321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214775, 34.227051, 29.477964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251987, 33.923492, 29.220150>,  <36.274315, 33.741356, 29.065462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.251987, 33.923492, 29.220150>,  <36.214775, 34.227051, 29.477964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251987, 33.923492, 29.220150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208192, 0.647859, -0.732758,
		0.973653, -0.066015, 0.218269,
		0.093034, -0.758894, -0.644534,
		36.279896, 33.695824, 29.026791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737083, 34.443848, 28.915565>,  <36.214775, 34.227051, 29.477964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737083, 34.443848, 28.915565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591743, 34.125641, 28.721607>,  <36.504539, 33.934715, 28.605232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591743, 34.125641, 28.721607>,  <36.737083, 34.443848, 28.915565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591743, 34.125641, 28.721607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164078, 0.457693, -0.873839,
		0.917092, -0.397067, -0.035773,
		-0.363346, -0.795522, -0.484897,
		36.482738, 33.886986, 28.576138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227341, 34.224850, 28.385365>,  <36.737083, 34.443848, 28.915565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227341, 34.224850, 28.385365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883003, 34.064999, 28.259357>,  <36.676399, 33.969086, 28.183754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883003, 34.064999, 28.259357>,  <37.227341, 34.224850, 28.385365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883003, 34.064999, 28.259357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183863, 0.332964, -0.924840,
		0.474485, -0.854066, -0.213153,
		-0.860847, -0.399632, -0.315018,
		36.624748, 33.945110, 28.164852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421520, 33.989937, 27.682062>,  <37.227341, 34.224850, 28.385365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421520, 33.989937, 27.682062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022812, 34.008266, 27.708412>,  <36.783585, 34.019264, 27.724222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022812, 34.008266, 27.708412>,  <37.421520, 33.989937, 27.682062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022812, 34.008266, 27.708412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049620, 0.293208, -0.954760,
		-0.063062, -0.954950, -0.289988,
		-0.996775, 0.045820, 0.065875,
		36.723778, 34.022011, 27.728174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172245, 33.694130, 27.095253>,  <37.421520, 33.989937, 27.682062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172245, 33.694130, 27.095253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855602, 33.912716, 27.204601>,  <36.665615, 34.043869, 27.270210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855602, 33.912716, 27.204601>,  <37.172245, 33.694130, 27.095253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855602, 33.912716, 27.204601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005905, 0.440528, -0.897720,
		-0.611002, -0.712255, -0.345498,
		-0.791607, 0.546468, 0.273369,
		36.618118, 34.076656, 27.286612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706608, 33.636032, 26.565849>,  <37.172245, 33.694130, 27.095253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706608, 33.636032, 26.565849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608105, 33.969330, 26.763866>,  <36.549004, 34.169308, 26.882677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608105, 33.969330, 26.763866>,  <36.706608, 33.636032, 26.565849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608105, 33.969330, 26.763866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262649, 0.434287, -0.861632,
		-0.932937, -0.342208, 0.111902,
		-0.246260, 0.833239, 0.495043,
		36.534225, 34.219303, 26.912380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982525, 33.776585, 26.345898>,  <36.706608, 33.636032, 26.565849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982525, 33.776585, 26.345898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160347, 34.119297, 26.450428>,  <36.267040, 34.324924, 26.513145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160347, 34.119297, 26.450428>,  <35.982525, 33.776585, 26.345898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160347, 34.119297, 26.450428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313357, 0.422055, -0.850692,
		-0.839154, 0.296290, 0.456106,
		0.444553, 0.856786, 0.261325,
		36.293713, 34.376331, 26.528826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482975, 34.337624, 26.121504>,  <35.982525, 33.776585, 26.345898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482975, 34.337624, 26.121504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829567, 34.532631, 26.164467>,  <36.037521, 34.649635, 26.190245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829567, 34.532631, 26.164467>,  <35.482975, 34.337624, 26.121504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829567, 34.532631, 26.164467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179211, 0.504586, -0.844557,
		-0.465931, 0.712545, 0.524584,
		0.866482, 0.487517, 0.107406,
		36.089512, 34.678886, 26.196690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241383, 35.051014, 26.116396>,  <35.482975, 34.337624, 26.121504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241383, 35.051014, 26.116396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622971, 35.023029, 25.999748>,  <35.851925, 35.006237, 25.929760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622971, 35.023029, 25.999748>,  <35.241383, 35.051014, 26.116396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622971, 35.023029, 25.999748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177539, 0.651938, -0.737195,
		0.241696, 0.755037, 0.609510,
		0.953972, -0.069965, -0.291620,
		35.909161, 35.002041, 25.912262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602058, 35.177658, 26.596687>,  <35.241383, 35.051014, 26.116396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602058, 35.177658, 26.596687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237831, 35.265366, 26.456528>,  <34.019295, 35.317989, 26.372431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237831, 35.265366, 26.456528>,  <34.602058, 35.177658, 26.596687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237831, 35.265366, 26.456528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410503, -0.380318, 0.828762,
		0.048461, 0.898486, 0.436318,
		-0.910571, 0.219272, -0.350401,
		33.964661, 35.331146, 26.351408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249958, 35.611893, 27.053385>,  <34.602058, 35.177658, 26.596687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249958, 35.611893, 27.053385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945187, 35.449940, 26.851181>,  <33.762325, 35.352768, 26.729858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945187, 35.449940, 26.851181>,  <34.249958, 35.611893, 27.053385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945187, 35.449940, 26.851181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406629, -0.308460, 0.859945,
		-0.504106, 0.860769, 0.070387,
		-0.761925, -0.404881, -0.505510,
		33.716610, 35.328476, 26.699528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705418, 35.660618, 27.507111>,  <34.249958, 35.611893, 27.053385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705418, 35.660618, 27.507111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552807, 35.393593, 27.251362>,  <33.461239, 35.233376, 27.097914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552807, 35.393593, 27.251362>,  <33.705418, 35.660618, 27.507111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552807, 35.393593, 27.251362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593152, -0.353693, 0.723237,
		-0.708948, 0.655179, -0.261023,
		-0.381528, -0.667564, -0.639371,
		33.438347, 35.193325, 27.059551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006115, 35.645855, 27.610317>,  <33.705418, 35.660618, 27.507111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006115, 35.645855, 27.610317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084557, 35.286030, 27.454197>,  <33.131622, 35.070133, 27.360525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084557, 35.286030, 27.454197>,  <33.006115, 35.645855, 27.610317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084557, 35.286030, 27.454197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598872, -0.425042, 0.678743,
		-0.776465, 0.100638, -0.622073,
		0.196100, -0.899561, -0.390299,
		33.143387, 35.016163, 27.337107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318470, 35.316685, 27.606892>,  <33.006115, 35.645855, 27.610317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318470, 35.316685, 27.606892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584064, 35.022991, 27.550297>,  <32.743420, 34.846775, 27.516340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584064, 35.022991, 27.550297>,  <32.318470, 35.316685, 27.606892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584064, 35.022991, 27.550297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498209, -0.575507, 0.648521,
		-0.557595, -0.360119, -0.747932,
		0.663984, -0.734239, -0.141486,
		32.783260, 34.802719, 27.507851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968651, 34.697628, 27.395893>,  <32.318470, 35.316685, 27.606892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968651, 34.697628, 27.395893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309990, 34.582966, 27.570076>,  <32.514793, 34.514168, 27.674585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309990, 34.582966, 27.570076>,  <31.968651, 34.697628, 27.395893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309990, 34.582966, 27.570076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518403, -0.555093, 0.650484,
		0.055252, -0.780832, -0.622293,
		0.853350, -0.286658, 0.435456,
		32.565994, 34.496967, 27.700712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867598, 34.080921, 27.423115>,  <31.968651, 34.697628, 27.395893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867598, 34.080921, 27.423115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158764, 34.150822, 27.688324>,  <32.333462, 34.192760, 27.847450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158764, 34.150822, 27.688324>,  <31.867598, 34.080921, 27.423115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158764, 34.150822, 27.688324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442245, -0.619304, 0.648754,
		0.523985, -0.765457, -0.373518,
		0.727915, 0.174751, 0.663026,
		32.377140, 34.203247, 27.887232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765099, 33.545616, 27.814447>,  <31.867598, 34.080921, 27.423115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765099, 33.545616, 27.814447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021130, 33.742729, 28.050232>,  <32.174747, 33.860996, 28.191702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021130, 33.742729, 28.050232>,  <31.765099, 33.545616, 27.814447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021130, 33.742729, 28.050232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239026, -0.601421, 0.762338,
		0.730183, -0.628852, -0.267168,
		0.640078, 0.492786, 0.589459,
		32.213154, 33.890564, 28.227070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986773, 33.027111, 28.201933>,  <31.765099, 33.545616, 27.814447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986773, 33.027111, 28.201933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068745, 33.368259, 28.394020>,  <32.117928, 33.572948, 28.509272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068745, 33.368259, 28.394020>,  <31.986773, 33.027111, 28.201933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068745, 33.368259, 28.394020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091669, -0.471749, 0.876955,
		0.974474, -0.223736, -0.018494,
		0.204931, 0.852875, 0.480217,
		32.130222, 33.624123, 28.538086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559471, 32.838940, 28.532511>,  <31.986773, 33.027111, 28.201933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559471, 32.838940, 28.532511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405281, 33.154568, 28.723831>,  <32.312767, 33.343945, 28.838623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405281, 33.154568, 28.723831>,  <32.559471, 32.838940, 28.532511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405281, 33.154568, 28.723831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004046, -0.519802, 0.854277,
		0.922709, 0.327369, 0.203564,
		-0.385477, 0.789073, 0.478301,
		32.289639, 33.391289, 28.867321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007153, 33.062595, 28.983404>,  <32.559471, 32.838940, 28.532511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007153, 33.062595, 28.983404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655373, 33.191463, 29.123558>,  <32.444305, 33.268784, 29.207651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655373, 33.191463, 29.123558>,  <33.007153, 33.062595, 28.983404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655373, 33.191463, 29.123558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059163, -0.656432, 0.752061,
		0.472295, 0.682132, 0.558241,
		-0.879453, 0.322168, 0.350387,
		32.391537, 33.288113, 29.228674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145195, 33.256969, 29.761564>,  <33.007153, 33.062595, 28.983404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145195, 33.256969, 29.761564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750946, 33.204739, 29.718678>,  <32.514397, 33.173401, 29.692945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750946, 33.204739, 29.718678>,  <33.145195, 33.256969, 29.761564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750946, 33.204739, 29.718678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013191, -0.573170, 0.819331,
		-0.168440, 0.808966, 0.563207,
		-0.985624, -0.130579, -0.107216,
		32.455257, 33.165565, 29.686512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856506, 33.259567, 30.442747>,  <33.145195, 33.256969, 29.761564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856506, 33.259567, 30.442747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578960, 33.072933, 30.223347>,  <32.412434, 32.960953, 30.091707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578960, 33.072933, 30.223347>,  <32.856506, 33.259567, 30.442747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578960, 33.072933, 30.223347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053804, -0.793152, 0.606642,
		-0.718097, 0.391413, 0.575441,
		-0.693860, -0.466589, -0.548501,
		32.370804, 32.932957, 30.058796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351517, 32.954144, 30.931858>,  <32.856506, 33.259567, 30.442747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351517, 32.954144, 30.931858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325153, 32.768028, 30.578777>,  <32.309334, 32.656357, 30.366930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325153, 32.768028, 30.578777>,  <32.351517, 32.954144, 30.931858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325153, 32.768028, 30.578777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024983, -0.883577, 0.467619,
		-0.997513, 0.052873, 0.046611,
		-0.065909, -0.465292, -0.882700,
		32.305382, 32.628441, 30.313967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073261, 32.353035, 31.251051>,  <32.351517, 32.954144, 30.931858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073261, 32.353035, 31.251051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184937, 32.261803, 30.877949>,  <32.251942, 32.207062, 30.654087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184937, 32.261803, 30.877949>,  <32.073261, 32.353035, 31.251051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184937, 32.261803, 30.877949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233703, -0.926032, 0.296392,
		-0.931362, -0.300738, -0.205236,
		0.279192, -0.228084, -0.932754,
		32.268692, 32.193378, 30.598122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668970, 31.706068, 31.168549>,  <32.073261, 32.353035, 31.251051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668970, 31.706068, 31.168549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971510, 31.738556, 30.908905>,  <32.153034, 31.758049, 30.753119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971510, 31.738556, 30.908905>,  <31.668970, 31.706068, 31.168549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971510, 31.738556, 30.908905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189093, -0.977049, 0.098081,
		-0.626245, -0.196926, -0.754346,
		0.756348, 0.081219, -0.649109,
		32.198414, 31.762922, 30.714172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638212, 31.119476, 30.790743>,  <31.668970, 31.706068, 31.168549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638212, 31.119476, 30.790743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008522, 31.257385, 30.728680>,  <32.230709, 31.340132, 30.691441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008522, 31.257385, 30.728680>,  <31.638212, 31.119476, 30.790743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008522, 31.257385, 30.728680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363007, -0.925286, 0.109868,
		-0.105687, -0.158037, -0.981761,
		0.925773, 0.344774, -0.155160,
		32.286255, 31.360817, 30.682131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982849, 30.599150, 30.304853>,  <31.638212, 31.119476, 30.790743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982849, 30.599150, 30.304853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292583, 30.779690, 30.482254>,  <32.478424, 30.888014, 30.588694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292583, 30.779690, 30.482254>,  <31.982849, 30.599150, 30.304853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292583, 30.779690, 30.482254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358189, -0.890423, 0.280798,
		0.521640, -0.058575, -0.851153,
		0.774333, 0.451349, 0.443499,
		32.524883, 30.915094, 30.615303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642902, 30.240316, 30.139639>,  <31.982849, 30.599150, 30.304853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642902, 30.240316, 30.139639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683460, 30.433422, 30.487583>,  <32.707794, 30.549286, 30.696350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683460, 30.433422, 30.487583>,  <32.642902, 30.240316, 30.139639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683460, 30.433422, 30.487583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458609, -0.798603, 0.389758,
		0.882835, 0.359407, -0.302373,
		0.101394, 0.482763, 0.869862,
		32.713879, 30.578251, 30.748541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252800, 30.002119, 30.336567>,  <32.642902, 30.240316, 30.139639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252800, 30.002119, 30.336567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091507, 30.156456, 30.668476>,  <32.994728, 30.249058, 30.867622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091507, 30.156456, 30.668476>,  <33.252800, 30.002119, 30.336567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091507, 30.156456, 30.668476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303809, -0.798886, 0.519116,
		0.863192, 0.461420, 0.204919,
		-0.403237, 0.385841, 0.829775,
		32.970535, 30.272207, 30.917408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679527, 29.820185, 30.902958>,  <33.252800, 30.002119, 30.336567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679527, 29.820185, 30.902958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372540, 29.935299, 31.132103>,  <33.188347, 30.004368, 31.269590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372540, 29.935299, 31.132103>,  <33.679527, 29.820185, 30.902958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372540, 29.935299, 31.132103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238370, -0.701416, 0.671710,
		0.595126, 0.652069, 0.469714,
		-0.767467, 0.287786, 0.572865,
		33.142300, 30.021635, 31.303963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918316, 29.885227, 31.560564>,  <33.679527, 29.820185, 30.902958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918316, 29.885227, 31.560564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524124, 29.820637, 31.581528>,  <33.287609, 29.781881, 31.594105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524124, 29.820637, 31.581528>,  <33.918316, 29.885227, 31.560564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524124, 29.820637, 31.581528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159219, -0.771964, 0.615404,
		-0.058917, 0.614815, 0.786468,
		-0.985484, -0.161478, 0.052408,
		33.228477, 29.772194, 31.597250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855030, 29.793861, 32.332253>,  <33.918316, 29.885227, 31.560564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855030, 29.793861, 32.332253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542164, 29.648365, 32.129902>,  <33.354443, 29.561068, 32.008492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542164, 29.648365, 32.129902>,  <33.855030, 29.793861, 32.332253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542164, 29.648365, 32.129902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033925, -0.785840, 0.617499,
		-0.622146, 0.500148, 0.602317,
		-0.782166, -0.363741, -0.505875,
		33.307514, 29.539242, 31.978140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316448, 29.668253, 32.781815>,  <33.855030, 29.793861, 32.332253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316448, 29.668253, 32.781815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244869, 29.409863, 32.484978>,  <33.201923, 29.254829, 32.306877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244869, 29.409863, 32.484978>,  <33.316448, 29.668253, 32.781815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244869, 29.409863, 32.484978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075116, -0.743091, 0.664962,
		-0.980987, 0.174736, 0.084452,
		-0.178948, -0.645975, -0.742087,
		33.191185, 29.216070, 32.262352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718140, 29.208254, 33.085354>,  <33.316448, 29.668253, 32.781815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718140, 29.208254, 33.085354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864799, 29.010952, 32.769817>,  <32.952797, 28.892570, 32.580498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864799, 29.010952, 32.769817>,  <32.718140, 29.208254, 33.085354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864799, 29.010952, 32.769817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374487, -0.854411, 0.360197,
		-0.851662, 0.163343, -0.497987,
		0.366650, -0.493256, -0.788839,
		32.974796, 28.862976, 32.533165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065735, 28.790792, 32.748669>,  <32.718140, 29.208254, 33.085354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065735, 28.790792, 32.748669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401844, 28.602978, 32.640240>,  <32.603508, 28.490290, 32.575184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401844, 28.602978, 32.640240>,  <32.065735, 28.790792, 32.748669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401844, 28.602978, 32.640240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365653, -0.859942, 0.356087,
		-0.400300, -0.200092, -0.894272,
		0.840273, -0.469535, -0.271070,
		32.653927, 28.462118, 32.558918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758133, 28.158028, 32.518856>,  <32.065735, 28.790792, 32.748669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758133, 28.158028, 32.518856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144520, 28.080048, 32.586864>,  <32.376350, 28.033260, 32.627670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144520, 28.080048, 32.586864>,  <31.758133, 28.158028, 32.518856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144520, 28.080048, 32.586864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239966, -0.920759, 0.307602,
		0.096581, -0.337931, -0.936202,
		0.965965, -0.194948, 0.170020,
		32.434311, 28.021563, 32.637871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914383, 27.433517, 32.288761>,  <31.758133, 28.158028, 32.518856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914383, 27.433517, 32.288761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225376, 27.490219, 32.533848>,  <32.411972, 27.524240, 32.680901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225376, 27.490219, 32.533848>,  <31.914383, 27.433517, 32.288761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225376, 27.490219, 32.533848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188672, -0.876818, 0.442259,
		0.599935, -0.459452, -0.654967,
		0.777484, 0.141752, 0.612719,
		32.458622, 27.532745, 32.717663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291939, 26.824774, 32.220623>,  <31.914383, 27.433517, 32.288761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291939, 26.824774, 32.220623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425335, 26.964378, 32.570930>,  <32.505375, 27.048141, 32.781116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425335, 26.964378, 32.570930>,  <32.291939, 26.824774, 32.220623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425335, 26.964378, 32.570930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038579, -0.923119, 0.382574,
		0.941962, -0.161373, -0.294391,
		0.333495, 0.349013, 0.875769,
		32.525383, 27.069082, 32.833660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777050, 26.325674, 32.496258>,  <32.291939, 26.824774, 32.220623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777050, 26.325674, 32.496258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695728, 26.546379, 32.819794>,  <32.646935, 26.678802, 33.013916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695728, 26.546379, 32.819794>,  <32.777050, 26.325674, 32.496258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695728, 26.546379, 32.819794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196450, -0.832282, 0.518376,
		0.959206, -0.053511, 0.277598,
		-0.203301, 0.551764, 0.808842,
		32.634739, 26.711908, 33.062447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218620, 26.089754, 33.110256>,  <32.777050, 26.325674, 32.496258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218620, 26.089754, 33.110256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900970, 26.274765, 33.267952>,  <32.710381, 26.385773, 33.362572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900970, 26.274765, 33.267952>,  <33.218620, 26.089754, 33.110256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900970, 26.274765, 33.267952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142908, -0.772618, 0.618578,
		0.590710, 0.434890, 0.679657,
		-0.794128, 0.462529, 0.394244,
		32.662731, 26.413523, 33.386227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221680, 26.039301, 33.897976>,  <33.218620, 26.089754, 33.110256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221680, 26.039301, 33.897976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834778, 26.112595, 33.827724>,  <32.602638, 26.156570, 33.785572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834778, 26.112595, 33.827724>,  <33.221680, 26.039301, 33.897976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834778, 26.112595, 33.827724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253491, -0.662550, 0.704819,
		0.012781, 0.726260, 0.687301,
		-0.967253, 0.183233, -0.175632,
		32.544601, 26.167564, 33.775036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974457, 26.001606, 34.554504>,  <33.221680, 26.039301, 33.897976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974457, 26.001606, 34.554504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662746, 25.970985, 34.305710>,  <32.475719, 25.952614, 34.156433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662746, 25.970985, 34.305710>,  <32.974457, 26.001606, 34.554504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662746, 25.970985, 34.305710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366094, -0.749934, 0.550976,
		-0.508625, 0.657068, 0.556383,
		-0.779279, -0.076552, -0.621983,
		32.428963, 25.948019, 34.119114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505253, 25.941666, 35.000763>,  <32.974457, 26.001606, 34.554504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505253, 25.941666, 35.000763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366535, 25.792999, 34.656300>,  <32.283302, 25.703798, 34.449623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366535, 25.792999, 34.656300>,  <32.505253, 25.941666, 35.000763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366535, 25.792999, 34.656300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431618, -0.751910, 0.498334,
		-0.832729, 0.544512, 0.100342,
		-0.346797, -0.371668, -0.861159,
		32.262497, 25.681499, 34.397953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829374, 25.744144, 35.143276>,  <32.505253, 25.941666, 35.000763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829374, 25.744144, 35.143276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911768, 25.541992, 34.808098>,  <31.961205, 25.420700, 34.606991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911768, 25.541992, 34.808098>,  <31.829374, 25.744144, 35.143276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911768, 25.541992, 34.808098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412745, -0.821285, 0.393869,
		-0.887249, 0.264728, -0.377767,
		0.205987, -0.505382, -0.837949,
		31.973564, 25.390377, 34.556713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229841, 25.437954, 34.936516>,  <31.829374, 25.744144, 35.143276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229841, 25.437954, 34.936516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527481, 25.228683, 34.770332>,  <31.706064, 25.103121, 34.670624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527481, 25.228683, 34.770332>,  <31.229841, 25.437954, 34.936516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527481, 25.228683, 34.770332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413475, -0.849107, 0.328717,
		-0.524745, -0.072817, -0.848140,
		0.744098, -0.523177, -0.415457,
		31.750710, 25.071730, 34.645695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921246, 24.832371, 34.631809>,  <31.229841, 25.437954, 34.936516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921246, 24.832371, 34.631809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307276, 24.746788, 34.692272>,  <31.538895, 24.695438, 34.728550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307276, 24.746788, 34.692272>,  <30.921246, 24.832371, 34.631809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307276, 24.746788, 34.692272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258929, -0.866711, 0.426343,
		0.039794, -0.450593, -0.891842,
		0.965076, -0.213958, 0.151162,
		31.596798, 24.682600, 34.737621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050280, 24.111982, 34.404816>,  <30.921246, 24.832371, 34.631809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050280, 24.111982, 34.404816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344402, 24.191959, 34.663845>,  <31.520876, 24.239946, 34.819263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344402, 24.191959, 34.663845>,  <31.050280, 24.111982, 34.404816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344402, 24.191959, 34.663845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097553, -0.914319, 0.393071,
		0.670679, -0.352199, -0.652798,
		0.735305, 0.199942, 0.647572,
		31.564993, 24.251942, 34.858116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475273, 23.750797, 34.113934>,  <31.050280, 24.111982, 34.404816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475273, 23.750797, 34.113934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240456, 23.511044, 33.896267>,  <30.099566, 23.367191, 33.765667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240456, 23.511044, 33.896267>,  <30.475273, 23.750797, 34.113934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240456, 23.511044, 33.896267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070306, 0.707386, -0.703322,
		0.806497, -0.374622, -0.457407,
		-0.587043, -0.599386, -0.544167,
		30.064342, 23.331228, 33.733017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678720, 23.775606, 33.390385>,  <30.475273, 23.750797, 34.113934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678720, 23.775606, 33.390385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294714, 23.663845, 33.383442>,  <30.064310, 23.596788, 33.379276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294714, 23.663845, 33.383442>,  <30.678720, 23.775606, 33.390385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294714, 23.663845, 33.383442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203128, 0.737927, -0.643585,
		0.192628, -0.614327, -0.765177,
		-0.960018, -0.279402, -0.017358,
		30.006708, 23.580025, 33.378235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533089, 23.722729, 32.740219>,  <30.678720, 23.775606, 33.390385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533089, 23.722729, 32.740219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171593, 23.762997, 32.906651>,  <29.954695, 23.787157, 33.006508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171593, 23.762997, 32.906651>,  <30.533089, 23.722729, 32.740219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171593, 23.762997, 32.906651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257145, 0.649399, -0.715652,
		-0.342245, -0.753755, -0.561001,
		-0.903740, 0.100669, 0.416077,
		29.900471, 23.793198, 33.031475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183641, 23.828674, 32.175816>,  <30.533089, 23.722729, 32.740219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183641, 23.828674, 32.175816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958965, 23.962963, 32.478283>,  <29.824160, 24.043535, 32.659763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958965, 23.962963, 32.478283>,  <30.183641, 23.828674, 32.175816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958965, 23.962963, 32.478283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129838, 0.866878, -0.481316,
		-0.817095, -0.368531, -0.443329,
		-0.561692, 0.335720, 0.756171,
		29.790457, 24.063679, 32.705135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731075, 24.201550, 31.803059>,  <30.183641, 23.828674, 32.175816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731075, 24.201550, 31.803059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702316, 24.320168, 32.183983>,  <29.685061, 24.391338, 32.412537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702316, 24.320168, 32.183983>,  <29.731075, 24.201550, 31.803059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702316, 24.320168, 32.183983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258729, 0.916552, -0.304944,
		-0.963270, -0.268315, 0.010825,
		-0.071900, 0.296544, 0.952309,
		29.680746, 24.409130, 32.469677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101709, 24.669899, 31.867384>,  <29.731075, 24.201550, 31.803059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101709, 24.669899, 31.867384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351915, 24.761131, 32.165836>,  <29.502039, 24.815870, 32.344906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351915, 24.761131, 32.165836>,  <29.101709, 24.669899, 31.867384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351915, 24.761131, 32.165836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045922, 0.965422, -0.256615,
		-0.778859, 0.126252, 0.614360,
		0.625515, 0.228080, 0.746130,
		29.539570, 24.829556, 32.389675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805679, 25.332310, 32.147839>,  <29.101709, 24.669899, 31.867384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805679, 25.332310, 32.147839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171976, 25.297470, 32.304726>,  <29.391754, 25.276567, 32.398857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171976, 25.297470, 32.304726>,  <28.805679, 25.332310, 32.147839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171976, 25.297470, 32.304726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121035, 0.990673, -0.062598,
		-0.383105, 0.104796, 0.917741,
		0.915741, -0.087097, 0.392215,
		29.446699, 25.271341, 32.422390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816198, 25.746498, 32.678162>,  <28.805679, 25.332310, 32.147839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816198, 25.746498, 32.678162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195915, 25.725269, 32.554211>,  <29.423746, 25.712532, 32.479839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195915, 25.725269, 32.554211>,  <28.816198, 25.746498, 32.678162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195915, 25.725269, 32.554211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046185, 0.998497, -0.029526,
		0.310978, 0.013717, 0.950318,
		0.949294, -0.053072, -0.309877,
		29.480703, 25.709349, 32.461246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050978, 26.448343, 32.726776>,  <28.816198, 25.746498, 32.678162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050978, 26.448343, 32.726776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376041, 26.298805, 32.547970>,  <29.571079, 26.209084, 32.440685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376041, 26.298805, 32.547970>,  <29.050978, 26.448343, 32.726776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376041, 26.298805, 32.547970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244491, 0.915052, -0.320787,
		0.528970, 0.151398, 0.835026,
		0.812659, -0.373843, -0.447020,
		29.619839, 26.186653, 32.413864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588762, 26.850471, 33.028938>,  <29.050978, 26.448343, 32.726776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588762, 26.850471, 33.028938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691406, 26.672039, 32.685970>,  <29.752993, 26.564980, 32.480190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.691406, 26.672039, 32.685970>,  <29.588762, 26.850471, 33.028938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691406, 26.672039, 32.685970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189700, 0.893113, -0.407877,
		0.947716, -0.057987, 0.313804,
		0.256611, -0.446080, -0.857417,
		29.768389, 26.538216, 32.428745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116600, 27.330011, 32.755291>,  <29.588762, 26.850471, 33.028938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116600, 27.330011, 32.755291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999819, 27.086311, 32.460381>,  <29.929750, 26.940090, 32.283436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999819, 27.086311, 32.460381>,  <30.116600, 27.330011, 32.755291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999819, 27.086311, 32.460381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191901, 0.717870, -0.669206,
		0.936983, -0.336860, -0.092668,
		-0.291952, -0.609252, -0.737276,
		29.912233, 26.903536, 32.239197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666779, 27.296522, 32.221790>,  <30.116600, 27.330011, 32.755291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666779, 27.296522, 32.221790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303114, 27.237587, 32.065987>,  <30.084915, 27.202227, 31.972504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303114, 27.237587, 32.065987>,  <30.666779, 27.296522, 32.221790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303114, 27.237587, 32.065987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233731, 0.593579, -0.770087,
		0.344668, -0.791174, -0.505221,
		-0.909161, -0.147338, -0.389509,
		30.030365, 27.193386, 31.949133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621359, 27.136099, 31.417545>,  <30.666779, 27.296522, 32.221790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621359, 27.136099, 31.417545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257597, 27.295227, 31.466084>,  <30.039341, 27.390703, 31.495207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257597, 27.295227, 31.466084>,  <30.621359, 27.136099, 31.417545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257597, 27.295227, 31.466084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121964, 0.534001, -0.836641,
		-0.397631, -0.746044, -0.534142,
		-0.909403, 0.397820, 0.121345,
		29.984776, 27.414574, 31.502487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415239, 27.191544, 30.762880>,  <30.621359, 27.136099, 31.417545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415239, 27.191544, 30.762880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196810, 27.445110, 30.981953>,  <30.065752, 27.597250, 31.113396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196810, 27.445110, 30.981953>,  <30.415239, 27.191544, 30.762880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196810, 27.445110, 30.981953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187219, 0.729571, -0.657781,
		-0.816551, -0.256660, -0.517079,
		-0.546072, 0.633919, 0.547680,
		30.032988, 27.635286, 31.146257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179680, 27.635641, 30.296911>,  <30.415239, 27.191544, 30.762880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179680, 27.635641, 30.296911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071676, 27.827225, 30.631023>,  <30.006874, 27.942175, 30.831491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071676, 27.827225, 30.631023>,  <30.179680, 27.635641, 30.296911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071676, 27.827225, 30.631023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096272, 0.876584, -0.471520,
		-0.958033, -0.046899, -0.282794,
		-0.270007, 0.478958, 0.835282,
		29.990675, 27.970913, 30.881607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621164, 27.928690, 30.097679>,  <30.179680, 27.635641, 30.296911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621164, 27.928690, 30.097679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752228, 28.134155, 30.414864>,  <29.830866, 28.257435, 30.605175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752228, 28.134155, 30.414864>,  <29.621164, 27.928690, 30.097679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752228, 28.134155, 30.414864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026764, 0.844004, -0.535669,
		-0.944417, 0.154294, 0.290294,
		0.327660, 0.513664, 0.792962,
		29.850525, 28.288254, 30.652752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250084, 28.525368, 30.039152>,  <29.621164, 27.928690, 30.097679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250084, 28.525368, 30.039152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542885, 28.664921, 30.273232>,  <29.718565, 28.748652, 30.413679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.542885, 28.664921, 30.273232>,  <29.250084, 28.525368, 30.039152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542885, 28.664921, 30.273232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069568, 0.816174, -0.573603,
		-0.677743, 0.460589, 0.573169,
		0.732001, 0.348881, 0.585198,
		29.762486, 28.769585, 30.448792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072685, 29.196003, 30.242258>,  <29.250084, 28.525368, 30.039152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072685, 29.196003, 30.242258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468491, 29.172398, 30.294987>,  <29.705975, 29.158234, 30.326624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468491, 29.172398, 30.294987>,  <29.072685, 29.196003, 30.242258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468491, 29.172398, 30.294987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105467, 0.918817, -0.380331,
		-0.098675, 0.390247, 0.915407,
		0.989515, -0.059016, 0.131823,
		29.765345, 29.154694, 30.334534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303854, 29.890808, 30.535261>,  <29.072685, 29.196003, 30.242258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303854, 29.890808, 30.535261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629120, 29.707687, 30.391495>,  <29.824280, 29.597815, 30.305235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629120, 29.707687, 30.391495>,  <29.303854, 29.890808, 30.535261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629120, 29.707687, 30.391495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208568, 0.805706, -0.554379,
		0.543378, 0.375840, 0.750656,
		0.813167, -0.457801, -0.359414,
		29.873070, 29.570347, 30.283670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905870, 30.279110, 30.804651>,  <29.303854, 29.890808, 30.535261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905870, 30.279110, 30.804651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009315, 30.078491, 30.474422>,  <30.071383, 29.958120, 30.276285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009315, 30.078491, 30.474422>,  <29.905870, 30.279110, 30.804651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009315, 30.078491, 30.474422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364918, 0.842042, -0.397242,
		0.894402, -0.198535, 0.400785,
		0.258612, -0.501548, -0.825573,
		30.086899, 29.928026, 30.226751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429735, 30.700689, 30.615452>,  <29.905870, 30.279110, 30.804651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429735, 30.700689, 30.615452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357336, 30.478542, 30.290783>,  <30.313896, 30.345255, 30.095982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357336, 30.478542, 30.290783>,  <30.429735, 30.700689, 30.615452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357336, 30.478542, 30.290783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437482, 0.693688, -0.572194,
		0.880823, -0.458656, 0.117408,
		-0.180996, -0.555366, -0.811670,
		30.303038, 30.311932, 30.047281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044676, 30.927799, 30.118153>,  <30.429735, 30.700689, 30.615452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044676, 30.927799, 30.118153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745287, 30.759953, 29.912739>,  <30.565655, 30.659245, 29.789492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745287, 30.759953, 29.912739>,  <31.044676, 30.927799, 30.118153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745287, 30.759953, 29.912739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145172, 0.651909, -0.744271,
		0.647073, -0.631622, -0.427026,
		-0.748479, -0.419606, -0.513526,
		30.520746, 30.634068, 29.758678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346180, 30.625479, 29.478500>,  <31.044676, 30.927799, 30.118153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346180, 30.625479, 29.478500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959284, 30.700981, 29.410603>,  <30.727146, 30.746283, 29.369864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959284, 30.700981, 29.410603>,  <31.346180, 30.625479, 29.478500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959284, 30.700981, 29.410603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253324, 0.674472, -0.693480,
		-0.016414, -0.713763, -0.700195,
		-0.967242, 0.188759, -0.169743,
		30.669111, 30.757608, 29.359680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250473, 30.645958, 28.752188>,  <31.346180, 30.625479, 29.478500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250473, 30.645958, 28.752188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908171, 30.819241, 28.865337>,  <30.702789, 30.923210, 28.933228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908171, 30.819241, 28.865337>,  <31.250473, 30.645958, 28.752188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908171, 30.819241, 28.865337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068080, 0.636271, -0.768456,
		-0.512884, -0.638351, -0.573985,
		-0.855754, 0.433205, 0.282874,
		30.651443, 30.949202, 28.950199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911518, 30.798483, 28.075584>,  <31.250473, 30.645958, 28.752188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911518, 30.798483, 28.075584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730274, 31.023346, 28.352329>,  <30.621529, 31.158264, 28.518375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730274, 31.023346, 28.352329>,  <30.911518, 30.798483, 28.075584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730274, 31.023346, 28.352329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079519, 0.747521, -0.659461,
		-0.887902, -0.353824, -0.294006,
		-0.453109, 0.562157, 0.691861,
		30.594341, 31.191994, 28.559887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451309, 31.179913, 27.728344>,  <30.911518, 30.798483, 28.075584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451309, 31.179913, 27.728344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459129, 31.406429, 28.057934>,  <30.463821, 31.542339, 28.255688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459129, 31.406429, 28.057934>,  <30.451309, 31.179913, 27.728344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459129, 31.406429, 28.057934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176333, 0.813165, -0.554680,
		-0.984136, -0.134449, 0.115754,
		0.019551, 0.566292, 0.823973,
		30.464994, 31.576317, 28.305126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752138, 31.463474, 27.819386>,  <30.451309, 31.179913, 27.728344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752138, 31.463474, 27.819386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026661, 31.693092, 27.998028>,  <30.191374, 31.830862, 28.105213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026661, 31.693092, 27.998028>,  <29.752138, 31.463474, 27.819386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026661, 31.693092, 27.998028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365664, 0.803137, -0.470384,
		-0.628706, 0.159520, 0.761106,
		0.686307, 0.574043, 0.446606,
		30.232553, 31.865305, 28.132010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361834, 32.049911, 27.841505>,  <29.752138, 31.463474, 27.819386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361834, 32.049911, 27.841505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733109, 32.160442, 27.941193>,  <29.955873, 32.226761, 28.001005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733109, 32.160442, 27.941193>,  <29.361834, 32.049911, 27.841505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733109, 32.160442, 27.941193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120660, 0.857058, -0.500892,
		-0.352004, 0.434852, 0.828853,
		0.928189, 0.276325, 0.249218,
		30.011566, 32.243340, 28.015959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403906, 32.738903, 28.247747>,  <29.361834, 32.049911, 27.841505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403906, 32.738903, 28.247747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744532, 32.691639, 28.043442>,  <29.948906, 32.663280, 27.920858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744532, 32.691639, 28.043442>,  <29.403906, 32.738903, 28.247747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744532, 32.691639, 28.043442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233842, 0.786369, -0.571788,
		0.469212, 0.606351, 0.642011,
		0.851562, -0.118161, -0.510764,
		30.000000, 32.656189, 27.890213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652512, 33.442055, 28.132385>,  <29.403906, 32.738903, 28.247747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652512, 33.442055, 28.132385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863611, 33.228977, 27.867744>,  <29.990271, 33.101131, 27.708960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863611, 33.228977, 27.867744>,  <29.652512, 33.442055, 28.132385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863611, 33.228977, 27.867744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186828, 0.687032, -0.702198,
		0.828600, 0.494189, 0.263058,
		0.527748, -0.532695, -0.661603,
		30.021936, 33.069168, 27.669264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042013, 33.926247, 27.814262>,  <29.652512, 33.442055, 28.132385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042013, 33.926247, 27.814262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029282, 33.617977, 27.559689>,  <30.021643, 33.433014, 27.406944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029282, 33.617977, 27.559689>,  <30.042013, 33.926247, 27.814262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029282, 33.617977, 27.559689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259785, 0.621250, -0.739297,
		0.965142, 0.141803, -0.219985,
		-0.031831, -0.770675, -0.636433,
		30.019732, 33.386776, 27.368759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467726, 34.104031, 27.257069>,  <30.042013, 33.926247, 27.814262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467726, 34.104031, 27.257069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204153, 33.834652, 27.123039>,  <30.046009, 33.673023, 27.042622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204153, 33.834652, 27.123039>,  <30.467726, 34.104031, 27.257069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204153, 33.834652, 27.123039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322976, 0.655609, -0.682542,
		0.679336, -0.341527, -0.649509,
		-0.658930, -0.673451, -0.335074,
		30.006474, 33.632618, 27.022518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613804, 34.043507, 26.628254>,  <30.467726, 34.104031, 27.257069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613804, 34.043507, 26.628254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251616, 33.874336, 26.614067>,  <30.034304, 33.772835, 26.605555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251616, 33.874336, 26.614067>,  <30.613804, 34.043507, 26.628254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251616, 33.874336, 26.614067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232320, 0.563848, -0.792530,
		0.355179, -0.709372, -0.608801,
		-0.905470, -0.422926, -0.035466,
		29.979975, 33.747459, 26.603428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534590, 34.014553, 25.976288>,  <30.613804, 34.043507, 26.628254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534590, 34.014553, 25.976288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163858, 33.977749, 26.121902>,  <29.941420, 33.955666, 26.209270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163858, 33.977749, 26.121902>,  <30.534590, 34.014553, 25.976288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163858, 33.977749, 26.121902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365365, 0.444547, -0.817855,
		-0.086578, -0.891017, -0.445637,
		-0.926829, -0.092012, 0.364035,
		29.885809, 33.950146, 26.231113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101179, 33.597401, 25.518375>,  <30.534590, 34.014553, 25.976288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101179, 33.597401, 25.518375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853210, 33.822372, 25.737236>,  <29.704430, 33.957355, 25.868553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.853210, 33.822372, 25.737236>,  <30.101179, 33.597401, 25.518375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853210, 33.822372, 25.737236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362857, 0.412789, -0.835428,
		-0.695725, -0.716437, -0.051817,
		-0.619921, 0.562426, 0.547152,
		29.667234, 33.991100, 25.901381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416454, 33.441513, 25.282099>,  <30.101179, 33.597401, 25.518375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416454, 33.441513, 25.282099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399042, 33.805874, 25.446224>,  <29.388596, 34.024490, 25.544699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399042, 33.805874, 25.446224>,  <29.416454, 33.441513, 25.282099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399042, 33.805874, 25.446224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539990, 0.324089, -0.776773,
		-0.840545, -0.255378, 0.477772,
		-0.043529, 0.910906, 0.410313,
		29.385983, 34.079147, 25.569319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806122, 33.682312, 25.055882>,  <29.416454, 33.441513, 25.282099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806122, 33.682312, 25.055882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977579, 34.015461, 25.195934>,  <29.080454, 34.215351, 25.279966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977579, 34.015461, 25.195934>,  <28.806122, 33.682312, 25.055882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977579, 34.015461, 25.195934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536774, 0.546492, -0.642822,
		-0.726732, 0.087599, 0.681312,
		0.428642, 0.832870, 0.350132,
		29.106173, 34.265324, 25.300974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212194, 34.146107, 25.167839>,  <28.806122, 33.682312, 25.055882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212194, 34.146107, 25.167839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562359, 34.330410, 25.109383>,  <28.772457, 34.440990, 25.074308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562359, 34.330410, 25.109383>,  <28.212194, 34.146107, 25.167839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562359, 34.330410, 25.109383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424576, 0.588411, -0.688119,
		-0.231067, 0.664434, 0.710729,
		0.875411, 0.460760, -0.146140,
		28.824982, 34.468639, 25.065540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970751, 34.796078, 24.937027>,  <28.212194, 34.146107, 25.167839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970751, 34.796078, 24.937027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357918, 34.817074, 24.838734>,  <28.590218, 34.829670, 24.779758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357918, 34.817074, 24.838734>,  <27.970751, 34.796078, 24.937027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357918, 34.817074, 24.838734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197734, 0.762538, -0.615985,
		0.155048, 0.644811, 0.748451,
		0.967916, 0.052486, -0.245731,
		28.648293, 34.832821, 24.765015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169102, 35.500851, 24.849367>,  <27.970751, 34.796078, 24.937027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169102, 35.500851, 24.849367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460241, 35.313343, 24.649170>,  <28.634926, 35.200840, 24.529053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460241, 35.313343, 24.649170>,  <28.169102, 35.500851, 24.849367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460241, 35.313343, 24.649170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033974, 0.704313, -0.709076,
		0.684895, 0.533104, 0.496708,
		0.727849, -0.468768, -0.500492,
		28.678596, 35.172714, 24.499022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648708, 36.039085, 24.612371>,  <28.169102, 35.500851, 24.849367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648708, 36.039085, 24.612371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590612, 35.710091, 24.392399>,  <28.555754, 35.512695, 24.260416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590612, 35.710091, 24.392399>,  <28.648708, 36.039085, 24.612371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590612, 35.710091, 24.392399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185081, 0.568600, -0.801523,
		0.971931, -0.014632, -0.234810,
		-0.145241, -0.822484, -0.549932,
		28.547039, 35.463345, 24.227419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110228, 36.502438, 24.860653>,  <28.648708, 36.039085, 24.612371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110228, 36.502438, 24.860653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769234, 36.642021, 25.016346>,  <27.564638, 36.725769, 25.109762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769234, 36.642021, 25.016346>,  <28.110228, 36.502438, 24.860653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769234, 36.642021, 25.016346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434568, -0.886914, -0.156636,
		0.290557, -0.302677, 0.907724,
		-0.852483, 0.348956, 0.389232,
		27.513489, 36.746708, 25.133116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833799, 36.158913, 25.421146>,  <28.110228, 36.502438, 24.860653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833799, 36.158913, 25.421146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528311, 36.324677, 25.223160>,  <27.345016, 36.424133, 25.104368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528311, 36.324677, 25.223160>,  <27.833799, 36.158913, 25.421146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528311, 36.324677, 25.223160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359328, -0.909882, -0.207358,
		-0.536292, 0.019491, 0.843807,
		-0.763724, 0.414408, -0.494967,
		27.299194, 36.448997, 25.074669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165070, 35.834526, 25.660149>,  <27.833799, 36.158913, 25.421146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165070, 35.834526, 25.660149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.103855, 35.990681, 25.297012>,  <27.067125, 36.084373, 25.079130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.103855, 35.990681, 25.297012>,  <27.165070, 35.834526, 25.660149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.103855, 35.990681, 25.297012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446526, -0.846851, -0.288889,
		-0.881586, 0.361165, 0.303918,
		-0.153037, 0.390388, -0.907842,
		27.057943, 36.107796, 25.024660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484776, 35.658821, 25.574780>,  <27.165070, 35.834526, 25.660149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484776, 35.658821, 25.574780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709555, 35.706470, 25.247360>,  <26.844423, 35.735058, 25.050909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.709555, 35.706470, 25.247360>,  <26.484776, 35.658821, 25.574780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709555, 35.706470, 25.247360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238511, -0.924211, -0.298241,
		-0.792038, 0.362829, -0.490949,
		0.561950, 0.119122, -0.818549,
		26.878139, 35.742207, 25.001795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136711, 35.337296, 25.026966>,  <26.484776, 35.658821, 25.574780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136711, 35.337296, 25.026966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.526852, 35.354813, 24.940456>,  <26.760935, 35.365322, 24.888552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.526852, 35.354813, 24.940456>,  <26.136711, 35.337296, 25.026966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526852, 35.354813, 24.940456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083171, -0.834860, -0.544143,
		-0.204388, 0.548717, -0.810638,
		0.975350, 0.043795, -0.216273,
		26.819456, 35.367950, 24.875574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949039, 35.281151, 24.306396>,  <26.136711, 35.337296, 25.026966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949039, 35.281151, 24.306396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868073, 34.935192, 24.122665>,  <25.819492, 34.727615, 24.012426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868073, 34.935192, 24.122665>,  <25.949039, 35.281151, 24.306396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.868073, 34.935192, 24.122665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934721, 0.310538, -0.172812,
		0.292103, 0.394362, -0.871295,
		-0.202420, -0.864895, -0.459327,
		25.807346, 34.675724, 23.984867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587528, 35.582027, 23.630863>,  <25.949039, 35.281151, 24.306396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587528, 35.582027, 23.630863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217152, 35.630020, 23.487621>,  <24.994926, 35.658817, 23.401676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217152, 35.630020, 23.487621>,  <25.587528, 35.582027, 23.630863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.217152, 35.630020, 23.487621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345466, -0.114066, -0.931473,
		-0.152611, -0.986201, 0.064167,
		-0.925939, 0.119986, -0.358107,
		24.939369, 35.666016, 23.380190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524866, 34.963661, 23.135334>,  <25.587528, 35.582027, 23.630863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524866, 34.963661, 23.135334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276079, 35.271774, 23.079025>,  <25.126806, 35.456642, 23.045240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276079, 35.271774, 23.079025>,  <25.524866, 34.963661, 23.135334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.276079, 35.271774, 23.079025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138385, -0.068819, -0.987985,
		-0.770717, -0.633976, -0.063793,
		-0.621968, 0.770285, -0.140773,
		25.089489, 35.502861, 23.036793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.108568, 34.740456, 22.628193>,  <25.524866, 34.963661, 23.135334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.108568, 34.740456, 22.628193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.065392, 35.137703, 22.610004>,  <25.039486, 35.376053, 22.599091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.065392, 35.137703, 22.610004>,  <25.108568, 34.740456, 22.628193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.065392, 35.137703, 22.610004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127392, -0.031543, -0.991351,
		-0.985961, -0.112801, -0.123110,
		-0.107942, 0.993117, -0.045471,
		25.033009, 35.435638, 22.596363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.718754, 34.938164, 21.910927>,  <25.108568, 34.740456, 22.628193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.718754, 34.938164, 21.910927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880390, 35.282028, 22.035954>,  <24.977371, 35.488346, 22.110970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880390, 35.282028, 22.035954>,  <24.718754, 34.938164, 21.910927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.880390, 35.282028, 22.035954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279139, 0.209517, -0.937115,
		-0.871087, 0.465928, -0.155300,
		0.404090, 0.859659, 0.312566,
		25.001617, 35.539925, 22.129723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.370203, 35.457359, 21.600552>,  <24.718754, 34.938164, 21.910927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.370203, 35.457359, 21.600552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729635, 35.605431, 21.694809>,  <24.945293, 35.694271, 21.751364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729635, 35.605431, 21.694809>,  <24.370203, 35.457359, 21.600552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.729635, 35.605431, 21.694809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109480, 0.330898, -0.937294,
		-0.424935, 0.868031, 0.256811,
		0.898579, 0.370174, 0.235642,
		24.999208, 35.716484, 21.765501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.393845, 36.085651, 21.220930>,  <24.370203, 35.457359, 21.600552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.393845, 36.085651, 21.220930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770264, 35.994480, 21.320908>,  <24.996115, 35.939777, 21.380894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.770264, 35.994480, 21.320908>,  <24.393845, 36.085651, 21.220930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.770264, 35.994480, 21.320908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304769, 0.250712, -0.918836,
		0.146768, 0.940845, 0.305400,
		0.941050, -0.227933, 0.249944,
		25.052578, 35.926102, 21.395891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.847532, 36.567482, 20.836718>,  <24.393845, 36.085651, 21.220930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.847532, 36.567482, 20.836718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098198, 36.282295, 20.962559>,  <25.248596, 36.111183, 21.038063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098198, 36.282295, 20.962559>,  <24.847532, 36.567482, 20.836718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.098198, 36.282295, 20.962559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553162, 0.122603, -0.824003,
		0.548914, 0.690398, 0.471215,
		0.626663, -0.712965, 0.314603,
		25.286198, 36.068405, 21.056940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.403135, 36.913609, 20.751806>,  <24.847532, 36.567482, 20.836718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.403135, 36.913609, 20.751806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493080, 36.523865, 20.748547>,  <25.547047, 36.290020, 20.746592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493080, 36.523865, 20.748547>,  <25.403135, 36.913609, 20.751806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.493080, 36.523865, 20.748547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513141, 0.125523, -0.849076,
		0.828326, 0.186742, 0.528208,
		0.224860, -0.974357, -0.008149,
		25.560537, 36.231556, 20.746101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097458, 36.866314, 20.481041>,  <25.403135, 36.913609, 20.751806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097458, 36.866314, 20.481041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942448, 36.502117, 20.423317>,  <25.849442, 36.283600, 20.388681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942448, 36.502117, 20.423317>,  <26.097458, 36.866314, 20.481041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.942448, 36.502117, 20.423317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349948, -0.000470, -0.936769,
		0.852853, -0.413525, 0.318808,
		-0.387527, -0.910493, -0.144312,
		25.826189, 36.228970, 20.380024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604939, 36.510456, 20.094141>,  <26.097458, 36.866314, 20.481041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604939, 36.510456, 20.094141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285019, 36.279156, 20.029709>,  <26.093067, 36.140377, 19.991051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285019, 36.279156, 20.029709>,  <26.604939, 36.510456, 20.094141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285019, 36.279156, 20.029709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316765, -0.178640, -0.931530,
		0.509885, -0.796060, 0.326046,
		-0.799799, -0.578253, -0.161078,
		26.045080, 36.105679, 19.981386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809889, 36.024349, 19.616812>,  <26.604939, 36.510456, 20.094141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809889, 36.024349, 19.616812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411537, 36.023926, 19.580544>,  <26.172525, 36.023670, 19.558783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411537, 36.023926, 19.580544>,  <26.809889, 36.024349, 19.616812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411537, 36.023926, 19.580544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088761, -0.215818, -0.972391,
		-0.018537, -0.976433, 0.215023,
		-0.995880, -0.001060, -0.090670,
		26.112774, 36.023609, 19.553343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752613, 35.474590, 19.063574>,  <26.809889, 36.024349, 19.616812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752613, 35.474590, 19.063574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396021, 35.649002, 19.112793>,  <26.182066, 35.753651, 19.142324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396021, 35.649002, 19.112793>,  <26.752613, 35.474590, 19.063574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.396021, 35.649002, 19.112793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229442, -0.200316, -0.952486,
		-0.390664, -0.877355, 0.278621,
		-0.891481, 0.436030, 0.123045,
		26.128576, 35.779812, 19.149706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332029, 35.099812, 18.700386>,  <26.752613, 35.474590, 19.063574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.332029, 35.099812, 18.700386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154253, 35.458000, 18.710167>,  <26.047586, 35.672913, 18.716036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154253, 35.458000, 18.710167>,  <26.332029, 35.099812, 18.700386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154253, 35.458000, 18.710167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282165, -0.114035, -0.952564,
		-0.850208, -0.430258, 0.303354,
		-0.444442, 0.895474, 0.024451,
		26.020920, 35.726643, 18.717503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673891, 35.066727, 18.398764>,  <26.332029, 35.099812, 18.700386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673891, 35.066727, 18.398764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.783575, 35.449211, 18.357845>,  <25.849384, 35.678703, 18.333294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.783575, 35.449211, 18.357845>,  <25.673891, 35.066727, 18.398764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.783575, 35.449211, 18.357845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073275, -0.085288, -0.993658,
		-0.958875, 0.279965, 0.046680,
		0.274209, 0.956214, -0.102295,
		25.865837, 35.736076, 18.327156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.218702, 35.277508, 17.868555>,  <25.673891, 35.066727, 18.398764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.218702, 35.277508, 17.868555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483250, 35.577148, 17.883705>,  <25.641979, 35.756935, 17.892796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483250, 35.577148, 17.883705>,  <25.218702, 35.277508, 17.868555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483250, 35.577148, 17.883705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048960, 0.093503, -0.994415,
		-0.748461, 0.655821, 0.098516,
		0.661369, 0.749104, 0.037874,
		25.681660, 35.801880, 17.895067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.925358, 35.930504, 17.566586>,  <25.218702, 35.277508, 17.868555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.925358, 35.930504, 17.566586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.324104, 35.955875, 17.547661>,  <25.563353, 35.971100, 17.536306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.324104, 35.955875, 17.547661>,  <24.925358, 35.930504, 17.566586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.324104, 35.955875, 17.547661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056543, 0.152696, -0.986654,
		-0.055360, 0.986236, 0.155804,
		0.996864, 0.063431, -0.047312,
		25.623163, 35.974903, 17.533468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.016861, 36.491810, 17.080898>,  <24.925358, 35.930504, 17.566586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.016861, 36.491810, 17.080898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380890, 36.328476, 17.109264>,  <25.599308, 36.230476, 17.126284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380890, 36.328476, 17.109264>,  <25.016861, 36.491810, 17.080898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.380890, 36.328476, 17.109264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150112, 0.165280, -0.974756,
		0.386305, 0.897745, 0.211713,
		0.910074, -0.408334, 0.070913,
		25.653912, 36.205975, 17.130539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.480303, 37.062603, 16.858923>,  <25.016861, 36.491810, 17.080898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.480303, 37.062603, 16.858923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631914, 36.695007, 16.815472>,  <25.722881, 36.474449, 16.789400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631914, 36.695007, 16.815472>,  <25.480303, 37.062603, 16.858923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631914, 36.695007, 16.815472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157088, 0.179582, -0.971120,
		0.911955, 0.351016, 0.212428,
		0.379027, -0.918988, -0.108630,
		25.745623, 36.419312, 16.782883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.847084, 37.146816, 16.297539>,  <25.480303, 37.062603, 16.858923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.847084, 37.146816, 16.297539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866615, 36.747684, 16.315186>,  <25.878334, 36.508205, 16.325773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866615, 36.747684, 16.315186>,  <25.847084, 37.146816, 16.297539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866615, 36.747684, 16.315186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253693, -0.030330, -0.966809,
		0.966052, 0.058400, 0.251662,
		0.048829, -0.997832, 0.044116,
		25.881264, 36.448334, 16.328421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500507, 36.884533, 16.036549>,  <25.847084, 37.146816, 16.297539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500507, 36.884533, 16.036549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215342, 36.607403, 15.993209>,  <26.044241, 36.441124, 15.967206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.215342, 36.607403, 15.993209>,  <26.500507, 36.884533, 16.036549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215342, 36.607403, 15.993209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196268, -0.048806, -0.979335,
		0.673224, -0.719448, 0.170774,
		-0.712916, -0.692829, -0.108347,
		26.001467, 36.399555, 15.960705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.567829, 36.809151, 15.413073>,  <26.500507, 36.884533, 16.036549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.567829, 36.809151, 15.413073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272203, 36.549282, 15.484303>,  <26.094828, 36.393360, 15.527042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272203, 36.549282, 15.484303>,  <26.567829, 36.809151, 15.413073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272203, 36.549282, 15.484303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059042, -0.200863, -0.977839,
		0.671043, -0.733199, 0.110092,
		-0.739064, -0.649671, 0.178077,
		26.050484, 36.354382, 15.537726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.602253, 36.340714, 14.831230>,  <26.567829, 36.809151, 15.413073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.602253, 36.340714, 14.831230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252880, 36.215725, 14.980617>,  <26.043257, 36.140732, 15.070249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252880, 36.215725, 14.980617>,  <26.602253, 36.340714, 14.831230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.252880, 36.215725, 14.980617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300048, -0.258700, -0.918175,
		0.383518, -0.914022, 0.132201,
		-0.873433, -0.312470, 0.373467,
		25.990850, 36.121983, 15.092656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539431, 35.597050, 14.721562>,  <26.602253, 36.340714, 14.831230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539431, 35.597050, 14.721562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179379, 35.769386, 14.747287>,  <25.963346, 35.872787, 14.762721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179379, 35.769386, 14.747287>,  <26.539431, 35.597050, 14.721562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179379, 35.769386, 14.747287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211271, -0.302665, -0.929386,
		-0.380959, -0.850156, 0.363464,
		-0.900131, 0.430847, 0.064310,
		25.909340, 35.898640, 14.766580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822784, 35.105434, 14.447327>,  <26.539431, 35.597050, 14.721562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822784, 35.105434, 14.447327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782698, 35.502789, 14.424930>,  <25.758646, 35.741203, 14.411491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782698, 35.502789, 14.424930>,  <25.822784, 35.105434, 14.447327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782698, 35.502789, 14.424930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276436, -0.081859, -0.957540,
		-0.955793, -0.080484, 0.282812,
		-0.100218, 0.993389, -0.055992,
		25.752632, 35.800804, 14.408133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.152695, 35.243313, 14.214568>,  <25.822784, 35.105434, 14.447327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.152695, 35.243313, 14.214568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374367, 35.561722, 14.117217>,  <25.507370, 35.752766, 14.058806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374367, 35.561722, 14.117217>,  <25.152695, 35.243313, 14.214568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.374367, 35.561722, 14.117217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352919, -0.040111, -0.934794,
		-0.753880, 0.603935, 0.258703,
		0.554178, 0.796023, -0.243379,
		25.540621, 35.800529, 14.044204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.205299, 35.837994, 14.746370>,  <25.152695, 35.243313, 14.214568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.205299, 35.837994, 14.746370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146767, 36.227547, 14.815822>,  <25.111647, 36.461277, 14.857492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.146767, 36.227547, 14.815822>,  <25.205299, 35.837994, 14.746370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.146767, 36.227547, 14.815822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067549, 0.165270, -0.983932,
		-0.986926, -0.155710, 0.041600,
		-0.146333, 0.973879, 0.173627,
		25.102867, 36.519711, 14.867909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.629614, 36.026623, 14.436345>,  <25.205299, 35.837994, 14.746370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.629614, 36.026623, 14.436345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.831820, 36.370750, 14.462600>,  <24.953142, 36.577229, 14.478353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.831820, 36.370750, 14.462600>,  <24.629614, 36.026623, 14.436345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.831820, 36.370750, 14.462600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155049, 0.165413, -0.973960,
		-0.848773, 0.482173, 0.217010,
		0.505514, 0.860318, 0.065638,
		24.983473, 36.628845, 14.482291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.205744, 35.692657, 13.911833>,  <24.629614, 36.026623, 14.436345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.205744, 35.692657, 13.911833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.995085, 35.699131, 14.251805>,  <23.868690, 35.703014, 14.455789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.995085, 35.699131, 14.251805>,  <24.205744, 35.692657, 13.911833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.995085, 35.699131, 14.251805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636060, -0.670821, -0.381349,
		0.563979, -0.741443, 0.363581,
		-0.526646, 0.016187, 0.849931,
		23.837091, 35.703987, 14.506784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.160000, 35.021095, 14.359435>,  <24.205744, 35.692657, 13.911833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.160000, 35.021095, 14.359435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.809036, 35.210495, 14.390290>,  <23.598457, 35.324135, 14.408803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.809036, 35.210495, 14.390290>,  <24.160000, 35.021095, 14.359435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.809036, 35.210495, 14.390290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456046, -0.773319, -0.440453,
		-0.148901, -0.421637, 0.894456,
		-0.877411, 0.473497, 0.077138,
		23.545813, 35.352543, 14.413432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.701246, 35.133175, 14.819231>,  <24.160000, 35.021095, 14.359435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.701246, 35.133175, 14.819231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.848879, 34.764122, 14.774455>,  <23.937458, 34.542690, 14.747589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.848879, 34.764122, 14.774455>,  <23.701246, 35.133175, 14.819231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.848879, 34.764122, 14.774455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271847, -0.222346, 0.936302,
		-0.888750, -0.315143, -0.332879,
		0.369083, -0.922630, -0.111940,
		23.959604, 34.487331, 14.740873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.304529, 34.640984, 15.086143>,  <23.701246, 35.133175, 14.819231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.304529, 34.640984, 15.086143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.635227, 34.427467, 15.157203>,  <23.833647, 34.299358, 15.199839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.635227, 34.427467, 15.157203>,  <23.304529, 34.640984, 15.086143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.635227, 34.427467, 15.157203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317412, -0.181877, 0.930683,
		-0.464477, -0.825827, -0.319797,
		0.826747, -0.533788, 0.177650,
		23.883251, 34.267330, 15.210498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.163136, 33.887318, 15.382627>,  <23.304529, 34.640984, 15.086143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.163136, 33.887318, 15.382627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.514376, 34.043488, 15.493272>,  <23.725119, 34.137188, 15.559658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.514376, 34.043488, 15.493272>,  <23.163136, 33.887318, 15.382627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.514376, 34.043488, 15.493272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205483, -0.214382, 0.954891,
		0.432111, -0.895328, -0.108023,
		0.878099, 0.390422, 0.276611,
		23.777805, 34.160614, 15.576255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.601746, 33.375622, 15.642709>,  <23.163136, 33.887318, 15.382627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.601746, 33.375622, 15.642709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.632980, 33.741070, 15.802310>,  <23.651722, 33.960339, 15.898070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.632980, 33.741070, 15.802310>,  <23.601746, 33.375622, 15.642709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.632980, 33.741070, 15.802310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048732, -0.396248, 0.916849,
		0.995755, -0.091039, 0.013581,
		0.078087, 0.913619, 0.399003,
		23.656406, 34.015156, 15.922010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.903519, 33.308910, 16.274740>,  <23.601746, 33.375622, 15.642709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.903519, 33.308910, 16.274740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.784376, 33.684246, 16.344948>,  <23.712891, 33.909447, 16.387072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.784376, 33.684246, 16.344948>,  <23.903519, 33.308910, 16.274740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.784376, 33.684246, 16.344948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051477, -0.199383, 0.978569,
		0.953221, 0.282440, 0.107691,
		-0.297859, 0.938336, 0.175517,
		23.695019, 33.965748, 16.397602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.348255, 33.556713, 16.758005>,  <23.903519, 33.308910, 16.274740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.348255, 33.556713, 16.758005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.012394, 33.767612, 16.810146>,  <23.810877, 33.894150, 16.841431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.012394, 33.767612, 16.810146>,  <24.348255, 33.556713, 16.758005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.012394, 33.767612, 16.810146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054247, -0.157393, 0.986045,
		0.540405, 0.835009, 0.103554,
		-0.839655, 0.527246, 0.130353,
		23.760498, 33.925785, 16.849253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.481476, 33.903934, 17.381073>,  <24.348255, 33.556713, 16.758005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.481476, 33.903934, 17.381073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.090899, 33.964577, 17.319656>,  <23.856552, 34.000961, 17.282806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.090899, 33.964577, 17.319656>,  <24.481476, 33.903934, 17.381073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.090899, 33.964577, 17.319656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154908, 0.002830, 0.987925,
		0.150214, 0.988436, 0.020722,
		-0.976442, 0.151610, -0.153542,
		23.797966, 34.010059, 17.273594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.186163, 34.423313, 17.810959>,  <24.481476, 33.903934, 17.381073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.186163, 34.423313, 17.810959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.859886, 34.211052, 17.718822>,  <23.664120, 34.083694, 17.663540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.859886, 34.211052, 17.718822>,  <24.186163, 34.423313, 17.810959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.859886, 34.211052, 17.718822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308657, 0.062463, 0.949120,
		-0.489262, 0.845287, -0.214740,
		-0.815692, -0.530650, -0.230343,
		23.615179, 34.051857, 17.649719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.645655, 34.751221, 18.142504>,  <24.186163, 34.423313, 17.810959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.645655, 34.751221, 18.142504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.455040, 34.406521, 18.072868>,  <23.340672, 34.199703, 18.031088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.455040, 34.406521, 18.072868>,  <23.645655, 34.751221, 18.142504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.455040, 34.406521, 18.072868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416427, 0.046855, 0.907961,
		-0.774276, 0.505170, -0.381183,
		-0.476535, -0.861747, -0.174087,
		23.312080, 34.147995, 18.020641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.932909, 34.974384, 18.175949>,  <23.645655, 34.751221, 18.142504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.932909, 34.974384, 18.175949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.985584, 34.582966, 18.239323>,  <23.017189, 34.348114, 18.277348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.985584, 34.582966, 18.239323>,  <22.932909, 34.974384, 18.175949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.985584, 34.582966, 18.239323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504053, 0.071523, 0.860706,
		-0.853574, -0.193203, -0.483822,
		0.131686, -0.978548, 0.158435,
		23.025089, 34.289402, 18.286854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.227371, 34.709824, 18.404800>,  <22.932909, 34.974384, 18.175949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.227371, 34.709824, 18.404800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.493361, 34.437920, 18.528568>,  <22.652954, 34.274776, 18.602829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.493361, 34.437920, 18.528568>,  <22.227371, 34.709824, 18.404800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.493361, 34.437920, 18.528568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478511, -0.069672, 0.875313,
		-0.573443, -0.730120, -0.371602,
		0.664973, -0.679758, 0.309417,
		22.692852, 34.233994, 18.621393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.859203, 34.280628, 18.899099>,  <22.227371, 34.709824, 18.404800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.859203, 34.280628, 18.899099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.229277, 34.163918, 18.996181>,  <22.451321, 34.093891, 19.054432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.229277, 34.163918, 18.996181>,  <21.859203, 34.280628, 18.899099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.229277, 34.163918, 18.996181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279281, -0.090378, 0.955947,
		-0.256986, -0.952208, -0.165103,
		0.925181, -0.291775, 0.242707,
		22.506830, 34.076385, 19.068995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.896376, 33.585911, 19.293791>,  <21.859203, 34.280628, 18.899099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.896376, 33.585911, 19.293791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.213955, 33.818817, 19.363777>,  <22.404503, 33.958561, 19.405769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.213955, 33.818817, 19.363777>,  <21.896376, 33.585911, 19.293791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.213955, 33.818817, 19.363777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184647, -0.043265, 0.981852,
		0.579270, -0.811846, 0.073164,
		0.793947, 0.582267, 0.174967,
		22.452139, 33.993496, 19.416267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.992155, 33.431999, 20.032824>,  <21.896376, 33.585911, 19.293791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.992155, 33.431999, 20.032824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.245115, 33.732773, 19.958344>,  <22.396891, 33.913235, 19.913656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.245115, 33.732773, 19.958344>,  <21.992155, 33.431999, 20.032824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.245115, 33.732773, 19.958344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030848, 0.215734, 0.975965,
		0.774027, -0.622944, 0.113235,
		0.632400, 0.751930, -0.186201,
		22.434835, 33.958351, 19.902483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.514132, 33.391605, 20.567806>,  <21.992155, 33.431999, 20.032824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.514132, 33.391605, 20.567806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.540522, 33.765179, 20.427284>,  <22.556356, 33.989323, 20.342970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.540522, 33.765179, 20.427284>,  <22.514132, 33.391605, 20.567806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.540522, 33.765179, 20.427284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087430, 0.345308, 0.934408,
		0.993983, -0.092364, -0.058872,
		0.065977, 0.933933, -0.351306,
		22.560314, 34.045357, 20.321892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.006489, 33.685177, 21.010199>,  <22.514132, 33.391605, 20.567806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.006489, 33.685177, 21.010199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.819616, 34.005806, 20.860950>,  <22.707493, 34.198185, 20.771400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.819616, 34.005806, 20.860950>,  <23.006489, 33.685177, 21.010199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.819616, 34.005806, 20.860950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153661, 0.489193, 0.858533,
		0.870708, 0.343755, -0.351712,
		-0.467180, 0.801575, -0.373122,
		22.679462, 34.246277, 20.749014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.365482, 34.231182, 21.278255>,  <23.006489, 33.685177, 21.010199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.365482, 34.231182, 21.278255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.023014, 34.388691, 21.144444>,  <22.817533, 34.483196, 21.064156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.023014, 34.388691, 21.144444>,  <23.365482, 34.231182, 21.278255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.023014, 34.388691, 21.144444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085027, 0.531248, 0.842939,
		0.509646, 0.750145, -0.421359,
		-0.856173, 0.393773, -0.334531,
		22.766163, 34.506824, 21.044085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.387890, 34.994320, 21.371958>,  <23.365482, 34.231182, 21.278255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.387890, 34.994320, 21.371958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.991196, 34.943413, 21.365471>,  <22.753180, 34.912868, 21.361578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.991196, 34.943413, 21.365471>,  <23.387890, 34.994320, 21.371958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.991196, 34.943413, 21.365471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082068, 0.532127, 0.842677,
		-0.098618, 0.837044, -0.538175,
		-0.991736, -0.127270, -0.016217,
		22.693676, 34.905231, 21.360605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.155643, 35.602859, 21.600498>,  <23.387890, 34.994320, 21.371958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.155643, 35.602859, 21.600498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.843637, 35.359772, 21.660168>,  <22.656433, 35.213921, 21.695969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.843637, 35.359772, 21.660168>,  <23.155643, 35.602859, 21.600498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.843637, 35.359772, 21.660168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329896, 0.601932, 0.727219,
		-0.531735, 0.518032, -0.670001,
		-0.780017, -0.607718, 0.149172,
		22.609632, 35.177456, 21.704920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.532385, 35.975319, 21.517708>,  <23.155643, 35.602859, 21.600498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.532385, 35.975319, 21.517708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.432892, 35.656902, 21.738415>,  <22.373196, 35.465851, 21.870838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.432892, 35.656902, 21.738415>,  <22.532385, 35.975319, 21.517708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.432892, 35.656902, 21.738415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252088, 0.603244, 0.756670,
		-0.935192, 0.049114, -0.350719,
		-0.248732, -0.796043, 0.551768,
		22.358273, 35.418091, 21.903946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.854626, 36.101906, 21.785168>,  <22.532385, 35.975319, 21.517708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.854626, 36.101906, 21.785168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.006569, 35.809532, 22.011951>,  <22.097734, 35.634109, 22.148022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.006569, 35.809532, 22.011951>,  <21.854626, 36.101906, 21.785168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.006569, 35.809532, 22.011951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270732, 0.498216, 0.823702,
		-0.884540, -0.466384, -0.008636,
		0.379859, -0.730936, 0.566957,
		22.120527, 35.590252, 22.182039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.436451, 36.028679, 22.400812>,  <21.854626, 36.101906, 21.785168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.436451, 36.028679, 22.400812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.757494, 35.842472, 22.550003>,  <21.950119, 35.730747, 22.639519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.757494, 35.842472, 22.550003>,  <21.436451, 36.028679, 22.400812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.757494, 35.842472, 22.550003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046140, 0.574946, 0.816889,
		-0.594722, -0.672850, 0.439976,
		0.802607, -0.465521, 0.372979,
		21.998276, 35.702816, 22.661896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.719969, 36.016983, 22.698471>,  <21.436451, 36.028679, 22.400812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.719969, 36.016983, 22.698471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.978636, 35.748028, 22.554409>,  <21.133835, 35.586655, 22.467972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.978636, 35.748028, 22.554409>,  <20.719969, 36.016983, 22.698471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.978636, 35.748028, 22.554409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329732, 0.179353, -0.926881,
		0.687823, 0.718137, -0.105727,
		0.646665, -0.672392, -0.360156,
		21.172636, 35.546310, 22.446362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.974628, 36.042805, 22.645174>,  <20.719969, 36.016983, 22.698471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.974628, 36.042805, 22.645174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.045162, 36.428394, 22.724827>,  <20.087482, 36.659748, 22.772619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.045162, 36.428394, 22.724827>,  <19.974628, 36.042805, 22.645174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.045162, 36.428394, 22.724827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982547, 0.160208, 0.094518,
		0.059211, -0.212325, 0.975404,
		0.176336, 0.963977, 0.199133,
		20.098063, 36.717587, 22.784567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.524681, 36.193493, 23.147177>,  <19.974628, 36.042805, 22.645174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.524681, 36.193493, 23.147177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.606781, 36.537106, 22.959591>,  <19.656042, 36.743275, 22.847038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.606781, 36.537106, 22.959591>,  <19.524681, 36.193493, 23.147177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.606781, 36.537106, 22.959591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972585, 0.232545, 0.000298,
		0.109311, 0.456049, 0.883216,
		0.205252, 0.859036, -0.468966,
		19.668356, 36.794815, 22.818901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.262838, 36.821964, 23.430153>,  <19.524681, 36.193493, 23.147177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.262838, 36.821964, 23.430153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.290661, 36.890072, 23.036976>,  <19.307354, 36.930935, 22.801069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.290661, 36.890072, 23.036976>,  <19.262838, 36.821964, 23.430153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.290661, 36.890072, 23.036976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959101, 0.282429, -0.018945,
		0.274385, 0.944057, 0.182945,
		0.069554, 0.170265, -0.982940,
		19.311527, 36.941151, 22.742094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.150753, 37.500702, 23.258373>,  <19.262838, 36.821964, 23.430153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.150753, 37.500702, 23.258373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.027285, 37.306038, 22.931477>,  <18.953203, 37.189240, 22.735338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.027285, 37.306038, 22.931477>,  <19.150753, 37.500702, 23.258373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.027285, 37.306038, 22.931477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939367, 0.290900, 0.181568,
		0.149374, 0.823736, -0.546943,
		-0.308670, -0.486658, -0.817243,
		18.934683, 37.160042, 22.686304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.635006, 37.937141, 23.117008>,  <19.150753, 37.500702, 23.258373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.635006, 37.937141, 23.117008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.584454, 37.628559, 22.867565>,  <18.554123, 37.443409, 22.717899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.584454, 37.628559, 22.867565>,  <18.635006, 37.937141, 23.117008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.584454, 37.628559, 22.867565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949899, 0.275279, -0.148034,
		0.285868, 0.573660, -0.767590,
		-0.126380, -0.771451, -0.623612,
		18.546539, 37.397125, 22.680483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.041672, 25.845396, 27.474064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.439510, 25.842377, 27.432648>,  <32.678215, 25.840565, 27.407799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.439510, 25.842377, 27.432648>,  <32.041672, 25.845396, 27.474064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439510, 25.842377, 27.432648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037238, 0.905038, -0.423698,
		0.096906, 0.425265, 0.899866,
		0.994597, -0.007550, -0.103540,
		32.737888, 25.840113, 27.401587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244205, 26.594446, 27.569687>,  <32.041672, 25.845396, 27.474064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244205, 26.594446, 27.569687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.557320, 26.428448, 27.384205>,  <32.745190, 26.328850, 27.272917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.557320, 26.428448, 27.384205>,  <32.244205, 26.594446, 27.569687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557320, 26.428448, 27.384205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038037, 0.775675, -0.629985,
		0.621125, 0.475507, 0.622974,
		0.782788, -0.414995, -0.463704,
		32.792156, 26.303949, 27.245094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721142, 27.082932, 27.551767>,  <32.244205, 26.594446, 27.569687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721142, 27.082932, 27.551767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.847836, 26.818970, 27.279236>,  <32.923851, 26.660593, 27.115717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.847836, 26.818970, 27.279236>,  <32.721142, 27.082932, 27.551767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847836, 26.818970, 27.279236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250574, 0.751005, -0.610904,
		0.914818, 0.022771, 0.403224,
		0.316734, -0.659903, -0.681328,
		32.942856, 26.620998, 27.074837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290325, 27.294653, 27.436132>,  <32.721142, 27.082932, 27.551767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290325, 27.294653, 27.436132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.201191, 27.089390, 27.104588>,  <33.147713, 26.966232, 26.905661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.201191, 27.089390, 27.104588>,  <33.290325, 27.294653, 27.436132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201191, 27.089390, 27.104588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246647, 0.792899, -0.557204,
		0.943139, -0.328600, -0.050115,
		-0.222833, -0.513160, -0.828862,
		33.134342, 26.935442, 26.855928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754639, 27.428959, 26.994631>,  <33.290325, 27.294653, 27.436132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754639, 27.428959, 26.994631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.465321, 27.310207, 26.745247>,  <33.291729, 27.238956, 26.595617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.465321, 27.310207, 26.745247>,  <33.754639, 27.428959, 26.994631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465321, 27.310207, 26.745247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100150, 0.848218, -0.520092,
		0.683234, -0.438622, -0.583783,
		-0.723299, -0.296879, -0.623460,
		33.248333, 27.221144, 26.558208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099499, 27.517237, 26.309229>,  <33.754639, 27.428959, 26.994631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099499, 27.517237, 26.309229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.703045, 27.496758, 26.260189>,  <33.465172, 27.484470, 26.230764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.703045, 27.496758, 26.260189>,  <34.099499, 27.517237, 26.309229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703045, 27.496758, 26.260189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048845, 0.717736, -0.694600,
		0.123558, -0.694431, -0.708872,
		-0.991135, -0.051198, -0.122601,
		33.405704, 27.481398, 26.223408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959789, 27.524170, 25.546871>,  <34.099499, 27.517237, 26.309229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959789, 27.524170, 25.546871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.616394, 27.647858, 25.710518>,  <33.410355, 27.722071, 25.808706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.616394, 27.647858, 25.710518>,  <33.959789, 27.524170, 25.546871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616394, 27.647858, 25.710518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043066, 0.838417, -0.543325,
		-0.511016, -0.448821, -0.733091,
		-0.858492, 0.309219, 0.409115,
		33.358845, 27.740623, 25.833252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535496, 27.698566, 25.051714>,  <33.959789, 27.524170, 25.546871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535496, 27.698566, 25.051714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.363766, 27.893318, 25.355984>,  <33.260727, 28.010170, 25.538546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.363766, 27.893318, 25.355984>,  <33.535496, 27.698566, 25.051714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363766, 27.893318, 25.355984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099424, 0.811649, -0.575622,
		-0.897661, -0.322758, -0.300053,
		-0.429325, 0.486881, 0.760676,
		33.234970, 28.039383, 25.584187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090286, 28.183235, 24.714575>,  <33.535496, 27.698566, 25.051714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090286, 28.183235, 24.714575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.089493, 28.332535, 25.085667>,  <33.089016, 28.422115, 25.308321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.089493, 28.332535, 25.085667>,  <33.090286, 28.183235, 24.714575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089493, 28.332535, 25.085667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028256, 0.927339, -0.373155,
		-0.999599, -0.026955, 0.008707,
		-0.001984, 0.373251, 0.927728,
		33.088898, 28.444510, 25.363985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573792, 28.636333, 24.673203>,  <33.090286, 28.183235, 24.714575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573792, 28.636333, 24.673203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.751648, 28.772934, 25.004425>,  <32.858360, 28.854895, 25.203157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.751648, 28.772934, 25.004425>,  <32.573792, 28.636333, 24.673203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751648, 28.772934, 25.004425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034962, 0.917146, -0.397015,
		-0.895027, 0.205479, 0.395860,
		0.444640, 0.341499, 0.828054,
		32.885040, 28.875383, 25.252842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300308, 29.274437, 24.804613>,  <32.573792, 28.636333, 24.673203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300308, 29.274437, 24.804613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.654114, 29.294235, 24.990170>,  <32.866398, 29.306114, 25.101503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.654114, 29.294235, 24.990170>,  <32.300308, 29.274437, 24.804613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654114, 29.294235, 24.990170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153706, 0.907918, -0.389947,
		-0.440475, 0.416215, 0.795454,
		0.884509, 0.049496, 0.463890,
		32.919468, 29.309084, 25.129337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328590, 29.913019, 25.161306>,  <32.300308, 29.274437, 24.804613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328590, 29.913019, 25.161306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.706272, 29.798313, 25.096516>,  <32.932880, 29.729490, 25.057640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.706272, 29.798313, 25.096516>,  <32.328590, 29.913019, 25.161306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706272, 29.798313, 25.096516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210549, 0.903764, -0.372665,
		0.253257, 0.317769, 0.913719,
		0.944209, -0.286763, -0.161978,
		32.989536, 29.712284, 25.047922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704029, 30.366589, 25.495108>,  <32.328590, 29.913019, 25.161306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704029, 30.366589, 25.495108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.963238, 30.220837, 25.227585>,  <33.118763, 30.133385, 25.067072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.963238, 30.220837, 25.227585>,  <32.704029, 30.366589, 25.495108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963238, 30.220837, 25.227585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152746, 0.922465, -0.354581,
		0.746151, 0.127617, 0.653431,
		0.648018, -0.364380, -0.668805,
		33.157642, 30.111523, 25.026943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186623, 30.864483, 25.365158>,  <32.704029, 30.366589, 25.495108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186623, 30.864483, 25.365158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.224331, 30.644444, 25.033253>,  <33.246956, 30.512419, 24.834110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.224331, 30.644444, 25.033253>,  <33.186623, 30.864483, 25.365158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224331, 30.644444, 25.033253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065388, 0.828252, -0.556528,
		0.993397, 0.106718, 0.042106,
		0.094266, -0.550100, -0.829761,
		33.252609, 30.479414, 24.784325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697529, 31.196289, 24.989349>,  <33.186623, 30.864483, 25.365158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697529, 31.196289, 24.989349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.482944, 30.977386, 24.732376>,  <33.354195, 30.846045, 24.578192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.482944, 30.977386, 24.732376>,  <33.697529, 31.196289, 24.989349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482944, 30.977386, 24.732376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163080, 0.814119, -0.557328,
		0.828027, -0.194209, -0.525979,
		-0.536448, -0.547260, -0.642442,
		33.322006, 30.813210, 24.539646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012077, 31.357729, 24.376997>,  <33.697529, 31.196289, 24.989349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012077, 31.357729, 24.376997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.644775, 31.215076, 24.308144>,  <33.424397, 31.129486, 24.266830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.644775, 31.215076, 24.308144>,  <34.012077, 31.357729, 24.376997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644775, 31.215076, 24.308144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159848, 0.731507, -0.662832,
		0.362304, -0.581131, -0.728713,
		-0.918251, -0.356630, -0.172135,
		33.369301, 31.108088, 24.256502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038372, 31.365034, 23.705929>,  <34.012077, 31.357729, 24.376997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038372, 31.365034, 23.705929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.654823, 31.351532, 23.818665>,  <33.424694, 31.343431, 23.886305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.654823, 31.351532, 23.818665>,  <34.038372, 31.365034, 23.705929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654823, 31.351532, 23.818665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239392, 0.629691, -0.739040,
		-0.152524, -0.776112, -0.611872,
		-0.958868, -0.033755, 0.281838,
		33.367165, 31.341406, 23.903215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772221, 31.336216, 23.098776>,  <34.038372, 31.365034, 23.705929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772221, 31.336216, 23.098776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.478596, 31.444942, 23.347698>,  <33.302422, 31.510178, 23.497051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.478596, 31.444942, 23.347698>,  <33.772221, 31.336216, 23.098776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478596, 31.444942, 23.347698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333521, 0.653949, -0.679054,
		-0.591535, -0.706021, -0.389385,
		-0.734065, 0.271816, 0.622307,
		33.258377, 31.526487, 23.534389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191822, 31.347986, 22.743359>,  <33.772221, 31.336216, 23.098776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191822, 31.347986, 22.743359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.116291, 31.577820, 23.061905>,  <33.070972, 31.715721, 23.253033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.116291, 31.577820, 23.061905>,  <33.191822, 31.347986, 22.743359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116291, 31.577820, 23.061905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456666, 0.666551, -0.589207,
		-0.869367, -0.474932, 0.136530,
		-0.188829, 0.574586, 0.796363,
		33.059643, 31.750196, 23.300814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731277, 31.793400, 22.493750>,  <33.191822, 31.347986, 22.743359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731277, 31.793400, 22.493750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.834866, 31.976875, 22.833759>,  <32.897018, 32.086960, 23.037766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.834866, 31.976875, 22.833759>,  <32.731277, 31.793400, 22.493750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834866, 31.976875, 22.833759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434803, 0.841196, -0.321459,
		-0.862486, -0.286346, 0.417282,
		0.258967, 0.458689, 0.850024,
		32.912556, 32.114483, 23.088766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140797, 32.044083, 22.723507>,  <32.731277, 31.793400, 22.493750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140797, 32.044083, 22.723507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.437939, 32.263462, 22.877064>,  <32.616222, 32.395088, 22.969198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.437939, 32.263462, 22.877064>,  <32.140797, 32.044083, 22.723507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437939, 32.263462, 22.877064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433435, 0.831050, -0.348554,
		-0.510197, 0.092532, 0.855066,
		0.742855, 0.548447, 0.383892,
		32.660793, 32.427998, 22.992231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878328, 32.643288, 23.052454>,  <32.140797, 32.044083, 22.723507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878328, 32.643288, 23.052454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.249950, 32.769691, 22.975521>,  <32.472923, 32.845535, 22.929361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.249950, 32.769691, 22.975521>,  <31.878328, 32.643288, 23.052454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249950, 32.769691, 22.975521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367765, 0.845243, -0.387702,
		0.040052, 0.430930, 0.901496,
		0.929056, 0.316011, -0.192335,
		32.528667, 32.864494, 22.917820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615934, 33.286678, 23.087194>,  <31.878328, 32.643288, 23.052454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615934, 33.286678, 23.087194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.220297, 33.340908, 23.110214>,  <30.982914, 33.373444, 23.124025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.220297, 33.340908, 23.110214>,  <31.615934, 33.286678, 23.087194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220297, 33.340908, 23.110214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094270, -0.882971, 0.459864,
		0.113159, 0.449424, 0.886123,
		-0.989095, 0.135573, 0.057549,
		30.923569, 33.381580, 23.127480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402138, 32.984238, 23.762390>,  <31.615934, 33.286678, 23.087194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402138, 32.984238, 23.762390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.052063, 32.986229, 23.568886>,  <30.842018, 32.987423, 23.452784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.052063, 32.986229, 23.568886>,  <31.402138, 32.984238, 23.762390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052063, 32.986229, 23.568886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259463, -0.848804, 0.460663,
		-0.408325, 0.528684, 0.744152,
		-0.875185, 0.004980, -0.483762,
		30.789507, 32.987724, 23.423758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893560, 32.903667, 24.212229>,  <31.402138, 32.984238, 23.762390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893560, 32.903667, 24.212229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.733912, 32.785923, 23.864883>,  <30.638123, 32.715275, 23.656477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.733912, 32.785923, 23.864883>,  <30.893560, 32.903667, 24.212229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733912, 32.785923, 23.864883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314357, -0.845734, 0.431178,
		-0.861325, 0.445069, 0.245017,
		-0.399123, -0.294361, -0.868362,
		30.614174, 32.697613, 23.604374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173914, 32.716328, 24.283150>,  <30.893560, 32.903667, 24.212229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173914, 32.716328, 24.283150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.253807, 32.537292, 23.934490>,  <30.301743, 32.429871, 23.725294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.253807, 32.537292, 23.934490>,  <30.173914, 32.716328, 24.283150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253807, 32.537292, 23.934490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036997, -0.892382, 0.449762,
		-0.979151, -0.057585, -0.194799,
		0.199735, -0.447592, -0.871646,
		30.313726, 32.403015, 23.672997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524717, 32.350235, 23.952711>,  <30.173914, 32.716328, 24.283150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524717, 32.350235, 23.952711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.862419, 32.190163, 23.810116>,  <30.065041, 32.094120, 23.724558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.862419, 32.190163, 23.810116>,  <29.524717, 32.350235, 23.952711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862419, 32.190163, 23.810116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180501, -0.838622, 0.513939,
		-0.504629, -0.369550, -0.780245,
		0.844257, -0.400183, -0.356489,
		30.115696, 32.070107, 23.703169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392229, 31.698181, 24.054731>,  <29.524717, 32.350235, 23.952711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392229, 31.698181, 24.054731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.773373, 31.675713, 23.935467>,  <30.002060, 31.662231, 23.863907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.773373, 31.675713, 23.935467>,  <29.392229, 31.698181, 24.054731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773373, 31.675713, 23.935467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072107, -0.912634, 0.402368,
		-0.294715, -0.404901, -0.865563,
		0.952861, -0.056170, -0.298163,
		30.059231, 31.658861, 23.846018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403101, 30.969730, 23.756670>,  <29.392229, 31.698181, 24.054731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403101, 30.969730, 23.756670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.767473, 31.084629, 23.875122>,  <29.986097, 31.153568, 23.946194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.767473, 31.084629, 23.875122>,  <29.403101, 30.969730, 23.756670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767473, 31.084629, 23.875122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097947, -0.847846, 0.521117,
		0.400763, -0.445697, -0.800465,
		0.910931, 0.287247, 0.296131,
		30.040752, 31.170803, 23.963961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844553, 30.484915, 23.610874>,  <29.403101, 30.969730, 23.756670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844553, 30.484915, 23.610874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.061062, 30.675426, 23.888054>,  <30.190968, 30.789734, 24.054361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.061062, 30.675426, 23.888054>,  <29.844553, 30.484915, 23.610874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061062, 30.675426, 23.888054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024555, -0.832712, 0.553162,
		0.840490, -0.282395, -0.462418,
		0.541271, 0.476281, 0.692952,
		30.223444, 30.818312, 24.095940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516266, 30.098387, 23.759724>,  <29.844553, 30.484915, 23.610874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516266, 30.098387, 23.759724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.454969, 30.321541, 24.085983>,  <30.418192, 30.455433, 24.281738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.454969, 30.321541, 24.085983>,  <30.516266, 30.098387, 23.759724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454969, 30.321541, 24.085983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038303, -0.828130, 0.559226,
		0.987446, 0.054454, 0.148272,
		-0.153241, 0.557885, 0.815648,
		30.408997, 30.488907, 24.330677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945124, 29.772442, 24.233976>,  <30.516266, 30.098387, 23.759724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945124, 29.772442, 24.233976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.690493, 29.989895, 24.452785>,  <30.537714, 30.120367, 24.584070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.690493, 29.989895, 24.452785>,  <30.945124, 29.772442, 24.233976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690493, 29.989895, 24.452785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131824, -0.775564, 0.617351,
		0.759861, 0.320882, 0.565372,
		-0.636579, 0.543631, 0.547021,
		30.499519, 30.152985, 24.616892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202974, 29.614511, 24.842451>,  <30.945124, 29.772442, 24.233976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202974, 29.614511, 24.842451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.832588, 29.754665, 24.898766>,  <30.610357, 29.838758, 24.932554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.832588, 29.754665, 24.898766>,  <31.202974, 29.614511, 24.842451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832588, 29.754665, 24.898766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087882, -0.562555, 0.822076,
		0.367243, 0.748840, 0.551698,
		-0.925964, 0.350386, 0.140785,
		30.554798, 29.859781, 24.941002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108902, 29.772818, 25.533930>,  <31.202974, 29.614511, 24.842451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108902, 29.772818, 25.533930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.730194, 29.694778, 25.431507>,  <30.502970, 29.647955, 25.370054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.730194, 29.694778, 25.431507>,  <31.108902, 29.772818, 25.533930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730194, 29.694778, 25.431507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120482, -0.522857, 0.843863,
		-0.298517, 0.829793, 0.471520,
		-0.946769, -0.195098, -0.256057,
		30.446163, 29.636250, 25.354691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696785, 29.895231, 26.208473>,  <31.108902, 29.772818, 25.533930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696785, 29.895231, 26.208473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.488852, 29.665970, 25.955090>,  <30.364092, 29.528414, 25.803061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.488852, 29.665970, 25.955090>,  <30.696785, 29.895231, 26.208473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488852, 29.665970, 25.955090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181210, -0.650663, 0.737428,
		-0.834827, 0.498129, 0.234375,
		-0.519833, -0.573154, -0.633457,
		30.332901, 29.494024, 25.765053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999104, 29.685015, 26.557465>,  <30.696785, 29.895231, 26.208473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999104, 29.685015, 26.557465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.037588, 29.411186, 26.268436>,  <30.060678, 29.246889, 26.095020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.037588, 29.411186, 26.268436>,  <29.999104, 29.685015, 26.557465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037588, 29.411186, 26.268436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148881, -0.727666, 0.669579,
		-0.984164, 0.043157, -0.171928,
		0.096210, -0.684572, -0.722568,
		30.066452, 29.205814, 26.051666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387291, 29.183460, 26.669224>,  <29.999104, 29.685015, 26.557465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387291, 29.183460, 26.669224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.692566, 29.021606, 26.467705>,  <29.875732, 28.924494, 26.346794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.692566, 29.021606, 26.467705>,  <29.387291, 29.183460, 26.669224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692566, 29.021606, 26.467705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095618, -0.841796, 0.531259,
		-0.639061, -0.357279, -0.681141,
		0.763190, -0.404636, -0.503797,
		29.921522, 28.900215, 26.316566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099648, 28.486551, 26.429201>,  <29.387291, 29.183460, 26.669224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099648, 28.486551, 26.429201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.490993, 28.413830, 26.389706>,  <29.725801, 28.370197, 26.366009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.490993, 28.413830, 26.389706>,  <29.099648, 28.486551, 26.429201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490993, 28.413830, 26.389706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093408, -0.814013, 0.573286,
		-0.184600, -0.551660, -0.813384,
		0.978365, -0.181806, -0.098738,
		29.784502, 28.359287, 26.360085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156820, 27.739552, 26.357481>,  <29.099648, 28.486551, 26.429201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156820, 27.739552, 26.357481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.533138, 27.853287, 26.431297>,  <29.758928, 27.921528, 26.475588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.533138, 27.853287, 26.431297>,  <29.156820, 27.739552, 26.357481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533138, 27.853287, 26.431297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149233, -0.836237, 0.527672,
		0.304360, -0.468891, -0.829160,
		0.940795, 0.284340, 0.184543,
		29.815376, 27.938589, 26.486660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601221, 27.234657, 26.309603>,  <29.156820, 27.739552, 26.357481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601221, 27.234657, 26.309603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.859459, 27.461514, 26.514175>,  <30.014400, 27.597628, 26.636919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.859459, 27.461514, 26.514175>,  <29.601221, 27.234657, 26.309603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859459, 27.461514, 26.514175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309409, -0.806512, 0.503789,
		0.698195, -0.167001, -0.696157,
		0.645593, 0.567141, 0.511431,
		30.053137, 27.631657, 26.667604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.377436, 27.057186, 26.388561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.367378, 27.286407, 26.716213>,  <30.361343, 27.423941, 26.912806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.367378, 27.286407, 26.716213>,  <30.377436, 27.057186, 26.388561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367378, 27.286407, 26.716213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384880, -0.750679, 0.536981,
		0.922624, 0.328770, -0.201680,
		-0.025146, 0.573054, 0.819132,
		30.359835, 27.458324, 26.961952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940189, 26.923632, 26.739483>,  <30.377436, 27.057186, 26.388561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940189, 26.923632, 26.739483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.725401, 27.081154, 27.037899>,  <30.596527, 27.175667, 27.216949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.725401, 27.081154, 27.037899>,  <30.940189, 26.923632, 26.739483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725401, 27.081154, 27.037899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320150, -0.723066, 0.612110,
		0.780491, 0.567531, 0.262188,
		-0.536970, 0.393807, 0.746042,
		30.564310, 27.199297, 27.261711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346766, 26.741711, 27.316978>,  <30.940189, 26.923632, 26.739483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346766, 26.741711, 27.316978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.984489, 26.829697, 27.461941>,  <30.767124, 26.882488, 27.548918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.984489, 26.829697, 27.461941>,  <31.346766, 26.741711, 27.316978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984489, 26.829697, 27.461941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218650, -0.490018, 0.843845,
		0.363202, 0.843503, 0.395710,
		-0.905691, 0.219964, 0.362407,
		30.712782, 26.895685, 27.570663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441833, 26.974575, 28.019258>,  <31.346766, 26.741711, 27.316978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441833, 26.974575, 28.019258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.062662, 26.848324, 28.002239>,  <30.835159, 26.772573, 27.992027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.062662, 26.848324, 28.002239>,  <31.441833, 26.974575, 28.019258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062662, 26.848324, 28.002239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147542, -0.553606, 0.819605,
		-0.282244, 0.770649, 0.571347,
		-0.947929, -0.315626, -0.042549,
		30.778284, 26.753635, 27.989475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288847, 26.927429, 28.767693>,  <31.441833, 26.974575, 28.019258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288847, 26.927429, 28.767693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.988907, 26.717628, 28.606388>,  <30.808943, 26.591747, 28.509605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.988907, 26.717628, 28.606388>,  <31.288847, 26.927429, 28.767693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988907, 26.717628, 28.606388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060542, -0.552566, 0.831267,
		-0.658830, 0.647741, 0.382588,
		-0.749852, -0.524501, -0.403263,
		30.763952, 26.560278, 28.485409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878141, 26.744659, 29.316006>,  <31.288847, 26.927429, 28.767693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878141, 26.744659, 29.316006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.776638, 26.492397, 29.022644>,  <30.715736, 26.341040, 28.846626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.776638, 26.492397, 29.022644>,  <30.878141, 26.744659, 29.316006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776638, 26.492397, 29.022644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085011, -0.740749, 0.666381,
		-0.963525, 0.231446, 0.134357,
		-0.253756, -0.630654, -0.733406,
		30.700512, 26.303202, 28.802622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297308, 26.421185, 29.536219>,  <30.878141, 26.744659, 29.316006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297308, 26.421185, 29.536219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.418064, 26.162457, 29.256081>,  <30.490519, 26.007219, 29.087997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.418064, 26.162457, 29.256081>,  <30.297308, 26.421185, 29.536219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418064, 26.162457, 29.256081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327008, -0.760310, 0.561243,
		-0.895504, 0.059585, -0.441047,
		0.301891, -0.646821, -0.700346,
		30.508631, 25.968410, 29.045977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849464, 25.831217, 29.650185>,  <30.297308, 26.421185, 29.536219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849464, 25.831217, 29.650185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.140051, 25.681946, 29.419365>,  <30.314404, 25.592384, 29.280874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.140051, 25.681946, 29.419365>,  <29.849464, 25.831217, 29.650185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.140051, 25.681946, 29.419365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059459, -0.870692, 0.488222,
		-0.684623, -0.320367, -0.654718,
		0.726468, -0.373177, -0.577047,
		30.357990, 25.569992, 29.246250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697498, 25.207829, 29.340956>,  <29.849464, 25.831217, 29.650185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697498, 25.207829, 29.340956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.096399, 25.188946, 29.363773>,  <30.335741, 25.177616, 29.377464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.096399, 25.188946, 29.363773>,  <29.697498, 25.207829, 29.340956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096399, 25.188946, 29.363773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068029, -0.888345, 0.454110,
		0.029237, -0.456744, -0.889118,
		0.997255, -0.047209, 0.057045,
		30.395576, 25.174784, 29.380886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935928, 24.527893, 29.044117>,  <29.697498, 25.207829, 29.340956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935928, 24.527893, 29.044117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.224590, 24.668541, 29.282639>,  <30.397787, 24.752930, 29.425751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.224590, 24.668541, 29.282639>,  <29.935928, 24.527893, 29.044117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224590, 24.668541, 29.282639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053008, -0.830797, 0.554046,
		0.690220, -0.431439, -0.580911,
		0.721656, 0.351620, 0.596302,
		30.441088, 24.774027, 29.461529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244471, 23.922279, 29.009407>,  <29.935928, 24.527893, 29.044117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244471, 23.922279, 29.009407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.421656, 24.128113, 29.303070>,  <30.527967, 24.251614, 29.479267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.421656, 24.128113, 29.303070>,  <30.244471, 23.922279, 29.009407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421656, 24.128113, 29.303070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159305, -0.851023, 0.500382,
		0.882273, -0.104696, -0.458948,
		0.442964, 0.514586, 0.734156,
		30.554544, 24.282488, 29.523317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741051, 23.506527, 29.285156>,  <30.244471, 23.922279, 29.009407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741051, 23.506527, 29.285156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.668871, 23.763165, 29.583363>,  <30.625563, 23.917147, 29.762287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.668871, 23.763165, 29.583363>,  <30.741051, 23.506527, 29.285156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668871, 23.763165, 29.583363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021764, -0.755168, 0.655171,
		0.983343, 0.134452, 0.122307,
		-0.180451, 0.641596, 0.745515,
		30.614737, 23.955643, 29.807016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290539, 23.493290, 29.779846>,  <30.741051, 23.506527, 29.285156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290539, 23.493290, 29.779846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.978359, 23.647320, 29.976871>,  <30.791052, 23.739738, 30.095087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.978359, 23.647320, 29.976871>,  <31.290539, 23.493290, 29.779846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978359, 23.647320, 29.976871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128491, -0.672222, 0.729114,
		0.611876, 0.632326, 0.475155,
		-0.780447, 0.385074, 0.492565,
		30.744225, 23.762842, 30.124641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493998, 23.650446, 30.457378>,  <31.290539, 23.493290, 29.779846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493998, 23.650446, 30.457378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.097099, 23.600899, 30.453281>,  <30.858961, 23.571171, 30.450823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.097099, 23.600899, 30.453281>,  <31.493998, 23.650446, 30.457378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097099, 23.600899, 30.453281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071380, -0.635379, 0.768894,
		-0.101751, 0.762201, 0.639294,
		-0.992246, -0.123868, -0.010244,
		30.799425, 23.563738, 30.450209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358707, 23.662296, 31.141323>,  <31.493998, 23.650446, 30.457378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358707, 23.662296, 31.141323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.037640, 23.509811, 30.957848>,  <30.844999, 23.418320, 30.847761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.037640, 23.509811, 30.957848>,  <31.358707, 23.662296, 31.141323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037640, 23.509811, 30.957848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095296, -0.677214, 0.729589,
		-0.588761, 0.629331, 0.507251,
		-0.802670, -0.381214, -0.458690,
		30.796839, 23.395447, 30.820240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039915, 23.385365, 31.695963>,  <31.358707, 23.662296, 31.141323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039915, 23.385365, 31.695963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.797205, 23.201790, 31.436363>,  <30.651579, 23.091644, 31.280603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.797205, 23.201790, 31.436363>,  <31.039915, 23.385365, 31.695963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797205, 23.201790, 31.436363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013751, -0.810299, 0.585856,
		-0.794753, 0.364408, 0.485360,
		-0.606777, -0.458937, -0.648998,
		30.615171, 23.064108, 31.241663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471367, 23.174204, 32.018501>,  <31.039915, 23.385365, 31.695963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471367, 23.174204, 32.018501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.527533, 22.936039, 31.702080>,  <30.561232, 22.793140, 31.512226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.527533, 22.936039, 31.702080>,  <30.471367, 23.174204, 32.018501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527533, 22.936039, 31.702080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120040, -0.782839, 0.610536,
		-0.982789, -0.180685, -0.038448,
		0.140413, -0.595413, -0.791055,
		30.569656, 22.757416, 31.464764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118286, 22.588120, 32.286640>,  <30.471367, 23.174204, 32.018501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118286, 22.588120, 32.286640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.303541, 22.430359, 31.969162>,  <30.414694, 22.335703, 31.778675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.303541, 22.430359, 31.969162>,  <30.118286, 22.588120, 32.286640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303541, 22.430359, 31.969162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145803, -0.849423, 0.507171,
		-0.874213, -0.350612, -0.335892,
		0.463134, -0.394401, -0.793697,
		30.442482, 22.312038, 31.731052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793894, 21.930031, 32.136326>,  <30.118286, 22.588120, 32.286640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793894, 21.930031, 32.136326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.168379, 21.940479, 31.996140>,  <30.393070, 21.946749, 31.912027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.168379, 21.940479, 31.996140>,  <29.793894, 21.930031, 32.136326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168379, 21.940479, 31.996140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195831, -0.866840, 0.458518,
		-0.291820, -0.497901, -0.816661,
		0.936211, 0.026123, -0.350465,
		30.449242, 21.948317, 31.891001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934893, 21.225655, 32.082283>,  <29.793894, 21.930031, 32.136326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934893, 21.225655, 32.082283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.307878, 21.369019, 32.064156>,  <30.531670, 21.455038, 32.053280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.307878, 21.369019, 32.064156>,  <29.934893, 21.225655, 32.082283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307878, 21.369019, 32.064156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354968, -0.885654, 0.299358,
		0.067159, -0.295226, -0.953064,
		0.932463, 0.358412, -0.045316,
		30.587618, 21.476542, 32.050560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307205, 20.688086, 31.709040>,  <29.934893, 21.225655, 32.082283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307205, 20.688086, 31.709040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.577478, 20.906872, 31.906738>,  <30.739643, 21.038143, 32.025356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.577478, 20.906872, 31.906738>,  <30.307205, 20.688086, 31.709040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577478, 20.906872, 31.906738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384752, -0.833539, 0.396459,
		0.628822, -0.077719, -0.773655,
		0.675684, 0.546967, 0.494245,
		30.780184, 21.070963, 32.055012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998049, 20.419525, 31.595835>,  <30.307205, 20.688086, 31.709040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998049, 20.419525, 31.595835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.976923, 20.613728, 31.944889>,  <30.964249, 20.730249, 32.154320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.976923, 20.613728, 31.944889>,  <30.998049, 20.419525, 31.595835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976923, 20.613728, 31.944889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479434, -0.754228, 0.448645,
		0.875987, 0.442065, -0.192936,
		-0.052812, 0.485508, 0.872636,
		30.961079, 20.759380, 32.206680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738270, 20.292366, 31.669136>,  <30.998049, 20.419525, 31.595835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738270, 20.292366, 31.669136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.660112, 20.649635, 31.831154>,  <31.613218, 20.863997, 31.928364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.660112, 20.649635, 31.831154>,  <31.738270, 20.292366, 31.669136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660112, 20.649635, 31.831154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935188, 0.045301, 0.351242,
		0.295371, 0.447423, -0.844137,
		-0.195394, 0.893174, 0.405044,
		31.601494, 20.917587, 31.952667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382515, 20.514914, 31.894705>,  <31.738270, 20.292366, 31.669136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382515, 20.514914, 31.894705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.155602, 20.789539, 32.076614>,  <32.019455, 20.954315, 32.185760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.155602, 20.789539, 32.076614>,  <32.382515, 20.514914, 31.894705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155602, 20.789539, 32.076614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695792, 0.104182, 0.710647,
		0.440526, 0.719566, -0.536807,
		-0.567283, 0.686565, 0.454773,
		31.985416, 20.995508, 32.213047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916969, 20.205305, 32.365868>,  <32.382515, 20.514914, 31.894705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916969, 20.205305, 32.365868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.250134, 20.004688, 32.272301>,  <32.450031, 19.884319, 32.216160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.250134, 20.004688, 32.272301>,  <31.916969, 20.205305, 32.365868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250134, 20.004688, 32.272301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434010, 0.854242, -0.286192,
		0.343356, 0.136851, 0.929181,
		0.832911, -0.501540, -0.233915,
		32.500008, 19.854227, 32.202126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526058, 20.469030, 32.770500>,  <31.916969, 20.205305, 32.365868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526058, 20.469030, 32.770500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.645584, 20.297955, 32.429256>,  <32.717300, 20.195309, 32.224510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.645584, 20.297955, 32.429256>,  <32.526058, 20.469030, 32.770500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645584, 20.297955, 32.429256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455440, 0.849490, -0.266349,
		0.838619, -0.308949, 0.448629,
		0.298817, -0.427689, -0.853106,
		32.735229, 20.169647, 32.173325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193027, 20.749041, 32.586269>,  <32.526058, 20.469030, 32.770500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193027, 20.749041, 32.586269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.079971, 20.573219, 32.245235>,  <33.012138, 20.467726, 32.040615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.079971, 20.573219, 32.245235>,  <33.193027, 20.749041, 32.586269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079971, 20.573219, 32.245235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458451, 0.718841, -0.522580,
		0.842578, -0.538572, -0.001658,
		-0.282639, -0.439554, -0.852588,
		32.995178, 20.441353, 31.989458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737347, 20.886745, 32.223118>,  <33.193027, 20.749041, 32.586269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737347, 20.886745, 32.223118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.479286, 20.796158, 31.931232>,  <33.324448, 20.741806, 31.756100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.479286, 20.796158, 31.931232>,  <33.737347, 20.886745, 32.223118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479286, 20.796158, 31.931232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380672, 0.732809, -0.563985,
		0.662468, -0.641641, -0.386566,
		-0.645155, -0.226467, -0.729717,
		33.285740, 20.728218, 31.712317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173626, 20.837505, 31.640764>,  <33.737347, 20.886745, 32.223118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173626, 20.837505, 31.640764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.790359, 20.915771, 31.557217>,  <33.560398, 20.962732, 31.507088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.790359, 20.915771, 31.557217>,  <34.173626, 20.837505, 31.640764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790359, 20.915771, 31.557217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268430, 0.867553, -0.418684,
		0.099283, -0.457238, -0.883785,
		-0.958169, 0.195666, -0.208870,
		33.502911, 20.974472, 31.494556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155571, 21.160332, 30.935520>,  <34.173626, 20.837505, 31.640764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155571, 21.160332, 30.935520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.786526, 21.274170, 31.039673>,  <33.565098, 21.342472, 31.102165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.786526, 21.274170, 31.039673>,  <34.155571, 21.160332, 30.935520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786526, 21.274170, 31.039673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136033, 0.871709, -0.470764,
		-0.360955, -0.398910, -0.842960,
		-0.922608, 0.284595, 0.260383,
		33.509743, 21.359549, 31.117788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745365, 21.370064, 30.283863>,  <34.155571, 21.160332, 30.935520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745365, 21.370064, 30.283863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.573559, 21.538651, 30.603333>,  <33.470474, 21.639803, 30.795013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.573559, 21.538651, 30.603333>,  <33.745365, 21.370064, 30.283863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573559, 21.538651, 30.603333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069341, 0.866406, -0.494501,
		-0.900393, -0.267778, -0.342911,
		-0.429517, 0.421467, 0.798674,
		33.444702, 21.665091, 30.842936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277161, 21.688414, 29.997839>,  <33.745365, 21.370064, 30.283863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277161, 21.688414, 29.997839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.277843, 21.864414, 30.357037>,  <33.278252, 21.970015, 30.572556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.277843, 21.864414, 30.357037>,  <33.277161, 21.688414, 29.997839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277843, 21.864414, 30.357037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224698, 0.875201, -0.428409,
		-0.974427, -0.201048, 0.100358,
		0.001702, 0.440003, 0.897994,
		33.278355, 21.996416, 30.626434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579361, 22.027245, 30.038002>,  <33.277161, 21.688414, 29.997839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579361, 22.027245, 30.038002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.838867, 22.199173, 30.289196>,  <32.994572, 22.302330, 30.439913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.838867, 22.199173, 30.289196>,  <32.579361, 22.027245, 30.038002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838867, 22.199173, 30.289196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196689, 0.891887, -0.407249,
		-0.735133, 0.140691, 0.663164,
		0.648763, 0.429819, 0.627983,
		33.033497, 22.328119, 30.477591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232746, 22.466074, 30.477423>,  <32.579361, 22.027245, 30.038002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232746, 22.466074, 30.477423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.610840, 22.596443, 30.470325>,  <32.837696, 22.674664, 30.466068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.610840, 22.596443, 30.470325>,  <32.232746, 22.466074, 30.477423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610840, 22.596443, 30.470325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288805, 0.809785, -0.510724,
		-0.152089, 0.487876, 0.859561,
		0.945230, 0.325921, -0.017741,
		32.894409, 22.694220, 30.465002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134865, 23.237768, 30.589342>,  <32.232746, 22.466074, 30.477423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134865, 23.237768, 30.589342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.498249, 23.151260, 30.446274>,  <32.716278, 23.099356, 30.360434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.498249, 23.151260, 30.446274>,  <32.134865, 23.237768, 30.589342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498249, 23.151260, 30.446274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034426, 0.814103, -0.579698,
		0.416553, 0.538946, 0.732135,
		0.908459, -0.216271, -0.357671,
		32.770786, 23.086380, 30.338972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402939, 23.890713, 30.628561>,  <32.134865, 23.237768, 30.589342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402939, 23.890713, 30.628561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.617691, 23.669792, 30.373463>,  <32.746544, 23.537241, 30.220404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.617691, 23.669792, 30.373463>,  <32.402939, 23.890713, 30.628561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617691, 23.669792, 30.373463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109424, 0.795133, -0.596482,
		0.836530, 0.250457, 0.487329,
		0.536884, -0.552300, -0.637747,
		32.778755, 23.504103, 30.182138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900990, 24.309256, 30.440651>,  <32.402939, 23.890713, 30.628561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900990, 24.309256, 30.440651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.902374, 24.035522, 30.148987>,  <32.903206, 23.871283, 29.973988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.902374, 24.035522, 30.148987>,  <32.900990, 24.309256, 30.440651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902374, 24.035522, 30.148987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129916, 0.723294, -0.678209,
		0.991519, -0.092384, 0.091407,
		0.003459, -0.684333, -0.729162,
		32.903412, 23.830223, 29.930239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404896, 24.543804, 30.020905>,  <32.900990, 24.309256, 30.440651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404896, 24.543804, 30.020905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.172153, 24.305977, 29.798939>,  <33.032509, 24.163280, 29.665760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.172153, 24.305977, 29.798939>,  <33.404896, 24.543804, 30.020905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172153, 24.305977, 29.798939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142506, 0.597217, -0.789319,
		0.800709, -0.538349, -0.262765,
		-0.581856, -0.594569, -0.554915,
		32.997597, 24.127605, 29.632463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756123, 24.542292, 29.439827>,  <33.404896, 24.543804, 30.020905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756123, 24.542292, 29.439827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.388523, 24.421581, 29.338341>,  <33.167965, 24.349155, 29.277449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.388523, 24.421581, 29.338341>,  <33.756123, 24.542292, 29.439827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388523, 24.421581, 29.338341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054593, 0.539915, -0.839947,
		0.390460, -0.785762, -0.479707,
		-0.919000, -0.301777, -0.253713,
		33.112823, 24.331047, 29.262226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839851, 24.273024, 28.855425>,  <33.756123, 24.542292, 29.439827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839851, 24.273024, 28.855425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.453285, 24.374722, 28.870365>,  <33.221344, 24.435740, 28.879330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.453285, 24.374722, 28.870365>,  <33.839851, 24.273024, 28.855425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453285, 24.374722, 28.870365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086297, 0.458006, -0.884750,
		-0.242050, -0.851816, -0.464566,
		-0.966418, 0.254245, 0.037351,
		33.163361, 24.450994, 28.881571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723484, 24.322674, 28.130245>,  <33.839851, 24.273024, 28.855425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723484, 24.322674, 28.130245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.423939, 24.498856, 28.328316>,  <33.244209, 24.604565, 28.447159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.423939, 24.498856, 28.328316>,  <33.723484, 24.322674, 28.130245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423939, 24.498856, 28.328316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142315, 0.622878, -0.769265,
		-0.647261, -0.646548, -0.403769,
		-0.748866, 0.440453, 0.495178,
		33.199280, 24.630991, 28.476870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067123, 24.214174, 27.722544>,  <33.723484, 24.322674, 28.130245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067123, 24.214174, 27.722544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.045746, 24.540977, 27.952202>,  <33.032921, 24.737059, 28.089996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.045746, 24.540977, 27.952202>,  <33.067123, 24.214174, 27.722544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045746, 24.540977, 27.952202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134114, 0.563887, -0.814889,
		-0.989524, -0.120550, 0.079437,
		-0.053441, 0.817006, 0.574147,
		33.029713, 24.786079, 28.124447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536911, 24.553370, 27.452473>,  <33.067123, 24.214174, 27.722544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536911, 24.553370, 27.452473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.731377, 24.839325, 27.653500>,  <32.848057, 25.010899, 27.774115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.731377, 24.839325, 27.653500>,  <32.536911, 24.553370, 27.452473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731377, 24.839325, 27.653500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149883, 0.634800, -0.758000,
		-0.860916, 0.293189, 0.415770,
		0.486167, 0.714891, 0.502566,
		32.877228, 25.053793, 27.804270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190781, 25.097603, 27.253426>,  <32.536911, 24.553370, 27.452473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190781, 25.097603, 27.253426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.522190, 25.250790, 27.416832>,  <32.721035, 25.342701, 27.514875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.522190, 25.250790, 27.416832>,  <32.190781, 25.097603, 27.253426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522190, 25.250790, 27.416832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026481, 0.701938, -0.711746,
		-0.559329, 0.600516, 0.571430,
		0.828523, 0.382968, 0.408516,
		32.770748, 25.365681, 27.539387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<24.935312, 36.253475, 15.811322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.280890, 36.105942, 15.674172>,  <25.488235, 36.017422, 15.591883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.280890, 36.105942, 15.674172>,  <24.935312, 36.253475, 15.811322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.280890, 36.105942, 15.674172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310169, -0.146662, 0.939301,
		-0.396736, -0.917850, -0.012306,
		0.863942, -0.368837, -0.342875,
		25.540071, 35.995289, 15.571310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.006969, 35.536987, 16.027931>,  <24.935312, 36.253475, 15.811322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.006969, 35.536987, 16.027931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.340593, 35.754559, 15.991067>,  <25.540768, 35.885101, 15.968948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.340593, 35.754559, 15.991067>,  <25.006969, 35.536987, 16.027931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340593, 35.754559, 15.991067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142474, -0.050986, 0.988485,
		0.532962, -0.837584, -0.120020,
		0.834058, 0.543925, -0.092160,
		25.590811, 35.917736, 15.963419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.584219, 35.166271, 16.355070>,  <25.006969, 35.536987, 16.027931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.584219, 35.166271, 16.355070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.713503, 35.544353, 16.336609>,  <25.791073, 35.771202, 16.325533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.713503, 35.544353, 16.336609>,  <25.584219, 35.166271, 16.355070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713503, 35.544353, 16.336609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211270, -0.024534, 0.977120,
		0.922442, -0.325566, -0.207623,
		0.323210, 0.945201, -0.046151,
		25.810467, 35.827915, 16.322763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289444, 35.189304, 16.552328>,  <25.584219, 35.166271, 16.355070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289444, 35.189304, 16.552328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.130911, 35.550198, 16.620312>,  <26.035791, 35.766735, 16.661102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.130911, 35.550198, 16.620312>,  <26.289444, 35.189304, 16.552328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130911, 35.550198, 16.620312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148213, -0.119814, 0.981671,
		0.906064, 0.414261, -0.086237,
		-0.396335, 0.902238, 0.169958,
		26.012011, 35.820869, 16.671299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734798, 35.522324, 17.032259>,  <26.289444, 35.189304, 16.552328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734798, 35.522324, 17.032259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.395771, 35.728378, 17.083271>,  <26.192354, 35.852013, 17.113878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.395771, 35.728378, 17.083271>,  <26.734798, 35.522324, 17.032259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395771, 35.728378, 17.083271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131590, -0.028800, 0.990886,
		0.514114, 0.856624, -0.043377,
		-0.847567, 0.515137, 0.127530,
		26.141500, 35.882919, 17.121531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872824, 36.123203, 17.524559>,  <26.734798, 35.522324, 17.032259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872824, 36.123203, 17.524559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.474171, 36.096611, 17.505352>,  <26.234980, 36.080658, 17.493828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.474171, 36.096611, 17.505352>,  <26.872824, 36.123203, 17.524559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474171, 36.096611, 17.505352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057636, 0.151295, 0.986807,
		-0.058336, 0.986251, -0.154617,
		-0.996632, -0.066478, -0.048018,
		26.175180, 36.076668, 17.490946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655186, 36.690125, 17.911289>,  <26.872824, 36.123203, 17.524559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655186, 36.690125, 17.911289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.351494, 36.429794, 17.912106>,  <26.169279, 36.273598, 17.912596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.351494, 36.429794, 17.912106>,  <26.655186, 36.690125, 17.911289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351494, 36.429794, 17.912106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023354, 0.030381, 0.999266,
		-0.650406, 0.758622, -0.038265,
		-0.759227, -0.650822, 0.002043,
		26.123726, 36.234547, 17.912718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182541, 36.991806, 18.266785>,  <26.655186, 36.690125, 17.911289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182541, 36.991806, 18.266785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.089739, 36.602779, 18.273483>,  <26.034058, 36.369362, 18.277502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.089739, 36.602779, 18.273483>,  <26.182541, 36.991806, 18.266785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089739, 36.602779, 18.273483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193114, 0.062929, 0.979156,
		-0.953352, 0.223937, -0.202417,
		-0.232007, -0.972570, 0.016748,
		26.020136, 36.311008, 18.278507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536402, 36.961960, 18.696825>,  <26.182541, 36.991806, 18.266785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536402, 36.961960, 18.696825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.686546, 36.592995, 18.733166>,  <25.776632, 36.371616, 18.754971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.686546, 36.592995, 18.733166>,  <25.536402, 36.961960, 18.696825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686546, 36.592995, 18.733166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233943, 0.000561, 0.972250,
		-0.896869, -0.386198, -0.215582,
		0.375360, -0.922415, 0.090852,
		25.799154, 36.316269, 18.760422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.141336, 36.741013, 19.218285>,  <25.536402, 36.961960, 18.696825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.141336, 36.741013, 19.218285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.396748, 36.436916, 19.170425>,  <25.549995, 36.254459, 19.141710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.396748, 36.436916, 19.170425>,  <25.141336, 36.741013, 19.218285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396748, 36.436916, 19.170425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132604, -0.261826, 0.955962,
		-0.758088, -0.594543, -0.267995,
		0.638529, -0.760240, -0.119648,
		25.588306, 36.208843, 19.134531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.830933, 36.039875, 19.542694>,  <25.141336, 36.741013, 19.218285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.830933, 36.039875, 19.542694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.229523, 36.009750, 19.527924>,  <25.468678, 35.991676, 19.519062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.229523, 36.009750, 19.527924>,  <24.830933, 36.039875, 19.542694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.229523, 36.009750, 19.527924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005257, -0.495423, 0.868636,
		-0.083716, -0.865381, -0.494073,
		0.996476, -0.075316, -0.036925,
		25.528465, 35.987156, 19.516846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047855, 35.331234, 19.610418>,  <24.830933, 36.039875, 19.542694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047855, 35.331234, 19.610418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.349894, 35.562817, 19.733471>,  <25.531116, 35.701767, 19.807302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.349894, 35.562817, 19.733471>,  <25.047855, 35.331234, 19.610418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.349894, 35.562817, 19.733471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092650, -0.370282, 0.924287,
		0.649036, -0.726427, -0.225957,
		0.755095, 0.578961, 0.307630,
		25.576422, 35.736504, 19.825760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.325125, 35.022915, 20.234032>,  <25.047855, 35.331234, 19.610418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.325125, 35.022915, 20.234032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.489073, 35.384686, 20.281391>,  <25.587440, 35.601749, 20.309807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.489073, 35.384686, 20.281391>,  <25.325125, 35.022915, 20.234032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489073, 35.384686, 20.281391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093287, -0.087556, 0.991782,
		0.907362, -0.417545, 0.048485,
		0.409868, 0.904428, 0.118397,
		25.612034, 35.656013, 20.316910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761362, 34.931572, 20.755890>,  <25.325125, 35.022915, 20.234032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761362, 34.931572, 20.755890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.703993, 35.327351, 20.747715>,  <25.669571, 35.564819, 20.742809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.703993, 35.327351, 20.747715>,  <25.761362, 34.931572, 20.755890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.703993, 35.327351, 20.747715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114452, 0.003930, 0.993421,
		0.983021, 0.144819, 0.112681,
		-0.143423, 0.989450, -0.020438,
		25.660967, 35.624187, 20.741583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127312, 35.158791, 21.312653>,  <25.761362, 34.931572, 20.755890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127312, 35.158791, 21.312653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.850557, 35.437893, 21.238430>,  <25.684505, 35.605354, 21.193897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.850557, 35.437893, 21.238430>,  <26.127312, 35.158791, 21.312653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850557, 35.437893, 21.238430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132742, 0.129686, 0.982630,
		0.709699, 0.704499, 0.002894,
		-0.691887, 0.697755, -0.185554,
		25.642992, 35.647221, 21.182764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303530, 35.627766, 21.922098>,  <26.127312, 35.158791, 21.312653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303530, 35.627766, 21.922098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.937187, 35.677479, 21.769382>,  <25.717382, 35.707306, 21.677753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.937187, 35.677479, 21.769382>,  <26.303530, 35.627766, 21.922098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.937187, 35.677479, 21.769382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354868, 0.194249, 0.914514,
		0.187821, 0.973047, -0.133800,
		-0.915856, 0.124284, -0.381787,
		25.662430, 35.714764, 21.654846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095085, 36.384743, 22.108459>,  <26.303530, 35.627766, 21.922098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095085, 36.384743, 22.108459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.766033, 36.174778, 22.021053>,  <25.568602, 36.048798, 21.968611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.766033, 36.174778, 22.021053>,  <26.095085, 36.384743, 22.108459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.766033, 36.174778, 22.021053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436248, 0.336222, 0.834651,
		-0.364650, 0.781934, -0.505578,
		-0.822629, -0.524913, -0.218514,
		25.519245, 36.017303, 21.955500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561314, 36.659374, 22.460041>,  <26.095085, 36.384743, 22.108459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.561314, 36.659374, 22.460041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.373043, 36.322292, 22.355495>,  <25.260080, 36.120045, 22.292768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.373043, 36.322292, 22.355495>,  <25.561314, 36.659374, 22.460041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.373043, 36.322292, 22.355495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591234, 0.081363, 0.802385,
		-0.654908, 0.532194, -0.536531,
		-0.470678, -0.842704, -0.261366,
		25.231840, 36.069481, 22.277086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.838560, 36.732994, 22.596100>,  <25.561314, 36.659374, 22.460041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.838560, 36.732994, 22.596100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.881578, 36.336632, 22.563744>,  <24.907391, 36.098816, 22.544331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.881578, 36.336632, 22.563744>,  <24.838560, 36.732994, 22.596100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.881578, 36.336632, 22.563744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595547, -0.129359, 0.792837,
		-0.796089, -0.037094, -0.604042,
		0.107547, -0.990904, -0.080890,
		24.913843, 36.039360, 22.539476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.170343, 36.446529, 22.777266>,  <24.838560, 36.732994, 22.596100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.170343, 36.446529, 22.777266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.446148, 36.165413, 22.847309>,  <24.611631, 35.996742, 22.889336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.446148, 36.165413, 22.847309>,  <24.170343, 36.446529, 22.777266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.446148, 36.165413, 22.847309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447367, -0.223125, 0.866070,
		-0.569593, -0.675502, -0.468252,
		0.689511, -0.702788, 0.175107,
		24.653002, 35.954578, 22.899841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.742491, 35.925827, 22.863556>,  <24.170343, 36.446529, 22.777266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.742491, 35.925827, 22.863556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.092527, 35.844452, 23.039204>,  <24.302549, 35.795628, 23.144592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.092527, 35.844452, 23.039204>,  <23.742491, 35.925827, 22.863556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.092527, 35.844452, 23.039204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467881, -0.123706, 0.875091,
		-0.123706, -0.971241, -0.203440,
		-0.875091, 0.203440, -0.439122,
		24.355055, 35.783421, 23.170940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.063574, 35.887318, 23.105513>,  <23.742491, 35.925827, 22.863556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.063574, 35.887318, 23.105513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.688093, 35.763195, 23.165577>,  <22.462805, 35.688721, 23.201616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.688093, 35.763195, 23.165577>,  <23.063574, 35.887318, 23.105513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.688093, 35.763195, 23.165577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038569, -0.527394, -0.848745,
		0.342566, -0.790927, 0.507034,
		-0.938701, -0.310307, 0.150163,
		22.406483, 35.670101, 23.210627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.115652, 35.197884, 23.066381>,  <23.063574, 35.887318, 23.105513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.115652, 35.197884, 23.066381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.752111, 35.331566, 22.966545>,  <22.533987, 35.411774, 22.906643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.752111, 35.331566, 22.966545>,  <23.115652, 35.197884, 23.066381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.752111, 35.331566, 22.966545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021790, -0.559512, -0.828536,
		-0.416551, -0.758454, 0.501231,
		-0.908851, 0.334205, -0.249592,
		22.479456, 35.431828, 22.891666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.635763, 34.602676, 22.825319>,  <23.115652, 35.197884, 23.066381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.635763, 34.602676, 22.825319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.460590, 34.917488, 22.651512>,  <22.355486, 35.106373, 22.547228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.460590, 34.917488, 22.651512>,  <22.635763, 34.602676, 22.825319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.460590, 34.917488, 22.651512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091522, -0.519848, -0.849342,
		-0.894337, -0.332187, 0.299688,
		-0.437932, 0.787027, -0.434517,
		22.329210, 35.153595, 22.521156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.026726, 34.369617, 22.523102>,  <22.635763, 34.602676, 22.825319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.026726, 34.369617, 22.523102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.108072, 34.707726, 22.325451>,  <22.156881, 34.910591, 22.206861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.108072, 34.707726, 22.325451>,  <22.026726, 34.369617, 22.523102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.108072, 34.707726, 22.325451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044711, -0.496129, -0.867097,
		-0.978081, 0.198433, -0.063104,
		0.203368, 0.845270, -0.494126,
		22.169083, 34.961308, 22.177214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.537477, 34.495289, 21.905260>,  <22.026726, 34.369617, 22.523102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.537477, 34.495289, 21.905260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.856342, 34.724575, 21.829403>,  <22.047661, 34.862144, 21.783890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.856342, 34.724575, 21.829403>,  <21.537477, 34.495289, 21.905260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.856342, 34.724575, 21.829403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085598, -0.418220, -0.904303,
		-0.597669, 0.704642, -0.382454,
		0.797161, 0.573211, -0.189641,
		22.095491, 34.896538, 21.772511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.385900, 34.693916, 21.264462>,  <21.537477, 34.495289, 21.905260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.385900, 34.693916, 21.264462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.779745, 34.754307, 21.299667>,  <22.016052, 34.790539, 21.320791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.779745, 34.754307, 21.299667>,  <21.385900, 34.693916, 21.264462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.779745, 34.754307, 21.299667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139408, -0.374868, -0.916536,
		-0.105378, 0.914703, -0.390147,
		0.984612, 0.150973, 0.088014,
		22.075129, 34.799599, 21.326071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.616293, 34.971836, 20.598686>,  <21.385900, 34.693916, 21.264462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.616293, 34.971836, 20.598686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.968264, 34.840469, 20.736012>,  <22.179447, 34.761650, 20.818407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.968264, 34.840469, 20.736012>,  <21.616293, 34.971836, 20.598686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.968264, 34.840469, 20.736012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220341, -0.358104, -0.907310,
		0.420922, 0.874014, -0.242741,
		0.879929, -0.328421, 0.343315,
		22.232243, 34.741943, 20.839006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.082495, 35.322697, 20.311169>,  <21.616293, 34.971836, 20.598686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.082495, 35.322697, 20.311169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.269236, 34.986874, 20.422302>,  <22.381281, 34.785381, 20.488981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.269236, 34.986874, 20.422302>,  <22.082495, 35.322697, 20.311169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.269236, 34.986874, 20.422302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204097, -0.203400, -0.957587,
		0.860462, 0.503756, 0.076394,
		0.466852, -0.839558, 0.277833,
		22.409290, 34.735004, 20.505651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.474333, 35.229824, 19.782084>,  <22.082495, 35.322697, 20.311169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.474333, 35.229824, 19.782084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.522339, 34.874462, 19.959324>,  <22.551142, 34.661247, 20.065668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.522339, 34.874462, 19.959324>,  <22.474333, 35.229824, 19.782084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.522339, 34.874462, 19.959324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296663, -0.393839, -0.869990,
		0.947411, 0.235864, 0.216289,
		0.120016, -0.888402, 0.443099,
		22.558344, 34.607941, 20.092255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.160503, 35.049614, 19.711029>,  <22.474333, 35.229824, 19.782084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.160503, 35.049614, 19.711029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.967493, 34.702156, 19.755989>,  <22.851686, 34.493683, 19.782965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.967493, 34.702156, 19.755989>,  <23.160503, 35.049614, 19.711029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.967493, 34.702156, 19.755989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376499, -0.321567, -0.868817,
		0.790834, -0.376907, 0.482206,
		-0.482525, -0.868640, 0.112402,
		22.822735, 34.441563, 19.789709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.624918, 34.366169, 19.679869>,  <23.160503, 35.049614, 19.711029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.624918, 34.366169, 19.679869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.248392, 34.259022, 19.597725>,  <23.022476, 34.194733, 19.548439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.248392, 34.259022, 19.597725>,  <23.624918, 34.366169, 19.679869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.248392, 34.259022, 19.597725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292392, -0.343178, -0.892601,
		0.168626, -0.900264, 0.401362,
		-0.941314, -0.267870, -0.205361,
		22.965998, 34.178661, 19.536116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.765799, 33.824821, 19.269804>,  <23.624918, 34.366169, 19.679869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.765799, 33.824821, 19.269804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.378105, 33.901154, 19.207619>,  <23.145489, 33.946953, 19.170307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.378105, 33.901154, 19.207619>,  <23.765799, 33.824821, 19.269804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.378105, 33.901154, 19.207619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112340, -0.219011, -0.969234,
		-0.219011, -0.956878, 0.190835,
		0.969234, -0.190835, 0.155462,
		23.087336, 33.958405, 19.160980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.484779, 33.248951, 18.974306>,  <23.765799, 33.824821, 19.269804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.484779, 33.248951, 18.974306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.270445, 33.571209, 18.873264>,  <23.141844, 33.764565, 18.812639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.270445, 33.571209, 18.873264>,  <23.484779, 33.248951, 18.974306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.270445, 33.571209, 18.873264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307937, -0.092098, -0.946939,
		-0.786164, -0.585191, -0.198740,
		-0.535836, 0.805648, -0.252606,
		23.109694, 33.812904, 18.797482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.124113, 33.006557, 18.455286>,  <23.484779, 33.248951, 18.974306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.124113, 33.006557, 18.455286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.107544, 33.402920, 18.404079>,  <23.097603, 33.640736, 18.373356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.107544, 33.402920, 18.404079>,  <23.124113, 33.006557, 18.455286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.107544, 33.402920, 18.404079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218544, -0.116040, -0.968903,
		-0.974948, -0.068110, -0.211750,
		-0.041421, 0.990907, -0.128018,
		23.095118, 33.700191, 18.365673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.717905, 33.041668, 17.785204>,  <23.124113, 33.006557, 18.455286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.717905, 33.041668, 17.785204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.915867, 33.385605, 17.835392>,  <23.034643, 33.591969, 17.865505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.915867, 33.385605, 17.835392>,  <22.717905, 33.041668, 17.785204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.915867, 33.385605, 17.835392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280428, -0.021375, -0.959637,
		-0.822455, 0.510112, -0.251703,
		0.494902, 0.859842, 0.125469,
		23.064337, 33.643559, 17.873034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.560780, 33.442535, 17.203505>,  <22.717905, 33.041668, 17.785204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.560780, 33.442535, 17.203505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.875559, 33.638161, 17.353989>,  <23.064426, 33.755535, 17.444279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.875559, 33.638161, 17.353989>,  <22.560780, 33.442535, 17.203505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.875559, 33.638161, 17.353989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261896, 0.287317, -0.921336,
		-0.558681, 0.823570, 0.098020,
		0.786947, 0.489062, 0.376209,
		23.111643, 33.784878, 17.466850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.521954, 34.065441, 17.024891>,  <22.560780, 33.442535, 17.203505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.521954, 34.065441, 17.024891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.912395, 34.058586, 17.111538>,  <23.146662, 34.054474, 17.163527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.912395, 34.058586, 17.111538>,  <22.521954, 34.065441, 17.024891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.912395, 34.058586, 17.111538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197658, 0.484172, -0.852355,
		-0.090272, 0.874805, 0.475991,
		0.976106, -0.017140, 0.216620,
		23.205227, 34.053444, 17.176523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.696915, 34.659664, 16.735613>,  <22.521954, 34.065441, 17.024891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.696915, 34.659664, 16.735613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.028580, 34.440567, 16.780266>,  <23.227579, 34.309109, 16.807058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.028580, 34.440567, 16.780266>,  <22.696915, 34.659664, 16.735613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.028580, 34.440567, 16.780266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279759, 0.233712, -0.931189,
		0.483964, 0.803339, 0.347023,
		0.829164, -0.547745, 0.111633,
		23.277328, 34.276245, 16.813755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.243938, 35.180096, 16.643324>,  <22.696915, 34.659664, 16.735613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.243938, 35.180096, 16.643324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.395386, 34.817856, 16.566864>,  <23.486254, 34.600513, 16.520988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.395386, 34.817856, 16.566864>,  <23.243938, 35.180096, 16.643324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.395386, 34.817856, 16.566864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288009, 0.311547, -0.905533,
		0.879602, 0.287798, 0.378778,
		0.378618, -0.905599, -0.191149,
		23.508970, 34.546177, 16.509520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.942253, 35.234264, 16.403219>,  <23.243938, 35.180096, 16.643324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.942253, 35.234264, 16.403219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.838669, 34.883793, 16.240612>,  <23.776518, 34.673512, 16.143047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.838669, 34.883793, 16.240612>,  <23.942253, 35.234264, 16.403219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.838669, 34.883793, 16.240612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371039, 0.298344, -0.879386,
		0.891778, -0.378561, 0.247836,
		-0.258961, -0.876175, -0.406518,
		23.760981, 34.620941, 16.118656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.355429, 35.058937, 15.894378>,  <23.942253, 35.234264, 16.403219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.355429, 35.058937, 15.894378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.999557, 34.898682, 15.806779>,  <23.786036, 34.802528, 15.754220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.999557, 34.898682, 15.806779>,  <24.355429, 35.058937, 15.894378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.999557, 34.898682, 15.806779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084404, 0.327056, -0.941228,
		0.448719, -0.855874, -0.257159,
		-0.889678, -0.400642, -0.218996,
		23.732655, 34.778488, 15.741080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.255981, 29.415037, 24.916431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622784, 29.496769, 25.053455>,  <29.842865, 29.545809, 25.135670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622784, 29.496769, 25.053455>,  <29.255981, 29.415037, 24.916431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622784, 29.496769, 25.053455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001843, 0.860986, -0.508626,
		-0.398869, 0.465781, 0.789906,
		0.917006, 0.204331, 0.342562,
		29.897886, 29.558067, 25.156223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303616, 30.137543, 25.033823>,  <29.255981, 29.415037, 24.916431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303616, 30.137543, 25.033823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686346, 30.024452, 25.006851>,  <29.915985, 29.956598, 24.990667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686346, 30.024452, 25.006851>,  <29.303616, 30.137543, 25.033823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686346, 30.024452, 25.006851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200084, 0.808968, -0.552754,
		0.210827, 0.515398, 0.830612,
		0.956827, -0.282728, -0.067429,
		29.973394, 29.939634, 24.986622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576021, 30.795967, 25.302755>,  <29.303616, 30.137543, 25.033823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576021, 30.795967, 25.302755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870100, 30.618099, 25.098106>,  <30.046547, 30.511379, 24.975317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870100, 30.618099, 25.098106>,  <29.576021, 30.795967, 25.302755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870100, 30.618099, 25.098106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291337, 0.888782, -0.353821,
		0.612053, 0.111073, 0.782977,
		0.735196, -0.444668, -0.511622,
		30.090658, 30.484699, 24.944620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141123, 31.245159, 25.328236>,  <29.576021, 30.795967, 25.302755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141123, 31.245159, 25.328236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214878, 30.997501, 25.022907>,  <30.259132, 30.848907, 24.839710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214878, 30.997501, 25.022907>,  <30.141123, 31.245159, 25.328236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214878, 30.997501, 25.022907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119118, 0.784993, -0.607945,
		0.975608, 0.021174, 0.218496,
		0.184390, -0.619143, -0.763323,
		30.270195, 30.811758, 24.793911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780968, 31.444418, 25.037806>,  <30.141123, 31.245159, 25.328236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780968, 31.444418, 25.037806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593361, 31.255276, 24.739429>,  <30.480797, 31.141790, 24.560404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593361, 31.255276, 24.739429>,  <30.780968, 31.444418, 25.037806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593361, 31.255276, 24.739429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220719, 0.755045, -0.617406,
		0.855163, -0.454218, -0.249762,
		-0.469018, -0.472855, -0.745942,
		30.452656, 31.113419, 24.515648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243053, 31.386452, 24.404411>,  <30.780968, 31.444418, 25.037806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243053, 31.386452, 24.404411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878061, 31.338928, 24.247814>,  <30.659067, 31.310415, 24.153856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878061, 31.338928, 24.247814>,  <31.243053, 31.386452, 24.404411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878061, 31.338928, 24.247814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210027, 0.685163, -0.697452,
		0.351099, -0.718635, -0.600245,
		-0.912479, -0.118807, -0.391493,
		30.604317, 31.303286, 24.130365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260958, 31.146910, 23.728992>,  <31.243053, 31.386452, 24.404411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260958, 31.146910, 23.728992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904385, 31.324768, 23.763950>,  <30.690441, 31.431482, 23.784925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904385, 31.324768, 23.763950>,  <31.260958, 31.146910, 23.728992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904385, 31.324768, 23.763950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211226, 0.578345, -0.787972,
		-0.400911, -0.683965, -0.609477,
		-0.891433, 0.444644, 0.087393,
		30.636955, 31.458160, 23.790169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079271, 31.488846, 23.049629>,  <31.260958, 31.146910, 23.728992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079271, 31.488846, 23.049629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803560, 31.685875, 23.262146>,  <30.638134, 31.804092, 23.389656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803560, 31.685875, 23.262146>,  <31.079271, 31.488846, 23.049629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803560, 31.685875, 23.262146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012188, 0.741102, -0.671282,
		-0.724397, -0.456223, -0.516827,
		-0.689276, 0.492574, 0.531291,
		30.596777, 31.833647, 23.421534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585611, 31.860359, 22.518286>,  <31.079271, 31.488846, 23.049629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585611, 31.860359, 22.518286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524893, 32.034431, 22.873268>,  <30.488461, 32.138874, 23.086258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524893, 32.034431, 22.873268>,  <30.585611, 31.860359, 22.518286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524893, 32.034431, 22.873268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047656, 0.893592, -0.446342,
		-0.987262, -0.110046, -0.114906,
		-0.151797, 0.435181, 0.887454,
		30.479353, 32.164986, 23.139503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253149, 32.495071, 22.390984>,  <30.585611, 31.860359, 22.518286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253149, 32.495071, 22.390984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342413, 32.550507, 22.776936>,  <30.395971, 32.583767, 23.008507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342413, 32.550507, 22.776936>,  <30.253149, 32.495071, 22.390984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342413, 32.550507, 22.776936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045213, 0.987306, -0.152261,
		-0.973732, 0.077604, 0.214062,
		0.223161, 0.138583, 0.964880,
		30.409361, 32.592083, 23.066401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723202, 32.959221, 22.712990>,  <30.253149, 32.495071, 22.390984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723202, 32.959221, 22.712990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047119, 32.971210, 22.947369>,  <30.241470, 32.978405, 23.087996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047119, 32.971210, 22.947369>,  <29.723202, 32.959221, 22.712990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047119, 32.971210, 22.947369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105363, 0.975029, -0.195493,
		-0.577175, 0.220047, 0.786415,
		0.809795, 0.029974, 0.585947,
		30.290058, 32.980202, 23.123152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606960, 33.395866, 23.222006>,  <29.723202, 32.959221, 22.712990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606960, 33.395866, 23.222006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004738, 33.408497, 23.181831>,  <30.243404, 33.416077, 23.157726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004738, 33.408497, 23.181831>,  <29.606960, 33.395866, 23.222006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004738, 33.408497, 23.181831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032665, 0.999424, -0.009207,
		0.100090, 0.012437, 0.994901,
		0.994442, 0.031577, -0.100438,
		30.303070, 33.417969, 23.151699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879375, 33.769585, 23.726690>,  <29.606960, 33.395866, 23.222006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879375, 33.769585, 23.726690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094082, 33.805984, 23.391167>,  <30.222906, 33.827824, 23.189852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094082, 33.805984, 23.391167>,  <29.879375, 33.769585, 23.726690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094082, 33.805984, 23.391167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180371, 0.983560, -0.008724,
		0.824225, 0.155980, 0.544355,
		0.536767, 0.090995, -0.838809,
		30.255112, 33.833282, 23.139524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433325, 34.276466, 23.783272>,  <29.879375, 33.769585, 23.726690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433325, 34.276466, 23.783272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357422, 34.235043, 23.392731>,  <30.311880, 34.210190, 23.158405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357422, 34.235043, 23.392731>,  <30.433325, 34.276466, 23.783272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357422, 34.235043, 23.392731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007850, 0.994550, -0.103965,
		0.981799, -0.012064, -0.189537,
		-0.189759, -0.103560, -0.976354,
		30.300493, 34.203976, 23.099825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644613, 34.547806, 23.980476>,  <30.433325, 34.276466, 23.783272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644613, 34.547806, 23.980476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359192, 34.776081, 24.143032>,  <29.187939, 34.913048, 24.240564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359192, 34.776081, 24.143032>,  <29.644613, 34.547806, 23.980476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359192, 34.776081, 24.143032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328365, -0.239975, 0.913558,
		0.618883, 0.785317, -0.016160,
		-0.713555, 0.570692, 0.406387,
		29.145126, 34.947289, 24.264948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913481, 34.930634, 24.483171>,  <29.644613, 34.547806, 23.980476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913481, 34.930634, 24.483171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522869, 34.914223, 24.567749>,  <29.288502, 34.904377, 24.618496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522869, 34.914223, 24.567749>,  <29.913481, 34.930634, 24.483171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522869, 34.914223, 24.567749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214921, -0.250262, 0.944022,
		0.014186, 0.967308, 0.253205,
		-0.976528, -0.041027, 0.211446,
		29.229910, 34.901913, 24.631184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807579, 35.279190, 25.042747>,  <29.913481, 34.930634, 24.483171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807579, 35.279190, 25.042747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492725, 35.033218, 25.061871>,  <29.303812, 34.885635, 25.073343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492725, 35.033218, 25.061871>,  <29.807579, 35.279190, 25.042747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492725, 35.033218, 25.061871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306884, -0.323232, 0.895178,
		-0.535015, 0.719297, 0.443138,
		-0.787135, -0.614925, 0.047807,
		29.256584, 34.848740, 25.076212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617992, 35.372536, 25.691353>,  <29.807579, 35.279190, 25.042747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617992, 35.372536, 25.691353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410940, 35.043781, 25.596218>,  <29.286709, 34.846531, 25.539137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410940, 35.043781, 25.596218>,  <29.617992, 35.372536, 25.691353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410940, 35.043781, 25.596218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229200, -0.401013, 0.886936,
		-0.824332, 0.404595, 0.395953,
		-0.517632, -0.821883, -0.237835,
		29.255650, 34.797215, 25.524868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158928, 35.171993, 26.230875>,  <29.617992, 35.372536, 25.691353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158928, 35.171993, 26.230875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223576, 34.844269, 26.010834>,  <29.262365, 34.647636, 25.878809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223576, 34.844269, 26.010834>,  <29.158928, 35.171993, 26.230875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223576, 34.844269, 26.010834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181571, -0.523227, 0.832626,
		-0.970005, -0.234453, 0.064198,
		0.161622, -0.819308, -0.550102,
		29.272062, 34.598476, 25.845802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759285, 34.669518, 26.495604>,  <29.158928, 35.171993, 26.230875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759285, 34.669518, 26.495604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067974, 34.480171, 26.325726>,  <29.253187, 34.366562, 26.223799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067974, 34.480171, 26.325726>,  <28.759285, 34.669518, 26.495604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067974, 34.480171, 26.325726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082063, -0.588098, 0.804616,
		-0.630640, -0.655793, -0.415004,
		0.771724, -0.473367, -0.424694,
		29.299492, 34.338161, 26.198317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639629, 33.972691, 26.667126>,  <28.759285, 34.669518, 26.495604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639629, 33.972691, 26.667126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020382, 33.957195, 26.545525>,  <29.248835, 33.947899, 26.472563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020382, 33.957195, 26.545525>,  <28.639629, 33.972691, 26.667126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020382, 33.957195, 26.545525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204482, -0.658594, 0.724183,
		-0.228267, -0.751501, -0.618983,
		0.951883, -0.038736, -0.304004,
		29.305946, 33.945576, 26.454323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845243, 33.247711, 26.857563>,  <28.639629, 33.972691, 26.667126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845243, 33.247711, 26.857563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192501, 33.394382, 26.723770>,  <29.400856, 33.482384, 26.643494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192501, 33.394382, 26.723770>,  <28.845243, 33.247711, 26.857563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192501, 33.394382, 26.723770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493320, -0.711434, 0.500497,
		-0.054444, -0.599510, -0.798514,
		0.868142, 0.366674, -0.334483,
		29.452944, 33.504383, 26.623425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208704, 32.691967, 26.535301>,  <28.845243, 33.247711, 26.857563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208704, 32.691967, 26.535301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466553, 32.972614, 26.656754>,  <29.621262, 33.141003, 26.729626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466553, 32.972614, 26.656754>,  <29.208704, 32.691967, 26.535301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466553, 32.972614, 26.656754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489941, -0.684017, 0.540443,
		0.586875, -0.199619, -0.784685,
		0.644621, 0.701621, 0.303630,
		29.659939, 33.183102, 26.747843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935148, 32.377132, 26.544868>,  <29.208704, 32.691967, 26.535301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935148, 32.377132, 26.544868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971470, 32.690434, 26.790886>,  <29.993263, 32.878414, 26.938496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971470, 32.690434, 26.790886>,  <29.935148, 32.377132, 26.544868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971470, 32.690434, 26.790886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449695, -0.583291, 0.676422,
		0.888554, 0.215159, -0.405188,
		0.090805, 0.783249, 0.615042,
		29.998711, 32.925407, 26.975399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574223, 32.357872, 26.694157>,  <29.935148, 32.377132, 26.544868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574223, 32.357872, 26.694157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415310, 32.572224, 26.992149>,  <30.319962, 32.700836, 27.170944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415310, 32.572224, 26.992149>,  <30.574223, 32.357872, 26.694157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415310, 32.572224, 26.992149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390114, -0.636173, 0.665653,
		0.830649, 0.555080, 0.043687,
		-0.397283, 0.535881, 0.744981,
		30.296125, 32.732986, 27.215643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057478, 32.365429, 27.237309>,  <30.574223, 32.357872, 26.694157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057478, 32.365429, 27.237309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727592, 32.458279, 27.443596>,  <30.529661, 32.513988, 27.567369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727592, 32.458279, 27.443596>,  <31.057478, 32.365429, 27.237309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727592, 32.458279, 27.443596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208542, -0.722813, 0.658826,
		0.525697, 0.650892, 0.547706,
		-0.824714, 0.232123, 0.515719,
		30.480179, 32.527916, 27.598312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320660, 32.533569, 27.983919>,  <31.057478, 32.365429, 27.237309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320660, 32.533569, 27.983919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926840, 32.463531, 27.983105>,  <30.690548, 32.421509, 27.982616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926840, 32.463531, 27.983105>,  <31.320660, 32.533569, 27.983919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926840, 32.463531, 27.983105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092339, -0.529022, 0.843569,
		-0.148779, 0.830348, 0.537017,
		-0.984550, -0.175093, -0.002034,
		30.631475, 32.411003, 27.982494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110466, 32.688339, 28.767187>,  <31.320660, 32.533569, 27.983919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110466, 32.688339, 28.767187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854914, 32.434319, 28.593502>,  <30.701582, 32.281906, 28.489290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854914, 32.434319, 28.593502>,  <31.110466, 32.688339, 28.767187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854914, 32.434319, 28.593502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031995, -0.542002, 0.839768,
		-0.768638, 0.550406, 0.325957,
		-0.638883, -0.635049, -0.434214,
		30.663248, 32.243805, 28.463238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210302, 32.949532, 29.455233>,  <31.110466, 32.688339, 28.767187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210302, 32.949532, 29.455233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592402, 33.024693, 29.546616>,  <31.821661, 33.069790, 29.601444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592402, 33.024693, 29.546616>,  <31.210302, 32.949532, 29.455233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592402, 33.024693, 29.546616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055200, 0.871995, -0.486391,
		-0.290606, 0.452014, 0.843345,
		0.955249, 0.187901, 0.228456,
		31.878977, 33.081062, 29.615152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226662, 33.678368, 29.627516>,  <31.210302, 32.949532, 29.455233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226662, 33.678368, 29.627516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589672, 33.561203, 29.507118>,  <31.807478, 33.490906, 29.434879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589672, 33.561203, 29.507118>,  <31.226662, 33.678368, 29.627516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589672, 33.561203, 29.507118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010253, 0.731898, -0.681337,
		0.419867, 0.615246, 0.667221,
		0.907528, -0.292911, -0.300992,
		31.861931, 33.473331, 29.416821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696985, 34.319977, 29.597565>,  <31.226662, 33.678368, 29.627516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696985, 34.319977, 29.597565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842157, 34.034157, 29.358334>,  <31.929260, 33.862663, 29.214796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842157, 34.034157, 29.358334>,  <31.696985, 34.319977, 29.597565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842157, 34.034157, 29.358334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112690, 0.670786, -0.733039,
		0.924976, 0.198646, 0.323973,
		0.362932, -0.714553, -0.598076,
		31.951036, 33.819790, 29.178911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223770, 34.741631, 29.169098>,  <31.696985, 34.319977, 29.597565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223770, 34.741631, 29.169098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211010, 34.378525, 29.001789>,  <32.203354, 34.160664, 28.901403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211010, 34.378525, 29.001789>,  <32.223770, 34.741631, 29.169098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211010, 34.378525, 29.001789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588230, 0.321282, -0.742134,
		0.808064, -0.269717, 0.523722,
		-0.031904, -0.907761, -0.418272,
		32.201439, 34.106197, 28.876307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946758, 34.599510, 29.133980>,  <32.223770, 34.741631, 29.169098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946758, 34.599510, 29.133980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747360, 34.369843, 28.874187>,  <32.627720, 34.232040, 28.718311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747360, 34.369843, 28.874187>,  <32.946758, 34.599510, 29.133980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747360, 34.369843, 28.874187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584812, 0.330309, -0.740872,
		0.639918, -0.749147, 0.171125,
		-0.498498, -0.574173, -0.649481,
		32.597813, 34.197590, 28.679342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410709, 34.461765, 28.569187>,  <32.946758, 34.599510, 29.133980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410709, 34.461765, 28.569187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073406, 34.365803, 28.376789>,  <32.871025, 34.308224, 28.261351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073406, 34.365803, 28.376789>,  <33.410709, 34.461765, 28.569187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073406, 34.365803, 28.376789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370100, 0.389793, -0.843260,
		0.389793, -0.889104, -0.239907,
		0.843260, 0.239907, 0.480996,
		32.820427, 34.293831, 28.232491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662014, 33.990803, 28.110373>,  <33.410709, 34.461765, 28.569187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662014, 33.990803, 28.110373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312962, 34.133202, 27.976639>,  <33.103531, 34.218639, 27.896399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312962, 34.133202, 27.976639>,  <33.662014, 33.990803, 28.110373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312962, 34.133202, 27.976639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434472, 0.253250, -0.864349,
		-0.223033, -0.899518, -0.375663,
		-0.872634, 0.355993, -0.334332,
		33.051170, 34.239998, 27.876339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701683, 33.812065, 27.431553>,  <33.662014, 33.990803, 28.110373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701683, 33.812065, 27.431553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448811, 34.119347, 27.471981>,  <33.297085, 34.303715, 27.496239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448811, 34.119347, 27.471981>,  <33.701683, 33.812065, 27.431553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448811, 34.119347, 27.471981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399090, 0.434648, -0.807346,
		-0.664133, -0.470054, -0.581358,
		-0.632183, 0.768199, 0.101070,
		33.259155, 34.349808, 27.502302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429943, 33.954281, 26.728172>,  <33.701683, 33.812065, 27.431553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429943, 33.954281, 26.728172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337387, 34.290798, 26.923592>,  <33.281853, 34.492710, 27.040842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337387, 34.290798, 26.923592>,  <33.429943, 33.954281, 26.728172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337387, 34.290798, 26.923592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182720, 0.530820, -0.827553,
		-0.955548, -0.102220, -0.276549,
		-0.231390, 0.841297, 0.488546,
		33.267971, 34.543186, 27.070156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907612, 34.349533, 26.272993>,  <33.429943, 33.954281, 26.728172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907612, 34.349533, 26.272993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093006, 34.608513, 26.514984>,  <33.204243, 34.763901, 26.660179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093006, 34.608513, 26.514984>,  <32.907612, 34.349533, 26.272993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093006, 34.608513, 26.514984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118964, 0.631089, -0.766534,
		-0.878083, 0.427247, 0.215477,
		0.463484, 0.647446, 0.604976,
		33.232052, 34.802746, 26.696476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684048, 34.949837, 26.036783>,  <32.907612, 34.349533, 26.272993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684048, 34.949837, 26.036783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011169, 35.050568, 26.243771>,  <33.207443, 35.111008, 26.367964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011169, 35.050568, 26.243771>,  <32.684048, 34.949837, 26.036783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011169, 35.050568, 26.243771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292275, 0.592831, -0.750417,
		-0.495748, 0.764940, 0.411219,
		0.817807, 0.251829, 0.517468,
		33.256512, 35.126118, 26.399012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742020, 35.653709, 25.986952>,  <32.684048, 34.949837, 26.036783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742020, 35.653709, 25.986952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114090, 35.541000, 26.081078>,  <33.337334, 35.473377, 26.137552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114090, 35.541000, 26.081078>,  <32.742020, 35.653709, 25.986952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114090, 35.541000, 26.081078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345372, 0.454405, -0.821118,
		0.124439, 0.845057, 0.519994,
		0.930179, -0.281770, 0.235313,
		33.393143, 35.456470, 26.151672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.093769, 30.348715, 32.011032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.404434, 30.258068, 31.775936>,  <32.590832, 30.203680, 31.634878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.404434, 30.258068, 31.775936>,  <32.093769, 30.348715, 32.011032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404434, 30.258068, 31.775936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059335, 0.955216, -0.289900,
		0.627119, 0.190280, 0.755325,
		0.776661, -0.226619, -0.587743,
		32.637432, 30.190083, 31.599613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528374, 30.902897, 31.983702>,  <32.093769, 30.348715, 32.011032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528374, 30.902897, 31.983702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.656479, 30.687424, 31.671997>,  <32.733341, 30.558140, 31.484974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.656479, 30.687424, 31.671997>,  <32.528374, 30.902897, 31.983702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656479, 30.687424, 31.671997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002150, 0.823000, -0.568037,
		0.947326, 0.180247, 0.264736,
		0.320265, -0.538685, -0.779262,
		32.752560, 30.525818, 31.438219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088867, 31.263872, 31.790012>,  <32.528374, 30.902897, 31.983702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088867, 31.263872, 31.790012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.968643, 31.053864, 31.471512>,  <32.896511, 30.927858, 31.280411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.968643, 31.053864, 31.471512>,  <33.088867, 31.263872, 31.790012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968643, 31.053864, 31.471512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177495, 0.851058, -0.494161,
		0.937103, -0.007192, -0.348979,
		-0.300555, -0.525022, -0.796253,
		32.878475, 30.896357, 31.232635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420654, 31.619017, 31.255943>,  <33.088867, 31.263872, 31.790012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420654, 31.619017, 31.255943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.146767, 31.394806, 31.069626>,  <32.982433, 31.260279, 30.957834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.146767, 31.394806, 31.069626>,  <33.420654, 31.619017, 31.255943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146767, 31.394806, 31.069626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179080, 0.748929, -0.637994,
		0.706456, -0.353437, -0.613190,
		-0.684727, -0.560525, -0.465792,
		32.941349, 31.226648, 30.929888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547710, 31.705410, 30.611897>,  <33.420654, 31.619017, 31.255943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547710, 31.705410, 30.611897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.161877, 31.601723, 30.631413>,  <32.930378, 31.539511, 30.643122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.161877, 31.601723, 30.631413>,  <33.547710, 31.705410, 30.611897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161877, 31.601723, 30.631413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241012, 0.790989, -0.562361,
		0.107179, -0.554205, -0.825451,
		-0.964586, -0.259217, 0.048792,
		32.872501, 31.523958, 30.646049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304890, 31.769800, 29.875208>,  <33.547710, 31.705410, 30.611897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304890, 31.769800, 29.875208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.976383, 31.756016, 30.103008>,  <32.779278, 31.747746, 30.239689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.976383, 31.756016, 30.103008>,  <33.304890, 31.769800, 29.875208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976383, 31.756016, 30.103008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334174, 0.838093, -0.431194,
		-0.462436, -0.544438, -0.699814,
		-0.821268, -0.034460, 0.569501,
		32.730003, 31.745678, 30.273859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701687, 31.790224, 29.430916>,  <33.304890, 31.769800, 29.875208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701687, 31.790224, 29.430916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.567268, 31.926510, 29.782139>,  <32.486618, 32.008282, 29.992872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.567268, 31.926510, 29.782139>,  <32.701687, 31.790224, 29.430916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567268, 31.926510, 29.782139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336043, 0.827542, -0.449722,
		-0.879857, -0.446192, -0.163597,
		-0.336045, 0.340716, 0.878058,
		32.466454, 32.028725, 30.045557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099037, 32.075031, 29.177679>,  <32.701687, 31.790224, 29.430916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099037, 32.075031, 29.177679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.159904, 32.231541, 29.540722>,  <32.196426, 32.325447, 29.758547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.159904, 32.231541, 29.540722>,  <32.099037, 32.075031, 29.177679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159904, 32.231541, 29.540722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456486, 0.842312, -0.286584,
		-0.876621, -0.370700, 0.306786,
		0.152173, 0.391269, 0.907607,
		32.205555, 32.348923, 29.813004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458849, 32.265903, 29.421806>,  <32.099037, 32.075031, 29.177679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458849, 32.265903, 29.421806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.732939, 32.496040, 29.600449>,  <31.897392, 32.634121, 29.707634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.732939, 32.496040, 29.600449>,  <31.458849, 32.265903, 29.421806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732939, 32.496040, 29.600449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526253, 0.815013, -0.242513,
		-0.503515, -0.068851, 0.861239,
		0.685223, 0.575338, 0.446604,
		31.938505, 32.668640, 29.734430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730310, 32.165070, 29.392206>,  <31.458849, 32.265903, 29.421806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730310, 32.165070, 29.392206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.595545, 31.997803, 29.054775>,  <30.514685, 31.897442, 28.852316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.595545, 31.997803, 29.054775>,  <30.730310, 32.165070, 29.392206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595545, 31.997803, 29.054775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153825, -0.859474, 0.487487,
		-0.928885, 0.294004, 0.225244,
		-0.336914, -0.418171, -0.843577,
		30.494471, 31.872351, 28.801702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033791, 31.973455, 29.493010>,  <30.730310, 32.165070, 29.392206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033791, 31.973455, 29.493010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.187658, 31.736332, 29.209995>,  <30.279978, 31.594059, 29.040186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.187658, 31.736332, 29.209995>,  <30.033791, 31.973455, 29.493010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187658, 31.736332, 29.209995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370469, -0.801223, 0.469888,
		-0.845449, 0.081371, -0.527821,
		0.384667, -0.592807, -0.707538,
		30.303059, 31.558489, 28.997734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524439, 31.374102, 29.497992>,  <30.033791, 31.973455, 29.493010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524439, 31.374102, 29.497992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.854080, 31.244247, 29.312317>,  <30.051865, 31.166334, 29.200912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.854080, 31.244247, 29.312317>,  <29.524439, 31.374102, 29.497992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854080, 31.244247, 29.312317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042569, -0.852652, 0.520742,
		-0.564839, -0.409385, -0.716492,
		0.824102, -0.324636, -0.464184,
		30.101311, 31.146856, 29.173061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401571, 30.751284, 29.166126>,  <29.524439, 31.374102, 29.497992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401571, 30.751284, 29.166126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.795218, 30.775253, 29.232975>,  <30.031404, 30.789635, 29.273085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.795218, 30.775253, 29.232975>,  <29.401571, 30.751284, 29.166126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795218, 30.775253, 29.232975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041096, -0.838871, 0.542777,
		0.172718, -0.541022, -0.823082,
		0.984114, 0.059922, 0.167122,
		30.090452, 30.793230, 29.283112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530779, 30.190039, 28.996817>,  <29.401571, 30.751284, 29.166126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530779, 30.190039, 28.996817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.826658, 30.310196, 29.237686>,  <30.004185, 30.382290, 29.382208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.826658, 30.310196, 29.237686>,  <29.530779, 30.190039, 28.996817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826658, 30.310196, 29.237686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036250, -0.875754, 0.481395,
		0.671964, -0.377915, -0.636903,
		0.739696, 0.300393, 0.602174,
		30.048567, 30.400314, 29.418339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947674, 29.612524, 28.978897>,  <29.530779, 30.190039, 28.996817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947674, 29.612524, 28.978897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.067009, 29.809975, 29.305656>,  <30.138611, 29.928446, 29.501713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.067009, 29.809975, 29.305656>,  <29.947674, 29.612524, 28.978897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067009, 29.809975, 29.305656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082413, -0.866003, 0.493200,
		0.950895, -0.079818, -0.299045,
		0.298340, 0.493627, 0.816900,
		30.156511, 29.958063, 29.550726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557098, 29.322617, 29.197945>,  <29.947674, 29.612524, 28.978897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557098, 29.322617, 29.197945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.407824, 29.511356, 29.517467>,  <30.318258, 29.624599, 29.709181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.407824, 29.511356, 29.517467>,  <30.557098, 29.322617, 29.197945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407824, 29.511356, 29.517467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261789, -0.772464, 0.578590,
		0.890055, 0.425040, 0.164748,
		-0.373186, 0.471848, 0.798806,
		30.295868, 29.652910, 29.757109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036421, 29.245838, 29.771517>,  <30.557098, 29.322617, 29.197945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036421, 29.245838, 29.771517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.684332, 29.321388, 29.945660>,  <30.473078, 29.366718, 30.050146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.684332, 29.321388, 29.945660>,  <31.036421, 29.245838, 29.771517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684332, 29.321388, 29.945660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151119, -0.758072, 0.634421,
		0.449858, 0.624222, 0.638729,
		-0.880222, 0.188875, 0.435356,
		30.420265, 29.378050, 30.076267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081118, 29.070616, 30.517632>,  <31.036421, 29.245838, 29.771517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081118, 29.070616, 30.517632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.683348, 29.097324, 30.484978>,  <30.444687, 29.113350, 30.465385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.683348, 29.097324, 30.484978>,  <31.081118, 29.070616, 30.517632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683348, 29.097324, 30.484978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105318, -0.669446, 0.735357,
		-0.005550, 0.739853, 0.672745,
		-0.994423, 0.066771, -0.081635,
		30.385021, 29.117355, 30.460487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849945, 28.917562, 31.210218>,  <31.081118, 29.070616, 30.517632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849945, 28.917562, 31.210218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.533506, 28.893227, 30.966755>,  <30.343643, 28.878626, 30.820677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.533506, 28.893227, 30.966755>,  <30.849945, 28.917562, 31.210218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533506, 28.893227, 30.966755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423128, -0.664144, 0.616341,
		-0.441735, 0.745125, 0.499658,
		-0.791096, -0.060840, -0.608659,
		30.296177, 28.874975, 30.784157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218948, 29.038435, 31.661394>,  <30.849945, 28.917562, 31.210218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218948, 29.038435, 31.661394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.137032, 28.801788, 31.349483>,  <30.087881, 28.659801, 31.162336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.137032, 28.801788, 31.349483>,  <30.218948, 29.038435, 31.661394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137032, 28.801788, 31.349483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398648, -0.677180, 0.618472,
		-0.893946, 0.437515, -0.097163,
		-0.204794, -0.591615, -0.779777,
		30.075594, 28.624304, 31.115551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.652956, 28.659536, 31.910736>,  <30.218948, 29.038435, 31.661394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.652956, 28.659536, 31.910736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.755089, 28.428997, 31.600220>,  <29.816368, 28.290672, 31.413910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.755089, 28.428997, 31.600220>,  <29.652956, 28.659536, 31.910736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755089, 28.428997, 31.600220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421463, -0.788953, 0.447126,
		-0.870158, 0.213012, -0.444355,
		0.255332, -0.576349, -0.776290,
		29.831688, 28.256092, 31.367332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084461, 28.289455, 31.726788>,  <29.652956, 28.659536, 31.910736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084461, 28.289455, 31.726788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.385256, 28.091698, 31.552391>,  <29.565733, 27.973043, 31.447752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.385256, 28.091698, 31.552391>,  <29.084461, 28.289455, 31.726788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385256, 28.091698, 31.552391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329149, -0.854685, 0.401465,
		-0.571118, -0.158391, -0.805441,
		0.751987, -0.494394, -0.435992,
		29.610851, 27.943378, 31.421593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785414, 27.720510, 31.426321>,  <29.084461, 28.289455, 31.726788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785414, 27.720510, 31.426321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.168146, 27.623417, 31.490265>,  <29.397785, 27.565161, 31.528631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.168146, 27.623417, 31.490265>,  <28.785414, 27.720510, 31.426321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168146, 27.623417, 31.490265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286412, -0.881013, 0.376543,
		0.049438, -0.406073, -0.912502,
		0.956830, -0.242736, 0.159859,
		29.455194, 27.550596, 31.538223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.693417, 25.544201, 29.658020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.463425, 25.722282, 29.932594>,  <35.325432, 25.829132, 30.097340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.463425, 25.722282, 29.932594>,  <35.693417, 25.544201, 29.658020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463425, 25.722282, 29.932594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465108, 0.512378, -0.721902,
		-0.673109, -0.734344, -0.087538,
		-0.574977, 0.445204, 0.686436,
		35.290932, 25.855844, 30.138525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111835, 25.619217, 29.389174>,  <35.693417, 25.544201, 29.658020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111835, 25.619217, 29.389174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.031498, 25.884895, 29.677204>,  <34.983295, 26.044302, 29.850023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.031498, 25.884895, 29.677204>,  <35.111835, 25.619217, 29.389174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031498, 25.884895, 29.677204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312736, 0.653119, -0.689660,
		-0.928363, -0.363706, 0.076544,
		-0.200842, 0.664194, 0.720076,
		34.971245, 26.084154, 29.893227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507233, 25.867558, 29.179203>,  <35.111835, 25.619217, 29.389174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507233, 25.867558, 29.179203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.620762, 26.147308, 29.441597>,  <34.688877, 26.315159, 29.599033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.620762, 26.147308, 29.441597>,  <34.507233, 25.867558, 29.179203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620762, 26.147308, 29.441597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369589, 0.711048, -0.598176,
		-0.884788, -0.072671, 0.460292,
		0.283820, 0.699378, 0.655985,
		34.705906, 26.357122, 29.638393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953976, 26.382736, 29.194904>,  <34.507233, 25.867558, 29.179203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953976, 26.382736, 29.194904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.295708, 26.560310, 29.303009>,  <34.500748, 26.666855, 29.367872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.295708, 26.560310, 29.303009>,  <33.953976, 26.382736, 29.194904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295708, 26.560310, 29.303009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223599, 0.783366, -0.579949,
		-0.469174, 0.435038, 0.768517,
		0.854330, 0.443936, 0.270261,
		34.552006, 26.693491, 29.384087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751869, 26.990570, 29.140831>,  <33.953976, 26.382736, 29.194904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751869, 26.990570, 29.140831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.147293, 27.028679, 29.187603>,  <34.384548, 27.051544, 29.215666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.147293, 27.028679, 29.187603>,  <33.751869, 26.990570, 29.140831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147293, 27.028679, 29.187603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025506, 0.658494, -0.752153,
		-0.148658, 0.746531, 0.648531,
		0.988560, 0.095272, 0.116931,
		34.443863, 27.057261, 29.222683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918011, 27.694284, 29.241964>,  <33.751869, 26.990570, 29.140831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918011, 27.694284, 29.241964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.237438, 27.506306, 29.091530>,  <34.429096, 27.393518, 29.001270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.237438, 27.506306, 29.091530>,  <33.918011, 27.694284, 29.241964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237438, 27.506306, 29.091530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004976, 0.629957, -0.776614,
		0.601884, 0.618307, 0.505402,
		0.798568, -0.469946, -0.376085,
		34.477009, 27.365322, 28.978704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457474, 28.203838, 29.333176>,  <33.918011, 27.694284, 29.241964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457474, 28.203838, 29.333176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589668, 27.949802, 29.053909>,  <34.668983, 27.797380, 28.886349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589668, 27.949802, 29.053909>,  <34.457474, 28.203838, 29.333176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589668, 27.949802, 29.053909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244243, 0.772082, -0.586715,
		0.911660, 0.023379, 0.410279,
		0.330485, -0.635092, -0.698167,
		34.688812, 27.759275, 28.844460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092697, 28.488043, 29.114849>,  <34.457474, 28.203838, 29.333176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092697, 28.488043, 29.114849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.954651, 28.253609, 28.821617>,  <34.871822, 28.112949, 28.645678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.954651, 28.253609, 28.821617>,  <35.092697, 28.488043, 29.114849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954651, 28.253609, 28.821617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275650, 0.683327, -0.676077,
		0.897171, -0.435395, -0.074270,
		-0.345111, -0.586084, -0.733078,
		34.851116, 28.077784, 28.601694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514099, 28.643267, 28.663954>,  <35.092697, 28.488043, 29.114849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514099, 28.643267, 28.663954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.226898, 28.457043, 28.456985>,  <35.054577, 28.345308, 28.332804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.226898, 28.457043, 28.456985>,  <35.514099, 28.643267, 28.663954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226898, 28.457043, 28.456985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185232, 0.588767, -0.786793,
		0.670942, -0.660762, -0.336498,
		-0.718001, -0.465563, -0.517422,
		35.011497, 28.317375, 28.301760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856380, 28.401083, 28.085199>,  <35.514099, 28.643267, 28.663954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856380, 28.401083, 28.085199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.469788, 28.450741, 27.995308>,  <35.237831, 28.480536, 27.941374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.469788, 28.450741, 27.995308>,  <35.856380, 28.401083, 28.085199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469788, 28.450741, 27.995308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256527, 0.502596, -0.825585,
		0.010454, -0.855561, -0.517596,
		-0.966480, 0.124147, -0.224728,
		35.179844, 28.487986, 27.927889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774578, 28.150108, 27.423088>,  <35.856380, 28.401083, 28.085199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774578, 28.150108, 27.423088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.452240, 28.378578, 27.485542>,  <35.258839, 28.515659, 27.523016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.452240, 28.378578, 27.485542>,  <35.774578, 28.150108, 27.423088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452240, 28.378578, 27.485542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121852, 0.418006, -0.900235,
		-0.579456, -0.706423, -0.406446,
		-0.805843, 0.571173, 0.156137,
		35.210487, 28.549931, 27.532383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446220, 28.202282, 26.786074>,  <35.774578, 28.150108, 27.423088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446220, 28.202282, 26.786074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.295811, 28.511375, 26.990620>,  <35.205566, 28.696831, 27.113348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.295811, 28.511375, 26.990620>,  <35.446220, 28.202282, 26.786074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295811, 28.511375, 26.990620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017736, 0.545763, -0.837752,
		-0.926442, -0.324081, -0.191513,
		-0.376020, 0.772732, 0.511366,
		35.183006, 28.743195, 27.144030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104164, 28.590191, 26.245358>,  <35.446220, 28.202282, 26.786074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104164, 28.590191, 26.245358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.074524, 28.835686, 26.559769>,  <35.056740, 28.982983, 26.748415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.074524, 28.835686, 26.559769>,  <35.104164, 28.590191, 26.245358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074524, 28.835686, 26.559769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013184, 0.788727, -0.614602,
		-0.997163, -0.035181, -0.066538,
		-0.074103, 0.613736, 0.786026,
		35.052292, 29.019806, 26.795576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435406, 28.963083, 26.194862>,  <35.104164, 28.590191, 26.245358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435406, 28.963083, 26.194862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.708199, 29.170574, 26.401096>,  <34.871872, 29.295069, 26.524837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.708199, 29.170574, 26.401096>,  <34.435406, 28.963083, 26.194862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708199, 29.170574, 26.401096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071793, 0.749032, -0.658633,
		-0.727841, 0.412157, 0.548064,
		0.681978, 0.518727, 0.515586,
		34.912792, 29.326193, 26.555773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735901, 29.264164, 26.213882>,  <34.435406, 28.963083, 26.194862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735901, 29.264164, 26.213882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.494888, 29.158543, 25.912624>,  <33.350281, 29.095169, 25.731869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.494888, 29.158543, 25.912624>,  <33.735901, 29.264164, 26.213882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494888, 29.158543, 25.912624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350732, -0.760066, 0.547072,
		-0.716897, 0.593781, 0.365352,
		-0.602532, -0.264053, -0.753147,
		33.314129, 29.079327, 25.686680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202778, 29.033358, 26.517214>,  <33.735901, 29.264164, 26.213882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202778, 29.033358, 26.517214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.181324, 28.850945, 26.161877>,  <33.168453, 28.741497, 25.948673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.181324, 28.850945, 26.161877>,  <33.202778, 29.033358, 26.517214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181324, 28.850945, 26.161877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384629, -0.811547, 0.439832,
		-0.921512, 0.365274, -0.131876,
		-0.053635, -0.456034, -0.888345,
		33.165234, 28.714134, 25.895372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798210, 28.631697, 26.728073>,  <33.202778, 29.033358, 26.517214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798210, 28.631697, 26.728073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.929802, 28.460056, 26.391586>,  <33.008755, 28.357073, 26.189693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.929802, 28.460056, 26.391586>,  <32.798210, 28.631697, 26.728073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929802, 28.460056, 26.391586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129988, -0.902899, 0.409728,
		-0.935349, -0.025443, -0.352811,
		0.328977, -0.429099, -0.841218,
		33.028496, 28.331326, 26.139221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347153, 28.077021, 26.567732>,  <32.798210, 28.631697, 26.728073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347153, 28.077021, 26.567732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659348, 27.983532, 26.335796>,  <32.846664, 27.927439, 26.196634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659348, 27.983532, 26.335796>,  <32.347153, 28.077021, 26.567732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659348, 27.983532, 26.335796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081350, -0.957571, 0.276479,
		-0.619857, -0.168619, -0.766385,
		0.780487, -0.233723, -0.579839,
		32.893494, 27.913416, 26.161844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077614, 27.464937, 26.080467>,  <32.347153, 28.077021, 26.567732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077614, 27.464937, 26.080467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.472031, 27.473019, 26.146568>,  <32.708683, 27.477867, 26.186228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.472031, 27.473019, 26.146568>,  <32.077614, 27.464937, 26.080467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472031, 27.473019, 26.146568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050798, -0.908760, 0.414215,
		0.158542, -0.416829, -0.895052,
		0.986045, 0.020203, 0.165251,
		32.767845, 27.479080, 26.196144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268681, 26.831120, 25.803484>,  <32.077614, 27.464937, 26.080467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268681, 26.831120, 25.803484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577023, 26.933338, 26.036884>,  <32.762028, 26.994669, 26.176926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577023, 26.933338, 26.036884>,  <32.268681, 26.831120, 25.803484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577023, 26.933338, 26.036884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036846, -0.896584, 0.441338,
		0.635941, -0.361708, -0.681723,
		0.770857, 0.255546, 0.583503,
		32.808281, 27.010002, 26.211935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747070, 26.239973, 25.849411>,  <32.268681, 26.831120, 25.803484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747070, 26.239973, 25.849411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.878368, 26.451721, 26.162338>,  <32.957146, 26.578770, 26.350096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.878368, 26.451721, 26.162338>,  <32.747070, 26.239973, 25.849411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878368, 26.451721, 26.162338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063640, -0.813932, 0.577464,
		0.942448, -0.239335, -0.233477,
		0.328242, 0.529371, 0.782319,
		32.976841, 26.610533, 26.397034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270386, 25.817223, 26.114395>,  <32.747070, 26.239973, 25.849411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270386, 25.817223, 26.114395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149807, 26.069359, 26.400555>,  <33.077461, 26.220640, 26.572250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149807, 26.069359, 26.400555>,  <33.270386, 25.817223, 26.114395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149807, 26.069359, 26.400555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042495, -0.740676, 0.670518,
		0.952535, 0.232527, 0.196489,
		-0.301448, 0.630342, 0.715401,
		33.059372, 26.258461, 26.615175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746265, 25.670151, 26.696381>,  <33.270386, 25.817223, 26.114395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746265, 25.670151, 26.696381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.448811, 25.880356, 26.861710>,  <33.270336, 26.006479, 26.960907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.448811, 25.880356, 26.861710>,  <33.746265, 25.670151, 26.696381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448811, 25.880356, 26.861710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004314, -0.621969, 0.783030,
		0.668566, 0.580509, 0.464788,
		-0.743640, 0.525513, 0.413323,
		33.225719, 26.038010, 26.985706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007729, 25.946087, 27.288624>,  <33.746265, 25.670151, 26.696381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007729, 25.946087, 27.288624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.612179, 25.891254, 27.311722>,  <33.374847, 25.858355, 27.325581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.612179, 25.891254, 27.311722>,  <34.007729, 25.946087, 27.288624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612179, 25.891254, 27.311722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131629, -0.625653, 0.768916,
		-0.069276, 0.767963, 0.636736,
		-0.988875, -0.137081, 0.057743,
		33.315517, 25.850130, 27.329044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860561, 25.910013, 27.983150>,  <34.007729, 25.946087, 27.288624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860561, 25.910013, 27.983150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.502022, 25.775242, 27.867886>,  <33.286900, 25.694380, 27.798727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.502022, 25.775242, 27.867886>,  <33.860561, 25.910013, 27.983150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502022, 25.775242, 27.867886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060231, -0.551403, 0.832062,
		-0.439239, 0.763174, 0.473955,
		-0.896349, -0.336928, -0.288164,
		33.233116, 25.674164, 27.781437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476440, 25.882225, 28.595121>,  <33.860561, 25.910013, 27.983150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476440, 25.882225, 28.595121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.305676, 25.631100, 28.334785>,  <33.203217, 25.480425, 28.178583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.305676, 25.631100, 28.334785>,  <33.476440, 25.882225, 28.595121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305676, 25.631100, 28.334785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194859, -0.638949, 0.744160,
		-0.883049, 0.444513, 0.150440,
		-0.426912, -0.627816, -0.650841,
		33.177601, 25.442755, 28.139534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867119, 25.786322, 28.889807>,  <33.476440, 25.882225, 28.595121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867119, 25.786322, 28.889807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.921566, 25.479305, 28.639256>,  <32.954235, 25.295095, 28.488924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.921566, 25.479305, 28.639256>,  <32.867119, 25.786322, 28.889807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921566, 25.479305, 28.639256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204156, -0.640426, 0.740388,
		-0.969428, 0.027096, -0.243874,
		0.136121, -0.767542, -0.626379,
		32.962402, 25.249043, 28.451342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215893, 25.360920, 28.798162>,  <32.867119, 25.786322, 28.889807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215893, 25.360920, 28.798162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.528603, 25.124107, 28.719852>,  <32.716228, 24.982019, 28.672867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.528603, 25.124107, 28.719852>,  <32.215893, 25.360920, 28.798162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528603, 25.124107, 28.719852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290749, -0.623831, 0.725465,
		-0.551630, -0.510227, -0.659828,
		0.781773, -0.592033, -0.195776,
		32.763134, 24.946497, 28.661119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512852, 25.316732, 28.660442>,  <32.215893, 25.360920, 28.798162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512852, 25.316732, 28.660442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.168896, 25.373871, 28.856476>,  <30.962523, 25.408154, 28.974096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.168896, 25.373871, 28.856476>,  <31.512852, 25.316732, 28.660442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168896, 25.373871, 28.856476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210690, 0.775153, -0.595606,
		-0.464970, -0.615413, -0.636451,
		-0.859891, 0.142845, 0.490084,
		30.910929, 25.416725, 29.003502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028996, 25.260155, 28.078348>,  <31.512852, 25.316732, 28.660442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028996, 25.260155, 28.078348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.881205, 25.464310, 28.388958>,  <30.792530, 25.586803, 28.575323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.881205, 25.464310, 28.388958>,  <31.028996, 25.260155, 28.078348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881205, 25.464310, 28.388958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200855, 0.772035, -0.603009,
		-0.907272, -0.378767, -0.182735,
		-0.369478, 0.510390, 0.776523,
		30.770361, 25.617426, 28.621916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468952, 25.447380, 27.835455>,  <31.028996, 25.260155, 28.078348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468952, 25.447380, 27.835455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.504763, 25.718479, 28.127384>,  <30.526249, 25.881138, 28.302542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.504763, 25.718479, 28.127384>,  <30.468952, 25.447380, 27.835455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504763, 25.718479, 28.127384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213004, 0.728842, -0.650706,
		-0.972941, -0.097200, 0.209614,
		0.089526, 0.677748, 0.729824,
		30.531620, 25.921803, 28.346331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903755, 25.848097, 27.840147>,  <30.468952, 25.447380, 27.835455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903755, 25.848097, 27.840147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.172516, 26.070518, 28.035843>,  <30.333773, 26.203972, 28.153261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.172516, 26.070518, 28.035843>,  <29.903755, 25.848097, 27.840147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172516, 26.070518, 28.035843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358927, 0.822273, -0.441631,
		-0.647859, 0.121130, 0.752068,
		0.671901, 0.556052, 0.489240,
		30.374086, 26.237333, 28.182615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530855, 26.473610, 27.954536>,  <29.903755, 25.848097, 27.840147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530855, 26.473610, 27.954536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.918348, 26.570820, 27.974533>,  <30.150845, 26.629145, 27.986530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.918348, 26.570820, 27.974533>,  <29.530855, 26.473610, 27.954536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918348, 26.570820, 27.974533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170522, 0.798490, -0.577352,
		-0.180226, 0.550775, 0.814964,
		0.968732, 0.243023, 0.049989,
		30.208967, 26.643726, 27.989531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552238, 27.160423, 28.103302>,  <29.530855, 26.473610, 27.954536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552238, 27.160423, 28.103302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.902040, 27.073811, 27.929703>,  <30.111921, 27.021843, 27.825542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.902040, 27.073811, 27.929703>,  <29.552238, 27.160423, 28.103302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902040, 27.073811, 27.929703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105103, 0.788947, -0.605406,
		0.473491, 0.575045, 0.667180,
		0.874505, -0.216531, -0.433999,
		30.164392, 27.008852, 27.799503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827740, 27.782753, 28.111071>,  <29.552238, 27.160423, 28.103302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827740, 27.782753, 28.111071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.084660, 27.593311, 27.870022>,  <30.238811, 27.479647, 27.725393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.084660, 27.593311, 27.870022>,  <29.827740, 27.782753, 28.111071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084660, 27.593311, 27.870022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029427, 0.800903, -0.598071,
		0.765890, 0.366407, 0.528355,
		0.642298, -0.473604, -0.602621,
		30.277349, 27.451229, 27.689236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339195, 28.258844, 27.933205>,  <29.827740, 27.782753, 28.111071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339195, 28.258844, 27.933205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.313074, 27.990742, 27.637505>,  <30.297401, 27.829880, 27.460085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.313074, 27.990742, 27.637505>,  <30.339195, 28.258844, 27.933205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313074, 27.990742, 27.637505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037853, 0.738636, -0.673041,
		0.997147, -0.071935, -0.022865,
		-0.065305, -0.670255, -0.739252,
		30.293482, 27.789665, 27.415730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789986, 28.394081, 27.392275>,  <30.339195, 28.258844, 27.933205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789986, 28.394081, 27.392275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.526047, 28.169159, 27.192909>,  <30.367683, 28.034206, 27.073290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.526047, 28.169159, 27.192909>,  <30.789986, 28.394081, 27.392275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526047, 28.169159, 27.192909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141456, 0.558493, -0.817359,
		0.737967, -0.609833, -0.288977,
		-0.659845, -0.562306, -0.498414,
		30.328093, 28.000467, 27.043385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115686, 28.038385, 26.725218>,  <30.789986, 28.394081, 27.392275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115686, 28.038385, 26.725218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.719090, 28.041222, 26.673225>,  <30.481133, 28.042923, 26.642031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.719090, 28.041222, 26.673225>,  <31.115686, 28.038385, 26.725218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719090, 28.041222, 26.673225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116200, 0.498264, -0.859203,
		0.058673, -0.866996, -0.494849,
		-0.991491, 0.007089, -0.129980,
		30.421642, 28.043348, 26.634232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091265, 28.124220, 26.088907>,  <31.115686, 28.038385, 26.725218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091265, 28.124220, 26.088907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.710281, 28.194515, 26.188461>,  <30.481691, 28.236692, 26.248194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.710281, 28.194515, 26.188461>,  <31.091265, 28.124220, 26.088907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710281, 28.194515, 26.188461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032918, 0.752744, -0.657490,
		-0.302891, -0.634424, -0.711171,
		-0.952457, 0.175738, 0.248883,
		30.424545, 28.247236, 26.263126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796967, 28.266891, 25.447014>,  <31.091265, 28.124220, 26.088907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796967, 28.266891, 25.447014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.544672, 28.430656, 25.710697>,  <30.393295, 28.528915, 25.868908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.544672, 28.430656, 25.710697>,  <30.796967, 28.266891, 25.447014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544672, 28.430656, 25.710697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059263, 0.821603, -0.566971,
		-0.773732, -0.396675, -0.493951,
		-0.630735, 0.409410, 0.659209,
		30.355452, 28.553480, 25.908461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242643, 28.393005, 25.053240>,  <30.796967, 28.266891, 25.447014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242643, 28.393005, 25.053240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.190016, 28.644909, 25.359467>,  <30.158440, 28.796051, 25.543203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.190016, 28.644909, 25.359467>,  <30.242643, 28.393005, 25.053240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190016, 28.644909, 25.359467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061393, 0.765622, -0.640355,
		-0.989404, -0.131250, -0.062067,
		-0.131567, 0.629759, 0.765567,
		30.150545, 28.833838, 25.589136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556305, 28.735638, 24.969830>,  <30.242643, 28.393005, 25.053240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556305, 28.735638, 24.969830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.774796, 28.971237, 25.208061>,  <29.905890, 29.112597, 25.351000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.774796, 28.971237, 25.208061>,  <29.556305, 28.735638, 24.969830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774796, 28.971237, 25.208061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038962, 0.692389, -0.720472,
		-0.836731, 0.416746, 0.355252,
		0.546226, 0.589000, 0.595580,
		29.938663, 29.147938, 25.386736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.045959, 35.173634, 14.634303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.414661, 35.180367, 14.789264>,  <44.635883, 35.184406, 14.882240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.414661, 35.180367, 14.789264>,  <44.045959, 35.173634, 14.634303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414661, 35.180367, 14.789264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371104, -0.251433, 0.893903,
		0.112452, -0.967728, -0.225513,
		0.921757, 0.016832, 0.387402,
		44.691189, 35.185417, 14.905484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096752, 34.516968, 14.947518>,  <44.045959, 35.173634, 14.634303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096752, 34.516968, 14.947518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.356647, 34.760704, 15.129306>,  <44.512585, 34.906944, 15.238379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.356647, 34.760704, 15.129306>,  <44.096752, 34.516968, 14.947518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356647, 34.760704, 15.129306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289360, -0.354592, 0.889120,
		0.702927, -0.709203, -0.054074,
		0.649741, 0.609340, 0.454468,
		44.551571, 34.943504, 15.265646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169807, 34.218319, 15.628161>,  <44.096752, 34.516968, 14.947518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169807, 34.218319, 15.628161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.374157, 34.558407, 15.678966>,  <44.496765, 34.762459, 15.709448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.374157, 34.558407, 15.678966>,  <44.169807, 34.218319, 15.628161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374157, 34.558407, 15.678966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059596, -0.112361, 0.991879,
		0.857588, -0.514294, -0.006733,
		0.510873, 0.850222, 0.127010,
		44.527420, 34.813473, 15.717069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761196, 34.121696, 16.119789>,  <44.169807, 34.218319, 15.628161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761196, 34.121696, 16.119789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.631039, 34.499752, 16.108231>,  <44.552944, 34.726585, 16.101295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.631039, 34.499752, 16.108231>,  <44.761196, 34.121696, 16.119789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631039, 34.499752, 16.108231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193337, -0.036588, 0.980450,
		0.925601, 0.324622, 0.194636,
		-0.325397, 0.945136, -0.028896,
		44.533421, 34.783295, 16.099562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868069, 34.325035, 16.746859>,  <44.761196, 34.121696, 16.119789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.868069, 34.325035, 16.746859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.620300, 34.612991, 16.621593>,  <44.471638, 34.785767, 16.546434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.620300, 34.612991, 16.621593>,  <44.868069, 34.325035, 16.746859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.620300, 34.612991, 16.621593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367861, 0.086246, 0.925872,
		0.693539, 0.688705, 0.211398,
		-0.619421, 0.719894, -0.313163,
		44.434475, 34.828960, 16.527645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.953781, 34.944923, 17.259262>,  <44.868069, 34.325035, 16.746859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.953781, 34.944923, 17.259262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.603859, 35.000694, 17.073673>,  <44.393906, 35.034157, 16.962320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.603859, 35.000694, 17.073673>,  <44.953781, 34.944923, 17.259262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603859, 35.000694, 17.073673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434559, 0.197549, 0.878711,
		0.214171, 0.970327, -0.112230,
		-0.874808, 0.139424, -0.463974,
		44.341415, 35.042522, 16.934481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.709286, 35.546356, 17.394417>,  <44.953781, 34.944923, 17.259262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.709286, 35.546356, 17.394417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.383308, 35.330078, 17.310974>,  <44.187721, 35.200314, 17.260908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.383308, 35.330078, 17.310974>,  <44.709286, 35.546356, 17.394417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383308, 35.330078, 17.310974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459603, 0.383702, 0.800961,
		-0.353029, 0.748616, -0.561199,
		-0.814945, -0.540692, -0.208608,
		44.138824, 35.167870, 17.248392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133659, 35.944279, 17.615238>,  <44.709286, 35.546356, 17.394417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133659, 35.944279, 17.615238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.988014, 35.573856, 17.575565>,  <43.900627, 35.351601, 17.551762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.988014, 35.573856, 17.575565>,  <44.133659, 35.944279, 17.615238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.988014, 35.573856, 17.575565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515367, 0.111632, 0.849668,
		-0.775771, 0.360488, -0.517907,
		-0.364110, -0.926060, -0.099183,
		43.878780, 35.296040, 17.545811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510296, 36.005383, 17.814575>,  <44.133659, 35.944279, 17.615238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510296, 36.005383, 17.814575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.535542, 35.607510, 17.847153>,  <43.550690, 35.368786, 17.866699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.535542, 35.607510, 17.847153>,  <43.510296, 36.005383, 17.814575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535542, 35.607510, 17.847153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441991, 0.045312, 0.895874,
		-0.894797, -0.092537, -0.436779,
		0.063110, -0.994678, 0.081446,
		43.554474, 35.309105, 17.871586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023624, 35.965115, 18.201906>,  <43.510296, 36.005383, 17.814575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023624, 35.965115, 18.201906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.194725, 35.605076, 18.235027>,  <43.297386, 35.389053, 18.254900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.194725, 35.605076, 18.235027>,  <43.023624, 35.965115, 18.201906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194725, 35.605076, 18.235027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381041, -0.096492, 0.919509,
		-0.819656, -0.424873, -0.384248,
		0.427751, -0.900096, 0.082804,
		43.323051, 35.335049, 18.259869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430614, 35.394535, 18.331781>,  <43.023624, 35.965115, 18.201906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430614, 35.394535, 18.331781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.795902, 35.282547, 18.450203>,  <43.015076, 35.215355, 18.521255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.795902, 35.282547, 18.450203>,  <42.430614, 35.394535, 18.331781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795902, 35.282547, 18.450203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354080, -0.185705, 0.916592,
		-0.201636, -0.941877, -0.268719,
		0.913220, -0.279966, 0.296055,
		43.069866, 35.198555, 18.539019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331696, 34.719177, 18.754936>,  <42.430614, 35.394535, 18.331781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331696, 34.719177, 18.754936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.686977, 34.865978, 18.865501>,  <42.900146, 34.954060, 18.931841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.686977, 34.865978, 18.865501>,  <42.331696, 34.719177, 18.754936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686977, 34.865978, 18.865501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226305, -0.174110, 0.958369,
		0.399850, -0.913780, -0.071591,
		0.888204, 0.367003, 0.276411,
		42.953438, 34.976078, 18.948425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683205, 34.206474, 19.282038>,  <42.331696, 34.719177, 18.754936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683205, 34.206474, 19.282038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.957630, 34.495960, 19.311844>,  <43.122284, 34.669651, 19.329727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.957630, 34.495960, 19.311844>,  <42.683205, 34.206474, 19.282038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957630, 34.495960, 19.311844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086468, -0.182807, 0.979339,
		0.722384, -0.665446, -0.187996,
		0.686064, 0.723715, 0.074517,
		43.163448, 34.713074, 19.334200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261284, 33.940601, 19.468794>,  <42.683205, 34.206474, 19.282038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261284, 33.940601, 19.468794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.269920, 34.319847, 19.595669>,  <43.275101, 34.547394, 19.671793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.269920, 34.319847, 19.595669>,  <43.261284, 33.940601, 19.468794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269920, 34.319847, 19.595669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079723, -0.317884, 0.944772,
		0.996583, 0.004888, -0.082450,
		0.021591, 0.948117, 0.317187,
		43.276398, 34.604282, 19.690825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.698460, 33.919655, 20.077448>,  <43.261284, 33.940601, 19.468794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.698460, 33.919655, 20.077448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.483990, 34.254547, 20.120457>,  <43.355309, 34.455482, 20.146261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.483990, 34.254547, 20.120457>,  <43.698460, 33.919655, 20.077448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483990, 34.254547, 20.120457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133029, -0.209598, 0.968696,
		0.833556, 0.505090, 0.223757,
		-0.536178, 0.837229, 0.107521,
		43.323135, 34.505714, 20.152714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869930, 34.141510, 20.763628>,  <43.698460, 33.919655, 20.077448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869930, 34.141510, 20.763628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.517376, 34.311359, 20.680813>,  <43.305843, 34.413269, 20.631124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.517376, 34.311359, 20.680813>,  <43.869930, 34.141510, 20.763628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.517376, 34.311359, 20.680813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260575, -0.071428, 0.962808,
		0.394039, 0.902550, 0.173601,
		-0.881382, 0.424620, -0.207036,
		43.252960, 34.438744, 20.618702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549091, 34.409027, 21.353748>,  <43.869930, 34.141510, 20.763628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549091, 34.409027, 21.353748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.208778, 34.369827, 21.147232>,  <43.004589, 34.346310, 21.023321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.208778, 34.369827, 21.147232>,  <43.549091, 34.409027, 21.353748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208778, 34.369827, 21.147232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519578, 0.009654, 0.854368,
		-0.078741, 0.995140, -0.059131,
		-0.850787, -0.097997, -0.516293,
		42.953541, 34.340427, 20.992344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026657, 34.625465, 21.869246>,  <43.549091, 34.409027, 21.353748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026657, 34.625465, 21.869246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.777447, 34.535164, 21.569679>,  <42.627922, 34.480984, 21.389940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.777447, 34.535164, 21.569679>,  <43.026657, 34.625465, 21.869246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777447, 34.535164, 21.569679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732599, -0.167110, 0.659828,
		-0.274109, 0.959745, -0.061272,
		-0.623027, -0.225753, -0.748915,
		42.590538, 34.467438, 21.345005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319695, 35.055004, 21.977468>,  <43.026657, 34.625465, 21.869246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319695, 35.055004, 21.977468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.265274, 34.725780, 21.756901>,  <42.232624, 34.528244, 21.624561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.265274, 34.725780, 21.756901>,  <42.319695, 35.055004, 21.977468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265274, 34.725780, 21.756901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690581, -0.320298, 0.648466,
		-0.710345, 0.469021, -0.524814,
		-0.136047, -0.823060, -0.551419,
		42.224461, 34.478863, 21.591475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623108, 35.049885, 21.949671>,  <42.319695, 35.055004, 21.977468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623108, 35.049885, 21.949671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.752892, 34.678802, 21.875820>,  <41.830761, 34.456154, 21.831511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.752892, 34.678802, 21.875820>,  <41.623108, 35.049885, 21.949671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752892, 34.678802, 21.875820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665037, -0.362534, 0.652912,
		-0.672643, -0.089063, -0.734587,
		0.324463, -0.927705, -0.184626,
		41.850231, 34.400490, 21.820433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952293, 34.599060, 21.843718>,  <41.623108, 35.049885, 21.949671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952293, 34.599060, 21.843718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.277531, 34.416931, 21.988804>,  <41.472672, 34.307655, 22.075855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.277531, 34.416931, 21.988804>,  <40.952293, 34.599060, 21.843718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277531, 34.416931, 21.988804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577105, -0.548756, 0.604827,
		-0.076347, -0.701107, -0.708957,
		0.813093, -0.455320, 0.362717,
		41.521458, 34.280334, 22.097618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703266, 34.570309, 21.235193>,  <40.952293, 34.599060, 21.843718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703266, 34.570309, 21.235193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.338345, 34.732487, 21.258266>,  <40.119392, 34.829792, 21.272110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.338345, 34.732487, 21.258266>,  <40.703266, 34.570309, 21.235193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338345, 34.732487, 21.258266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054034, 0.258790, -0.964421,
		-0.405944, -0.876724, -0.258001,
		-0.912299, 0.405442, 0.057682,
		40.064655, 34.854118, 21.275572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490173, 34.448711, 20.556143>,  <40.703266, 34.570309, 21.235193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490173, 34.448711, 20.556143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.214142, 34.699944, 20.699974>,  <40.048523, 34.850685, 20.786272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.214142, 34.699944, 20.699974>,  <40.490173, 34.448711, 20.556143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214142, 34.699944, 20.699974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063070, 0.442757, -0.894421,
		-0.720977, -0.639903, -0.265926,
		-0.690083, 0.628084, 0.359576,
		40.007118, 34.888371, 20.807846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929028, 34.519539, 20.048868>,  <40.490173, 34.448711, 20.556143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929028, 34.519539, 20.048868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.949814, 34.848507, 20.275471>,  <39.962284, 35.045887, 20.411432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.949814, 34.848507, 20.275471>,  <39.929028, 34.519539, 20.048868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949814, 34.848507, 20.275471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097892, 0.560346, -0.822453,
		-0.993839, 0.098197, -0.051388,
		0.051967, 0.822417, 0.566507,
		39.965405, 35.095234, 20.445423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463047, 35.054276, 19.708767>,  <39.929028, 34.519539, 20.048868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463047, 35.054276, 19.708767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.699131, 35.259037, 19.958439>,  <39.840782, 35.381893, 20.108242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.699131, 35.259037, 19.958439>,  <39.463047, 35.054276, 19.708767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699131, 35.259037, 19.958439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092464, 0.725263, -0.682235,
		-0.801934, 0.460379, 0.380727,
		0.590214, 0.511904, 0.624181,
		39.876194, 35.412609, 20.145693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272404, 35.719379, 19.595371>,  <39.463047, 35.054276, 19.708767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272404, 35.719379, 19.595371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.623020, 35.750793, 19.785324>,  <39.833389, 35.769642, 19.899296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.623020, 35.750793, 19.785324>,  <39.272404, 35.719379, 19.595371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623020, 35.750793, 19.785324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313860, 0.654744, -0.687606,
		-0.364929, 0.751760, 0.549258,
		0.876538, 0.078538, 0.474882,
		39.885983, 35.774353, 19.927790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440315, 36.394470, 19.603718>,  <39.272404, 35.719379, 19.595371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440315, 36.394470, 19.603718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.797119, 36.220390, 19.652580>,  <40.011200, 36.115940, 19.681898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.797119, 36.220390, 19.652580>,  <39.440315, 36.394470, 19.603718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797119, 36.220390, 19.652580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371193, 0.551030, -0.747384,
		0.257950, 0.712016, 0.653066,
		0.892008, -0.435201, 0.122157,
		40.064720, 36.089828, 19.689228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883961, 36.918774, 19.619404>,  <39.440315, 36.394470, 19.603718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883961, 36.918774, 19.619404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.086555, 36.592010, 19.509033>,  <40.208111, 36.395954, 19.442812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.086555, 36.592010, 19.509033>,  <39.883961, 36.918774, 19.619404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086555, 36.592010, 19.509033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357983, 0.490347, -0.794612,
		0.784422, 0.303685, 0.540794,
		0.506488, -0.816906, -0.275924,
		40.238503, 36.346939, 19.426256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345181, 37.251839, 19.221960>,  <39.883961, 36.918774, 19.619404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345181, 37.251839, 19.221960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.428902, 36.870399, 19.135384>,  <40.479134, 36.641537, 19.083437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.428902, 36.870399, 19.135384>,  <40.345181, 37.251839, 19.221960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428902, 36.870399, 19.135384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489382, 0.293782, -0.821095,
		0.846579, 0.065938, 0.528163,
		0.209306, -0.953595, -0.216440,
		40.491695, 36.584320, 19.070452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106949, 37.208492, 19.008089>,  <40.345181, 37.251839, 19.221960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106949, 37.208492, 19.008089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.895870, 36.902817, 18.859741>,  <40.769222, 36.719410, 18.770733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.895870, 36.902817, 18.859741>,  <41.106949, 37.208492, 19.008089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895870, 36.902817, 18.859741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302803, 0.238692, -0.922679,
		0.793627, -0.599198, 0.105442,
		-0.527699, -0.764191, -0.370871,
		40.737560, 36.673561, 18.748480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560516, 36.916302, 18.474806>,  <41.106949, 37.208492, 19.008089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560516, 36.916302, 18.474806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.198421, 36.772377, 18.384399>,  <40.981163, 36.686024, 18.330156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.198421, 36.772377, 18.384399>,  <41.560516, 36.916302, 18.474806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198421, 36.772377, 18.384399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183669, 0.148312, -0.971735,
		0.383162, -0.921162, -0.068171,
		-0.905236, -0.359811, -0.226017,
		40.926849, 36.664433, 18.316595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672455, 36.467285, 17.924038>,  <41.560516, 36.916302, 18.474806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672455, 36.467285, 17.924038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.284489, 36.563972, 17.912422>,  <41.051708, 36.621986, 17.905453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.284489, 36.563972, 17.912422>,  <41.672455, 36.467285, 17.924038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284489, 36.563972, 17.912422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057446, 0.111311, -0.992124,
		-0.236587, -0.963940, -0.121848,
		-0.969911, 0.241723, -0.029040,
		40.993515, 36.636490, 17.903709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418537, 36.026546, 17.518717>,  <41.672455, 36.467285, 17.924038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418537, 36.026546, 17.518717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.167686, 36.336769, 17.489815>,  <41.017178, 36.522903, 17.472473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.167686, 36.336769, 17.489815>,  <41.418537, 36.026546, 17.518717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167686, 36.336769, 17.489815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202641, 0.072875, -0.976538,
		-0.752099, -0.627052, -0.202862,
		-0.627123, 0.775561, -0.072257,
		40.979549, 36.569439, 17.468138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075756, 35.948677, 16.843220>,  <41.418537, 36.026546, 17.518717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075756, 35.948677, 16.843220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.006401, 36.333950, 16.925400>,  <40.964787, 36.565113, 16.974709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.006401, 36.333950, 16.925400>,  <41.075756, 35.948677, 16.843220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006401, 36.333950, 16.925400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009424, 0.210222, -0.977608,
		-0.984808, -0.167571, -0.045528,
		-0.173390, 0.963186, 0.205449,
		40.954384, 36.622906, 16.987034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772102, 36.085445, 16.219450>,  <41.075756, 35.948677, 16.843220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772102, 36.085445, 16.219450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.898724, 36.425102, 16.388565>,  <40.974697, 36.628895, 16.490034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.898724, 36.425102, 16.388565>,  <40.772102, 36.085445, 16.219450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898724, 36.425102, 16.388565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253318, 0.353845, -0.900347,
		-0.914124, 0.392109, -0.103091,
		0.316556, 0.849143, 0.422786,
		40.993690, 36.679844, 16.515402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547272, 36.544750, 15.710698>,  <40.772102, 36.085445, 16.219450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547272, 36.544750, 15.710698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.824074, 36.715466, 15.943587>,  <40.990154, 36.817894, 16.083321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.824074, 36.715466, 15.943587>,  <40.547272, 36.544750, 15.710698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824074, 36.715466, 15.943587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444808, 0.383143, -0.809535,
		-0.568577, 0.819177, 0.075295,
		0.692001, 0.426791, 0.582223,
		41.031673, 36.843502, 16.118254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648979, 37.222813, 15.427332>,  <40.547272, 36.544750, 15.710698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648979, 37.222813, 15.427332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.989525, 37.159176, 15.627276>,  <41.193851, 37.120995, 15.747243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.989525, 37.159176, 15.627276>,  <40.648979, 37.222813, 15.427332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989525, 37.159176, 15.627276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523618, 0.315052, -0.791559,
		-0.031553, 0.935645, 0.351528,
		0.851369, -0.159090, 0.499862,
		41.244934, 37.111450, 15.777235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058041, 37.774696, 15.176353>,  <40.648979, 37.222813, 15.427332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058041, 37.774696, 15.176353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.299324, 37.496559, 15.332627>,  <41.444096, 37.329678, 15.426392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.299324, 37.496559, 15.332627>,  <41.058041, 37.774696, 15.176353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299324, 37.496559, 15.332627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589324, 0.058507, -0.805775,
		0.537434, 0.716291, 0.445076,
		0.603210, -0.695345, 0.390683,
		41.480286, 37.287956, 15.449832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794827, 38.028309, 15.097056>,  <41.058041, 37.774696, 15.176353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794827, 38.028309, 15.097056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.823956, 37.634247, 15.159242>,  <41.841434, 37.397808, 15.196552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.823956, 37.634247, 15.159242>,  <41.794827, 38.028309, 15.097056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823956, 37.634247, 15.159242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787622, -0.038817, -0.614935,
		0.611840, 0.167229, 0.773101,
		0.072825, -0.985154, 0.155463,
		41.845802, 37.338699, 15.205880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497292, 37.903080, 15.219497>,  <41.794827, 38.028309, 15.097056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497292, 37.903080, 15.219497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.340065, 37.553867, 15.104041>,  <42.245728, 37.344341, 15.034767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.340065, 37.553867, 15.104041>,  <42.497292, 37.903080, 15.219497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340065, 37.553867, 15.104041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693077, -0.075008, -0.716951,
		0.604271, -0.481858, 0.634562,
		-0.393066, -0.873033, -0.288639,
		42.222145, 37.291958, 15.017449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998436, 37.459064, 15.276670>,  <42.497292, 37.903080, 15.219497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998436, 37.459064, 15.276670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.738857, 37.285160, 15.026917>,  <42.583111, 37.180817, 14.877067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.738857, 37.285160, 15.026917>,  <42.998436, 37.459064, 15.276670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738857, 37.285160, 15.026917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728881, -0.119930, -0.674054,
		0.218168, -0.892526, 0.394716,
		-0.648949, -0.434758, -0.624380,
		42.544174, 37.154732, 14.839603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189777, 36.797344, 15.075390>,  <42.998436, 37.459064, 15.276670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189777, 36.797344, 15.075390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.959324, 36.920578, 14.772561>,  <42.821053, 36.994518, 14.590864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.959324, 36.920578, 14.772561>,  <43.189777, 36.797344, 15.075390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959324, 36.920578, 14.772561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631136, -0.420870, -0.651563,
		-0.519365, -0.853201, 0.048033,
		-0.576130, 0.308084, -0.757072,
		42.786484, 37.013004, 14.545440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.818899, 26.846523, 31.450666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.173748, 26.965374, 31.591934>,  <29.386658, 27.036684, 31.676695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.173748, 26.965374, 31.591934>,  <28.818899, 26.846523, 31.450666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173748, 26.965374, 31.591934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169466, -0.921461, 0.349559,
		0.429296, -0.250251, -0.867802,
		0.887123, 0.297127, 0.353170,
		29.439884, 27.054512, 31.697886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390551, 26.370277, 31.186716>,  <28.818899, 26.846523, 31.450666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390551, 26.370277, 31.186716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.505411, 26.526115, 31.536747>,  <29.574327, 26.619617, 31.746765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.505411, 26.526115, 31.536747>,  <29.390551, 26.370277, 31.186716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505411, 26.526115, 31.536747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084360, -0.920287, 0.382041,
		0.954163, -0.035883, -0.297130,
		0.287153, 0.389596, 0.875076,
		29.591557, 26.642994, 31.799271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136665, 26.056183, 31.203482>,  <29.390551, 26.370277, 31.186716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136665, 26.056183, 31.203482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.063417, 26.189163, 31.573551>,  <30.019468, 26.268951, 31.795593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.063417, 26.189163, 31.573551>,  <30.136665, 26.056183, 31.203482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063417, 26.189163, 31.573551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056517, -0.935970, 0.347515,
		0.981465, 0.115925, 0.152605,
		-0.183119, 0.332449, 0.925173,
		30.008482, 26.288898, 31.851103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594431, 25.704538, 31.670656>,  <30.136665, 26.056183, 31.203482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594431, 25.704538, 31.670656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.305403, 25.846874, 31.907730>,  <30.131987, 25.932276, 32.049973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.305403, 25.846874, 31.907730>,  <30.594431, 25.704538, 31.670656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305403, 25.846874, 31.907730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056438, -0.824120, 0.563597,
		0.688992, 0.440687, 0.575401,
		-0.722569, 0.355839, 0.592683,
		30.088633, 25.953627, 32.085533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761660, 25.684097, 32.393154>,  <30.594431, 25.704538, 31.670656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761660, 25.684097, 32.393154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.361660, 25.683983, 32.393433>,  <30.121660, 25.683914, 32.393600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.361660, 25.683983, 32.393433>,  <30.761660, 25.684097, 32.393154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361660, 25.683983, 32.393433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000605, -0.857047, 0.515238,
		0.000450, 0.515238, 0.857047,
		-1.000000, -0.000286, 0.000697,
		30.061661, 25.683897, 32.393642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626888, 25.231730, 32.903137>,  <30.761660, 25.684097, 32.393154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626888, 25.231730, 32.903137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.265133, 25.239216, 32.732616>,  <30.048080, 25.243708, 32.630302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.265133, 25.239216, 32.732616>,  <30.626888, 25.231730, 32.903137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265133, 25.239216, 32.732616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293607, -0.752242, 0.589853,
		-0.309642, 0.658621, 0.685814,
		-0.904388, 0.018717, -0.426301,
		29.993816, 25.244831, 32.604725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241705, 25.112904, 33.470341>,  <30.626888, 25.231730, 32.903137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241705, 25.112904, 33.470341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.013247, 25.037701, 33.150730>,  <29.876171, 24.992579, 32.958965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.013247, 25.037701, 33.150730>,  <30.241705, 25.112904, 33.470341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013247, 25.037701, 33.150730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313298, -0.849795, 0.423901,
		-0.758707, 0.492443, 0.426455,
		-0.571146, -0.188009, -0.799027,
		29.841902, 24.981298, 32.911022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549606, 24.995684, 33.673431>,  <30.241705, 25.112904, 33.470341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549606, 24.995684, 33.673431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.572784, 24.810276, 33.319756>,  <29.586691, 24.699032, 33.107552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.572784, 24.810276, 33.319756>,  <29.549606, 24.995684, 33.673431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572784, 24.810276, 33.319756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346397, -0.839989, 0.417646,
		-0.936297, 0.282081, -0.209233,
		0.057943, -0.463518, -0.884191,
		29.590168, 24.671221, 33.054497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046375, 24.530130, 33.691639>,  <29.549606, 24.995684, 33.673431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046375, 24.530130, 33.691639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.270212, 24.378643, 33.396767>,  <29.404514, 24.287750, 33.219845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.270212, 24.378643, 33.396767>,  <29.046375, 24.530130, 33.691639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270212, 24.378643, 33.396767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233896, -0.925494, 0.297913,
		-0.795078, 0.005713, -0.606480,
		0.559591, -0.378718, -0.737177,
		29.438089, 24.265028, 33.175613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798130, 23.868483, 33.614559>,  <29.046375, 24.530130, 33.691639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798130, 23.868483, 33.614559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.140390, 23.843803, 33.409012>,  <29.345747, 23.828997, 33.285683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.140390, 23.843803, 33.409012>,  <28.798130, 23.868483, 33.614559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140390, 23.843803, 33.409012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068232, -0.970756, 0.230168,
		-0.513039, -0.232005, -0.826416,
		0.855649, -0.061697, -0.513866,
		29.397085, 23.825294, 33.254852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789515, 23.112749, 33.330902>,  <28.798130, 23.868483, 33.614559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789515, 23.112749, 33.330902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.159439, 23.260979, 33.365311>,  <29.381393, 23.349916, 33.385956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.159439, 23.260979, 33.365311>,  <28.789515, 23.112749, 33.330902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159439, 23.260979, 33.365311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280602, -0.817155, 0.503508,
		0.256881, -0.441511, -0.859697,
		0.924810, 0.370574, 0.086023,
		29.436882, 23.372150, 33.391117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237680, 22.593962, 33.102875>,  <28.789515, 23.112749, 33.330902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237680, 22.593962, 33.102875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.481558, 22.830227, 33.314304>,  <29.627884, 22.971987, 33.441162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.481558, 22.830227, 33.314304>,  <29.237680, 22.593962, 33.102875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481558, 22.830227, 33.314304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276655, -0.783493, 0.556419,
		0.742789, -0.193013, -0.641101,
		0.609694, 0.590665, 0.528572,
		29.664467, 23.007427, 33.472878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946333, 22.366699, 32.950821>,  <29.237680, 22.593962, 33.102875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946333, 22.366699, 32.950821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.891455, 22.531876, 33.310966>,  <29.858528, 22.630981, 33.527054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.891455, 22.531876, 33.310966>,  <29.946333, 22.366699, 32.950821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891455, 22.531876, 33.310966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368520, -0.822435, 0.433351,
		0.919441, 0.391256, -0.039342,
		-0.137195, 0.412939, 0.900366,
		29.850296, 22.655758, 33.581078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681969, 22.107172, 33.226257>,  <29.946333, 22.366699, 32.950821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681969, 22.107172, 33.226257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.447189, 22.199116, 33.536781>,  <30.306322, 22.254282, 33.723095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.447189, 22.199116, 33.536781>,  <30.681969, 22.107172, 33.226257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447189, 22.199116, 33.536781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567907, -0.566506, 0.597120,
		0.577038, 0.791350, 0.201970,
		-0.586949, 0.229861, 0.776309,
		30.271105, 22.268074, 33.769672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231121, 21.546909, 33.241138>,  <30.681969, 22.107172, 33.226257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231121, 21.546909, 33.241138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.155882, 21.295479, 32.939274>,  <31.110739, 21.144621, 32.758156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.155882, 21.295479, 32.939274>,  <31.231121, 21.546909, 33.241138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155882, 21.295479, 32.939274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082477, 0.755550, -0.649878,
		0.978681, -0.184482, -0.090273,
		-0.188096, -0.628578, -0.754658,
		31.099453, 21.106905, 32.712875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728436, 21.647104, 32.725441>,  <31.231121, 21.546909, 33.241138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728436, 21.647104, 32.725441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.431419, 21.486046, 32.511337>,  <31.253210, 21.389410, 32.382874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.431419, 21.486046, 32.511337>,  <31.728436, 21.647104, 32.725441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431419, 21.486046, 32.511337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045621, 0.766881, -0.640166,
		0.668243, -0.499769, -0.551072,
		-0.742542, -0.402646, -0.535263,
		31.208656, 21.365252, 32.350758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812353, 21.892962, 32.063023>,  <31.728436, 21.647104, 32.725441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812353, 21.892962, 32.063023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.432358, 21.768475, 32.052708>,  <31.204361, 21.693783, 32.046516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.432358, 21.768475, 32.052708>,  <31.812353, 21.892962, 32.063023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432358, 21.768475, 32.052708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228950, 0.750265, -0.620230,
		0.212375, -0.583307, -0.783996,
		-0.949989, -0.311217, -0.025789,
		31.147362, 21.675110, 32.044971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612072, 21.769745, 31.342693>,  <31.812353, 21.892962, 32.063023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612072, 21.769745, 31.342693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.265976, 21.838345, 31.531139>,  <31.058319, 21.879505, 31.644207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.265976, 21.838345, 31.531139>,  <31.612072, 21.769745, 31.342693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265976, 21.838345, 31.531139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275781, 0.621938, -0.732897,
		-0.418698, -0.764055, -0.490827,
		-0.865238, 0.171501, 0.471116,
		31.006405, 21.889795, 31.672474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147682, 21.752733, 30.846472>,  <31.612072, 21.769745, 31.342693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147682, 21.752733, 30.846472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.965229, 21.962990, 31.133705>,  <30.855757, 22.089144, 31.306046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.965229, 21.962990, 31.133705>,  <31.147682, 21.752733, 30.846472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965229, 21.962990, 31.133705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305755, 0.665227, -0.681166,
		-0.835736, -0.530261, -0.142716,
		-0.456135, 0.525639, 0.718084,
		30.828388, 22.120682, 31.349131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526716, 21.881683, 30.528027>,  <31.147682, 21.752733, 30.846472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526716, 21.881683, 30.528027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.540218, 22.169060, 30.805935>,  <30.548321, 22.341486, 30.972679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.540218, 22.169060, 30.805935>,  <30.526716, 21.881683, 30.528027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540218, 22.169060, 30.805935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219661, 0.683501, -0.696115,
		-0.974992, -0.129115, 0.180886,
		0.033757, 0.718440, 0.694770,
		30.550346, 22.384592, 31.014366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002342, 22.370243, 30.383289>,  <30.526716, 21.881683, 30.528027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002342, 22.370243, 30.383289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.182779, 22.612240, 30.645741>,  <30.291042, 22.757437, 30.803211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.182779, 22.612240, 30.645741>,  <30.002342, 22.370243, 30.383289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182779, 22.612240, 30.645741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183223, 0.782292, -0.595355,
		-0.873466, 0.148345, 0.463736,
		0.451095, 0.604989, 0.656126,
		30.318108, 22.793737, 30.842579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608902, 23.009968, 30.494596>,  <30.002342, 22.370243, 30.383289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608902, 23.009968, 30.494596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.978558, 23.122570, 30.597919>,  <30.200352, 23.190132, 30.659912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.978558, 23.122570, 30.597919>,  <29.608902, 23.009968, 30.494596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978558, 23.122570, 30.597919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126742, 0.863692, -0.487825,
		-0.360423, 0.418079, 0.833850,
		0.924139, 0.281507, 0.258306,
		30.255798, 23.207022, 30.675411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551718, 23.680273, 30.788591>,  <29.608902, 23.009968, 30.494596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551718, 23.680273, 30.788591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.919218, 23.625206, 30.640568>,  <30.139719, 23.592165, 30.551754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.919218, 23.625206, 30.640568>,  <29.551718, 23.680273, 30.788591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919218, 23.625206, 30.640568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112712, 0.806798, -0.579977,
		0.378406, 0.574565, 0.725730,
		0.918752, -0.137668, -0.370057,
		30.194843, 23.583906, 30.529551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730209, 24.382244, 30.646338>,  <29.551718, 23.680273, 30.788591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730209, 24.382244, 30.646338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.040960, 24.183563, 30.491547>,  <30.227411, 24.064356, 30.398672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.040960, 24.183563, 30.491547>,  <29.730209, 24.382244, 30.646338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040960, 24.183563, 30.491547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252254, 0.808630, -0.531493,
		0.576916, 0.315287, 0.753500,
		0.776876, -0.496700, -0.386979,
		30.274023, 24.034554, 30.375452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315056, 24.797419, 30.753805>,  <29.730209, 24.382244, 30.646338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315056, 24.797419, 30.753805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.428926, 24.537567, 30.471828>,  <30.497248, 24.381657, 30.302643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.428926, 24.537567, 30.471828>,  <30.315056, 24.797419, 30.753805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428926, 24.537567, 30.471828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414956, 0.746411, -0.520272,
		0.864160, -0.144411, 0.482051,
		0.284675, -0.649628, -0.704942,
		30.514328, 24.342678, 30.260345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047216, 24.943453, 30.606861>,  <30.315056, 24.797419, 30.753805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047216, 24.943453, 30.606861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.890003, 24.743130, 30.298389>,  <30.795675, 24.622936, 30.113306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.890003, 24.743130, 30.298389>,  <31.047216, 24.943453, 30.606861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890003, 24.743130, 30.298389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189230, 0.776670, -0.600812,
		0.899843, -0.382068, -0.210489,
		-0.393032, -0.500806, -0.771181,
		30.772095, 24.592888, 30.067036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502220, 25.006706, 30.144281>,  <31.047216, 24.943453, 30.606861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502220, 25.006706, 30.144281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.169807, 24.939854, 29.932072>,  <30.970360, 24.899742, 29.804747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.169807, 24.939854, 29.932072>,  <31.502220, 25.006706, 30.144281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169807, 24.939854, 29.932072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277936, 0.701410, -0.656335,
		0.481807, -0.692886, -0.536442,
		-0.831031, -0.167130, -0.530522,
		30.920498, 24.889713, 29.772915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666260, 25.002333, 29.413212>,  <31.502220, 25.006706, 30.144281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666260, 25.002333, 29.413212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.274752, 25.084312, 29.412128>,  <31.039846, 25.133499, 29.411478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.274752, 25.084312, 29.412128>,  <31.666260, 25.002333, 29.413212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274752, 25.084312, 29.412128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161173, 0.761409, -0.627917,
		-0.126627, -0.615023, -0.778275,
		-0.978769, 0.204949, -0.002710,
		30.981121, 25.145798, 29.411316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898951, 24.665394, 28.829353>,  <31.666260, 25.002333, 29.413212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898951, 24.665394, 28.829353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291557, 24.591290, 28.848537>,  <32.527122, 24.546827, 28.860048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291557, 24.591290, 28.848537>,  <31.898951, 24.665394, 28.829353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291557, 24.591290, 28.848537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143119, -0.544250, 0.826625,
		-0.127038, -0.818212, -0.560706,
		0.981518, -0.185260, 0.047961,
		32.586014, 24.535711, 28.862926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935858, 24.008047, 28.900152>,  <31.898951, 24.665394, 28.829353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935858, 24.008047, 28.900152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308388, 24.103477, 29.010216>,  <32.531906, 24.160736, 29.076254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308388, 24.103477, 29.010216>,  <31.935858, 24.008047, 28.900152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308388, 24.103477, 29.010216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020514, -0.719981, 0.693691,
		0.363608, -0.651697, -0.665643,
		0.931326, 0.238576, 0.275160,
		32.587784, 24.175051, 29.092764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263943, 23.391386, 28.894737>,  <31.935858, 24.008047, 28.900152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263943, 23.391386, 28.894737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.460869, 23.638004, 29.140499>,  <32.579025, 23.785975, 29.287956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.460869, 23.638004, 29.140499>,  <32.263943, 23.391386, 28.894737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460869, 23.638004, 29.140499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101940, -0.741861, 0.662759,
		0.864425, -0.263657, -0.428083,
		0.492319, 0.616544, 0.614406,
		32.608566, 23.822968, 29.324821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738068, 22.919485, 29.031879>,  <32.263943, 23.391386, 28.894737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738068, 22.919485, 29.031879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.777111, 23.198078, 29.316242>,  <32.800537, 23.365234, 29.486860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.777111, 23.198078, 29.316242>,  <32.738068, 22.919485, 29.031879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777111, 23.198078, 29.316242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263242, -0.706943, 0.656457,
		0.959780, 0.123067, -0.252345,
		0.097605, 0.696481, 0.710905,
		32.806393, 23.407022, 29.529514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421829, 22.733065, 29.320154>,  <32.738068, 22.919485, 29.031879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421829, 22.733065, 29.320154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.238621, 22.974274, 29.581406>,  <33.128696, 23.118999, 29.738157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.238621, 22.974274, 29.581406>,  <33.421829, 22.733065, 29.320154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238621, 22.974274, 29.581406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432007, -0.491134, 0.756411,
		0.776906, 0.628612, -0.035558,
		-0.458025, 0.603021, 0.653130,
		33.101212, 23.155180, 29.777344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955837, 22.933159, 29.824663>,  <33.421829, 22.733065, 29.320154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955837, 22.933159, 29.824663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.610622, 23.016148, 30.008888>,  <33.403492, 23.065941, 30.119423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.610622, 23.016148, 30.008888>,  <33.955837, 22.933159, 29.824663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610622, 23.016148, 30.008888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333103, -0.451672, 0.827668,
		0.379742, 0.867725, 0.320701,
		-0.863040, 0.207474, 0.460561,
		33.351711, 23.078390, 30.147057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063625, 23.318193, 30.478624>,  <33.955837, 22.933159, 29.824663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063625, 23.318193, 30.478624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.725300, 23.105324, 30.493500>,  <33.522305, 22.977602, 30.502424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.725300, 23.105324, 30.493500>,  <34.063625, 23.318193, 30.478624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725300, 23.105324, 30.493500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381413, -0.554523, 0.739614,
		-0.372983, 0.639762, 0.672003,
		-0.845818, -0.532174, 0.037187,
		33.471554, 22.945671, 30.504656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310944, 23.582073, 31.131058>,  <34.063625, 23.318193, 30.478624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310944, 23.582073, 31.131058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.595303, 23.642879, 31.405727>,  <34.765919, 23.679363, 31.570528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.595303, 23.642879, 31.405727>,  <34.310944, 23.582073, 31.131058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595303, 23.642879, 31.405727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309752, 0.808890, -0.499750,
		-0.631412, 0.567968, 0.527950,
		0.710896, 0.152015, 0.686672,
		34.808571, 23.688484, 31.611729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110916, 24.285866, 31.549158>,  <34.310944, 23.582073, 31.131058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110916, 24.285866, 31.549158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.504002, 24.232510, 31.600513>,  <34.739853, 24.200495, 31.631327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.504002, 24.232510, 31.600513>,  <34.110916, 24.285866, 31.549158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504002, 24.232510, 31.600513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159947, 0.960932, -0.225890,
		-0.093239, 0.242520, 0.965656,
		0.982712, -0.133391, 0.128387,
		34.798817, 24.192492, 31.639029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403667, 24.869822, 31.727846>,  <34.110916, 24.285866, 31.549158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403667, 24.869822, 31.727846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.764313, 24.703079, 31.681686>,  <34.980701, 24.603033, 31.653992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.764313, 24.703079, 31.681686>,  <34.403667, 24.869822, 31.727846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764313, 24.703079, 31.681686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390390, 0.899140, -0.197844,
		0.186231, 0.133330, 0.973417,
		0.901617, -0.416857, -0.115397,
		35.034798, 24.578022, 31.647068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916645, 25.218012, 32.133190>,  <34.403667, 24.869822, 31.727846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916645, 25.218012, 32.133190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068363, 25.040901, 31.808208>,  <35.159393, 24.934635, 31.613220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068363, 25.040901, 31.808208>,  <34.916645, 25.218012, 32.133190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068363, 25.040901, 31.808208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186208, 0.896631, -0.401719,
		0.906344, 0.001085, 0.422539,
		0.379298, -0.442776, -0.812455,
		35.182152, 24.908068, 31.564472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382359, 25.730530, 31.887974>,  <34.916645, 25.218012, 32.133190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382359, 25.730530, 31.887974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.322269, 25.489708, 31.574295>,  <35.286217, 25.345215, 31.386087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.322269, 25.489708, 31.574295>,  <35.382359, 25.730530, 31.887974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322269, 25.489708, 31.574295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138918, 0.772475, -0.619665,
		0.978844, -0.202027, -0.032408,
		-0.150223, -0.602053, -0.784197,
		35.277203, 25.309092, 31.339035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955688, 25.683149, 31.279753>,  <35.382359, 25.730530, 31.887974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955688, 25.683149, 31.279753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.619286, 25.554924, 31.105419>,  <35.417446, 25.477989, 31.000818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.619286, 25.554924, 31.105419>,  <35.955688, 25.683149, 31.279753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619286, 25.554924, 31.105419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047003, 0.759229, -0.649124,
		0.538983, -0.566401, -0.623447,
		-0.841004, -0.320563, -0.435834,
		35.366985, 25.458755, 30.974669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084602, 25.965246, 30.592434>,  <35.955688, 25.683149, 31.279753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084602, 25.965246, 30.592434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.696445, 25.892948, 30.656528>,  <35.463551, 25.849569, 30.694984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.696445, 25.892948, 30.656528>,  <36.084602, 25.965246, 30.592434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696445, 25.892948, 30.656528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239982, 0.796765, -0.554593,
		-0.027431, -0.576625, -0.816548,
		-0.970389, -0.180744, 0.160236,
		35.405327, 25.838724, 30.704599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.760925, 24.389292, 35.416950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.414261, 24.329617, 35.226521>,  <32.206261, 24.293812, 35.112263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.414261, 24.329617, 35.226521>,  <32.760925, 24.389292, 35.416950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414261, 24.329617, 35.226521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194877, 0.777202, -0.598314,
		0.459263, -0.611310, -0.644498,
		-0.866661, -0.149185, -0.476070,
		32.154263, 24.284861, 35.083698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873802, 24.339619, 34.675064>,  <32.760925, 24.389292, 35.416950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873802, 24.339619, 34.675064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.483650, 24.426933, 34.687572>,  <32.249557, 24.479322, 34.695076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.483650, 24.426933, 34.687572>,  <32.873802, 24.339619, 34.675064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483650, 24.426933, 34.687572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133214, 0.696286, -0.705294,
		-0.175730, -0.683766, -0.708225,
		-0.975383, 0.218286, 0.031272,
		32.191036, 24.492420, 34.696953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677498, 24.381775, 34.012226>,  <32.873802, 24.339619, 34.675064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677498, 24.381775, 34.012226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.418098, 24.609074, 34.214828>,  <32.262459, 24.745453, 34.336391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.418098, 24.609074, 34.214828>,  <32.677498, 24.381775, 34.012226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418098, 24.609074, 34.214828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121644, 0.734200, -0.667947,
		-0.751435, -0.371548, -0.545250,
		-0.648497, 0.568245, 0.506507,
		32.223549, 24.779547, 34.366779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370190, 24.758751, 33.483479>,  <32.677498, 24.381775, 34.012226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370190, 24.758751, 33.483479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.237011, 24.943790, 33.812149>,  <32.157104, 25.054815, 34.009350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.237011, 24.943790, 33.812149>,  <32.370190, 24.758751, 33.483479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237011, 24.943790, 33.812149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017645, 0.874294, -0.485076,
		-0.942781, -0.147005, -0.299255,
		-0.332946, 0.462601, 0.821673,
		32.137127, 25.082571, 34.058651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781895, 25.193609, 33.312195>,  <32.370190, 24.758751, 33.483479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781895, 25.193609, 33.312195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.916452, 25.352077, 33.653927>,  <31.997187, 25.447159, 33.858967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.916452, 25.352077, 33.653927>,  <31.781895, 25.193609, 33.312195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916452, 25.352077, 33.653927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110485, 0.884336, -0.453588,
		-0.935218, 0.246975, 0.253713,
		0.336393, 0.396172, 0.854335,
		32.017368, 25.470928, 33.910229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437935, 25.839880, 33.285641>,  <31.781895, 25.193609, 33.312195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437935, 25.839880, 33.285641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.732008, 25.875980, 33.554375>,  <31.908451, 25.897640, 33.715614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.732008, 25.875980, 33.554375>,  <31.437935, 25.839880, 33.285641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732008, 25.875980, 33.554375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122676, 0.957019, -0.262803,
		-0.666679, 0.275626, 0.692510,
		0.735180, 0.090251, 0.671837,
		31.952562, 25.903055, 33.755924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351688, 26.439610, 33.435345>,  <31.437935, 25.839880, 33.285641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351688, 26.439610, 33.435345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.719587, 26.351208, 33.565098>,  <31.940327, 26.298166, 33.642948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.719587, 26.351208, 33.565098>,  <31.351688, 26.439610, 33.435345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719587, 26.351208, 33.565098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348287, 0.840613, -0.414808,
		-0.181005, 0.494496, 0.850124,
		0.919747, -0.221005, 0.324382,
		31.995512, 26.284906, 33.662411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582130, 27.072495, 33.804775>,  <31.351688, 26.439610, 33.435345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582130, 27.072495, 33.804775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.913286, 26.876171, 33.696182>,  <32.111980, 26.758377, 33.631027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.913286, 26.876171, 33.696182>,  <31.582130, 27.072495, 33.804775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913286, 26.876171, 33.696182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343380, 0.826228, -0.446584,
		0.443493, 0.276502, 0.852562,
		0.827891, -0.490809, -0.271481,
		32.161655, 26.728928, 33.614738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190014, 27.449287, 34.091942>,  <31.582130, 27.072495, 33.804775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190014, 27.449287, 34.091942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.338314, 27.222248, 33.797901>,  <32.427292, 27.086023, 33.621475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.338314, 27.222248, 33.797901>,  <32.190014, 27.449287, 34.091942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338314, 27.222248, 33.797901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401062, 0.811752, -0.424509,
		0.837673, -0.137437, 0.528598,
		0.370747, -0.567600, -0.735103,
		32.449539, 27.051968, 33.577370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926739, 27.696156, 33.906746>,  <32.190014, 27.449287, 34.091942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926739, 27.696156, 33.906746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.781498, 27.503620, 33.587631>,  <32.694355, 27.388100, 33.396160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.781498, 27.503620, 33.587631>,  <32.926739, 27.696156, 33.906746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781498, 27.503620, 33.587631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426124, 0.675652, -0.601591,
		0.828598, -0.558397, -0.040221,
		-0.363102, -0.481338, -0.797791,
		32.672565, 27.359219, 33.348293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466606, 27.688101, 33.465611>,  <32.926739, 27.696156, 33.906746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466606, 27.688101, 33.465611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.150337, 27.636669, 33.226173>,  <32.960575, 27.605810, 33.082512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.150337, 27.636669, 33.226173>,  <33.466606, 27.688101, 33.465611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150337, 27.636669, 33.226173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317339, 0.750044, -0.580284,
		0.523582, -0.648768, -0.552233,
		-0.790669, -0.128581, -0.598589,
		32.913136, 27.598095, 33.046597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695869, 27.677917, 32.829597>,  <33.466606, 27.688101, 33.465611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695869, 27.677917, 32.829597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.317421, 27.788761, 32.762589>,  <33.090351, 27.855268, 32.722382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.317421, 27.788761, 32.762589>,  <33.695869, 27.677917, 32.829597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317421, 27.788761, 32.762589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323026, 0.771710, -0.547831,
		-0.022532, -0.572428, -0.819645,
		-0.946122, 0.277110, -0.167521,
		33.033585, 27.871895, 32.712334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302353, 27.444794, 32.533253>,  <33.695869, 27.677917, 32.829597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302353, 27.444794, 32.533253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.692352, 27.504593, 32.599003>,  <34.926353, 27.540472, 32.638454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.692352, 27.504593, 32.599003>,  <34.302353, 27.444794, 32.533253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692352, 27.504593, 32.599003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076524, -0.920470, 0.383249,
		0.208601, -0.361089, -0.908900,
		0.975002, 0.149499, 0.164378,
		34.984852, 27.549442, 32.648315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456108, 26.858791, 32.351456>,  <34.302353, 27.444794, 32.533253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456108, 26.858791, 32.351456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.746037, 27.022118, 32.573414>,  <34.919994, 27.120113, 32.706589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.746037, 27.022118, 32.573414>,  <34.456108, 26.858791, 32.351456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746037, 27.022118, 32.573414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157806, -0.882427, 0.443193,
		0.670618, -0.233670, -0.704038,
		0.724823, 0.408315, 0.554897,
		34.963482, 27.144611, 32.739883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151402, 26.419344, 32.290638>,  <34.456108, 26.858791, 32.351456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151402, 26.419344, 32.290638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.162586, 26.626831, 32.632435>,  <35.169296, 26.751324, 32.837513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.162586, 26.626831, 32.632435>,  <35.151402, 26.419344, 32.290638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162586, 26.626831, 32.632435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204111, -0.839775, 0.503107,
		0.978548, 0.160342, -0.129358,
		0.027962, 0.518718, 0.854488,
		35.170975, 26.782446, 32.888783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743156, 26.196115, 32.642780>,  <35.151402, 26.419344, 32.290638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743156, 26.196115, 32.642780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.533527, 26.344814, 32.949284>,  <35.407749, 26.434032, 33.133186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.533527, 26.344814, 32.949284>,  <35.743156, 26.196115, 32.642780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533527, 26.344814, 32.949284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252876, -0.791214, 0.556806,
		0.813265, 0.485576, 0.320650,
		-0.524075, 0.371746, 0.766257,
		35.376305, 26.456339, 33.179161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925495, 25.677032, 33.272675>,  <35.743156, 26.196115, 32.642780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925495, 25.677032, 33.272675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.623314, 25.890759, 33.424355>,  <35.442005, 26.018993, 33.515362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.623314, 25.890759, 33.424355>,  <35.925495, 25.677032, 33.272675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623314, 25.890759, 33.424355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108121, -0.672489, 0.732167,
		0.646218, 0.512120, 0.565806,
		-0.755455, 0.534315, 0.379203,
		35.396679, 26.051052, 33.538116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115147, 25.754683, 33.961796>,  <35.925495, 25.677032, 33.272675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115147, 25.754683, 33.961796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.717876, 25.789436, 33.930653>,  <35.479515, 25.810289, 33.911968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.717876, 25.789436, 33.930653>,  <36.115147, 25.754683, 33.961796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717876, 25.789436, 33.930653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113510, -0.565502, 0.816899,
		0.026947, 0.820158, 0.571503,
		-0.993171, 0.086884, -0.077857,
		35.419926, 25.815502, 33.907295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929810, 25.839428, 34.620903>,  <36.115147, 25.754683, 33.961796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929810, 25.839428, 34.620903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.598732, 25.721481, 34.429916>,  <35.400085, 25.650713, 34.315323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.598732, 25.721481, 34.429916>,  <35.929810, 25.839428, 34.620903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598732, 25.721481, 34.429916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236607, -0.588135, 0.773378,
		-0.508858, 0.753093, 0.417029,
		-0.827696, -0.294868, -0.477465,
		35.350422, 25.633020, 34.286678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419643, 25.864456, 35.096722>,  <35.929810, 25.839428, 34.620903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419643, 25.864456, 35.096722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.308475, 25.598301, 34.819588>,  <35.241776, 25.438608, 34.653309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.308475, 25.598301, 34.819588>,  <35.419643, 25.864456, 35.096722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308475, 25.598301, 34.819588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292630, -0.628326, 0.720815,
		-0.914947, 0.403073, -0.020088,
		-0.277920, -0.665386, -0.692836,
		35.225101, 25.398685, 34.611736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674801, 25.728132, 35.355808>,  <35.419643, 25.864456, 35.096722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674801, 25.728132, 35.355808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.753712, 25.429966, 35.101112>,  <34.801056, 25.251066, 34.948296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.753712, 25.429966, 35.101112>,  <34.674801, 25.728132, 35.355808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753712, 25.429966, 35.101112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504912, -0.633990, 0.585765,
		-0.840326, 0.205943, -0.501438,
		0.197272, -0.745415, -0.636742,
		34.812893, 25.206341, 34.910091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101940, 25.426836, 35.334404>,  <34.674801, 25.728132, 35.355808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101940, 25.426836, 35.334404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.368935, 25.160553, 35.200966>,  <34.529133, 25.000782, 35.120903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.368935, 25.160553, 35.200966>,  <34.101940, 25.426836, 35.334404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368935, 25.160553, 35.200966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439727, -0.713956, 0.544892,
		-0.600913, -0.217019, -0.769290,
		0.667491, -0.665710, -0.333596,
		34.569183, 24.960840, 35.100887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796013, 24.824684, 35.091141>,  <34.101940, 25.426836, 35.334404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796013, 24.824684, 35.091141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.166348, 24.692768, 35.164959>,  <34.388550, 24.613619, 35.209251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.166348, 24.692768, 35.164959>,  <33.796013, 24.824684, 35.091141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166348, 24.692768, 35.164959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376825, -0.768566, 0.517020,
		-0.028670, -0.548220, -0.835842,
		0.925841, -0.329789, 0.184548,
		34.444099, 24.593832, 35.220322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934395, 24.270573, 34.498665>,  <33.796013, 24.824684, 35.091141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934395, 24.270573, 34.498665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.166275, 24.188080, 34.813984>,  <34.305401, 24.138584, 35.003178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.166275, 24.188080, 34.813984>,  <33.934395, 24.270573, 34.498665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166275, 24.188080, 34.813984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624776, -0.733538, 0.267539,
		0.523073, -0.647603, -0.554080,
		0.579698, -0.206233, 0.788301,
		34.340183, 24.126209, 35.050472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792011, 23.630550, 34.568462>,  <33.934395, 24.270573, 34.498665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792011, 23.630550, 34.568462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.964573, 23.687878, 34.924744>,  <34.068111, 23.722275, 35.138512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.964573, 23.687878, 34.924744>,  <33.792011, 23.630550, 34.568462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964573, 23.687878, 34.924744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500004, -0.783809, 0.368293,
		0.750924, -0.604237, -0.266478,
		0.431404, 0.143320, 0.890702,
		34.093994, 23.730873, 35.191956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050419, 23.001331, 34.806343>,  <33.792011, 23.630550, 34.568462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050419, 23.001331, 34.806343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.002174, 23.223442, 35.135490>,  <33.973228, 23.356709, 35.332981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.002174, 23.223442, 35.135490>,  <34.050419, 23.001331, 34.806343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002174, 23.223442, 35.135490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573519, -0.715564, 0.398803,
		0.810265, -0.423831, 0.404770,
		-0.120614, 0.555279, 0.822871,
		33.965992, 23.390026, 35.382351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873455, 22.852419, 34.073936>,  <34.050419, 23.001331, 34.806343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873455, 22.852419, 34.073936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.965275, 22.495106, 33.919350>,  <34.020367, 22.280718, 33.826599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.965275, 22.495106, 33.919350>,  <33.873455, 22.852419, 34.073936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965275, 22.495106, 33.919350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366167, 0.447157, -0.816071,
		0.901791, 0.045822, 0.429736,
		0.229553, -0.893281, -0.386464,
		34.034142, 22.227121, 33.803410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615616, 22.803507, 34.026600>,  <33.873455, 22.852419, 34.073936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615616, 22.803507, 34.026600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.442612, 22.571392, 33.750572>,  <34.338810, 22.432123, 33.584957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.442612, 22.571392, 33.750572>,  <34.615616, 22.803507, 34.026600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442612, 22.571392, 33.750572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547377, 0.439179, -0.712391,
		0.716456, -0.685847, 0.127685,
		-0.432515, -0.580289, -0.690070,
		34.312859, 22.397306, 33.543552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139069, 22.609825, 33.574471>,  <34.615616, 22.803507, 34.026600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139069, 22.609825, 33.574471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.807308, 22.527428, 33.366753>,  <34.608253, 22.477989, 33.242123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.807308, 22.527428, 33.366753>,  <35.139069, 22.609825, 33.574471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807308, 22.527428, 33.366753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458348, 0.280526, -0.843340,
		0.319397, -0.937482, -0.138252,
		-0.829399, -0.205993, -0.519293,
		34.558487, 22.465630, 33.210964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379559, 22.290586, 32.943909>,  <35.139069, 22.609825, 33.574471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379559, 22.290586, 32.943909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.013168, 22.424931, 32.856106>,  <34.793335, 22.505537, 32.803425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.013168, 22.424931, 32.856106>,  <35.379559, 22.290586, 32.943909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013168, 22.424931, 32.856106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336981, 0.347028, -0.875223,
		-0.217779, -0.875654, -0.431049,
		-0.915978, 0.335861, -0.219503,
		34.738377, 22.525688, 32.790257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335972, 22.194576, 32.233227>,  <35.379559, 22.290586, 32.943909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335972, 22.194576, 32.233227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.029545, 22.439075, 32.312748>,  <34.845688, 22.585775, 32.360462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.029545, 22.439075, 32.312748>,  <35.335972, 22.194576, 32.233227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029545, 22.439075, 32.312748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119311, 0.439146, -0.890458,
		-0.631593, -0.658429, -0.409343,
		-0.766064, 0.611247, 0.198804,
		34.799725, 22.622450, 32.372391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140720, 22.458138, 31.609493>,  <35.335972, 22.194576, 32.233227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140720, 22.458138, 31.609493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.965183, 22.710632, 31.865292>,  <34.859859, 22.862129, 32.018772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.965183, 22.710632, 31.865292>,  <35.140720, 22.458138, 31.609493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965183, 22.710632, 31.865292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143991, 0.751894, -0.643367,
		-0.886950, -0.190257, -0.420858,
		-0.438846, 0.631235, 0.639497,
		34.833530, 22.900003, 32.057140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574379, 22.914583, 31.214191>,  <35.140720, 22.458138, 31.609493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574379, 22.914583, 31.214191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.719994, 23.109020, 31.531982>,  <34.807362, 23.225681, 31.722656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.719994, 23.109020, 31.531982>,  <34.574379, 22.914583, 31.214191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719994, 23.109020, 31.531982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122926, 0.820468, -0.558320,
		-0.923238, 0.300910, 0.238926,
		0.364035, 0.486091, 0.794477,
		34.829205, 23.254848, 31.770325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881748, 22.989965, 31.221449>,  <34.574379, 22.914583, 31.214191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881748, 22.989965, 31.221449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.615646, 22.783306, 31.005852>,  <33.455986, 22.659309, 30.876493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.615646, 22.783306, 31.005852>,  <33.881748, 22.989965, 31.221449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615646, 22.783306, 31.005852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169752, -0.807668, 0.564673,
		-0.727064, 0.284156, 0.625006,
		-0.665254, -0.516650, -0.538990,
		33.416069, 22.628311, 30.844154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505283, 22.678080, 31.744556>,  <33.881748, 22.989965, 31.221449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505283, 22.678080, 31.744556> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.389027, 22.477066, 31.418861>,  <33.319271, 22.356457, 31.223444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.389027, 22.477066, 31.418861>,  <33.505283, 22.678080, 31.744556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389027, 22.477066, 31.418861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078674, -0.835541, 0.543766,
		-0.953592, 0.222101, 0.203307,
		-0.290642, -0.502535, -0.814239,
		33.301834, 22.326305, 31.174589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777500, 22.296179, 31.814131>,  <33.505283, 22.678080, 31.744556>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777500, 22.296179, 31.814131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.970093, 22.093525, 31.528053>,  <33.085648, 21.971933, 31.356407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.970093, 22.093525, 31.528053>,  <32.777500, 22.296179, 31.814131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970093, 22.093525, 31.528053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350694, -0.859197, 0.372552,
		-0.803237, 0.071437, -0.591360,
		0.481481, -0.506634, -0.715191,
		33.114536, 21.941534, 31.313496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362656, 21.706799, 31.593155>,  <32.777500, 22.296179, 31.814131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362656, 21.706799, 31.593155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.714043, 21.588825, 31.442795>,  <32.924877, 21.518042, 31.352579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.714043, 21.588825, 31.442795>,  <32.362656, 21.706799, 31.593155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714043, 21.588825, 31.442795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188427, -0.936830, 0.294695,
		-0.439069, -0.188052, -0.878553,
		0.878473, -0.294935, -0.375899,
		32.977585, 21.500345, 31.330025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187794, 21.133713, 31.099678>,  <32.362656, 21.706799, 31.593155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187794, 21.133713, 31.099678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.574802, 21.113319, 31.198711>,  <32.807007, 21.101084, 31.258131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.574802, 21.113319, 31.198711>,  <32.187794, 21.133713, 31.099678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574802, 21.113319, 31.198711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155663, -0.891868, 0.424664,
		0.199161, -0.449413, -0.870841,
		0.967525, -0.050981, 0.247582,
		32.865059, 21.098024, 31.272985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346535, 20.502741, 30.851969>,  <32.187794, 21.133713, 31.099678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346535, 20.502741, 30.851969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.640751, 20.573761, 31.113491>,  <32.817280, 20.616373, 31.270405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.640751, 20.573761, 31.113491>,  <32.346535, 20.502741, 30.851969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640751, 20.573761, 31.113491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282004, -0.797231, 0.533758,
		0.616002, -0.576974, -0.536323,
		0.735538, 0.177550, 0.653804,
		32.861412, 20.627026, 31.309633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647503, 19.887136, 30.916349>,  <32.346535, 20.502741, 30.851969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647503, 19.887136, 30.916349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.796249, 20.052650, 31.248734>,  <32.885498, 20.151958, 31.448164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.796249, 20.052650, 31.248734>,  <32.647503, 19.887136, 30.916349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796249, 20.052650, 31.248734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128998, -0.863436, 0.487686,
		0.919280, -0.288546, -0.267704,
		0.371865, 0.413787, 0.830961,
		32.907810, 20.176786, 31.498022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337261, 19.500233, 31.222830>,  <32.647503, 19.887136, 30.916349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337261, 19.500233, 31.222830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.146515, 19.705933, 31.507969>,  <33.032066, 19.829351, 31.679052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.146515, 19.705933, 31.507969>,  <33.337261, 19.500233, 31.222830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146515, 19.705933, 31.507969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167543, -0.849305, 0.500610,
		0.862861, 0.119290, 0.491161,
		-0.476864, 0.514248, 0.712846,
		33.003456, 19.860207, 31.721823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585976, 19.257460, 31.846359>,  <33.337261, 19.500233, 31.222830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585976, 19.257460, 31.846359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.243782, 19.419682, 31.975151>,  <33.038467, 19.517015, 32.052425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.243782, 19.419682, 31.975151>,  <33.585976, 19.257460, 31.846359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243782, 19.419682, 31.975151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097461, -0.736777, 0.669075,
		0.508573, 0.541004, 0.669827,
		-0.855485, 0.405555, 0.321978,
		32.987137, 19.541348, 32.071743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.711182, 33.280872, 22.832191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343510, 33.123486, 22.839096>,  <33.122906, 33.029053, 22.843239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343510, 33.123486, 22.839096>,  <33.711182, 33.280872, 22.832191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343510, 33.123486, 22.839096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283747, -0.631189, 0.721865,
		-0.273134, 0.668420, 0.691819,
		-0.919177, -0.393467, 0.017263,
		33.067757, 33.005444, 22.844275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629620, 33.109207, 23.486473>,  <33.711182, 33.280872, 22.832191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629620, 33.109207, 23.486473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317799, 32.915787, 23.327240>,  <33.130707, 32.799732, 23.231701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317799, 32.915787, 23.327240>,  <33.629620, 33.109207, 23.486473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317799, 32.915787, 23.327240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175518, -0.778763, 0.602263,
		-0.601238, 0.399627, 0.691961,
		-0.779555, -0.483555, -0.398081,
		33.083931, 32.770721, 23.207815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348328, 32.819786, 24.081203>,  <33.629620, 33.109207, 23.486473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348328, 32.819786, 24.081203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194302, 32.600792, 23.784019>,  <33.101887, 32.469395, 23.605709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194302, 32.600792, 23.784019>,  <33.348328, 32.819786, 24.081203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194302, 32.600792, 23.784019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168150, -0.833182, 0.526815,
		-0.907441, 0.077931, 0.412890,
		-0.385067, -0.547481, -0.742959,
		33.078781, 32.436546, 23.561132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845695, 32.447411, 24.432652>,  <33.348328, 32.819786, 24.081203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845695, 32.447411, 24.432652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900555, 32.251736, 24.088120>,  <32.933472, 32.134331, 23.881401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900555, 32.251736, 24.088120>,  <32.845695, 32.447411, 24.432652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900555, 32.251736, 24.088120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062935, -0.863487, 0.500430,
		-0.988549, -0.122841, -0.087640,
		0.137149, -0.489184, -0.861330,
		32.941700, 32.104980, 23.829721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415016, 31.958124, 24.499012>,  <32.845695, 32.447411, 24.432652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415016, 31.958124, 24.499012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646648, 31.830341, 24.198982>,  <32.785629, 31.753672, 24.018965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646648, 31.830341, 24.198982>,  <32.415016, 31.958124, 24.499012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646648, 31.830341, 24.198982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088220, -0.890077, 0.447192,
		-0.810481, -0.325134, -0.487247,
		0.579084, -0.319455, -0.750073,
		32.820374, 31.734505, 23.973961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082542, 31.374559, 24.336452>,  <32.415016, 31.958124, 24.499012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082542, 31.374559, 24.336452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456665, 31.370010, 24.194988>,  <32.681137, 31.367281, 24.110109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456665, 31.370010, 24.194988>,  <32.082542, 31.374559, 24.336452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456665, 31.370010, 24.194988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131079, -0.917241, 0.376149,
		-0.328670, -0.398171, -0.856409,
		0.935304, -0.011371, -0.353661,
		32.737255, 31.366598, 24.088890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196342, 30.697342, 23.917219>,  <32.082542, 31.374559, 24.336452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196342, 30.697342, 23.917219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556801, 30.833107, 24.025101>,  <32.773075, 30.914566, 24.089830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556801, 30.833107, 24.025101>,  <32.196342, 30.697342, 23.917219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556801, 30.833107, 24.025101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248600, -0.914248, 0.319918,
		0.355160, -0.221244, -0.908247,
		0.901143, 0.339413, 0.269704,
		32.827145, 30.934931, 24.106012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713684, 30.065559, 23.725676>,  <32.196342, 30.697342, 23.917219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713684, 30.065559, 23.725676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928768, 30.305786, 23.962383>,  <33.057819, 30.449923, 24.104408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928768, 30.305786, 23.962383>,  <32.713684, 30.065559, 23.725676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928768, 30.305786, 23.962383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412567, -0.799519, 0.436528,
		0.735294, 0.009419, -0.677683,
		0.537709, 0.600567, 0.591768,
		33.090080, 30.485956, 24.139914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450775, 29.811945, 23.730171>,  <32.713684, 30.065559, 23.725676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450775, 29.811945, 23.730171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394318, 30.016087, 24.069492>,  <33.360443, 30.138571, 24.273085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394318, 30.016087, 24.069492>,  <33.450775, 29.811945, 23.730171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394318, 30.016087, 24.069492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436824, -0.736850, 0.515982,
		0.888406, 0.443385, -0.118935,
		-0.141141, 0.510355, 0.848303,
		33.351974, 30.169193, 24.323982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052074, 29.559950, 24.260511>,  <33.450775, 29.811945, 23.730171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052074, 29.559950, 24.260511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767101, 29.740604, 24.475346>,  <33.596119, 29.848997, 24.604246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767101, 29.740604, 24.475346>,  <34.052074, 29.559950, 24.260511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767101, 29.740604, 24.475346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032666, -0.785879, 0.617517,
		0.700978, 0.422396, 0.574640,
		-0.712434, 0.451637, 0.537086,
		33.553371, 29.876095, 24.636471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204891, 29.430555, 24.912434>,  <34.052074, 29.559950, 24.260511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204891, 29.430555, 24.912434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817120, 29.517769, 24.957451>,  <33.584457, 29.570097, 24.984461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817120, 29.517769, 24.957451>,  <34.204891, 29.430555, 24.912434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817120, 29.517769, 24.957451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072897, -0.693890, 0.716381,
		0.234289, 0.686277, 0.688572,
		-0.969430, 0.218035, 0.112543,
		33.526291, 29.583179, 24.991213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101189, 29.496464, 25.610191>,  <34.204891, 29.430555, 24.912434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101189, 29.496464, 25.610191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748108, 29.386864, 25.457474>,  <33.536259, 29.321104, 25.365843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748108, 29.386864, 25.457474>,  <34.101189, 29.496464, 25.610191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748108, 29.386864, 25.457474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068235, -0.729097, 0.681000,
		-0.464959, 0.627169, 0.624877,
		-0.882699, -0.273999, -0.381795,
		33.483299, 29.304665, 25.342936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441345, 29.999737, 26.096659>,  <34.101189, 29.496464, 25.610191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441345, 29.999737, 26.096659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743874, 29.967247, 26.356312>,  <34.925392, 29.947754, 26.512104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743874, 29.967247, 26.356312>,  <34.441345, 29.999737, 26.096659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743874, 29.967247, 26.356312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483342, 0.738053, -0.470806,
		-0.440856, 0.669836, 0.597466,
		0.756324, -0.081223, 0.649135,
		34.970772, 29.942881, 26.551052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508362, 30.644583, 26.457083>,  <34.441345, 29.999737, 26.096659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508362, 30.644583, 26.457083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862774, 30.461246, 26.429173>,  <35.075420, 30.351244, 26.412426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862774, 30.461246, 26.429173>,  <34.508362, 30.644583, 26.457083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862774, 30.461246, 26.429173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385441, 0.811869, -0.438525,
		0.257642, 0.361653, 0.896006,
		0.886034, -0.458340, -0.069776,
		35.128586, 30.323744, 26.408239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053051, 31.164206, 26.527119>,  <34.508362, 30.644583, 26.457083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053051, 31.164206, 26.527119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278381, 30.883976, 26.351910>,  <35.413578, 30.715837, 26.246784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278381, 30.883976, 26.351910>,  <35.053051, 31.164206, 26.527119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278381, 30.883976, 26.351910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460348, 0.706358, -0.537716,
		0.686109, 0.101266, 0.720416,
		0.563324, -0.700574, -0.438020,
		35.447380, 30.673803, 26.220503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698116, 31.394968, 26.523973>,  <35.053051, 31.164206, 26.527119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698116, 31.394968, 26.523973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722782, 31.117588, 26.236828>,  <35.737583, 30.951160, 26.064541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722782, 31.117588, 26.236828>,  <35.698116, 31.394968, 26.523973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722782, 31.117588, 26.236828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516994, 0.637416, -0.571330,
		0.853765, -0.335900, 0.397814,
		0.061663, -0.693449, -0.717862,
		35.741280, 30.909554, 26.021469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359985, 31.473677, 26.293343>,  <35.698116, 31.394968, 26.523973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359985, 31.473677, 26.293343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160023, 31.295605, 25.996181>,  <36.040047, 31.188761, 25.817884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160023, 31.295605, 25.996181>,  <36.359985, 31.473677, 26.293343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160023, 31.295605, 25.996181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331782, 0.693904, -0.639077,
		0.800009, -0.565960, -0.199183,
		-0.499906, -0.445182, -0.742904,
		36.010052, 31.162050, 25.773310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917213, 31.433365, 25.784678>,  <36.359985, 31.473677, 26.293343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917213, 31.433365, 25.784678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562141, 31.394299, 25.604687>,  <36.349098, 31.370859, 25.496693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562141, 31.394299, 25.604687>,  <36.917213, 31.433365, 25.784678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562141, 31.394299, 25.604687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271743, 0.677794, -0.683192,
		0.371717, -0.728736, -0.575126,
		-0.887684, -0.097667, -0.449977,
		36.295837, 31.364998, 25.469694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088039, 31.419102, 25.150955>,  <36.917213, 31.433365, 25.784678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088039, 31.419102, 25.150955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700603, 31.518192, 25.142303>,  <36.468143, 31.577646, 25.137112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700603, 31.518192, 25.142303>,  <37.088039, 31.419102, 25.150955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700603, 31.518192, 25.142303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189634, 0.679579, -0.708669,
		-0.160855, -0.690511, -0.705210,
		-0.968589, 0.247725, -0.021631,
		36.410027, 31.592510, 25.135815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008522, 31.585045, 24.559288>,  <37.088039, 31.419102, 25.150955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008522, 31.585045, 24.559288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688129, 31.773769, 24.706707>,  <36.495895, 31.887005, 24.795158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688129, 31.773769, 24.706707>,  <37.008522, 31.585045, 24.559288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688129, 31.773769, 24.706707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190187, 0.784221, -0.590616,
		-0.567681, -0.402978, -0.717877,
		-0.800979, 0.471812, 0.368546,
		36.447834, 31.915314, 24.817270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634621, 31.789845, 24.034616>,  <37.008522, 31.585045, 24.559288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634621, 31.789845, 24.034616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459133, 32.045666, 24.287121>,  <36.353840, 32.199158, 24.438623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459133, 32.045666, 24.287121>,  <36.634621, 31.789845, 24.034616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459133, 32.045666, 24.287121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185973, 0.751889, -0.632516,
		-0.879168, -0.160102, -0.448810,
		-0.438723, 0.639555, 0.631263,
		36.327515, 32.237534, 24.476500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105450, 32.225910, 23.648249>,  <36.634621, 31.789845, 24.034616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105450, 32.225910, 23.648249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186264, 32.419529, 23.988808>,  <36.234753, 32.535702, 24.193142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186264, 32.419529, 23.988808>,  <36.105450, 32.225910, 23.648249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186264, 32.419529, 23.988808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129602, 0.848464, -0.513139,
		-0.970765, 0.214015, 0.108687,
		0.202037, 0.484052, 0.851396,
		36.246876, 32.564743, 24.244226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669453, 32.792656, 23.590591>,  <36.105450, 32.225910, 23.648249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669453, 32.792656, 23.590591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967865, 32.891697, 23.837856>,  <36.146912, 32.951122, 23.986216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967865, 32.891697, 23.837856>,  <35.669453, 32.792656, 23.590591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967865, 32.891697, 23.837856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057027, 0.901133, -0.429776,
		-0.663460, 0.355880, 0.658156,
		0.746035, 0.247607, 0.618161,
		36.191677, 32.965981, 24.023304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621803, 33.462814, 23.550526>,  <35.669453, 32.792656, 23.590591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621803, 33.462814, 23.550526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986435, 33.428238, 23.711304>,  <36.205212, 33.407494, 23.807770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986435, 33.428238, 23.711304>,  <35.621803, 33.462814, 23.550526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986435, 33.428238, 23.711304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259214, 0.879688, -0.398694,
		-0.319122, 0.467629, 0.824309,
		0.911575, -0.086441, 0.401944,
		36.259907, 33.402306, 23.831886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633179, 34.052277, 23.904499>,  <35.621803, 33.462814, 23.550526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633179, 34.052277, 23.904499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005306, 33.926388, 23.829174>,  <36.228580, 33.850853, 23.783979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005306, 33.926388, 23.829174>,  <35.633179, 34.052277, 23.904499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005306, 33.926388, 23.829174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282411, 0.942316, -0.179678,
		0.233997, 0.113977, 0.965533,
		0.930317, -0.314722, -0.188311,
		36.284401, 33.831970, 23.772680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017326, 34.533863, 24.268532>,  <35.633179, 34.052277, 23.904499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017326, 34.533863, 24.268532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283905, 34.382977, 24.011299>,  <36.443851, 34.292446, 23.856960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283905, 34.382977, 24.011299>,  <36.017326, 34.533863, 24.268532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283905, 34.382977, 24.011299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424758, 0.900990, -0.088306,
		0.612720, -0.214303, 0.760690,
		0.666449, -0.377216, -0.643081,
		36.483841, 34.269814, 23.818375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071541, 34.463261, 25.015703>,  <36.017326, 34.533863, 24.268532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071541, 34.463261, 25.015703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238102, 34.825096, 25.052216>,  <36.338039, 35.042198, 25.074123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238102, 34.825096, 25.052216>,  <36.071541, 34.463261, 25.015703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238102, 34.825096, 25.052216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057694, -0.126488, 0.990289,
		0.907347, -0.407095, -0.104859,
		0.416405, 0.904585, 0.091282,
		36.363022, 35.096470, 25.079599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761669, 34.461700, 25.258993>,  <36.071541, 34.463261, 25.015703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761669, 34.461700, 25.258993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634148, 34.830669, 25.346176>,  <36.557636, 35.052052, 25.398485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634148, 34.830669, 25.346176>,  <36.761669, 34.461700, 25.258993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634148, 34.830669, 25.346176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170336, -0.170453, 0.970531,
		0.932390, 0.346531, -0.102781,
		-0.318800, 0.922422, 0.217956,
		36.538509, 35.107395, 25.411562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224041, 34.898674, 25.706871>,  <36.761669, 34.461700, 25.258993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224041, 34.898674, 25.706871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840149, 34.989994, 25.772343>,  <36.609814, 35.044785, 25.811626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840149, 34.989994, 25.772343>,  <37.224041, 34.898674, 25.706871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840149, 34.989994, 25.772343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137410, -0.126679, 0.982380,
		0.245011, 0.965315, 0.090208,
		-0.959733, 0.228298, 0.163681,
		36.552227, 35.058483, 25.821447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240921, 35.311771, 26.342100>,  <37.224041, 34.898674, 25.706871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240921, 35.311771, 26.342100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872559, 35.165676, 26.287643>,  <36.651543, 35.078018, 26.254971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872559, 35.165676, 26.287643>,  <37.240921, 35.311771, 26.342100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872559, 35.165676, 26.287643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017722, -0.309674, 0.950678,
		-0.389382, 0.877897, 0.278708,
		-0.920906, -0.365238, -0.136140,
		36.596287, 35.056107, 26.246801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909122, 35.490349, 26.938990>,  <37.240921, 35.311771, 26.342100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909122, 35.490349, 26.938990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702511, 35.169651, 26.818726>,  <36.578545, 34.977230, 26.746567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702511, 35.169651, 26.818726>,  <36.909122, 35.490349, 26.938990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702511, 35.169651, 26.818726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132789, -0.271875, 0.953127,
		-0.845909, 0.532244, 0.033969,
		-0.516532, -0.801748, -0.300658,
		36.547550, 34.929127, 26.728529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351517, 35.400425, 27.382862>,  <36.909122, 35.490349, 26.938990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351517, 35.400425, 27.382862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397511, 35.029099, 27.241432>,  <36.425106, 34.806305, 27.156574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397511, 35.029099, 27.241432>,  <36.351517, 35.400425, 27.382862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397511, 35.029099, 27.241432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195795, -0.370130, 0.908113,
		-0.973881, -0.035187, -0.224316,
		0.114980, -0.928314, -0.353573,
		36.432003, 34.750603, 27.135361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833344, 35.013371, 27.759768>,  <36.351517, 35.400425, 27.382862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833344, 35.013371, 27.759768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094208, 34.740425, 27.627666>,  <36.250729, 34.576660, 27.548405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094208, 34.740425, 27.627666>,  <35.833344, 35.013371, 27.759768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094208, 34.740425, 27.627666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153896, -0.545745, 0.823698,
		-0.742294, -0.486360, -0.460927,
		0.652162, -0.682361, -0.330255,
		36.289856, 34.535717, 27.528589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421394, 34.221855, 27.688110>,  <35.833344, 35.013371, 27.759768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421394, 34.221855, 27.688110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813843, 34.146561, 27.705830>,  <36.049313, 34.101383, 27.716461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813843, 34.146561, 27.705830>,  <35.421394, 34.221855, 27.688110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813843, 34.146561, 27.705830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159973, -0.661366, 0.732806,
		-0.108642, -0.726060, -0.678995,
		0.981125, -0.188234, 0.044298,
		36.108181, 34.090092, 27.719118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458652, 33.479458, 27.784599>,  <35.421394, 34.221855, 27.688110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458652, 33.479458, 27.784599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821320, 33.605484, 27.896809>,  <36.038918, 33.681099, 27.964134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821320, 33.605484, 27.896809>,  <35.458652, 33.479458, 27.784599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821320, 33.605484, 27.896809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001456, -0.662633, 0.748943,
		0.421852, -0.679448, -0.600326,
		0.906664, 0.315069, 0.280522,
		36.093319, 33.700005, 27.980965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048805, 32.883396, 27.886444>,  <35.458652, 33.479458, 27.784599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048805, 32.883396, 27.886444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173271, 33.187557, 28.114464>,  <36.247952, 33.370056, 28.251276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173271, 33.187557, 28.114464>,  <36.048805, 32.883396, 27.886444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173271, 33.187557, 28.114464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054741, -0.613174, 0.788049,
		0.948777, -0.214010, -0.232425,
		0.311167, 0.760406, 0.570050,
		36.266621, 33.415680, 28.285479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452240, 32.567497, 28.371151>,  <36.048805, 32.883396, 27.886444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452240, 32.567497, 28.371151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411369, 32.922462, 28.550953>,  <36.386845, 33.135441, 28.658834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411369, 32.922462, 28.550953>,  <36.452240, 32.567497, 28.371151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411369, 32.922462, 28.550953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142257, -0.434189, 0.889518,
		0.984542, 0.154837, -0.081875,
		-0.102181, 0.887415, 0.449504,
		36.380714, 33.188686, 28.685804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098385, 32.781368, 28.778652>,  <36.452240, 32.567497, 28.371151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098385, 32.781368, 28.778652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800854, 32.978390, 28.959366>,  <36.622334, 33.096603, 29.067795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800854, 32.978390, 28.959366>,  <37.098385, 32.781368, 28.778652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800854, 32.978390, 28.959366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231773, -0.443918, 0.865574,
		0.626893, 0.748553, 0.216040,
		-0.743832, 0.492550, 0.451784,
		36.577705, 33.126156, 29.094900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318676, 33.054283, 29.439610>,  <37.098385, 32.781368, 28.778652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318676, 33.054283, 29.439610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922680, 33.003391, 29.464058>,  <36.685081, 32.972858, 29.478727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922680, 33.003391, 29.464058>,  <37.318676, 33.054283, 29.439610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922680, 33.003391, 29.464058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123965, -0.576656, 0.807527,
		-0.067491, 0.807020, 0.586655,
		-0.989989, -0.127226, 0.061123,
		36.625683, 32.965225, 29.482395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213280, 32.996899, 30.153513>,  <37.318676, 33.054283, 29.439610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213280, 32.996899, 30.153513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858845, 32.892933, 30.000000>,  <36.646183, 32.830551, 29.907892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858845, 32.892933, 30.000000>,  <37.213280, 32.996899, 30.153513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858845, 32.892933, 30.000000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153366, -0.616937, 0.771924,
		-0.437405, 0.742853, 0.506799,
		-0.886090, -0.259918, -0.383780,
		36.593018, 32.814957, 29.884867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773113, 32.957275, 30.787622>,  <37.213280, 32.996899, 30.153513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773113, 32.957275, 30.787622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577164, 32.763710, 30.497559>,  <36.459595, 32.647572, 30.323521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577164, 32.763710, 30.497559>,  <36.773113, 32.957275, 30.787622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577164, 32.763710, 30.497559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048164, -0.815509, 0.576737,
		-0.870464, 0.317453, 0.376185,
		-0.489869, -0.483911, -0.725161,
		36.430202, 32.618538, 30.280010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187992, 32.586861, 31.108654>,  <36.773113, 32.957275, 30.787622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187992, 32.586861, 31.108654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275299, 32.404362, 30.763588>,  <36.327682, 32.294861, 30.556547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275299, 32.404362, 30.763588>,  <36.187992, 32.586861, 31.108654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275299, 32.404362, 30.763588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192433, -0.886747, 0.420297,
		-0.956727, 0.074268, -0.281348,
		0.218270, -0.456250, -0.862666,
		36.340782, 32.267487, 30.504787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661213, 32.178440, 30.916008>,  <36.187992, 32.586861, 31.108654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661213, 32.178440, 30.916008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976761, 32.004810, 30.741993>,  <36.166092, 31.900633, 30.637585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976761, 32.004810, 30.741993>,  <35.661213, 32.178440, 30.916008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976761, 32.004810, 30.741993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288493, -0.886611, 0.361514,
		-0.542631, -0.159685, -0.824653,
		0.788875, -0.434075, -0.435035,
		36.213425, 31.874588, 30.611483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325394, 31.606197, 30.700850>,  <35.661213, 32.178440, 30.916008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325394, 31.606197, 30.700850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718094, 31.530121, 30.700794>,  <35.953712, 31.484476, 30.700762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718094, 31.530121, 30.700794>,  <35.325394, 31.606197, 30.700850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718094, 31.530121, 30.700794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169350, -0.874503, 0.454494,
		-0.086562, -0.446174, -0.890750,
		0.981747, -0.190190, -0.000139,
		36.012619, 31.473064, 30.700752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355896, 30.977425, 30.492403>,  <35.325394, 31.606197, 30.700850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355896, 30.977425, 30.492403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719955, 31.024605, 30.651260>,  <35.938389, 31.052914, 30.746574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719955, 31.024605, 30.651260>,  <35.355896, 30.977425, 30.492403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719955, 31.024605, 30.651260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040488, -0.928701, 0.368612,
		0.412307, -0.351570, -0.840477,
		0.910145, 0.117952, 0.397144,
		35.993000, 31.059990, 30.770403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648224, 30.431444, 30.272547>,  <35.355896, 30.977425, 30.492403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648224, 30.431444, 30.272547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877663, 30.556549, 30.575378>,  <36.015324, 30.631611, 30.757078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877663, 30.556549, 30.575378>,  <35.648224, 30.431444, 30.272547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877663, 30.556549, 30.575378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092250, -0.893694, 0.439091,
		0.813928, -0.321701, -0.483766,
		0.573595, 0.312761, 0.757080,
		36.049740, 30.650377, 30.802502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232521, 30.042814, 30.235262>,  <35.648224, 30.431444, 30.272547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232521, 30.042814, 30.235262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237282, 30.152889, 30.619789>,  <36.240139, 30.218933, 30.850506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237282, 30.152889, 30.619789>,  <36.232521, 30.042814, 30.235262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237282, 30.152889, 30.619789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213216, -0.938577, 0.271315,
		0.976932, -0.208197, 0.047505,
		0.011900, 0.275185, 0.961317,
		36.240852, 30.235445, 30.908184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656651, 29.491117, 30.775845>,  <36.232521, 30.042814, 30.235262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656651, 29.491117, 30.775845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382526, 29.694786, 30.984112>,  <36.218052, 29.816986, 31.109072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382526, 29.694786, 30.984112>,  <36.656651, 29.491117, 30.775845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382526, 29.694786, 30.984112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247595, -0.835271, 0.490938,
		0.684867, 0.207531, 0.698489,
		-0.685312, 0.509170, 0.520666,
		36.176933, 29.847536, 31.140312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735287, 29.176245, 31.361906>,  <36.656651, 29.491117, 30.775845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735287, 29.176245, 31.361906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375580, 29.347237, 31.398956>,  <36.159756, 29.449831, 31.421186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375580, 29.347237, 31.398956>,  <36.735287, 29.176245, 31.361906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375580, 29.347237, 31.398956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361798, -0.845969, 0.391712,
		0.245807, 0.318743, 0.915414,
		-0.899267, 0.427480, 0.092625,
		36.105801, 29.475481, 31.426744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524330, 28.967022, 31.999191>,  <36.735287, 29.176245, 31.361906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524330, 28.967022, 31.999191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177227, 29.088524, 31.841850>,  <35.968964, 29.161425, 31.747446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177227, 29.088524, 31.841850>,  <36.524330, 28.967022, 31.999191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177227, 29.088524, 31.841850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464382, -0.777523, 0.424037,
		-0.177039, 0.550628, 0.815761,
		-0.867759, 0.303753, -0.393354,
		35.916901, 29.179649, 31.723845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109787, 29.040253, 32.496449>,  <36.524330, 28.967022, 31.999191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109787, 29.040253, 32.496449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873322, 28.970337, 32.181492>,  <35.731441, 28.928387, 31.992519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873322, 28.970337, 32.181492>,  <36.109787, 29.040253, 32.496449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873322, 28.970337, 32.181492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407233, -0.777978, 0.478447,
		-0.696198, 0.603489, 0.388728,
		-0.591159, -0.174791, -0.787387,
		35.695972, 28.917900, 31.945276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496170, 29.015511, 32.781162>,  <36.109787, 29.040253, 32.496449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496170, 29.015511, 32.781162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463200, 28.800568, 32.445435>,  <35.443417, 28.671602, 32.243999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463200, 28.800568, 32.445435>,  <35.496170, 29.015511, 32.781162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463200, 28.800568, 32.445435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375720, -0.763285, 0.525576,
		-0.923061, 0.358667, -0.138985,
		-0.082421, -0.537358, -0.839317,
		35.438473, 28.639360, 32.193638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824783, 28.705851, 32.842560>,  <35.496170, 29.015511, 32.781162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824783, 28.705851, 32.842560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983276, 28.474781, 32.557102>,  <35.078373, 28.336140, 32.385826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983276, 28.474781, 32.557102>,  <34.824783, 28.705851, 32.842560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983276, 28.474781, 32.557102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238964, -0.815364, 0.527331,
		-0.886507, -0.038411, -0.461119,
		0.396235, -0.577673, -0.713647,
		35.102146, 28.301479, 32.343010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324635, 28.149632, 32.607269>,  <34.824783, 28.705851, 32.842560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324635, 28.149632, 32.607269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696312, 28.015671, 32.544746>,  <34.919319, 27.935295, 32.507233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696312, 28.015671, 32.544746>,  <34.324635, 28.149632, 32.607269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696312, 28.015671, 32.544746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214742, -0.833449, 0.509164,
		-0.300795, -0.439548, -0.846357,
		0.929198, -0.334902, -0.156308,
		34.975071, 27.915199, 32.497852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740662, 27.978397, 32.152824>,  <34.324635, 28.149632, 32.607269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740662, 27.978397, 32.152824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394154, 28.130024, 32.282982>,  <33.186249, 28.221001, 32.361076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394154, 28.130024, 32.282982>,  <33.740662, 27.978397, 32.152824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394154, 28.130024, 32.282982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176819, 0.841833, -0.509953,
		-0.467237, -0.384221, -0.796281,
		-0.866270, 0.379067, 0.325398,
		33.134274, 28.243744, 32.380600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335175, 28.162533, 31.489157>,  <33.740662, 27.978397, 32.152824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335175, 28.162533, 31.489157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210491, 28.369881, 31.807686>,  <33.135681, 28.494289, 31.998804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210491, 28.369881, 31.807686>,  <33.335175, 28.162533, 31.489157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210491, 28.369881, 31.807686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051412, 0.827650, -0.558885,
		-0.948787, -0.215147, -0.231332,
		-0.311705, 0.518370, 0.796324,
		33.116982, 28.525393, 32.046585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752335, 28.569019, 31.256693>,  <33.335175, 28.162533, 31.489157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752335, 28.569019, 31.256693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875076, 28.761051, 31.585415>,  <32.948723, 28.876270, 31.782648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875076, 28.761051, 31.585415>,  <32.752335, 28.569019, 31.256693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875076, 28.761051, 31.585415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229839, 0.875285, -0.425499,
		-0.923588, -0.058317, 0.378925,
		0.306854, 0.480078, 0.821807,
		32.967133, 28.905075, 31.831957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222103, 29.027878, 31.404869>,  <32.752335, 28.569019, 31.256693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222103, 29.027878, 31.404869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560230, 29.180027, 31.554939>,  <32.763107, 29.271317, 31.644981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560230, 29.180027, 31.554939>,  <32.222103, 29.027878, 31.404869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560230, 29.180027, 31.554939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260430, 0.906510, -0.332289,
		-0.466493, 0.183182, 0.865349,
		0.845317, 0.380374, 0.375175,
		32.813824, 29.294140, 31.667492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955391, 29.585617, 31.745689>,  <32.222103, 29.027878, 31.404869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955391, 29.585617, 31.745689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348942, 29.640362, 31.699635>,  <32.585072, 29.673208, 31.672001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348942, 29.640362, 31.699635>,  <31.955391, 29.585617, 31.745689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348942, 29.640362, 31.699635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169849, 0.916651, -0.361805,
		0.056025, 0.375527, 0.925116,
		0.983876, 0.136860, -0.115138,
		32.644104, 29.681419, 31.665092>
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
