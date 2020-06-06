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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.608318, 34.744095, 49.301453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273010, 34.952168, 49.236073>,  <40.071827, 35.077011, 49.196846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273010, 34.952168, 49.236073>,  <40.608318, 34.744095, 49.301453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273010, 34.952168, 49.236073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015340, 0.322141, 0.946567,
		0.545042, 0.790971, -0.278020,
		-0.838269, 0.520183, -0.163447,
		40.021530, 35.108223, 49.187038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670963, 35.525612, 49.268490>,  <40.608318, 34.744095, 49.301453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670963, 35.525612, 49.268490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323582, 35.394146, 49.416962>,  <40.115154, 35.315266, 49.506042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323582, 35.394146, 49.416962>,  <40.670963, 35.525612, 49.268490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323582, 35.394146, 49.416962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119867, 0.587273, 0.800464,
		-0.481065, 0.739656, -0.470622,
		-0.868452, -0.328663, 0.371177,
		40.063046, 35.295547, 49.528316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324284, 35.162125, 49.595436>,  <40.670963, 35.525612, 49.268490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324284, 35.162125, 49.595436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275818, 34.769112, 49.538940>,  <41.246738, 34.533302, 49.505043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275818, 34.769112, 49.538940>,  <41.324284, 35.162125, 49.595436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275818, 34.769112, 49.538940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961865, -0.151364, 0.227827,
		-0.245225, -0.108246, 0.963404,
		-0.121164, -0.982533, -0.141236,
		41.239468, 34.474350, 49.496571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582916, 34.893261, 50.283276>,  <41.324284, 35.162125, 49.595436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582916, 34.893261, 50.283276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581154, 34.614250, 49.996658>,  <41.580097, 34.446842, 49.824688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581154, 34.614250, 49.996658>,  <41.582916, 34.893261, 50.283276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581154, 34.614250, 49.996658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776924, -0.453515, 0.436706,
		-0.629578, -0.554778, 0.543923,
		-0.004402, -0.697528, -0.716544,
		41.579834, 34.404991, 49.781696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529232, 34.230385, 50.662342>,  <41.582916, 34.893261, 50.283276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529232, 34.230385, 50.662342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713760, 34.173191, 50.312088>,  <41.824478, 34.138874, 50.101936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713760, 34.173191, 50.312088>,  <41.529232, 34.230385, 50.662342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713760, 34.173191, 50.312088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835995, -0.260476, 0.482975,
		-0.297141, -0.954833, -0.000626,
		0.461324, -0.142989, -0.875634,
		41.852158, 34.130295, 50.049397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848072, 33.645916, 50.738598>,  <41.529232, 34.230385, 50.662342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848072, 33.645916, 50.738598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053322, 33.812046, 50.438145>,  <42.176472, 33.911724, 50.257874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053322, 33.812046, 50.438145>,  <41.848072, 33.645916, 50.738598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053322, 33.812046, 50.438145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858133, -0.230343, 0.458857,
		0.017555, -0.880028, -0.474598,
		0.513127, 0.415323, -0.751137,
		42.207260, 33.936642, 50.212803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443924, 33.229889, 50.615093>,  <41.848072, 33.645916, 50.738598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443924, 33.229889, 50.615093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564877, 33.571159, 50.445076>,  <42.637447, 33.775921, 50.343067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564877, 33.571159, 50.445076>,  <42.443924, 33.229889, 50.615093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564877, 33.571159, 50.445076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901262, -0.110741, 0.418884,
		0.310311, -0.509737, -0.802418,
		0.302381, 0.853173, -0.425042,
		42.655590, 33.827110, 50.317562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131226, 33.123909, 50.205212>,  <42.443924, 33.229889, 50.615093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131226, 33.123909, 50.205212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112957, 33.514889, 50.287685>,  <43.101997, 33.749477, 50.337170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112957, 33.514889, 50.287685>,  <43.131226, 33.123909, 50.205212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112957, 33.514889, 50.287685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890616, -0.053644, 0.451580,
		0.452456, 0.204255, -0.868080,
		-0.045670, 0.977447, 0.206185,
		43.099255, 33.808125, 50.349541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877750, 33.418316, 50.003181>,  <43.131226, 33.123909, 50.205212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877750, 33.418316, 50.003181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673660, 33.665451, 50.242493>,  <43.551205, 33.813732, 50.386082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673660, 33.665451, 50.242493>,  <43.877750, 33.418316, 50.003181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673660, 33.665451, 50.242493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808539, 0.107484, 0.578543,
		0.293141, 0.778923, -0.554389,
		-0.510229, 0.617839, 0.598282,
		43.520592, 33.850803, 50.421978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.391167, 33.802437, 50.215572>,  <43.877750, 33.418316, 50.003181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.391167, 33.802437, 50.215572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118759, 33.940311, 50.473999>,  <43.955315, 34.023037, 50.629055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.118759, 33.940311, 50.473999>,  <44.391167, 33.802437, 50.215572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118759, 33.940311, 50.473999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724794, 0.191551, 0.661802,
		0.104361, 0.918965, -0.380278,
		-0.681016, 0.344690, 0.646070,
		43.914455, 34.043720, 50.667820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.635052, 34.447453, 50.277504>,  <44.391167, 33.802437, 50.215572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.635052, 34.447453, 50.277504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382950, 34.379520, 50.580540>,  <44.231689, 34.338760, 50.762360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.382950, 34.379520, 50.580540>,  <44.635052, 34.447453, 50.277504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.382950, 34.379520, 50.580540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733892, 0.188091, 0.652705,
		-0.253343, 0.967357, 0.006091,
		-0.630254, -0.169828, 0.757588,
		44.193874, 34.328571, 50.807816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605869, 35.099106, 50.620068>,  <44.635052, 34.447453, 50.277504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605869, 35.099106, 50.620068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.507603, 34.805401, 50.873211>,  <44.448643, 34.629177, 51.025097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.507603, 34.805401, 50.873211>,  <44.605869, 35.099106, 50.620068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.507603, 34.805401, 50.873211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801877, 0.212888, 0.558276,
		-0.544650, 0.644618, 0.536492,
		-0.245662, -0.734266, 0.632854,
		44.433903, 34.585121, 51.063068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706268, 35.405140, 51.258095>,  <44.605869, 35.099106, 50.620068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706268, 35.405140, 51.258095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689575, 35.016258, 51.350243>,  <44.679562, 34.782928, 51.405529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.689575, 35.016258, 51.350243>,  <44.706268, 35.405140, 51.258095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689575, 35.016258, 51.350243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725879, 0.128936, 0.675630,
		-0.686556, 0.195412, 0.700325,
		-0.041729, -0.972209, 0.230367,
		44.677055, 34.724594, 51.419353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.534050, 35.286972, 51.945576>,  <44.706268, 35.405140, 51.258095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.534050, 35.286972, 51.945576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761826, 34.983845, 51.818169>,  <44.898491, 34.801968, 51.741726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.761826, 34.983845, 51.818169>,  <44.534050, 35.286972, 51.945576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.761826, 34.983845, 51.818169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644197, 0.170688, 0.745571,
		-0.510641, -0.629742, 0.585381,
		0.569435, -0.757820, -0.318517,
		44.932655, 34.756500, 51.722614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920357, 35.202892, 52.450939>,  <44.534050, 35.286972, 51.945576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920357, 35.202892, 52.450939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117294, 34.967186, 52.194702>,  <45.235458, 34.825760, 52.040962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117294, 34.967186, 52.194702>,  <44.920357, 35.202892, 52.450939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.117294, 34.967186, 52.194702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796807, 0.008967, 0.604167,
		-0.350274, -0.807886, 0.473949,
		0.492348, -0.589270, -0.640589,
		45.264999, 34.790405, 52.002525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.416740, 34.768070, 52.872658>,  <44.920357, 35.202892, 52.450939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.416740, 34.768070, 52.872658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.541416, 34.729980, 52.494495>,  <45.616222, 34.707127, 52.267597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.541416, 34.729980, 52.494495>,  <45.416740, 34.768070, 52.872658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.541416, 34.729980, 52.494495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945935, -0.062895, 0.318199,
		-0.089761, -0.993467, 0.070471,
		0.311688, -0.095223, -0.945401,
		45.634922, 34.701412, 52.210876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.871326, 34.206867, 52.873875>,  <45.416740, 34.768070, 52.872658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.871326, 34.206867, 52.873875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.964142, 34.443230, 52.564816>,  <46.019833, 34.585045, 52.379379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.964142, 34.443230, 52.564816>,  <45.871326, 34.206867, 52.873875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.964142, 34.443230, 52.564816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968146, -0.063481, 0.242204,
		0.094071, -0.804240, -0.586812,
		0.232041, 0.590904, -0.772651,
		46.033752, 34.620502, 52.333019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.490334, 33.962994, 52.573097>,  <45.871326, 34.206867, 52.873875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.490334, 33.962994, 52.573097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495159, 34.328503, 52.410679>,  <46.498055, 34.547810, 52.313229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495159, 34.328503, 52.410679>,  <46.490334, 33.962994, 52.573097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.495159, 34.328503, 52.410679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983498, 0.062470, 0.169794,
		0.180519, -0.401389, -0.897942,
		0.012059, 0.913775, -0.406042,
		46.498775, 34.602634, 52.288868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.114799, 34.076809, 52.169022>,  <46.490334, 33.962994, 52.573097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.114799, 34.076809, 52.169022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.993916, 34.450268, 52.245930>,  <46.921387, 34.674343, 52.292076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.993916, 34.450268, 52.245930>,  <47.114799, 34.076809, 52.169022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.993916, 34.450268, 52.245930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928391, 0.242524, 0.281553,
		0.216240, 0.263593, -0.940085,
		-0.302208, 0.933649, 0.192274,
		46.903252, 34.730362, 52.303612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.534184, 34.521011, 51.802994>,  <47.114799, 34.076809, 52.169022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.534184, 34.521011, 51.802994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.389565, 34.755531, 52.092968>,  <47.302792, 34.896244, 52.266953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.389565, 34.755531, 52.092968>,  <47.534184, 34.521011, 51.802994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.389565, 34.755531, 52.092968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932352, 0.225609, 0.282526,
		0.002093, 0.778044, -0.628207,
		-0.361547, 0.586301, 0.724938,
		47.281101, 34.931423, 52.310448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.973732, 35.089874, 51.805935>,  <47.534184, 34.521011, 51.802994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.973732, 35.089874, 51.805935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.785683, 35.101990, 52.158768>,  <47.672852, 35.109257, 52.370468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.785683, 35.101990, 52.158768>,  <47.973732, 35.089874, 51.805935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.785683, 35.101990, 52.158768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854195, 0.267119, 0.446093,
		-0.222110, 0.963188, -0.151448,
		-0.470126, 0.030285, 0.882080,
		47.644646, 35.111076, 52.423393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.323296, 34.685921, 52.191299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.417385, 34.882019, 51.855602>,  <24.473839, 34.999680, 51.654182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.417385, 34.882019, 51.855602>,  <24.323296, 34.685921, 52.191299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.417385, 34.882019, 51.855602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829014, -0.551929, -0.090056,
		-0.507352, -0.674560, -0.536249,
		0.235223, 0.490248, -0.839242,
		24.487951, 35.029095, 51.603828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.718788, 34.200378, 51.892963>,  <24.323296, 34.685921, 52.191299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.718788, 34.200378, 51.892963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.798603, 34.513596, 51.657326>,  <24.846493, 34.701527, 51.515945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.798603, 34.513596, 51.657326>,  <24.718788, 34.200378, 51.892963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.798603, 34.513596, 51.657326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887576, -0.399166, -0.229948,
		-0.415204, -0.476980, -0.774658,
		0.199537, 0.783043, -0.589091,
		24.858463, 34.748508, 51.480598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.135511, 33.907475, 51.398659>,  <24.718788, 34.200378, 51.892963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.135511, 33.907475, 51.398659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.212975, 34.296280, 51.345459>,  <25.259453, 34.529564, 51.313538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.212975, 34.296280, 51.345459>,  <25.135511, 33.907475, 51.398659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.212975, 34.296280, 51.345459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947357, -0.220507, -0.232145,
		-0.254975, -0.081041, -0.963546,
		0.193656, 0.972013, -0.132998,
		25.271070, 34.587883, 51.305561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.552834, 34.017483, 50.762810>,  <25.135511, 33.907475, 51.398659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.552834, 34.017483, 50.762810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.628839, 34.334896, 50.994049>,  <25.674442, 34.525345, 51.132793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.628839, 34.334896, 50.994049>,  <25.552834, 34.017483, 50.762810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.628839, 34.334896, 50.994049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952534, -0.006353, -0.304365,
		-0.237851, 0.608493, -0.757075,
		0.190013, 0.793534, 0.578100,
		25.685844, 34.572956, 51.167480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051683, 34.327805, 50.361416>,  <25.552834, 34.017483, 50.762810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051683, 34.327805, 50.361416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.077980, 34.488930, 50.726582>,  <26.093758, 34.585606, 50.945683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.077980, 34.488930, 50.726582>,  <26.051683, 34.327805, 50.361416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077980, 34.488930, 50.726582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987849, 0.102850, -0.116517,
		-0.140828, 0.909486, -0.391156,
		0.065740, 0.402812, 0.912919,
		26.097702, 34.609772, 51.000458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444880, 34.979206, 50.374596>,  <26.051683, 34.327805, 50.361416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444880, 34.979206, 50.374596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.462013, 34.878124, 50.761234>,  <26.472294, 34.817474, 50.993217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.462013, 34.878124, 50.761234>,  <26.444880, 34.979206, 50.374596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462013, 34.878124, 50.761234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982067, 0.188446, 0.005748,
		-0.183604, 0.949014, 0.256245,
		0.042834, -0.252705, 0.966595,
		26.474863, 34.802311, 51.051212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994467, 35.393791, 50.612831>,  <26.444880, 34.979206, 50.374596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994467, 35.393791, 50.612831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.926540, 35.104767, 50.880882>,  <26.885784, 34.931351, 51.041714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.926540, 35.104767, 50.880882>,  <26.994467, 35.393791, 50.612831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926540, 35.104767, 50.880882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982128, -0.180091, 0.054699,
		0.081161, 0.667439, 0.740228,
		-0.169817, -0.722559, 0.670127,
		26.875595, 34.888000, 51.081921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348713, 35.605625, 51.235580>,  <26.994467, 35.393791, 50.612831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348713, 35.605625, 51.235580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.317253, 35.207172, 51.219872>,  <27.298378, 34.968102, 51.210445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.317253, 35.207172, 51.219872>,  <27.348713, 35.605625, 51.235580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317253, 35.207172, 51.219872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995079, -0.080827, 0.057307,
		-0.060259, -0.034573, 0.997584,
		-0.078650, -0.996128, -0.039273,
		27.293657, 34.908333, 51.208088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778881, 35.305065, 51.765736>,  <27.348713, 35.605625, 51.235580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778881, 35.305065, 51.765736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.737669, 35.005257, 51.504169>,  <27.712942, 34.825371, 51.347229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.737669, 35.005257, 51.504169>,  <27.778881, 35.305065, 51.765736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737669, 35.005257, 51.504169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993433, -0.110415, -0.029969,
		-0.049740, -0.652705, 0.755978,
		-0.103032, -0.749523, -0.653911,
		27.706758, 34.780399, 51.307995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300327, 34.888203, 52.076942>,  <27.778881, 35.305065, 51.765736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300327, 34.888203, 52.076942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.227425, 34.769890, 51.701859>,  <28.183683, 34.698902, 51.476810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.227425, 34.769890, 51.701859>,  <28.300327, 34.888203, 52.076942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227425, 34.769890, 51.701859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949261, -0.301516, -0.089394,
		-0.256292, -0.906421, 0.335732,
		-0.182258, -0.295787, -0.937706,
		28.172747, 34.681152, 51.420547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702368, 34.316254, 52.030937>,  <28.300327, 34.888203, 52.076942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702368, 34.316254, 52.030937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.643951, 34.385086, 51.641258>,  <28.608902, 34.426388, 51.407452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.643951, 34.385086, 51.641258>,  <28.702368, 34.316254, 52.030937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643951, 34.385086, 51.641258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943173, -0.272908, -0.189595,
		-0.298493, -0.946524, -0.122448,
		-0.146039, 0.172083, -0.974197,
		28.600140, 34.436710, 51.348999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033607, 33.729191, 51.691910>,  <28.702368, 34.316254, 52.030937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033607, 33.729191, 51.691910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.999344, 34.014080, 51.413227>,  <28.978786, 34.185013, 51.246017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.999344, 34.014080, 51.413227>,  <29.033607, 33.729191, 51.691910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999344, 34.014080, 51.413227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944437, -0.164682, -0.284461,
		-0.317335, -0.682366, -0.658540,
		-0.085657, 0.712220, -0.696711,
		28.973646, 34.227745, 51.204212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352015, 33.426617, 51.159470>,  <29.033607, 33.729191, 51.691910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352015, 33.426617, 51.159470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.327202, 33.813015, 51.059074>,  <29.312315, 34.044853, 50.998837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.327202, 33.813015, 51.059074>,  <29.352015, 33.426617, 51.159470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327202, 33.813015, 51.059074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946296, -0.023023, -0.322482,
		-0.317296, -0.257513, -0.912694,
		-0.062030, 0.966000, -0.250989,
		29.308594, 34.102814, 50.983776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535673, 33.500767, 50.439293>,  <29.352015, 33.426617, 51.159470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535673, 33.500767, 50.439293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.606125, 33.842133, 50.635521>,  <29.648396, 34.046951, 50.753258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.606125, 33.842133, 50.635521>,  <29.535673, 33.500767, 50.439293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606125, 33.842133, 50.635521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888901, 0.076204, -0.451716,
		-0.422886, 0.515628, -0.745181,
		0.176131, 0.853417, 0.490568,
		29.658964, 34.098156, 50.782692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945353, 33.871387, 50.006226>,  <29.535673, 33.500767, 50.439293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945353, 33.871387, 50.006226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.978979, 34.090870, 50.338936>,  <29.999155, 34.222561, 50.538563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.978979, 34.090870, 50.338936>,  <29.945353, 33.871387, 50.006226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978979, 34.090870, 50.338936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938857, 0.236080, -0.250626,
		-0.333886, 0.801989, -0.495313,
		0.084066, 0.548708, 0.831777,
		30.004198, 34.255482, 50.588470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289362, 34.518471, 49.849792>,  <29.945353, 33.871387, 50.006226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289362, 34.518471, 49.849792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.354759, 34.433754, 50.235210>,  <30.393997, 34.382923, 50.466461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.354759, 34.433754, 50.235210>,  <30.289362, 34.518471, 49.849792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354759, 34.433754, 50.235210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956822, 0.271976, -0.102573,
		-0.240337, 0.938709, 0.247111,
		0.163494, -0.211789, 0.963543,
		30.403807, 34.370216, 50.524273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775023, 34.974766, 50.004215>,  <30.289362, 34.518471, 49.849792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775023, 34.974766, 50.004215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.803688, 34.703907, 50.297157>,  <30.820889, 34.541393, 50.472923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.803688, 34.703907, 50.297157>,  <30.775023, 34.974766, 50.004215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803688, 34.703907, 50.297157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939102, 0.293209, 0.179209,
		-0.336083, 0.674909, 0.656922,
		0.071665, -0.677145, 0.732351,
		30.825188, 34.500763, 50.516861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070810, 35.342941, 50.627037>,  <30.775023, 34.974766, 50.004215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070810, 35.342941, 50.627037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.153425, 34.951973, 50.644852>,  <31.202993, 34.717392, 50.655540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.153425, 34.951973, 50.644852>,  <31.070810, 35.342941, 50.627037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153425, 34.951973, 50.644852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960311, 0.211221, 0.182176,
		-0.187470, 0.005142, 0.982257,
		0.206537, -0.977425, 0.044536,
		31.215385, 34.658745, 50.658211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706812, 35.373154, 50.865372>,  <31.070810, 35.342941, 50.627037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706812, 35.373154, 50.865372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.721020, 34.976585, 50.815048>,  <31.729546, 34.738644, 50.784855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.721020, 34.976585, 50.815048>,  <31.706812, 35.373154, 50.865372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721020, 34.976585, 50.815048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999362, 0.034776, 0.008120,
		-0.003675, -0.126015, 0.992021,
		0.035522, -0.991419, -0.125807,
		31.731676, 34.679161, 50.777306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229630, 35.020508, 51.395584>,  <31.706812, 35.373154, 50.865372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229630, 35.020508, 51.395584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.180538, 34.762959, 51.093494>,  <32.151081, 34.608429, 50.912239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.180538, 34.762959, 51.093494>,  <32.229630, 35.020508, 51.395584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180538, 34.762959, 51.093494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982150, -0.188099, 0.000754,
		-0.142543, -0.741655, 0.655461,
		-0.122733, -0.643869, -0.755228,
		32.143719, 34.569798, 50.866924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787926, 34.472004, 51.507683>,  <32.229630, 35.020508, 51.395584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787926, 34.472004, 51.507683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.685402, 34.410530, 51.125961>,  <32.623886, 34.373646, 50.896931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.685402, 34.410530, 51.125961>,  <32.787926, 34.472004, 51.507683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685402, 34.410530, 51.125961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941403, -0.263621, -0.210390,
		-0.219240, -0.952305, 0.212246,
		-0.256308, -0.153683, -0.954300,
		32.608509, 34.364426, 50.839672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.317320, 35.379734, 34.848366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.375956, 35.013477, 34.998093>,  <24.411137, 34.793724, 35.087929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.375956, 35.013477, 34.998093>,  <24.317320, 35.379734, 34.848366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.375956, 35.013477, 34.998093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922734, 0.262937, 0.281827,
		-0.356475, 0.304084, 0.883436,
		0.146589, -0.915640, 0.374318,
		24.419931, 34.738785, 35.110390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.447624, 35.368393, 35.591160>,  <24.317320, 35.379734, 34.848366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.447624, 35.368393, 35.591160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.639883, 35.062588, 35.419350>,  <24.755238, 34.879105, 35.316265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.639883, 35.062588, 35.419350>,  <24.447624, 35.368393, 35.591160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.639883, 35.062588, 35.419350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869552, 0.352188, 0.346183,
		-0.113390, -0.539886, 0.834066,
		0.480648, -0.764517, -0.429525,
		24.784077, 34.833233, 35.290493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.843414, 34.918640, 36.156277>,  <24.447624, 35.368393, 35.591160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.843414, 34.918640, 36.156277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.008600, 34.891655, 35.792980>,  <25.107712, 34.875462, 35.575001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.008600, 34.891655, 35.792980>,  <24.843414, 34.918640, 36.156277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.008600, 34.891655, 35.792980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897253, 0.201174, 0.393021,
		0.156199, -0.977229, 0.143613,
		0.412963, -0.067467, -0.908246,
		25.132488, 34.871414, 35.520508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.123636, 34.881527, 36.906971>,  <24.843414, 34.918640, 36.156277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.123636, 34.881527, 36.906971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.259512, 34.506588, 36.876034>,  <25.341038, 34.281624, 36.857471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.259512, 34.506588, 36.876034>,  <25.123636, 34.881527, 36.906971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.259512, 34.506588, 36.876034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578469, 0.143376, 0.803005,
		-0.741609, -0.317514, 0.590933,
		0.339691, -0.937352, -0.077343,
		25.361420, 34.225384, 36.852829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.070011, 34.475536, 37.450600>,  <25.123636, 34.881527, 36.906971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.070011, 34.475536, 37.450600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.404819, 34.342697, 37.276657>,  <25.605705, 34.262993, 37.172291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.404819, 34.342697, 37.276657>,  <25.070011, 34.475536, 37.450600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.404819, 34.342697, 37.276657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508292, 0.177711, 0.842650,
		-0.202564, -0.926353, 0.317551,
		0.837023, -0.332099, -0.434859,
		25.655926, 34.243069, 37.146198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364899, 34.229454, 38.023823>,  <25.070011, 34.475536, 37.450600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.364899, 34.229454, 38.023823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.645126, 34.293785, 37.745731>,  <25.813263, 34.332382, 37.578876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.645126, 34.293785, 37.745731>,  <25.364899, 34.229454, 38.023823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645126, 34.293785, 37.745731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700644, 0.029683, 0.712893,
		0.135291, -0.986536, -0.091890,
		0.700568, 0.160830, -0.695226,
		25.855297, 34.342033, 37.537163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.993929, 33.982121, 38.340946>,  <25.364899, 34.229454, 38.023823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.993929, 33.982121, 38.340946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.122694, 34.161404, 38.007362>,  <26.199953, 34.268974, 37.807213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.122694, 34.161404, 38.007362>,  <25.993929, 33.982121, 38.340946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122694, 34.161404, 38.007362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946496, -0.131185, 0.294849,
		0.022751, -0.884251, -0.466457,
		0.321913, 0.448207, -0.833956,
		26.219267, 34.295864, 37.757175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508293, 33.511360, 38.003815>,  <25.993929, 33.982121, 38.340946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508293, 33.511360, 38.003815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.562277, 33.891335, 37.891102>,  <26.594667, 34.119320, 37.823475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.562277, 33.891335, 37.891102>,  <26.508293, 33.511360, 38.003815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562277, 33.891335, 37.891102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977141, -0.080449, 0.196783,
		0.164263, -0.301902, -0.939081,
		0.134958, 0.949938, -0.281786,
		26.602764, 34.176315, 37.806564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181511, 33.557697, 37.863194>,  <26.508293, 33.511360, 38.003815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181511, 33.557697, 37.863194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.098860, 33.946850, 37.904770>,  <27.049269, 34.180344, 37.929714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.098860, 33.946850, 37.904770>,  <27.181511, 33.557697, 37.863194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098860, 33.946850, 37.904770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953402, 0.176337, 0.244805,
		0.219839, 0.149677, -0.963986,
		-0.206628, 0.972883, 0.103936,
		27.036871, 34.238716, 37.935951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667044, 34.023430, 38.412300>,  <27.181511, 33.557697, 37.863194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667044, 34.023430, 38.412300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.847185, 34.283089, 38.167091>,  <27.955269, 34.438885, 38.019966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.847185, 34.283089, 38.167091>,  <27.667044, 34.023430, 38.412300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847185, 34.283089, 38.167091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145399, 0.624100, 0.767697,
		0.880933, -0.434866, 0.186679,
		0.450351, 0.649147, -0.613019,
		27.982290, 34.477833, 37.983185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199734, 34.367203, 38.790203>,  <27.667044, 34.023430, 38.412300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199734, 34.367203, 38.790203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.136978, 34.601292, 38.471985>,  <28.099325, 34.741745, 38.281052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.136978, 34.601292, 38.471985>,  <28.199734, 34.367203, 38.790203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136978, 34.601292, 38.471985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135806, 0.810655, 0.569557,
		0.978235, -0.018685, -0.206658,
		-0.156887, 0.585226, -0.795548,
		28.089912, 34.776859, 38.233322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703548, 34.872444, 38.743305>,  <28.199734, 34.367203, 38.790203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703548, 34.872444, 38.743305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.370811, 35.026760, 38.583702>,  <28.171169, 35.119350, 38.487942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.370811, 35.026760, 38.583702>,  <28.703548, 34.872444, 38.743305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.370811, 35.026760, 38.583702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069744, 0.785878, 0.614436,
		0.550611, 0.483286, -0.680633,
		-0.831843, 0.385785, -0.399007,
		28.121258, 35.142494, 38.464001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381697, 35.289829, 38.603260>,  <28.703548, 34.872444, 38.743305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381697, 35.289829, 38.603260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.612553, 35.615841, 38.582748>,  <29.751066, 35.811447, 38.570442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.612553, 35.615841, 38.582748>,  <29.381697, 35.289829, 38.603260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612553, 35.615841, 38.582748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816049, -0.573189, 0.074290,
		0.031158, -0.084718, -0.995918,
		0.577142, 0.815032, -0.051274,
		29.785696, 35.860352, 38.567368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951750, 35.396301, 37.988281>,  <29.381697, 35.289829, 38.603260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951750, 35.396301, 37.988281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.071611, 35.597038, 38.312840>,  <30.143528, 35.717480, 38.507576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.071611, 35.597038, 38.312840>,  <29.951750, 35.396301, 37.988281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071611, 35.597038, 38.312840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838248, -0.544607, 0.027262,
		0.455573, 0.671982, -0.583861,
		0.299656, 0.501840, 0.811396,
		30.161509, 35.747589, 38.556259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565241, 35.885521, 37.841766>,  <29.951750, 35.396301, 37.988281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565241, 35.885521, 37.841766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.534435, 35.739922, 38.213051>,  <30.515951, 35.652561, 38.435822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.534435, 35.739922, 38.213051>,  <30.565241, 35.885521, 37.841766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534435, 35.739922, 38.213051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847345, -0.514514, -0.131462,
		0.525429, 0.776389, 0.348060,
		-0.077016, -0.364000, 0.928209,
		30.511330, 35.630722, 38.491512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151396, 35.932804, 38.208469>,  <30.565241, 35.885521, 37.841766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151396, 35.932804, 38.208469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.981554, 35.604351, 38.361027>,  <30.879648, 35.407280, 38.452560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.981554, 35.604351, 38.361027>,  <31.151396, 35.932804, 38.208469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981554, 35.604351, 38.361027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890055, -0.455750, 0.009678,
		0.165872, 0.343568, 0.924363,
		-0.424604, -0.821129, 0.381390,
		30.854174, 35.358013, 38.475445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330832, 35.688206, 38.801659>,  <31.151396, 35.932804, 38.208469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330832, 35.688206, 38.801659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.248301, 35.403095, 38.533516>,  <31.198782, 35.232029, 38.372631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.248301, 35.403095, 38.533516>,  <31.330832, 35.688206, 38.801659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248301, 35.403095, 38.533516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978089, -0.169666, -0.120641,
		-0.027746, -0.680557, 0.732170,
		-0.206328, -0.712780, -0.670353,
		31.186401, 35.189262, 38.332409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418283, 34.995419, 39.032875>,  <31.330832, 35.688206, 38.801659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418283, 34.995419, 39.032875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.507090, 35.033852, 38.644756>,  <31.560373, 35.056911, 38.411884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.507090, 35.033852, 38.644756>,  <31.418283, 34.995419, 39.032875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507090, 35.033852, 38.644756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971940, -0.101133, 0.212377,
		-0.077723, -0.990222, -0.115840,
		0.222016, 0.096084, -0.970297,
		31.573694, 35.062675, 38.353668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050035, 34.989399, 39.705757>,  <31.418283, 34.995419, 39.032875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050035, 34.989399, 39.705757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240461, 35.340405, 39.728840>,  <31.354717, 35.551006, 39.742687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240461, 35.340405, 39.728840>,  <31.050035, 34.989399, 39.705757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240461, 35.340405, 39.728840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288108, 0.093636, 0.953009,
		0.830877, -0.470318, 0.297396,
		0.476065, 0.877515, 0.057702,
		31.383280, 35.603661, 39.746151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641609, 35.014824, 40.232002>,  <31.050035, 34.989399, 39.705757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641609, 35.014824, 40.232002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.481853, 35.379932, 40.197727>,  <31.386000, 35.598995, 40.177162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.481853, 35.379932, 40.197727>,  <31.641609, 35.014824, 40.232002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481853, 35.379932, 40.197727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164615, 0.020542, 0.986144,
		0.901881, 0.407960, 0.142051,
		-0.399389, 0.912769, -0.085683,
		31.362038, 35.653763, 40.172024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925499, 35.409580, 40.683205>,  <31.641609, 35.014824, 40.232002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925499, 35.409580, 40.683205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.566288, 35.582916, 40.652836>,  <31.350761, 35.686916, 40.634613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.566288, 35.582916, 40.652836>,  <31.925499, 35.409580, 40.683205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566288, 35.582916, 40.652836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024018, 0.124034, 0.991987,
		0.439283, 0.892655, -0.100978,
		-0.898028, 0.433338, -0.075926,
		31.296879, 35.712917, 40.630058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883661, 35.945438, 41.269981>,  <31.925499, 35.409580, 40.683205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883661, 35.945438, 41.269981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.511990, 35.814827, 41.200695>,  <31.288986, 35.736458, 41.159122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.511990, 35.814827, 41.200695>,  <31.883661, 35.945438, 41.269981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511990, 35.814827, 41.200695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066585, -0.608825, 0.790506,
		-0.363585, 0.722987, 0.587449,
		-0.929178, -0.326531, -0.173219,
		31.233236, 35.716869, 41.148727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533241, 35.977524, 41.945324>,  <31.883661, 35.945438, 41.269981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533241, 35.977524, 41.945324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.380653, 35.722359, 41.677727>,  <31.289101, 35.569260, 41.517170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.380653, 35.722359, 41.677727>,  <31.533241, 35.977524, 41.945324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380653, 35.722359, 41.677727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264355, -0.768776, 0.582323,
		-0.885776, 0.045286, 0.461899,
		-0.381468, -0.637913, -0.668991,
		31.266212, 35.530983, 41.477028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935944, 35.552254, 42.114384>,  <31.533241, 35.977524, 41.945324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935944, 35.552254, 42.114384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.239887, 35.421989, 41.889328>,  <31.422253, 35.343830, 41.754295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.239887, 35.421989, 41.889328>,  <30.935944, 35.552254, 42.114384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239887, 35.421989, 41.889328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216771, -0.689023, 0.691562,
		-0.612881, -0.647454, -0.452969,
		0.759860, -0.325654, -0.562638,
		31.467844, 35.324291, 41.720535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886023, 34.707184, 41.998676>,  <30.935944, 35.552254, 42.114384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886023, 34.707184, 41.998676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.234524, 34.901730, 42.025124>,  <31.443624, 35.018456, 42.040993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.234524, 34.901730, 42.025124>,  <30.886023, 34.707184, 41.998676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234524, 34.901730, 42.025124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255315, -0.564113, 0.785233,
		0.419204, -0.667256, -0.615660,
		0.871253, 0.486360, 0.066117,
		31.495899, 35.047638, 42.044960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453369, 34.264393, 41.993607>,  <30.886023, 34.707184, 41.998676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453369, 34.264393, 41.993607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.584080, 34.573418, 42.211365>,  <31.662506, 34.758831, 42.342018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.584080, 34.573418, 42.211365>,  <31.453369, 34.264393, 41.993607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584080, 34.573418, 42.211365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435664, -0.634299, 0.638641,
		0.838697, 0.028477, -0.543853,
		0.326779, 0.772563, 0.544391,
		31.682114, 34.805187, 42.374683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204647, 34.121746, 42.058037>,  <31.453369, 34.264393, 41.993607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204647, 34.121746, 42.058037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.039204, 34.323128, 42.361473>,  <31.939938, 34.443958, 42.543533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.039204, 34.323128, 42.361473>,  <32.204647, 34.121746, 42.058037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039204, 34.323128, 42.361473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472393, -0.593604, 0.651521,
		0.778315, 0.627827, 0.007688,
		-0.413606, 0.503457, 0.758592,
		31.915121, 34.474163, 42.589050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760010, 34.115395, 42.611637>,  <32.204647, 34.121746, 42.058037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760010, 34.115395, 42.611637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.392887, 34.145267, 42.767609>,  <32.172611, 34.163189, 42.861191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.392887, 34.145267, 42.767609>,  <32.760010, 34.115395, 42.611637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392887, 34.145267, 42.767609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259086, -0.631532, 0.730782,
		0.300828, 0.771745, 0.560278,
		-0.917811, 0.074679, 0.389931,
		32.117542, 34.167671, 42.884586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858261, 34.131969, 43.298943>,  <32.760010, 34.115395, 42.611637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858261, 34.131969, 43.298943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.475357, 34.033939, 43.237499>,  <32.245617, 33.975121, 43.200634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.475357, 34.033939, 43.237499>,  <32.858261, 34.131969, 43.298943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475357, 34.033939, 43.237499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056053, -0.678195, 0.732741,
		-0.283750, 0.692813, 0.662945,
		-0.957258, -0.245076, -0.153604,
		32.188179, 33.960415, 43.191418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415802, 34.044094, 43.987125>,  <32.858261, 34.131969, 43.298943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415802, 34.044094, 43.987125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.248032, 33.835979, 43.689568>,  <32.147369, 33.711109, 43.511032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.248032, 33.835979, 43.689568>,  <32.415802, 34.044094, 43.987125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248032, 33.835979, 43.689568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142190, -0.771694, 0.619896,
		-0.896586, 0.365773, 0.249686,
		-0.419422, -0.520287, -0.743899,
		32.122204, 33.679893, 43.466396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113960, 33.795532, 44.193882>,  <32.415802, 34.044094, 43.987125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113960, 33.795532, 44.193882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.492493, 33.876102, 44.092773>,  <33.719612, 33.924442, 44.032108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.492493, 33.876102, 44.092773>,  <33.113960, 33.795532, 44.193882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492493, 33.876102, 44.092773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118120, 0.512437, 0.850563,
		0.300851, -0.834768, 0.461141,
		0.946328, 0.201422, -0.252769,
		33.776390, 33.936531, 44.016941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645927, 33.563461, 44.671406>,  <33.113960, 33.795532, 44.193882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645927, 33.563461, 44.671406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.778702, 33.898270, 44.497410>,  <33.858368, 34.099155, 44.393013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.778702, 33.898270, 44.497410>,  <33.645927, 33.563461, 44.671406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778702, 33.898270, 44.497410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107956, 0.424399, 0.899016,
		0.937104, -0.345375, 0.050512,
		0.331935, 0.837019, -0.434991,
		33.878281, 34.149376, 44.366913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300262, 33.695004, 44.815990>,  <33.645927, 33.563461, 44.671406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300262, 33.695004, 44.815990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.116478, 34.048351, 44.778996>,  <34.006207, 34.260361, 44.756798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.116478, 34.048351, 44.778996>,  <34.300262, 33.695004, 44.815990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116478, 34.048351, 44.778996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162353, 0.185903, 0.969062,
		0.873233, 0.430231, -0.228833,
		-0.459462, 0.883369, -0.092488,
		33.978638, 34.313362, 44.751247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623577, 34.351551, 44.830185>,  <34.300262, 33.695004, 44.815990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623577, 34.351551, 44.830185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.261429, 34.421268, 44.985065>,  <34.044140, 34.463100, 45.077995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.261429, 34.421268, 44.985065>,  <34.623577, 34.351551, 44.830185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261429, 34.421268, 44.985065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424409, 0.342541, 0.838178,
		0.013458, 0.923194, -0.384098,
		-0.905370, 0.174295, 0.387202,
		33.989819, 34.473557, 45.101227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549149, 35.046490, 45.048691>,  <34.623577, 34.351551, 44.830185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549149, 35.046490, 45.048691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.318344, 34.811893, 45.276051>,  <34.179859, 34.671135, 45.412468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.318344, 34.811893, 45.276051>,  <34.549149, 35.046490, 45.048691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318344, 34.811893, 45.276051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495762, 0.301550, 0.814425,
		-0.649057, 0.751726, 0.116763,
		-0.577014, -0.586494, 0.568400,
		34.145241, 34.635944, 45.446571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851837, 35.199844, 45.709156>,  <34.549149, 35.046490, 45.048691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851837, 35.199844, 45.709156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.536617, 34.977489, 45.814968>,  <34.347485, 34.844078, 45.878456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.536617, 34.977489, 45.814968>,  <34.851837, 35.199844, 45.709156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536617, 34.977489, 45.814968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159031, 0.231290, 0.959799,
		-0.594720, 0.798434, -0.093865,
		-0.788046, -0.555885, 0.264529,
		34.300205, 34.810722, 45.894325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397324, 35.646446, 45.947124>,  <34.851837, 35.199844, 45.709156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397324, 35.646446, 45.947124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.375805, 35.283482, 46.113842>,  <34.362892, 35.065704, 46.213871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.375805, 35.283482, 46.113842>,  <34.397324, 35.646446, 45.947124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375805, 35.283482, 46.113842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008721, 0.417811, 0.908492,
		-0.998514, 0.045243, -0.030392,
		-0.053801, -0.907407, 0.416795,
		34.359665, 35.011261, 46.238880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901867, 35.678879, 46.511768>,  <34.397324, 35.646446, 45.947124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901867, 35.678879, 46.511768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.148056, 35.376839, 46.602127>,  <34.295769, 35.195614, 46.656342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.148056, 35.376839, 46.602127>,  <33.901867, 35.678879, 46.511768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148056, 35.376839, 46.602127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208577, 0.432433, 0.877210,
		-0.760061, -0.492780, 0.423645,
		0.615469, -0.755096, 0.225893,
		34.332695, 35.150311, 46.669895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705433, 35.552887, 47.245346>,  <33.901867, 35.678879, 46.511768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705433, 35.552887, 47.245346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.080353, 35.430103, 47.179329>,  <34.305305, 35.356434, 47.139717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.080353, 35.430103, 47.179329>,  <33.705433, 35.552887, 47.245346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080353, 35.430103, 47.179329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264144, 0.316745, 0.910989,
		-0.227359, -0.897468, 0.377967,
		0.937302, -0.306959, -0.165046,
		34.361542, 35.338017, 47.129814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603241, 35.918869, 47.947044>,  <33.705433, 35.552887, 47.245346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603241, 35.918869, 47.947044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.964684, 36.026196, 48.080616>,  <34.181549, 36.090591, 48.160759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.964684, 36.026196, 48.080616>,  <33.603241, 35.918869, 47.947044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964684, 36.026196, 48.080616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354291, -0.906286, -0.230484,
		0.240792, 0.326574, -0.913985,
		0.903602, 0.268318, 0.333929,
		34.235764, 36.106689, 48.180794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074986, 36.254498, 48.399113>,  <33.603241, 35.918869, 47.947044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074986, 36.254498, 48.399113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.170647, 36.124512, 48.765106>,  <33.228043, 36.046520, 48.984703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.170647, 36.124512, 48.765106>,  <33.074986, 36.254498, 48.399113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170647, 36.124512, 48.765106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970132, 0.040584, -0.239157,
		0.040584, 0.944854, 0.324967,
		0.239157, -0.324967, 0.914987,
		33.242393, 36.027023, 49.039600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594589, 36.649349, 48.755295>,  <33.074986, 36.254498, 48.399113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594589, 36.649349, 48.755295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625507, 36.274586, 48.891670>,  <33.644058, 36.049728, 48.973495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625507, 36.274586, 48.891670>,  <33.594589, 36.649349, 48.755295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625507, 36.274586, 48.891670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993394, 0.043279, -0.106282,
		0.084821, 0.346897, 0.934060,
		0.077294, -0.936904, 0.340935,
		33.648697, 35.993515, 48.993950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103733, 36.681973, 49.218033>,  <33.594589, 36.649349, 48.755295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103733, 36.681973, 49.218033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065876, 36.292957, 49.132980>,  <34.043159, 36.059547, 49.081947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065876, 36.292957, 49.132980>,  <34.103733, 36.681973, 49.218033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065876, 36.292957, 49.132980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986004, -0.062130, -0.154711,
		0.137251, -0.224298, 0.964807,
		-0.094645, -0.972538, -0.212632,
		34.037483, 36.001198, 49.069191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640533, 36.337975, 49.572926>,  <34.103733, 36.681973, 49.218033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640533, 36.337975, 49.572926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.527378, 36.087929, 49.281940>,  <34.459484, 35.937901, 49.107349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.527378, 36.087929, 49.281940>,  <34.640533, 36.337975, 49.572926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527378, 36.087929, 49.281940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957441, -0.138732, -0.253101,
		0.057294, -0.768104, 0.637756,
		-0.282886, -0.625115, -0.727466,
		34.442513, 35.900394, 49.063702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012074, 35.719494, 49.681572>,  <34.640533, 36.337975, 49.572926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012074, 35.719494, 49.681572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.908352, 35.683304, 49.296951>,  <34.846119, 35.661591, 49.066181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.908352, 35.683304, 49.296951>,  <35.012074, 35.719494, 49.681572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908352, 35.683304, 49.296951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935053, -0.272717, -0.226497,
		-0.241738, -0.957830, 0.155319,
		-0.259303, -0.090479, -0.961549,
		34.830563, 35.656158, 49.008488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169170, 35.090832, 49.476906>,  <35.012074, 35.719494, 49.681572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169170, 35.090832, 49.476906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.146046, 35.279510, 49.124962>,  <35.132172, 35.392719, 48.913795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.146046, 35.279510, 49.124962>,  <35.169170, 35.090832, 49.476906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146046, 35.279510, 49.124962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867844, -0.411891, -0.277837,
		-0.493463, -0.779646, -0.385549,
		-0.057811, 0.471698, -0.879863,
		35.128704, 35.421021, 48.861004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290054, 34.587929, 48.947449>,  <35.169170, 35.090832, 49.476906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290054, 34.587929, 48.947449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.382061, 34.941517, 48.784630>,  <35.437267, 35.153667, 48.686939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.382061, 34.941517, 48.784630>,  <35.290054, 34.587929, 48.947449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382061, 34.941517, 48.784630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880836, -0.366947, -0.299129,
		-0.413787, -0.289740, -0.863036,
		0.230019, 0.883969, -0.407052,
		35.451065, 35.206707, 48.662514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404205, 34.424877, 48.245289>,  <35.290054, 34.587929, 48.947449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404205, 34.424877, 48.245289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.573154, 34.786800, 48.266888>,  <35.674526, 35.003956, 48.279846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.573154, 34.786800, 48.266888>,  <35.404205, 34.424877, 48.245289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573154, 34.786800, 48.266888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833876, -0.364530, -0.414449,
		-0.355316, 0.220078, -0.908469,
		0.422375, 0.904812, 0.053994,
		35.699867, 35.058243, 48.283085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867516, 34.535381, 47.682060>,  <35.404205, 34.424877, 48.245289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867516, 34.535381, 47.682060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.035633, 34.834133, 47.888176>,  <36.136501, 35.013386, 48.011845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.035633, 34.834133, 47.888176>,  <35.867516, 34.535381, 47.682060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035633, 34.834133, 47.888176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906589, -0.369496, -0.203887,
		0.038119, 0.552849, -0.832409,
		0.420290, 0.746881, 0.515292,
		36.161720, 35.058197, 48.042763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237301, 34.879360, 47.260746>,  <35.867516, 34.535381, 47.682060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237301, 34.879360, 47.260746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406097, 34.965668, 47.612965>,  <36.507374, 35.017452, 47.824295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406097, 34.965668, 47.612965>,  <36.237301, 34.879360, 47.260746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406097, 34.965668, 47.612965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903894, -0.175132, -0.390262,
		0.070006, 0.960611, -0.268936,
		0.421989, 0.215769, 0.880550,
		36.532696, 35.030399, 47.877129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842800, 35.397091, 47.069996>,  <36.237301, 34.879360, 47.260746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842800, 35.397091, 47.069996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.926468, 35.240776, 47.428558>,  <36.976669, 35.146988, 47.643696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.926468, 35.240776, 47.428558>,  <36.842800, 35.397091, 47.069996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926468, 35.240776, 47.428558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913427, -0.249211, -0.321783,
		0.349141, 0.886105, 0.304826,
		0.209168, -0.390785, 0.896402,
		36.989220, 35.123539, 47.697479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456680, 35.726082, 47.374729>,  <36.842800, 35.397091, 47.069996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456680, 35.726082, 47.374729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432850, 35.365452, 47.546127>,  <37.418552, 35.149075, 47.648968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432850, 35.365452, 47.546127>,  <37.456680, 35.726082, 47.374729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432850, 35.365452, 47.546127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953383, -0.178598, -0.243235,
		0.295824, 0.394031, 0.870188,
		-0.059572, -0.901578, 0.428496,
		37.414978, 35.094978, 47.674675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112038, 35.627098, 47.705532>,  <37.456680, 35.726082, 47.374729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112038, 35.627098, 47.705532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.967983, 35.255096, 47.676147>,  <37.881550, 35.031895, 47.658516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.967983, 35.255096, 47.676147>,  <38.112038, 35.627098, 47.705532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967983, 35.255096, 47.676147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911611, -0.334095, -0.239472,
		0.198166, -0.153213, 0.968120,
		-0.360134, -0.930004, -0.073464,
		37.859943, 34.976097, 47.654110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493172, 35.129795, 48.160049>,  <38.112038, 35.627098, 47.705532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493172, 35.129795, 48.160049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373978, 34.937870, 47.829964>,  <38.302460, 34.822716, 47.631912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373978, 34.937870, 47.829964>,  <38.493172, 35.129795, 48.160049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373978, 34.937870, 47.829964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933422, -0.327426, -0.146680,
		-0.199818, -0.813983, 0.545440,
		-0.297986, -0.479817, -0.825215,
		38.284580, 34.793926, 47.582397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973621, 34.619938, 47.961445>,  <38.493172, 35.129795, 48.160049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973621, 34.619938, 47.961445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.770725, 34.649723, 47.618011>,  <38.648987, 34.667595, 47.411953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.770725, 34.649723, 47.618011>,  <38.973621, 34.619938, 47.961445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770725, 34.649723, 47.618011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822975, -0.253828, -0.508217,
		-0.255784, -0.964378, 0.067456,
		-0.507235, 0.074479, -0.858584,
		38.618553, 34.672062, 47.360435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982285, 33.919296, 47.583256>,  <38.973621, 34.619938, 47.961445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982285, 33.919296, 47.583256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.971424, 34.273571, 47.397858>,  <38.964909, 34.486134, 47.286621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.971424, 34.273571, 47.397858>,  <38.982285, 33.919296, 47.583256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971424, 34.273571, 47.397858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952693, -0.117485, -0.280308,
		-0.302718, -0.449176, -0.840596,
		-0.027150, 0.885685, -0.463492,
		38.963280, 34.539276, 47.258812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999039, 33.360344, 48.013893>,  <38.982285, 33.919296, 47.583256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999039, 33.360344, 48.013893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.149506, 33.018387, 48.156811>,  <39.239784, 32.813213, 48.242561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.149506, 33.018387, 48.156811>,  <38.999039, 33.360344, 48.013893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149506, 33.018387, 48.156811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240654, 0.282233, 0.928671,
		-0.894754, -0.435317, -0.099568,
		0.376166, -0.854894, 0.357290,
		39.262356, 32.761917, 48.263996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499687, 32.780979, 48.304901>,  <38.999039, 33.360344, 48.013893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499687, 32.780979, 48.304901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.852371, 32.838230, 48.484722>,  <39.063984, 32.872581, 48.592613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.852371, 32.838230, 48.484722>,  <38.499687, 32.780979, 48.304901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852371, 32.838230, 48.484722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466513, 0.406542, 0.785550,
		-0.070332, -0.902352, 0.425222,
		0.881713, 0.143123, 0.449552,
		39.116886, 32.881168, 48.619587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325962, 33.412514, 48.805542>,  <38.499687, 32.780979, 48.304901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325962, 33.412514, 48.805542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.648773, 33.200958, 48.910599>,  <38.842461, 33.074024, 48.973633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.648773, 33.200958, 48.910599>,  <38.325962, 33.412514, 48.805542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648773, 33.200958, 48.910599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016339, 0.424599, 0.905234,
		-0.590288, -0.734840, 0.334021,
		0.807027, -0.528891, 0.262642,
		38.890881, 33.042290, 48.989391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254433, 32.808548, 49.363174>,  <38.325962, 33.412514, 48.805542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254433, 32.808548, 49.363174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.605339, 33.000549, 49.363060>,  <38.815884, 33.115749, 49.362991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.605339, 33.000549, 49.363060>,  <38.254433, 32.808548, 49.363174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605339, 33.000549, 49.363060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227018, 0.415422, 0.880844,
		0.422940, -0.772663, 0.473405,
		0.877259, 0.480017, -0.000290,
		38.868519, 33.144550, 49.362976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809540, 32.696857, 50.022804>,  <38.254433, 32.808548, 49.363174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809540, 32.696857, 50.022804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.882362, 33.058887, 49.869080>,  <38.926056, 33.276104, 49.776844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.882362, 33.058887, 49.869080>,  <38.809540, 32.696857, 50.022804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882362, 33.058887, 49.869080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054702, 0.380914, 0.922991,
		0.981765, -0.189059, 0.019839,
		0.182056, 0.905075, -0.384310,
		38.936977, 33.330410, 49.753788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142414, 32.926365, 50.509605>,  <38.809540, 32.696857, 50.022804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142414, 32.926365, 50.509605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.069592, 33.260872, 50.302719>,  <39.025898, 33.461575, 50.178585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.069592, 33.260872, 50.302719>,  <39.142414, 32.926365, 50.509605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069592, 33.260872, 50.302719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233410, 0.474220, 0.848902,
		0.955183, 0.275272, 0.108858,
		-0.182056, 0.836266, -0.517218,
		39.014977, 33.511753, 50.147552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492088, 33.533775, 50.808876>,  <39.142414, 32.926365, 50.509605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492088, 33.533775, 50.808876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.134586, 33.583149, 50.636383>,  <38.920086, 33.612774, 50.532887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.134586, 33.583149, 50.636383>,  <39.492088, 33.533775, 50.808876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134586, 33.583149, 50.636383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392027, 0.252232, 0.884700,
		0.217971, 0.959762, -0.177046,
		-0.893758, 0.123432, -0.431232,
		38.866459, 33.620178, 50.507015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130997, 34.067532, 51.166096>,  <39.492088, 33.533775, 50.808876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130997, 34.067532, 51.166096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.822121, 33.894539, 50.979897>,  <38.636795, 33.790745, 50.868179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.822121, 33.894539, 50.979897>,  <39.130997, 34.067532, 51.166096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822121, 33.894539, 50.979897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562105, 0.123391, 0.817810,
		-0.296246, 0.893162, -0.338379,
		-0.772189, -0.432477, -0.465496,
		38.590466, 33.764797, 50.840248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495945, 34.561523, 51.202709>,  <39.130997, 34.067532, 51.166096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495945, 34.561523, 51.202709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.386410, 34.180069, 51.152775>,  <38.320690, 33.951195, 51.122814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.386410, 34.180069, 51.152775>,  <38.495945, 34.561523, 51.202709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386410, 34.180069, 51.152775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552222, 0.049631, 0.832219,
		-0.787441, 0.296830, -0.540212,
		-0.273838, -0.953640, -0.124835,
		38.304256, 33.893978, 51.115326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744831, 34.494003, 51.142876>,  <38.495945, 34.561523, 51.202709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744831, 34.494003, 51.142876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883614, 34.135902, 51.254696>,  <37.966885, 33.921043, 51.321789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.883614, 34.135902, 51.254696>,  <37.744831, 34.494003, 51.142876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883614, 34.135902, 51.254696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688182, -0.040501, 0.724407,
		-0.637203, -0.443720, -0.630147,
		0.346955, -0.895250, 0.279553,
		37.987701, 33.867329, 51.338562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202629, 34.105591, 51.180882>,  <37.744831, 34.494003, 51.142876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202629, 34.105591, 51.180882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.461407, 33.877174, 51.383018>,  <37.616673, 33.740124, 51.504299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.461407, 33.877174, 51.383018>,  <37.202629, 34.105591, 51.180882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461407, 33.877174, 51.383018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627577, -0.022298, 0.778235,
		-0.433138, -0.820617, -0.372800,
		0.646945, -0.571043, 0.505342,
		37.655491, 33.705860, 51.534622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867966, 33.558411, 51.474487>,  <37.202629, 34.105591, 51.180882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867966, 33.558411, 51.474487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.201565, 33.588230, 51.693169>,  <37.401726, 33.606121, 51.824379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.201565, 33.588230, 51.693169>,  <36.867966, 33.558411, 51.474487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201565, 33.588230, 51.693169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549143, 0.208646, 0.809264,
		-0.053737, -0.975146, 0.214950,
		0.833999, 0.074551, 0.546706,
		37.451763, 33.610596, 51.857182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766415, 33.089088, 52.043835>,  <36.867966, 33.558411, 51.474487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766415, 33.089088, 52.043835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.070202, 33.325893, 52.151703>,  <37.252476, 33.467976, 52.216423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.070202, 33.325893, 52.151703>,  <36.766415, 33.089088, 52.043835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070202, 33.325893, 52.151703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455507, 0.187987, 0.870158,
		0.464455, -0.783694, 0.412438,
		0.759471, 0.592017, 0.269667,
		37.298042, 33.503498, 52.232601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885178, 32.861130, 52.753082>,  <36.766415, 33.089088, 52.043835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885178, 32.861130, 52.753082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.019184, 33.230854, 52.679962>,  <37.099586, 33.452690, 52.636089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.019184, 33.230854, 52.679962>,  <36.885178, 32.861130, 52.753082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019184, 33.230854, 52.679962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539267, 0.347187, 0.767237,
		0.772631, -0.158458, 0.614762,
		0.335012, 0.924312, -0.182796,
		37.119686, 33.508148, 52.625122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626045, 33.207424, 53.252609>,  <36.885178, 32.861130, 52.753082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626045, 33.207424, 53.252609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754536, 33.525135, 53.046329>,  <36.831631, 33.715759, 52.922562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754536, 33.525135, 53.046329>,  <36.626045, 33.207424, 53.252609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754536, 33.525135, 53.046329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475583, 0.606207, 0.637443,
		0.818924, 0.040495, 0.572472,
		0.321223, 0.794276, -0.515696,
		36.850903, 33.763416, 52.891621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907726, 33.643116, 53.755180>,  <36.626045, 33.207424, 53.252609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907726, 33.643116, 53.755180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.795731, 33.875999, 53.449856>,  <36.728535, 34.015728, 53.266663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.795731, 33.875999, 53.449856>,  <36.907726, 33.643116, 53.755180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795731, 33.875999, 53.449856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392653, 0.656112, 0.644469,
		0.876030, 0.480161, 0.044900,
		-0.279990, 0.582205, -0.763311,
		36.711735, 34.050659, 53.220863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035690, 34.267521, 54.049908>,  <36.907726, 33.643116, 53.755180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035690, 34.267521, 54.049908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.825420, 34.365379, 53.724010>,  <36.699257, 34.424095, 53.528473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.825420, 34.365379, 53.724010>,  <37.035690, 34.267521, 54.049908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825420, 34.365379, 53.724010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304567, 0.840140, 0.448781,
		0.794295, 0.484058, -0.367128,
		-0.525675, 0.244649, -0.814747,
		36.667717, 34.438774, 53.479588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193890, 34.955021, 53.829254>,  <37.035690, 34.267521, 54.049908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193890, 34.955021, 53.829254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.836006, 34.866245, 53.674213>,  <36.621277, 34.812981, 53.581188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.836006, 34.866245, 53.674213>,  <37.193890, 34.955021, 53.829254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836006, 34.866245, 53.674213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407623, 0.760474, 0.505492,
		0.182570, 0.610264, -0.770874,
		-0.894713, -0.221938, -0.387598,
		36.567593, 34.799664, 53.557934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825268, 35.584324, 53.531052>,  <37.193890, 34.955021, 53.829254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825268, 35.584324, 53.531052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.532772, 35.315708, 53.578907>,  <36.357273, 35.154537, 53.607620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.532772, 35.315708, 53.578907>,  <36.825268, 35.584324, 53.531052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532772, 35.315708, 53.578907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577636, 0.702927, 0.415007,
		-0.362794, 0.234361, -0.901917,
		-0.731244, -0.671542, 0.119643,
		36.313400, 35.114246, 53.614799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286282, 35.982777, 53.439487>,  <36.825268, 35.584324, 53.531052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286282, 35.982777, 53.439487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.140491, 35.656281, 53.618782>,  <36.053017, 35.460384, 53.726360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.140491, 35.656281, 53.618782>,  <36.286282, 35.982777, 53.439487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140491, 35.656281, 53.618782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607500, 0.573225, 0.549869,
		-0.705764, -0.071892, -0.704789,
		-0.364472, -0.816238, 0.448236,
		36.031151, 35.411407, 53.753254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628071, 36.270798, 53.588417>,  <36.286282, 35.982777, 53.439487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628071, 36.270798, 53.588417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.669903, 35.943310, 53.814251>,  <35.695004, 35.746815, 53.949753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.669903, 35.943310, 53.814251>,  <35.628071, 36.270798, 53.588417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669903, 35.943310, 53.814251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500416, 0.447276, 0.741302,
		-0.859446, -0.360054, -0.362925,
		0.104581, -0.818722, 0.564586,
		35.701279, 35.697693, 53.983627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009201, 36.248775, 53.897163>,  <35.628071, 36.270798, 53.588417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009201, 36.248775, 53.897163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.249592, 36.022934, 54.123455>,  <35.393826, 35.887428, 54.259228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.249592, 36.022934, 54.123455>,  <35.009201, 36.248775, 53.897163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249592, 36.022934, 54.123455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384908, 0.415877, 0.823949,
		-0.700478, -0.712928, 0.032613,
		0.600980, -0.564605, 0.565724,
		35.429886, 35.853554, 54.293171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557053, 35.817551, 54.389984>,  <35.009201, 36.248775, 53.897163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557053, 35.817551, 54.389984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918228, 35.868698, 54.554111>,  <35.134933, 35.899387, 54.652588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.918228, 35.868698, 54.554111>,  <34.557053, 35.817551, 54.389984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918228, 35.868698, 54.554111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425837, 0.395154, 0.813951,
		-0.058060, -0.909672, 0.411249,
		0.902935, 0.127867, 0.410315,
		35.189110, 35.907059, 54.677204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514164, 35.727993, 55.130814>,  <34.557053, 35.817551, 54.389984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514164, 35.727993, 55.130814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.860912, 35.927174, 55.121227>,  <35.068962, 36.046680, 55.115475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.860912, 35.927174, 55.121227>,  <34.514164, 35.727993, 55.130814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860912, 35.927174, 55.121227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294637, 0.550527, 0.781095,
		0.402142, -0.670049, 0.623952,
		0.866875, 0.497950, -0.023969,
		35.120975, 36.076557, 55.114037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852898, 35.638947, 55.804245>,  <34.514164, 35.727993, 55.130814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852898, 35.638947, 55.804245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030693, 35.972591, 55.673592>,  <35.137371, 36.172779, 55.595200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030693, 35.972591, 55.673592>,  <34.852898, 35.638947, 55.804245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030693, 35.972591, 55.673592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372550, 0.503739, 0.779393,
		0.814639, -0.224743, 0.534654,
		0.444489, 0.834109, -0.326638,
		35.164040, 36.222824, 55.575600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287468, 35.891357, 56.389050>,  <34.852898, 35.638947, 55.804245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287468, 35.891357, 56.389050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.210182, 36.184338, 56.127918>,  <35.163811, 36.360126, 55.971237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.210182, 36.184338, 56.127918>,  <35.287468, 35.891357, 56.389050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210182, 36.184338, 56.127918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348734, 0.570654, 0.743464,
		0.917089, 0.371312, 0.145171,
		-0.193214, 0.732449, -0.652830,
		35.152218, 36.404072, 55.932068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366890, 36.439724, 56.728409>,  <35.287468, 35.891357, 56.389050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366890, 36.439724, 56.728409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165794, 36.616367, 56.431156>,  <35.045139, 36.722355, 56.252804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165794, 36.616367, 56.431156>,  <35.366890, 36.439724, 56.728409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165794, 36.616367, 56.431156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467750, 0.583969, 0.663468,
		0.726956, 0.681147, -0.087020,
		-0.502737, 0.441609, -0.743127,
		35.014973, 36.748852, 56.208218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223183, 37.139759, 56.952820>,  <35.366890, 36.439724, 56.728409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223183, 37.139759, 56.952820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.959450, 37.118858, 56.652805>,  <34.801208, 37.106319, 56.472797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.959450, 37.118858, 56.652805>,  <35.223183, 37.139759, 56.952820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959450, 37.118858, 56.652805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504750, 0.770114, 0.390067,
		0.557229, 0.635764, -0.534135,
		-0.659335, -0.052248, -0.750032,
		34.761650, 37.103184, 56.427795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091084, 37.825169, 56.614498>,  <35.223183, 37.139759, 56.952820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091084, 37.825169, 56.614498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761349, 37.606434, 56.555923>,  <34.563507, 37.475193, 56.520779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761349, 37.606434, 56.555923>,  <35.091084, 37.825169, 56.614498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761349, 37.606434, 56.555923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563792, 0.769658, 0.299609,
		-0.051129, 0.329539, -0.942756,
		-0.824333, -0.546837, -0.146440,
		34.514050, 37.442383, 56.511990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634506, 38.256981, 56.241753>,  <35.091084, 37.825169, 56.614498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634506, 38.256981, 56.241753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.399784, 37.978523, 56.407185>,  <34.258949, 37.811451, 56.506443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.399784, 37.978523, 56.407185>,  <34.634506, 38.256981, 56.241753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399784, 37.978523, 56.407185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628741, 0.713579, 0.309015,
		-0.510240, -0.078704, -0.856424,
		-0.586805, -0.696140, 0.413581,
		34.223743, 37.769680, 56.531258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983082, 38.562225, 56.191994>,  <34.634506, 38.256981, 56.241753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983082, 38.562225, 56.191994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.937859, 38.267445, 56.458565>,  <33.910725, 38.090576, 56.618507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.937859, 38.267445, 56.458565>,  <33.983082, 38.562225, 56.191994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937859, 38.267445, 56.458565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678838, 0.547066, 0.489794,
		-0.725533, -0.397021, -0.562118,
		-0.113057, -0.736949, 0.666427,
		33.903942, 38.046360, 56.658493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262772, 38.517246, 56.231712>,  <33.983082, 38.562225, 56.191994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262772, 38.517246, 56.231712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.417274, 38.366470, 56.568455>,  <33.509975, 38.276005, 56.770500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.417274, 38.366470, 56.568455>,  <33.262772, 38.517246, 56.231712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417274, 38.366470, 56.568455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785923, 0.343265, 0.514290,
		-0.482836, -0.860282, -0.163659,
		0.386256, -0.376941, 0.841856,
		33.533150, 38.253387, 56.821011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705826, 38.240696, 56.636944>,  <33.262772, 38.517246, 56.231712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705826, 38.240696, 56.636944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.977688, 38.336353, 56.914326>,  <33.140804, 38.393745, 57.080753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.977688, 38.336353, 56.914326>,  <32.705826, 38.240696, 56.636944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977688, 38.336353, 56.914326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732913, 0.182617, 0.655355,
		0.030085, -0.953658, 0.299386,
		0.679657, 0.239140, 0.693454,
		33.181583, 38.408096, 57.122360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584644, 37.750294, 57.229080>,  <32.705826, 38.240696, 56.636944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584644, 37.750294, 57.229080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.746990, 38.108032, 57.304359>,  <32.844398, 38.322674, 57.349525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.746990, 38.108032, 57.304359>,  <32.584644, 37.750294, 57.229080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746990, 38.108032, 57.304359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758427, 0.214693, 0.615382,
		0.509959, -0.392497, 0.765433,
		0.405869, 0.894345, 0.188196,
		32.868752, 38.376335, 57.360817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255604, 37.984604, 57.865295>,  <32.584644, 37.750294, 57.229080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255604, 37.984604, 57.865295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.389130, 38.334137, 57.723881>,  <32.469246, 38.543858, 57.639030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.389130, 38.334137, 57.723881>,  <32.255604, 37.984604, 57.865295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389130, 38.334137, 57.723881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618363, 0.486069, 0.617547,
		0.711475, 0.012471, 0.702600,
		0.333811, 0.873831, -0.353538,
		32.489273, 38.596287, 57.617821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397953, 38.386517, 58.447472>,  <32.255604, 37.984604, 57.865295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397953, 38.386517, 58.447472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335472, 38.624035, 58.131748>,  <32.297985, 38.766544, 57.942314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335472, 38.624035, 58.131748>,  <32.397953, 38.386517, 58.447472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335472, 38.624035, 58.131748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690008, 0.506193, 0.517356,
		0.706746, 0.625441, 0.330656,
		-0.156200, 0.593795, -0.789309,
		32.288612, 38.802174, 57.894955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461338, 39.099422, 58.570549>,  <32.397953, 38.386517, 58.447472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461338, 39.099422, 58.570549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.231121, 39.119183, 58.244038>,  <32.092991, 39.131039, 58.048130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.231121, 39.119183, 58.244038>,  <32.461338, 39.099422, 58.570549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231121, 39.119183, 58.244038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659833, 0.561604, 0.499221,
		0.483086, 0.825930, -0.290631,
		-0.575541, 0.049399, -0.816279,
		32.058460, 39.134003, 57.999153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240814, 39.745510, 58.585270>,  <32.461338, 39.099422, 58.570549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240814, 39.745510, 58.585270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.995356, 39.585213, 58.313141>,  <31.848082, 39.489033, 58.149864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.995356, 39.585213, 58.313141>,  <32.240814, 39.745510, 58.585270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995356, 39.585213, 58.313141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735144, 0.604368, 0.307087,
		0.288103, 0.688580, -0.665473,
		-0.613645, -0.400747, -0.680326,
		31.811262, 39.464989, 58.109043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995918, 40.308380, 58.149872>,  <32.240814, 39.745510, 58.585270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995918, 40.308380, 58.149872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.733910, 40.006824, 58.129478>,  <31.576704, 39.825890, 58.117241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.733910, 40.006824, 58.129478>,  <31.995918, 40.308380, 58.149872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733910, 40.006824, 58.129478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714772, 0.596322, 0.365377,
		-0.245050, 0.275772, -0.929462,
		-0.655020, -0.753889, -0.050985,
		31.537403, 39.780659, 58.114182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378407, 40.541103, 57.860157>,  <31.995918, 40.308380, 58.149872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378407, 40.541103, 57.860157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.283951, 40.199680, 58.045921>,  <31.227278, 39.994827, 58.157379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.283951, 40.199680, 58.045921>,  <31.378407, 40.541103, 57.860157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283951, 40.199680, 58.045921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710132, 0.477817, 0.517112,
		-0.663289, -0.207685, -0.718968,
		-0.236138, -0.853556, 0.464414,
		31.213110, 39.943615, 58.185246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715385, 40.416016, 57.708927>,  <31.378407, 40.541103, 57.860157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715385, 40.416016, 57.708927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.771572, 40.231804, 58.059509>,  <30.805285, 40.121277, 58.269859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.771572, 40.231804, 58.059509>,  <30.715385, 40.416016, 57.708927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771572, 40.231804, 58.059509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798485, 0.470710, 0.375304,
		-0.585397, -0.752557, -0.301608,
		0.140468, -0.460532, 0.876458,
		30.813713, 40.093643, 58.322445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147093, 40.377529, 57.903336>,  <30.715385, 40.416016, 57.708927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147093, 40.377529, 57.903336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.330408, 40.310055, 58.252396>,  <30.440397, 40.269569, 58.461830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.330408, 40.310055, 58.252396>,  <30.147093, 40.377529, 57.903336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330408, 40.310055, 58.252396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829982, 0.270020, 0.488076,
		-0.317963, -0.947964, -0.016256,
		0.458289, -0.168683, 0.872650,
		30.467896, 40.259449, 58.514191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699884, 39.980366, 58.232780>,  <30.147093, 40.377529, 57.903336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699884, 39.980366, 58.232780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.948223, 40.149414, 58.496883>,  <30.097227, 40.250843, 58.655346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.948223, 40.149414, 58.496883>,  <29.699884, 39.980366, 58.232780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948223, 40.149414, 58.496883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781683, 0.397475, 0.480609,
		-0.059322, -0.814499, 0.577124,
		0.620848, 0.422618, 0.660259,
		30.134478, 40.276199, 58.694962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570684, 39.715000, 58.870480>,  <29.699884, 39.980366, 58.232780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570684, 39.715000, 58.870480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.742176, 40.069126, 58.942493>,  <29.845072, 40.281601, 58.985703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.742176, 40.069126, 58.942493>,  <29.570684, 39.715000, 58.870480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742176, 40.069126, 58.942493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809126, 0.287628, 0.512431,
		0.401879, -0.365363, 0.839645,
		0.428728, 0.885314, 0.180033,
		29.870794, 40.334721, 58.996502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285820, 39.760353, 59.468937>,  <29.570684, 39.715000, 58.870480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285820, 39.760353, 59.468937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.426920, 40.125706, 59.387653>,  <29.511580, 40.344917, 59.338882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.426920, 40.125706, 59.387653>,  <29.285820, 39.760353, 59.468937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426920, 40.125706, 59.387653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706487, 0.402375, 0.582212,
		0.613549, -0.061813, 0.787234,
		0.352751, 0.913386, -0.203206,
		29.532745, 40.399723, 59.326691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552084, 40.157646, 60.051441>,  <29.285820, 39.760353, 59.468937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552084, 40.157646, 60.051441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.415886, 40.428989, 59.791012>,  <29.334167, 40.591797, 59.634754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.415886, 40.428989, 59.791012>,  <29.552084, 40.157646, 60.051441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415886, 40.428989, 59.791012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733356, 0.241751, 0.635410,
		0.588433, 0.693819, 0.415164,
		-0.340494, 0.678360, -0.651070,
		29.313738, 40.632496, 59.595692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297415, 40.326038, 59.889149>,  <29.552084, 40.157646, 60.051441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297415, 40.326038, 59.889149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.473686, 40.065945, 60.136696>,  <30.579449, 39.909889, 60.285225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.473686, 40.065945, 60.136696>,  <30.297415, 40.326038, 59.889149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473686, 40.065945, 60.136696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524599, -0.372888, -0.765343,
		0.728421, 0.661928, 0.176789,
		0.440680, -0.650236, 0.618866,
		30.605890, 39.870872, 60.322357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010073, 40.960857, 59.838799>,  <30.297415, 40.326038, 59.889149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010073, 40.960857, 59.838799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.881889, 41.334206, 59.903446>,  <29.804979, 41.558216, 59.942234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.881889, 41.334206, 59.903446>,  <30.010073, 40.960857, 59.838799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881889, 41.334206, 59.903446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319809, -0.267204, 0.909024,
		0.891643, 0.239618, 0.384129,
		-0.320459, 0.933373, 0.161619,
		29.785751, 41.614216, 59.951931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328941, 41.160309, 60.495037>,  <30.010073, 40.960857, 59.838799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328941, 41.160309, 60.495037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.994532, 41.359634, 60.403164>,  <29.793886, 41.479229, 60.348042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.994532, 41.359634, 60.403164>,  <30.328941, 41.160309, 60.495037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994532, 41.359634, 60.403164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329421, -0.121073, 0.936388,
		0.438803, 0.858504, 0.265374,
		-0.836022, 0.498310, -0.229682,
		29.743725, 41.509129, 60.334259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988161, 41.152184, 61.203125>,  <30.328941, 41.160309, 60.495037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988161, 41.152184, 61.203125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.671722, 41.233364, 61.433941>,  <29.481859, 41.282070, 61.572430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.671722, 41.233364, 61.433941>,  <29.988161, 41.152184, 61.203125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671722, 41.233364, 61.433941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052053, -0.917599, 0.394084,
		0.609471, 0.341795, 0.715346,
		-0.791098, 0.202947, 0.577042,
		29.434393, 41.294247, 61.607052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826788, 41.916054, 61.150154>,  <29.988161, 41.152184, 61.203125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826788, 41.916054, 61.150154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.938669, 42.296303, 61.096363>,  <30.005798, 42.524452, 61.064091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.938669, 42.296303, 61.096363>,  <29.826788, 41.916054, 61.150154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938669, 42.296303, 61.096363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421909, -0.004113, -0.906629,
		-0.862414, 0.310324, 0.399926,
		0.279704, 0.950622, -0.134475,
		30.022581, 42.581490, 61.056019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260540, 42.375778, 60.917603>,  <29.826788, 41.916054, 61.150154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260540, 42.375778, 60.917603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.610058, 42.520031, 60.787109>,  <29.819769, 42.606583, 60.708813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.610058, 42.520031, 60.787109>,  <29.260540, 42.375778, 60.917603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610058, 42.520031, 60.787109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342157, -0.020785, -0.939413,
		-0.345561, 0.932478, 0.105230,
		0.873794, 0.360629, -0.326236,
		29.872196, 42.628220, 60.689240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127495, 42.858940, 60.275826>,  <29.260540, 42.375778, 60.917603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127495, 42.858940, 60.275826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.516010, 42.765507, 60.257790>,  <29.749121, 42.709446, 60.246967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.516010, 42.765507, 60.257790>,  <29.127495, 42.858940, 60.275826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516010, 42.765507, 60.257790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082082, -0.151165, -0.985095,
		0.223287, 0.960514, -0.165998,
		0.971291, -0.233584, -0.045088,
		29.807398, 42.695431, 60.244263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485092, 43.207176, 59.737144>,  <29.127495, 42.858940, 60.275826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485092, 43.207176, 59.737144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.715635, 42.885220, 59.793652>,  <29.853962, 42.692043, 59.827557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.715635, 42.885220, 59.793652>,  <29.485092, 43.207176, 59.737144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715635, 42.885220, 59.793652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123129, -0.256426, -0.958689,
		0.807868, 0.535154, -0.246899,
		0.576358, -0.804895, 0.141265,
		29.888542, 42.643749, 59.836033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454292, 42.432034, 59.392551>,  <29.485092, 43.207176, 59.737144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454292, 42.432034, 59.392551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.843098, 42.339340, 59.407967>,  <30.076382, 42.283726, 59.417217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.843098, 42.339340, 59.407967>,  <29.454292, 42.432034, 59.392551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843098, 42.339340, 59.407967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106267, 0.287421, -0.951891,
		0.209506, 0.929349, 0.304003,
		0.972016, -0.231732, 0.038543,
		30.134703, 42.269821, 59.419529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631493, 42.972866, 59.067760>,  <29.454292, 42.432034, 59.392551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631493, 42.972866, 59.067760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.821337, 42.634071, 58.971966>,  <29.935244, 42.430794, 58.914490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.821337, 42.634071, 58.971966>,  <29.631493, 42.972866, 59.067760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821337, 42.634071, 58.971966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159430, 0.350308, -0.922966,
		0.865636, 0.399869, 0.301296,
		0.474612, -0.846988, -0.239488,
		29.963720, 42.379974, 58.900120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181404, 43.178638, 58.775837>,  <29.631493, 42.972866, 59.067760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181404, 43.178638, 58.775837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.055153, 42.823631, 58.641560>,  <29.979403, 42.610626, 58.560993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.055153, 42.823631, 58.641560>,  <30.181404, 43.178638, 58.775837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.055153, 42.823631, 58.641560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198396, 0.284230, -0.938004,
		0.927911, -0.362659, 0.086370,
		-0.315627, -0.887520, -0.335690,
		29.960464, 42.557377, 58.540852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727005, 42.938221, 58.411049>,  <30.181404, 43.178638, 58.775837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727005, 42.938221, 58.411049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.397905, 42.746178, 58.289345>,  <30.200445, 42.630951, 58.216324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.397905, 42.746178, 58.289345>,  <30.727005, 42.938221, 58.411049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397905, 42.746178, 58.289345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266982, 0.146142, -0.952556,
		0.501798, -0.864948, 0.007943,
		-0.822751, -0.480111, -0.304260,
		30.151079, 42.602146, 58.198067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038626, 42.454758, 57.877251>,  <30.727005, 42.938221, 58.411049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038626, 42.454758, 57.877251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.643679, 42.493015, 57.826717>,  <30.406712, 42.515972, 57.796398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.643679, 42.493015, 57.826717>,  <31.038626, 42.454758, 57.877251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643679, 42.493015, 57.826717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150520, 0.317083, -0.936377,
		-0.049505, -0.943563, -0.327474,
		-0.987366, 0.095646, -0.126328,
		30.347469, 42.521709, 57.788818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876280, 42.134117, 57.237007>,  <31.038626, 42.454758, 57.877251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876280, 42.134117, 57.237007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.579782, 42.386570, 57.328423>,  <30.401884, 42.538040, 57.383270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.579782, 42.386570, 57.328423>,  <30.876280, 42.134117, 57.237007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579782, 42.386570, 57.328423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006559, 0.347264, -0.937744,
		-0.671202, -0.693600, -0.261548,
		-0.741246, 0.631131, 0.228535,
		30.357409, 42.575909, 57.396984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568478, 42.198547, 56.589935>,  <30.876280, 42.134117, 57.237007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568478, 42.198547, 56.589935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.407619, 42.508026, 56.785763>,  <30.311104, 42.693714, 56.903259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.407619, 42.508026, 56.785763>,  <30.568478, 42.198547, 56.589935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407619, 42.508026, 56.785763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013760, 0.529541, -0.848173,
		-0.915472, -0.347827, -0.202308,
		-0.402147, 0.773695, 0.489566,
		30.286976, 42.740135, 56.932632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019676, 42.353649, 56.253796>,  <30.568478, 42.198547, 56.589935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019676, 42.353649, 56.253796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.105286, 42.689724, 56.453102>,  <30.156651, 42.891369, 56.572685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.105286, 42.689724, 56.453102>,  <30.019676, 42.353649, 56.253796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105286, 42.689724, 56.453102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034810, 0.503205, -0.863466,
		-0.976208, 0.202146, 0.078451,
		0.214023, 0.840191, 0.498269,
		30.169493, 42.941780, 56.602581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842140, 42.855961, 55.813362>,  <30.019676, 42.353649, 56.253796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842140, 42.855961, 55.813362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.058538, 43.096920, 56.048119>,  <30.188377, 43.241497, 56.188972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.058538, 43.096920, 56.048119>,  <29.842140, 42.855961, 55.813362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058538, 43.096920, 56.048119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167708, 0.606543, -0.777161,
		-0.824136, 0.518866, 0.227109,
		0.540993, 0.602398, 0.586892,
		30.220837, 43.277641, 56.224186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595583, 43.442131, 55.741287>,  <29.842140, 42.855961, 55.813362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595583, 43.442131, 55.741287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.962595, 43.533943, 55.871185>,  <30.182802, 43.589031, 55.949123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.962595, 43.533943, 55.871185>,  <29.595583, 43.442131, 55.741287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962595, 43.533943, 55.871185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165260, 0.522683, -0.836356,
		-0.361706, 0.821047, 0.441645,
		0.917528, 0.229529, 0.324744,
		30.237854, 43.602802, 55.968609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601091, 44.027073, 55.602455>,  <29.595583, 43.442131, 55.741287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601091, 44.027073, 55.602455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.993149, 43.956200, 55.638058>,  <30.228384, 43.913673, 55.659420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.993149, 43.956200, 55.638058>,  <29.601091, 44.027073, 55.602455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993149, 43.956200, 55.638058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146795, 0.346636, -0.926442,
		0.133298, 0.921113, 0.365763,
		0.980144, -0.177185, 0.089009,
		30.287191, 43.903046, 55.664761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790384, 44.617290, 55.264236>,  <29.601091, 44.027073, 55.602455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790384, 44.617290, 55.264236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.109940, 44.376701, 55.264999>,  <30.301674, 44.232349, 55.265457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.109940, 44.376701, 55.264999>,  <29.790384, 44.617290, 55.264236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109940, 44.376701, 55.264999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161417, 0.211334, -0.963993,
		0.579412, 0.770433, 0.265921,
		0.798890, -0.601474, 0.001912,
		30.349607, 44.196259, 55.265572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442635, 44.884869, 54.986774>,  <29.790384, 44.617290, 55.264236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442635, 44.884869, 54.986774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.485146, 44.491550, 54.927673>,  <30.510653, 44.255558, 54.892212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.485146, 44.491550, 54.927673>,  <30.442635, 44.884869, 54.986774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485146, 44.491550, 54.927673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126960, 0.160798, -0.978787,
		0.986198, 0.085267, 0.141929,
		0.106280, -0.983297, -0.147753,
		30.517029, 44.196560, 54.883347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964705, 44.755371, 54.393627>,  <30.442635, 44.884869, 54.986774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964705, 44.755371, 54.393627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.772299, 44.405048, 54.409542>,  <30.656857, 44.194855, 54.419090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.772299, 44.405048, 54.409542>,  <30.964705, 44.755371, 54.393627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772299, 44.405048, 54.409542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187531, -0.147114, -0.971179,
		0.856422, -0.459689, 0.235005,
		-0.481013, -0.875810, 0.039786,
		30.627995, 44.142303, 54.421478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394161, 44.287815, 53.984356>,  <30.964705, 44.755371, 54.393627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394161, 44.287815, 53.984356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.042564, 44.098316, 54.006020>,  <30.831606, 43.984615, 54.019020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.042564, 44.098316, 54.006020>,  <31.394161, 44.287815, 53.984356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042564, 44.098316, 54.006020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110147, -0.312243, -0.943595,
		0.463940, -0.823447, 0.326641,
		-0.878992, -0.473750, 0.054162,
		30.778866, 43.956192, 54.022266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578749, 43.633545, 53.702423>,  <31.394161, 44.287815, 53.984356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578749, 43.633545, 53.702423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.179293, 43.612961, 53.699059>,  <30.939619, 43.600609, 53.697041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.179293, 43.612961, 53.699059>,  <31.578749, 43.633545, 53.702423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179293, 43.612961, 53.699059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031539, -0.467634, -0.883360,
		0.041526, -0.882423, 0.468620,
		-0.998640, -0.051463, -0.008411,
		30.879702, 43.597523, 53.696533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430447, 42.946320, 53.593277>,  <31.578749, 43.633545, 53.702423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430447, 42.946320, 53.593277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.154116, 43.203487, 53.460972>,  <30.988317, 43.357788, 53.381588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.154116, 43.203487, 53.460972>,  <31.430447, 42.946320, 53.593277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154116, 43.203487, 53.460972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069352, -0.396442, -0.915437,
		-0.719685, -0.655349, 0.229285,
		-0.690829, 0.642924, -0.330763,
		30.946867, 43.396366, 53.361744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830292, 42.615959, 53.311817>,  <31.430447, 42.946320, 53.593277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830292, 42.615959, 53.311817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.916004, 42.961830, 53.130081>,  <30.967432, 43.169353, 53.021042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.916004, 42.961830, 53.130081>,  <30.830292, 42.615959, 53.311817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916004, 42.961830, 53.130081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371591, -0.502331, -0.780759,
		-0.903329, -0.001524, -0.428946,
		0.214283, 0.864674, -0.454336,
		30.980289, 43.221233, 52.993782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956579, 42.350182, 52.669991>,  <30.830292, 42.615959, 53.311817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956579, 42.350182, 52.669991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.096619, 42.723110, 52.633759>,  <31.180643, 42.946869, 52.612019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.096619, 42.723110, 52.633759>,  <30.956579, 42.350182, 52.669991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096619, 42.723110, 52.633759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692223, -0.322653, -0.645541,
		-0.631077, 0.163305, -0.758336,
		0.350099, 0.932323, -0.090575,
		31.201649, 43.002808, 52.606586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947197, 42.495583, 51.933357>,  <30.956579, 42.350182, 52.669991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947197, 42.495583, 51.933357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.206161, 42.749516, 52.102043>,  <31.361540, 42.901875, 52.203255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.206161, 42.749516, 52.102043>,  <30.947197, 42.495583, 51.933357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206161, 42.749516, 52.102043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693383, -0.260936, -0.671664,
		-0.316351, 0.727256, -0.609114,
		0.647412, 0.634831, 0.421719,
		31.400385, 42.939964, 52.228558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381691, 42.862251, 51.380341>,  <30.947197, 42.495583, 51.933357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381691, 42.862251, 51.380341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.587233, 42.879826, 51.723042>,  <31.710558, 42.890369, 51.928661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.587233, 42.879826, 51.723042>,  <31.381691, 42.862251, 51.380341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587233, 42.879826, 51.723042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727791, -0.551044, -0.408252,
		0.454171, 0.833319, -0.315132,
		0.513856, 0.043934, 0.856751,
		31.741390, 42.893005, 51.980068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021904, 43.087444, 51.273483>,  <31.381691, 42.862251, 51.380341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021904, 43.087444, 51.273483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.073757, 42.860111, 51.598492>,  <32.104870, 42.723713, 51.793499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.073757, 42.860111, 51.598492>,  <32.021904, 43.087444, 51.273483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073757, 42.860111, 51.598492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759560, -0.469830, -0.449810,
		0.637389, 0.675471, 0.370775,
		0.129633, -0.568330, 0.812525,
		32.112648, 42.689613, 51.842251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700279, 43.061165, 51.360516>,  <32.021904, 43.087444, 51.273483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700279, 43.061165, 51.360516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.598370, 42.750797, 51.591354>,  <32.537224, 42.564575, 51.729858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.598370, 42.750797, 51.591354>,  <32.700279, 43.061165, 51.360516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598370, 42.750797, 51.591354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745157, -0.537885, -0.394235,
		0.616306, 0.329588, 0.715219,
		-0.254770, -0.775920, 0.577097,
		32.521938, 42.518021, 51.764484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278111, 42.803349, 51.416702>,  <32.700279, 43.061165, 51.360516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278111, 42.803349, 51.416702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.019432, 42.517128, 51.522366>,  <32.864227, 42.345398, 51.585762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.019432, 42.517128, 51.522366>,  <33.278111, 42.803349, 51.416702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019432, 42.517128, 51.522366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656278, -0.698474, -0.285364,
		0.388699, -0.011182, 0.921297,
		-0.646693, -0.715548, 0.264158,
		32.825424, 42.302464, 51.601612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712166, 42.396881, 51.782398>,  <33.278111, 42.803349, 51.416702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712166, 42.396881, 51.782398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.397865, 42.161850, 51.705093>,  <33.209286, 42.020832, 51.658710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.397865, 42.161850, 51.705093>,  <33.712166, 42.396881, 51.782398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397865, 42.161850, 51.705093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617153, -0.765683, -0.181251,
		-0.041481, -0.261692, 0.964260,
		-0.785749, -0.587577, -0.193265,
		33.162140, 41.985577, 51.647114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816814, 41.746326, 52.139671>,  <33.712166, 42.396881, 51.782398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816814, 41.746326, 52.139671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.565094, 41.711666, 51.830746>,  <33.414062, 41.690872, 51.645390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.565094, 41.711666, 51.830746>,  <33.816814, 41.746326, 52.139671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565094, 41.711666, 51.830746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539654, -0.763832, -0.354025,
		-0.559247, -0.639572, 0.527438,
		-0.629299, -0.086647, -0.772318,
		33.376305, 41.685673, 51.599049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536236, 41.068310, 52.201935>,  <33.816814, 41.746326, 52.139671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536236, 41.068310, 52.201935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.470798, 41.173225, 51.821526>,  <33.431534, 41.236176, 51.593281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.470798, 41.173225, 51.821526>,  <33.536236, 41.068310, 52.201935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470798, 41.173225, 51.821526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467385, -0.828348, -0.308853,
		-0.868785, -0.495020, 0.012927,
		-0.163597, 0.262285, -0.951022,
		33.421719, 41.251911, 51.536221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254204, 40.547520, 51.916943>,  <33.536236, 41.068310, 52.201935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254204, 40.547520, 51.916943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.409294, 40.735847, 51.599957>,  <33.502350, 40.848843, 51.409767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.409294, 40.735847, 51.599957>,  <33.254204, 40.547520, 51.916943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409294, 40.735847, 51.599957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404567, -0.859405, -0.312648,
		-0.828246, -0.199382, -0.523693,
		0.387728, 0.470819, -0.792462,
		33.525612, 40.877094, 51.362217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160702, 40.010849, 51.332333>,  <33.254204, 40.547520, 51.916943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160702, 40.010849, 51.332333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.436565, 40.284634, 51.237782>,  <33.602085, 40.448906, 51.181049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.436565, 40.284634, 51.237782>,  <33.160702, 40.010849, 51.332333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436565, 40.284634, 51.237782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524870, -0.697391, -0.488014,
		-0.498878, 0.212495, -0.840218,
		0.689661, 0.684465, -0.236381,
		33.643463, 40.489971, 51.166866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304802, 39.795166, 50.729282>,  <33.160702, 40.010849, 51.332333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304802, 39.795166, 50.729282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.613544, 40.032509, 50.820641>,  <33.798790, 40.174915, 50.875454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.613544, 40.032509, 50.820641>,  <33.304802, 39.795166, 50.729282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613544, 40.032509, 50.820641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629998, -0.665376, -0.400471,
		-0.085654, 0.452995, -0.887389,
		0.771859, 0.593355, 0.228394,
		33.845100, 40.210514, 50.889160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616524, 39.897583, 50.106628>,  <33.304802, 39.795166, 50.729282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616524, 39.897583, 50.106628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.876225, 39.974949, 50.400856>,  <34.032043, 40.021370, 50.577393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.876225, 39.974949, 50.400856>,  <33.616524, 39.897583, 50.106628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876225, 39.974949, 50.400856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627123, -0.683345, -0.373841,
		0.430342, 0.704010, -0.564957,
		0.649248, 0.193417, 0.735572,
		34.070999, 40.032974, 50.621529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327156, 39.765614, 49.747612>,  <33.616524, 39.897583, 50.106628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327156, 39.765614, 49.747612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.421890, 39.796131, 50.135033>,  <34.478733, 39.814442, 50.367485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.421890, 39.796131, 50.135033>,  <34.327156, 39.765614, 49.747612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421890, 39.796131, 50.135033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689007, -0.716036, -0.112081,
		0.684965, 0.693882, -0.222150,
		0.236838, 0.076291, 0.968549,
		34.492943, 39.819019, 50.425598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127945, 39.960140, 49.860329>,  <34.327156, 39.765614, 49.747612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127945, 39.960140, 49.860329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.967754, 39.770088, 50.173729>,  <34.871639, 39.656059, 50.361771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.967754, 39.770088, 50.173729>,  <35.127945, 39.960140, 49.860329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967754, 39.770088, 50.173729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726895, -0.685334, -0.044056,
		0.557892, 0.551880, 0.619826,
		-0.400474, -0.475127, 0.783501,
		34.847610, 39.627548, 50.408779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742840, 39.786095, 50.345356>,  <35.127945, 39.960140, 49.860329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742840, 39.786095, 50.345356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449039, 39.523823, 50.415314>,  <35.272758, 39.366459, 50.457287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449039, 39.523823, 50.415314>,  <35.742840, 39.786095, 50.345356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449039, 39.523823, 50.415314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619802, -0.753133, -0.220534,
		0.276318, -0.053583, 0.959571,
		-0.734502, -0.655682, 0.174893,
		35.228687, 39.327118, 50.467781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073582, 39.210636, 50.745575>,  <35.742840, 39.786095, 50.345356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073582, 39.210636, 50.745575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.735668, 39.063995, 50.589657>,  <35.532921, 38.976009, 50.496105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.735668, 39.063995, 50.589657>,  <36.073582, 39.210636, 50.745575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735668, 39.063995, 50.589657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514696, -0.755952, -0.404506,
		-0.146372, -0.542346, 0.827307,
		-0.844786, -0.366603, -0.389793,
		35.482231, 38.954014, 50.472717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189789, 38.455132, 50.903694>,  <36.073582, 39.210636, 50.745575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189789, 38.455132, 50.903694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.909672, 38.469299, 50.618504>,  <35.741604, 38.477802, 50.447388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.909672, 38.469299, 50.618504>,  <36.189789, 38.455132, 50.903694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909672, 38.469299, 50.618504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274844, -0.908395, -0.315085,
		-0.658828, -0.416609, 0.626405,
		-0.700290, 0.035423, -0.712979,
		35.699585, 38.479927, 50.404610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930256, 37.836491, 50.918961>,  <36.189789, 38.455132, 50.903694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930256, 37.836491, 50.918961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848553, 37.991203, 50.559254>,  <35.799530, 38.084030, 50.343430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848553, 37.991203, 50.559254>,  <35.930256, 37.836491, 50.918961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848553, 37.991203, 50.559254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307405, -0.846821, -0.434047,
		-0.929399, -0.365095, 0.054068,
		-0.204254, 0.386782, -0.899266,
		35.787277, 38.107239, 50.289474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859558, 37.242290, 50.529484>,  <35.930256, 37.836491, 50.918961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859558, 37.242290, 50.529484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.870918, 37.516590, 50.238567>,  <35.877735, 37.681168, 50.064018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.870918, 37.516590, 50.238567>,  <35.859558, 37.242290, 50.529484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870918, 37.516590, 50.238567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345025, -0.689589, -0.636729,
		-0.938164, -0.232850, -0.256182,
		0.028398, 0.685746, -0.727287,
		35.879436, 37.722313, 50.020382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606823, 36.905674, 49.932995>,  <35.859558, 37.242290, 50.529484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606823, 36.905674, 49.932995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.854382, 37.206573, 49.842583>,  <36.002918, 37.387112, 49.788338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.854382, 37.206573, 49.842583>,  <35.606823, 36.905674, 49.932995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854382, 37.206573, 49.842583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469898, -0.585177, -0.660881,
		-0.629411, 0.302809, -0.715645,
		0.618900, 0.752246, -0.226028,
		36.040051, 37.432247, 49.774773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605038, 36.957096, 49.263721>,  <35.606823, 36.905674, 49.932995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605038, 36.957096, 49.263721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954113, 37.120346, 49.370945>,  <36.163559, 37.218296, 49.435280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954113, 37.120346, 49.370945>,  <35.605038, 36.957096, 49.263721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954113, 37.120346, 49.370945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452003, -0.467561, -0.759658,
		-0.184705, 0.784103, -0.592508,
		0.872684, 0.408128, 0.268056,
		36.215919, 37.242786, 49.451363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844566, 37.316055, 48.620548>,  <35.605038, 36.957096, 49.263721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844566, 37.316055, 48.620548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143154, 37.235001, 48.874073>,  <36.322308, 37.186367, 49.026188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143154, 37.235001, 48.874073>,  <35.844566, 37.316055, 48.620548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143154, 37.235001, 48.874073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484520, -0.487341, -0.726456,
		0.456090, 0.849374, -0.265605,
		0.746474, -0.202638, 0.633810,
		36.367096, 37.174210, 49.064217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122665, 37.670181, 47.902138>,  <35.844566, 37.316055, 48.620548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122665, 37.670181, 47.902138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.062210, 37.818165, 47.535469>,  <36.025936, 37.906956, 47.315468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.062210, 37.818165, 47.535469>,  <36.122665, 37.670181, 47.902138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062210, 37.818165, 47.535469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934347, 0.249290, 0.254659,
		0.322730, 0.894979, 0.307990,
		-0.151136, 0.369955, -0.916674,
		36.016869, 37.929150, 47.260468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976059, 38.427608, 47.900295>,  <36.122665, 37.670181, 47.902138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976059, 38.427608, 47.900295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.806454, 38.221676, 47.602257>,  <35.704693, 38.098118, 47.423435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.806454, 38.221676, 47.602257>,  <35.976059, 38.427608, 47.900295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806454, 38.221676, 47.602257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904163, 0.287889, 0.315609,
		0.052018, 0.807508, -0.587559,
		-0.424009, -0.514832, -0.745094,
		35.679253, 38.067226, 47.378727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515453, 38.887527, 47.504517>,  <35.976059, 38.427608, 47.900295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515453, 38.887527, 47.504517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.399483, 38.509785, 47.442387>,  <35.329899, 38.283138, 47.405109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.399483, 38.509785, 47.442387>,  <35.515453, 38.887527, 47.504517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399483, 38.509785, 47.442387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929444, 0.239134, 0.280977,
		-0.228201, 0.225826, -0.947062,
		-0.289927, -0.944361, -0.155323,
		35.312504, 38.226475, 47.395790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009666, 39.000664, 47.110416>,  <35.515453, 38.887527, 47.504517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009666, 39.000664, 47.110416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.962246, 38.632885, 47.260384>,  <34.933796, 38.412216, 47.350365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.962246, 38.632885, 47.260384>,  <35.009666, 39.000664, 47.110416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962246, 38.632885, 47.260384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983498, 0.160697, 0.083109,
		-0.136663, -0.358881, -0.923324,
		-0.118549, -0.919446, 0.374920,
		34.926682, 38.357052, 47.372860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450356, 38.685661, 46.794235>,  <35.009666, 39.000664, 47.110416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450356, 38.685661, 46.794235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.491982, 38.451347, 47.115738>,  <34.516956, 38.310760, 47.308640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.491982, 38.451347, 47.115738>,  <34.450356, 38.685661, 46.794235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491982, 38.451347, 47.115738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987452, 0.035665, 0.153837,
		-0.118782, -0.809681, -0.574724,
		0.104062, -0.585786, 0.803757,
		34.523201, 38.275612, 47.356865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950150, 38.256138, 46.737602>,  <34.450356, 38.685661, 46.794235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950150, 38.256138, 46.737602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.059917, 38.238365, 47.121834>,  <34.125778, 38.227703, 47.352375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.059917, 38.238365, 47.121834>,  <33.950150, 38.256138, 46.737602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059917, 38.238365, 47.121834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960977, 0.023550, 0.275625,
		-0.034870, -0.998735, -0.036241,
		0.274423, -0.044438, 0.960582,
		34.142242, 38.225037, 47.410007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388439, 37.942696, 47.020363>,  <33.950150, 38.256138, 46.737602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388439, 37.942696, 47.020363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.585056, 38.086300, 47.337723>,  <33.703026, 38.172462, 47.528141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.585056, 38.086300, 47.337723>,  <33.388439, 37.942696, 47.020363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585056, 38.086300, 47.337723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867952, 0.127692, 0.479952,
		0.070999, -0.924555, 0.374375,
		0.491548, 0.359015, 0.793404,
		33.732521, 38.194004, 47.575745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021191, 37.683891, 47.476463>,  <33.388439, 37.942696, 47.020363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021191, 37.683891, 47.476463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.208889, 37.996059, 47.641754>,  <33.321510, 38.183361, 47.740929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.208889, 37.996059, 47.641754>,  <33.021191, 37.683891, 47.476463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208889, 37.996059, 47.641754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785468, 0.155031, 0.599171,
		0.403540, -0.605735, 0.685740,
		0.469250, 0.780416, 0.413225,
		33.349663, 38.230183, 47.765720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016994, 37.551888, 48.194332>,  <33.021191, 37.683891, 47.476463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016994, 37.551888, 48.194332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.070999, 37.947151, 48.165176>,  <33.103401, 38.184311, 48.147682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.070999, 37.947151, 48.165176>,  <33.016994, 37.551888, 48.194332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070999, 37.947151, 48.165176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856436, 0.153369, 0.492945,
		0.498287, -0.004130, 0.867002,
		0.135007, 0.988160, -0.072885,
		33.111500, 38.243599, 48.143311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703171, 37.766640, 48.751888>,  <33.016994, 37.551888, 48.194332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703171, 37.766640, 48.751888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.771511, 38.113464, 48.564690>,  <32.812515, 38.321560, 48.452370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.771511, 38.113464, 48.564690>,  <32.703171, 37.766640, 48.751888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771511, 38.113464, 48.564690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695301, 0.442634, 0.566243,
		0.698117, 0.228658, 0.678490,
		0.170847, 0.867059, -0.467996,
		32.822765, 38.373581, 48.424290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845364, 38.308846, 49.283611>,  <32.703171, 37.766640, 48.751888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845364, 38.308846, 49.283611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.741184, 38.482735, 48.938778>,  <32.678677, 38.587067, 48.731880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.741184, 38.482735, 48.938778>,  <32.845364, 38.308846, 49.283611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741184, 38.482735, 48.938778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619889, 0.609258, 0.494512,
		0.740205, 0.663189, 0.110800,
		-0.260449, 0.434724, -0.862079,
		32.663048, 38.613152, 48.680153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937157, 39.083763, 49.333652>,  <32.845364, 38.308846, 49.283611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937157, 39.083763, 49.333652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.664417, 38.997070, 49.054192>,  <32.500774, 38.945057, 48.886517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.664417, 38.997070, 49.054192>,  <32.937157, 39.083763, 49.333652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664417, 38.997070, 49.054192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623755, 0.671188, 0.400544,
		0.382116, 0.708896, -0.592835,
		-0.681848, -0.216730, -0.698650,
		32.459862, 38.932053, 48.844597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659779, 39.783043, 49.060303>,  <32.937157, 39.083763, 49.333652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659779, 39.783043, 49.060303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.401234, 39.495167, 48.958904>,  <32.246105, 39.322441, 48.898064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.401234, 39.495167, 48.958904>,  <32.659779, 39.783043, 49.060303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401234, 39.495167, 48.958904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758512, 0.569929, 0.315977,
		-0.082930, 0.396516, -0.914274,
		-0.646361, -0.719692, -0.253498,
		32.207325, 39.279259, 48.882854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217556, 40.057274, 48.548454>,  <32.659779, 39.783043, 49.060303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217556, 40.057274, 48.548454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.036785, 39.743790, 48.718891>,  <31.928322, 39.555698, 48.821152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.036785, 39.743790, 48.718891>,  <32.217556, 40.057274, 48.548454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036785, 39.743790, 48.718891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750772, 0.592125, 0.292795,
		-0.481767, -0.187574, -0.855989,
		-0.451932, -0.783711, 0.426092,
		31.901205, 39.508675, 48.846718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522186, 40.154758, 48.411991>,  <32.217556, 40.057274, 48.548454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522186, 40.154758, 48.411991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.528973, 39.925735, 48.739864>,  <31.533045, 39.788322, 48.936588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.528973, 39.925735, 48.739864>,  <31.522186, 40.154758, 48.411991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528973, 39.925735, 48.739864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831191, 0.447578, 0.329841,
		-0.555728, -0.686912, -0.468314,
		0.016965, -0.572561, 0.819687,
		31.534061, 39.753967, 48.985771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835495, 40.045528, 48.647919>,  <31.522186, 40.154758, 48.411991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835495, 40.045528, 48.647919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.015270, 39.932175, 48.986786>,  <31.123137, 39.864162, 49.190105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.015270, 39.932175, 48.986786>,  <30.835495, 40.045528, 48.647919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015270, 39.932175, 48.986786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820677, 0.243594, 0.516867,
		-0.352837, -0.927554, -0.123085,
		0.449439, -0.283383, 0.847171,
		31.150103, 39.847160, 49.240936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337946, 39.663185, 48.960232>,  <30.835495, 40.045528, 48.647919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337946, 39.663185, 48.960232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.605299, 39.746635, 49.245815>,  <30.765711, 39.796703, 49.417164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.605299, 39.746635, 49.245815>,  <30.337946, 39.663185, 48.960232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605299, 39.746635, 49.245815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743771, 0.176932, 0.644592,
		0.008153, -0.961859, 0.273425,
		0.668384, 0.208621, 0.713960,
		30.805815, 39.809223, 49.460003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952322, 39.438942, 49.572411>,  <30.337946, 39.663185, 48.960232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952322, 39.438942, 49.572411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.244415, 39.679821, 49.701477>,  <30.419672, 39.824348, 49.778915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.244415, 39.679821, 49.701477>,  <29.952322, 39.438942, 49.572411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244415, 39.679821, 49.701477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577665, 0.292076, 0.762230,
		0.364779, -0.742994, 0.561157,
		0.730233, 0.602206, 0.322658,
		30.463486, 39.860481, 49.798275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818197, 39.598228, 50.191784>,  <29.952322, 39.438942, 49.572411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818197, 39.598228, 50.191784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.094265, 39.887108, 50.210094>,  <30.259905, 40.060436, 50.221081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.094265, 39.887108, 50.210094>,  <29.818197, 39.598228, 50.191784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094265, 39.887108, 50.210094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362153, 0.289940, 0.885878,
		0.626509, -0.627983, 0.461654,
		0.690168, 0.722200, 0.045776,
		30.301315, 40.103767, 50.223827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182938, 39.559868, 50.851395>,  <29.818197, 39.598228, 50.191784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182938, 39.559868, 50.851395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.227556, 39.934399, 50.718216>,  <30.254328, 40.159115, 50.638309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.227556, 39.934399, 50.718216>,  <30.182938, 39.559868, 50.851395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227556, 39.934399, 50.718216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337443, 0.350818, 0.873533,
		0.934714, 0.014910, 0.355089,
		0.111547, 0.936325, -0.332945,
		30.261021, 40.215298, 50.618332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542854, 39.914742, 51.327358>,  <30.182938, 39.559868, 50.851395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542854, 39.914742, 51.327358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.342812, 40.202423, 51.134430>,  <30.222786, 40.375034, 51.018673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.342812, 40.202423, 51.134430>,  <30.542854, 39.914742, 51.327358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342812, 40.202423, 51.134430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281319, 0.391835, 0.875971,
		0.818995, 0.573765, 0.006367,
		-0.500106, 0.719207, -0.482322,
		30.192780, 40.418186, 50.989735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666128, 40.497948, 51.731407>,  <30.542854, 39.914742, 51.327358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666128, 40.497948, 51.731407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.357374, 40.629196, 51.513588>,  <30.172123, 40.707943, 51.382896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.357374, 40.629196, 51.513588>,  <30.666128, 40.497948, 51.731407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357374, 40.629196, 51.513588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388666, 0.434294, 0.812605,
		0.503125, 0.838884, -0.207697,
		-0.771884, 0.328118, -0.544550,
		30.125809, 40.727631, 51.350224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566704, 41.185822, 51.928291>,  <30.666128, 40.497948, 51.731407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566704, 41.185822, 51.928291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.217562, 41.087524, 51.759659>,  <30.008076, 41.028545, 51.658478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.217562, 41.087524, 51.759659>,  <30.566704, 41.185822, 51.928291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217562, 41.087524, 51.759659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487016, 0.492907, 0.721012,
		0.030615, 0.834657, -0.549919,
		-0.872856, -0.245745, -0.421582,
		29.955706, 41.013802, 51.633183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192432, 41.806095, 51.898842>,  <30.566704, 41.185822, 51.928291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192432, 41.806095, 51.898842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.929173, 41.507839, 51.857143>,  <29.771217, 41.328888, 51.832123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.929173, 41.507839, 51.857143>,  <30.192432, 41.806095, 51.898842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929173, 41.507839, 51.857143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590279, 0.425079, 0.686206,
		-0.467346, 0.513161, -0.719898,
		-0.658148, -0.745636, -0.104249,
		29.731728, 41.284149, 51.825871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584883, 42.115356, 51.953358>,  <30.192432, 41.806095, 51.898842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584883, 42.115356, 51.953358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.500450, 41.738148, 52.056244>,  <29.449791, 41.511822, 52.117977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.500450, 41.738148, 52.056244>,  <29.584883, 42.115356, 51.953358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500450, 41.738148, 52.056244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525601, 0.331366, 0.783543,
		-0.824128, 0.030200, -0.565598,
		-0.211083, -0.943019, 0.257215,
		29.437126, 41.455242, 52.133408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851072, 42.189423, 52.135521>,  <29.584883, 42.115356, 51.953358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851072, 42.189423, 52.135521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.016800, 41.879898, 52.327171>,  <29.116236, 41.694183, 52.442162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.016800, 41.879898, 52.327171>,  <28.851072, 42.189423, 52.135521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016800, 41.879898, 52.327171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430498, 0.297200, 0.852258,
		-0.801880, -0.559368, -0.209988,
		0.414318, -0.773809, 0.479126,
		29.141096, 41.647755, 52.470909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386707, 41.783249, 52.481300>,  <28.851072, 42.189423, 52.135521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386707, 41.783249, 52.481300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.733772, 41.753029, 52.677853>,  <28.942011, 41.734898, 52.795784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.733772, 41.753029, 52.677853>,  <28.386707, 41.783249, 52.481300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733772, 41.753029, 52.677853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452760, 0.288184, 0.843776,
		-0.205356, -0.954590, 0.215840,
		0.867662, -0.075551, 0.491381,
		28.994070, 41.730362, 52.825268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457888, 41.294983, 53.053387>,  <28.386707, 41.783249, 52.481300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457888, 41.294983, 53.053387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.666973, 41.629284, 53.120659>,  <28.792423, 41.829865, 53.161022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.666973, 41.629284, 53.120659>,  <28.457888, 41.294983, 53.053387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666973, 41.629284, 53.120659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525078, 0.160209, 0.835838,
		0.671614, -0.525208, 0.522581,
		0.522711, 0.835757, 0.168176,
		28.823786, 41.880013, 53.171112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806984, 41.328827, 53.705708>,  <28.457888, 41.294983, 53.053387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806984, 41.328827, 53.705708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.716730, 41.702873, 53.596416>,  <28.662579, 41.927299, 53.530842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.716730, 41.702873, 53.596416>,  <28.806984, 41.328827, 53.705708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716730, 41.702873, 53.596416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506858, 0.126832, 0.852648,
		0.831976, 0.330874, 0.445352,
		-0.225635, 0.935113, -0.273228,
		28.649040, 41.983406, 53.514450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996647, 41.733345, 54.293495>,  <28.806984, 41.328827, 53.705708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996647, 41.733345, 54.293495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.736286, 41.939594, 54.070618>,  <28.580070, 42.063343, 53.936890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.736286, 41.939594, 54.070618>,  <28.996647, 41.733345, 54.293495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736286, 41.939594, 54.070618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394309, 0.397569, 0.828528,
		0.648728, 0.758996, -0.055465,
		-0.650901, 0.515619, -0.557193,
		28.541016, 42.094280, 53.903461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912735, 42.431194, 54.642311>,  <28.996647, 41.733345, 54.293495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912735, 42.431194, 54.642311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.592569, 42.384056, 54.407211>,  <28.400471, 42.355774, 54.266151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.592569, 42.384056, 54.407211>,  <28.912735, 42.431194, 54.642311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592569, 42.384056, 54.407211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572303, 0.441937, 0.690768,
		0.178343, 0.889271, -0.421177,
		-0.800414, -0.117848, -0.587749,
		28.352446, 42.348701, 54.230888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592897, 43.130169, 54.499916>,  <28.912735, 42.431194, 54.642311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592897, 43.130169, 54.499916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.301170, 42.867195, 54.424149>,  <28.126135, 42.709412, 54.378689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.301170, 42.867195, 54.424149>,  <28.592897, 43.130169, 54.499916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301170, 42.867195, 54.424149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635911, 0.549230, 0.542184,
		-0.252417, 0.515876, -0.818632,
		-0.729317, -0.657434, -0.189416,
		28.082375, 42.669964, 54.367325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061666, 43.561974, 54.516327>,  <28.592897, 43.130169, 54.499916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061666, 43.561974, 54.516327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.916313, 43.191151, 54.553246>,  <27.829102, 42.968658, 54.575397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.916313, 43.191151, 54.553246>,  <28.061666, 43.561974, 54.516327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916313, 43.191151, 54.553246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705157, 0.338434, 0.623070,
		-0.608856, 0.161333, -0.776702,
		-0.363384, -0.927057, 0.092293,
		27.807299, 42.913033, 54.580933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206215, 43.587051, 54.416111>,  <28.061666, 43.561974, 54.516327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206215, 43.587051, 54.416111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.318588, 43.263783, 54.623158>,  <27.386013, 43.069820, 54.747387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.318588, 43.263783, 54.623158>,  <27.206215, 43.587051, 54.416111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318588, 43.263783, 54.623158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697298, 0.198697, 0.688691,
		-0.659433, -0.554409, -0.507719,
		0.280934, -0.808177, 0.517615,
		27.402868, 43.021328, 54.778442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461830, 43.317642, 54.713909>,  <27.206215, 43.587051, 54.416111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461830, 43.317642, 54.713909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.743784, 43.138138, 54.933636>,  <26.912956, 43.030434, 55.065472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.743784, 43.138138, 54.933636>,  <26.461830, 43.317642, 54.713909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743784, 43.138138, 54.933636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553697, 0.135930, 0.821549,
		-0.443348, -0.883254, -0.152662,
		0.704885, -0.448761, 0.549319,
		26.955250, 43.003510, 55.098431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120646, 42.951721, 55.236649>,  <26.461830, 43.317642, 54.713909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120646, 42.951721, 55.236649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.489670, 42.968407, 55.390083>,  <26.711084, 42.978416, 55.482143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.489670, 42.968407, 55.390083>,  <26.120646, 42.951721, 55.236649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489670, 42.968407, 55.390083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385835, 0.107330, 0.916303,
		-0.002951, -0.993348, 0.115112,
		0.922563, 0.041710, 0.383586,
		26.766439, 42.980919, 55.505157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.167097, 42.495941, 55.796017>,  <26.120646, 42.951721, 55.236649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.167097, 42.495941, 55.796017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.446508, 42.773441, 55.866184>,  <26.614155, 42.939941, 55.908283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.446508, 42.773441, 55.866184>,  <26.167097, 42.495941, 55.796017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.446508, 42.773441, 55.866184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385820, 0.158678, 0.908826,
		0.602661, -0.702521, 0.378503,
		0.698529, 0.693748, 0.175417,
		26.656067, 42.981567, 55.918808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394518, 42.259098, 56.391117>,  <26.167097, 42.495941, 55.796017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394518, 42.259098, 56.391117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.530439, 42.635174, 56.381516>,  <26.611992, 42.860821, 56.375755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.530439, 42.635174, 56.381516>,  <26.394518, 42.259098, 56.391117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530439, 42.635174, 56.381516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079650, 0.054195, 0.995349,
		0.937117, -0.336314, 0.093302,
		0.339806, 0.940189, -0.024000,
		26.632381, 42.917229, 56.374317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806936, 42.376503, 56.945084>,  <26.394518, 42.259098, 56.391117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806936, 42.376503, 56.945084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.757183, 42.763130, 56.855396>,  <26.727331, 42.995106, 56.801586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.757183, 42.763130, 56.855396>,  <26.806936, 42.376503, 56.945084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757183, 42.763130, 56.855396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224444, 0.247522, 0.942527,
		0.966516, 0.066910, -0.247728,
		-0.124383, 0.966569, -0.224216,
		26.719868, 43.053101, 56.788132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804640, 41.878227, 57.542274>,  <26.806936, 42.376503, 56.945084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804640, 41.878227, 57.542274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.865417, 41.498425, 57.652069>,  <26.901884, 41.270542, 57.717945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.865417, 41.498425, 57.652069>,  <26.804640, 41.878227, 57.542274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865417, 41.498425, 57.652069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435185, -0.185077, -0.881113,
		0.887427, 0.253332, 0.385092,
		0.151943, -0.949510, 0.274489,
		26.911001, 41.213570, 57.734417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513565, 41.698841, 57.356583>,  <26.804640, 41.878227, 57.542274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513565, 41.698841, 57.356583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.326244, 41.349007, 57.406834>,  <27.213852, 41.139107, 57.436985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.326244, 41.349007, 57.406834>,  <27.513565, 41.698841, 57.356583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326244, 41.349007, 57.406834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462501, -0.363792, -0.808547,
		0.752851, -0.320541, 0.574864,
		-0.468304, -0.874591, 0.125631,
		27.185753, 41.086628, 57.444523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031616, 41.139668, 57.426140>,  <27.513565, 41.698841, 57.356583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031616, 41.139668, 57.426140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.678774, 41.001881, 57.297623>,  <27.467070, 40.919209, 57.220512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.678774, 41.001881, 57.297623>,  <28.031616, 41.139668, 57.426140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678774, 41.001881, 57.297623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445957, -0.391022, -0.805124,
		0.151708, -0.853487, 0.498542,
		-0.882104, -0.344472, -0.321297,
		27.414143, 40.898540, 57.201233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264818, 40.467575, 57.192692>,  <28.031616, 41.139668, 57.426140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264818, 40.467575, 57.192692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.891081, 40.520370, 57.060280>,  <27.666838, 40.552048, 56.980831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.891081, 40.520370, 57.060280>,  <28.264818, 40.467575, 57.192692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891081, 40.520370, 57.060280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210141, -0.546154, -0.810898,
		-0.287823, -0.827221, 0.482560,
		-0.934344, 0.131990, -0.331029,
		27.610777, 40.559967, 56.960972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829414, 39.749580, 57.149292>,  <28.264818, 40.467575, 57.192692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829414, 39.749580, 57.149292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.710150, 40.026863, 56.886822>,  <27.638592, 40.193233, 56.729340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.710150, 40.026863, 56.886822>,  <27.829414, 39.749580, 57.149292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710150, 40.026863, 56.886822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217261, -0.620113, -0.753829,
		-0.929461, -0.367323, 0.034287,
		-0.298161, 0.693206, -0.656176,
		27.620701, 40.234825, 56.689968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571156, 39.299732, 56.697655>,  <27.829414, 39.749580, 57.149292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571156, 39.299732, 56.697655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.591503, 39.660034, 56.525120>,  <27.603712, 39.876217, 56.421600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.591503, 39.660034, 56.525120>,  <27.571156, 39.299732, 56.697655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591503, 39.660034, 56.525120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056117, -0.433791, -0.899264,
		-0.997127, 0.021541, -0.072615,
		0.050871, 0.900756, -0.431336,
		27.606764, 39.930260, 56.395718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.269493, 39.174446, 56.141544>,  <27.571156, 39.299732, 56.697655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.269493, 39.174446, 56.141544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.471817, 39.510139, 56.061707>,  <27.593212, 39.711555, 56.013802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.471817, 39.510139, 56.061707>,  <27.269493, 39.174446, 56.141544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471817, 39.510139, 56.061707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241084, -0.359683, -0.901392,
		-0.828271, 0.407814, -0.384258,
		0.505811, 0.839235, -0.199597,
		27.623560, 39.761909, 56.001827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.008463, 39.590187, 55.542213>,  <27.269493, 39.174446, 56.141544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.008463, 39.590187, 55.542213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.395859, 39.685879, 55.569927>,  <27.628296, 39.743294, 55.586555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.395859, 39.685879, 55.569927>,  <27.008463, 39.590187, 55.542213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395859, 39.685879, 55.569927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094272, -0.094622, -0.991040,
		-0.230528, 0.966342, -0.114193,
		0.968488, 0.239227, 0.069286,
		27.686405, 39.757648, 55.590714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128441, 39.893246, 54.901875>,  <27.008463, 39.590187, 55.542213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128441, 39.893246, 54.901875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.494652, 39.815243, 55.042606>,  <27.714378, 39.768440, 55.127045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.494652, 39.815243, 55.042606>,  <27.128441, 39.893246, 54.901875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494652, 39.815243, 55.042606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332870, -0.123795, -0.934811,
		0.225853, 0.972957, -0.048424,
		0.915526, -0.195011, 0.351828,
		27.769310, 39.756741, 55.148155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.498083, 40.224796, 54.497463>,  <27.128441, 39.893246, 54.901875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.498083, 40.224796, 54.497463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.742842, 39.947994, 54.650673>,  <27.889696, 39.781914, 54.742599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.742842, 39.947994, 54.650673>,  <27.498083, 40.224796, 54.497463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742842, 39.947994, 54.650673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393203, -0.154040, -0.906456,
		0.686275, 0.705265, 0.177842,
		0.611897, -0.692006, 0.383026,
		27.926411, 39.740391, 54.765579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239115, 40.250298, 54.082142>,  <27.498083, 40.224796, 54.497463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239115, 40.250298, 54.082142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.240032, 39.922783, 54.311779>,  <28.240583, 39.726273, 54.449562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.240032, 39.922783, 54.311779>,  <28.239115, 40.250298, 54.082142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240032, 39.922783, 54.311779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664069, -0.427985, -0.613059,
		0.747668, 0.382643, 0.542750,
		0.002294, -0.818788, 0.574092,
		28.240721, 39.677147, 54.484005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936850, 40.125584, 54.248825>,  <28.239115, 40.250298, 54.082142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936850, 40.125584, 54.248825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.762445, 39.766338, 54.271786>,  <28.657803, 39.550793, 54.285561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.762445, 39.766338, 54.271786>,  <28.936850, 40.125584, 54.248825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762445, 39.766338, 54.271786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607795, -0.340909, -0.717193,
		0.663687, -0.277815, 0.694506,
		-0.436011, -0.898109, 0.057402,
		28.631641, 39.496906, 54.289005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488430, 39.597557, 54.208183>,  <28.936850, 40.125584, 54.248825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488430, 39.597557, 54.208183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.155371, 39.413067, 54.085564>,  <28.955536, 39.302372, 54.011993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.155371, 39.413067, 54.085564>,  <29.488430, 39.597557, 54.208183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155371, 39.413067, 54.085564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482619, -0.332829, -0.810126,
		0.271625, -0.822493, 0.499725,
		-0.832646, -0.461227, -0.306546,
		28.905577, 39.274700, 53.993599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699772, 38.961693, 54.038334>,  <29.488430, 39.597557, 54.208183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699772, 38.961693, 54.038334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.348837, 38.982090, 53.847473>,  <29.138275, 38.994328, 53.732956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.348837, 38.982090, 53.847473>,  <29.699772, 38.961693, 54.038334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348837, 38.982090, 53.847473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362970, -0.579907, -0.729356,
		-0.313893, -0.813085, 0.490268,
		-0.877339, 0.050988, -0.477155,
		29.085636, 38.997387, 53.704327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412985, 38.260979, 53.934887>,  <29.699772, 38.961693, 54.038334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412985, 38.260979, 53.934887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.249731, 38.501671, 53.660271>,  <29.151779, 38.646088, 53.495499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.249731, 38.501671, 53.660271>,  <29.412985, 38.260979, 53.934887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249731, 38.501671, 53.660271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356188, -0.587469, -0.726643,
		-0.840569, -0.541106, 0.025435,
		-0.408133, 0.601735, -0.686544,
		29.127291, 38.682190, 53.454308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078493, 37.815022, 53.473644>,  <29.412985, 38.260979, 53.934887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078493, 37.815022, 53.473644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.117149, 38.158764, 53.272778>,  <29.140343, 38.365009, 53.152256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.117149, 38.158764, 53.272778>,  <29.078493, 37.815022, 53.473644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117149, 38.158764, 53.272778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327660, -0.503873, -0.799219,
		-0.939840, -0.087304, -0.330270,
		0.096639, 0.859355, -0.502166,
		29.146141, 38.416569, 53.122128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927444, 37.577255, 52.757435>,  <29.078493, 37.815022, 53.473644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927444, 37.577255, 52.757435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.125164, 37.924038, 52.731976>,  <29.243795, 38.132107, 52.716702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.125164, 37.924038, 52.731976>,  <28.927444, 37.577255, 52.757435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125164, 37.924038, 52.731976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486428, -0.336529, -0.806310,
		-0.720457, 0.367598, -0.588059,
		0.494297, 0.866960, -0.063645,
		29.273453, 38.184128, 52.712883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993715, 37.697010, 52.134556>,  <28.927444, 37.577255, 52.757435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993715, 37.697010, 52.134556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.286898, 37.925484, 52.282356>,  <29.462807, 38.062569, 52.371037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.286898, 37.925484, 52.282356>,  <28.993715, 37.697010, 52.134556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286898, 37.925484, 52.282356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586752, -0.255949, -0.768253,
		-0.344237, 0.779900, -0.522740,
		0.732955, 0.571180, 0.369500,
		29.506784, 38.096836, 52.393208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161680, 38.085587, 51.586132>,  <28.993715, 37.697010, 52.134556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161680, 38.085587, 51.586132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.462755, 38.075554, 51.849293>,  <29.643400, 38.069534, 52.007191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.462755, 38.075554, 51.849293>,  <29.161680, 38.085587, 51.586132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462755, 38.075554, 51.849293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642721, -0.188660, -0.742508,
		0.142740, 0.981722, -0.125884,
		0.752686, -0.025077, 0.657902,
		29.688560, 38.068031, 52.046665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637129, 38.312431, 51.208458>,  <29.161680, 38.085587, 51.586132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637129, 38.312431, 51.208458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.864237, 38.182804, 51.511143>,  <30.000502, 38.105026, 51.692753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.864237, 38.182804, 51.511143>,  <29.637129, 38.312431, 51.208458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864237, 38.182804, 51.511143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763091, -0.137589, -0.631475,
		0.308757, 0.935975, 0.169174,
		0.567769, -0.324067, 0.756716,
		30.034567, 38.085583, 51.738159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182495, 38.645565, 51.187847>,  <29.637129, 38.312431, 51.208458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182495, 38.645565, 51.187847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.312044, 38.322453, 51.384861>,  <30.389774, 38.128586, 51.503071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.312044, 38.322453, 51.384861>,  <30.182495, 38.645565, 51.187847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312044, 38.322453, 51.384861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628009, -0.205811, -0.750497,
		0.707608, 0.552384, 0.440638,
		0.323875, -0.807783, 0.492536,
		30.409206, 38.080116, 51.532623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956732, 38.549767, 51.281353>,  <30.182495, 38.645565, 51.187847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956732, 38.549767, 51.281353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.809490, 38.179859, 51.242760>,  <30.721146, 37.957916, 51.219604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.809490, 38.179859, 51.242760>,  <30.956732, 38.549767, 51.281353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809490, 38.179859, 51.242760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680901, -0.197450, -0.705256,
		0.633146, -0.325304, 0.702356,
		-0.368103, -0.924765, -0.096485,
		30.699059, 37.902428, 51.213814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410336, 38.202446, 50.841064>,  <30.956732, 38.549767, 51.281353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410336, 38.202446, 50.841064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.116423, 37.932285, 50.866127>,  <30.940075, 37.770187, 50.881165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.116423, 37.932285, 50.866127>,  <31.410336, 38.202446, 50.841064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116423, 37.932285, 50.866127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446588, -0.551228, -0.704775,
		0.510545, -0.489874, 0.706659,
		-0.734781, -0.675405, 0.062655,
		30.895988, 37.729664, 50.884922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740334, 37.615837, 50.899094>,  <31.410336, 38.202446, 50.841064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740334, 37.615837, 50.899094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.378216, 37.505405, 50.769962>,  <31.160944, 37.439148, 50.692482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.378216, 37.505405, 50.769962>,  <31.740334, 37.615837, 50.899094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378216, 37.505405, 50.769962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420308, -0.472185, -0.774843,
		0.061479, -0.837152, 0.543505,
		-0.905296, -0.276076, -0.322832,
		31.106627, 37.422585, 50.673111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749723, 36.897079, 50.679634>,  <31.740334, 37.615837, 50.899094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749723, 36.897079, 50.679634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.421072, 37.045677, 50.506699>,  <31.223881, 37.134834, 50.402935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.421072, 37.045677, 50.506699>,  <31.749723, 36.897079, 50.679634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421072, 37.045677, 50.506699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250397, -0.446150, -0.859216,
		-0.512081, -0.814214, 0.273549,
		-0.821629, 0.371492, -0.432341,
		31.174583, 37.157124, 50.376995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396711, 36.348797, 50.514721>,  <31.749723, 36.897079, 50.679634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396711, 36.348797, 50.514721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.299635, 36.652840, 50.273609>,  <31.241390, 36.835266, 50.128941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.299635, 36.652840, 50.273609>,  <31.396711, 36.348797, 50.514721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299635, 36.652840, 50.273609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254761, -0.549611, -0.795629,
		-0.936055, -0.346656, -0.060260,
		-0.242690, 0.760104, -0.602780,
		31.226828, 36.880871, 50.092773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839039, 35.995781, 50.119743>,  <31.396711, 36.348797, 50.514721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839039, 35.995781, 50.119743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.980118, 36.311646, 49.918930>,  <31.064764, 36.501163, 49.798443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.980118, 36.311646, 49.918930>,  <30.839039, 35.995781, 50.119743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980118, 36.311646, 49.918930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092703, -0.563362, -0.820993,
		-0.931135, 0.243020, -0.271899,
		0.352696, 0.789661, -0.502037,
		31.085926, 36.548542, 49.768318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577805, 35.916355, 49.522495>,  <30.839039, 35.995781, 50.119743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577805, 35.916355, 49.522495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.882723, 36.166679, 49.456444>,  <31.065674, 36.316875, 49.416813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.882723, 36.166679, 49.456444>,  <30.577805, 35.916355, 49.522495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882723, 36.166679, 49.456444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091437, -0.356694, -0.929735,
		-0.640739, 0.693634, -0.329129,
		0.762294, 0.625812, -0.165124,
		31.111412, 36.354424, 49.406906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476891, 36.218037, 48.862209>,  <30.577805, 35.916355, 49.522495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476891, 36.218037, 48.862209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.869598, 36.231930, 48.936966>,  <31.105223, 36.240265, 48.981819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.869598, 36.231930, 48.936966>,  <30.476891, 36.218037, 48.862209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869598, 36.231930, 48.936966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169877, -0.601463, -0.780631,
		0.085294, 0.798146, -0.596396,
		0.981767, 0.034731, 0.186888,
		31.164129, 36.242348, 48.993031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676043, 36.312435, 48.259960>,  <30.476891, 36.218037, 48.862209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676043, 36.312435, 48.259960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.986845, 36.175369, 48.471180>,  <31.173326, 36.093128, 48.597912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.986845, 36.175369, 48.471180>,  <30.676043, 36.312435, 48.259960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986845, 36.175369, 48.471180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251464, -0.600053, -0.759409,
		0.577086, 0.722851, -0.380076,
		0.777005, -0.342669, 0.528053,
		31.219946, 36.072567, 48.629597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147345, 36.088284, 47.744087>,  <30.676043, 36.312435, 48.259960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147345, 36.088284, 47.744087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.302874, 35.903133, 48.062725>,  <31.396191, 35.792042, 48.253906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.302874, 35.903133, 48.062725>,  <31.147345, 36.088284, 47.744087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302874, 35.903133, 48.062725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430668, -0.673034, -0.601290,
		0.814458, 0.576863, -0.062345,
		0.388822, -0.462876, 0.796595,
		31.419519, 35.764271, 48.301704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797283, 35.922794, 47.547443>,  <31.147345, 36.088284, 47.744087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797283, 35.922794, 47.547443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.705551, 35.687019, 47.857277>,  <31.650511, 35.545555, 48.043175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.705551, 35.687019, 47.857277>,  <31.797283, 35.922794, 47.547443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705551, 35.687019, 47.857277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236667, -0.805675, -0.543025,
		0.944138, 0.058786, 0.324266,
		-0.229331, -0.589434, 0.774581,
		31.636751, 35.510189, 48.089653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349247, 35.492313, 47.536308>,  <31.797283, 35.922794, 47.547443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349247, 35.492313, 47.536308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.067348, 35.304520, 47.749073>,  <31.898211, 35.191845, 47.876732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.067348, 35.304520, 47.749073>,  <32.349247, 35.492313, 47.536308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067348, 35.304520, 47.749073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240167, -0.863340, -0.443806,
		0.667577, -0.185021, 0.721185,
		-0.704742, -0.469480, 0.531909,
		31.855927, 35.163677, 47.908646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630531, 34.800724, 47.762905>,  <32.349247, 35.492313, 47.536308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630531, 34.800724, 47.762905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.232559, 34.769619, 47.788433>,  <31.993776, 34.750957, 47.803749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.232559, 34.769619, 47.788433>,  <32.630531, 34.800724, 47.762905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232559, 34.769619, 47.788433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065612, -0.982507, -0.174283,
		0.076252, -0.169211, 0.982626,
		-0.994928, -0.077762, 0.063816,
		31.934080, 34.746292, 47.807579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514294, 34.378120, 48.249813>,  <32.630531, 34.800724, 47.762905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514294, 34.378120, 48.249813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.195358, 34.387543, 48.008583>,  <32.003998, 34.393196, 47.863846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.195358, 34.387543, 48.008583>,  <32.514294, 34.378120, 48.249813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195358, 34.387543, 48.008583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148875, -0.960682, -0.234363,
		-0.584881, -0.276649, 0.762482,
		-0.797339, 0.023560, -0.603071,
		31.956156, 34.394611, 47.827663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226864, 33.794823, 48.495888>,  <32.514294, 34.378120, 48.249813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226864, 33.794823, 48.495888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.046574, 33.880535, 48.149261>,  <31.938400, 33.931965, 47.941288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.046574, 33.880535, 48.149261>,  <32.226864, 33.794823, 48.495888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046574, 33.880535, 48.149261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087096, -0.955572, -0.281595,
		-0.888404, -0.202396, 0.412037,
		-0.450725, 0.214283, -0.866562,
		31.911356, 33.944820, 47.889294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707165, 33.225056, 48.358795>,  <32.226864, 33.794823, 48.495888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707165, 33.225056, 48.358795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.787563, 33.411179, 48.013985>,  <31.835802, 33.522854, 47.807098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.787563, 33.411179, 48.013985>,  <31.707165, 33.225056, 48.358795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787563, 33.411179, 48.013985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190775, -0.881728, -0.431463,
		-0.960836, -0.077730, -0.265993,
		0.200996, 0.465310, -0.862025,
		31.847862, 33.550770, 47.755379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309320, 32.765968, 47.833954>,  <31.707165, 33.225056, 48.358795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309320, 32.765968, 47.833954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593834, 32.983707, 47.656071>,  <31.764542, 33.114349, 47.549339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593834, 32.983707, 47.656071>,  <31.309320, 32.765968, 47.833954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593834, 32.983707, 47.656071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348771, -0.822612, -0.449075,
		-0.610274, 0.164318, -0.774961,
		0.711284, 0.544343, -0.444709,
		31.807219, 33.147011, 47.522659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396152, 32.384403, 47.235836>,  <31.309320, 32.765968, 47.833954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396152, 32.384403, 47.235836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.729301, 32.601688, 47.278255>,  <31.929190, 32.732059, 47.303707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.729301, 32.601688, 47.278255>,  <31.396152, 32.384403, 47.235836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729301, 32.601688, 47.278255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540199, -0.756137, -0.369381,
		-0.120464, 0.364935, -0.923207,
		0.832870, 0.543213, 0.106050,
		31.979162, 32.764652, 47.310070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660456, 32.295677, 46.615059>,  <31.396152, 32.384403, 47.235836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660456, 32.295677, 46.615059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.923992, 32.400841, 46.896996>,  <32.082115, 32.463940, 47.066158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.923992, 32.400841, 46.896996>,  <31.660456, 32.295677, 46.615059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923992, 32.400841, 46.896996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565671, -0.790799, -0.233782,
		0.495926, 0.552735, -0.669733,
		0.658843, 0.262910, 0.704843,
		32.121647, 32.479713, 47.108448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411575, 32.322742, 46.440239>,  <31.660456, 32.295677, 46.615059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411575, 32.322742, 46.440239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.373932, 32.261005, 46.833649>,  <32.351345, 32.223961, 47.069695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.373932, 32.261005, 46.833649>,  <32.411575, 32.322742, 46.440239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373932, 32.261005, 46.833649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564022, -0.822339, -0.075080,
		0.820379, 0.547664, 0.164447,
		-0.094113, -0.154346, 0.983524,
		32.345699, 32.214703, 47.128708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035538, 32.028343, 46.709385>,  <32.411575, 32.322742, 46.440239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035538, 32.028343, 46.709385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762150, 31.939503, 46.987530>,  <32.598118, 31.886198, 47.154419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762150, 31.939503, 46.987530>,  <33.035538, 32.028343, 46.709385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762150, 31.939503, 46.987530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401246, -0.910081, 0.103702,
		0.609807, 0.349891, 0.711134,
		-0.683474, -0.222101, 0.695366,
		32.557106, 31.872871, 47.196140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378555, 31.604948, 47.064651>,  <33.035538, 32.028343, 46.709385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378555, 31.604948, 47.064651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.042183, 31.589458, 47.280556>,  <32.840359, 31.580164, 47.410099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.042183, 31.589458, 47.280556>,  <33.378555, 31.604948, 47.064651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042183, 31.589458, 47.280556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247407, -0.914601, 0.319836,
		0.481277, 0.402499, 0.778696,
		-0.840929, -0.038726, 0.539758,
		32.789906, 31.577841, 47.442482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576828, 31.338297, 47.788654>,  <33.378555, 31.604948, 47.064651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576828, 31.338297, 47.788654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.187160, 31.276157, 47.723087>,  <32.953362, 31.238874, 47.683746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.187160, 31.276157, 47.723087>,  <33.576828, 31.338297, 47.788654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187160, 31.276157, 47.723087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144104, -0.986447, 0.078465,
		-0.173884, 0.052817, 0.983349,
		-0.974166, -0.155348, -0.163916,
		32.894913, 31.229553, 47.673912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101521, 30.833490, 47.931614>,  <33.576828, 31.338297, 47.788654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101521, 30.833490, 47.931614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.097176, 30.772169, 47.536366>,  <34.094570, 30.735376, 47.299217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.097176, 30.772169, 47.536366>,  <34.101521, 30.833490, 47.931614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097176, 30.772169, 47.536366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666788, 0.735292, -0.121407,
		0.745168, -0.660185, 0.094233,
		-0.010863, -0.153302, -0.988120,
		34.093918, 30.726179, 47.239929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814358, 30.797024, 47.576099>,  <34.101521, 30.833490, 47.931614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814358, 30.797024, 47.576099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.561836, 30.925545, 47.293758>,  <34.410324, 31.002657, 47.124355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.561836, 30.925545, 47.293758>,  <34.814358, 30.797024, 47.576099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561836, 30.925545, 47.293758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697382, 0.633362, -0.335426,
		0.339284, -0.704002, -0.623914,
		-0.631304, 0.321302, -0.705848,
		34.372444, 31.021935, 47.082005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047714, 30.600609, 46.923920>,  <34.814358, 30.797024, 47.576099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047714, 30.600609, 46.923920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854355, 30.943846, 46.993206>,  <34.738338, 31.149788, 47.034779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.854355, 30.943846, 46.993206>,  <35.047714, 30.600609, 46.923920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854355, 30.943846, 46.993206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822058, 0.512981, -0.247125,
		-0.300911, 0.022931, -0.953377,
		-0.483397, 0.858094, 0.173212,
		34.709335, 31.201273, 47.045170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196415, 31.142685, 46.311752>,  <35.047714, 30.600609, 46.923920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196415, 31.142685, 46.311752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.137508, 31.312225, 46.669224>,  <35.102165, 31.413950, 46.883709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.137508, 31.312225, 46.669224>,  <35.196415, 31.142685, 46.311752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137508, 31.312225, 46.669224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660565, 0.714643, -0.230084,
		-0.736183, 0.556450, -0.385223,
		-0.147267, 0.423849, 0.893680,
		35.093327, 31.439381, 46.937328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512383, 31.671728, 46.063705>,  <35.196415, 31.142685, 46.311752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512383, 31.671728, 46.063705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.467701, 31.746752, 46.454060>,  <35.440891, 31.791765, 46.688271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.467701, 31.746752, 46.454060>,  <35.512383, 31.671728, 46.063705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467701, 31.746752, 46.454060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758608, 0.650428, -0.038178,
		-0.641901, 0.736047, -0.214935,
		-0.111699, 0.187558, 0.975882,
		35.434193, 31.803019, 46.746822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465260, 32.447491, 46.167168>,  <35.512383, 31.671728, 46.063705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465260, 32.447491, 46.167168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559074, 32.295670, 46.525146>,  <35.615364, 32.204578, 46.739933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559074, 32.295670, 46.525146>,  <35.465260, 32.447491, 46.167168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559074, 32.295670, 46.525146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754970, 0.651071, 0.078270,
		-0.612383, 0.657302, 0.439250,
		0.234536, -0.379552, 0.894948,
		35.629436, 32.181805, 46.793633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580120, 32.944275, 46.576920>,  <35.465260, 32.447491, 46.167168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580120, 32.944275, 46.576920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.755829, 32.667194, 46.805729>,  <35.861252, 32.500946, 46.943012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.755829, 32.667194, 46.805729>,  <35.580120, 32.944275, 46.576920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755829, 32.667194, 46.805729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729654, 0.646556, 0.222644,
		-0.524070, 0.319578, 0.789444,
		0.439268, -0.692701, 0.572022,
		35.887608, 32.459385, 46.977337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831963, 33.295441, 47.277386>,  <35.580120, 32.944275, 46.576920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831963, 33.295441, 47.277386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041195, 32.962009, 47.206364>,  <36.166737, 32.761951, 47.163750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041195, 32.962009, 47.206364>,  <35.831963, 33.295441, 47.277386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041195, 32.962009, 47.206364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851849, 0.517986, 0.077748,
		0.027162, -0.191919, 0.981035,
		0.523084, -0.833581, -0.177556,
		36.198120, 32.711937, 47.153095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377575, 33.187019, 47.856087>,  <35.831963, 33.295441, 47.277386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377575, 33.187019, 47.856087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.530079, 32.952442, 47.570229>,  <36.621582, 32.811695, 47.398712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.530079, 32.952442, 47.570229>,  <36.377575, 33.187019, 47.856087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530079, 32.952442, 47.570229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920629, 0.311224, 0.235758,
		0.084157, -0.747812, 0.658555,
		0.381260, -0.586444, -0.714649,
		36.644459, 32.776508, 47.355835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927784, 32.942860, 48.201355>,  <36.377575, 33.187019, 47.856087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927784, 32.942860, 48.201355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987827, 32.883518, 47.810364>,  <37.023853, 32.847916, 47.575768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987827, 32.883518, 47.810364>,  <36.927784, 32.942860, 48.201355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987827, 32.883518, 47.810364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972699, 0.199149, 0.119148,
		0.176987, -0.968675, 0.174194,
		0.150106, -0.148351, -0.977476,
		37.032860, 32.839012, 47.517120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506340, 32.423870, 48.119328>,  <36.927784, 32.942860, 48.201355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506340, 32.423870, 48.119328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.472031, 32.629528, 47.777966>,  <37.451447, 32.752922, 47.573147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.472031, 32.629528, 47.777966>,  <37.506340, 32.423870, 48.119328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472031, 32.629528, 47.777966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980996, 0.193208, 0.017803,
		0.174038, -0.835660, -0.520945,
		-0.085773, 0.514143, -0.853405,
		37.446301, 32.783772, 47.521946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101803, 32.306843, 47.956661>,  <37.506340, 32.423870, 48.119328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101803, 32.306843, 47.956661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.010506, 32.594204, 47.693817>,  <37.955727, 32.766621, 47.536110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.010506, 32.594204, 47.693817>,  <38.101803, 32.306843, 47.956661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010506, 32.594204, 47.693817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964635, 0.258266, -0.052708,
		0.131843, -0.645903, -0.751949,
		-0.228247, 0.718407, -0.657111,
		37.942032, 32.809727, 47.496685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546276, 32.220932, 47.344372>,  <38.101803, 32.306843, 47.956661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546276, 32.220932, 47.344372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.422474, 32.599545, 47.380764>,  <38.348194, 32.826714, 47.402599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.422474, 32.599545, 47.380764>,  <38.546276, 32.220932, 47.344372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422474, 32.599545, 47.380764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931270, 0.321065, -0.172198,
		-0.192203, 0.031434, -0.980851,
		-0.309504, 0.946535, 0.090984,
		38.329624, 32.883507, 47.408058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846191, 32.574711, 46.828918>,  <38.546276, 32.220932, 47.344372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846191, 32.574711, 46.828918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.728184, 32.857254, 47.086296>,  <38.657379, 33.026779, 47.240723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.728184, 32.857254, 47.086296>,  <38.846191, 32.574711, 46.828918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728184, 32.857254, 47.086296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862476, 0.486683, -0.138832,
		-0.411220, 0.513998, -0.752798,
		-0.295015, 0.706361, 0.643445,
		38.639679, 33.069160, 47.279331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713585, 33.246681, 46.428944>,  <38.846191, 32.574711, 46.828918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713585, 33.246681, 46.428944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.830441, 33.295235, 46.808399>,  <38.900555, 33.324368, 47.036072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.830441, 33.295235, 46.808399>,  <38.713585, 33.246681, 46.428944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830441, 33.295235, 46.808399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840408, 0.440857, -0.315213,
		-0.456477, 0.889332, 0.026780,
		0.292135, 0.121382, 0.948643,
		38.918079, 33.331650, 47.092991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975670, 33.129631, 45.682133>,  <38.713585, 33.246681, 46.428944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975670, 33.129631, 45.682133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.596195, 33.178852, 45.565609>,  <38.368511, 33.208385, 45.495697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.596195, 33.178852, 45.565609>,  <38.975670, 33.129631, 45.682133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596195, 33.178852, 45.565609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096860, -0.763839, -0.638097,
		-0.301032, -0.633567, 0.712721,
		-0.948682, 0.123054, -0.291308,
		38.311592, 33.215767, 45.478218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698437, 32.500160, 45.538677>,  <38.975670, 33.129631, 45.682133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698437, 32.500160, 45.538677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.474308, 32.748043, 45.318855>,  <38.339832, 32.896774, 45.186962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.474308, 32.748043, 45.318855>,  <38.698437, 32.500160, 45.538677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474308, 32.748043, 45.318855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038228, -0.682130, -0.730231,
		-0.827395, -0.388153, 0.405899,
		-0.560317, 0.619707, -0.549553,
		38.306213, 32.933956, 45.153988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946663, 32.223492, 45.297047>,  <38.698437, 32.500160, 45.538677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946663, 32.223492, 45.297047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.099400, 32.483570, 45.034309>,  <38.191040, 32.639618, 44.876667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.099400, 32.483570, 45.034309>,  <37.946663, 32.223492, 45.297047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099400, 32.483570, 45.034309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053050, -0.694103, -0.717918,
		-0.922703, 0.308977, -0.230546,
		0.381843, 0.650195, -0.656842,
		38.213951, 32.678627, 44.837257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202351, 31.570929, 44.919201>,  <37.946663, 32.223492, 45.297047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202351, 31.570929, 44.919201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.477776, 31.361008, 45.119389>,  <38.643028, 31.235054, 45.239502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.477776, 31.361008, 45.119389>,  <38.202351, 31.570929, 44.919201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477776, 31.361008, 45.119389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408213, -0.850902, -0.330646,
		0.599372, 0.023372, -0.800129,
		0.688560, -0.524804, 0.500466,
		38.684345, 31.203568, 45.269527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498135, 31.189869, 44.463257>,  <38.202351, 31.570929, 44.919201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498135, 31.189869, 44.463257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.556908, 31.019739, 44.820469>,  <38.592171, 30.917662, 45.034798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.556908, 31.019739, 44.820469>,  <38.498135, 31.189869, 44.463257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556908, 31.019739, 44.820469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371140, -0.860578, -0.348799,
		0.916878, -0.280191, -0.284303,
		0.146934, -0.425322, 0.893035,
		38.600986, 30.892143, 45.088379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219685, 31.071260, 44.287689>,  <38.498135, 31.189869, 44.463257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219685, 31.071260, 44.287689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.510319, 30.878977, 44.484055>,  <39.684700, 30.763607, 44.601871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.510319, 30.878977, 44.484055>,  <39.219685, 31.071260, 44.287689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510319, 30.878977, 44.484055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636018, -0.200286, 0.745229,
		-0.259921, -0.853697, -0.451268,
		0.726583, -0.480715, 0.490908,
		39.728294, 30.734764, 44.631329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457840, 31.525124, 43.693771>,  <39.219685, 31.071260, 44.287689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457840, 31.525124, 43.693771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.592556, 31.222746, 43.918312>,  <39.673386, 31.041319, 44.053036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.592556, 31.222746, 43.918312>,  <39.457840, 31.525124, 43.693771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592556, 31.222746, 43.918312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810808, 0.535946, 0.235271,
		-0.478707, 0.375911, 0.793430,
		0.336795, -0.755945, 0.561352,
		39.693596, 30.995962, 44.086720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610580, 31.729643, 44.401695>,  <39.457840, 31.525124, 43.693771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610580, 31.729643, 44.401695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.829113, 31.410059, 44.301147>,  <39.960232, 31.218309, 44.240818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.829113, 31.410059, 44.301147>,  <39.610580, 31.729643, 44.401695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829113, 31.410059, 44.301147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837350, 0.514144, 0.185747,
		-0.019167, -0.311960, 0.949902,
		0.546332, -0.798960, -0.251365,
		39.993011, 31.170370, 44.225739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139690, 31.617374, 44.878372>,  <39.610580, 31.729643, 44.401695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139690, 31.617374, 44.878372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.278111, 31.477705, 44.530045>,  <40.361160, 31.393904, 44.321049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.278111, 31.477705, 44.530045>,  <40.139690, 31.617374, 44.878372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278111, 31.477705, 44.530045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772106, 0.633289, 0.052887,
		0.533014, -0.690667, 0.488748,
		0.346046, -0.349176, -0.870820,
		40.381924, 31.372952, 44.268799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831238, 31.343512, 44.975887>,  <40.139690, 31.617374, 44.878372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831238, 31.343512, 44.975887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.817883, 31.441744, 44.588367>,  <40.809868, 31.500683, 44.355854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.817883, 31.441744, 44.588367>,  <40.831238, 31.343512, 44.975887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817883, 31.441744, 44.588367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928307, 0.366779, 0.060981,
		0.370311, -0.897309, -0.240219,
		-0.033389, 0.245579, -0.968801,
		40.807865, 31.515417, 44.297726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299862, 30.948511, 44.444416>,  <40.831238, 31.343512, 44.975887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299862, 30.948511, 44.444416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.247429, 31.326040, 44.323082>,  <41.215969, 31.552559, 44.250282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.247429, 31.326040, 44.323082>,  <41.299862, 30.948511, 44.444416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247429, 31.326040, 44.323082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894532, 0.244503, 0.374206,
		0.427351, -0.222291, -0.876332,
		-0.131084, 0.943825, -0.303335,
		41.208103, 31.609188, 44.232082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873116, 31.272732, 43.941490>,  <41.299862, 30.948511, 44.444416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873116, 31.272732, 43.941490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.693165, 31.566177, 44.145226>,  <41.585194, 31.742245, 44.267467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.693165, 31.566177, 44.145226>,  <41.873116, 31.272732, 43.941490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693165, 31.566177, 44.145226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870879, 0.233950, 0.432246,
		0.197943, 0.638026, -0.744138,
		-0.449875, 0.733615, 0.509335,
		41.558201, 31.786263, 44.298027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317497, 31.920088, 44.063873>,  <41.873116, 31.272732, 43.941490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317497, 31.920088, 44.063873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.031170, 31.925278, 44.343140>,  <41.859375, 31.928391, 44.510700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.031170, 31.925278, 44.343140>,  <42.317497, 31.920088, 44.063873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031170, 31.925278, 44.343140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675120, 0.268262, 0.687203,
		-0.178377, 0.963259, -0.200785,
		-0.715818, 0.012973, 0.698167,
		41.816425, 31.929169, 44.552589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396862, 32.142284, 44.836628>,  <42.317497, 31.920088, 44.063873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396862, 32.142284, 44.836628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.637985, 32.403400, 45.020142>,  <42.782661, 32.560070, 45.130249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.637985, 32.403400, 45.020142>,  <42.396862, 32.142284, 44.836628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637985, 32.403400, 45.020142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224515, 0.412985, -0.882630,
		-0.765644, 0.635063, 0.102391,
		0.602812, 0.652793, 0.458781,
		42.818829, 32.599239, 45.157776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127518, 32.832581, 44.690777>,  <42.396862, 32.142284, 44.836628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127518, 32.832581, 44.690777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.518604, 32.844727, 44.773869>,  <42.753254, 32.852013, 44.823723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.518604, 32.844727, 44.773869>,  <42.127518, 32.832581, 44.690777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518604, 32.844727, 44.773869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158906, 0.539627, -0.826772,
		-0.137201, 0.841357, 0.522776,
		0.977714, 0.030362, 0.207734,
		42.811920, 32.853836, 44.836189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332508, 33.582180, 44.677197>,  <42.127518, 32.832581, 44.690777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332508, 33.582180, 44.677197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.586964, 33.288795, 44.581398>,  <42.739639, 33.112766, 44.523918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.586964, 33.288795, 44.581398>,  <42.332508, 33.582180, 44.677197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586964, 33.288795, 44.581398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130764, 0.408396, -0.903390,
		0.760410, 0.543367, 0.355708,
		0.636142, -0.733461, -0.239495,
		42.777805, 33.068756, 44.509548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008652, 33.869396, 44.437305>,  <42.332508, 33.582180, 44.677197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008652, 33.869396, 44.437305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.837135, 33.530170, 44.312778>,  <42.734226, 33.326633, 44.238064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.837135, 33.530170, 44.312778>,  <43.008652, 33.869396, 44.437305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.837135, 33.530170, 44.312778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319679, 0.179869, -0.930297,
		0.844952, -0.498424, 0.193983,
		-0.428791, -0.848069, -0.311316,
		42.708500, 33.275749, 44.219383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544361, 33.456963, 44.180065>,  <43.008652, 33.869396, 44.437305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544361, 33.456963, 44.180065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.204670, 33.372520, 43.986473>,  <43.000854, 33.321854, 43.870316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.204670, 33.372520, 43.986473>,  <43.544361, 33.456963, 44.180065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204670, 33.372520, 43.986473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477866, 0.082631, -0.874538,
		0.224616, -0.973963, 0.030710,
		-0.849230, -0.211110, -0.483984,
		42.949902, 33.309189, 43.841278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812096, 32.928604, 43.752419>,  <43.544361, 33.456963, 44.180065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812096, 32.928604, 43.752419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.503567, 33.143456, 43.615860>,  <43.318451, 33.272366, 43.533924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.503567, 33.143456, 43.615860>,  <43.812096, 32.928604, 43.752419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503567, 33.143456, 43.615860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475309, 0.129420, -0.870248,
		-0.423254, -0.833511, -0.355128,
		-0.771322, 0.537132, -0.341398,
		43.272171, 33.304596, 43.513439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558582, 32.612827, 43.156807>,  <43.812096, 32.928604, 43.752419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558582, 32.612827, 43.156807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.512512, 33.009850, 43.140961>,  <43.484871, 33.248062, 43.131454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.512512, 33.009850, 43.140961>,  <43.558582, 32.612827, 43.156807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512512, 33.009850, 43.140961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449937, 0.016578, -0.892906,
		-0.885602, -0.120667, -0.448497,
		-0.115179, 0.992555, -0.039611,
		43.477959, 33.307617, 43.129078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158386, 33.016605, 42.511864>,  <43.558582, 32.612827, 43.156807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158386, 33.016605, 42.511864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.463657, 33.243073, 42.636448>,  <43.646820, 33.378952, 42.711201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.463657, 33.243073, 42.636448>,  <43.158386, 33.016605, 42.511864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463657, 33.243073, 42.636448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195182, 0.257515, -0.946356,
		-0.616004, 0.783032, 0.086024,
		0.763180, 0.566168, 0.311464,
		43.692612, 33.412922, 42.729889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080719, 33.674397, 42.352509>,  <43.158386, 33.016605, 42.511864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080719, 33.674397, 42.352509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.478149, 33.630306, 42.342319>,  <43.716610, 33.603851, 42.336205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.478149, 33.630306, 42.342319>,  <43.080719, 33.674397, 42.352509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478149, 33.630306, 42.342319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011523, 0.322619, -0.946459,
		0.112545, 0.940089, 0.321818,
		0.993580, -0.110228, -0.025477,
		43.776222, 33.597237, 42.334675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.245777, 34.161560, 41.769737>,  <43.080719, 33.674397, 42.352509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.245777, 34.161560, 41.769737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.551849, 33.927631, 41.877430>,  <43.735493, 33.787273, 41.942043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.551849, 33.927631, 41.877430>,  <43.245777, 34.161560, 41.769737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551849, 33.927631, 41.877430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520285, 0.315390, -0.793620,
		0.379212, 0.747339, 0.545603,
		0.765181, -0.584819, 0.269229,
		43.781403, 33.752186, 41.958199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.844364, 34.493916, 41.736286>,  <43.245777, 34.161560, 41.769737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.844364, 34.493916, 41.736286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.872189, 34.131897, 41.568451>,  <43.888885, 33.914684, 41.467751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.872189, 34.131897, 41.568451>,  <43.844364, 34.493916, 41.736286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872189, 34.131897, 41.568451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548521, 0.386016, -0.741698,
		0.833238, -0.178555, 0.523291,
		0.069565, -0.905047, -0.419585,
		43.893059, 33.860382, 41.442577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478359, 34.439121, 41.623482>,  <43.844364, 34.493916, 41.736286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478359, 34.439121, 41.623482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.331139, 34.233627, 41.313484>,  <44.242805, 34.110332, 41.127487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.331139, 34.233627, 41.313484>,  <44.478359, 34.439121, 41.623482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331139, 34.233627, 41.313484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414218, 0.655631, -0.631324,
		0.832441, -0.553379, -0.028512,
		-0.368055, -0.513730, -0.774994,
		44.220722, 34.079510, 41.080986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042763, 34.398209, 41.128330>,  <44.478359, 34.439121, 41.623482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.042763, 34.398209, 41.128330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.694809, 34.323185, 40.945847>,  <44.486038, 34.278172, 40.836357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.694809, 34.323185, 40.945847>,  <45.042763, 34.398209, 41.128330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.694809, 34.323185, 40.945847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220361, 0.679687, -0.699619,
		0.441297, -0.709117, -0.549917,
		-0.869884, -0.187559, -0.456206,
		44.433846, 34.266918, 40.808983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.209614, 34.367329, 40.376068>,  <45.042763, 34.398209, 41.128330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.209614, 34.367329, 40.376068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.868488, 34.573788, 40.407829>,  <44.663815, 34.697662, 40.426884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.868488, 34.573788, 40.407829>,  <45.209614, 34.367329, 40.376068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.868488, 34.573788, 40.407829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318133, 0.634062, -0.704810,
		-0.414131, -0.575810, -0.704939,
		-0.852811, 0.516148, 0.079401,
		44.612644, 34.728630, 40.431648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.889469, 34.345066, 39.845402>,  <45.209614, 34.367329, 40.376068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.889469, 34.345066, 39.845402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.793175, 34.694592, 40.014393>,  <44.735397, 34.904308, 40.115788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.793175, 34.694592, 40.014393>,  <44.889469, 34.345066, 39.845402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.793175, 34.694592, 40.014393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140016, 0.461996, -0.875760,
		-0.960438, -0.151674, -0.233568,
		-0.240738, 0.873816, 0.422482,
		44.720955, 34.956738, 40.141136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.299500, 34.711269, 39.572849>,  <44.889469, 34.345066, 39.845402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.299500, 34.711269, 39.572849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.604904, 34.943050, 39.686893>,  <44.788147, 35.082119, 39.755322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.604904, 34.943050, 39.686893>,  <44.299500, 34.711269, 39.572849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604904, 34.943050, 39.686893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022691, 0.465289, -0.884868,
		-0.645394, 0.669138, 0.368402,
		0.763512, 0.579448, 0.285112,
		44.833958, 35.116886, 39.772427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273197, 35.379059, 39.287407>,  <44.299500, 34.711269, 39.572849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273197, 35.379059, 39.287407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.661144, 35.361748, 39.383316>,  <44.893913, 35.351360, 39.440861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.661144, 35.361748, 39.383316>,  <44.273197, 35.379059, 39.287407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661144, 35.361748, 39.383316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222214, 0.560707, -0.797640,
		-0.099917, 0.826882, 0.553427,
		0.969865, -0.043281, 0.239769,
		44.952103, 35.348763, 39.455246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422817, 36.109516, 39.273209>,  <44.273197, 35.379059, 39.287407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422817, 36.109516, 39.273209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.737362, 35.865265, 39.235737>,  <44.926090, 35.718716, 39.213253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.737362, 35.865265, 39.235737>,  <44.422817, 36.109516, 39.273209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.737362, 35.865265, 39.235737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289557, 0.498266, -0.817244,
		0.545705, 0.615524, 0.568627,
		0.786361, -0.610624, -0.093677,
		44.973270, 35.682079, 39.207634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.074646, 36.449791, 39.226440>,  <44.422817, 36.109516, 39.273209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.074646, 36.449791, 39.226440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.094036, 36.114925, 39.008522>,  <45.105671, 35.914005, 38.877769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.094036, 36.114925, 39.008522>,  <45.074646, 36.449791, 39.226440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.094036, 36.114925, 39.008522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098254, 0.546790, -0.831484,
		0.993980, -0.013223, 0.108760,
		0.048474, -0.837165, -0.544798,
		45.108578, 35.863777, 38.845081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.621117, 36.563210, 38.656567>,  <45.074646, 36.449791, 39.226440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.621117, 36.563210, 38.656567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.337879, 36.296787, 38.562786>,  <45.167934, 36.136932, 38.506519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.337879, 36.296787, 38.562786>,  <45.621117, 36.563210, 38.656567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337879, 36.296787, 38.562786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119988, 0.440698, -0.889600,
		0.695847, -0.601791, -0.391975,
		-0.708096, -0.666058, -0.234450,
		45.125450, 36.096970, 38.492451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.742691, 36.143471, 38.072784>,  <45.621117, 36.563210, 38.656567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.742691, 36.143471, 38.072784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.350708, 36.209778, 38.116982>,  <45.115520, 36.249561, 38.143501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.350708, 36.209778, 38.116982>,  <45.742691, 36.143471, 38.072784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350708, 36.209778, 38.116982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001593, 0.548088, -0.836420,
		-0.199215, -0.819829, -0.536837,
		-0.979955, 0.165772, 0.110493,
		45.056721, 36.259510, 38.150131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279778, 35.761600, 38.448280>,  <45.742691, 36.143471, 38.072784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279778, 35.761600, 38.448280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.423416, 35.487900, 38.194401>,  <46.509602, 35.323677, 38.042072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.423416, 35.487900, 38.194401>,  <46.279778, 35.761600, 38.448280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.423416, 35.487900, 38.194401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893763, 0.447963, 0.022731,
		0.268768, -0.575432, 0.772426,
		0.359098, -0.684256, -0.634698,
		46.531147, 35.282623, 38.003990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.066441, 35.420986, 38.544098>,  <46.279778, 35.761600, 38.448280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.066441, 35.420986, 38.544098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.960091, 35.457851, 38.160259>,  <46.896282, 35.479969, 37.929958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.960091, 35.457851, 38.160259>,  <47.066441, 35.420986, 38.544098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.960091, 35.457851, 38.160259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873686, 0.443722, -0.199456,
		0.407410, -0.891413, -0.198495,
		-0.265875, 0.092162, -0.959592,
		46.880329, 35.485500, 37.872383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.540154, 35.070999, 38.026356>,  <47.066441, 35.420986, 38.544098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.540154, 35.070999, 38.026356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.368126, 35.400757, 37.879162>,  <47.264908, 35.598614, 37.790848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.368126, 35.400757, 37.879162>,  <47.540154, 35.070999, 38.026356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.368126, 35.400757, 37.879162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892410, 0.326556, -0.311393,
		-0.136545, -0.462310, -0.876142,
		-0.430069, 0.824397, -0.367981,
		47.239105, 35.648075, 37.768768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.562614, 35.081158, 37.310474>,  <47.540154, 35.070999, 38.026356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.562614, 35.081158, 37.310474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.566418, 35.449543, 37.466290>,  <47.568699, 35.670574, 37.559780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.566418, 35.449543, 37.466290>,  <47.562614, 35.081158, 37.310474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.566418, 35.449543, 37.466290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872693, 0.182544, -0.452863,
		-0.488177, 0.344254, -0.801980,
		0.009504, 0.920960, 0.389542,
		47.569267, 35.725830, 37.583153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.624176, 35.017826, 36.622906>,  <47.562614, 35.081158, 37.310474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.624176, 35.017826, 36.622906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.784599, 34.652744, 36.591591>,  <47.880852, 34.433697, 36.572803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.784599, 34.652744, 36.591591>,  <47.624176, 35.017826, 36.622906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.784599, 34.652744, 36.591591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915962, -0.400755, -0.020205,
		-0.012932, 0.079810, -0.996726,
		0.401056, -0.912702, -0.078286,
		47.904915, 34.378933, 36.568104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.690151, 34.518585, 35.950146>,  <47.624176, 35.017826, 36.622906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.690151, 34.518585, 35.950146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.600754, 34.352478, 36.302872>,  <47.547115, 34.252815, 36.514507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.600754, 34.352478, 36.302872>,  <47.690151, 34.518585, 35.950146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.600754, 34.352478, 36.302872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930477, -0.178540, -0.319900,
		0.290284, -0.892007, -0.346494,
		-0.223490, -0.415267, 0.881820,
		47.533707, 34.227898, 36.567417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.662750, 34.437180, 35.239376>,  <47.690151, 34.518585, 35.950146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.662750, 34.437180, 35.239376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.648998, 34.692322, 34.931622>,  <47.640747, 34.845406, 34.746967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.648998, 34.692322, 34.931622>,  <47.662750, 34.437180, 35.239376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.648998, 34.692322, 34.931622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082049, 0.765443, 0.638252,
		0.996035, 0.085071, 0.026018,
		-0.034381, 0.637856, -0.769388,
		47.638683, 34.883678, 34.700806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.408997, 34.468132, 55.466530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.721592, 34.582272, 55.688469>,  <31.909149, 34.650753, 55.821632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.721592, 34.582272, 55.688469>,  <31.408997, 34.468132, 55.466530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721592, 34.582272, 55.688469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623876, -0.367734, -0.689602,
		0.007259, 0.885070, -0.465400,
		0.781490, 0.285346, 0.554843,
		31.956039, 34.667877, 55.854923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900434, 34.678818, 54.997429>,  <31.408997, 34.468132, 55.466530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900434, 34.678818, 54.997429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.155365, 34.651016, 55.304409>,  <32.308323, 34.634335, 55.488598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.155365, 34.651016, 55.304409>,  <31.900434, 34.678818, 54.997429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155365, 34.651016, 55.304409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729819, -0.265235, -0.630091,
		0.247350, 0.961675, -0.118315,
		0.637325, -0.069505, 0.767455,
		32.346561, 34.630165, 55.534645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574142, 34.921322, 54.710861>,  <31.900434, 34.678818, 54.997429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574142, 34.921322, 54.710861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.669388, 34.701443, 55.031143>,  <32.726536, 34.569515, 55.223312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.669388, 34.701443, 55.031143>,  <32.574142, 34.921322, 54.710861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669388, 34.701443, 55.031143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714995, -0.458756, -0.527565,
		0.657331, 0.698124, 0.283794,
		0.238114, -0.549696, 0.800710,
		32.740822, 34.536533, 55.271355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222740, 35.023861, 54.702675>,  <32.574142, 34.921322, 54.710861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222740, 35.023861, 54.702675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.165852, 34.687817, 54.912052>,  <33.131718, 34.486191, 55.037678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.165852, 34.687817, 54.912052>,  <33.222740, 35.023861, 54.702675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165852, 34.687817, 54.912052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782888, -0.419062, -0.459862,
		0.605688, 0.344393, 0.717311,
		-0.142225, -0.840107, 0.523443,
		33.123184, 34.435783, 55.069084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837040, 34.864193, 54.776867>,  <33.222740, 35.023861, 54.702675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837040, 34.864193, 54.776867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.620010, 34.531063, 54.820713>,  <33.489792, 34.331184, 54.847019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.620010, 34.531063, 54.820713>,  <33.837040, 34.864193, 54.776867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620010, 34.531063, 54.820713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654904, -0.501117, -0.565670,
		0.526033, -0.235132, 0.817314,
		-0.542577, -0.832823, 0.109615,
		33.457237, 34.281216, 54.853596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257412, 34.353455, 55.105522>,  <33.837040, 34.864193, 54.776867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257412, 34.353455, 55.105522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.964054, 34.182724, 54.893879>,  <33.788040, 34.080284, 54.766891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.964054, 34.182724, 54.893879>,  <34.257412, 34.353455, 55.105522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964054, 34.182724, 54.893879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670997, -0.579413, -0.462649,
		-0.109098, -0.694331, 0.711338,
		-0.733390, -0.426831, -0.529107,
		33.744038, 34.054676, 54.735146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570572, 33.732735, 54.890903>,  <34.257412, 34.353455, 55.105522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570572, 33.732735, 54.890903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.258965, 33.762562, 54.641884>,  <34.071999, 33.780460, 54.492474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.258965, 33.762562, 54.641884>,  <34.570572, 33.732735, 54.890903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258965, 33.762562, 54.641884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554653, -0.381041, -0.739708,
		-0.292374, -0.921546, 0.255481,
		-0.779024, 0.074568, -0.622545,
		34.025257, 33.784931, 54.455120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584713, 32.971298, 54.643822>,  <34.570572, 33.732735, 54.890903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584713, 32.971298, 54.643822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.346169, 33.168274, 54.390255>,  <34.203041, 33.286461, 54.238117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.346169, 33.168274, 54.390255>,  <34.584713, 32.971298, 54.643822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346169, 33.168274, 54.390255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436431, -0.463881, -0.770936,
		-0.673704, -0.736419, 0.061724,
		-0.596364, 0.492444, -0.633915,
		34.167259, 33.316006, 54.200081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363277, 32.359745, 54.228264>,  <34.584713, 32.971298, 54.643822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363277, 32.359745, 54.228264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.323700, 32.708908, 54.037163>,  <34.299953, 32.918407, 53.922504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.323700, 32.708908, 54.037163>,  <34.363277, 32.359745, 54.228264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323700, 32.708908, 54.037163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453771, -0.387703, -0.802358,
		-0.885608, -0.296176, -0.357739,
		-0.098942, 0.872907, -0.477749,
		34.294018, 32.970779, 53.893837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025295, 32.304321, 53.680405>,  <34.363277, 32.359745, 54.228264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025295, 32.304321, 53.680405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.189259, 32.648041, 53.558044>,  <34.287636, 32.854271, 53.484627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.189259, 32.648041, 53.558044>,  <34.025295, 32.304321, 53.680405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189259, 32.648041, 53.558044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195454, -0.410334, -0.890744,
		-0.890938, 0.305336, -0.336154,
		0.409912, 0.859300, -0.305903,
		34.312233, 32.905830, 53.466274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856373, 32.420654, 52.908638>,  <34.025295, 32.304321, 53.680405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856373, 32.420654, 52.908638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.158211, 32.674175, 52.976612>,  <34.339314, 32.826290, 53.017399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.158211, 32.674175, 52.976612>,  <33.856373, 32.420654, 52.908638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158211, 32.674175, 52.976612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321508, -0.131345, -0.937753,
		-0.572032, 0.762260, -0.302885,
		0.754594, 0.633805, 0.169939,
		34.384590, 32.864315, 53.027596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860493, 32.908108, 52.476994>,  <33.856373, 32.420654, 52.908638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860493, 32.908108, 52.476994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.240795, 32.879467, 52.597614>,  <34.468975, 32.862282, 52.669987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.240795, 32.879467, 52.597614>,  <33.860493, 32.908108, 52.476994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240795, 32.879467, 52.597614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299777, -0.034672, -0.953379,
		0.078720, 0.996830, -0.011500,
		0.950756, -0.071603, 0.301556,
		34.526020, 32.857986, 52.688080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150299, 33.175163, 51.915737>,  <33.860493, 32.908108, 52.476994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150299, 33.175163, 51.915737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.469418, 33.028141, 52.106911>,  <34.660889, 32.939926, 52.221615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.469418, 33.028141, 52.106911>,  <34.150299, 33.175163, 51.915737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469418, 33.028141, 52.106911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353011, -0.357864, -0.864475,
		0.488779, 0.858392, -0.155752,
		0.797796, -0.367554, 0.477938,
		34.708755, 32.917873, 52.250294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747791, 33.458168, 51.540054>,  <34.150299, 33.175163, 51.915737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747791, 33.458168, 51.540054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.840153, 33.112644, 51.719170>,  <34.895569, 32.905331, 51.826637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.840153, 33.112644, 51.719170>,  <34.747791, 33.458168, 51.540054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840153, 33.112644, 51.719170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118321, -0.431879, -0.894137,
		0.965755, 0.259444, 0.002484,
		0.230906, -0.863811, 0.447787,
		34.909424, 32.853500, 51.853504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385281, 33.296383, 51.136326>,  <34.747791, 33.458168, 51.540054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385281, 33.296383, 51.136326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.293018, 32.961033, 51.333881>,  <35.237659, 32.759823, 51.452415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.293018, 32.961033, 51.333881>,  <35.385281, 33.296383, 51.136326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293018, 32.961033, 51.333881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203752, -0.537933, -0.817993,
		0.951464, -0.088043, 0.294898,
		-0.230654, -0.838377, 0.493885,
		35.223824, 32.709518, 51.482048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015484, 32.850452, 51.145454>,  <35.385281, 33.296383, 51.136326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015484, 32.850452, 51.145454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.676327, 32.640179, 51.172958>,  <35.472832, 32.514015, 51.189461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.676327, 32.640179, 51.172958>,  <36.015484, 32.850452, 51.145454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676327, 32.640179, 51.172958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286607, -0.563612, -0.774724,
		0.446014, -0.637179, 0.628549,
		-0.847896, -0.525684, 0.068760,
		35.421959, 32.482471, 51.193584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196453, 32.222370, 51.094387>,  <36.015484, 32.850452, 51.145454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196453, 32.222370, 51.094387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.805630, 32.200848, 51.011971>,  <35.571136, 32.187935, 50.962521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.805630, 32.200848, 51.011971>,  <36.196453, 32.222370, 51.094387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805630, 32.200848, 51.011971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192304, -0.638597, -0.745127,
		-0.091483, -0.767658, 0.634296,
		-0.977062, -0.053811, -0.206045,
		35.512512, 32.184704, 50.950157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148586, 31.504274, 51.011082>,  <36.196453, 32.222370, 51.094387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148586, 31.504274, 51.011082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.816948, 31.674095, 50.865559>,  <35.617966, 31.775988, 50.778244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.816948, 31.674095, 50.865559>,  <36.148586, 31.504274, 51.011082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816948, 31.674095, 50.865559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060038, -0.579332, -0.812877,
		-0.555868, -0.695798, 0.454835,
		-0.829100, 0.424545, -0.363807,
		35.568218, 31.801460, 50.756416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730347, 30.965052, 50.813904>,  <36.148586, 31.504274, 51.011082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730347, 30.965052, 50.813904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.580788, 31.257580, 50.585739>,  <35.491055, 31.433098, 50.448841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.580788, 31.257580, 50.585739>,  <35.730347, 30.965052, 50.813904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580788, 31.257580, 50.585739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202466, -0.664545, -0.719297,
		-0.905102, -0.153452, 0.396538,
		-0.373895, 0.731323, -0.570413,
		35.468620, 31.476976, 50.414616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179829, 30.710428, 50.500923>,  <35.730347, 30.965052, 50.813904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179829, 30.710428, 50.500923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.233223, 31.035400, 50.273895>,  <35.265259, 31.230385, 50.137680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.233223, 31.035400, 50.273895>,  <35.179829, 30.710428, 50.500923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233223, 31.035400, 50.273895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070218, -0.579009, -0.812292,
		-0.988560, 0.068575, -0.134336,
		0.133485, 0.812432, -0.567570,
		35.273270, 31.279131, 50.103622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673004, 30.761940, 49.990005>,  <35.179829, 30.710428, 50.500923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673004, 30.761940, 49.990005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.006840, 30.940931, 49.861492>,  <35.207142, 31.048326, 49.784386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.006840, 30.940931, 49.861492>,  <34.673004, 30.761940, 49.990005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006840, 30.940931, 49.861492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048452, -0.640595, -0.766349,
		-0.548736, 0.624020, -0.556315,
		0.834590, 0.447478, -0.321283,
		35.257217, 31.075174, 49.765106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520676, 30.808924, 49.298435>,  <34.673004, 30.761940, 49.990005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520676, 30.808924, 49.298435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.913811, 30.881987, 49.308701>,  <35.149693, 30.925823, 49.314857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.913811, 30.881987, 49.308701>,  <34.520676, 30.808924, 49.298435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913811, 30.881987, 49.308701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130502, -0.590307, -0.796560,
		-0.130349, 0.786241, -0.604015,
		0.982842, 0.182656, 0.025660,
		35.208664, 30.936783, 49.316399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766781, 31.024508, 49.033688>,  <34.520676, 30.808924, 49.298435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766781, 31.024508, 49.033688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.401039, 31.071482, 48.878681>,  <33.181595, 31.099667, 48.785679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.401039, 31.071482, 48.878681>,  <33.766781, 31.024508, 49.033688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401039, 31.071482, 48.878681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386554, 0.031769, 0.921720,
		0.120554, 0.992572, 0.016347,
		-0.914354, 0.117435, -0.387512,
		33.126732, 31.106712, 48.762428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410591, 31.592846, 49.360210>,  <33.766781, 31.024508, 49.033688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410591, 31.592846, 49.360210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.105217, 31.375807, 49.220062>,  <32.921993, 31.245583, 49.135975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.105217, 31.375807, 49.220062>,  <33.410591, 31.592846, 49.360210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105217, 31.375807, 49.220062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544206, 0.248221, 0.801390,
		-0.347865, 0.802479, -0.484785,
		-0.763433, -0.542598, -0.350367,
		32.876186, 31.213028, 49.114952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814404, 32.005276, 49.341686>,  <33.410591, 31.592846, 49.360210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814404, 32.005276, 49.341686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.659599, 31.636545, 49.350231>,  <32.566719, 31.415306, 49.355358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.659599, 31.636545, 49.350231>,  <32.814404, 32.005276, 49.341686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659599, 31.636545, 49.350231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547375, 0.248320, 0.799198,
		-0.742028, 0.297605, -0.600688,
		-0.387008, -0.921829, 0.021359,
		32.543495, 31.359997, 49.356640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180489, 32.060818, 49.478764>,  <32.814404, 32.005276, 49.341686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180489, 32.060818, 49.478764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.238689, 31.676216, 49.572010>,  <32.273609, 31.445456, 49.627960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.238689, 31.676216, 49.572010>,  <32.180489, 32.060818, 49.478764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238689, 31.676216, 49.572010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506209, 0.130099, 0.852541,
		-0.850049, -0.242051, -0.467791,
		0.145499, -0.961502, 0.233119,
		32.282341, 31.387766, 49.641945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507917, 31.867832, 49.774456>,  <32.180489, 32.060818, 49.478764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507917, 31.867832, 49.774456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.790247, 31.615711, 49.903778>,  <31.959644, 31.464437, 49.981373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.790247, 31.615711, 49.903778>,  <31.507917, 31.867832, 49.774456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790247, 31.615711, 49.903778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411482, 0.006706, 0.911393,
		-0.576623, -0.776319, -0.254626,
		0.705825, -0.630305, 0.323308,
		32.001995, 31.426620, 50.000771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210236, 31.219944, 50.150337>,  <31.507917, 31.867832, 49.774456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210236, 31.219944, 50.150337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.584131, 31.225992, 50.292339>,  <31.808470, 31.229622, 50.377541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.584131, 31.225992, 50.292339>,  <31.210236, 31.219944, 50.150337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584131, 31.225992, 50.292339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355180, 0.068706, 0.932270,
		-0.010299, -0.997522, 0.069591,
		0.934741, 0.015116, 0.355008,
		31.864553, 31.230528, 50.398842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268661, 30.777706, 50.796368>,  <31.210236, 31.219944, 50.150337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268661, 30.777706, 50.796368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.564989, 31.045364, 50.819798>,  <31.742786, 31.205959, 50.833855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.564989, 31.045364, 50.819798>,  <31.268661, 30.777706, 50.796368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564989, 31.045364, 50.819798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154838, 0.085266, 0.984254,
		0.653615, -0.738224, 0.166776,
		0.740819, 0.669146, 0.058575,
		31.787235, 31.246107, 50.837368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367493, 30.758556, 51.525738>,  <31.268661, 30.777706, 50.796368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367493, 30.758556, 51.525738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.590590, 31.073067, 51.419388>,  <31.724447, 31.261774, 51.355579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.590590, 31.073067, 51.419388>,  <31.367493, 30.758556, 51.525738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590590, 31.073067, 51.419388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073052, 0.365583, 0.927908,
		0.826792, -0.498112, 0.261341,
		0.557743, 0.786278, -0.265873,
		31.757914, 31.308950, 51.339626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784554, 30.946375, 52.115307>,  <31.367493, 30.758556, 51.525738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784554, 30.946375, 52.115307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.819925, 31.280956, 51.898964>,  <31.841148, 31.481705, 51.769157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.819925, 31.280956, 51.898964>,  <31.784554, 30.946375, 52.115307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819925, 31.280956, 51.898964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187522, 0.547254, 0.815689,
		0.978272, 0.029293, 0.205246,
		0.088428, 0.836454, -0.540856,
		31.846453, 31.531893, 51.736706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237057, 31.293514, 52.498280>,  <31.784554, 30.946375, 52.115307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237057, 31.293514, 52.498280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.054768, 31.547863, 52.249126>,  <31.945395, 31.700472, 52.099636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.054768, 31.547863, 52.249126>,  <32.237057, 31.293514, 52.498280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054768, 31.547863, 52.249126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146358, 0.636718, 0.757079,
		0.878006, 0.436184, -0.197103,
		-0.455725, 0.635872, -0.622882,
		31.918051, 31.738625, 52.062263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597485, 31.921610, 52.649193>,  <32.237057, 31.293514, 52.498280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597485, 31.921610, 52.649193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.266281, 32.039745, 52.458542>,  <32.067558, 32.110626, 52.344151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.266281, 32.039745, 52.458542>,  <32.597485, 31.921610, 52.649193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266281, 32.039745, 52.458542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129177, 0.726700, 0.674700,
		0.545629, 0.620228, -0.563565,
		-0.828011, 0.295337, -0.476628,
		32.017879, 32.128345, 52.315552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707436, 32.595886, 52.718136>,  <32.597485, 31.921610, 52.649193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707436, 32.595886, 52.718136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.317005, 32.566078, 52.636429>,  <32.082748, 32.548191, 52.587402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.317005, 32.566078, 52.636429>,  <32.707436, 32.595886, 52.718136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317005, 32.566078, 52.636429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164068, 0.868923, 0.466964,
		0.142695, 0.489305, -0.860359,
		-0.976074, -0.074524, -0.204271,
		32.024181, 32.543720, 52.575150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475590, 33.197376, 52.299698>,  <32.707436, 32.595886, 52.718136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475590, 33.197376, 52.299698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.141743, 33.067390, 52.477600>,  <31.941433, 32.989399, 52.584343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.141743, 33.067390, 52.477600>,  <32.475590, 33.197376, 52.299698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141743, 33.067390, 52.477600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235932, 0.940523, 0.244444,
		-0.497738, 0.099086, -0.861649,
		-0.834621, -0.324960, 0.444757,
		31.891356, 32.969902, 52.611027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879711, 33.722786, 52.130516>,  <32.475590, 33.197376, 52.299698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879711, 33.722786, 52.130516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.749767, 33.507534, 52.441612>,  <31.671801, 33.378384, 52.628269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.749767, 33.507534, 52.441612>,  <31.879711, 33.722786, 52.130516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749767, 33.507534, 52.441612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543617, 0.779167, 0.312056,
		-0.773917, -0.321419, -0.545657,
		-0.324857, -0.538134, 0.777740,
		31.652309, 33.346092, 52.674934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192194, 33.892242, 52.218349>,  <31.879711, 33.722786, 52.130516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192194, 33.892242, 52.218349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.354738, 33.756111, 52.557537>,  <31.452265, 33.674431, 52.761051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.354738, 33.756111, 52.557537>,  <31.192194, 33.892242, 52.218349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354738, 33.756111, 52.557537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314218, 0.819394, 0.479438,
		-0.857986, -0.461270, 0.226031,
		0.406359, -0.340328, 0.847968,
		31.476646, 33.654015, 52.811928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624743, 33.828396, 52.678368>,  <31.192194, 33.892242, 52.218349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624743, 33.828396, 52.678368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.939363, 33.834538, 52.925301>,  <31.128136, 33.838223, 53.073460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.939363, 33.834538, 52.925301>,  <30.624743, 33.828396, 52.678368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939363, 33.834538, 52.925301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517027, 0.563004, 0.644756,
		-0.337663, -0.826312, 0.450769,
		0.786554, 0.015349, 0.617331,
		31.175329, 33.839142, 53.110500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293217, 34.169300, 53.213627>,  <30.624743, 33.828396, 52.678368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293217, 34.169300, 53.213627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.665907, 34.108250, 53.345440>,  <30.889521, 34.071617, 53.424526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.665907, 34.108250, 53.345440>,  <30.293217, 34.169300, 53.213627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665907, 34.108250, 53.345440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227000, 0.463529, 0.856512,
		-0.283477, -0.872838, 0.397234,
		0.931725, -0.152629, 0.329534,
		30.945425, 34.062462, 53.444302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269407, 33.760529, 53.789162>,  <30.293217, 34.169300, 53.213627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269407, 33.760529, 53.789162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.571102, 34.023045, 53.781090>,  <30.752119, 34.180553, 53.776245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.571102, 34.023045, 53.781090>,  <30.269407, 33.760529, 53.789162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571102, 34.023045, 53.781090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399540, 0.483127, 0.779073,
		0.521055, -0.579538, 0.626607,
		0.754234, 0.656295, -0.020187,
		30.797373, 34.219933, 53.775036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.524967, 33.907780, 54.564995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655027, 34.218433, 54.349171>,  <30.733065, 34.404823, 54.219677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655027, 34.218433, 54.349171>,  <30.524967, 33.907780, 54.564995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655027, 34.218433, 54.349171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602147, 0.609976, 0.515120,
		0.729174, 0.157398, 0.665981,
		0.325153, 0.776631, -0.539555,
		30.752573, 34.451424, 54.187305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765951, 34.449780, 55.046803>,  <30.524967, 33.907780, 54.564995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765951, 34.449780, 55.046803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690874, 34.655209, 54.711899>,  <30.645828, 34.778465, 54.510956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690874, 34.655209, 54.711899>,  <30.765951, 34.449780, 55.046803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690874, 34.655209, 54.711899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476710, 0.697658, 0.534809,
		0.858789, 0.499512, 0.113880,
		-0.187694, 0.513576, -0.837264,
		30.634565, 34.809280, 54.460720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915087, 35.086025, 55.259624>,  <30.765951, 34.449780, 55.046803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915087, 35.086025, 55.259624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709013, 35.149990, 54.922813>,  <30.585369, 35.188370, 54.720726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709013, 35.149990, 54.922813>,  <30.915087, 35.086025, 55.259624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709013, 35.149990, 54.922813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425472, 0.805120, 0.413226,
		0.744015, 0.571147, -0.346747,
		-0.515186, 0.159915, -0.842028,
		30.554457, 35.197964, 54.670204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999346, 35.739346, 55.152470>,  <30.915087, 35.086025, 55.259624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999346, 35.739346, 55.152470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658709, 35.630154, 54.973465>,  <30.454327, 35.564636, 54.866062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658709, 35.630154, 54.973465>,  <30.999346, 35.739346, 55.152470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658709, 35.630154, 54.973465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473639, 0.766508, 0.433742,
		0.224617, 0.581332, -0.782049,
		-0.851595, -0.272983, -0.447512,
		30.403231, 35.548260, 54.839211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659006, 36.338181, 55.126251>,  <30.999346, 35.739346, 55.152470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659006, 36.338181, 55.126251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355427, 36.088417, 55.052383>,  <30.173279, 35.938557, 55.008064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355427, 36.088417, 55.052383>,  <30.659006, 36.338181, 55.126251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355427, 36.088417, 55.052383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606982, 0.575752, 0.547798,
		-0.235728, 0.527843, -0.815974,
		-0.758950, -0.624413, -0.184670,
		30.127741, 35.901093, 54.996983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085457, 36.793465, 55.183971>,  <30.659006, 36.338181, 55.126251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085457, 36.793465, 55.183971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951818, 36.416470, 55.187912>,  <29.871635, 36.190273, 55.190277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951818, 36.416470, 55.187912>,  <30.085457, 36.793465, 55.183971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951818, 36.416470, 55.187912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648392, 0.237404, 0.723345,
		-0.684081, 0.235283, -0.690417,
		-0.334098, -0.942487, 0.009848,
		29.851589, 36.133724, 55.190865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362019, 36.853748, 55.359993>,  <30.085457, 36.793465, 55.183971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362019, 36.853748, 55.359993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419443, 36.463741, 55.427788>,  <29.453897, 36.229736, 55.468464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419443, 36.463741, 55.427788>,  <29.362019, 36.853748, 55.359993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419443, 36.463741, 55.427788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642905, 0.038317, 0.764987,
		-0.752372, -0.218787, -0.621344,
		0.143561, -0.975020, 0.169488,
		29.462511, 36.171234, 55.478634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670788, 36.557571, 55.335423>,  <29.362019, 36.853748, 55.359993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670788, 36.557571, 55.335423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909185, 36.323643, 55.555523>,  <29.052223, 36.183285, 55.687584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909185, 36.323643, 55.555523>,  <28.670788, 36.557571, 55.335423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909185, 36.323643, 55.555523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698166, -0.038880, 0.714879,
		-0.396684, -0.810228, -0.431476,
		0.595991, -0.584823, 0.550251,
		29.087982, 36.148197, 55.720600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178122, 36.082428, 55.617168>,  <28.670788, 36.557571, 55.335423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178122, 36.082428, 55.617168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507191, 36.050602, 55.842339>,  <28.704632, 36.031506, 55.977440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507191, 36.050602, 55.842339>,  <28.178122, 36.082428, 55.617168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507191, 36.050602, 55.842339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559892, 0.058433, 0.826502,
		-0.098653, -0.995116, 0.003524,
		0.822671, -0.079564, 0.562922,
		28.753992, 36.026733, 56.011215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967907, 35.654335, 56.201633>,  <28.178122, 36.082428, 55.617168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967907, 35.654335, 56.201633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285170, 35.874531, 56.305836>,  <28.475527, 36.006649, 56.368359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285170, 35.874531, 56.305836>,  <27.967907, 35.654335, 56.201633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285170, 35.874531, 56.305836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433938, 0.210700, 0.875959,
		0.427319, -0.807815, 0.405997,
		0.793156, 0.550491, 0.260505,
		28.523117, 36.039677, 56.383987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953079, 35.621685, 56.952045>,  <27.967907, 35.654335, 56.201633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953079, 35.621685, 56.952045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182241, 35.938591, 56.868053>,  <28.319738, 36.128735, 56.817657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182241, 35.938591, 56.868053>,  <27.953079, 35.621685, 56.952045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182241, 35.938591, 56.868053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267007, 0.422620, 0.866083,
		0.774911, -0.440118, 0.453662,
		0.572905, 0.792268, -0.209979,
		28.354113, 36.176270, 56.805061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247902, 35.673447, 57.623932>,  <27.953079, 35.621685, 56.952045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247902, 35.673447, 57.623932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292633, 36.018272, 57.426212>,  <28.319471, 36.225170, 57.307579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292633, 36.018272, 57.426212>,  <28.247902, 35.673447, 57.623932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292633, 36.018272, 57.426212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024550, 0.499667, 0.865870,
		0.993424, -0.084694, 0.077040,
		0.111829, 0.862067, -0.494302,
		28.326181, 36.276894, 57.277924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724501, 36.125885, 58.030308>,  <28.247902, 35.673447, 57.623932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724501, 36.125885, 58.030308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494230, 36.380657, 57.825207>,  <28.356068, 36.533520, 57.702145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494230, 36.380657, 57.825207>,  <28.724501, 36.125885, 58.030308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494230, 36.380657, 57.825207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123442, 0.552203, 0.824520,
		0.808307, 0.537952, -0.239266,
		-0.575676, 0.636930, -0.512755,
		28.321527, 36.571735, 57.671379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733538, 36.678085, 58.366066>,  <28.724501, 36.125885, 58.030308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733538, 36.678085, 58.366066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432121, 36.789307, 58.127785>,  <28.251272, 36.856041, 57.984818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432121, 36.789307, 58.127785>,  <28.733538, 36.678085, 58.366066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432121, 36.789307, 58.127785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168146, 0.794485, 0.583541,
		0.635533, 0.539888, -0.551923,
		-0.753541, 0.278056, -0.595702,
		28.206059, 36.872723, 57.949074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690626, 37.307388, 58.546394>,  <28.733538, 36.678085, 58.366066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690626, 37.307388, 58.546394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337769, 37.265343, 58.362755>,  <28.126055, 37.240116, 58.252571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337769, 37.265343, 58.362755>,  <28.690626, 37.307388, 58.546394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337769, 37.265343, 58.362755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357383, 0.784281, 0.507129,
		0.306760, 0.611436, -0.729414,
		-0.882142, -0.105113, -0.459103,
		28.073126, 37.233810, 58.225025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464046, 37.949749, 58.265381>,  <28.690626, 37.307388, 58.546394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464046, 37.949749, 58.265381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131521, 37.735920, 58.326244>,  <27.932007, 37.607624, 58.362762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131521, 37.735920, 58.326244>,  <28.464046, 37.949749, 58.265381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131521, 37.735920, 58.326244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451815, 0.809394, 0.375158,
		-0.323703, 0.243128, -0.914388,
		-0.831312, -0.534574, 0.152154,
		27.882128, 37.575546, 58.371891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891417, 38.428219, 58.002945>,  <28.464046, 37.949749, 58.265381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891417, 38.428219, 58.002945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750431, 38.150978, 58.254459>,  <27.665840, 37.984634, 58.405369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750431, 38.150978, 58.254459>,  <27.891417, 38.428219, 58.002945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750431, 38.150978, 58.254459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589993, 0.686130, 0.425597,
		-0.726414, -0.220972, -0.650764,
		-0.352464, -0.693106, 0.628786,
		27.644691, 37.943047, 58.443096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282507, 38.707386, 58.108261>,  <27.891417, 38.428219, 58.002945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282507, 38.707386, 58.108261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307652, 38.453094, 58.416000>,  <27.322739, 38.300522, 58.600643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307652, 38.453094, 58.416000>,  <27.282507, 38.707386, 58.108261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307652, 38.453094, 58.416000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511953, 0.641186, 0.571651,
		-0.856710, -0.429806, -0.285157,
		0.062861, -0.635726, 0.769351,
		27.326509, 38.262375, 58.646805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706200, 38.787018, 58.402836>,  <27.282507, 38.707386, 58.108261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706200, 38.787018, 58.402836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898176, 38.619591, 58.711243>,  <27.013363, 38.519135, 58.896286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898176, 38.619591, 58.711243>,  <26.706200, 38.787018, 58.402836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898176, 38.619591, 58.711243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376858, 0.695268, 0.612030,
		-0.792234, -0.584300, 0.175949,
		0.479940, -0.418563, 0.771013,
		27.042158, 38.494022, 58.942547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203709, 38.764782, 58.911736>,  <26.706200, 38.787018, 58.402836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203709, 38.764782, 58.911736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559269, 38.754498, 59.094685>,  <26.772606, 38.748325, 59.204456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559269, 38.754498, 59.094685>,  <26.203709, 38.764782, 58.911736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559269, 38.754498, 59.094685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343834, 0.622305, 0.703217,
		-0.302708, -0.782352, 0.544328,
		0.888902, -0.025711, 0.457376,
		26.825939, 38.746784, 59.231899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086229, 38.674995, 59.605434>,  <26.203709, 38.764782, 58.911736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086229, 38.674995, 59.605434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450083, 38.840115, 59.586830>,  <26.668396, 38.939186, 59.575668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450083, 38.840115, 59.586830>,  <26.086229, 38.674995, 59.605434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450083, 38.840115, 59.586830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285085, 0.701780, 0.652864,
		0.302142, -0.580608, 0.756045,
		0.909636, 0.412795, -0.046515,
		26.722973, 38.963955, 59.572876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186491, 38.841534, 60.283226>,  <26.086229, 38.674995, 59.605434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186491, 38.841534, 60.283226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457920, 39.061981, 60.088985>,  <26.620777, 39.194248, 59.972443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457920, 39.061981, 60.088985>,  <26.186491, 38.841534, 60.283226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457920, 39.061981, 60.088985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068548, 0.705727, 0.705160,
		0.731327, -0.445216, 0.516666,
		0.678574, 0.551119, -0.485599,
		26.661491, 39.227318, 59.943306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655455, 38.869690, 60.809727>,  <26.186491, 38.841534, 60.283226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655455, 38.869690, 60.809727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643114, 39.169968, 60.545757>,  <26.635710, 39.350136, 60.387375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643114, 39.169968, 60.545757>,  <26.655455, 38.869690, 60.809727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643114, 39.169968, 60.545757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267183, 0.630021, 0.729168,
		0.963152, 0.198818, 0.181136,
		-0.030853, 0.750696, -0.659927,
		26.633858, 39.395176, 60.347778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023342, 39.463272, 61.165989>,  <26.655455, 38.869690, 60.809727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023342, 39.463272, 61.165989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791365, 39.585732, 60.864014>,  <26.652178, 39.659206, 60.682827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791365, 39.585732, 60.864014>,  <27.023342, 39.463272, 61.165989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791365, 39.585732, 60.864014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435802, 0.666365, 0.605008,
		0.688288, 0.679877, -0.253036,
		-0.579945, 0.306146, -0.754942,
		26.617380, 39.677574, 60.637531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689764, 39.215195, 60.998669>,  <27.023342, 39.463272, 61.165989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689764, 39.215195, 60.998669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020647, 39.227737, 61.223076>,  <28.219177, 39.235264, 61.357719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020647, 39.227737, 61.223076>,  <27.689764, 39.215195, 60.998669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020647, 39.227737, 61.223076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556816, -0.179720, -0.810961,
		0.075394, 0.983218, -0.166128,
		0.827207, 0.031361, 0.561021,
		28.268808, 39.237144, 61.391380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274851, 39.431309, 60.440380>,  <27.689764, 39.215195, 60.998669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274851, 39.431309, 60.440380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439011, 39.285976, 60.774940>,  <28.537506, 39.198776, 60.975677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439011, 39.285976, 60.774940>,  <28.274851, 39.431309, 60.440380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439011, 39.285976, 60.774940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660636, -0.513783, -0.547345,
		0.628594, 0.777186, 0.029171,
		0.410401, -0.363329, 0.836399,
		28.562132, 39.176979, 61.025860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987110, 39.479919, 60.383793>,  <28.274851, 39.431309, 60.440380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987110, 39.479919, 60.383793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975658, 39.205330, 60.674431>,  <28.968788, 39.040577, 60.848812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975658, 39.205330, 60.674431>,  <28.987110, 39.479919, 60.383793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975658, 39.205330, 60.674431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673458, -0.550399, -0.493473,
		0.738670, 0.475202, 0.478068,
		-0.028629, -0.686473, 0.726592,
		28.967070, 38.999390, 60.892410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647139, 39.240051, 60.378326>,  <28.987110, 39.479919, 60.383793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647139, 39.240051, 60.378326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426624, 38.954418, 60.550915>,  <29.294315, 38.783039, 60.654469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426624, 38.954418, 60.550915>,  <29.647139, 39.240051, 60.378326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426624, 38.954418, 60.550915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543893, -0.699755, -0.463167,
		0.632664, -0.020664, 0.774151,
		-0.551287, -0.714084, 0.431471,
		29.261238, 38.740192, 60.680355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198486, 38.828125, 60.484612>,  <29.647139, 39.240051, 60.378326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198486, 38.828125, 60.484612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857040, 38.621246, 60.509438>,  <29.652172, 38.497120, 60.524334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857040, 38.621246, 60.509438>,  <30.198486, 38.828125, 60.484612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857040, 38.621246, 60.509438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346960, -0.653392, -0.672828,
		0.388537, -0.552801, 0.737191,
		-0.853614, -0.517195, 0.062067,
		29.600956, 38.466087, 60.528057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376505, 38.184086, 60.532890>,  <30.198486, 38.828125, 60.484612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376505, 38.184086, 60.532890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005941, 38.181503, 60.382301>,  <29.783604, 38.179955, 60.291950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005941, 38.181503, 60.382301>,  <30.376505, 38.184086, 60.532890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005941, 38.181503, 60.382301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329860, -0.496035, -0.803207,
		-0.181558, -0.868279, 0.461659,
		-0.926407, -0.006454, -0.376469,
		29.728020, 38.179565, 60.269360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390419, 37.538387, 60.351257>,  <30.376505, 38.184086, 60.532890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390419, 37.538387, 60.351257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072292, 37.674450, 60.150551>,  <29.881416, 37.756088, 60.030128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072292, 37.674450, 60.150551>,  <30.390419, 37.538387, 60.351257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072292, 37.674450, 60.150551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316186, -0.473438, -0.822121,
		-0.517210, -0.812493, 0.268976,
		-0.795312, 0.340163, -0.501766,
		29.833698, 37.776497, 60.000023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066412, 36.969769, 60.089867>,  <30.390419, 37.538387, 60.351257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066412, 36.969769, 60.089867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965563, 37.268524, 59.843746>,  <29.905054, 37.447777, 59.696075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965563, 37.268524, 59.843746>,  <30.066412, 36.969769, 60.089867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965563, 37.268524, 59.843746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340358, -0.526774, -0.778888,
		-0.905865, -0.405797, -0.121397,
		-0.252122, 0.746885, -0.615303,
		29.889927, 37.492588, 59.659157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816366, 36.606106, 59.519264>,  <30.066412, 36.969769, 60.089867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816366, 36.606106, 59.519264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.873236, 36.976494, 59.379337>,  <29.907358, 37.198727, 59.295380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.873236, 36.976494, 59.379337>,  <29.816366, 36.606106, 59.519264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873236, 36.976494, 59.379337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445089, -0.375468, -0.812970,
		-0.884128, -0.040118, -0.465519,
		0.142173, 0.925967, -0.349818,
		29.915888, 37.254284, 59.274391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488615, 36.683197, 58.841251>,  <29.816366, 36.606106, 59.519264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488615, 36.683197, 58.841251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771358, 36.966007, 58.849854>,  <29.941006, 37.135693, 58.855015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771358, 36.966007, 58.849854>,  <29.488615, 36.683197, 58.841251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771358, 36.966007, 58.849854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389656, -0.363829, -0.846048,
		-0.590352, 0.606419, -0.532673,
		0.706861, 0.707026, 0.021508,
		29.983418, 37.178116, 58.856304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473875, 36.962139, 58.238274>,  <29.488615, 36.683197, 58.841251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473875, 36.962139, 58.238274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832798, 37.071865, 58.376602>,  <30.048151, 37.137699, 58.459599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832798, 37.071865, 58.376602>,  <29.473875, 36.962139, 58.238274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832798, 37.071865, 58.376602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434501, -0.410838, -0.801511,
		-0.077784, 0.869463, -0.487836,
		0.897306, 0.274310, 0.345826,
		30.101990, 37.154160, 58.480350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.877302, 36.909058, 57.620670>,  <29.473875, 36.962139, 58.238274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.877302, 36.909058, 57.620670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161312, 36.962929, 57.897141>,  <30.331718, 36.995251, 58.063023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161312, 36.962929, 57.897141>,  <29.877302, 36.909058, 57.620670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161312, 36.962929, 57.897141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588465, -0.652564, -0.477356,
		0.386747, 0.745668, -0.542592,
		0.710025, 0.134681, 0.691177,
		30.374319, 37.003334, 58.104492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440590, 37.115803, 57.286060>,  <29.877302, 36.909058, 57.620670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440590, 37.115803, 57.286060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528605, 36.911835, 57.618702>,  <30.581413, 36.789452, 57.818287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528605, 36.911835, 57.618702>,  <30.440590, 37.115803, 57.286060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528605, 36.911835, 57.618702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681528, -0.529570, -0.505050,
		0.697929, 0.677889, 0.231004,
		0.220035, -0.509924, 0.831602,
		30.594614, 36.758858, 57.868183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131065, 37.067528, 57.316925>,  <30.440590, 37.115803, 57.286060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131065, 37.067528, 57.316925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026461, 36.780659, 57.575310>,  <30.963697, 36.608536, 57.730343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026461, 36.780659, 57.575310>,  <31.131065, 37.067528, 57.316925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026461, 36.780659, 57.575310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659237, -0.621550, -0.423181,
		0.704994, 0.315177, 0.635332,
		-0.261513, -0.717174, 0.645966,
		30.948008, 36.565506, 57.769100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751036, 36.708950, 57.471729>,  <31.131065, 37.067528, 57.316925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751036, 36.708950, 57.471729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465281, 36.450653, 57.579556>,  <31.293827, 36.295673, 57.644249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465281, 36.450653, 57.579556>,  <31.751036, 36.708950, 57.471729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465281, 36.450653, 57.579556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503921, -0.742039, -0.442088,
		0.485501, -0.179985, 0.855508,
		-0.714389, -0.645743, 0.269563,
		31.250963, 36.256931, 57.660423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097427, 36.144478, 57.620213>,  <31.751036, 36.708950, 57.471729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097427, 36.144478, 57.620213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730923, 36.009094, 57.534496>,  <31.511021, 35.927864, 57.483067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730923, 36.009094, 57.534496>,  <32.097427, 36.144478, 57.620213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730923, 36.009094, 57.534496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400540, -0.765576, -0.503449,
		0.006345, -0.547119, 0.837031,
		-0.916257, -0.338459, -0.214286,
		31.456045, 35.907558, 57.470211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094818, 35.382942, 57.710701>,  <32.097427, 36.144478, 57.620213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094818, 35.382942, 57.710701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793207, 35.492031, 57.471684>,  <31.612240, 35.557484, 57.328274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793207, 35.492031, 57.471684>,  <32.094818, 35.382942, 57.710701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793207, 35.492031, 57.471684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303514, -0.662110, -0.685193,
		-0.582508, -0.698020, 0.416477,
		-0.754032, 0.272724, -0.597543,
		31.566998, 35.573849, 57.292419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733009, 34.757900, 57.527466>,  <32.094818, 35.382942, 57.710701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733009, 34.757900, 57.527466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632202, 35.004883, 57.229408>,  <31.571718, 35.153072, 57.050575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632202, 35.004883, 57.229408>,  <31.733009, 34.757900, 57.527466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632202, 35.004883, 57.229408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253782, -0.700877, -0.666608,
		-0.933853, -0.357100, 0.019935,
		-0.252018, 0.617455, -0.745142,
		31.556597, 35.190121, 57.005867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459377, 34.337021, 57.000042>,  <31.733009, 34.757900, 57.527466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459377, 34.337021, 57.000042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572319, 34.675114, 56.818554>,  <31.640083, 34.877968, 56.709660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572319, 34.675114, 56.818554>,  <31.459377, 34.337021, 57.000042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572319, 34.675114, 56.818554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509371, -0.532881, -0.675707,
		-0.812907, -0.040323, -0.580997,
		0.282355, 0.845229, -0.453721,
		31.657026, 34.928684, 56.682438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230068, 34.287704, 56.180759>,  <31.459377, 34.337021, 57.000042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230068, 34.287704, 56.180759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526430, 34.556068, 56.193073>,  <31.704247, 34.717087, 56.200462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526430, 34.556068, 56.193073>,  <31.230068, 34.287704, 56.180759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526430, 34.556068, 56.193073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467455, -0.482233, -0.740903,
		-0.482233, 0.563325, -0.670907,
		0.740903, 0.670907, 0.030780,
		31.748701, 34.757339, 56.202309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.053364, 35.180595, 53.591080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.229393, 35.148125, 53.233368>,  <47.335011, 35.128643, 53.018742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.229393, 35.148125, 53.233368>,  <47.053364, 35.180595, 53.591080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.229393, 35.148125, 53.233368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882927, 0.142356, -0.447410,
		0.163625, 0.986481, -0.009025,
		0.440077, -0.081176, -0.894284,
		47.361416, 35.123772, 52.965084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.812054, 35.810112, 53.156975>,  <47.053364, 35.180595, 53.591080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.812054, 35.810112, 53.156975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.940300, 35.527710, 52.904385>,  <47.017246, 35.358269, 52.752831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.940300, 35.527710, 52.904385>,  <46.812054, 35.810112, 53.156975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.940300, 35.527710, 52.904385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832150, 0.108515, -0.543830,
		0.452472, 0.699841, -0.552713,
		0.320617, -0.706008, -0.631473,
		47.036484, 35.315907, 52.714943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.491135, 35.944294, 52.493797>,  <46.812054, 35.810112, 53.156975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.491135, 35.944294, 52.493797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.622532, 35.569275, 52.448013>,  <46.701370, 35.344265, 52.420544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.622532, 35.569275, 52.448013>,  <46.491135, 35.944294, 52.493797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.622532, 35.569275, 52.448013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819330, -0.222572, -0.528356,
		0.469882, 0.267340, -0.841273,
		0.328495, -0.937545, -0.114457,
		46.721081, 35.288010, 52.413677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.315830, 35.795219, 51.814045>,  <46.491135, 35.944294, 52.493797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.315830, 35.795219, 51.814045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.375557, 35.435421, 51.978294>,  <46.411392, 35.219543, 52.076843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.375557, 35.435421, 51.978294>,  <46.315830, 35.795219, 51.814045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.375557, 35.435421, 51.978294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753461, -0.372429, -0.541842,
		0.640313, -0.228484, -0.733345,
		0.149317, -0.899495, 0.410625,
		46.420353, 35.165573, 52.101482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.169926, 35.317883, 51.256298>,  <46.315830, 35.795219, 51.814045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.169926, 35.317883, 51.256298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.142811, 35.108585, 51.596088>,  <46.126541, 34.983006, 51.799965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.142811, 35.108585, 51.596088>,  <46.169926, 35.317883, 51.256298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.142811, 35.108585, 51.596088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793175, -0.488225, -0.364020,
		0.605210, -0.698461, -0.381932,
		-0.067785, -0.523247, 0.849480,
		46.122475, 34.951611, 51.850933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.221195, 34.641640, 51.100254>,  <46.169926, 35.317883, 51.256298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.221195, 34.641640, 51.100254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.021755, 34.691418, 51.443398>,  <45.902092, 34.721283, 51.649284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.021755, 34.691418, 51.443398>,  <46.221195, 34.641640, 51.100254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.021755, 34.691418, 51.443398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802232, -0.441135, -0.402274,
		0.328369, -0.888771, 0.319782,
		-0.498597, 0.124445, 0.857855,
		45.872177, 34.728752, 51.700752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.874542, 34.033546, 51.137409>,  <46.221195, 34.641640, 51.100254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.874542, 34.033546, 51.137409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.680443, 34.254089, 51.408859>,  <45.563984, 34.386417, 51.571728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.680443, 34.254089, 51.408859>,  <45.874542, 34.033546, 51.137409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.680443, 34.254089, 51.408859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855874, -0.458329, -0.239613,
		0.178920, -0.697090, 0.694300,
		-0.485250, 0.551362, 0.678625,
		45.534866, 34.419498, 51.612446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.428436, 33.587543, 51.384853>,  <45.874542, 34.033546, 51.137409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.428436, 33.587543, 51.384853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.266151, 33.933552, 51.502937>,  <45.168781, 34.141155, 51.573788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.266151, 33.933552, 51.502937>,  <45.428436, 33.587543, 51.384853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.266151, 33.933552, 51.502937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860148, -0.252112, -0.443378,
		-0.309105, -0.433802, 0.846327,
		-0.405708, 0.865018, 0.295205,
		45.144440, 34.193058, 51.591499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795147, 33.443344, 51.647381>,  <45.428436, 33.587543, 51.384853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795147, 33.443344, 51.647381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.738087, 33.833382, 51.579437>,  <44.703850, 34.067402, 51.538673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.738087, 33.833382, 51.579437>,  <44.795147, 33.443344, 51.647381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.738087, 33.833382, 51.579437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898081, -0.199651, -0.391907,
		-0.416056, 0.096639, 0.904189,
		-0.142648, 0.975090, -0.169856,
		44.695293, 34.125908, 51.528481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041565, 33.591091, 51.869335>,  <44.795147, 33.443344, 51.647381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041565, 33.591091, 51.869335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.145412, 33.883541, 51.616970>,  <44.207722, 34.059013, 51.465549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.145412, 33.883541, 51.616970>,  <44.041565, 33.591091, 51.869335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145412, 33.883541, 51.616970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845955, -0.142936, -0.513740,
		-0.465790, 0.667100, 0.581392,
		0.259614, 0.731127, -0.630915,
		44.223297, 34.102879, 51.427696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496311, 33.917019, 51.899704>,  <44.041565, 33.591091, 51.869335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496311, 33.917019, 51.899704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.680405, 34.054981, 51.572479>,  <43.790859, 34.137760, 51.376144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.680405, 34.054981, 51.572479>,  <43.496311, 33.917019, 51.899704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680405, 34.054981, 51.572479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870001, -0.008365, -0.492979,
		-0.176875, 0.938600, 0.296220,
		0.460232, 0.344907, -0.818062,
		43.818474, 34.158455, 51.327061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933826, 34.178940, 51.514267>,  <43.496311, 33.917019, 51.899704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933826, 34.178940, 51.514267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.241306, 34.133541, 51.262486>,  <43.425797, 34.106304, 51.111416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.241306, 34.133541, 51.262486>,  <42.933826, 34.178940, 51.514267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.241306, 34.133541, 51.262486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636871, -0.044924, -0.769661,
		0.059073, 0.992523, -0.106813,
		0.768704, -0.113492, -0.629455,
		43.471916, 34.099495, 51.073650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916912, 34.709274, 51.166145>,  <42.933826, 34.178940, 51.514267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916912, 34.709274, 51.166145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.086014, 34.412811, 50.957546>,  <43.187477, 34.234932, 50.832386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.086014, 34.412811, 50.957546>,  <42.916912, 34.709274, 51.166145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086014, 34.412811, 50.957546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644027, 0.159143, -0.748267,
		0.637578, 0.652193, -0.410047,
		0.422758, -0.741159, -0.521496,
		43.212841, 34.190464, 50.801098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979176, 35.092449, 50.498493>,  <42.916912, 34.709274, 51.166145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979176, 35.092449, 50.498493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.016411, 34.696724, 50.453598>,  <43.038754, 34.459290, 50.426662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.016411, 34.696724, 50.453598>,  <42.979176, 35.092449, 50.498493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016411, 34.696724, 50.453598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786921, -0.004041, -0.617040,
		0.609991, 0.145764, -0.778886,
		0.093090, -0.989311, -0.112239,
		43.044338, 34.399929, 50.419926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977634, 34.954704, 49.733131>,  <42.979176, 35.092449, 50.498493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977634, 34.954704, 49.733131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.883591, 34.601887, 49.896454>,  <42.827164, 34.390194, 49.994450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.883591, 34.601887, 49.896454>,  <42.977634, 34.954704, 49.733131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883591, 34.601887, 49.896454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886889, 0.022805, -0.461420,
		0.397682, -0.470610, -0.787639,
		-0.235111, -0.882046, 0.408310,
		42.813057, 34.337273, 50.018948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859791, 34.421619, 49.198101>,  <42.977634, 34.954704, 49.733131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859791, 34.421619, 49.198101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.659611, 34.264374, 49.506649>,  <42.539501, 34.170029, 49.691776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.659611, 34.264374, 49.506649>,  <42.859791, 34.421619, 49.198101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659611, 34.264374, 49.506649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831534, -0.029806, -0.554673,
		0.241041, -0.919007, -0.311970,
		-0.500450, -0.393113, 0.771370,
		42.509476, 34.146439, 49.738060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441380, 33.767868, 48.971962>,  <42.859791, 34.421619, 49.198101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441380, 33.767868, 48.971962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.255604, 33.922665, 49.290592>,  <42.144138, 34.015541, 49.481770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.255604, 33.922665, 49.290592>,  <42.441380, 33.767868, 48.971962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255604, 33.922665, 49.290592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859997, 0.017664, -0.509993,
		-0.211433, -0.921915, 0.324606,
		-0.464436, 0.386989, 0.796579,
		42.116272, 34.038761, 49.529568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759342, 33.370655, 49.016457>,  <42.441380, 33.767868, 48.971962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759342, 33.370655, 49.016457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.683933, 33.690990, 49.243828>,  <41.638687, 33.883194, 49.380249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.683933, 33.690990, 49.243828>,  <41.759342, 33.370655, 49.016457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683933, 33.690990, 49.243828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902204, 0.087399, -0.422362,
		-0.387925, -0.592463, 0.706046,
		-0.188526, 0.800843, 0.568427,
		41.627377, 33.931244, 49.414356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093544, 33.191521, 49.329521>,  <41.759342, 33.370655, 49.016457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093544, 33.191521, 49.329521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.133190, 33.582062, 49.406376>,  <41.156979, 33.816387, 49.452488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.133190, 33.582062, 49.406376>,  <41.093544, 33.191521, 49.329521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133190, 33.582062, 49.406376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971153, 0.136999, -0.195174,
		-0.216880, -0.167251, 0.961764,
		0.099118, 0.976349, 0.192139,
		41.162926, 33.874966, 49.464016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571636, 33.198780, 49.837227>,  <41.093544, 33.191521, 49.329521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571636, 33.198780, 49.837227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.653336, 33.520111, 49.613464>,  <40.702354, 33.712910, 49.479206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.653336, 33.520111, 49.613464>,  <40.571636, 33.198780, 49.837227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653336, 33.520111, 49.613464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973739, 0.108014, -0.200411,
		-0.100573, 0.585654, 0.804298,
		0.204247, 0.803332, -0.559411,
		40.714611, 33.761112, 49.445641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102875, 33.823280, 50.056427>,  <40.571636, 33.198780, 49.837227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102875, 33.823280, 50.056427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.215607, 33.791134, 49.673988>,  <40.283245, 33.771847, 49.444527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.215607, 33.791134, 49.673988>,  <40.102875, 33.823280, 50.056427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215607, 33.791134, 49.673988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959465, -0.023625, -0.280835,
		-0.000019, 0.996486, -0.083765,
		0.281827, -0.080364, -0.956094,
		40.300156, 33.767025, 49.387161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755463, 34.312485, 49.579468>,  <40.102875, 33.823280, 50.056427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755463, 34.312485, 49.579468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.878162, 33.990318, 49.376602>,  <39.951782, 33.797020, 49.254883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.878162, 33.990318, 49.376602>,  <39.755463, 34.312485, 49.579468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878162, 33.990318, 49.376602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892017, -0.057423, -0.448339,
		0.331975, 0.589926, -0.736057,
		0.306753, -0.805413, -0.507161,
		39.970188, 33.748695, 49.224453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666714, 34.312191, 48.794930>,  <39.755463, 34.312485, 49.579468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666714, 34.312191, 48.794930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.633587, 33.932182, 48.915329>,  <39.613712, 33.704178, 48.987568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.633587, 33.932182, 48.915329>,  <39.666714, 34.312191, 48.794930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633587, 33.932182, 48.915329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865106, -0.081400, -0.494941,
		0.494706, -0.301384, -0.815128,
		-0.082815, -0.950022, 0.300998,
		39.608742, 33.647175, 49.005627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947853, 33.938950, 48.473240>,  <39.666714, 34.312191, 48.794930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947853, 33.938950, 48.473240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.081905, 33.606899, 48.651489>,  <39.162338, 33.407669, 48.758438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.081905, 33.606899, 48.651489>,  <38.947853, 33.938950, 48.473240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081905, 33.606899, 48.651489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884311, -0.440337, -0.155233,
		0.325089, -0.342049, -0.881657,
		0.335129, -0.830124, 0.445626,
		39.182446, 33.357861, 48.785175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300972, 34.096943, 48.033409>,  <38.947853, 33.938950, 48.473240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300972, 34.096943, 48.033409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.398327, 33.775333, 47.816406>,  <38.456738, 33.582367, 47.686203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.398327, 33.775333, 47.816406>,  <38.300972, 34.096943, 48.033409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398327, 33.775333, 47.816406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960873, -0.123608, -0.247881,
		0.132244, 0.581611, -0.802646,
		0.243384, -0.804021, -0.542507,
		38.471340, 33.534126, 47.653652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979568, 34.129784, 47.330910>,  <38.300972, 34.096943, 48.033409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979568, 34.129784, 47.330910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072311, 33.743382, 47.376637>,  <38.127956, 33.511539, 47.404072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072311, 33.743382, 47.376637>,  <37.979568, 34.129784, 47.330910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072311, 33.743382, 47.376637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905675, -0.257255, -0.337006,
		0.354961, -0.025402, -0.934536,
		0.231853, -0.966010, 0.114322,
		38.141869, 33.453579, 47.410934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594685, 33.853645, 46.790829>,  <37.979568, 34.129784, 47.330910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594685, 33.853645, 46.790829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.713108, 33.535187, 47.001923>,  <37.784161, 33.344112, 47.128578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.713108, 33.535187, 47.001923>,  <37.594685, 33.853645, 46.790829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713108, 33.535187, 47.001923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889109, -0.431603, -0.152331,
		0.349050, -0.424117, -0.835637,
		0.296057, -0.796143, 0.527737,
		37.801926, 33.296345, 47.160244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335014, 33.366943, 46.392334>,  <37.594685, 33.853645, 46.790829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335014, 33.366943, 46.392334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.363308, 33.214844, 46.761204>,  <37.380283, 33.123585, 46.982525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.363308, 33.214844, 46.761204>,  <37.335014, 33.366943, 46.392334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363308, 33.214844, 46.761204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936388, -0.343918, -0.069987,
		0.343765, -0.858562, -0.380391,
		0.070735, -0.380252, 0.922174,
		37.384529, 33.100769, 47.037857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235203, 32.641636, 46.231422>,  <37.335014, 33.366943, 46.392334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235203, 32.641636, 46.231422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.167458, 32.714516, 46.618851>,  <37.126812, 32.758244, 46.851307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.167458, 32.714516, 46.618851>,  <37.235203, 32.641636, 46.231422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167458, 32.714516, 46.618851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767556, -0.640836, -0.013667,
		0.618202, -0.745744, 0.248378,
		-0.169362, 0.182196, 0.968567,
		37.116650, 32.769173, 46.909420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093201, 31.970655, 46.460304>,  <37.235203, 32.641636, 46.231422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093201, 31.970655, 46.460304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.948853, 32.228497, 46.729900>,  <36.862244, 32.383202, 46.891659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.948853, 32.228497, 46.729900>,  <37.093201, 31.970655, 46.460304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948853, 32.228497, 46.729900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791338, -0.594067, 0.144459,
		0.493513, -0.481222, 0.724479,
		-0.360872, 0.644601, 0.673989,
		36.840591, 32.421875, 46.932098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879791, 31.611565, 47.058853>,  <37.093201, 31.970655, 46.460304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879791, 31.611565, 47.058853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.660988, 31.945606, 47.082138>,  <36.529705, 32.146030, 47.096107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.660988, 31.945606, 47.082138>,  <36.879791, 31.611565, 47.058853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660988, 31.945606, 47.082138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802889, -0.543045, 0.245908,
		0.236971, 0.087775, 0.967543,
		-0.547004, 0.835103, 0.058213,
		36.496887, 32.196136, 47.099602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476154, 31.517130, 47.641140>,  <36.879791, 31.611565, 47.058853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476154, 31.517130, 47.641140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.300312, 31.797445, 47.416412>,  <36.194805, 31.965635, 47.281574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.300312, 31.797445, 47.416412>,  <36.476154, 31.517130, 47.641140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300312, 31.797445, 47.416412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888405, -0.431334, 0.157124,
		-0.132221, 0.568195, 0.812202,
		-0.439608, 0.700789, -0.561818,
		36.168430, 32.007683, 47.247868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937984, 31.650421, 47.978992>,  <36.476154, 31.517130, 47.641140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937984, 31.650421, 47.978992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.848270, 31.814707, 47.625492>,  <35.794441, 31.913279, 47.413391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.848270, 31.814707, 47.625492>,  <35.937984, 31.650421, 47.978992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848270, 31.814707, 47.625492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926459, -0.371146, 0.062640,
		-0.302272, 0.832806, 0.463751,
		-0.224286, 0.410712, -0.883748,
		35.780983, 31.937920, 47.360367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304749, 31.959440, 48.061142>,  <35.937984, 31.650421, 47.978992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304749, 31.959440, 48.061142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.346924, 31.935266, 47.664108>,  <35.372231, 31.920763, 47.425888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.346924, 31.935266, 47.664108>,  <35.304749, 31.959440, 48.061142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346924, 31.935266, 47.664108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953878, -0.288268, -0.083777,
		-0.281068, 0.955641, -0.088042,
		0.105440, -0.060435, -0.992588,
		35.378555, 31.917135, 47.366333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662342, 32.278545, 47.788765>,  <35.304749, 31.959440, 48.061142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662342, 32.278545, 47.788765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.817341, 32.043392, 47.504726>,  <34.910339, 31.902300, 47.334301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.817341, 32.043392, 47.504726>,  <34.662342, 32.278545, 47.788765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817341, 32.043392, 47.504726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921515, -0.225605, -0.316088,
		0.025622, 0.776849, -0.629165,
		0.387496, -0.587884, -0.710098,
		34.933590, 31.867027, 47.291698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.704645, 32.326923, 52.500076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.090466, 32.432137, 52.491589>,  <31.321959, 32.495266, 52.486496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.090466, 32.432137, 52.491589>,  <30.704645, 32.326923, 52.500076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090466, 32.432137, 52.491589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160022, -0.646944, -0.745557,
		-0.209838, 0.715733, -0.666104,
		0.964552, 0.263038, -0.021220,
		31.379831, 32.511047, 52.485222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875156, 32.410427, 51.832108>,  <30.704645, 32.326923, 52.500076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875156, 32.410427, 51.832108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.240564, 32.332314, 51.974850>,  <31.459808, 32.285446, 52.060497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.240564, 32.332314, 51.974850>,  <30.875156, 32.410427, 51.832108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240564, 32.332314, 51.974850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175000, -0.603262, -0.778107,
		0.367229, 0.773265, -0.516917,
		0.913519, -0.195283, 0.356857,
		31.514620, 32.273727, 52.081905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274755, 32.624939, 51.320740>,  <30.875156, 32.410427, 51.832108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274755, 32.624939, 51.320740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.491133, 32.368492, 51.538494>,  <31.620958, 32.214626, 51.669147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.491133, 32.368492, 51.538494>,  <31.274755, 32.624939, 51.320740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491133, 32.368492, 51.538494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291495, -0.464233, -0.836372,
		0.788932, 0.611114, -0.064241,
		0.540941, -0.641114, 0.544385,
		31.653416, 32.176159, 51.701809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847332, 32.453117, 50.925793>,  <31.274755, 32.624939, 51.320740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847332, 32.453117, 50.925793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.869967, 32.183064, 51.220001>,  <31.883547, 32.021030, 51.396526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.869967, 32.183064, 51.220001>,  <31.847332, 32.453117, 50.925793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869967, 32.183064, 51.220001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510300, -0.613648, -0.602520,
		0.858133, 0.409433, 0.309795,
		0.056587, -0.675131, 0.735525,
		31.886942, 31.980524, 51.440659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530743, 32.256699, 50.974537>,  <31.847332, 32.453117, 50.925793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530743, 32.256699, 50.974537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.278278, 31.963631, 51.076378>,  <32.126801, 31.787788, 51.137482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.278278, 31.963631, 51.076378>,  <32.530743, 32.256699, 50.974537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278278, 31.963631, 51.076378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360155, -0.567545, -0.740392,
		0.686966, -0.375610, 0.622089,
		-0.631162, -0.732673, 0.254607,
		32.088928, 31.743830, 51.152760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952000, 31.898390, 50.654762>,  <32.530743, 32.256699, 50.974537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952000, 31.898390, 50.654762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.631104, 31.682064, 50.755905>,  <32.438568, 31.552269, 50.816589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.631104, 31.682064, 50.755905>,  <32.952000, 31.898390, 50.654762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631104, 31.682064, 50.755905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225004, -0.666203, -0.711017,
		0.552981, -0.513511, 0.656139,
		-0.802237, -0.540813, 0.252856,
		32.390430, 31.519819, 50.831760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082577, 31.211927, 50.798698>,  <32.952000, 31.898390, 50.654762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082577, 31.211927, 50.798698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.706535, 31.223875, 50.662872>,  <32.480911, 31.231043, 50.581375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.706535, 31.223875, 50.662872>,  <33.082577, 31.211927, 50.798698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706535, 31.223875, 50.662872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264052, -0.566179, -0.780845,
		-0.215578, -0.823741, 0.524382,
		-0.940108, 0.029869, -0.339566,
		32.424503, 31.232836, 50.561001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866684, 30.584921, 50.396881>,  <33.082577, 31.211927, 50.798698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866684, 30.584921, 50.396881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.587658, 30.845165, 50.276814>,  <32.420242, 31.001312, 50.204773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.587658, 30.845165, 50.276814>,  <32.866684, 30.584921, 50.396881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587658, 30.845165, 50.276814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050420, -0.373320, -0.926331,
		-0.714742, -0.661314, 0.227613,
		-0.697569, 0.650611, -0.300171,
		32.378387, 31.040348, 50.186764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341457, 30.172102, 49.967880>,  <32.866684, 30.584921, 50.396881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341457, 30.172102, 49.967880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.332630, 30.561272, 49.875854>,  <32.327335, 30.794773, 49.820641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.332630, 30.561272, 49.875854>,  <32.341457, 30.172102, 49.967880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332630, 30.561272, 49.875854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197652, -0.221328, -0.954959,
		-0.980024, -0.066545, -0.187417,
		-0.022067, 0.972926, -0.230060,
		32.326012, 30.853149, 49.806835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126362, 30.167034, 49.275818>,  <32.341457, 30.172102, 49.967880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126362, 30.167034, 49.275818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251457, 30.546137, 49.300968>,  <32.326515, 30.773598, 49.316059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.251457, 30.546137, 49.300968>,  <32.126362, 30.167034, 49.275818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251457, 30.546137, 49.300968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180690, 0.005622, -0.983524,
		-0.932495, 0.318945, -0.169492,
		0.312737, 0.947756, 0.062872,
		32.345280, 30.830463, 49.319828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819572, 30.643635, 48.743095>,  <32.126362, 30.167034, 49.275818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819572, 30.643635, 48.743095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.164577, 30.809589, 48.858986>,  <32.371578, 30.909163, 48.928520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.164577, 30.809589, 48.858986>,  <31.819572, 30.643635, 48.743095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164577, 30.809589, 48.858986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236928, 0.174825, -0.955668,
		-0.447148, 0.892919, 0.052490,
		0.862510, 0.414889, 0.289730,
		32.423332, 30.934055, 48.945904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910891, 31.184402, 48.290604>,  <31.819572, 30.643635, 48.743095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910891, 31.184402, 48.290604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.280491, 31.121607, 48.430073>,  <32.502251, 31.083929, 48.513756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.280491, 31.121607, 48.430073>,  <31.910891, 31.184402, 48.290604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280491, 31.121607, 48.430073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374319, 0.185037, -0.908651,
		0.078132, 0.970111, 0.229739,
		0.924002, -0.156991, 0.348674,
		32.557693, 31.074509, 48.534676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294380, 31.801632, 48.495384>,  <31.910891, 31.184402, 48.290604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294380, 31.801632, 48.495384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.494442, 31.503960, 48.318279>,  <32.614479, 31.325357, 48.212017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.494442, 31.503960, 48.318279>,  <32.294380, 31.801632, 48.495384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494442, 31.503960, 48.318279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137979, 0.573272, -0.807664,
		0.854873, 0.342864, 0.389406,
		0.500154, -0.744180, -0.442767,
		32.644489, 31.280706, 48.185448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767910, 32.292355, 48.281799>,  <32.294380, 31.801632, 48.495384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767910, 32.292355, 48.281799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.758125, 32.309536, 47.882290>,  <32.752254, 32.319843, 47.642582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.758125, 32.309536, 47.882290>,  <32.767910, 32.292355, 48.281799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758125, 32.309536, 47.882290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447628, 0.892856, 0.049361,
		0.893885, 0.448288, -0.002612,
		-0.024460, 0.042954, -0.998778,
		32.750786, 32.322422, 47.582657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092541, 32.912022, 48.032291>,  <32.767910, 32.292355, 48.281799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092541, 32.912022, 48.032291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.831680, 32.779354, 47.759621>,  <32.675163, 32.699753, 47.596016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.831680, 32.779354, 47.759621>,  <33.092541, 32.912022, 48.032291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831680, 32.779354, 47.759621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436813, 0.899337, -0.019678,
		0.619588, 0.284935, -0.731384,
		-0.652154, -0.331670, -0.681681,
		32.636032, 32.679852, 47.555115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050941, 33.462288, 47.455238>,  <33.092541, 32.912022, 48.032291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050941, 33.462288, 47.455238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.713676, 33.251667, 47.411743>,  <32.511318, 33.125294, 47.385647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.713676, 33.251667, 47.411743>,  <33.050941, 33.462288, 47.455238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713676, 33.251667, 47.411743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534549, 0.799238, 0.274729,
		-0.057748, 0.289769, -0.955353,
		-0.843162, -0.526548, -0.108741,
		32.460728, 33.093704, 47.379120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669048, 33.831036, 46.921574>,  <33.050941, 33.462288, 47.455238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669048, 33.831036, 46.921574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.378307, 33.614456, 47.090584>,  <32.203865, 33.484509, 47.191990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.378307, 33.614456, 47.090584>,  <32.669048, 33.831036, 46.921574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378307, 33.614456, 47.090584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522290, 0.835266, 0.171883,
		-0.445986, -0.095747, -0.889904,
		-0.726849, -0.541445, 0.422525,
		32.160252, 33.452023, 47.217342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086998, 34.152916, 46.655613>,  <32.669048, 33.831036, 46.921574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086998, 34.152916, 46.655613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.980906, 33.942951, 46.979122>,  <31.917252, 33.816971, 47.173229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.980906, 33.942951, 46.979122>,  <32.086998, 34.152916, 46.655613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980906, 33.942951, 46.979122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610715, 0.740556, 0.280364,
		-0.746111, -0.419571, -0.516989,
		-0.265226, -0.524916, 0.808776,
		31.901337, 33.785477, 47.221756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346161, 34.182095, 46.693588>,  <32.086998, 34.152916, 46.655613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346161, 34.182095, 46.693588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.505270, 34.111858, 47.053799>,  <31.600735, 34.069717, 47.269924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.505270, 34.111858, 47.053799>,  <31.346161, 34.182095, 46.693588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505270, 34.111858, 47.053799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335431, 0.885736, 0.320870,
		-0.853969, -0.429697, 0.293424,
		0.397773, -0.175590, 0.900524,
		31.624601, 34.059181, 47.323956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841934, 34.346020, 47.147652>,  <31.346161, 34.182095, 46.693588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841934, 34.346020, 47.147652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.174570, 34.350052, 47.369774>,  <31.374151, 34.352470, 47.503048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.174570, 34.350052, 47.369774>,  <30.841934, 34.346020, 47.147652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174570, 34.350052, 47.369774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292079, 0.858342, 0.421827,
		-0.472388, -0.512978, 0.716730,
		0.831589, 0.010075, 0.555301,
		31.424047, 34.353073, 47.536366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665329, 34.522934, 47.884422>,  <30.841934, 34.346020, 47.147652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665329, 34.522934, 47.884422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.057337, 34.599453, 47.862617>,  <31.292542, 34.645363, 47.849537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.057337, 34.599453, 47.862617>,  <30.665329, 34.522934, 47.884422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057337, 34.599453, 47.862617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124861, 0.804960, 0.580043,
		0.154837, -0.561646, 0.812761,
		0.980018, 0.191294, -0.054510,
		31.351343, 34.656841, 47.846264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900539, 34.611126, 48.595219>,  <30.665329, 34.522934, 47.884422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900539, 34.611126, 48.595219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.204683, 34.771217, 48.390602>,  <31.387169, 34.867271, 48.267834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.204683, 34.771217, 48.390602>,  <30.900539, 34.611126, 48.595219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204683, 34.771217, 48.390602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066288, 0.831295, 0.551864,
		0.646111, -0.385706, 0.658613,
		0.760360, 0.400223, -0.511541,
		31.432791, 34.891285, 48.237141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335186, 34.757549, 49.107693>,  <30.900539, 34.611126, 48.595219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335186, 34.757549, 49.107693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.446798, 34.978172, 48.793262>,  <31.513765, 35.110546, 48.604603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.446798, 34.978172, 48.793262>,  <31.335186, 34.757549, 49.107693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446798, 34.978172, 48.793262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029492, 0.813284, 0.581119,
		0.959830, -0.185332, 0.210663,
		0.279029, 0.551562, -0.786080,
		31.530506, 35.143642, 48.557438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909391, 35.183662, 49.347889>,  <31.335186, 34.757549, 49.107693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909391, 35.183662, 49.347889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.753271, 35.373070, 49.032055>,  <31.659599, 35.486713, 48.842556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.753271, 35.373070, 49.032055>,  <31.909391, 35.183662, 49.347889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753271, 35.373070, 49.032055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069315, 0.840055, 0.538055,
		0.918075, 0.264733, -0.295051,
		-0.390300, 0.473523, -0.789583,
		31.636181, 35.515125, 48.795181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374783, 35.850090, 49.194595>,  <31.909391, 35.183662, 49.347889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374783, 35.850090, 49.194595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.027729, 35.925434, 49.010536>,  <31.819498, 35.970642, 48.900101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.027729, 35.925434, 49.010536>,  <32.374783, 35.850090, 49.194595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027729, 35.925434, 49.010536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082592, 0.858006, 0.506956,
		0.490298, 0.477856, -0.728877,
		-0.867633, 0.188359, -0.460146,
		31.767439, 35.981941, 48.872494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398281, 36.539814, 49.231453>,  <32.374783, 35.850090, 49.194595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398281, 36.539814, 49.231453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.018894, 36.432953, 49.163284>,  <31.791264, 36.368835, 49.122383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.018894, 36.432953, 49.163284>,  <32.398281, 36.539814, 49.231453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018894, 36.432953, 49.163284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316170, 0.761678, 0.565582,
		-0.021293, 0.590316, -0.806892,
		-0.948464, -0.267158, -0.170422,
		31.734356, 36.352806, 49.112156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104706, 37.152046, 49.135326>,  <32.398281, 36.539814, 49.231453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104706, 37.152046, 49.135326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.796244, 36.908604, 49.210072>,  <31.611166, 36.762539, 49.254917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.796244, 36.908604, 49.210072>,  <32.104706, 37.152046, 49.135326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796244, 36.908604, 49.210072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321574, 0.625678, 0.710716,
		-0.549457, 0.487987, -0.678208,
		-0.771160, -0.608602, 0.186859,
		31.564896, 36.726025, 49.266129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394878, 37.572952, 48.948017>,  <32.104706, 37.152046, 49.135326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394878, 37.572952, 48.948017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.308489, 37.279144, 49.205334>,  <31.256655, 37.102859, 49.359726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.308489, 37.279144, 49.205334>,  <31.394878, 37.572952, 48.948017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308489, 37.279144, 49.205334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498879, 0.649370, 0.573968,
		-0.839330, -0.196963, -0.506686,
		-0.215976, -0.734524, 0.643296,
		31.243696, 37.058788, 49.398323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385912, 38.275818, 48.514668>,  <31.394878, 37.572952, 48.948017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385912, 38.275818, 48.514668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.620174, 38.585251, 48.611481>,  <31.760733, 38.770908, 48.669571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.620174, 38.585251, 48.611481>,  <31.385912, 38.275818, 48.514668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620174, 38.585251, 48.611481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682407, -0.309431, -0.662248,
		-0.437407, 0.553018, -0.709116,
		0.585658, 0.773578, 0.242037,
		31.795872, 38.817326, 48.684093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614414, 38.599514, 47.899273>,  <31.385912, 38.275818, 48.514668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614414, 38.599514, 47.899273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.870663, 38.687618, 48.193508>,  <32.024410, 38.740482, 48.370049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.870663, 38.687618, 48.193508>,  <31.614414, 38.599514, 47.899273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870663, 38.687618, 48.193508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763186, -0.288162, -0.578368,
		0.084575, 0.931905, -0.352704,
		0.640620, 0.220263, 0.735588,
		32.062847, 38.753696, 48.414185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091095, 39.008976, 47.549133>,  <31.614414, 38.599514, 47.899273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091095, 39.008976, 47.549133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.258652, 38.888725, 47.891865>,  <32.359188, 38.816574, 48.097504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.258652, 38.888725, 47.891865>,  <32.091095, 39.008976, 47.549133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258652, 38.888725, 47.891865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851869, -0.196604, -0.485454,
		0.314398, 0.933257, 0.173741,
		0.418895, -0.300630, 0.856825,
		32.384319, 38.798538, 48.148911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819962, 39.358002, 47.581207>,  <32.091095, 39.008976, 47.549133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819962, 39.358002, 47.581207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.809727, 39.057121, 47.844582>,  <32.803585, 38.876595, 48.002605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.809727, 39.057121, 47.844582>,  <32.819962, 39.358002, 47.581207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809727, 39.057121, 47.844582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941075, -0.240312, -0.237966,
		0.337229, 0.613550, 0.714026,
		-0.025585, -0.752201, 0.658437,
		32.802052, 38.831459, 48.042114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375957, 39.473770, 47.953094>,  <32.819962, 39.358002, 47.581207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375957, 39.473770, 47.953094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.284294, 39.093807, 48.038105>,  <33.229298, 38.865829, 48.089111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.284294, 39.093807, 48.038105>,  <33.375957, 39.473770, 47.953094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284294, 39.093807, 48.038105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920140, -0.282622, -0.271048,
		0.317535, 0.133442, 0.938810,
		-0.229159, -0.949904, 0.212528,
		33.215546, 38.808834, 48.101864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855553, 39.221733, 48.396759>,  <33.375957, 39.473770, 47.953094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855553, 39.221733, 48.396759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.720867, 38.896835, 48.206230>,  <33.640057, 38.701897, 48.091911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.720867, 38.896835, 48.206230>,  <33.855553, 39.221733, 48.396759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720867, 38.896835, 48.206230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921752, -0.180993, -0.342950,
		0.192349, -0.554525, 0.809632,
		-0.336713, -0.812246, -0.476321,
		33.619854, 38.653160, 48.063335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328346, 38.769878, 48.536007>,  <33.855553, 39.221733, 48.396759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328346, 38.769878, 48.536007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.133228, 38.567421, 48.251507>,  <34.016159, 38.445946, 48.080807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.133228, 38.567421, 48.251507>,  <34.328346, 38.769878, 48.536007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133228, 38.567421, 48.251507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866759, -0.377738, -0.325642,
		-0.103844, -0.775328, 0.622962,
		-0.487796, -0.506142, -0.711249,
		33.986889, 38.415577, 48.038132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493256, 37.938629, 48.671635>,  <34.328346, 38.769878, 48.536007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493256, 37.938629, 48.671635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.389416, 38.032547, 48.296940>,  <34.327110, 38.088898, 48.072124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.389416, 38.032547, 48.296940>,  <34.493256, 37.938629, 48.671635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389416, 38.032547, 48.296940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766460, -0.539998, -0.347765,
		-0.587491, -0.808252, -0.039779,
		-0.259601, 0.234798, -0.936737,
		34.311535, 38.102985, 48.015919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741276, 37.410728, 48.320515>,  <34.493256, 37.938629, 48.671635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741276, 37.410728, 48.320515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669041, 37.670429, 48.024986>,  <34.625702, 37.826248, 47.847668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669041, 37.670429, 48.024986>,  <34.741276, 37.410728, 48.320515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669041, 37.670429, 48.024986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816141, -0.320304, -0.480956,
		-0.548910, -0.689838, -0.472040,
		-0.180585, 0.649253, -0.738823,
		34.614864, 37.865204, 47.803341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871628, 37.083370, 47.764973>,  <34.741276, 37.410728, 48.320515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871628, 37.083370, 47.764973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.867100, 37.462376, 47.637161>,  <34.864384, 37.689777, 47.560474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.867100, 37.462376, 47.637161>,  <34.871628, 37.083370, 47.764973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867100, 37.462376, 47.637161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806355, -0.180314, -0.563275,
		-0.591324, -0.264028, -0.761988,
		-0.011323, 0.947510, -0.319524,
		34.863705, 37.746628, 47.541306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898628, 37.060524, 46.952953>,  <34.871628, 37.083370, 47.764973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898628, 37.060524, 46.952953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.017834, 37.409969, 47.106831>,  <35.089355, 37.619637, 47.199158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.017834, 37.409969, 47.106831>,  <34.898628, 37.060524, 46.952953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017834, 37.409969, 47.106831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875826, -0.089967, -0.474167,
		-0.379628, 0.478234, -0.791943,
		0.298012, 0.873612, 0.384696,
		35.107239, 37.672054, 47.222240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956139, 37.500580, 46.399803>,  <34.898628, 37.060524, 46.952953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956139, 37.500580, 46.399803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.188980, 37.594860, 46.711082>,  <35.328686, 37.651428, 46.897850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.188980, 37.594860, 46.711082>,  <34.956139, 37.500580, 46.399803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188980, 37.594860, 46.711082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794703, -0.367419, -0.483167,
		0.172043, 0.899693, -0.401189,
		0.582107, 0.235701, 0.778201,
		35.363613, 37.665569, 46.944542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.813915, 41.306705, 53.122478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.430624, 41.346016, 53.015041>,  <29.200649, 41.369602, 52.950581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.430624, 41.346016, 53.015041>,  <29.813915, 41.306705, 53.122478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430624, 41.346016, 53.015041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151065, -0.623523, -0.767071,
		-0.242858, -0.775604, 0.582631,
		-0.958227, 0.098274, -0.268594,
		29.143156, 41.375500, 52.934464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506702, 40.664803, 53.019142>,  <29.813915, 41.306705, 53.122478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506702, 40.664803, 53.019142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.310280, 40.930920, 52.794197>,  <29.192427, 41.090591, 52.659229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.310280, 40.930920, 52.794197>,  <29.506702, 40.664803, 53.019142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310280, 40.930920, 52.794197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140438, -0.576650, -0.804831,
		-0.859733, -0.474194, 0.189734,
		-0.491056, 0.665294, -0.562360,
		29.162964, 41.130508, 52.625488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135908, 40.258057, 52.448788>,  <29.506702, 40.664803, 53.019142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135908, 40.258057, 52.448788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.175858, 40.635841, 52.323551>,  <29.199827, 40.862511, 52.248409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.175858, 40.635841, 52.323551>,  <29.135908, 40.258057, 52.448788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175858, 40.635841, 52.323551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284819, -0.328629, -0.900490,
		-0.953364, 0.000761, -0.301821,
		0.099872, 0.944459, -0.313087,
		29.205818, 40.919178, 52.229626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792679, 40.349876, 51.745407>,  <29.135908, 40.258057, 52.448788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792679, 40.349876, 51.745407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.066538, 40.640316, 51.770836>,  <29.230852, 40.814579, 51.786091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.066538, 40.640316, 51.770836>,  <28.792679, 40.349876, 51.745407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066538, 40.640316, 51.770836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245828, -0.147925, -0.957959,
		-0.686169, 0.671491, -0.279772,
		0.684646, 0.726098, 0.063570,
		29.271933, 40.858147, 51.789906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831850, 40.683327, 51.023830>,  <28.792679, 40.349876, 51.745407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831850, 40.683327, 51.023830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.170254, 40.785069, 51.211266>,  <29.373297, 40.846111, 51.323727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.170254, 40.785069, 51.211266>,  <28.831850, 40.683327, 51.023830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170254, 40.785069, 51.211266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497788, -0.061991, -0.865080,
		-0.190985, 0.965123, -0.179057,
		0.846009, 0.254350, 0.468588,
		29.424057, 40.861374, 51.351841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150879, 41.120625, 50.603012>,  <28.831850, 40.683327, 51.023830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150879, 41.120625, 50.603012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.462614, 41.018791, 50.832035>,  <29.649656, 40.957691, 50.969448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.462614, 41.018791, 50.832035>,  <29.150879, 41.120625, 50.603012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462614, 41.018791, 50.832035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556544, -0.138604, -0.819175,
		0.287904, 0.957067, 0.033665,
		0.779339, -0.254580, 0.572555,
		29.696415, 40.942417, 51.003803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794788, 41.563278, 50.448273>,  <29.150879, 41.120625, 50.603012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794788, 41.563278, 50.448273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.887413, 41.199097, 50.585361>,  <29.942987, 40.980587, 50.667614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.887413, 41.199097, 50.585361>,  <29.794788, 41.563278, 50.448273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887413, 41.199097, 50.585361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588957, -0.149194, -0.794274,
		0.774280, 0.385770, 0.501669,
		0.231561, -0.910452, 0.342720,
		29.956881, 40.925961, 50.688179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453016, 41.482868, 50.275143>,  <29.794788, 41.563278, 50.448273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453016, 41.482868, 50.275143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.399841, 41.103153, 50.389107>,  <30.367937, 40.875324, 50.457485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.399841, 41.103153, 50.389107>,  <30.453016, 41.482868, 50.275143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399841, 41.103153, 50.389107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609985, -0.304932, -0.731392,
		0.781183, 0.076561, 0.619590,
		-0.132937, -0.949292, 0.284909,
		30.359961, 40.818367, 50.474579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025513, 41.180157, 50.008415>,  <30.453016, 41.482868, 50.275143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025513, 41.180157, 50.008415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.824091, 40.849213, 50.107937>,  <30.703238, 40.650646, 50.167648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.824091, 40.849213, 50.107937>,  <31.025513, 41.180157, 50.008415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824091, 40.849213, 50.107937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502803, -0.514828, -0.694364,
		0.702582, -0.224552, 0.675245,
		-0.503556, -0.827362, 0.248804,
		30.673023, 40.601006, 50.182579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385941, 40.696068, 50.197735>,  <31.025513, 41.180157, 50.008415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385941, 40.696068, 50.197735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.097475, 40.442471, 50.086040>,  <30.924397, 40.290310, 50.019024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.097475, 40.442471, 50.086040>,  <31.385941, 40.696068, 50.197735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097475, 40.442471, 50.086040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661739, -0.511157, -0.548471,
		0.204996, -0.580317, 0.788168,
		-0.721164, -0.633996, -0.279233,
		30.881126, 40.252274, 50.002270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617285, 40.044510, 50.425346>,  <31.385941, 40.696068, 50.197735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617285, 40.044510, 50.425346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.363085, 40.001259, 50.119549>,  <31.210564, 39.975307, 49.936069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.363085, 40.001259, 50.119549>,  <31.617285, 40.044510, 50.425346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363085, 40.001259, 50.119549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722159, -0.433563, -0.538990,
		-0.273175, -0.894613, 0.353615,
		-0.635501, -0.108127, -0.764491,
		31.172434, 39.968822, 49.890202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666342, 39.403259, 50.292610>,  <31.617285, 40.044510, 50.425346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666342, 39.403259, 50.292610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.514536, 39.558750, 49.956787>,  <31.423452, 39.652046, 49.755295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.514536, 39.558750, 49.956787>,  <31.666342, 39.403259, 50.292610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514536, 39.558750, 49.956787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562850, -0.623196, -0.542980,
		-0.734281, -0.678615, 0.017718,
		-0.379516, 0.388727, -0.839559,
		31.400681, 39.675369, 49.704918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389975, 38.829052, 49.888565>,  <31.666342, 39.403259, 50.292610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389975, 38.829052, 49.888565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.435814, 39.112827, 49.610409>,  <31.463318, 39.283092, 49.443516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.435814, 39.112827, 49.610409>,  <31.389975, 38.829052, 49.888565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435814, 39.112827, 49.610409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510039, -0.642717, -0.571642,
		-0.852483, -0.289167, -0.435494,
		0.114599, 0.709434, -0.695392,
		31.470194, 39.325657, 49.401791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308830, 38.477165, 49.296967>,  <31.389975, 38.829052, 49.888565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308830, 38.477165, 49.296967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.499031, 38.810970, 49.185623>,  <31.613152, 39.011253, 49.118816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.499031, 38.810970, 49.185623>,  <31.308830, 38.477165, 49.296967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499031, 38.810970, 49.185623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579854, -0.535269, -0.614211,
		-0.661565, 0.130652, -0.738419,
		0.475501, 0.834516, -0.278356,
		31.641682, 39.061325, 49.102116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789398, 37.828682, 49.343697>,  <31.308830, 38.477165, 49.296967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789398, 37.828682, 49.343697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.915434, 37.511902, 49.552898>,  <30.991056, 37.321835, 49.678421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.915434, 37.511902, 49.552898>,  <30.789398, 37.828682, 49.343697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915434, 37.511902, 49.552898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354351, 0.413054, 0.838941,
		-0.880428, -0.449671, -0.150478,
		0.315091, -0.791949, 0.523005,
		31.009962, 37.274319, 49.709801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164534, 37.585331, 49.680676>,  <30.789398, 37.828682, 49.343697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164534, 37.585331, 49.680676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.469955, 37.427723, 49.885315>,  <30.653208, 37.333160, 50.008099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.469955, 37.427723, 49.885315>,  <30.164534, 37.585331, 49.680676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469955, 37.427723, 49.885315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490439, 0.161534, 0.856374,
		-0.420068, -0.904797, -0.069901,
		0.763553, -0.394018, 0.511603,
		30.699020, 37.309517, 50.038795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960100, 37.067318, 50.180035>,  <30.164534, 37.585331, 49.680676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960100, 37.067318, 50.180035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.307566, 37.186321, 50.338482>,  <30.516045, 37.257725, 50.433548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.307566, 37.186321, 50.338482>,  <29.960100, 37.067318, 50.180035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307566, 37.186321, 50.338482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479105, 0.301138, 0.824484,
		0.126008, -0.905981, 0.404128,
		0.868665, 0.297512, 0.396115,
		30.568165, 37.275574, 50.457317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930929, 36.881279, 50.876945>,  <29.960100, 37.067318, 50.180035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930929, 36.881279, 50.876945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.216793, 37.160675, 50.862118>,  <30.388311, 37.328312, 50.853222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.216793, 37.160675, 50.862118>,  <29.930929, 36.881279, 50.876945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216793, 37.160675, 50.862118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246354, 0.300954, 0.921269,
		0.654655, -0.649259, 0.387155,
		0.714658, 0.698490, -0.037073,
		30.431190, 37.370220, 50.850994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163132, 36.821918, 51.533916>,  <29.930929, 36.881279, 50.876945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163132, 36.821918, 51.533916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.326939, 37.166676, 51.414291>,  <30.425222, 37.373531, 51.342518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.326939, 37.166676, 51.414291>,  <30.163132, 36.821918, 51.533916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326939, 37.166676, 51.414291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186724, 0.400057, 0.897267,
		0.892990, -0.311602, 0.324766,
		0.409515, 0.861893, -0.299063,
		30.449793, 37.425243, 51.324574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389730, 36.941704, 52.136177>,  <30.163132, 36.821918, 51.533916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389730, 36.941704, 52.136177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.405333, 37.289173, 51.938637>,  <30.414694, 37.497654, 51.820114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.405333, 37.289173, 51.938637>,  <30.389730, 36.941704, 52.136177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405333, 37.289173, 51.938637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328650, 0.477878, 0.814630,
		0.943646, 0.130530, 0.304128,
		0.039003, 0.868674, -0.493847,
		30.417034, 37.549774, 51.790482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658720, 37.437809, 52.679764>,  <30.389730, 36.941704, 52.136177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658720, 37.437809, 52.679764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.457067, 37.640182, 52.399799>,  <30.336075, 37.761608, 52.231819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.457067, 37.640182, 52.399799>,  <30.658720, 37.437809, 52.679764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457067, 37.640182, 52.399799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376182, 0.600869, 0.705297,
		0.777391, 0.618858, -0.112595,
		-0.504133, 0.505935, -0.699914,
		30.305828, 37.791962, 52.189827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697292, 38.186573, 52.864548>,  <30.658720, 37.437809, 52.679764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697292, 38.186573, 52.864548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.383589, 38.147095, 52.619534>,  <30.195366, 38.123409, 52.472527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.383589, 38.147095, 52.619534>,  <30.697292, 38.186573, 52.864548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383589, 38.147095, 52.619534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508643, 0.667610, 0.543672,
		0.355275, 0.737940, -0.573781,
		-0.784259, -0.098697, -0.612533,
		30.148312, 38.117485, 52.435772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411900, 38.898094, 52.972336>,  <30.697292, 38.186573, 52.864548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411900, 38.898094, 52.972336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.148724, 38.652107, 52.798470>,  <29.990818, 38.504517, 52.694149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.148724, 38.652107, 52.798470>,  <30.411900, 38.898094, 52.972336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148724, 38.652107, 52.798470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752142, 0.507950, 0.419844,
		-0.037403, 0.603159, -0.796743,
		-0.657938, -0.614968, -0.434663,
		29.951342, 38.467617, 52.668072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927544, 39.311096, 52.597816>,  <30.411900, 38.898094, 52.972336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927544, 39.311096, 52.597816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.741627, 38.960281, 52.646431>,  <29.630077, 38.749790, 52.675598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.741627, 38.960281, 52.646431>,  <29.927544, 39.311096, 52.597816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741627, 38.960281, 52.646431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813457, 0.477177, 0.332550,
		-0.349654, 0.055701, -0.935221,
		-0.464790, -0.877040, 0.121536,
		29.602190, 38.697170, 52.682892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178745, 39.529476, 52.453354>,  <29.927544, 39.311096, 52.597816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178745, 39.529476, 52.453354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.175974, 39.184006, 52.654957>,  <29.174311, 38.976723, 52.775917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.175974, 39.184006, 52.654957>,  <29.178745, 39.529476, 52.453354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175974, 39.184006, 52.654957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667402, 0.379326, 0.640848,
		-0.744665, -0.331934, -0.579045,
		-0.006928, -0.863673, 0.504004,
		29.173895, 38.924904, 52.806160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487568, 39.436420, 52.608356>,  <29.178745, 39.529476, 52.453354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487568, 39.436420, 52.608356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.703693, 39.216362, 52.863041>,  <28.833368, 39.084328, 53.015850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.703693, 39.216362, 52.863041>,  <28.487568, 39.436420, 52.608356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.703693, 39.216362, 52.863041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572997, 0.313579, 0.757194,
		-0.616228, -0.773954, -0.145803,
		0.540312, -0.550149, 0.636709,
		28.865788, 39.051319, 53.054054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015911, 39.002441, 52.963093>,  <28.487568, 39.436420, 52.608356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015911, 39.002441, 52.963093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.333763, 39.020191, 53.205280>,  <28.524473, 39.030842, 53.350594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.333763, 39.020191, 53.205280>,  <28.015911, 39.002441, 52.963093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333763, 39.020191, 53.205280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604722, 0.145970, 0.782946,
		-0.053641, -0.988294, 0.142824,
		0.794628, 0.044370, 0.605473,
		28.572151, 39.033504, 53.386921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821081, 38.657646, 53.637287>,  <28.015911, 39.002441, 52.963093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821081, 38.657646, 53.637287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.151476, 38.857201, 53.742249>,  <28.349712, 38.976933, 53.805225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.151476, 38.857201, 53.742249>,  <27.821081, 38.657646, 53.637287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151476, 38.857201, 53.742249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386618, 0.162630, 0.907787,
		0.410209, -0.851271, 0.327210,
		0.825987, 0.498888, 0.262405,
		28.399271, 39.006866, 53.820969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.101959, 37.671265, 57.861004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.878231, 37.800125, 57.555485>,  <33.743996, 37.877441, 57.372173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.878231, 37.800125, 57.555485>,  <34.101959, 37.671265, 57.861004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878231, 37.800125, 57.555485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434381, -0.670864, -0.601045,
		-0.706030, -0.667953, 0.235289,
		-0.559316, 0.322151, -0.763796,
		33.710434, 37.896770, 57.326347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774933, 37.113586, 57.559971>,  <34.101959, 37.671265, 57.861004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774933, 37.113586, 57.559971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807156, 37.387264, 57.270039>,  <33.826488, 37.551472, 57.096077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807156, 37.387264, 57.270039>,  <33.774933, 37.113586, 57.559971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807156, 37.387264, 57.270039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349432, -0.700434, -0.622326,
		-0.933492, -0.203145, -0.295507,
		0.080560, 0.684196, -0.724835,
		33.831326, 37.592522, 57.052589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499859, 36.823055, 56.996674>,  <33.774933, 37.113586, 57.559971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499859, 36.823055, 56.996674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745358, 37.114220, 56.874390>,  <33.892658, 37.288918, 56.801018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745358, 37.114220, 56.874390>,  <33.499859, 36.823055, 56.996674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745358, 37.114220, 56.874390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506909, -0.660185, -0.554255,
		-0.605273, 0.185206, -0.774172,
		0.613749, 0.727911, -0.305710,
		33.929482, 37.332592, 56.782677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500538, 36.680531, 56.270229>,  <33.499859, 36.823055, 56.996674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500538, 36.680531, 56.270229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.820194, 36.897060, 56.374798>,  <34.011990, 37.026978, 56.437538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.820194, 36.897060, 56.374798>,  <33.500538, 36.680531, 56.270229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820194, 36.897060, 56.374798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585555, -0.602585, -0.542232,
		-0.135994, 0.586397, -0.798526,
		0.799143, 0.541322, 0.261420,
		34.059937, 37.059456, 56.453224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839561, 36.872887, 55.650223>,  <33.500538, 36.680531, 56.270229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839561, 36.872887, 55.650223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.128975, 36.893559, 55.925564>,  <34.302624, 36.905960, 56.090767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.128975, 36.893559, 55.925564>,  <33.839561, 36.872887, 55.650223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128975, 36.893559, 55.925564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653864, -0.370941, -0.659443,
		0.221260, 0.927217, -0.302178,
		0.723537, 0.051675, 0.688349,
		34.346035, 36.909061, 56.132069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295925, 37.185989, 55.279701>,  <33.839561, 36.872887, 55.650223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295925, 37.185989, 55.279701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.530643, 37.041199, 55.569431>,  <34.671474, 36.954323, 55.743267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.530643, 37.041199, 55.569431>,  <34.295925, 37.185989, 55.279701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530643, 37.041199, 55.569431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679631, -0.266115, -0.683582,
		0.440196, 0.893394, 0.089858,
		0.586795, -0.361980, 0.724321,
		34.706680, 36.932606, 55.786728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033287, 37.355434, 55.063015>,  <34.295925, 37.185989, 55.279701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033287, 37.355434, 55.063015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054783, 37.066280, 55.338566>,  <35.067680, 36.892788, 55.503899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.054783, 37.066280, 55.338566>,  <35.033287, 37.355434, 55.063015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054783, 37.066280, 55.338566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769445, -0.409726, -0.489978,
		0.636448, 0.556388, 0.534198,
		0.053743, -0.722881, 0.688879,
		35.070908, 36.849415, 55.545231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751049, 37.262859, 55.171806>,  <35.033287, 37.355434, 55.063015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751049, 37.262859, 55.171806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.567230, 36.928112, 55.290779>,  <35.456940, 36.727264, 55.362164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.567230, 36.928112, 55.290779>,  <35.751049, 37.262859, 55.171806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567230, 36.928112, 55.290779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585834, -0.537319, -0.606701,
		0.667547, -0.104560, 0.737190,
		-0.459543, -0.836872, 0.297431,
		35.429367, 36.677052, 55.380009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179806, 36.745586, 55.071995>,  <35.751049, 37.262859, 55.171806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179806, 36.745586, 55.071995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.846771, 36.525196, 55.094704>,  <35.646950, 36.392963, 55.108330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.846771, 36.525196, 55.094704>,  <36.179806, 36.745586, 55.071995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846771, 36.525196, 55.094704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444415, -0.725685, -0.525240,
		0.330596, -0.412076, 0.849058,
		-0.832587, -0.550976, 0.056776,
		35.596996, 36.359901, 55.111736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519955, 36.020721, 55.082188>,  <36.179806, 36.745586, 55.071995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519955, 36.020721, 55.082188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.132351, 35.986408, 54.989521>,  <35.899788, 35.965820, 54.933922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.132351, 35.986408, 54.989521>,  <36.519955, 36.020721, 55.082188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132351, 35.986408, 54.989521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219900, -0.726825, -0.650668,
		-0.112567, -0.681445, 0.723161,
		-0.969006, -0.085780, -0.231666,
		35.841648, 35.960674, 54.920021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302635, 35.341957, 55.088924>,  <36.519955, 36.020721, 55.082188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302635, 35.341957, 55.088924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.013390, 35.464832, 54.841461>,  <35.839840, 35.538555, 54.692982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.013390, 35.464832, 54.841461>,  <36.302635, 35.341957, 55.088924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013390, 35.464832, 54.841461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225793, -0.741333, -0.632014,
		-0.652777, -0.596710, 0.466712,
		-0.723118, 0.307184, -0.618658,
		35.796455, 35.556988, 54.655865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035957, 34.731380, 54.791859>,  <36.302635, 35.341957, 55.088924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035957, 34.731380, 54.791859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.913338, 35.012665, 54.535259>,  <35.839764, 35.181435, 54.381298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.913338, 35.012665, 54.535259>,  <36.035957, 34.731380, 54.791859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913338, 35.012665, 54.535259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230732, -0.598953, -0.766823,
		-0.923466, -0.383086, 0.021357,
		-0.306551, 0.703207, -0.641503,
		35.821373, 35.223625, 54.342808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557095, 34.411190, 54.462021>,  <36.035957, 34.731380, 54.791859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557095, 34.411190, 54.462021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.732212, 34.706837, 54.257259>,  <35.837280, 34.884224, 54.134403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.732212, 34.706837, 54.257259>,  <35.557095, 34.411190, 54.462021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732212, 34.706837, 54.257259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342207, -0.663494, -0.665335,
		-0.831405, 0.116101, -0.543402,
		0.437790, 0.739119, -0.511902,
		35.863548, 34.928574, 54.103687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364040, 34.212967, 53.730888>,  <35.557095, 34.411190, 54.462021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364040, 34.212967, 53.730888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661415, 34.480274, 53.741589>,  <35.839840, 34.640659, 53.748009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661415, 34.480274, 53.741589>,  <35.364040, 34.212967, 53.730888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661415, 34.480274, 53.741589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528240, -0.562191, -0.636320,
		-0.410197, 0.487194, -0.770961,
		0.743439, 0.668269, 0.026746,
		35.884445, 34.680756, 53.749611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790703, 34.082676, 53.291725>,  <35.364040, 34.212967, 53.730888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790703, 34.082676, 53.291725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.628780, 33.717228, 53.306820>,  <34.531628, 33.497959, 53.315876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.628780, 33.717228, 53.306820>,  <34.790703, 34.082676, 53.291725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628780, 33.717228, 53.306820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674077, 0.326051, 0.662805,
		-0.617858, 0.242870, -0.747840,
		-0.404810, -0.913622, 0.037741,
		34.507336, 33.443142, 53.318142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088963, 34.189720, 53.345684>,  <34.790703, 34.082676, 53.291725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088963, 34.189720, 53.345684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.129513, 33.823387, 53.501106>,  <34.153843, 33.603588, 53.594360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.129513, 33.823387, 53.501106>,  <34.088963, 34.189720, 53.345684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129513, 33.823387, 53.501106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683370, 0.219736, 0.696220,
		-0.722999, -0.336110, -0.603574,
		0.101380, -0.915831, 0.388557,
		34.159927, 33.548637, 53.617672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451626, 33.955784, 53.341648>,  <34.088963, 34.189720, 53.345684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451626, 33.955784, 53.341648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.654541, 33.743153, 53.612965>,  <33.776291, 33.615574, 53.775757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.654541, 33.743153, 53.612965>,  <33.451626, 33.955784, 53.341648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654541, 33.743153, 53.612965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595827, 0.352308, 0.721712,
		-0.622616, -0.770261, -0.138009,
		0.507286, -0.531580, 0.678296,
		33.806728, 33.583679, 53.816452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980484, 33.524994, 53.756611>,  <33.451626, 33.955784, 53.341648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980484, 33.524994, 53.756611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.308533, 33.591267, 53.975681>,  <33.505363, 33.631031, 54.107124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.308533, 33.591267, 53.975681>,  <32.980484, 33.524994, 53.756611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308533, 33.591267, 53.975681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571952, 0.209969, 0.792960,
		0.016381, -0.963569, 0.266960,
		0.820124, 0.165678, 0.547675,
		33.554569, 33.640968, 54.139984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783520, 33.227779, 54.371658>,  <32.980484, 33.524994, 53.756611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783520, 33.227779, 54.371658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.075623, 33.483170, 54.468876>,  <33.250885, 33.636402, 54.527206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.075623, 33.483170, 54.468876>,  <32.783520, 33.227779, 54.371658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075623, 33.483170, 54.468876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492461, 0.245398, 0.835022,
		0.473498, -0.729473, 0.493628,
		0.730262, 0.638474, 0.243042,
		33.294701, 33.674713, 54.541790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858517, 33.160366, 55.052631>,  <32.783520, 33.227779, 54.371658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858517, 33.160366, 55.052631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040573, 33.511780, 54.994629>,  <33.149807, 33.722630, 54.959827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.040573, 33.511780, 54.994629>,  <32.858517, 33.160366, 55.052631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040573, 33.511780, 54.994629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444739, 0.365374, 0.817746,
		0.771400, -0.307696, 0.557014,
		0.455136, 0.878536, -0.145005,
		33.177113, 33.775341, 54.951126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998692, 33.289886, 55.674118>,  <32.858517, 33.160366, 55.052631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998692, 33.289886, 55.674118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.019627, 33.643860, 55.489010>,  <33.032188, 33.856243, 55.377945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.019627, 33.643860, 55.489010>,  <32.998692, 33.289886, 55.674118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019627, 33.643860, 55.489010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470099, 0.430684, 0.770402,
		0.881061, 0.177229, 0.438545,
		0.052337, 0.884930, -0.462774,
		33.035328, 33.909340, 55.350178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291962, 33.822056, 56.193653>,  <32.998692, 33.289886, 55.674118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291962, 33.822056, 56.193653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.104324, 34.044746, 55.919422>,  <32.991741, 34.178360, 55.754883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.104324, 34.044746, 55.919422>,  <33.291962, 33.822056, 56.193653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104324, 34.044746, 55.919422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452564, 0.515075, 0.727930,
		0.758379, 0.651732, 0.010336,
		-0.469091, 0.556725, -0.685573,
		32.963596, 34.211765, 55.713749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115410, 34.456398, 56.513020>,  <33.291962, 33.822056, 56.193653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115410, 34.456398, 56.513020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.880875, 34.509647, 56.193398>,  <32.740154, 34.541599, 56.001625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.880875, 34.509647, 56.193398>,  <33.115410, 34.456398, 56.513020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880875, 34.509647, 56.193398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601019, 0.589862, 0.539295,
		0.543126, 0.796455, -0.265846,
		-0.586337, 0.133126, -0.799054,
		32.704975, 34.549583, 55.953682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003086, 35.184620, 56.483414>,  <33.115410, 34.456398, 56.513020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003086, 35.184620, 56.483414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.685326, 35.015083, 56.309383>,  <32.494671, 34.913361, 56.204967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.685326, 35.015083, 56.309383>,  <33.003086, 35.184620, 56.483414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685326, 35.015083, 56.309383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600308, 0.656978, 0.456081,
		0.092525, 0.623487, -0.776340,
		-0.794399, -0.423844, -0.435071,
		32.447006, 34.887932, 56.178864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575485, 35.740074, 56.252983>,  <33.003086, 35.184620, 56.483414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575485, 35.740074, 56.252983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.331913, 35.423382, 56.233524>,  <32.185768, 35.233368, 56.221851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.331913, 35.423382, 56.233524>,  <32.575485, 35.740074, 56.252983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331913, 35.423382, 56.233524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741416, 0.546293, 0.389701,
		-0.281962, 0.273368, -0.919656,
		-0.608933, -0.791728, -0.048645,
		32.149235, 35.185863, 56.218929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831091, 35.967560, 55.984917>,  <32.575485, 35.740074, 56.252983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831091, 35.967560, 55.984917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.797916, 35.639950, 56.212013>,  <31.778011, 35.443386, 56.348270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.797916, 35.639950, 56.212013>,  <31.831091, 35.967560, 55.984917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797916, 35.639950, 56.212013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651025, 0.475859, 0.591375,
		-0.754512, -0.320564, -0.572670,
		-0.082937, -0.819021, 0.567737,
		31.773035, 35.394245, 56.382336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102142, 36.063267, 56.127331>,  <31.831091, 35.967560, 55.984917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102142, 36.063267, 56.127331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.253626, 35.790562, 56.377697>,  <31.344517, 35.626938, 56.527916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.253626, 35.790562, 56.377697>,  <31.102142, 36.063267, 56.127331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253626, 35.790562, 56.377697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378593, 0.503007, 0.776950,
		-0.844539, -0.531208, -0.067618,
		0.378710, -0.681764, 0.625920,
		31.367239, 35.586033, 56.565472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508959, 35.882092, 56.567375>,  <31.102142, 36.063267, 56.127331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508959, 35.882092, 56.567375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.835546, 35.788845, 56.778667>,  <31.031500, 35.732895, 56.905445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.835546, 35.788845, 56.778667>,  <30.508959, 35.882092, 56.567375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835546, 35.788845, 56.778667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390101, 0.451755, 0.802333,
		-0.425672, -0.861146, 0.277905,
		0.816471, -0.233120, 0.528233,
		31.080488, 35.718910, 56.937138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954430, 35.447853, 56.370056>,  <30.508959, 35.882092, 56.567375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954430, 35.447853, 56.370056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.675156, 35.648273, 56.165512>,  <29.507591, 35.768524, 56.042786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.675156, 35.648273, 56.165512>,  <29.954430, 35.447853, 56.370056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675156, 35.648273, 56.165512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383462, -0.341443, -0.858122,
		-0.604563, -0.795213, 0.046256,
		-0.698184, 0.501052, -0.511358,
		29.465700, 35.798588, 56.012104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712572, 34.979580, 55.899128>,  <29.954430, 35.447853, 56.370056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712572, 34.979580, 55.899128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.624186, 35.345139, 55.762917>,  <29.571154, 35.564476, 55.681190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.624186, 35.345139, 55.762917>,  <29.712572, 34.979580, 55.899128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624186, 35.345139, 55.762917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392145, -0.236435, -0.889000,
		-0.892970, -0.329975, -0.306138,
		-0.220966, 0.913901, -0.340528,
		29.557896, 35.619308, 55.660759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433901, 34.881680, 55.272270>,  <29.712572, 34.979580, 55.899128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433901, 34.881680, 55.272270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.541059, 35.264584, 55.228657>,  <29.605354, 35.494324, 55.202488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.541059, 35.264584, 55.228657>,  <29.433901, 34.881680, 55.272270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541059, 35.264584, 55.228657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447494, -0.223851, -0.865817,
		-0.853218, 0.183158, -0.488336,
		0.267896, 0.957258, -0.109032,
		29.621428, 35.551762, 55.195946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166529, 35.061562, 54.639153>,  <29.433901, 34.881680, 55.272270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166529, 35.061562, 54.639153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.457148, 35.318668, 54.736298>,  <29.631519, 35.472931, 54.794586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.457148, 35.318668, 54.736298>,  <29.166529, 35.061562, 54.639153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457148, 35.318668, 54.736298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484398, -0.228454, -0.844492,
		-0.487326, 0.731207, -0.477336,
		0.726548, 0.642763, 0.242864,
		29.675112, 35.511497, 54.809158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404177, 35.285797, 54.059875>,  <29.166529, 35.061562, 54.639153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404177, 35.285797, 54.059875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.714155, 35.372200, 54.297462>,  <29.900143, 35.424042, 54.440014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.714155, 35.372200, 54.297462>,  <29.404177, 35.285797, 54.059875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714155, 35.372200, 54.297462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629997, -0.339229, -0.698590,
		0.050587, 0.915567, -0.398971,
		0.774948, 0.216011, 0.593965,
		29.946640, 35.437004, 54.475651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883595, 35.569096, 53.601337>,  <29.404177, 35.285797, 54.059875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883595, 35.569096, 53.601337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.077600, 35.421295, 53.918381>,  <30.194004, 35.332615, 54.108608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.077600, 35.421295, 53.918381>,  <29.883595, 35.569096, 53.601337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077600, 35.421295, 53.918381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653593, -0.449010, -0.609267,
		0.581016, 0.813546, 0.023728,
		0.485013, -0.369502, 0.792610,
		30.223104, 35.310444, 54.156162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497269, 35.535156, 53.403049>,  <29.883595, 35.569096, 53.601337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497269, 35.535156, 53.403049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.534487, 35.292622, 53.718948>,  <30.556818, 35.147099, 53.908485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.534487, 35.292622, 53.718948>,  <30.497269, 35.535156, 53.403049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534487, 35.292622, 53.718948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735352, -0.492910, -0.465078,
		0.671267, 0.624013, 0.400010,
		0.093046, -0.606339, 0.789744,
		30.562401, 35.110722, 53.955872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241058, 35.470680, 53.490730>,  <30.497269, 35.535156, 53.403049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241058, 35.470680, 53.490730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.105276, 35.166962, 53.712807>,  <31.023806, 34.984730, 53.846050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.105276, 35.166962, 53.712807>,  <31.241058, 35.470680, 53.490730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105276, 35.166962, 53.712807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696790, -0.599479, -0.393839,
		0.631865, 0.253158, 0.732570,
		-0.339457, -0.759300, 0.555187,
		31.003439, 34.939171, 53.879364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837933, 35.079937, 53.719261>,  <31.241058, 35.470680, 53.490730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837933, 35.079937, 53.719261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.532009, 34.822239, 53.717667>,  <31.348455, 34.667622, 53.716709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.532009, 34.822239, 53.717667>,  <31.837933, 35.079937, 53.719261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532009, 34.822239, 53.717667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567491, -0.670731, -0.477570,
		0.304996, -0.367514, 0.878584,
		-0.764808, -0.644246, -0.003990,
		31.302567, 34.628963, 53.716469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188618, 34.442398, 53.607189>,  <31.837933, 35.079937, 53.719261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188618, 34.442398, 53.607189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.808512, 34.320580, 53.581108>,  <31.580448, 34.247490, 53.565460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.808512, 34.320580, 53.581108>,  <32.188618, 34.442398, 53.607189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808512, 34.320580, 53.581108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309651, -0.901403, -0.302636,
		0.033391, -0.307774, 0.950873,
		-0.950264, -0.304544, -0.065204,
		31.523432, 34.229218, 53.561546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258411, 33.817715, 53.856159>,  <32.188618, 34.442398, 53.607189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258411, 33.817715, 53.856159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.922951, 33.819004, 53.638298>,  <31.721674, 33.819778, 53.507580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.922951, 33.819004, 53.638298>,  <32.258411, 33.817715, 53.856159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922951, 33.819004, 53.638298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246435, -0.889527, -0.384723,
		-0.485724, -0.456872, 0.745211,
		-0.838655, 0.003223, -0.544654,
		31.671354, 33.819969, 53.474903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892483, 33.113174, 53.934208>,  <32.258411, 33.817715, 53.856159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892483, 33.113174, 53.934208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.780029, 33.298069, 53.597805>,  <31.712557, 33.409008, 53.395962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.780029, 33.298069, 53.597805>,  <31.892483, 33.113174, 53.934208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780029, 33.298069, 53.597805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055030, -0.867148, -0.495000,
		-0.958089, -0.185443, 0.218349,
		-0.281135, 0.462239, -0.841010,
		31.695688, 33.436741, 53.345501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379288, 32.649349, 53.726681>,  <31.892483, 33.113174, 53.934208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379288, 32.649349, 53.726681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.486475, 32.868786, 53.409889>,  <31.550787, 33.000450, 53.219814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.486475, 32.868786, 53.409889>,  <31.379288, 32.649349, 53.726681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486475, 32.868786, 53.409889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002952, -0.822510, -0.568743,
		-0.963423, 0.150066, -0.222025,
		0.267967, 0.548596, -0.791982,
		31.566866, 33.033363, 53.172295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946585, 32.313568, 53.214417>,  <31.379288, 32.649349, 53.726681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946585, 32.313568, 53.214417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.199991, 32.555752, 53.021721>,  <31.352036, 32.701061, 52.906101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.199991, 32.555752, 53.021721>,  <30.946585, 32.313568, 53.214417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199991, 32.555752, 53.021721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139855, -0.701975, -0.698335,
		-0.760985, 0.375033, -0.529389,
		0.633517, 0.605460, -0.481742,
		31.390047, 32.737389, 52.877197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.959045, 38.384552, 54.349396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.184053, 38.714657, 54.329361>,  <28.319057, 38.912720, 54.317341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.184053, 38.714657, 54.329361>,  <27.959045, 38.384552, 54.349396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184053, 38.714657, 54.329361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285333, 0.250637, 0.925076,
		0.775987, -0.506082, 0.376464,
		0.562520, 0.825265, -0.050090,
		28.352810, 38.962234, 54.314335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175934, 38.501362, 54.952698>,  <27.959045, 38.384552, 54.349396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175934, 38.501362, 54.952698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.218454, 38.873821, 54.813183>,  <28.243967, 39.097298, 54.729473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.218454, 38.873821, 54.813183>,  <28.175934, 38.501362, 54.952698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218454, 38.873821, 54.813183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259763, 0.364601, 0.894198,
		0.959804, -0.004452, 0.280637,
		0.106302, 0.931153, -0.348789,
		28.250345, 39.153168, 54.708546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702208, 38.778011, 55.386337>,  <28.175934, 38.501362, 54.952698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702208, 38.778011, 55.386337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.469923, 39.050171, 55.207523>,  <28.330553, 39.213467, 55.100235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.469923, 39.050171, 55.207523>,  <28.702208, 38.778011, 55.386337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469923, 39.050171, 55.207523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192896, 0.418474, 0.887508,
		0.790928, 0.601615, -0.111767,
		-0.580710, 0.680396, -0.447032,
		28.295710, 39.254292, 55.073414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976980, 39.457119, 55.458466>,  <28.702208, 38.778011, 55.386337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976980, 39.457119, 55.458466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.591391, 39.540092, 55.391857>,  <28.360037, 39.589874, 55.351894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.591391, 39.540092, 55.391857>,  <28.976980, 39.457119, 55.458466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591391, 39.540092, 55.391857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075543, 0.386753, 0.919084,
		0.255046, 0.898552, -0.357149,
		-0.963973, 0.207429, -0.166519,
		28.302198, 39.602322, 55.341900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908257, 40.150257, 55.833755>,  <28.976980, 39.457119, 55.458466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908257, 40.150257, 55.833755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.540094, 40.033310, 55.729927>,  <28.319197, 39.963142, 55.667629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.540094, 40.033310, 55.729927>,  <28.908257, 40.150257, 55.833755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540094, 40.033310, 55.729927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381254, 0.524110, 0.761547,
		-0.086605, 0.799895, -0.593859,
		-0.920405, -0.292364, -0.259573,
		28.263973, 39.945602, 55.652054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414738, 40.755962, 55.815182>,  <28.908257, 40.150257, 55.833755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414738, 40.755962, 55.815182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.158312, 40.453491, 55.867680>,  <28.004456, 40.272007, 55.899178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.158312, 40.453491, 55.867680>,  <28.414738, 40.755962, 55.815182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158312, 40.453491, 55.867680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489179, 0.534352, 0.689327,
		-0.591388, 0.377700, -0.712463,
		-0.641065, -0.756181, 0.131247,
		27.965992, 40.226635, 55.907055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741280, 41.052414, 55.774563>,  <28.414738, 40.755962, 55.815182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741280, 41.052414, 55.774563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.699511, 40.703701, 55.966015>,  <27.674448, 40.494473, 56.080887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.699511, 40.703701, 55.966015>,  <27.741280, 41.052414, 55.774563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699511, 40.703701, 55.966015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596453, 0.440004, 0.671297,
		-0.795826, -0.215382, -0.565925,
		-0.104424, -0.871784, 0.478632,
		27.668184, 40.442165, 56.109604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027027, 41.019188, 55.871613>,  <27.741280, 41.052414, 55.774563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027027, 41.019188, 55.871613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.224134, 40.786457, 56.130428>,  <27.342398, 40.646820, 56.285717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.224134, 40.786457, 56.130428>,  <27.027027, 41.019188, 55.871613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224134, 40.786457, 56.130428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587295, 0.326304, 0.740682,
		-0.642079, -0.744987, -0.180911,
		0.492766, -0.581825, 0.647040,
		27.371964, 40.611908, 56.324539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531496, 40.567783, 56.279682>,  <27.027027, 41.019188, 55.871613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531496, 40.567783, 56.279682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.860868, 40.601776, 56.504089>,  <27.058493, 40.622173, 56.638733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.860868, 40.601776, 56.504089>,  <26.531496, 40.567783, 56.279682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860868, 40.601776, 56.504089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560646, 0.274148, 0.781357,
		-0.087399, -0.957925, 0.273388,
		0.823431, 0.084984, 0.561017,
		27.107897, 40.627274, 56.672394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288208, 40.282845, 56.914093>,  <26.531496, 40.567783, 56.279682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288208, 40.282845, 56.914093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.627590, 40.478680, 56.994514>,  <26.831219, 40.596180, 57.042767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.627590, 40.478680, 56.994514>,  <26.288208, 40.282845, 56.914093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627590, 40.478680, 56.994514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332073, 0.196629, 0.922531,
		0.412130, -0.849492, 0.329412,
		0.848455, 0.489592, 0.201056,
		26.882126, 40.625557, 57.054832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522438, 40.030060, 57.501404>,  <26.288208, 40.282845, 56.914093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522438, 40.030060, 57.501404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.739580, 40.365978, 57.504353>,  <26.869865, 40.567528, 57.506123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.739580, 40.365978, 57.504353>,  <26.522438, 40.030060, 57.501404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.739580, 40.365978, 57.504353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257151, 0.157854, 0.953391,
		0.799487, -0.519451, 0.301646,
		0.542857, 0.839793, 0.007375,
		26.902437, 40.617916, 57.506565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948956, 39.945240, 58.139427>,  <26.522438, 40.030060, 57.501404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948956, 39.945240, 58.139427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.900463, 40.314903, 57.994518>,  <26.871368, 40.536701, 57.907574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.900463, 40.314903, 57.994518>,  <26.948956, 39.945240, 58.139427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900463, 40.314903, 57.994518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284083, 0.317398, 0.904741,
		0.951105, 0.212598, 0.224058,
		-0.121230, 0.924154, -0.362274,
		26.864094, 40.592148, 57.885838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238602, 40.357552, 58.682087>,  <26.948956, 39.945240, 58.139427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238602, 40.357552, 58.682087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.007107, 40.608131, 58.473232>,  <26.868210, 40.758480, 58.347919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.007107, 40.608131, 58.473232>,  <27.238602, 40.357552, 58.682087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007107, 40.608131, 58.473232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337601, 0.398777, 0.852644,
		0.742353, 0.669731, -0.019298,
		-0.578738, 0.626448, -0.522135,
		26.833485, 40.796066, 58.316593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930086, 40.368690, 59.442753>,  <27.238602, 40.357552, 58.682087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930086, 40.368690, 59.442753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.966438, 40.077099, 59.714142>,  <26.988249, 39.902142, 59.876976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.966438, 40.077099, 59.714142>,  <26.930086, 40.368690, 59.442753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966438, 40.077099, 59.714142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076264, -0.674197, -0.734604,
		0.992937, 0.118503, -0.005674,
		0.090878, -0.728983, 0.678473,
		26.993702, 39.858402, 59.917683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512005, 39.909462, 59.318909>,  <26.930086, 40.368690, 59.442753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512005, 39.909462, 59.318909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.289854, 39.678078, 59.557888>,  <27.156565, 39.539246, 59.701275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.289854, 39.678078, 59.557888>,  <27.512005, 39.909462, 59.318909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289854, 39.678078, 59.557888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221894, -0.795463, -0.563916,
		0.801449, -0.180615, 0.570138,
		-0.555376, -0.578460, 0.597446,
		27.123241, 39.504539, 59.737122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946657, 39.322819, 59.406971>,  <27.512005, 39.909462, 59.318909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946657, 39.322819, 59.406971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.567297, 39.227982, 59.491188>,  <27.339682, 39.171078, 59.541718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.567297, 39.227982, 59.491188>,  <27.946657, 39.322819, 59.406971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567297, 39.227982, 59.491188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134318, -0.901878, -0.410578,
		0.287226, -0.361113, 0.887186,
		-0.948399, -0.237094, 0.210539,
		27.282778, 39.156853, 59.554348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006760, 38.765099, 59.818932>,  <27.946657, 39.322819, 59.406971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006760, 38.765099, 59.818932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.647898, 38.761475, 59.642284>,  <27.432581, 38.759300, 59.536297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.647898, 38.761475, 59.642284>,  <28.006760, 38.765099, 59.818932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647898, 38.761475, 59.642284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213815, -0.883761, -0.416232,
		-0.386514, -0.467851, 0.794810,
		-0.897157, -0.009063, -0.441619,
		27.378750, 38.758755, 59.509800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629131, 38.131081, 59.991402>,  <28.006760, 38.765099, 59.818932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629131, 38.131081, 59.991402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.433187, 38.231941, 59.657585>,  <27.315620, 38.292458, 59.457294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.433187, 38.231941, 59.657585>,  <27.629131, 38.131081, 59.991402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433187, 38.231941, 59.657585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296501, -0.852009, -0.431472,
		-0.819830, -0.458803, 0.342604,
		-0.489863, 0.252151, -0.834538,
		27.286230, 38.307587, 59.407223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228369, 37.518597, 59.687794>,  <27.629131, 38.131081, 59.991402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228369, 37.518597, 59.687794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.297560, 37.762817, 59.378654>,  <27.339073, 37.909351, 59.193169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.297560, 37.762817, 59.378654>,  <27.228369, 37.518597, 59.687794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297560, 37.762817, 59.378654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124378, -0.791939, -0.597798,
		-0.977041, 0.007279, -0.212927,
		0.172976, 0.610556, -0.772852,
		27.349453, 37.945984, 59.146797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071888, 37.028496, 59.126450>,  <27.228369, 37.518597, 59.687794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071888, 37.028496, 59.126450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.180418, 37.351955, 58.917656>,  <27.245537, 37.546032, 58.792381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.180418, 37.351955, 58.917656>,  <27.071888, 37.028496, 59.126450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180418, 37.351955, 58.917656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105341, -0.564016, -0.819017,
		-0.956706, 0.167235, -0.238216,
		0.271326, 0.808652, -0.521980,
		27.261816, 37.594551, 58.761063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719311, 36.964512, 58.552120>,  <27.071888, 37.028496, 59.126450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719311, 36.964512, 58.552120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.078041, 37.135891, 58.508053>,  <27.293280, 37.238720, 58.481613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.078041, 37.135891, 58.508053>,  <26.719311, 36.964512, 58.552120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078041, 37.135891, 58.508053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237691, -0.676719, -0.696817,
		-0.373105, 0.598736, -0.708737,
		0.896825, 0.428446, -0.110173,
		27.347088, 37.264423, 58.475002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832613, 36.883999, 57.851711>,  <26.719311, 36.964512, 58.552120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832613, 36.883999, 57.851711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.192005, 36.991711, 57.990402>,  <27.407640, 37.056339, 58.073616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.192005, 36.991711, 57.990402>,  <26.832613, 36.883999, 57.851711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192005, 36.991711, 57.990402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438900, -0.532746, -0.723566,
		-0.010125, 0.802289, -0.596850,
		0.898479, 0.269284, 0.346731,
		27.461548, 37.072495, 58.094421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206318, 37.171787, 57.195499>,  <26.832613, 36.883999, 57.851711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206318, 37.171787, 57.195499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.539886, 37.109478, 57.407276>,  <27.740028, 37.072094, 57.534344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.539886, 37.109478, 57.407276>,  <27.206318, 37.171787, 57.195499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539886, 37.109478, 57.407276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456477, -0.344475, -0.820345,
		0.310166, 0.925782, -0.216159,
		0.833922, -0.155771, 0.529442,
		27.790064, 37.062748, 57.566109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725512, 37.320618, 56.835403>,  <27.206318, 37.171787, 57.195499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725512, 37.320618, 56.835403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.925377, 37.091839, 57.095623>,  <28.045296, 36.954571, 57.251755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.925377, 37.091839, 57.095623>,  <27.725512, 37.320618, 56.835403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925377, 37.091839, 57.095623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456280, -0.464603, -0.758915,
		0.736304, 0.676037, 0.028821,
		0.499664, -0.571943, 0.650551,
		28.075275, 36.920258, 57.290787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353868, 37.336327, 56.546333>,  <27.725512, 37.320618, 56.835403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353868, 37.336327, 56.546333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.371845, 37.019623, 56.790005>,  <28.382631, 36.829601, 56.936207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.371845, 37.019623, 56.790005>,  <28.353868, 37.336327, 56.546333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371845, 37.019623, 56.790005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433867, -0.533812, -0.725813,
		0.899856, 0.296920, 0.319529,
		0.044940, -0.791760, 0.609177,
		28.385326, 36.782093, 56.972759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015207, 37.231762, 56.508793>,  <28.353868, 37.336327, 56.546333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015207, 37.231762, 56.508793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.820835, 36.896526, 56.607979>,  <28.704212, 36.695385, 56.667492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.820835, 36.896526, 56.607979>,  <29.015207, 37.231762, 56.508793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820835, 36.896526, 56.607979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538806, -0.510644, -0.670023,
		0.688158, -0.191979, 0.699702,
		-0.485929, -0.838085, 0.247964,
		28.675056, 36.645100, 56.682369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474758, 36.770058, 56.843052>,  <29.015207, 37.231762, 56.508793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474758, 36.770058, 56.843052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.177578, 36.547047, 56.694901>,  <28.999269, 36.413239, 56.606010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.177578, 36.547047, 56.694901>,  <29.474758, 36.770058, 56.843052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177578, 36.547047, 56.694901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610561, -0.337735, -0.716345,
		0.274294, -0.758350, 0.591327,
		-0.742952, -0.557530, -0.370380,
		28.954693, 36.379787, 56.583786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856838, 36.104008, 56.751442>,  <29.474758, 36.770058, 56.843052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856838, 36.104008, 56.751442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.519707, 36.066124, 56.539528>,  <29.317429, 36.043392, 56.412380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.519707, 36.066124, 56.539528>,  <29.856838, 36.104008, 56.751442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519707, 36.066124, 56.539528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530092, -0.316152, -0.786798,
		-0.092973, -0.943969, 0.316667,
		-0.842828, -0.094711, -0.529784,
		29.266859, 36.037712, 56.380592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206476, 35.512421, 57.135601>,  <29.856838, 36.104008, 56.751442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206476, 35.512421, 57.135601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.570930, 35.634712, 57.246132>,  <30.789602, 35.708088, 57.312450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.570930, 35.634712, 57.246132>,  <30.206476, 35.512421, 57.135601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570930, 35.634712, 57.246132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389482, 0.419728, 0.819837,
		0.134667, -0.854609, 0.501506,
		0.911136, 0.305732, 0.276331,
		30.844271, 35.726433, 57.329033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288292, 35.395237, 57.850418>,  <30.206476, 35.512421, 57.135601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288292, 35.395237, 57.850418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.582125, 35.661564, 57.798141>,  <30.758425, 35.821358, 57.766777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.582125, 35.661564, 57.798141>,  <30.288292, 35.395237, 57.850418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582125, 35.661564, 57.798141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329106, 0.518062, 0.789495,
		0.593361, -0.536940, 0.599683,
		0.734583, 0.665814, -0.130687,
		30.802500, 35.861309, 57.758934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674881, 35.642372, 58.590839>,  <30.288292, 35.395237, 57.850418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674881, 35.642372, 58.590839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.748182, 35.933540, 58.326550>,  <30.792164, 36.108242, 58.167976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.748182, 35.933540, 58.326550>,  <30.674881, 35.642372, 58.590839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748182, 35.933540, 58.326550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237706, 0.684972, 0.688701,
		0.953894, 0.030850, 0.298554,
		0.183255, 0.727916, -0.660724,
		30.803160, 36.151917, 58.128334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059017, 36.180084, 58.894535>,  <30.674881, 35.642372, 58.590839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059017, 36.180084, 58.894535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.889297, 36.350636, 58.574993>,  <30.787466, 36.452969, 58.383266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.889297, 36.350636, 58.574993>,  <31.059017, 36.180084, 58.894535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889297, 36.350636, 58.574993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407080, 0.698216, 0.588881,
		0.808861, 0.575059, -0.122681,
		-0.424299, 0.426382, -0.798855,
		30.762009, 36.478550, 58.335335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195295, 36.840103, 59.091381>,  <31.059017, 36.180084, 58.894535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195295, 36.840103, 59.091381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.956285, 36.897114, 58.775749>,  <30.812880, 36.931320, 58.586369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.956285, 36.897114, 58.775749>,  <31.195295, 36.840103, 59.091381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956285, 36.897114, 58.775749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393753, 0.805102, 0.443586,
		0.698514, 0.575758, -0.424949,
		-0.597526, 0.142526, -0.789081,
		30.777027, 36.939873, 58.539024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157909, 37.537815, 59.044270>,  <31.195295, 36.840103, 59.091381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157909, 37.537815, 59.044270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.834572, 37.393112, 58.858490>,  <30.640570, 37.306290, 58.747025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.834572, 37.393112, 58.858490>,  <31.157909, 37.537815, 59.044270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834572, 37.393112, 58.858490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552471, 0.738662, 0.386204,
		0.203357, 0.568779, -0.796954,
		-0.808345, -0.361757, -0.464447,
		30.592068, 37.284584, 58.719154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890877, 38.136810, 58.734535>,  <31.157909, 37.537815, 59.044270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890877, 38.136810, 58.734535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.624262, 37.844769, 58.794773>,  <30.464293, 37.669544, 58.830914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.624262, 37.844769, 58.794773>,  <30.890877, 38.136810, 58.734535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624262, 37.844769, 58.794773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632335, 0.660712, 0.404489,
		-0.394817, 0.174382, -0.902059,
		-0.666537, -0.730103, 0.150593,
		30.424301, 37.625736, 58.839951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777794, 38.642689, 58.138802>,  <30.890877, 38.136810, 58.734535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777794, 38.642689, 58.138802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.976746, 38.986012, 58.088314>,  <31.096117, 39.192005, 58.058022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.976746, 38.986012, 58.088314>,  <30.777794, 38.642689, 58.138802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976746, 38.986012, 58.088314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574538, -0.434901, -0.693374,
		-0.650016, 0.272354, -0.709438,
		0.497379, 0.858303, -0.126214,
		31.125959, 39.243504, 58.050449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015459, 38.701817, 57.390785>,  <30.777794, 38.642689, 58.138802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015459, 38.701817, 57.390785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.244808, 38.951916, 57.602562>,  <31.382418, 39.101974, 57.729626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.244808, 38.951916, 57.602562>,  <31.015459, 38.701817, 57.390785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244808, 38.951916, 57.602562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755621, -0.153793, -0.636698,
		-0.316672, 0.765120, -0.560634,
		0.573372, 0.625251, 0.529439,
		31.416821, 39.139492, 57.761395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446781, 39.109398, 56.858810>,  <31.015459, 38.701817, 57.390785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446781, 39.109398, 56.858810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.637043, 39.121346, 57.210461>,  <31.751200, 39.128513, 57.421452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.637043, 39.121346, 57.210461>,  <31.446781, 39.109398, 56.858810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637043, 39.121346, 57.210461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805770, -0.415670, -0.421844,
		0.352825, 0.909025, -0.221785,
		0.475656, 0.029871, 0.879124,
		31.779739, 39.130306, 57.474197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125931, 39.507568, 56.760418>,  <31.446781, 39.109398, 56.858810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125931, 39.507568, 56.760418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.179977, 39.317383, 57.108139>,  <32.212406, 39.203270, 57.316772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.179977, 39.317383, 57.108139>,  <32.125931, 39.507568, 56.760418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179977, 39.317383, 57.108139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956959, -0.164817, -0.238884,
		0.256855, 0.864159, 0.432729,
		0.135112, -0.475463, 0.869299,
		32.220512, 39.174744, 57.368927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869869, 39.713539, 57.057873>,  <32.125931, 39.507568, 56.760418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869869, 39.713539, 57.057873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.752876, 39.385429, 57.254486>,  <32.682682, 39.188564, 57.372456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.752876, 39.385429, 57.254486>,  <32.869869, 39.713539, 57.057873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752876, 39.385429, 57.254486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927016, -0.369379, -0.064812,
		0.234726, 0.436704, 0.868443,
		-0.292481, -0.820274, 0.491534,
		32.665131, 39.139347, 57.401947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325996, 39.548801, 57.678570>,  <32.869869, 39.713539, 57.057873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325996, 39.548801, 57.678570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.186726, 39.196835, 57.549252>,  <33.103165, 38.985657, 57.471661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.186726, 39.196835, 57.549252>,  <33.325996, 39.548801, 57.678570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186726, 39.196835, 57.549252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937244, -0.319905, -0.138691,
		0.018612, -0.351298, 0.936079,
		-0.348178, -0.879915, -0.323297,
		33.082272, 38.932861, 57.452263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939301, 38.928326, 57.924641>,  <33.325996, 39.548801, 57.678570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939301, 38.928326, 57.924641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.619450, 38.706421, 57.832699>,  <32.427540, 38.573277, 57.777534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.619450, 38.706421, 57.832699>,  <32.939301, 38.928326, 57.924641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619450, 38.706421, 57.832699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572682, 0.589369, 0.569807,
		-0.180636, 0.587269, -0.788978,
		-0.799628, -0.554761, -0.229857,
		32.379562, 38.539993, 57.763741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<26.578068, 44.209671, 56.363949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628336, 43.846870, 56.524723>,  <26.658497, 43.629189, 56.621185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628336, 43.846870, 56.524723>,  <26.578068, 44.209671, 56.363949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628336, 43.846870, 56.524723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526017, -0.282585, -0.802155,
		0.841138, 0.312229, 0.441588,
		0.125670, -0.907005, 0.401931,
		26.666037, 43.574768, 56.645302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215071, 44.008747, 56.207645>,  <26.578068, 44.209671, 56.363949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215071, 44.008747, 56.207645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033104, 43.665207, 56.301819>,  <26.923923, 43.459084, 56.358322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033104, 43.665207, 56.301819>,  <27.215071, 44.008747, 56.207645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033104, 43.665207, 56.301819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526894, -0.472718, -0.706342,
		0.717936, -0.197277, 0.667570,
		-0.454918, -0.858848, 0.235437,
		26.896629, 43.407551, 56.372452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746338, 43.651459, 55.955956>,  <27.215071, 44.008747, 56.207645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746338, 43.651459, 55.955956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423225, 43.416454, 55.975224>,  <27.229357, 43.275452, 55.986786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423225, 43.416454, 55.975224>,  <27.746338, 43.651459, 55.955956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423225, 43.416454, 55.975224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328793, -0.516875, -0.790402,
		0.489268, -0.622634, 0.610691,
		-0.807782, -0.587510, 0.048173,
		27.180891, 43.240200, 55.989674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983143, 42.999119, 55.948231>,  <27.746338, 43.651459, 55.955956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983143, 42.999119, 55.948231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.609541, 42.986500, 55.805885>,  <27.385380, 42.978928, 55.720478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.609541, 42.986500, 55.805885>,  <27.983143, 42.999119, 55.948231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609541, 42.986500, 55.805885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322744, -0.501664, -0.802602,
		-0.153201, -0.864488, 0.478739,
		-0.934006, -0.031550, -0.355864,
		27.329340, 42.977036, 55.699127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819014, 42.283710, 55.827908>,  <27.983143, 42.999119, 55.948231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819014, 42.283710, 55.827908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570171, 42.503075, 55.604397>,  <27.420866, 42.634693, 55.470291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570171, 42.503075, 55.604397>,  <27.819014, 42.283710, 55.827908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570171, 42.503075, 55.604397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289745, -0.501757, -0.815039,
		-0.727344, -0.668944, 0.153248,
		-0.622108, 0.548411, -0.558773,
		27.383539, 42.667599, 55.436764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516769, 41.853836, 55.410446>,  <27.819014, 42.283710, 55.827908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.516769, 41.853836, 55.410446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494631, 42.209919, 55.229572>,  <27.481348, 42.423569, 55.121048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494631, 42.209919, 55.229572>,  <27.516769, 41.853836, 55.410446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494631, 42.209919, 55.229572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415287, -0.391324, -0.821220,
		-0.908005, -0.233238, -0.348032,
		-0.055346, 0.890205, -0.452185,
		27.478027, 42.476982, 55.093918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379847, 41.616203, 54.771526>,  <27.516769, 41.853836, 55.410446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.379847, 41.616203, 54.771526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490183, 41.994236, 54.701401>,  <27.556385, 42.221054, 54.659325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490183, 41.994236, 54.701401>,  <27.379847, 41.616203, 54.771526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490183, 41.994236, 54.701401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448492, -0.287865, -0.846161,
		-0.850157, 0.154781, -0.503266,
		0.275842, 0.945080, -0.175312,
		27.572935, 42.277760, 54.648808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199253, 41.796757, 54.114586>,  <27.379847, 41.616203, 54.771526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199253, 41.796757, 54.114586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466171, 42.084866, 54.190403>,  <27.626322, 42.257732, 54.235893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466171, 42.084866, 54.190403>,  <27.199253, 41.796757, 54.114586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466171, 42.084866, 54.190403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457553, -0.195646, -0.867391,
		-0.587676, 0.665529, -0.460117,
		0.667294, 0.720273, 0.189538,
		27.666359, 42.300949, 54.247265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279755, 42.246620, 53.515091>,  <27.199253, 41.796757, 54.114586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279755, 42.246620, 53.515091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617506, 42.268574, 53.728264>,  <27.820156, 42.281746, 53.856167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617506, 42.268574, 53.728264>,  <27.279755, 42.246620, 53.515091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617506, 42.268574, 53.728264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523542, -0.295641, -0.799062,
		0.113701, 0.953721, -0.278366,
		0.844379, 0.054882, 0.532928,
		27.870819, 42.285038, 53.888142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666250, 42.776283, 53.170036>,  <27.279755, 42.246620, 53.515091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666250, 42.776283, 53.170036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934023, 42.583073, 53.395798>,  <28.094687, 42.467144, 53.531254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934023, 42.583073, 53.395798>,  <27.666250, 42.776283, 53.170036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934023, 42.583073, 53.395798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567775, -0.157262, -0.808022,
		0.479057, 0.861366, 0.168976,
		0.669430, -0.483029, 0.564400,
		28.134851, 42.438164, 53.565117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315561, 43.169361, 53.158478>,  <27.666250, 42.776283, 53.170036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315561, 43.169361, 53.158478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431515, 42.797726, 53.250355>,  <28.501087, 42.574745, 53.305481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431515, 42.797726, 53.250355>,  <28.315561, 43.169361, 53.158478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431515, 42.797726, 53.250355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603759, -0.008691, -0.797119,
		0.742591, 0.369755, 0.558426,
		0.289885, -0.929089, 0.229697,
		28.518480, 42.518997, 53.319263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037169, 43.202393, 53.173653>,  <28.315561, 43.169361, 53.158478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037169, 43.202393, 53.173653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912594, 42.831608, 53.089985>,  <28.837849, 42.609138, 53.039783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912594, 42.831608, 53.089985>,  <29.037169, 43.202393, 53.173653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912594, 42.831608, 53.089985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494861, 0.029707, -0.868464,
		0.811245, -0.373982, 0.449465,
		-0.311438, -0.926960, -0.209169,
		28.819162, 42.553520, 53.027233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597986, 43.622906, 53.503376>,  <29.037169, 43.202393, 53.173653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597986, 43.622906, 53.503376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990299, 43.607147, 53.579807>,  <30.225687, 43.597691, 53.625664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990299, 43.607147, 53.579807>,  <29.597986, 43.622906, 53.503376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990299, 43.607147, 53.579807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172887, 0.278314, 0.944802,
		-0.090402, -0.959682, 0.266155,
		0.980784, -0.039397, 0.191077,
		30.284534, 43.595329, 53.637131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678389, 43.180897, 54.070232>,  <29.597986, 43.622906, 53.503376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678389, 43.180897, 54.070232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004244, 43.412052, 54.050587>,  <30.199757, 43.550747, 54.038799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004244, 43.412052, 54.050587>,  <29.678389, 43.180897, 54.070232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004244, 43.412052, 54.050587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023938, 0.118107, 0.992712,
		0.579477, -0.807525, 0.110048,
		0.814637, 0.577888, -0.049110,
		30.248634, 43.585419, 54.035854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088175, 42.996613, 54.570995>,  <29.678389, 43.180897, 54.070232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088175, 42.996613, 54.570995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267235, 43.349033, 54.509876>,  <30.374672, 43.560486, 54.473206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267235, 43.349033, 54.509876>,  <30.088175, 42.996613, 54.570995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267235, 43.349033, 54.509876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130721, 0.104561, 0.985890,
		0.884602, -0.461309, -0.068365,
		0.447652, 0.881057, -0.152798,
		30.401531, 43.613350, 54.464035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734924, 42.921726, 54.853519>,  <30.088175, 42.996613, 54.570995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734924, 42.921726, 54.853519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686361, 43.318707, 54.846619>,  <30.657225, 43.556896, 54.842480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686361, 43.318707, 54.846619>,  <30.734924, 42.921726, 54.853519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686361, 43.318707, 54.846619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122967, 0.032283, 0.991885,
		0.984957, 0.118299, -0.125959,
		-0.121406, 0.992453, -0.017251,
		30.649940, 43.616444, 54.841442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296894, 43.263763, 55.234245>,  <30.734924, 42.921726, 54.853519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296894, 43.263763, 55.234245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988287, 43.518246, 55.234047>,  <30.803122, 43.670937, 55.233929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988287, 43.518246, 55.234047>,  <31.296894, 43.263763, 55.234245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988287, 43.518246, 55.234047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033595, -0.039964, 0.998636,
		0.635318, 0.770484, 0.052206,
		-0.771520, 0.636205, -0.000495,
		30.756830, 43.709106, 55.233898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525095, 43.516052, 55.835278>,  <31.296894, 43.263763, 55.234245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525095, 43.516052, 55.835278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150455, 43.640858, 55.771488>,  <30.925673, 43.715740, 55.733215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150455, 43.640858, 55.771488>,  <31.525095, 43.516052, 55.835278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150455, 43.640858, 55.771488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264045, -0.329245, 0.906575,
		0.230361, 0.891204, 0.390756,
		-0.936597, 0.312016, -0.159473,
		30.869476, 43.734463, 55.723648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356228, 43.934929, 56.371655>,  <31.525095, 43.516052, 55.835278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356228, 43.934929, 56.371655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018717, 43.788754, 56.214432>,  <30.816210, 43.701050, 56.120098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018717, 43.788754, 56.214432>,  <31.356228, 43.934929, 56.371655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018717, 43.788754, 56.214432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248160, -0.383716, 0.889482,
		-0.475873, 0.848067, 0.233083,
		-0.843778, -0.365439, -0.393056,
		30.765583, 43.679123, 56.096516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057419, 43.916439, 56.952633>,  <31.356228, 43.934929, 56.371655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057419, 43.916439, 56.952633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780064, 43.734802, 56.728844>,  <30.613649, 43.625820, 56.594570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780064, 43.734802, 56.728844>,  <31.057419, 43.916439, 56.952633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780064, 43.734802, 56.728844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385078, -0.422739, 0.820370,
		-0.609036, 0.784276, 0.118261,
		-0.693390, -0.454095, -0.559471,
		30.572046, 43.598576, 56.561001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479254, 43.996643, 57.314804>,  <31.057419, 43.916439, 56.952633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479254, 43.996643, 57.314804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371220, 43.684841, 57.088730>,  <30.306400, 43.497761, 56.953087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371220, 43.684841, 57.088730>,  <30.479254, 43.996643, 57.314804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371220, 43.684841, 57.088730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395987, -0.445130, 0.803152,
		-0.877638, 0.440724, -0.188450,
		-0.270084, -0.779500, -0.565185,
		30.290195, 43.450993, 56.919174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881432, 43.790295, 57.641106>,  <30.479254, 43.996643, 57.314804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881432, 43.790295, 57.641106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980162, 43.471413, 57.420727>,  <30.039400, 43.280083, 57.288498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980162, 43.471413, 57.420727>,  <29.881432, 43.790295, 57.641106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980162, 43.471413, 57.420727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278447, -0.602909, 0.747642,
		-0.928194, -0.031127, -0.370792,
		0.246826, -0.797203, -0.550950,
		30.054209, 43.232250, 57.255444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347258, 43.362457, 57.610050>,  <29.881432, 43.790295, 57.641106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347258, 43.362457, 57.610050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635695, 43.097775, 57.527908>,  <29.808756, 42.938965, 57.478622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635695, 43.097775, 57.527908>,  <29.347258, 43.362457, 57.610050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635695, 43.097775, 57.527908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320238, -0.581154, 0.748136,
		-0.614395, -0.473707, -0.630967,
		0.721087, -0.661711, -0.205360,
		29.852022, 42.899261, 57.466301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069324, 42.622887, 57.709637>,  <29.347258, 43.362457, 57.610050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069324, 42.622887, 57.709637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463364, 42.555439, 57.723190>,  <29.699787, 42.514973, 57.731323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463364, 42.555439, 57.723190>,  <29.069324, 42.622887, 57.709637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463364, 42.555439, 57.723190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110719, -0.470993, 0.875161,
		-0.131608, -0.865872, -0.482644,
		0.985099, -0.168616, 0.033882,
		29.758894, 42.504852, 57.733356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091675, 41.880745, 57.810490>,  <29.069324, 42.622887, 57.709637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091675, 41.880745, 57.810490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417543, 42.085609, 57.919300>,  <29.613064, 42.208530, 57.984585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417543, 42.085609, 57.919300>,  <29.091675, 41.880745, 57.810490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417543, 42.085609, 57.919300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014036, -0.451521, 0.892150,
		0.579754, -0.730627, -0.360652,
		0.814671, 0.512165, 0.272026,
		29.661945, 42.239258, 58.000908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532661, 41.404182, 58.076492>,  <29.091675, 41.880745, 57.810490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532661, 41.404182, 58.076492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667871, 41.747009, 58.232021>,  <29.748997, 41.952705, 58.325336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667871, 41.747009, 58.232021>,  <29.532661, 41.404182, 58.076492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667871, 41.747009, 58.232021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155354, -0.356658, 0.921228,
		0.928226, -0.371803, 0.012589,
		0.338025, 0.857064, 0.388820,
		29.769279, 42.004128, 58.348667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199486, 41.408703, 58.762032>,  <29.532661, 41.404182, 58.076492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199486, 41.408703, 58.762032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318975, 41.257530, 59.112560>,  <29.390669, 41.166828, 59.322876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318975, 41.257530, 59.112560>,  <29.199486, 41.408703, 58.762032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318975, 41.257530, 59.112560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810667, -0.384036, -0.441967,
		0.503570, 0.842429, 0.191654,
		0.298724, -0.377929, 0.876318,
		29.408592, 41.144150, 59.375454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822639, 41.663006, 58.967896>,  <29.199486, 41.408703, 58.762032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822639, 41.663006, 58.967896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763803, 41.292217, 59.105927>,  <29.728502, 41.069744, 59.188747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.763803, 41.292217, 59.105927>,  <29.822639, 41.663006, 58.967896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763803, 41.292217, 59.105927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902194, -0.268750, -0.337370,
		0.405475, 0.261707, 0.875842,
		-0.147090, -0.926975, 0.345082,
		29.719677, 41.014126, 59.209450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494263, 41.421753, 59.269306>,  <29.822639, 41.663006, 58.967896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494263, 41.421753, 59.269306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310373, 41.071461, 59.210312>,  <30.200041, 40.861286, 59.174915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310373, 41.071461, 59.210312>,  <30.494263, 41.421753, 59.269306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310373, 41.071461, 59.210312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802676, -0.338695, -0.490914,
		0.379955, -0.344067, 0.858634,
		-0.459722, -0.875730, -0.147485,
		30.172457, 40.808743, 59.166065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053675, 40.904228, 59.414303>,  <30.494263, 41.421753, 59.269306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053675, 40.904228, 59.414303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750814, 40.728657, 59.220783>,  <30.569098, 40.623314, 59.104671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750814, 40.728657, 59.220783>,  <31.053675, 40.904228, 59.414303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750814, 40.728657, 59.220783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637849, -0.656582, -0.402553,
		-0.140961, -0.613384, 0.777104,
		-0.757152, -0.438931, -0.483799,
		30.523668, 40.596977, 59.075645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148617, 40.180351, 59.612915>,  <31.053675, 40.904228, 59.414303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148617, 40.180351, 59.612915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918966, 40.183479, 59.285423>,  <30.781176, 40.185356, 59.088928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918966, 40.183479, 59.285423>,  <31.148617, 40.180351, 59.612915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918966, 40.183479, 59.285423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590264, -0.689035, -0.420500,
		-0.567423, -0.724686, 0.390974,
		-0.574125, 0.007824, -0.818731,
		30.746729, 40.185825, 59.039803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982683, 39.428341, 59.360645>,  <31.148617, 40.180351, 59.612915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982683, 39.428341, 59.360645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959103, 39.667728, 59.041054>,  <30.944954, 39.811359, 58.849300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959103, 39.667728, 59.041054>,  <30.982683, 39.428341, 59.360645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959103, 39.667728, 59.041054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546109, -0.650649, -0.527657,
		-0.835638, -0.467432, -0.288473,
		-0.058950, 0.598468, -0.798975,
		30.941418, 39.847267, 58.801361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668882, 39.027985, 58.801315>,  <30.982683, 39.428341, 59.360645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668882, 39.027985, 58.801315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902798, 39.299290, 58.623333>,  <31.043146, 39.462074, 58.516544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902798, 39.299290, 58.623333>,  <30.668882, 39.027985, 58.801315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902798, 39.299290, 58.623333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342705, -0.703740, -0.622337,
		-0.735238, 0.211448, -0.643984,
		0.584789, 0.678262, -0.444952,
		31.078234, 39.502769, 58.489849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186880, 38.425236, 58.742870>,  <30.668882, 39.027985, 58.801315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186880, 38.425236, 58.742870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106152, 38.074196, 58.916805>,  <30.057714, 37.863571, 59.021168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106152, 38.074196, 58.916805>,  <30.186880, 38.425236, 58.742870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106152, 38.074196, 58.916805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542883, 0.469768, 0.696130,
		-0.815197, -0.095572, -0.571244,
		-0.201821, -0.877601, 0.434838,
		30.045605, 37.810917, 59.047256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560829, 38.617447, 59.096889>,  <30.186880, 38.425236, 58.742870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560829, 38.617447, 59.096889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659170, 38.264095, 59.256489>,  <29.718174, 38.052086, 59.352249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659170, 38.264095, 59.256489>,  <29.560829, 38.617447, 59.096889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659170, 38.264095, 59.256489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603925, 0.182373, 0.775896,
		-0.758176, -0.431719, -0.488659,
		0.245851, -0.883379, 0.398997,
		29.732925, 37.999081, 59.376186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916222, 38.264091, 59.226681>,  <29.560829, 38.617447, 59.096889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916222, 38.264091, 59.226681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191973, 38.111107, 59.472763>,  <29.357424, 38.019318, 59.620415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191973, 38.111107, 59.472763>,  <28.916222, 38.264091, 59.226681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191973, 38.111107, 59.472763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502052, 0.359967, 0.786363,
		-0.522209, -0.850968, 0.056137,
		0.689378, -0.382462, 0.615208,
		29.398787, 37.996368, 59.657326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558268, 38.008442, 59.852108>,  <28.916222, 38.264091, 59.226681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558268, 38.008442, 59.852108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934361, 38.054916, 59.980148>,  <29.160017, 38.082802, 60.056973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934361, 38.054916, 59.980148>,  <28.558268, 38.008442, 59.852108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934361, 38.054916, 59.980148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339919, 0.376740, 0.861697,
		-0.020476, -0.919003, 0.393718,
		0.940232, 0.116189, 0.320101,
		29.216431, 38.089771, 60.076180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568348, 37.661602, 60.524338>,  <28.558268, 38.008442, 59.852108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568348, 37.661602, 60.524338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872688, 37.920799, 60.538239>,  <29.055292, 38.076317, 60.546577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872688, 37.920799, 60.538239>,  <28.568348, 37.661602, 60.524338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872688, 37.920799, 60.538239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304747, 0.309522, 0.900736,
		0.572916, -0.695917, 0.432975,
		0.760853, 0.647993, 0.034749,
		29.100945, 38.115196, 60.548664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594374, 37.797897, 61.235577>,  <28.568348, 37.661602, 60.524338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594374, 37.797897, 61.235577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797308, 38.100506, 61.070518>,  <28.919069, 38.282070, 60.971481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797308, 38.100506, 61.070518>,  <28.594374, 37.797897, 61.235577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797308, 38.100506, 61.070518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328999, 0.612622, 0.718647,
		0.796473, -0.228835, 0.559702,
		0.507337, 0.756524, -0.412650,
		28.949509, 38.327461, 60.946724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863756, 38.077782, 61.759487>,  <28.594374, 37.797897, 61.235577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863756, 38.077782, 61.759487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864851, 38.378731, 61.495995>,  <28.865507, 38.559299, 61.337898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864851, 38.378731, 61.495995>,  <28.863756, 38.077782, 61.759487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864851, 38.378731, 61.495995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346900, 0.618540, 0.705032,
		0.937898, 0.226583, 0.262692,
		0.002737, 0.752376, -0.658729,
		28.865673, 38.604443, 61.298374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131866, 38.632023, 62.136192>,  <28.863756, 38.077782, 61.759487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131866, 38.632023, 62.136192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968803, 38.785591, 61.804790>,  <28.870966, 38.877731, 61.605949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968803, 38.785591, 61.804790>,  <29.131866, 38.632023, 62.136192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968803, 38.785591, 61.804790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474149, 0.686415, 0.551377,
		0.780384, 0.617608, -0.097786,
		-0.407657, 0.383920, -0.828505,
		28.846506, 38.900768, 61.556240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222075, 39.267872, 62.250980>,  <29.131866, 38.632023, 62.136192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222075, 39.267872, 62.250980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939987, 39.261520, 61.967457>,  <28.770735, 39.257710, 61.797340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939987, 39.261520, 61.967457>,  <29.222075, 39.267872, 62.250980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939987, 39.261520, 61.967457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518057, 0.694068, 0.499887,
		0.484027, 0.719735, -0.497695,
		-0.705220, -0.015876, -0.708811,
		28.728422, 39.256756, 61.754814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.325634, 33.829571, 47.683144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.508854, 34.179089, 47.748478>,  <37.618786, 34.388798, 47.787678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.508854, 34.179089, 47.748478>,  <37.325634, 33.829571, 47.683144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508854, 34.179089, 47.748478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876602, 0.413522, 0.246108,
		0.147503, -0.255912, 0.955381,
		0.458053, 0.873790, 0.163337,
		37.646271, 34.441227, 47.797478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307335, 34.067196, 48.422546>,  <37.325634, 33.829571, 47.683144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307335, 34.067196, 48.422546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.330166, 34.385880, 48.181881>,  <37.343864, 34.577091, 48.037483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.330166, 34.385880, 48.181881>,  <37.307335, 34.067196, 48.422546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330166, 34.385880, 48.181881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810974, 0.388486, 0.437492,
		0.582291, 0.462960, 0.668285,
		0.057078, 0.796710, -0.601661,
		37.347290, 34.624893, 48.001381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133961, 34.598579, 48.889996>,  <37.307335, 34.067196, 48.422546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133961, 34.598579, 48.889996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.112534, 34.764446, 48.526638>,  <37.099678, 34.863964, 48.308624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.112534, 34.764446, 48.526638>,  <37.133961, 34.598579, 48.889996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112534, 34.764446, 48.526638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846205, 0.464128, 0.261767,
		0.530158, 0.782713, 0.326027,
		-0.053570, 0.414663, -0.908397,
		37.096462, 34.888844, 48.254120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049252, 35.256931, 49.013714>,  <37.133961, 34.598579, 48.889996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049252, 35.256931, 49.013714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.879112, 35.213169, 48.654358>,  <36.777027, 35.186913, 48.438744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.879112, 35.213169, 48.654358>,  <37.049252, 35.256931, 49.013714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879112, 35.213169, 48.654358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809657, 0.489552, 0.323720,
		0.404394, 0.865083, -0.296811,
		-0.425349, -0.109405, -0.898392,
		36.751507, 35.180347, 48.384842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634140, 35.913471, 48.880898>,  <37.049252, 35.256931, 49.013714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634140, 35.913471, 48.880898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.477741, 35.646988, 48.626881>,  <36.383900, 35.487099, 48.474468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.477741, 35.646988, 48.626881>,  <36.634140, 35.913471, 48.880898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477741, 35.646988, 48.626881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919139, 0.246678, 0.307137,
		-0.047965, 0.703787, -0.708790,
		-0.391002, -0.666209, -0.635046,
		36.360439, 35.447124, 48.436367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111603, 36.279263, 48.404217>,  <36.634140, 35.913471, 48.880898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111603, 36.279263, 48.404217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.006397, 35.893795, 48.385551>,  <35.943275, 35.662514, 48.374352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.006397, 35.893795, 48.385551>,  <36.111603, 36.279263, 48.404217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006397, 35.893795, 48.385551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964732, 0.263231, 0.001457,
		0.010878, 0.045396, -0.998910,
		-0.263010, -0.963664, -0.046659,
		35.927494, 35.604694, 48.371555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489933, 36.356434, 48.148659>,  <36.111603, 36.279263, 48.404217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489933, 36.356434, 48.148659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.491104, 35.986454, 48.300690>,  <35.491806, 35.764465, 48.391907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.491104, 35.986454, 48.300690>,  <35.489933, 36.356434, 48.148659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491104, 35.986454, 48.300690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997600, 0.023591, 0.065098,
		-0.069179, -0.379352, -0.922663,
		0.002929, -0.924952, 0.380073,
		35.491982, 35.708969, 48.414711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960304, 36.130013, 47.800682>,  <35.489933, 36.356434, 48.148659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960304, 36.130013, 47.800682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.020348, 35.886967, 48.112652>,  <35.056374, 35.741138, 48.299831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.020348, 35.886967, 48.112652>,  <34.960304, 36.130013, 47.800682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020348, 35.886967, 48.112652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965696, 0.078958, 0.247381,
		-0.211892, -0.790300, -0.574915,
		0.150111, -0.607611, 0.779920,
		35.065380, 35.704685, 48.346626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433281, 35.621449, 47.752815>,  <34.960304, 36.130013, 47.800682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433281, 35.621449, 47.752815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.566086, 35.624210, 48.130116>,  <34.645771, 35.625870, 48.356495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.566086, 35.624210, 48.130116>,  <34.433281, 35.621449, 47.752815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566086, 35.624210, 48.130116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943273, 0.001180, 0.332017,
		0.001180, -0.999975, 0.006908,
		-0.332017, -0.006908, -0.943248,
		34.665691, 35.626282, 48.413090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967216, 35.034508, 48.163136>,  <34.433281, 35.621449, 47.752815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967216, 35.034508, 48.163136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.131020, 35.283131, 48.430260>,  <34.229301, 35.432304, 48.590534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.131020, 35.283131, 48.430260>,  <33.967216, 35.034508, 48.163136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131020, 35.283131, 48.430260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865250, 0.032555, 0.500282,
		0.289212, -0.782693, 0.551133,
		0.409509, 0.621556, 0.667810,
		34.253872, 35.469597, 48.630604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981667, 34.740955, 48.834724>,  <33.967216, 35.034508, 48.163136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981667, 34.740955, 48.834724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.974957, 35.137661, 48.885517>,  <33.970932, 35.375683, 48.915993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.974957, 35.137661, 48.885517>,  <33.981667, 34.740955, 48.834724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974957, 35.137661, 48.885517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889317, -0.072845, 0.451452,
		0.456983, -0.105357, 0.883214,
		-0.016774, 0.991763, 0.126984,
		33.969925, 35.435188, 48.923611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657566, 34.809124, 49.499863>,  <33.981667, 34.740955, 48.834724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657566, 34.809124, 49.499863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.651882, 35.176792, 49.342422>,  <33.648472, 35.397392, 49.247959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.651882, 35.176792, 49.342422>,  <33.657566, 34.809124, 49.499863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651882, 35.176792, 49.342422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916336, 0.145560, 0.373015,
		0.400157, 0.365971, 0.840202,
		-0.014213, 0.919172, -0.393600,
		33.647617, 35.452545, 49.224342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406082, 35.350685, 50.061901>,  <33.657566, 34.809124, 49.499863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406082, 35.350685, 50.061901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.332268, 35.445019, 49.680256>,  <33.287979, 35.501617, 49.451267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.332268, 35.445019, 49.680256>,  <33.406082, 35.350685, 50.061901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332268, 35.445019, 49.680256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982664, -0.026683, 0.183466,
		0.017809, 0.971428, 0.236666,
		-0.184539, 0.235831, -0.954112,
		33.276905, 35.515766, 49.394024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927719, 34.814957, 49.669273>,  <33.406082, 35.350685, 50.061901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927719, 34.814957, 49.669273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.861809, 34.511738, 49.921688>,  <32.822262, 34.329807, 50.073139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.861809, 34.511738, 49.921688>,  <32.927719, 34.814957, 49.669273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861809, 34.511738, 49.921688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800335, 0.476686, 0.363641,
		-0.576465, -0.445123, -0.685239,
		-0.164779, -0.758047, 0.631040,
		32.812374, 34.284325, 50.111000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284370, 34.392056, 49.555229>,  <32.927719, 34.814957, 49.669273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284370, 34.392056, 49.555229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.376678, 34.357338, 49.942883>,  <32.432064, 34.336506, 50.175472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.376678, 34.357338, 49.942883>,  <32.284370, 34.392056, 49.555229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376678, 34.357338, 49.942883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972664, 0.005914, 0.232141,
		-0.025883, -0.996207, -0.083072,
		0.230769, -0.086809, 0.969128,
		32.445908, 34.331299, 50.233620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901478, 33.850178, 49.843170>,  <32.284370, 34.392056, 49.555229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901478, 33.850178, 49.843170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.991137, 34.042137, 50.182453>,  <32.044933, 34.157314, 50.386024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.991137, 34.042137, 50.182453>,  <31.901478, 33.850178, 49.843170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991137, 34.042137, 50.182453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950045, -0.086368, 0.299924,
		0.217192, -0.873062, 0.436568,
		0.224147, 0.479900, 0.848206,
		32.058380, 34.186108, 50.436916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686617, 33.439957, 50.404938>,  <31.901478, 33.850178, 49.843170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686617, 33.439957, 50.404938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.688091, 33.823467, 50.518597>,  <31.688976, 34.053574, 50.586792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.688091, 33.823467, 50.518597>,  <31.686617, 33.439957, 50.404938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688091, 33.823467, 50.518597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940870, -0.092933, 0.325770,
		0.338746, -0.268551, 0.901738,
		0.003685, 0.958772, 0.284152,
		31.689198, 34.111099, 50.603844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535988, 33.516342, 51.099163>,  <31.686617, 33.439957, 50.404938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535988, 33.516342, 51.099163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.412996, 33.863972, 50.944157>,  <31.339201, 34.072548, 50.851151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.412996, 33.863972, 50.944157>,  <31.535988, 33.516342, 51.099163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412996, 33.863972, 50.944157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944751, -0.230201, 0.233351,
		0.113592, 0.437858, 0.891839,
		-0.307477, 0.869073, -0.387518,
		31.320753, 34.124695, 50.827900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985376, 33.646179, 51.420021>,  <31.535988, 33.516342, 51.099163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985376, 33.646179, 51.420021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.938831, 33.947281, 51.160847>,  <30.910904, 34.127941, 51.005341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.938831, 33.947281, 51.160847>,  <30.985376, 33.646179, 51.420021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938831, 33.947281, 51.160847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969295, 0.056218, 0.239389,
		0.216627, 0.655898, 0.723098,
		-0.116363, 0.752753, -0.647937,
		30.903923, 34.173107, 50.966465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559542, 34.179752, 51.792103>,  <30.985376, 33.646179, 51.420021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559542, 34.179752, 51.792103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.530235, 34.253265, 51.400009>,  <30.512651, 34.297371, 51.164753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.530235, 34.253265, 51.400009>,  <30.559542, 34.179752, 51.792103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530235, 34.253265, 51.400009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995364, 0.047918, 0.083383,
		0.062295, 0.981799, 0.179417,
		-0.073268, 0.183780, -0.980233,
		30.508255, 34.308399, 51.105938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166111, 34.800701, 51.740959>,  <30.559542, 34.179752, 51.792103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166111, 34.800701, 51.740959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.134722, 34.630913, 51.380146>,  <30.115889, 34.529041, 51.163658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.134722, 34.630913, 51.380146>,  <30.166111, 34.800701, 51.740959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134722, 34.630913, 51.380146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977534, 0.210316, -0.013930,
		0.195625, 0.880676, -0.431440,
		-0.078471, -0.424473, -0.902034,
		30.111181, 34.503571, 51.109535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906517, 35.276012, 51.217113>,  <30.166111, 34.800701, 51.740959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906517, 35.276012, 51.217113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.827620, 34.903336, 51.095097>,  <29.780281, 34.679729, 51.021885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.827620, 34.903336, 51.095097>,  <29.906517, 35.276012, 51.217113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827620, 34.903336, 51.095097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975263, 0.218148, -0.035677,
		0.099785, 0.290464, -0.951669,
		-0.197242, -0.931688, -0.305047,
		29.768448, 34.623829, 51.003582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319447, 35.411312, 50.797085>,  <29.906517, 35.276012, 51.217113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319447, 35.411312, 50.797085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.320801, 35.012890, 50.832542>,  <29.321613, 34.773834, 50.853817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.320801, 35.012890, 50.832542>,  <29.319447, 35.411312, 50.797085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320801, 35.012890, 50.832542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999889, -0.002089, 0.014730,
		-0.014487, -0.088684, -0.995954,
		0.003387, -0.996058, 0.088644,
		29.321817, 34.714073, 50.859135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891594, 35.072742, 50.274189>,  <29.319447, 35.411312, 50.797085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891594, 35.072742, 50.274189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.915831, 34.816231, 50.580151>,  <28.930372, 34.662323, 50.763729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.915831, 34.816231, 50.580151>,  <28.891594, 35.072742, 50.274189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915831, 34.816231, 50.580151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998159, -0.041101, 0.044612,
		0.002830, -0.766203, -0.642593,
		0.060593, -0.641283, 0.764908,
		28.934008, 34.623844, 50.809624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409109, 34.658569, 50.108055>,  <28.891594, 35.072742, 50.274189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409109, 34.658569, 50.108055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.437578, 34.580933, 50.499413>,  <28.454660, 34.534351, 50.734226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.437578, 34.580933, 50.499413>,  <28.409109, 34.658569, 50.108055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437578, 34.580933, 50.499413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997278, -0.032766, 0.066048,
		0.019239, -0.980438, -0.195885,
		0.071174, -0.194081, 0.978400,
		28.458931, 34.522705, 50.792931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974604, 34.151890, 50.235077>,  <28.409109, 34.658569, 50.108055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974604, 34.151890, 50.235077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.029346, 34.306652, 50.599838>,  <28.062193, 34.399509, 50.818695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.029346, 34.306652, 50.599838>,  <27.974604, 34.151890, 50.235077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029346, 34.306652, 50.599838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961068, -0.171209, 0.216876,
		0.240037, -0.906086, 0.348410,
		0.136858, 0.386904, 0.911907,
		28.070404, 34.422722, 50.873409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515684, 33.806812, 50.549568>,  <27.974604, 34.151890, 50.235077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515684, 33.806812, 50.549568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.604704, 34.101200, 50.805325>,  <27.658115, 34.277832, 50.958778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.604704, 34.101200, 50.805325>,  <27.515684, 33.806812, 50.549568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604704, 34.101200, 50.805325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890341, -0.113772, 0.440850,
		0.397196, -0.667389, 0.629942,
		0.222548, 0.735967, 0.639394,
		27.671469, 34.321991, 50.997143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193304, 33.613113, 51.191811>,  <27.515684, 33.806812, 50.549568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.193304, 33.613113, 51.191811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.219048, 34.012241, 51.197605>,  <27.234493, 34.251720, 51.201084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.219048, 34.012241, 51.197605>,  <27.193304, 33.613113, 51.191811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219048, 34.012241, 51.197605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960814, 0.058036, 0.271050,
		0.269619, -0.031366, 0.962456,
		0.064359, 0.997822, 0.014490,
		27.238356, 34.311588, 51.201954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757849, 33.813885, 51.778934>,  <27.193304, 33.613113, 51.191811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757849, 33.813885, 51.778934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.785528, 34.148849, 51.562065>,  <26.802135, 34.349827, 51.431942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.785528, 34.148849, 51.562065>,  <26.757849, 33.813885, 51.778934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785528, 34.148849, 51.562065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973200, 0.176137, 0.147840,
		0.219300, 0.517415, 0.827157,
		0.069198, 0.837411, -0.542176,
		26.806288, 34.400074, 51.399414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385057, 34.295269, 52.225456>,  <26.757849, 33.813885, 51.778934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385057, 34.295269, 52.225456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.434242, 34.444912, 51.857777>,  <26.463753, 34.534698, 51.637169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.434242, 34.444912, 51.857777>,  <26.385057, 34.295269, 52.225456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434242, 34.444912, 51.857777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936055, 0.351402, 0.017800,
		0.329667, 0.858231, 0.393394,
		0.122963, 0.374106, -0.919197,
		26.471130, 34.557144, 51.582016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154984, 34.970245, 52.258045>,  <26.385057, 34.295269, 52.225456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154984, 34.970245, 52.258045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.129498, 34.901981, 51.864738>,  <26.114206, 34.861023, 51.628754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.129498, 34.901981, 51.864738>,  <26.154984, 34.970245, 52.258045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.129498, 34.901981, 51.864738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935365, 0.353683, -0.000776,
		0.347898, 0.919666, -0.182160,
		-0.063713, -0.170656, -0.983269,
		26.110384, 34.850784, 51.569759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874107, 35.610245, 51.999474>,  <26.154984, 34.970245, 52.258045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874107, 35.610245, 51.999474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.822557, 35.314320, 51.735332>,  <25.791628, 35.136765, 51.576847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.822557, 35.314320, 51.735332>,  <25.874107, 35.610245, 51.999474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.822557, 35.314320, 51.735332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947446, 0.288482, -0.138289,
		0.292810, 0.607835, -0.738105,
		-0.128873, -0.739807, -0.660362,
		25.783895, 35.092377, 51.537228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.556034, 35.892441, 51.376225>,  <25.874107, 35.610245, 51.999474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.556034, 35.892441, 51.376225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.483992, 35.498981, 51.375984>,  <25.440767, 35.262905, 51.375839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.483992, 35.498981, 51.375984>,  <25.556034, 35.892441, 51.376225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483992, 35.498981, 51.375984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976046, 0.178788, -0.123973,
		0.122053, -0.021743, -0.992285,
		-0.180104, -0.983647, -0.000599,
		25.429960, 35.203888, 51.375805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.181721, 35.793087, 50.770142>,  <25.556034, 35.892441, 51.376225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.181721, 35.793087, 50.770142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.087809, 35.472649, 50.990364>,  <25.031462, 35.280384, 51.122498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.087809, 35.472649, 50.990364>,  <25.181721, 35.793087, 50.770142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.087809, 35.472649, 50.990364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971942, 0.185117, -0.145121,
		0.014339, -0.569185, -0.822085,
		-0.234782, -0.801100, 0.550560,
		25.017374, 35.232319, 51.155533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.757986, 35.312447, 50.355137>,  <25.181721, 35.793087, 50.770142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.757986, 35.312447, 50.355137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.694559, 35.264210, 50.747120>,  <24.656502, 35.235268, 50.982307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.694559, 35.264210, 50.747120>,  <24.757986, 35.312447, 50.355137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.694559, 35.264210, 50.747120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975308, 0.173657, -0.136446,
		-0.153721, -0.977395, -0.145155,
		-0.158569, -0.120596, 0.979955,
		24.646988, 35.228031, 51.041107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<36.540813, 31.098707, 49.600204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.158829, 31.028502, 49.504505>,  <35.929638, 30.986378, 49.447086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.158829, 31.028502, 49.504505>,  <36.540813, 31.098707, 49.600204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158829, 31.028502, 49.504505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276955, 0.816618, 0.506390,
		0.106500, 0.549845, -0.828449,
		-0.954963, -0.175513, -0.239252,
		35.872341, 30.975847, 49.432728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312763, 31.685297, 49.300159>,  <36.540813, 31.098707, 49.600204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312763, 31.685297, 49.300159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992809, 31.500824, 49.453781>,  <35.800838, 31.390141, 49.545952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992809, 31.500824, 49.453781>,  <36.312763, 31.685297, 49.300159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992809, 31.500824, 49.453781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218576, 0.819831, 0.529246,
		-0.558937, 0.339391, -0.756573,
		-0.799884, -0.461184, 0.384052,
		35.752846, 31.362469, 49.568996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715527, 32.257191, 49.375938>,  <36.312763, 31.685297, 49.300159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715527, 32.257191, 49.375938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568069, 31.956913, 49.595234>,  <35.479595, 31.776747, 49.726810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568069, 31.956913, 49.595234>,  <35.715527, 32.257191, 49.375938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568069, 31.956913, 49.595234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369088, 0.659496, 0.654858,
		-0.853156, 0.039063, -0.520191,
		-0.368645, -0.750692, 0.548236,
		35.457478, 31.731705, 49.759705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085449, 32.410038, 49.642662>,  <35.715527, 32.257191, 49.375938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085449, 32.410038, 49.642662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.222744, 32.131821, 49.895142>,  <35.305122, 31.964891, 50.046631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.222744, 32.131821, 49.895142>,  <35.085449, 32.410038, 49.642662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222744, 32.131821, 49.895142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301878, 0.554676, 0.775374,
		-0.889414, -0.456682, -0.019582,
		0.343238, -0.695541, 0.631199,
		35.325714, 31.923159, 50.084499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553387, 32.409756, 50.225636>,  <35.085449, 32.410038, 49.642662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553387, 32.409756, 50.225636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.871105, 32.218060, 50.374996>,  <35.061737, 32.103043, 50.464615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.871105, 32.218060, 50.374996>,  <34.553387, 32.409756, 50.225636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871105, 32.218060, 50.374996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105310, 0.496709, 0.861505,
		-0.598338, -0.723610, 0.344064,
		0.794293, -0.479237, 0.373403,
		35.109394, 32.074287, 50.487019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250401, 32.003159, 50.716763>,  <34.553387, 32.409756, 50.225636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250401, 32.003159, 50.716763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.639175, 32.042049, 50.802437>,  <34.872440, 32.065384, 50.853844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.639175, 32.042049, 50.802437>,  <34.250401, 32.003159, 50.716763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639175, 32.042049, 50.802437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234265, 0.317933, 0.918716,
		0.021226, -0.943115, 0.331788,
		0.971941, 0.097227, 0.214190,
		34.930759, 32.071217, 50.866695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393204, 31.764006, 51.477058>,  <34.250401, 32.003159, 50.716763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393204, 31.764006, 51.477058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.716648, 31.975487, 51.373817>,  <34.910713, 32.102375, 51.311871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.716648, 31.975487, 51.373817>,  <34.393204, 31.764006, 51.477058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716648, 31.975487, 51.373817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123602, 0.276253, 0.953104,
		0.575212, -0.802594, 0.158033,
		0.808612, 0.528704, -0.258107,
		34.959232, 32.134098, 51.296387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876308, 31.538092, 51.954689>,  <34.393204, 31.764006, 51.477058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876308, 31.538092, 51.954689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.961082, 31.904413, 51.818226>,  <35.011948, 32.124207, 51.736347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.961082, 31.904413, 51.818226>,  <34.876308, 31.538092, 51.954689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961082, 31.904413, 51.818226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063410, 0.335462, 0.939918,
		0.975225, -0.220831, 0.013025,
		0.211933, 0.915805, -0.341154,
		35.024662, 32.179153, 51.715881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414150, 31.798429, 52.321411>,  <34.876308, 31.538092, 51.954689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414150, 31.798429, 52.321411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.229012, 32.124969, 52.183228>,  <35.117928, 32.320892, 52.100315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.229012, 32.124969, 52.183228>,  <35.414150, 31.798429, 52.321411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229012, 32.124969, 52.183228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052548, 0.363766, 0.930007,
		0.884881, 0.448602, -0.125469,
		-0.462844, 0.816352, -0.345463,
		35.090157, 32.369877, 52.079590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696915, 32.382175, 52.852554>,  <35.414150, 31.798429, 52.321411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696915, 32.382175, 52.852554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.396179, 32.554096, 52.652554>,  <35.215736, 32.657249, 52.532551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.396179, 32.554096, 52.652554>,  <35.696915, 32.382175, 52.852554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396179, 32.554096, 52.652554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303997, 0.446965, 0.841313,
		0.585081, 0.784535, -0.205390,
		-0.751842, 0.429799, -0.500007,
		35.170628, 32.683037, 52.502552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747765, 33.030682, 53.040871>,  <35.696915, 32.382175, 52.852554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747765, 33.030682, 53.040871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.366463, 32.992550, 52.926174>,  <35.137680, 32.969669, 52.857357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.366463, 32.992550, 52.926174>,  <35.747765, 33.030682, 53.040871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366463, 32.992550, 52.926174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297598, 0.460651, 0.836203,
		0.052373, 0.882447, -0.467487,
		-0.953254, -0.095329, -0.286740,
		35.080486, 32.963951, 52.840153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416019, 33.647053, 53.198536>,  <35.747765, 33.030682, 53.040871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416019, 33.647053, 53.198536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.083202, 33.433674, 53.137684>,  <34.883514, 33.305645, 53.101173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.083202, 33.433674, 53.137684>,  <35.416019, 33.647053, 53.198536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083202, 33.433674, 53.137684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433974, 0.455164, 0.777491,
		-0.345510, 0.712922, -0.610218,
		-0.832039, -0.533450, -0.152126,
		34.833591, 33.273640, 53.092045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358398, 34.471504, 53.061779>,  <35.416019, 33.647053, 53.198536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358398, 34.471504, 53.061779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.723705, 34.536755, 53.211086>,  <35.942890, 34.575905, 53.300671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.723705, 34.536755, 53.211086>,  <35.358398, 34.471504, 53.061779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723705, 34.536755, 53.211086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406649, -0.311131, -0.858972,
		-0.023988, 0.936262, -0.350483,
		0.913269, 0.163129, 0.373267,
		35.997684, 34.585693, 53.323067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797359, 34.725910, 52.495537>,  <35.358398, 34.471504, 53.061779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797359, 34.725910, 52.495537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043354, 34.583385, 52.776917>,  <36.190948, 34.497871, 52.945744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.043354, 34.583385, 52.776917>,  <35.797359, 34.725910, 52.495537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043354, 34.583385, 52.776917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569549, -0.416253, -0.708764,
		0.545352, 0.836527, -0.053053,
		0.614984, -0.356309, 0.703447,
		36.227848, 34.476494, 52.987949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396523, 34.800442, 52.192024>,  <35.797359, 34.725910, 52.495537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396523, 34.800442, 52.192024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.495605, 34.578712, 52.509857>,  <36.555054, 34.445675, 52.700558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.495605, 34.578712, 52.509857>,  <36.396523, 34.800442, 52.192024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495605, 34.578712, 52.509857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850040, -0.269149, -0.452759,
		0.464837, 0.787581, 0.404528,
		0.247706, -0.554324, 0.794586,
		36.569916, 34.412415, 52.748234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072449, 34.873592, 52.230652>,  <36.396523, 34.800442, 52.192024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072449, 34.873592, 52.230652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.006050, 34.535339, 52.433575>,  <36.966209, 34.332390, 52.555328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.006050, 34.535339, 52.433575>,  <37.072449, 34.873592, 52.230652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006050, 34.535339, 52.433575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809841, -0.410437, -0.419165,
		0.562674, 0.341255, 0.752956,
		-0.165999, -0.845628, 0.507304,
		36.956249, 34.281651, 52.585766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694416, 34.587021, 52.318371>,  <37.072449, 34.873592, 52.230652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694416, 34.587021, 52.318371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490433, 34.254986, 52.408607>,  <37.368042, 34.055763, 52.462749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.490433, 34.254986, 52.408607>,  <37.694416, 34.587021, 52.318371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490433, 34.254986, 52.408607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741028, -0.557111, -0.374840,
		0.436833, -0.023979, 0.899223,
		-0.509955, -0.830092, 0.225595,
		37.337448, 34.005959, 52.476288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215034, 34.158859, 52.811954>,  <37.694416, 34.587021, 52.318371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215034, 34.158859, 52.811954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.939171, 33.957573, 52.603664>,  <37.773655, 33.836803, 52.478691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.939171, 33.957573, 52.603664>,  <38.215034, 34.158859, 52.811954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939171, 33.957573, 52.603664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723590, -0.506861, -0.468518,
		-0.028171, -0.699907, 0.713679,
		-0.689655, -0.503212, -0.520725,
		37.732273, 33.806610, 52.447449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588200, 33.664436, 52.526001>,  <38.215034, 34.158859, 52.811954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588200, 33.664436, 52.526001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.241077, 33.642948, 52.328403>,  <38.032803, 33.630054, 52.209846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.241077, 33.642948, 52.328403>,  <38.588200, 33.664436, 52.526001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241077, 33.642948, 52.328403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476038, -0.374947, -0.795489,
		-0.142488, -0.925488, 0.350953,
		-0.867805, -0.053719, -0.493993,
		37.980736, 33.626831, 52.180206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494144, 32.981594, 52.218273>,  <38.588200, 33.664436, 52.526001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494144, 32.981594, 52.218273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.257511, 33.222214, 52.003544>,  <38.115532, 33.366585, 51.874706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.257511, 33.222214, 52.003544>,  <38.494144, 32.981594, 52.218273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257511, 33.222214, 52.003544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375047, -0.384079, -0.843696,
		-0.713702, -0.700447, 0.001606,
		-0.591582, 0.601545, -0.536819,
		38.080036, 33.402676, 51.842499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313843, 32.624298, 51.528458>,  <38.494144, 32.981594, 52.218273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313843, 32.624298, 51.528458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.228420, 33.009792, 51.464451>,  <38.177166, 33.241089, 51.426048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.228420, 33.009792, 51.464451>,  <38.313843, 32.624298, 51.528458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228420, 33.009792, 51.464451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220907, -0.111916, -0.968853,
		-0.951626, -0.242258, -0.188995,
		-0.213560, 0.963736, -0.160018,
		38.164352, 33.298912, 51.416447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913372, 32.664513, 50.866814>,  <38.313843, 32.624298, 51.528458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913372, 32.664513, 50.866814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.020180, 33.044575, 50.931206>,  <38.084263, 33.272610, 50.969841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.020180, 33.044575, 50.931206>,  <37.913372, 32.664513, 50.866814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020180, 33.044575, 50.931206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147844, 0.124677, -0.981121,
		-0.952284, 0.285775, -0.107183,
		0.267017, 0.950152, 0.160978,
		38.100285, 33.329620, 50.979500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659462, 33.105305, 50.287785>,  <37.913372, 32.664513, 50.866814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659462, 33.105305, 50.287785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.956959, 33.321857, 50.444633>,  <38.135456, 33.451790, 50.538742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.956959, 33.321857, 50.444633>,  <37.659462, 33.105305, 50.287785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956959, 33.321857, 50.444633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310005, 0.240362, -0.919849,
		-0.592236, 0.805690, 0.010938,
		0.743742, 0.541377, 0.392119,
		38.180080, 33.484272, 50.562271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651699, 33.661198, 50.057529>,  <37.659462, 33.105305, 50.287785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651699, 33.661198, 50.057529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.034931, 33.628860, 50.167477>,  <38.264870, 33.609459, 50.233444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.034931, 33.628860, 50.167477>,  <37.651699, 33.661198, 50.057529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034931, 33.628860, 50.167477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286499, 0.262986, -0.921280,
		0.002196, 0.961406, 0.275124,
		0.958078, -0.080846, 0.274864,
		38.322353, 33.604607, 50.249935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072029, 33.968277, 49.600956>,  <37.651699, 33.661198, 50.057529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072029, 33.968277, 49.600956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.343204, 33.739941, 49.786232>,  <38.505909, 33.602940, 49.897396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.343204, 33.739941, 49.786232>,  <38.072029, 33.968277, 49.600956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343204, 33.739941, 49.786232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617209, 0.099736, -0.780452,
		0.399319, 0.814979, 0.419944,
		0.677936, -0.570843, 0.463186,
		38.546585, 33.568687, 49.925186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823048, 34.610466, 50.116524>,  <38.072029, 33.968277, 49.600956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823048, 34.610466, 50.116524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486412, 34.807926, 50.204189>,  <37.284431, 34.926403, 50.256790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.486412, 34.807926, 50.204189>,  <37.823048, 34.610466, 50.116524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486412, 34.807926, 50.204189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534166, 0.700670, 0.473000,
		0.079934, 0.515143, -0.853369,
		-0.841592, 0.493649, 0.219164,
		37.233932, 34.956020, 50.269939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927071, 35.326355, 50.049088>,  <37.823048, 34.610466, 50.116524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927071, 35.326355, 50.049088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.599434, 35.327869, 50.278545>,  <37.402851, 35.328777, 50.416222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.599434, 35.327869, 50.278545>,  <37.927071, 35.326355, 50.049088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599434, 35.327869, 50.278545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272516, 0.882506, 0.383299,
		-0.504796, 0.470286, -0.723887,
		-0.819095, 0.003783, 0.573646,
		37.353706, 35.329002, 50.450638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619930, 35.995171, 49.954742>,  <37.927071, 35.326355, 50.049088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619930, 35.995171, 49.954742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526661, 35.833241, 50.308407>,  <37.470699, 35.736084, 50.520607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.526661, 35.833241, 50.308407>,  <37.619930, 35.995171, 49.954742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526661, 35.833241, 50.308407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229698, 0.860570, 0.454597,
		-0.944917, 0.309092, -0.107678,
		-0.233176, -0.404823, 0.884165,
		37.456707, 35.711792, 50.573658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070385, 36.404827, 50.222450>,  <37.619930, 35.995171, 49.954742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070385, 36.404827, 50.222450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.292065, 36.239826, 50.511642>,  <37.425072, 36.140823, 50.685158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.292065, 36.239826, 50.511642>,  <37.070385, 36.404827, 50.222450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292065, 36.239826, 50.511642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160858, 0.905269, 0.393209,
		-0.816691, -0.101621, 0.568058,
		0.554203, -0.412507, 0.722978,
		37.458324, 36.116074, 50.728535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205875, 37.098892, 49.997711>,  <37.070385, 36.404827, 50.222450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205875, 37.098892, 49.997711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.000500, 37.157166, 49.659443>,  <36.877274, 37.192131, 49.456482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.000500, 37.157166, 49.659443>,  <37.205875, 37.098892, 49.997711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000500, 37.157166, 49.659443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553765, 0.696571, 0.456216,
		0.655532, 0.702541, -0.276971,
		-0.513441, 0.145687, -0.845668,
		36.846466, 37.200871, 49.405743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250271, 37.880722, 49.751701>,  <37.205875, 37.098892, 49.997711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250271, 37.880722, 49.751701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.914951, 37.701851, 49.626942>,  <36.713760, 37.594528, 49.552086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.914951, 37.701851, 49.626942>,  <37.250271, 37.880722, 49.751701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914951, 37.701851, 49.626942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534967, 0.785014, 0.312351,
		0.105170, 0.428701, -0.897304,
		-0.838302, -0.447179, -0.311901,
		36.663460, 37.567696, 49.533371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837364, 38.487061, 49.543583>,  <37.250271, 37.880722, 49.751701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837364, 38.487061, 49.543583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.580723, 38.182106, 49.577309>,  <36.426739, 37.999134, 49.597546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.580723, 38.182106, 49.577309>,  <36.837364, 38.487061, 49.543583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580723, 38.182106, 49.577309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656608, 0.602723, 0.453420,
		-0.396501, 0.235554, -0.887300,
		-0.641602, -0.762390, 0.084313,
		36.388241, 37.953388, 49.602604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130089, 38.648880, 49.143044>,  <36.837364, 38.487061, 49.543583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130089, 38.648880, 49.143044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.054661, 38.372974, 49.422661>,  <36.009403, 38.207432, 49.590431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.054661, 38.372974, 49.422661>,  <36.130089, 38.648880, 49.143044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054661, 38.372974, 49.422661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679848, 0.605364, 0.413933,
		-0.708694, -0.397190, -0.583089,
		-0.188571, -0.689764, 0.699047,
		35.998089, 38.166046, 49.632374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430748, 38.606239, 49.180481>,  <36.130089, 38.648880, 49.143044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430748, 38.606239, 49.180481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.544449, 38.437962, 49.525089>,  <35.612667, 38.336994, 49.731853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.544449, 38.437962, 49.525089>,  <35.430748, 38.606239, 49.180481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544449, 38.437962, 49.525089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739415, 0.475815, 0.476305,
		-0.610302, -0.772412, -0.175816,
		0.284248, -0.420691, 0.861523,
		35.629723, 38.311756, 49.783546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800919, 38.495548, 49.471924>,  <35.430748, 38.606239, 49.180481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800919, 38.495548, 49.471924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.077061, 38.495678, 49.761314>,  <35.242744, 38.495754, 49.934948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.077061, 38.495678, 49.761314>,  <34.800919, 38.495548, 49.471924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077061, 38.495678, 49.761314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547673, 0.653640, 0.522311,
		-0.472724, -0.756805, 0.451417,
		0.690352, 0.000320, 0.723473,
		35.284168, 38.495773, 49.978355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414001, 38.346325, 50.087894>,  <34.800919, 38.495548, 49.471924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414001, 38.346325, 50.087894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.754578, 38.513130, 50.215115>,  <34.958923, 38.613213, 50.291447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.754578, 38.513130, 50.215115>,  <34.414001, 38.346325, 50.087894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754578, 38.513130, 50.215115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522813, 0.626899, 0.577636,
		0.041497, -0.658101, 0.751785,
		0.851437, 0.417013, 0.318050,
		35.010010, 38.638233, 50.310528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233101, 38.533424, 50.705669>,  <34.414001, 38.346325, 50.087894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233101, 38.533424, 50.705669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.551956, 38.770138, 50.657745>,  <34.743271, 38.912167, 50.628990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.551956, 38.770138, 50.657745>,  <34.233101, 38.533424, 50.705669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551956, 38.770138, 50.657745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503380, 0.760935, 0.409373,
		0.333427, -0.266020, 0.904467,
		0.797142, 0.591786, -0.119807,
		34.791100, 38.947674, 50.621803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288441, 39.018776, 51.382217>,  <34.233101, 38.533424, 50.705669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288441, 39.018776, 51.382217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489658, 39.211540, 51.095245>,  <34.610390, 39.327198, 50.923061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489658, 39.211540, 51.095245>,  <34.288441, 39.018776, 51.382217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489658, 39.211540, 51.095245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494336, 0.841353, 0.218536,
		0.708929, 0.244720, 0.661462,
		0.503043, 0.481910, -0.717433,
		34.640572, 39.356113, 50.880016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477402, 39.630272, 51.687725>,  <34.288441, 39.018776, 51.382217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477402, 39.630272, 51.687725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.506187, 39.705307, 51.295883>,  <34.523460, 39.750328, 51.060776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.506187, 39.705307, 51.295883>,  <34.477402, 39.630272, 51.687725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506187, 39.705307, 51.295883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521888, 0.844057, 0.123290,
		0.849973, 0.502373, 0.158640,
		0.071964, 0.187586, -0.979608,
		34.527775, 39.761581, 51.001999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799751, 40.386089, 51.652817>,  <34.477402, 39.630272, 51.687725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799751, 40.386089, 51.652817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605053, 40.296043, 51.315201>,  <34.488235, 40.242016, 51.112633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605053, 40.296043, 51.315201>,  <34.799751, 40.386089, 51.652817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605053, 40.296043, 51.315201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521713, 0.849889, 0.074192,
		0.700640, 0.476459, -0.531122,
		-0.486744, -0.225111, -0.844041,
		34.459030, 40.228512, 51.061989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861946, 40.973515, 51.190510>,  <34.799751, 40.386089, 51.652817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861946, 40.973515, 51.190510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.540249, 40.748642, 51.113419>,  <34.347233, 40.613716, 51.067165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.540249, 40.748642, 51.113419>,  <34.861946, 40.973515, 51.190510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540249, 40.748642, 51.113419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590650, 0.792001, 0.154488,
		0.065788, 0.238079, -0.969015,
		-0.804241, -0.562186, -0.192725,
		34.298977, 40.579987, 51.055599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533428, 41.296608, 50.607994>,  <34.861946, 40.973515, 51.190510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533428, 41.296608, 50.607994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.271225, 41.059219, 50.794800>,  <34.113903, 40.916786, 50.906883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.271225, 41.059219, 50.794800>,  <34.533428, 41.296608, 50.607994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271225, 41.059219, 50.794800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635462, 0.767603, 0.083512,
		-0.408043, -0.242027, -0.880298,
		-0.655507, -0.593472, 0.467014,
		34.074574, 40.881176, 50.934902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960327, 41.527370, 50.318005>,  <34.533428, 41.296608, 50.607994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960327, 41.527370, 50.318005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.827061, 41.336124, 50.643066>,  <33.747101, 41.221378, 50.838104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.827061, 41.336124, 50.643066>,  <33.960327, 41.527370, 50.318005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827061, 41.336124, 50.643066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699905, 0.702925, 0.126610,
		-0.631769, -0.526599, -0.568825,
		-0.333169, -0.478111, 0.812655,
		33.727112, 41.192692, 50.886864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261894, 41.604748, 50.318642>,  <33.960327, 41.527370, 50.318005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261894, 41.604748, 50.318642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.314381, 41.502281, 50.701717>,  <33.345871, 41.440804, 50.931561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.314381, 41.502281, 50.701717>,  <33.261894, 41.604748, 50.318642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314381, 41.502281, 50.701717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694827, 0.665285, 0.273150,
		-0.707105, -0.701268, -0.090694,
		0.131214, -0.256162, 0.957687,
		33.353745, 41.425434, 50.989025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601704, 41.583744, 50.541840>,  <33.261894, 41.604748, 50.318642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601704, 41.583744, 50.541840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.813820, 41.587662, 50.880943>,  <32.941090, 41.590012, 51.084404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.813820, 41.587662, 50.880943>,  <32.601704, 41.583744, 50.541840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813820, 41.587662, 50.880943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674167, 0.611201, 0.414647,
		-0.514089, -0.791415, 0.330719,
		0.530293, 0.009795, 0.847758,
		32.972908, 41.590599, 51.135269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146996, 41.429607, 51.090153>,  <32.601704, 41.583744, 50.541840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146996, 41.429607, 51.090153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.462776, 41.585926, 51.279488>,  <32.652245, 41.679718, 51.393089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.462776, 41.585926, 51.279488>,  <32.146996, 41.429607, 51.090153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462776, 41.585926, 51.279488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612913, 0.543662, 0.573385,
		-0.033261, -0.742774, 0.668716,
		0.789450, 0.390793, 0.473338,
		32.699612, 41.703163, 51.421490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139317, 41.241394, 51.842926>,  <32.146996, 41.429607, 51.090153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139317, 41.241394, 51.842926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.330448, 41.583855, 51.764256>,  <32.445126, 41.789330, 51.717052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.330448, 41.583855, 51.764256>,  <32.139317, 41.241394, 51.842926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330448, 41.583855, 51.764256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540925, 0.463174, 0.702047,
		0.692156, -0.229068, 0.684432,
		0.477828, 0.856153, -0.196680,
		32.473797, 41.840702, 51.705250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189625, 41.589096, 52.561073>,  <32.139317, 41.241394, 51.842926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189625, 41.589096, 52.561073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.293751, 41.883305, 52.310871>,  <32.356228, 42.059830, 52.160751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.293751, 41.883305, 52.310871>,  <32.189625, 41.589096, 52.561073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293751, 41.883305, 52.310871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658261, 0.609133, 0.442322,
		0.706349, 0.296601, 0.642727,
		0.260313, 0.735517, -0.625502,
		32.371845, 42.103958, 52.123222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200153, 42.111137, 52.997997>,  <32.189625, 41.589096, 52.561073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200153, 42.111137, 52.997997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.190067, 42.288261, 52.639492>,  <32.184017, 42.394535, 52.424389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.190067, 42.288261, 52.639492>,  <32.200153, 42.111137, 52.997997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190067, 42.288261, 52.639492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552334, 0.741105, 0.381694,
		0.833242, 0.504660, 0.225891,
		-0.025217, 0.442811, -0.896260,
		32.182503, 42.421104, 52.370613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341972, 42.813583, 53.113785>,  <32.200153, 42.111137, 52.997997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341972, 42.813583, 53.113785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.155800, 42.830830, 52.760170>,  <32.044098, 42.841175, 52.548000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.155800, 42.830830, 52.760170>,  <32.341972, 42.813583, 53.113785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155800, 42.830830, 52.760170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574690, 0.744906, 0.338889,
		0.673133, 0.665775, -0.321925,
		-0.465428, 0.043111, -0.884035,
		32.016171, 42.843761, 52.494961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310497, 43.640633, 52.859386>,  <32.341972, 42.813583, 53.113785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310497, 43.640633, 52.859386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.040955, 43.423519, 52.658867>,  <31.879229, 43.293251, 52.538555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.040955, 43.423519, 52.658867>,  <32.310497, 43.640633, 52.859386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040955, 43.423519, 52.658867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701252, 0.683537, 0.202544,
		0.232721, 0.488024, -0.841233,
		-0.673860, -0.542780, -0.501301,
		31.838797, 43.260685, 52.508476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832008, 44.097115, 52.531647>,  <32.310497, 43.640633, 52.859386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832008, 44.097115, 52.531647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.629379, 43.752350, 52.540596>,  <31.507803, 43.545490, 52.545967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.629379, 43.752350, 52.540596>,  <31.832008, 44.097115, 52.531647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629379, 43.752350, 52.540596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861986, 0.505698, -0.035361,
		0.019163, -0.037199, -0.999124,
		-0.506571, -0.861908, 0.022374,
		31.477407, 43.493778, 52.547310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190397, 44.171864, 52.012096>,  <31.832008, 44.097115, 52.531647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190397, 44.171864, 52.012096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.156858, 43.912254, 52.314552>,  <31.136734, 43.756489, 52.496025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.156858, 43.912254, 52.314552>,  <31.190397, 44.171864, 52.012096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156858, 43.912254, 52.314552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928950, 0.325492, 0.176369,
		-0.360584, -0.687624, -0.630200,
		-0.083849, -0.649021, 0.756136,
		31.131704, 43.717548, 52.541393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529421, 44.111317, 51.596355>,  <31.190397, 44.171864, 52.012096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529421, 44.111317, 51.596355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.264795, 43.871517, 51.416164>,  <30.106020, 43.727638, 51.308052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.264795, 43.871517, 51.416164>,  <30.529421, 44.111317, 51.596355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264795, 43.871517, 51.416164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045879, -0.567238, 0.822275,
		-0.748482, 0.564657, 0.347761,
		-0.661566, -0.599503, -0.450473,
		30.066326, 43.691666, 51.281021>
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
