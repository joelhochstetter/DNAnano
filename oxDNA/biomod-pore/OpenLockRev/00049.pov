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
	<39.930363, 36.594639, 50.980846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920933, 36.688515, 50.592133>,  <39.915276, 36.744843, 50.358906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920933, 36.688515, 50.592133>,  <39.930363, 36.594639, 50.980846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920933, 36.688515, 50.592133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921435, -0.371981, -0.112190,
		-0.387816, -0.898081, -0.207484,
		-0.023576, 0.234692, -0.971784,
		39.913860, 36.758923, 50.300598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221970, 36.043892, 50.772175>,  <39.930363, 36.594639, 50.980846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221970, 36.043892, 50.772175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262436, 36.315376, 50.481216>,  <40.286716, 36.478268, 50.306641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262436, 36.315376, 50.481216>,  <40.221970, 36.043892, 50.772175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262436, 36.315376, 50.481216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927577, -0.328682, -0.177677,
		-0.359675, -0.656744, -0.662813,
		0.101166, 0.678716, -0.727400,
		40.292786, 36.518990, 50.262997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570724, 35.719479, 50.242321>,  <40.221970, 36.043892, 50.772175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570724, 35.719479, 50.242321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642185, 36.101334, 50.147034>,  <40.685062, 36.330448, 50.089863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642185, 36.101334, 50.147034>,  <40.570724, 35.719479, 50.242321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642185, 36.101334, 50.147034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965414, -0.216803, -0.144817,
		-0.189894, -0.204105, -0.960355,
		0.178650, 0.954640, -0.238215,
		40.695782, 36.387726, 50.075569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963272, 35.702385, 49.559540>,  <40.570724, 35.719479, 50.242321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963272, 35.702385, 49.559540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026482, 36.040459, 49.763775>,  <41.064407, 36.243301, 49.886314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026482, 36.040459, 49.763775>,  <40.963272, 35.702385, 49.559540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026482, 36.040459, 49.763775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980292, -0.072194, -0.183891,
		-0.118560, 0.529583, -0.839932,
		0.158024, 0.845180, 0.510587,
		41.073887, 36.294014, 49.916950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457462, 36.028065, 49.112888>,  <40.963272, 35.702385, 49.559540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457462, 36.028065, 49.112888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539391, 36.208237, 49.460487>,  <41.588547, 36.316338, 49.669048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539391, 36.208237, 49.460487>,  <41.457462, 36.028065, 49.112888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539391, 36.208237, 49.460487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954675, -0.287832, -0.075821,
		0.215974, 0.845144, -0.488966,
		0.204820, 0.450428, 0.869002,
		41.600838, 36.343365, 49.721188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209778, 36.318203, 49.046627>,  <41.457462, 36.028065, 49.112888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209778, 36.318203, 49.046627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158115, 36.348728, 49.442101>,  <42.127117, 36.367043, 49.679386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158115, 36.348728, 49.442101>,  <42.209778, 36.318203, 49.046627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158115, 36.348728, 49.442101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989203, 0.079548, 0.123087,
		-0.069254, 0.993905, -0.085767,
		-0.129160, 0.076317, 0.988683,
		42.119366, 36.371624, 49.738705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631760, 36.957127, 49.348801>,  <42.209778, 36.318203, 49.046627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631760, 36.957127, 49.348801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587048, 36.678364, 49.632160>,  <42.560219, 36.511108, 49.802177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587048, 36.678364, 49.632160>,  <42.631760, 36.957127, 49.348801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587048, 36.678364, 49.632160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992253, -0.039380, 0.117831,
		-0.054220, 0.716084, 0.695905,
		-0.111782, -0.696902, 0.708401,
		42.553513, 36.469292, 49.844681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154682, 37.084457, 49.708225>,  <42.631760, 36.957127, 49.348801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154682, 37.084457, 49.708225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033421, 36.722206, 49.826843>,  <42.960663, 36.504856, 49.898014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033421, 36.722206, 49.826843>,  <43.154682, 37.084457, 49.708225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033421, 36.722206, 49.826843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950476, -0.264994, 0.162398,
		-0.068487, 0.331095, 0.941109,
		-0.303157, -0.905624, 0.296550,
		42.942474, 36.450520, 49.915810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425659, 37.069981, 50.362061>,  <43.154682, 37.084457, 49.708225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425659, 37.069981, 50.362061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371418, 36.680202, 50.290424>,  <43.338875, 36.446335, 50.247440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371418, 36.680202, 50.290424>,  <43.425659, 37.069981, 50.362061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371418, 36.680202, 50.290424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911047, -0.193678, 0.363980,
		-0.389364, -0.113807, 0.914026,
		-0.135603, -0.974442, -0.179095,
		43.330738, 36.387871, 50.236694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754063, 36.815624, 50.885395>,  <43.425659, 37.069981, 50.362061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754063, 36.815624, 50.885395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721210, 36.515495, 50.623013>,  <43.701500, 36.335419, 50.465584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721210, 36.515495, 50.623013>,  <43.754063, 36.815624, 50.885395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721210, 36.515495, 50.623013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920309, -0.309690, 0.239007,
		-0.382474, -0.584049, 0.715962,
		-0.082135, -0.750319, -0.655953,
		43.696571, 36.290398, 50.426228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.786079, 36.215050, 51.191185>,  <43.754063, 36.815624, 50.885395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.786079, 36.215050, 51.191185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911072, 36.132553, 50.820278>,  <43.986069, 36.083057, 50.597733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911072, 36.132553, 50.820278>,  <43.786079, 36.215050, 51.191185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911072, 36.132553, 50.820278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835085, -0.405614, 0.371631,
		-0.452757, -0.890473, 0.045482,
		0.312480, -0.206240, -0.927266,
		44.004814, 36.070683, 50.542099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300026, 35.674629, 51.302956>,  <43.786079, 36.215050, 51.191185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300026, 35.674629, 51.302956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367889, 35.771393, 50.920815>,  <44.408607, 35.829449, 50.691528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367889, 35.771393, 50.920815>,  <44.300026, 35.674629, 51.302956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367889, 35.771393, 50.920815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803129, -0.595749, -0.008223,
		-0.571139, -0.765875, -0.295356,
		0.169660, 0.241906, -0.955352,
		44.418789, 35.843964, 50.634209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332172, 34.997162, 50.987453>,  <44.300026, 35.674629, 51.302956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332172, 34.997162, 50.987453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.518475, 35.261127, 50.751625>,  <44.630257, 35.419506, 50.610130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.518475, 35.261127, 50.751625>,  <44.332172, 34.997162, 50.987453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.518475, 35.261127, 50.751625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847156, -0.525049, 0.081551,
		-0.255737, -0.537439, -0.803591,
		0.465753, 0.659911, -0.589569,
		44.658199, 35.459099, 50.574753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795559, 34.609612, 50.678932>,  <44.332172, 34.997162, 50.987453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795559, 34.609612, 50.678932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.942524, 34.979500, 50.639118>,  <45.030704, 35.201431, 50.615231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.942524, 34.979500, 50.639118>,  <44.795559, 34.609612, 50.678932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.942524, 34.979500, 50.639118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908021, -0.333491, 0.253538,
		0.201257, -0.183531, -0.962191,
		0.367414, 0.924716, -0.099533,
		45.052750, 35.256916, 50.609257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432968, 34.544369, 50.343674>,  <44.795559, 34.609612, 50.678932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.432968, 34.544369, 50.343674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469475, 34.894867, 50.532936>,  <45.491379, 35.105164, 50.646492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469475, 34.894867, 50.532936>,  <45.432968, 34.544369, 50.343674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469475, 34.894867, 50.532936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937909, -0.235310, 0.254865,
		0.334660, 0.420513, -0.843310,
		0.091265, 0.876241, 0.473152,
		45.496853, 35.157738, 50.674881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.034229, 34.789330, 50.064278>,  <45.432968, 34.544369, 50.343674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.034229, 34.789330, 50.064278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955677, 34.967651, 50.413605>,  <45.908546, 35.074646, 50.623203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.955677, 34.967651, 50.413605>,  <46.034229, 34.789330, 50.064278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.955677, 34.967651, 50.413605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952137, -0.126069, 0.278462,
		0.234239, 0.886206, -0.399713,
		-0.196384, 0.445808, 0.873320,
		45.896763, 35.101395, 50.675602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.467194, 35.432983, 50.202709>,  <46.034229, 34.789330, 50.064278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.467194, 35.432983, 50.202709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.354282, 35.295803, 50.561085>,  <46.286537, 35.213493, 50.776108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.354282, 35.295803, 50.561085>,  <46.467194, 35.432983, 50.202709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.354282, 35.295803, 50.561085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929626, 0.132819, 0.343736,
		-0.236883, 0.929915, 0.281327,
		-0.282280, -0.342955, 0.895935,
		46.269600, 35.192917, 50.829865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.881962, 35.744873, 50.676292>,  <46.467194, 35.432983, 50.202709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.881962, 35.744873, 50.676292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.765079, 35.429333, 50.892559>,  <46.694950, 35.240009, 51.022320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.765079, 35.429333, 50.892559>,  <46.881962, 35.744873, 50.676292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.765079, 35.429333, 50.892559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941429, -0.137783, 0.307777,
		-0.168297, 0.598935, 0.782913,
		-0.292210, -0.788855, 0.540667,
		46.677418, 35.192677, 51.054760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.122154, 35.897045, 51.327522>,  <46.881962, 35.744873, 50.676292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.122154, 35.897045, 51.327522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.077534, 35.499561, 51.331505>,  <47.050762, 35.261070, 51.333897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.077534, 35.499561, 51.331505>,  <47.122154, 35.897045, 51.327522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.077534, 35.499561, 51.331505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934389, -0.101472, 0.341499,
		-0.338339, 0.047402, 0.939830,
		-0.111554, -0.993708, 0.009960,
		47.044067, 35.201450, 51.334492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.408928, 35.630989, 51.976448>,  <47.122154, 35.897045, 51.327522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.408928, 35.630989, 51.976448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.401932, 35.330509, 51.712509>,  <47.397736, 35.150223, 51.554146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.401932, 35.330509, 51.712509>,  <47.408928, 35.630989, 51.976448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.401932, 35.330509, 51.712509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946880, -0.224394, 0.230361,
		-0.321112, -0.620768, 0.715216,
		-0.017489, -0.751195, -0.659848,
		47.396687, 35.105152, 51.514553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.808464, 35.114876, 52.323582>,  <47.408928, 35.630989, 51.976448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.808464, 35.114876, 52.323582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.820927, 35.009930, 51.937798>,  <47.828403, 34.946960, 51.706326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.820927, 35.009930, 51.937798>,  <47.808464, 35.114876, 52.323582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.820927, 35.009930, 51.937798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975981, -0.200169, 0.085978,
		-0.215614, -0.943978, 0.249830,
		0.031153, -0.262368, -0.964465,
		47.830273, 34.931221, 51.648457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.372702, 34.619038, 51.768311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.315401, 34.832619, 52.101627>,  <24.281021, 34.960770, 52.301617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.315401, 34.832619, 52.101627>,  <24.372702, 34.619038, 51.768311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.315401, 34.832619, 52.101627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895005, 0.429272, -0.121210,
		-0.422428, 0.728434, -0.539387,
		-0.143250, 0.533956, 0.833289,
		24.272427, 34.992805, 52.351612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.352409, 35.334225, 51.581005>,  <24.372702, 34.619038, 51.768311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.352409, 35.334225, 51.581005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.466705, 35.289913, 51.961758>,  <24.535284, 35.263325, 52.190208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.466705, 35.289913, 51.961758>,  <24.352409, 35.334225, 51.581005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.466705, 35.289913, 51.961758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809378, 0.559720, -0.177823,
		-0.513087, 0.821244, 0.249600,
		0.285742, -0.110782, 0.951882,
		24.552427, 35.256680, 52.247322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.543650, 35.948444, 51.703167>,  <24.352409, 35.334225, 51.581005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.543650, 35.948444, 51.703167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.712435, 35.695328, 51.962868>,  <24.813705, 35.543457, 52.118687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.712435, 35.695328, 51.962868>,  <24.543650, 35.948444, 51.703167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.712435, 35.695328, 51.962868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864494, 0.496574, -0.077872,
		-0.273124, 0.594132, 0.756578,
		0.421963, -0.632789, 0.649250,
		24.839024, 35.505489, 52.157642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.951466, 36.371677, 52.004894>,  <24.543650, 35.948444, 51.703167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.951466, 36.371677, 52.004894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.091717, 36.009262, 52.099682>,  <25.175867, 35.791813, 52.156555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.091717, 36.009262, 52.099682>,  <24.951466, 36.371677, 52.004894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.091717, 36.009262, 52.099682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926025, 0.373185, 0.056664,
		-0.139773, 0.199571, 0.969863,
		0.350630, -0.906038, 0.236969,
		25.196905, 35.737450, 52.170773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.412239, 36.486061, 52.609138>,  <24.951466, 36.371677, 52.004894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.412239, 36.486061, 52.609138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.524893, 36.155163, 52.414680>,  <25.592485, 35.956623, 52.298004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.524893, 36.155163, 52.414680>,  <25.412239, 36.486061, 52.609138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524893, 36.155163, 52.414680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956918, 0.279455, 0.078823,
		0.070650, -0.487403, 0.870314,
		0.281633, -0.827250, -0.486148,
		25.609383, 35.906986, 52.268837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012424, 36.348114, 52.997417>,  <25.412239, 36.486061, 52.609138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012424, 36.348114, 52.997417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.050520, 36.141548, 52.657005>,  <26.073378, 36.017609, 52.452759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.050520, 36.141548, 52.657005>,  <26.012424, 36.348114, 52.997417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050520, 36.141548, 52.657005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949733, 0.303258, -0.077734,
		0.298224, -0.800846, 0.519335,
		0.095239, -0.516411, -0.851028,
		26.079092, 35.986626, 52.401695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708687, 36.196877, 53.056141>,  <26.012424, 36.348114, 52.997417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708687, 36.196877, 53.056141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.623718, 36.108044, 52.675499>,  <26.572737, 36.054745, 52.447113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.623718, 36.108044, 52.675499>,  <26.708687, 36.196877, 53.056141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623718, 36.108044, 52.675499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967048, 0.092084, -0.237358,
		0.140341, -0.970670, 0.195204,
		-0.212421, -0.222083, -0.951607,
		26.559992, 36.041420, 52.390018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272186, 35.811016, 52.868847>,  <26.708687, 36.196877, 53.056141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272186, 35.811016, 52.868847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.118078, 35.916397, 52.515087>,  <27.025614, 35.979626, 52.302834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.118078, 35.916397, 52.515087>,  <27.272186, 35.811016, 52.868847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118078, 35.916397, 52.515087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898544, -0.111206, -0.424560,
		-0.210202, -0.958241, -0.193882,
		-0.385270, 0.263455, -0.884397,
		27.002497, 35.995434, 52.249767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553747, 35.358215, 52.460598>,  <27.272186, 35.811016, 52.868847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553747, 35.358215, 52.460598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.457426, 35.689667, 52.258450>,  <27.399633, 35.888538, 52.137161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.457426, 35.689667, 52.258450>,  <27.553747, 35.358215, 52.460598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457426, 35.689667, 52.258450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883861, -0.027912, -0.466916,
		-0.401004, -0.559108, -0.725668,
		-0.240802, 0.828625, -0.505366,
		27.385185, 35.938255, 52.106838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873140, 35.266285, 51.833645>,  <27.553747, 35.358215, 52.460598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873140, 35.266285, 51.833645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.797403, 35.658527, 51.853874>,  <27.751961, 35.893875, 51.866013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.797403, 35.658527, 51.853874>,  <27.873140, 35.266285, 51.833645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797403, 35.658527, 51.853874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918720, 0.195101, -0.343350,
		-0.346558, -0.018550, -0.937845,
		-0.189344, 0.980608, 0.050571,
		27.740601, 35.952709, 51.869045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231966, 35.546764, 51.275589>,  <27.873140, 35.266285, 51.833645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231966, 35.546764, 51.275589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.152973, 35.868916, 51.499146>,  <28.105577, 36.062206, 51.633282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.152973, 35.868916, 51.499146>,  <28.231966, 35.546764, 51.275589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152973, 35.868916, 51.499146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924727, 0.342285, -0.166497,
		-0.325395, 0.483945, -0.812352,
		-0.197480, 0.805381, 0.558895,
		28.093729, 36.110531, 51.666813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440163, 36.190628, 50.907578>,  <28.231966, 35.546764, 51.275589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440163, 36.190628, 50.907578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.440046, 36.279858, 51.297497>,  <28.439978, 36.333393, 51.531448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.440046, 36.279858, 51.297497>,  <28.440163, 36.190628, 50.907578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440046, 36.279858, 51.297497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900697, 0.423559, -0.096660,
		-0.434448, 0.877973, -0.201042,
		-0.000288, 0.223071, 0.974802,
		28.439960, 36.346779, 51.589939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622972, 36.882015, 51.080078>,  <28.440163, 36.190628, 50.907578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622972, 36.882015, 51.080078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.720114, 36.710495, 51.428135>,  <28.778399, 36.607582, 51.636971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.720114, 36.710495, 51.428135>,  <28.622972, 36.882015, 51.080078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720114, 36.710495, 51.428135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899527, 0.435337, -0.036521,
		-0.363146, 0.791588, 0.491439,
		0.242851, -0.428801, 0.870146,
		28.792969, 36.581856, 51.689178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884396, 37.369213, 51.442188>,  <28.622972, 36.882015, 51.080078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884396, 37.369213, 51.442188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.029385, 37.032768, 51.602757>,  <29.116379, 36.830902, 51.699097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.029385, 37.032768, 51.602757>,  <28.884396, 37.369213, 51.442188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029385, 37.032768, 51.602757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911938, 0.408961, 0.033458,
		-0.192307, 0.353942, 0.915283,
		0.362473, -0.841116, 0.401420,
		29.138126, 36.780434, 51.723183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259890, 37.581730, 52.093800>,  <28.884396, 37.369213, 51.442188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259890, 37.581730, 52.093800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.409733, 37.237587, 51.955547>,  <29.499638, 37.031101, 51.872597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.409733, 37.237587, 51.955547>,  <29.259890, 37.581730, 52.093800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409733, 37.237587, 51.955547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927184, 0.347464, 0.139997,
		-0.000352, -0.372909, 0.927868,
		0.374607, -0.860353, -0.345633,
		29.522116, 36.979481, 51.851856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905182, 37.558617, 52.380634>,  <29.259890, 37.581730, 52.093800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905182, 37.558617, 52.380634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.959494, 37.249119, 52.133125>,  <29.992081, 37.063419, 51.984619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.959494, 37.249119, 52.133125>,  <29.905182, 37.558617, 52.380634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959494, 37.249119, 52.133125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979118, 0.200177, -0.035459,
		0.151301, -0.601040, 0.784767,
		0.135780, -0.773744, -0.618776,
		30.000227, 37.016994, 51.947491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439770, 37.096630, 52.658264>,  <29.905182, 37.558617, 52.380634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439770, 37.096630, 52.658264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.439707, 37.026939, 52.264381>,  <30.439669, 36.985126, 52.028053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.439707, 37.026939, 52.264381>,  <30.439770, 37.096630, 52.658264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439707, 37.026939, 52.264381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996112, 0.086720, -0.015502,
		0.088094, -0.980880, 0.173533,
		-0.000157, -0.174224, -0.984706,
		30.439659, 36.974670, 51.968971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031664, 36.526234, 52.530449>,  <30.439770, 37.096630, 52.658264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031664, 36.526234, 52.530449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.932566, 36.696423, 52.182289>,  <30.873108, 36.798534, 51.973392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.932566, 36.696423, 52.182289>,  <31.031664, 36.526234, 52.530449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932566, 36.696423, 52.182289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967152, 0.055829, -0.247992,
		-0.056921, -0.903248, -0.425328,
		-0.247744, 0.425472, -0.870400,
		30.858242, 36.824066, 51.921169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384232, 36.116013, 52.047512>,  <31.031664, 36.526234, 52.530449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384232, 36.116013, 52.047512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.308764, 36.425102, 51.805092>,  <31.263483, 36.610558, 51.659641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.308764, 36.425102, 51.805092>,  <31.384232, 36.116013, 52.047512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308764, 36.425102, 51.805092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963522, 0.026376, -0.266326,
		-0.189812, -0.634192, -0.749515,
		-0.188671, 0.772726, -0.606051,
		31.252163, 36.656921, 51.623276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614265, 35.915291, 51.272968>,  <31.384232, 36.116013, 52.047512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614265, 35.915291, 51.272968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.648855, 36.309311, 51.332554>,  <31.669609, 36.545723, 51.368305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.648855, 36.309311, 51.332554>,  <31.614265, 35.915291, 51.272968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648855, 36.309311, 51.332554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880899, -0.005763, -0.473269,
		-0.465338, 0.172148, -0.868232,
		0.086476, 0.985054, 0.148963,
		31.674799, 36.604828, 51.377243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843369, 36.141621, 50.672737>,  <31.614265, 35.915291, 51.272968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843369, 36.141621, 50.672737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.937130, 36.408382, 50.955662>,  <31.993387, 36.568439, 51.125416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.937130, 36.408382, 50.955662>,  <31.843369, 36.141621, 50.672737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937130, 36.408382, 50.955662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909712, 0.106050, -0.401469,
		-0.342752, 0.737558, -0.581832,
		0.234403, 0.666904, 0.707314,
		32.007450, 36.608452, 51.167854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.659618, 35.225250, 34.689102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.436741, 35.207397, 35.020775>,  <24.303015, 35.196686, 35.219780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.436741, 35.207397, 35.020775>,  <24.659618, 35.225250, 34.689102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.436741, 35.207397, 35.020775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785731, -0.351376, 0.509079,
		0.268632, 0.935170, 0.230855,
		-0.557193, -0.044635, 0.829183,
		24.269583, 35.194008, 35.269531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.045961, 35.497028, 35.231747>,  <24.659618, 35.225250, 34.689102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.045961, 35.497028, 35.231747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.764982, 35.281696, 35.417984>,  <24.596395, 35.152496, 35.529724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.764982, 35.281696, 35.417984>,  <25.045961, 35.497028, 35.231747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.764982, 35.281696, 35.417984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683154, -0.326440, 0.653251,
		-0.199674, 0.776945, 0.597066,
		-0.702446, -0.538325, 0.465591,
		24.554249, 35.120197, 35.557663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.108418, 35.618885, 35.991703>,  <25.045961, 35.497028, 35.231747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.108418, 35.618885, 35.991703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.974392, 35.268177, 35.853714>,  <24.893976, 35.057751, 35.770920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.974392, 35.268177, 35.853714>,  <25.108418, 35.618885, 35.991703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.974392, 35.268177, 35.853714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739578, -0.471591, 0.480236,
		-0.583744, -0.094227, 0.806452,
		-0.335064, -0.876769, -0.344977,
		24.873873, 35.005146, 35.750221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.181526, 36.069504, 36.519241>,  <25.108418, 35.618885, 35.991703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.181526, 36.069504, 36.519241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.934097, 36.378376, 36.461124>,  <24.785641, 36.563698, 36.426254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.934097, 36.378376, 36.461124>,  <25.181526, 36.069504, 36.519241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.934097, 36.378376, 36.461124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664515, -0.415447, 0.621146,
		0.419273, 0.480775, 0.770108,
		-0.618571, 0.772178, -0.145297,
		24.748526, 36.610031, 36.417534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.998154, 36.374195, 37.230915>,  <25.181526, 36.069504, 36.519241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.998154, 36.374195, 37.230915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.715744, 36.444439, 36.956490>,  <24.546297, 36.486584, 36.791832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.715744, 36.444439, 36.956490>,  <24.998154, 36.374195, 37.230915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.715744, 36.444439, 36.956490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695773, -0.352591, 0.625763,
		-0.132012, 0.919153, 0.371122,
		-0.706026, 0.175608, -0.686068,
		24.503937, 36.497120, 36.750668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.972599, 36.235340, 37.885353>,  <24.998154, 36.374195, 37.230915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.972599, 36.235340, 37.885353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.344200, 36.370888, 37.825859>,  <25.567162, 36.452217, 37.790161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.344200, 36.370888, 37.825859>,  <24.972599, 36.235340, 37.885353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.344200, 36.370888, 37.825859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243981, -0.258629, 0.934657,
		0.278257, -0.904588, -0.322945,
		0.929003, 0.338868, -0.148737,
		25.622902, 36.472549, 37.781239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.415041, 35.693806, 37.944839>,  <24.972599, 36.235340, 37.885353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.415041, 35.693806, 37.944839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.627275, 36.019932, 38.037563>,  <25.754616, 36.215607, 38.093197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.627275, 36.019932, 38.037563>,  <25.415041, 35.693806, 37.944839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.627275, 36.019932, 38.037563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206444, -0.389541, 0.897573,
		0.822106, -0.428386, -0.375004,
		0.530587, 0.815318, 0.231806,
		25.786451, 36.264526, 38.107105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740580, 35.492805, 38.524235>,  <25.415041, 35.693806, 37.944839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740580, 35.492805, 38.524235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.909071, 35.851974, 38.473156>,  <26.010166, 36.067474, 38.442509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.909071, 35.851974, 38.473156>,  <25.740580, 35.492805, 38.524235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909071, 35.851974, 38.473156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515253, -0.121051, 0.848446,
		0.746379, -0.423185, -0.513646,
		0.421228, 0.897920, -0.127698,
		26.035439, 36.121349, 38.434845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433800, 35.480762, 38.870205>,  <25.740580, 35.492805, 38.524235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433800, 35.480762, 38.870205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.397898, 35.870514, 38.787704>,  <26.376356, 36.104362, 38.738205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.397898, 35.870514, 38.787704>,  <26.433800, 35.480762, 38.870205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397898, 35.870514, 38.787704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507932, 0.222914, 0.832054,
		0.856708, -0.030079, -0.514924,
		-0.089756, 0.974374, -0.206250,
		26.370972, 36.162827, 38.725830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105570, 35.741955, 39.240345>,  <26.433800, 35.480762, 38.870205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105570, 35.741955, 39.240345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.899965, 36.082264, 39.196579>,  <26.776604, 36.286449, 39.170319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.899965, 36.082264, 39.196579>,  <27.105570, 35.741955, 39.240345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899965, 36.082264, 39.196579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564141, 0.431380, 0.704028,
		0.646172, 0.300149, -0.701692,
		-0.514009, 0.850777, -0.109419,
		26.745762, 36.337498, 39.163754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624996, 36.382824, 39.154705>,  <27.105570, 35.741955, 39.240345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624996, 36.382824, 39.154705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.259790, 36.456154, 39.300472>,  <27.040667, 36.500153, 39.387932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.259790, 36.456154, 39.300472>,  <27.624996, 36.382824, 39.154705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259790, 36.456154, 39.300472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403774, 0.278908, 0.871308,
		0.058092, 0.942657, -0.328668,
		-0.913013, 0.183324, 0.364418,
		26.985888, 36.511150, 39.409798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560633, 37.091454, 39.337265>,  <27.624996, 36.382824, 39.154705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560633, 37.091454, 39.337265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.372381, 36.812351, 39.553284>,  <27.259430, 36.644890, 39.682896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.372381, 36.812351, 39.553284>,  <27.560633, 37.091454, 39.337265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372381, 36.812351, 39.553284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540017, 0.256255, 0.801695,
		-0.697775, 0.668933, 0.256199,
		-0.470628, -0.697755, 0.540044,
		27.231194, 36.603024, 39.715298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308754, 37.330444, 39.989758>,  <27.560633, 37.091454, 39.337265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308754, 37.330444, 39.989758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.405519, 36.942387, 39.996628>,  <27.463579, 36.709553, 40.000751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.405519, 36.942387, 39.996628>,  <27.308754, 37.330444, 39.989758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405519, 36.942387, 39.996628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745928, 0.197270, 0.636142,
		-0.620539, -0.141078, 0.771381,
		0.241916, -0.970145, 0.017180,
		27.478094, 36.651344, 40.001781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204935, 37.152706, 40.663372>,  <27.308754, 37.330444, 39.989758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204935, 37.152706, 40.663372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.455076, 36.919209, 40.456230>,  <27.605162, 36.779110, 40.331944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.455076, 36.919209, 40.456230>,  <27.204935, 37.152706, 40.663372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455076, 36.919209, 40.456230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602569, -0.060437, 0.795775,
		-0.495827, -0.809685, 0.313952,
		0.625353, -0.583744, -0.517858,
		27.642681, 36.744083, 40.300873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573574, 36.548660, 41.065369>,  <27.204935, 37.152706, 40.663372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573574, 36.548660, 41.065369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.805464, 36.660057, 40.759071>,  <27.944597, 36.726894, 40.575294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.805464, 36.660057, 40.759071>,  <27.573574, 36.548660, 41.065369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805464, 36.660057, 40.759071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814246, -0.162978, 0.557172,
		0.030368, -0.946510, -0.321243,
		0.579724, 0.278491, -0.765743,
		27.979382, 36.743603, 40.529350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150583, 36.141487, 41.288162>,  <27.573574, 36.548660, 41.065369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150583, 36.141487, 41.288162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.265690, 36.453014, 41.065224>,  <28.334753, 36.639931, 40.931461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.265690, 36.453014, 41.065224>,  <28.150583, 36.141487, 41.288162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265690, 36.453014, 41.065224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752533, 0.176075, 0.634580,
		0.592357, -0.602033, -0.535416,
		0.287764, 0.778816, -0.557348,
		28.352018, 36.686661, 40.898018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812134, 36.319477, 41.687382>,  <28.150583, 36.141487, 41.288162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812134, 36.319477, 41.687382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.153679, 36.515221, 41.758308>,  <29.358606, 36.632668, 41.800865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.153679, 36.515221, 41.758308>,  <28.812134, 36.319477, 41.687382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153679, 36.515221, 41.758308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072141, -0.448643, 0.890795,
		0.515472, -0.747826, -0.418384,
		0.853864, 0.489362, 0.177313,
		29.409838, 36.662029, 41.811501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271652, 35.817635, 41.958115>,  <28.812134, 36.319477, 41.687382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271652, 35.817635, 41.958115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.385288, 36.181377, 42.079678>,  <29.453470, 36.399624, 42.152615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.385288, 36.181377, 42.079678>,  <29.271652, 35.817635, 41.958115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385288, 36.181377, 42.079678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152808, -0.355860, 0.921962,
		0.946542, -0.215480, -0.240054,
		0.284090, 0.909358, 0.303909,
		29.470516, 36.454185, 42.170849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068659, 35.766102, 42.172356>,  <29.271652, 35.817635, 41.958115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068659, 35.766102, 42.172356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.820286, 36.031601, 42.339153>,  <29.671263, 36.190903, 42.439232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.820286, 36.031601, 42.339153>,  <30.068659, 35.766102, 42.172356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820286, 36.031601, 42.339153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191905, -0.387056, 0.901865,
		0.760011, 0.640018, 0.112958,
		-0.620931, 0.663750, 0.416990,
		29.634007, 36.230724, 42.464249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703053, 36.166599, 41.995972>,  <30.068659, 35.766102, 42.172356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703053, 36.166599, 41.995972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.519693, 36.038242, 42.327488>,  <30.409678, 35.961227, 42.526398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.519693, 36.038242, 42.327488>,  <30.703053, 36.166599, 41.995972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519693, 36.038242, 42.327488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337487, 0.799840, 0.496346,
		-0.822178, 0.507230, -0.258345,
		-0.458396, -0.320897, 0.828794,
		30.382175, 35.941975, 42.576126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515028, 36.804546, 42.393131>,  <30.703053, 36.166599, 41.995972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515028, 36.804546, 42.393131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.499800, 36.512413, 42.665939>,  <30.490664, 36.337132, 42.829624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.499800, 36.512413, 42.665939>,  <30.515028, 36.804546, 42.393131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499800, 36.512413, 42.665939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616036, 0.520242, 0.591480,
		-0.786798, 0.442669, 0.430109,
		-0.038069, -0.730337, 0.682025,
		30.488379, 36.293312, 42.870548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517973, 37.251324, 43.044895>,  <30.515028, 36.804546, 42.393131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517973, 37.251324, 43.044895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.644997, 36.873604, 43.079449>,  <30.721210, 36.646973, 43.100182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.644997, 36.873604, 43.079449>,  <30.517973, 37.251324, 43.044895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644997, 36.873604, 43.079449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738575, 0.303448, 0.602019,
		-0.594696, -0.127379, 0.793796,
		0.317560, -0.944296, 0.086381,
		30.740265, 36.590317, 43.105362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672716, 37.110691, 43.836727>,  <30.517973, 37.251324, 43.044895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672716, 37.110691, 43.836727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.957308, 36.944271, 43.610207>,  <31.128063, 36.844418, 43.474293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.957308, 36.944271, 43.610207>,  <30.672716, 37.110691, 43.836727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957308, 36.944271, 43.610207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689700, 0.259111, 0.676147,
		-0.134575, -0.871645, 0.471301,
		0.711480, -0.416049, -0.566304,
		31.170752, 36.819458, 43.440315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077692, 36.686554, 44.304947>,  <30.672716, 37.110691, 43.836727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077692, 36.686554, 44.304947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.320086, 36.806278, 44.010139>,  <31.465521, 36.878113, 43.833256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.320086, 36.806278, 44.010139>,  <31.077692, 36.686554, 44.304947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320086, 36.806278, 44.010139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707115, 0.221719, 0.671438,
		0.364381, -0.928038, -0.077291,
		0.605983, 0.299313, -0.737019,
		31.501881, 36.896072, 43.789032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736689, 36.432972, 44.345196>,  <31.077692, 36.686554, 44.304947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736689, 36.432972, 44.345196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.759258, 36.782841, 44.152630>,  <31.772800, 36.992764, 44.037090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.759258, 36.782841, 44.152630>,  <31.736689, 36.432972, 44.345196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759258, 36.782841, 44.152630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714600, 0.301362, 0.631290,
		0.697254, -0.379643, -0.608036,
		0.056426, 0.874673, -0.481419,
		31.776186, 37.045242, 44.008205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364548, 36.478535, 43.934242>,  <31.736689, 36.432972, 44.345196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364548, 36.478535, 43.934242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.229103, 36.826057, 44.078754>,  <32.147835, 37.034569, 44.165462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.229103, 36.826057, 44.078754>,  <32.364548, 36.478535, 43.934242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229103, 36.826057, 44.078754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853931, 0.122505, 0.505761,
		0.395148, 0.479765, -0.783379,
		-0.338614, 0.868802, 0.361279,
		32.127518, 37.086697, 44.187138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860191, 36.975368, 43.912308>,  <32.364548, 36.478535, 43.934242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860191, 36.975368, 43.912308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.615704, 37.044853, 44.221172>,  <32.469009, 37.086544, 44.406490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.615704, 37.044853, 44.221172>,  <32.860191, 36.975368, 43.912308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615704, 37.044853, 44.221172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786261, 0.021647, 0.617515,
		0.090556, 0.984558, -0.149816,
		-0.611223, 0.173714, 0.772159,
		32.432335, 37.096966, 44.452820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187366, 37.471413, 44.370731>,  <32.860191, 36.975368, 43.912308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187366, 37.471413, 44.370731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.944405, 37.232479, 44.580204>,  <32.798626, 37.089119, 44.705887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.944405, 37.232479, 44.580204>,  <33.187366, 37.471413, 44.370731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944405, 37.232479, 44.580204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664709, -0.021195, 0.746802,
		-0.434992, 0.801712, 0.409928,
		-0.607408, -0.597335, 0.523685,
		32.762180, 37.053280, 44.737309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863743, 37.810898, 44.958485>,  <33.187366, 37.471413, 44.370731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863743, 37.810898, 44.958485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.955757, 37.423199, 44.993446>,  <33.010967, 37.190578, 45.014423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.955757, 37.423199, 44.993446>,  <32.863743, 37.810898, 44.958485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955757, 37.423199, 44.993446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370772, 0.170328, 0.912971,
		-0.899783, -0.177613, 0.398552,
		0.230040, -0.969248, 0.087405,
		33.024769, 37.132423, 45.019669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597084, 37.489361, 45.531532>,  <32.863743, 37.810898, 44.958485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597084, 37.489361, 45.531532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916302, 37.257484, 45.465706>,  <33.107834, 37.118359, 45.426212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.916302, 37.257484, 45.465706>,  <32.597084, 37.489361, 45.531532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916302, 37.257484, 45.465706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142016, -0.084471, 0.986254,
		-0.585625, -0.810445, 0.014914,
		0.798045, -0.579692, -0.164564,
		33.155716, 37.083576, 45.416336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659893, 37.083103, 46.002335>,  <32.597084, 37.489361, 45.531532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659893, 37.083103, 46.002335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050705, 37.039467, 45.929111>,  <33.285191, 37.013283, 45.885178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050705, 37.039467, 45.929111>,  <32.659893, 37.083103, 46.002335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050705, 37.039467, 45.929111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131469, -0.367503, 0.920683,
		-0.167714, -0.923602, -0.344719,
		0.977030, -0.109092, -0.183060,
		33.343815, 37.006741, 45.874195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945801, 36.340408, 46.198360>,  <32.659893, 37.083103, 46.002335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945801, 36.340408, 46.198360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.166473, 36.671494, 46.239418>,  <33.298878, 36.870144, 46.264053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.166473, 36.671494, 46.239418>,  <32.945801, 36.340408, 46.198360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166473, 36.671494, 46.239418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006960, -0.118499, 0.992930,
		0.834026, -0.548495, -0.059613,
		0.551681, 0.827714, 0.102649,
		33.331978, 36.919807, 46.270214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597187, 36.289879, 46.627625>,  <32.945801, 36.340408, 46.198360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597187, 36.289879, 46.627625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.389069, 36.630821, 46.648735>,  <33.264198, 36.835384, 46.661400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.389069, 36.630821, 46.648735>,  <33.597187, 36.289879, 46.627625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389069, 36.630821, 46.648735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054617, -0.094885, 0.993989,
		0.852236, 0.514289, 0.095922,
		-0.520299, 0.852352, 0.052776,
		33.232979, 36.886528, 46.664566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016838, 36.577610, 47.107994>,  <33.597187, 36.289879, 46.627625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016838, 36.577610, 47.107994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630783, 36.681713, 47.096897>,  <33.399151, 36.744175, 47.090237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.630783, 36.681713, 47.096897>,  <34.016838, 36.577610, 47.107994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630783, 36.681713, 47.096897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100647, -0.271186, 0.957250,
		0.241607, 0.926674, 0.287927,
		-0.965141, 0.260258, -0.027746,
		33.341240, 36.759789, 47.088573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876701, 36.993835, 47.629402>,  <34.016838, 36.577610, 47.107994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876701, 36.993835, 47.629402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.527508, 36.813156, 47.555782>,  <33.317993, 36.704750, 47.511608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.527508, 36.813156, 47.555782>,  <33.876701, 36.993835, 47.629402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527508, 36.813156, 47.555782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114233, -0.177510, 0.977467,
		-0.474192, 0.874333, 0.103364,
		-0.872980, -0.451699, -0.184051,
		33.265614, 36.677647, 47.500568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457180, 37.302067, 48.001961>,  <33.876701, 36.993835, 47.629402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457180, 37.302067, 48.001961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.350014, 36.919830, 47.952869>,  <33.285713, 36.690487, 47.923416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.350014, 36.919830, 47.952869>,  <33.457180, 37.302067, 48.001961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350014, 36.919830, 47.952869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055089, -0.111982, 0.992182,
		-0.961866, 0.272583, -0.022641,
		-0.267916, -0.955593, -0.122728,
		33.269638, 36.633152, 47.916050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346279, 37.118797, 48.588249>,  <33.457180, 37.302067, 48.001961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346279, 37.118797, 48.588249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.292942, 36.739799, 48.471992>,  <33.260941, 36.512402, 48.402241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.292942, 36.739799, 48.471992>,  <33.346279, 37.118797, 48.588249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292942, 36.739799, 48.471992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124959, -0.274843, 0.953335,
		-0.983161, 0.163439, -0.081749,
		-0.133344, -0.947496, -0.290638,
		33.252937, 36.455551, 48.384800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710541, 36.863937, 48.821590>,  <33.346279, 37.118797, 48.588249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710541, 36.863937, 48.821590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.953075, 36.547485, 48.789410>,  <33.098598, 36.357616, 48.770103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.953075, 36.547485, 48.789410>,  <32.710541, 36.863937, 48.821590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953075, 36.547485, 48.789410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043366, -0.133913, 0.990044,
		-0.794023, -0.596812, -0.115505,
		0.606338, -0.791127, -0.080448,
		33.134975, 36.310146, 48.765274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534512, 36.838516, 49.516331>,  <32.710541, 36.863937, 48.821590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534512, 36.838516, 49.516331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.142860, 36.790600, 49.450661>,  <31.907869, 36.761848, 49.411259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.142860, 36.790600, 49.450661>,  <32.534512, 36.838516, 49.516331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142860, 36.790600, 49.450661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067886, 0.568635, -0.819784,
		0.191562, -0.813820, -0.548636,
		-0.979130, -0.119794, -0.164176,
		31.849121, 36.754662, 49.401409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329205, 36.596222, 50.231941>,  <32.534512, 36.838516, 49.516331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329205, 36.596222, 50.231941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.370842, 36.733196, 50.605446>,  <32.395824, 36.815380, 50.829548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.370842, 36.733196, 50.605446>,  <32.329205, 36.596222, 50.231941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370842, 36.733196, 50.605446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852889, 0.452219, -0.260918,
		-0.511610, 0.823552, -0.244985,
		0.104093, 0.342433, 0.933758,
		32.402069, 36.835926, 50.885574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497402, 37.344906, 50.232182>,  <32.329205, 36.596222, 50.231941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497402, 37.344906, 50.232182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.640331, 37.182198, 50.568481>,  <32.726089, 37.084572, 50.770264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.640331, 37.182198, 50.568481>,  <32.497402, 37.344906, 50.232182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640331, 37.182198, 50.568481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902399, 0.382472, -0.198474,
		-0.240831, 0.829612, 0.503731,
		0.357319, -0.406767, 0.840752,
		32.747528, 37.060169, 50.820705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109432, 37.773735, 50.377327>,  <32.497402, 37.344906, 50.232182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109432, 37.773735, 50.377327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.142208, 37.453850, 50.615231>,  <33.161873, 37.261917, 50.757973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.142208, 37.453850, 50.615231>,  <33.109432, 37.773735, 50.377327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142208, 37.453850, 50.615231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996528, 0.074600, -0.036981,
		-0.014795, 0.595728, 0.803050,
		0.081938, -0.799714, 0.594763,
		33.166790, 37.213936, 50.793659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709007, 37.928917, 50.750690>,  <33.109432, 37.773735, 50.377327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709007, 37.928917, 50.750690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.648754, 37.536694, 50.801006>,  <33.612602, 37.301361, 50.831196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.648754, 37.536694, 50.801006>,  <33.709007, 37.928917, 50.750690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648754, 37.536694, 50.801006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942411, -0.180866, -0.281335,
		0.298615, 0.076168, 0.951329,
		-0.150634, -0.980554, 0.125790,
		33.603565, 37.242527, 50.838745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367508, 37.758499, 51.034588>,  <33.709007, 37.928917, 50.750690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367508, 37.758499, 51.034588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187267, 37.450481, 50.853928>,  <34.079124, 37.265671, 50.745529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187267, 37.450481, 50.853928>,  <34.367508, 37.758499, 51.034588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187267, 37.450481, 50.853928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855091, -0.226946, -0.466171,
		0.256470, -0.596263, 0.760719,
		-0.450603, -0.770043, -0.451654,
		34.052086, 37.219467, 50.718430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767338, 37.157986, 51.016327>,  <34.367508, 37.758499, 51.034588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767338, 37.157986, 51.016327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.533512, 37.072674, 50.703201>,  <34.393215, 37.021488, 50.515327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.533512, 37.072674, 50.703201>,  <34.767338, 37.157986, 51.016327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533512, 37.072674, 50.703201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792868, -0.354907, -0.495380,
		-0.172170, -0.910249, 0.376570,
		-0.584567, -0.213281, -0.782811,
		34.358143, 37.008690, 50.468357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027130, 36.442268, 50.762562>,  <34.767338, 37.157986, 51.016327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027130, 36.442268, 50.762562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.841782, 36.614639, 50.452831>,  <34.730572, 36.718060, 50.266991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.841782, 36.614639, 50.452831>,  <35.027130, 36.442268, 50.762562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841782, 36.614639, 50.452831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766762, -0.243083, -0.594126,
		-0.444251, -0.869030, -0.217779,
		-0.463375, 0.430926, -0.774329,
		34.702770, 36.743916, 50.220531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160656, 36.009388, 50.244259>,  <35.027130, 36.442268, 50.762562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160656, 36.009388, 50.244259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040493, 36.350040, 50.072453>,  <34.968395, 36.554432, 49.969368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.040493, 36.350040, 50.072453>,  <35.160656, 36.009388, 50.244259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040493, 36.350040, 50.072453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594457, -0.184986, -0.782560,
		-0.745907, -0.490413, -0.450687,
		-0.300407, 0.851631, -0.429512,
		34.950371, 36.605530, 49.943600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193775, 35.902222, 49.482777>,  <35.160656, 36.009388, 50.244259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193775, 35.902222, 49.482777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184948, 36.301804, 49.498772>,  <35.179653, 36.541553, 49.508369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.184948, 36.301804, 49.498772>,  <35.193775, 35.902222, 49.482777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184948, 36.301804, 49.498772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703126, 0.043944, -0.709707,
		-0.710723, 0.012458, -0.703362,
		-0.022067, 0.998956, 0.039991,
		35.178329, 36.601490, 49.510769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168304, 36.162373, 48.815823>,  <35.193775, 35.902222, 49.482777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168304, 36.162373, 48.815823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322128, 36.445408, 49.052948>,  <35.414425, 36.615231, 49.195221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322128, 36.445408, 49.052948>,  <35.168304, 36.162373, 48.815823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322128, 36.445408, 49.052948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798439, 0.067313, -0.598302,
		-0.463257, 0.703408, -0.539082,
		0.384563, 0.707591, 0.592812,
		35.437496, 36.657684, 49.230793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434799, 36.486404, 48.349182>,  <35.168304, 36.162373, 48.815823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434799, 36.486404, 48.349182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.606724, 36.608253, 48.689175>,  <35.709877, 36.681362, 48.893169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.606724, 36.608253, 48.689175>,  <35.434799, 36.486404, 48.349182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606724, 36.608253, 48.689175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871312, 0.106960, -0.478931,
		-0.236807, 0.946449, -0.219447,
		0.429811, 0.304621, 0.849981,
		35.735668, 36.699638, 48.944168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579079, 37.075821, 48.128284>,  <35.434799, 36.486404, 48.349182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579079, 37.075821, 48.128284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.793072, 37.014488, 48.460617>,  <35.921467, 36.977688, 48.660015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.793072, 37.014488, 48.460617>,  <35.579079, 37.075821, 48.128284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793072, 37.014488, 48.460617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844680, 0.117438, -0.522230,
		-0.017497, 0.981172, 0.192343,
		0.534986, -0.153331, 0.830831,
		35.953568, 36.968491, 48.709866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959381, 37.545811, 48.090664>,  <35.579079, 37.075821, 48.128284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959381, 37.545811, 48.090664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.161842, 37.295666, 48.328228>,  <36.283318, 37.145576, 48.470768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.161842, 37.295666, 48.328228>,  <35.959381, 37.545811, 48.090664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161842, 37.295666, 48.328228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843987, 0.217449, -0.490307,
		0.177475, 0.749423, 0.637862,
		0.506150, -0.625365, 0.593912,
		36.313686, 37.108055, 48.506401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567039, 37.868332, 48.341900>,  <35.959381, 37.545811, 48.090664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567039, 37.868332, 48.341900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.658783, 37.479839, 48.367538>,  <36.713829, 37.246742, 48.382923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.658783, 37.479839, 48.367538>,  <36.567039, 37.868332, 48.341900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658783, 37.479839, 48.367538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836966, 0.163173, -0.522362,
		0.496874, 0.173456, 0.850311,
		0.229355, -0.971230, 0.064101,
		36.727589, 37.188469, 48.386768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275398, 37.840324, 48.355717>,  <36.567039, 37.868332, 48.341900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275398, 37.840324, 48.355717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.173595, 37.470707, 48.241619>,  <37.112514, 37.248936, 48.173161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.173595, 37.470707, 48.241619>,  <37.275398, 37.840324, 48.355717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173595, 37.470707, 48.241619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758395, -0.007695, -0.651750,
		0.600053, -0.382201, 0.702751,
		-0.254507, -0.924047, -0.285242,
		37.097244, 37.193493, 48.156048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793354, 37.350452, 48.347836>,  <37.275398, 37.840324, 48.355717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793354, 37.350452, 48.347836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.531467, 37.162510, 48.110996>,  <37.374336, 37.049744, 47.968891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.531467, 37.162510, 48.110996>,  <37.793354, 37.350452, 48.347836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531467, 37.162510, 48.110996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751789, -0.323427, -0.574638,
		0.078497, -0.821358, 0.564987,
		-0.654715, -0.469858, -0.592099,
		37.335052, 37.021553, 47.933365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986004, 36.981674, 47.830513>,  <37.793354, 37.350452, 48.347836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986004, 36.981674, 47.830513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.216656, 37.292645, 47.730026>,  <38.355045, 37.479225, 47.669735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.216656, 37.292645, 47.730026>,  <37.986004, 36.981674, 47.830513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216656, 37.292645, 47.730026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260634, 0.116382, 0.958397,
		0.774318, -0.618116, -0.135514,
		0.576629, 0.777424, -0.251218,
		38.389645, 37.525871, 47.654659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786171, 36.741558, 47.800293>,  <37.986004, 36.981674, 47.830513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786171, 36.741558, 47.800293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.681774, 37.116810, 47.891327>,  <38.619137, 37.341961, 47.945946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.681774, 37.116810, 47.891327>,  <38.786171, 36.741558, 47.800293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681774, 37.116810, 47.891327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222297, -0.171009, 0.959864,
		0.939397, 0.301108, -0.163912,
		-0.260993, 0.938131, 0.227581,
		38.603477, 37.398251, 47.959602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431591, 36.361546, 48.023132>,  <38.786171, 36.741558, 47.800293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431591, 36.361546, 48.023132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.631710, 36.189545, 48.323742>,  <39.751781, 36.086342, 48.504108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.631710, 36.189545, 48.323742>,  <39.431591, 36.361546, 48.023132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631710, 36.189545, 48.323742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864962, -0.287554, 0.411283,
		0.039252, -0.855809, -0.515801,
		0.500300, -0.430004, 0.751529,
		39.781799, 36.060543, 48.549202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127022, 35.712952, 48.138676>,  <39.431591, 36.361546, 48.023132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127022, 35.712952, 48.138676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.291206, 35.827286, 48.485046>,  <39.389717, 35.895885, 48.692867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.291206, 35.827286, 48.485046>,  <39.127022, 35.712952, 48.138676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291206, 35.827286, 48.485046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876950, -0.136568, 0.460768,
		0.249961, -0.948498, 0.194606,
		0.410461, 0.285834, 0.865922,
		39.414345, 35.913036, 48.744823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841019, 35.303371, 48.713459>,  <39.127022, 35.712952, 48.138676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841019, 35.303371, 48.713459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.986523, 35.600071, 48.938843>,  <39.073826, 35.778091, 49.074074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.986523, 35.600071, 48.938843>,  <38.841019, 35.303371, 48.713459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986523, 35.600071, 48.938843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699368, -0.182071, 0.691183,
		0.615276, -0.645488, 0.452528,
		0.363758, 0.741752, 0.563458,
		39.095650, 35.822598, 49.107880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298801, 35.122971, 49.425518>,  <38.841019, 35.303371, 48.713459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298801, 35.122971, 49.425518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.065147, 35.447544, 49.417965>,  <38.924957, 35.642288, 49.413433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.065147, 35.447544, 49.417965>,  <39.298801, 35.122971, 49.425518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065147, 35.447544, 49.417965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619211, -0.430470, 0.656714,
		0.524753, 0.395302, 0.753903,
		-0.584133, 0.811438, -0.018885,
		38.889908, 35.690975, 49.412300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137932, 35.195656, 50.146469>,  <39.298801, 35.122971, 49.425518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137932, 35.195656, 50.146469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869286, 35.414543, 49.946674>,  <38.708099, 35.545876, 49.826797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869286, 35.414543, 49.946674>,  <39.137932, 35.195656, 50.146469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869286, 35.414543, 49.946674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700772, -0.250301, 0.668033,
		0.240536, 0.798688, 0.551579,
		-0.671611, 0.547217, -0.499491,
		38.667801, 35.578709, 49.796825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681553, 35.504101, 50.679535>,  <39.137932, 35.195656, 50.146469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681553, 35.504101, 50.679535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.440926, 35.512650, 50.360119>,  <38.296551, 35.517780, 50.168468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.440926, 35.512650, 50.360119>,  <38.681553, 35.504101, 50.679535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440926, 35.512650, 50.360119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792784, -0.138668, 0.593518,
		-0.098047, 0.990108, 0.100361,
		-0.601564, 0.021372, -0.798538,
		38.260456, 35.519062, 50.120556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188839, 35.878075, 50.956158>,  <38.681553, 35.504101, 50.679535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188839, 35.878075, 50.956158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027988, 35.692390, 50.640488>,  <37.931477, 35.580982, 50.451084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027988, 35.692390, 50.640488>,  <38.188839, 35.878075, 50.956158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027988, 35.692390, 50.640488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844302, -0.145424, 0.515757,
		-0.354184, 0.873706, -0.333453,
		-0.402128, -0.464208, -0.789179,
		37.907349, 35.553127, 50.403732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496895, 36.181973, 50.879967>,  <38.188839, 35.878075, 50.956158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496895, 36.181973, 50.879967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509819, 35.829765, 50.690800>,  <37.517574, 35.618443, 50.577301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.509819, 35.829765, 50.690800>,  <37.496895, 36.181973, 50.879967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509819, 35.829765, 50.690800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837050, -0.282403, 0.468610,
		-0.546171, 0.380712, -0.746161,
		0.032312, -0.880515, -0.472915,
		37.519512, 35.565609, 50.548923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859745, 36.132236, 50.562260>,  <37.496895, 36.181973, 50.879967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859745, 36.132236, 50.562260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996723, 35.758270, 50.599487>,  <37.078911, 35.533890, 50.621822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.996723, 35.758270, 50.599487>,  <36.859745, 36.132236, 50.562260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996723, 35.758270, 50.599487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871383, -0.279004, 0.403545,
		-0.351314, -0.219292, -0.910214,
		0.342448, -0.934916, 0.093070,
		37.099457, 35.477795, 50.627407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266800, 35.738850, 50.484501>,  <36.859745, 36.132236, 50.562260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266800, 35.738850, 50.484501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512554, 35.486763, 50.674385>,  <36.660007, 35.335510, 50.788315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.512554, 35.486763, 50.674385>,  <36.266800, 35.738850, 50.484501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512554, 35.486763, 50.674385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740094, -0.251786, 0.623590,
		-0.273474, -0.734456, -0.621117,
		0.614388, -0.630221, 0.474710,
		36.696873, 35.297699, 50.816799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805714, 35.361431, 50.608402>,  <36.266800, 35.738850, 50.484501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805714, 35.361431, 50.608402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.102966, 35.246429, 50.850094>,  <36.281319, 35.177429, 50.995110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.102966, 35.246429, 50.850094>,  <35.805714, 35.361431, 50.608402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102966, 35.246429, 50.850094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668644, -0.284199, 0.687129,
		-0.025829, -0.914644, -0.403435,
		0.743134, -0.287502, 0.604230,
		36.325905, 35.160179, 51.031364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565968, 34.683426, 50.932777>,  <35.805714, 35.361431, 50.608402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565968, 34.683426, 50.932777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.840279, 34.853504, 51.169056>,  <36.004864, 34.955551, 51.310822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.840279, 34.853504, 51.169056>,  <35.565968, 34.683426, 50.932777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840279, 34.853504, 51.169056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607151, -0.113331, 0.786463,
		0.401345, -0.897978, 0.180439,
		0.685777, 0.425196, 0.590693,
		36.046013, 34.981064, 51.346264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662052, 34.126408, 51.494648>,  <35.565968, 34.683426, 50.932777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662052, 34.126408, 51.494648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.794392, 34.476334, 51.636200>,  <35.873795, 34.686291, 51.721130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.794392, 34.476334, 51.636200>,  <35.662052, 34.126408, 51.494648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794392, 34.476334, 51.636200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528015, -0.139200, 0.837749,
		0.782139, -0.464021, 0.415864,
		0.330845, 0.874819, 0.353884,
		35.893646, 34.738781, 51.742367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634743, 33.985432, 52.160664>,  <35.662052, 34.126408, 51.494648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634743, 33.985432, 52.160664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.685417, 34.382195, 52.157444>,  <35.715824, 34.620255, 52.155514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.685417, 34.382195, 52.157444>,  <35.634743, 33.985432, 52.160664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685417, 34.382195, 52.157444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505140, 0.071494, 0.860071,
		0.853688, -0.104899, 0.510111,
		0.126690, 0.991910, -0.008044,
		35.723423, 34.679768, 52.155029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761497, 34.209236, 52.921562>,  <35.634743, 33.985432, 52.160664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761497, 34.209236, 52.921562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.663326, 34.545700, 52.728806>,  <35.604424, 34.747578, 52.613152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.663326, 34.545700, 52.728806>,  <35.761497, 34.209236, 52.921562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663326, 34.545700, 52.728806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594195, 0.262239, 0.760370,
		0.765962, 0.472952, 0.435451,
		-0.245427, 0.841158, -0.481891,
		35.589699, 34.798046, 52.584240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854523, 34.728512, 53.336639>,  <35.761497, 34.209236, 52.921562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854523, 34.728512, 53.336639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.588345, 34.882000, 53.080536>,  <35.428638, 34.974094, 52.926872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.588345, 34.882000, 53.080536>,  <35.854523, 34.728512, 53.336639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588345, 34.882000, 53.080536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595876, 0.243517, 0.765265,
		0.449564, 0.890761, 0.066604,
		-0.665450, 0.383724, -0.640260,
		35.388710, 34.997116, 52.888458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646164, 35.355927, 53.583584>,  <35.854523, 34.728512, 53.336639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646164, 35.355927, 53.583584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.324760, 35.283642, 53.356705>,  <35.131916, 35.240273, 53.220577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.324760, 35.283642, 53.356705>,  <35.646164, 35.355927, 53.583584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324760, 35.283642, 53.356705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579693, 0.454202, 0.676503,
		0.135370, 0.872378, -0.469714,
		-0.803512, -0.180712, -0.567197,
		35.083706, 35.229427, 53.186546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258469, 35.990028, 53.545563>,  <35.646164, 35.355927, 53.583584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258469, 35.990028, 53.545563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.013329, 35.680557, 53.481270>,  <34.866245, 35.494873, 53.442692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.013329, 35.680557, 53.481270>,  <35.258469, 35.990028, 53.545563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013329, 35.680557, 53.481270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658257, 0.387318, 0.645510,
		-0.437160, 0.501408, -0.746647,
		-0.612853, -0.773677, -0.160735,
		34.829472, 35.448456, 53.433048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568069, 36.267509, 53.402351>,  <35.258469, 35.990028, 53.545563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568069, 36.267509, 53.402351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.492653, 35.883251, 53.483940>,  <34.447403, 35.652695, 53.532894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.492653, 35.883251, 53.483940>,  <34.568069, 36.267509, 53.402351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492653, 35.883251, 53.483940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661678, 0.277744, 0.696448,
		-0.725695, -0.003655, -0.688007,
		-0.188545, -0.960648, 0.203976,
		34.436089, 35.595058, 53.545132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902813, 36.222794, 53.273533>,  <34.568069, 36.267509, 53.402351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902813, 36.222794, 53.273533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.012054, 35.931023, 53.524406>,  <34.077599, 35.755962, 53.674931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.012054, 35.931023, 53.524406>,  <33.902813, 36.222794, 53.273533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012054, 35.931023, 53.524406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809362, 0.178161, 0.559635,
		-0.519950, -0.660455, -0.541711,
		0.273101, -0.729423, 0.627182,
		34.093987, 35.712196, 53.712563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252586, 35.803112, 53.460621>,  <33.902813, 36.222794, 53.273533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252586, 35.803112, 53.460621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.501476, 35.709293, 53.759369>,  <33.650810, 35.653004, 53.938618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.501476, 35.709293, 53.759369>,  <33.252586, 35.803112, 53.460621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501476, 35.709293, 53.759369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722631, 0.194823, 0.663211,
		-0.301061, -0.952383, -0.048265,
		0.622228, -0.234545, 0.746874,
		33.688145, 35.638931, 53.983433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837170, 35.435486, 53.907578>,  <33.252586, 35.803112, 53.460621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837170, 35.435486, 53.907578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.135517, 35.582443, 54.129822>,  <33.314526, 35.670620, 54.263168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.135517, 35.582443, 54.129822>,  <32.837170, 35.435486, 53.907578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135517, 35.582443, 54.129822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652887, 0.237937, 0.719114,
		0.131998, -0.899114, 0.417337,
		0.745866, 0.367396, 0.555613,
		33.359276, 35.692661, 54.296505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673981, 35.267147, 54.683937>,  <32.837170, 35.435486, 53.907578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673981, 35.267147, 54.683937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.937119, 35.568390, 54.687496>,  <33.095001, 35.749134, 54.689632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.937119, 35.568390, 54.687496>,  <32.673981, 35.267147, 54.683937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937119, 35.568390, 54.687496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475183, 0.405850, 0.780697,
		0.584335, -0.517802, 0.624847,
		0.657841, 0.753105, 0.008898,
		33.134472, 35.794319, 54.690166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871662, 35.340637, 55.482189>,  <32.673981, 35.267147, 54.683937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871662, 35.340637, 55.482189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.966583, 35.671085, 55.277756>,  <33.023537, 35.869354, 55.155094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.966583, 35.671085, 55.277756>,  <32.871662, 35.340637, 55.482189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966583, 35.671085, 55.277756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348965, 0.563489, 0.748802,
		0.906593, 0.000657, 0.422006,
		0.237304, 0.826123, -0.511084,
		33.037773, 35.918922, 55.124432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265129, 35.679703, 55.886444>,  <32.871662, 35.340637, 55.482189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265129, 35.679703, 55.886444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116714, 35.958778, 55.641312>,  <33.027668, 36.126225, 55.494232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116714, 35.958778, 55.641312>,  <33.265129, 35.679703, 55.886444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116714, 35.958778, 55.641312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253870, 0.558589, 0.789638,
		0.893244, 0.448562, -0.030133,
		-0.371034, 0.697690, -0.612832,
		33.005405, 36.168087, 55.457462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379074, 36.247395, 56.327332>,  <33.265129, 35.679703, 55.886444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379074, 36.247395, 56.327332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.153419, 36.379017, 56.024418>,  <33.018028, 36.457989, 55.842670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.153419, 36.379017, 56.024418>,  <33.379074, 36.247395, 56.327332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153419, 36.379017, 56.024418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483074, 0.612271, 0.625910,
		0.669621, 0.718920, -0.186445,
		-0.564134, 0.329055, -0.757281,
		32.984180, 36.477734, 55.797234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508789, 36.905476, 56.311440>,  <33.379074, 36.247395, 56.327332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508789, 36.905476, 56.311440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154949, 36.863003, 56.129795>,  <32.942646, 36.837521, 56.020809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154949, 36.863003, 56.129795>,  <33.508789, 36.905476, 56.311440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154949, 36.863003, 56.129795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399881, 0.673734, 0.621431,
		0.239964, 0.731305, -0.638443,
		-0.884597, -0.106180, -0.454108,
		32.889568, 36.831150, 55.993565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221714, 37.586700, 56.298058>,  <33.508789, 36.905476, 56.311440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221714, 37.586700, 56.298058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.923050, 37.321392, 56.277798>,  <32.743851, 37.162205, 56.265644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.923050, 37.321392, 56.277798>,  <33.221714, 37.586700, 56.298058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923050, 37.321392, 56.277798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576732, 0.607535, 0.546151,
		-0.331480, 0.436998, -0.836154,
		-0.746660, -0.663275, -0.050645,
		32.699051, 37.122410, 56.262604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698570, 38.062466, 56.296391>,  <33.221714, 37.586700, 56.298058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698570, 38.062466, 56.296391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.543938, 37.704395, 56.385128>,  <32.451157, 37.489552, 56.438370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.543938, 37.704395, 56.385128>,  <32.698570, 38.062466, 56.296391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543938, 37.704395, 56.385128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675449, 0.438596, 0.592792,
		-0.627951, 0.079321, -0.774200,
		-0.386582, -0.895177, 0.221839,
		32.427963, 37.435841, 56.451679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966181, 38.063095, 56.120537>,  <32.698570, 38.062466, 56.296391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966181, 38.063095, 56.120537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.032887, 37.787811, 56.402973>,  <32.072910, 37.622643, 56.572433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.032887, 37.787811, 56.402973>,  <31.966181, 38.063095, 56.120537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032887, 37.787811, 56.402973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588545, 0.505071, 0.631283,
		-0.791078, -0.520840, -0.320813,
		0.166764, -0.688207, 0.706088,
		32.082916, 37.581348, 56.614799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348948, 38.134098, 56.483227>,  <31.966181, 38.063095, 56.120537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348948, 38.134098, 56.483227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.571581, 37.905098, 56.724045>,  <31.705160, 37.767696, 56.868538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.571581, 37.905098, 56.724045>,  <31.348948, 38.134098, 56.483227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571581, 37.905098, 56.724045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531641, 0.311426, 0.787636,
		-0.638415, -0.758458, -0.131030,
		0.556582, -0.572500, 0.602047,
		31.738556, 37.733349, 56.904659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929081, 37.832531, 56.986305>,  <31.348948, 38.134098, 56.483227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929081, 37.832531, 56.986305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.288624, 37.812012, 57.160397>,  <31.504349, 37.799698, 57.264851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.288624, 37.812012, 57.160397>,  <30.929081, 37.832531, 56.986305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288624, 37.812012, 57.160397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434172, 0.030804, 0.900303,
		-0.059594, -0.998208, 0.005415,
		0.898857, -0.051302, 0.435230,
		31.558281, 37.796623, 57.290966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916409, 37.269093, 57.530186>,  <30.929081, 37.832531, 56.986305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916409, 37.269093, 57.530186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.220068, 37.512409, 57.622856>,  <31.402264, 37.658398, 57.678459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.220068, 37.512409, 57.622856>,  <30.916409, 37.269093, 57.530186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220068, 37.512409, 57.622856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408735, 0.168476, 0.896968,
		0.506588, -0.775626, 0.376528,
		0.759148, 0.608293, 0.231677,
		31.447813, 37.694897, 57.692360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181684, 37.080166, 58.241196>,  <30.916409, 37.269093, 57.530186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181684, 37.080166, 58.241196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.275368, 37.459476, 58.155487>,  <31.331577, 37.687065, 58.104061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.275368, 37.459476, 58.155487>,  <31.181684, 37.080166, 58.241196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275368, 37.459476, 58.155487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267021, 0.274666, 0.923720,
		0.934798, -0.159128, 0.317540,
		0.234207, 0.948281, -0.214267,
		31.345631, 37.743961, 58.091206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576279, 37.233360, 58.757545>,  <31.181684, 37.080166, 58.241196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576279, 37.233360, 58.757545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.424065, 37.586853, 58.648579>,  <31.332735, 37.798950, 58.583199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.424065, 37.586853, 58.648579>,  <31.576279, 37.233360, 58.757545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424065, 37.586853, 58.648579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508021, 0.046378, 0.860095,
		0.772727, 0.465693, 0.431305,
		-0.380537, 0.883731, -0.272419,
		31.309904, 37.851971, 58.566853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609558, 37.621284, 59.285828>,  <31.576279, 37.233360, 58.757545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609558, 37.621284, 59.285828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.343063, 37.832191, 59.074883>,  <31.183167, 37.958736, 58.948315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.343063, 37.832191, 59.074883>,  <31.609558, 37.621284, 59.285828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343063, 37.832191, 59.074883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589395, 0.060947, 0.805542,
		0.456880, 0.847508, 0.270166,
		-0.666238, 0.527271, -0.527363,
		31.143192, 37.990372, 58.916672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277262, 38.012920, 59.765076>,  <31.609558, 37.621284, 59.285828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277262, 38.012920, 59.765076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.038696, 38.078865, 59.450851>,  <30.895557, 38.118431, 59.262318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.038696, 38.078865, 59.450851>,  <31.277262, 38.012920, 59.765076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038696, 38.078865, 59.450851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662758, 0.450961, 0.597817,
		0.452816, 0.877185, -0.159695,
		-0.596413, 0.164862, -0.785565,
		30.859772, 38.128323, 59.215183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011110, 38.635544, 59.873295>,  <31.277262, 38.012920, 59.765076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011110, 38.635544, 59.873295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.756634, 38.490059, 59.601124>,  <30.603949, 38.402767, 59.437820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.756634, 38.490059, 59.601124>,  <31.011110, 38.635544, 59.873295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756634, 38.490059, 59.601124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769551, 0.235980, 0.593385,
		-0.055252, 0.901127, -0.430021,
		-0.636191, -0.363708, -0.680424,
		30.565777, 38.380947, 59.396996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558855, 39.160248, 59.715279>,  <31.011110, 38.635544, 59.873295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558855, 39.160248, 59.715279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.382130, 38.809986, 59.637268>,  <30.276094, 38.599831, 59.590462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.382130, 38.809986, 59.637268>,  <30.558855, 39.160248, 59.715279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382130, 38.809986, 59.637268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812327, 0.298243, 0.501175,
		-0.380688, 0.379852, -0.843083,
		-0.441816, -0.875651, -0.195026,
		30.249584, 38.547291, 59.578762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874651, 39.280312, 59.406456>,  <30.558855, 39.160248, 59.715279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874651, 39.280312, 59.406456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.867924, 38.904846, 59.544224>,  <29.863888, 38.679565, 59.626884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.867924, 38.904846, 59.544224>,  <29.874651, 39.280312, 59.406456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867924, 38.904846, 59.544224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743049, 0.242226, 0.623863,
		-0.669026, -0.245428, -0.701548,
		-0.016819, -0.938665, 0.344421,
		29.862879, 38.623245, 59.647549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145193, 39.082394, 59.404243>,  <29.874651, 39.280312, 59.406456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145193, 39.082394, 59.404243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.320272, 38.834332, 59.664654>,  <29.425320, 38.685493, 59.820900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.320272, 38.834332, 59.664654>,  <29.145193, 39.082394, 59.404243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320272, 38.834332, 59.664654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701021, 0.218022, 0.678996,
		-0.563019, -0.753576, -0.339312,
		0.437698, -0.620152, 0.651023,
		29.451582, 38.648285, 59.859962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582563, 38.838100, 59.741413>,  <29.145193, 39.082394, 59.404243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582563, 38.838100, 59.741413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.881414, 38.750015, 59.992271>,  <29.060724, 38.697166, 60.142788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.881414, 38.750015, 59.992271>,  <28.582563, 38.838100, 59.741413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881414, 38.750015, 59.992271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537158, 0.355690, 0.764818,
		-0.391490, -0.908291, 0.147457,
		0.747126, -0.220211, 0.627144,
		29.105553, 38.683952, 60.180416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245728, 38.520035, 60.225033>,  <28.582563, 38.838100, 59.741413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245728, 38.520035, 60.225033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.594599, 38.653969, 60.367687>,  <28.803921, 38.734329, 60.453281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.594599, 38.653969, 60.367687>,  <28.245728, 38.520035, 60.225033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594599, 38.653969, 60.367687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474824, 0.404053, 0.781846,
		0.117690, -0.851249, 0.511395,
		0.872176, 0.334837, 0.356640,
		28.856251, 38.754421, 60.474678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334896, 38.262680, 60.920799>,  <28.245728, 38.520035, 60.225033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334896, 38.262680, 60.920799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.569471, 38.585655, 60.895054>,  <28.710217, 38.779438, 60.879608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.569471, 38.585655, 60.895054>,  <28.334896, 38.262680, 60.920799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569471, 38.585655, 60.895054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504275, 0.426122, 0.751084,
		0.633877, -0.408007, 0.657062,
		0.586437, 0.807434, -0.064361,
		28.745403, 38.827885, 60.875744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458639, 38.443382, 61.603432>,  <28.334896, 38.262680, 60.920799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458639, 38.443382, 61.603432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.568754, 38.772266, 61.404160>,  <28.634823, 38.969597, 61.284595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.568754, 38.772266, 61.404160>,  <28.458639, 38.443382, 61.603432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568754, 38.772266, 61.404160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440725, 0.568475, 0.694693,
		0.854387, 0.028318, 0.518865,
		0.275289, 0.822213, -0.498178,
		28.651340, 39.018929, 61.254707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.802000, 38.878239, 62.074299>,  <28.458639, 38.443382, 61.603432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.802000, 38.878239, 62.074299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.618286, 39.082096, 61.783279>,  <28.508059, 39.204411, 61.608669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.618286, 39.082096, 61.783279>,  <28.802000, 38.878239, 62.074299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618286, 39.082096, 61.783279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411022, 0.604160, 0.682681,
		0.787477, 0.612581, -0.068006,
		-0.459284, 0.509643, -0.727546,
		28.480501, 39.234989, 61.565014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897226, 39.618301, 62.215740>,  <28.802000, 38.878239, 62.074299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897226, 39.618301, 62.215740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.549637, 39.612080, 62.017895>,  <28.341084, 39.608345, 61.899185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.549637, 39.612080, 62.017895>,  <28.897226, 39.618301, 62.215740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549637, 39.612080, 62.017895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428151, 0.524822, 0.735696,
		0.248140, 0.851070, -0.462716,
		-0.868973, -0.015556, -0.494616,
		28.288944, 39.607414, 61.869511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185087, 40.279144, 62.248390>,  <28.897226, 39.618301, 62.215740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185087, 40.279144, 62.248390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.568968, 40.391556, 62.248306>,  <29.799295, 40.459003, 62.248257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.568968, 40.391556, 62.248306>,  <29.185087, 40.279144, 62.248390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568968, 40.391556, 62.248306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180905, 0.617223, -0.765708,
		-0.215058, 0.734887, 0.643188,
		0.959700, 0.281028, -0.000205,
		29.856878, 40.475864, 62.248245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008352, 40.655972, 62.906559>,  <29.185087, 40.279144, 62.248390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008352, 40.655972, 62.906559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.762220, 40.946159, 63.029888>,  <28.614542, 41.120274, 63.103886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.762220, 40.946159, 63.029888>,  <29.008352, 40.655972, 62.906559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762220, 40.946159, 63.029888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526229, -0.086828, -0.845898,
		-0.586901, -0.682756, 0.435191,
		-0.615329, 0.725469, 0.308327,
		28.577621, 41.163799, 63.122387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310297, 40.389141, 63.036861>,  <29.008352, 40.655972, 62.906559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310297, 40.389141, 63.036861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.317160, 40.768620, 62.910572>,  <28.321278, 40.996307, 62.834801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.317160, 40.768620, 62.910572>,  <28.310297, 40.389141, 63.036861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317160, 40.768620, 62.910572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522721, -0.260667, -0.811674,
		-0.852331, 0.178959, 0.491432,
		0.017157, 0.948697, -0.315720,
		28.322306, 41.053230, 62.815857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665852, 40.736500, 63.029907>,  <28.310297, 40.389141, 63.036861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665852, 40.736500, 63.029907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.903013, 40.885334, 62.744247>,  <28.045311, 40.974632, 62.572849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.903013, 40.885334, 62.744247>,  <27.665852, 40.736500, 63.029907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903013, 40.885334, 62.744247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662331, -0.279087, -0.695290,
		-0.458018, 0.885248, 0.080970,
		0.592906, 0.372084, -0.714154,
		28.080885, 40.996960, 62.530003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.138117, 40.990868, 62.558804>,  <27.665852, 40.736500, 63.029907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.138117, 40.990868, 62.558804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.502094, 40.964203, 62.395065>,  <27.720480, 40.948204, 62.296822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.502094, 40.964203, 62.395065>,  <27.138117, 40.990868, 62.558804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502094, 40.964203, 62.395065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414627, -0.123603, -0.901558,
		0.009505, 0.990090, -0.140112,
		0.909942, -0.066664, -0.409343,
		27.775078, 40.944202, 62.272263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306332, 41.495586, 62.014679>,  <27.138117, 40.990868, 62.558804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306332, 41.495586, 62.014679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.495968, 41.155941, 61.921513>,  <27.609749, 40.952156, 61.865612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.495968, 41.155941, 61.921513>,  <27.306332, 41.495586, 62.014679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495968, 41.155941, 61.921513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549845, -0.078902, -0.831531,
		0.687683, 0.522290, -0.504285,
		0.474090, -0.849109, -0.232919,
		27.638195, 40.901207, 61.851639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795467, 41.432362, 61.384895>,  <27.306332, 41.495586, 62.014679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795467, 41.432362, 61.384895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.629265, 41.076534, 61.460815>,  <27.529543, 40.863037, 61.506367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.629265, 41.076534, 61.460815>,  <27.795467, 41.432362, 61.384895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629265, 41.076534, 61.460815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136965, -0.145095, -0.979892,
		0.899218, -0.433148, -0.061551,
		-0.415508, -0.889567, 0.189798,
		27.504612, 40.809666, 61.517754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549208, 41.569424, 61.329445>,  <27.795467, 41.432362, 61.384895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549208, 41.569424, 61.329445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.875881, 41.372135, 61.209606>,  <29.071886, 41.253761, 61.137703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.875881, 41.372135, 61.209606>,  <28.549208, 41.569424, 61.329445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875881, 41.372135, 61.209606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197048, 0.726290, -0.658540,
		0.542401, 0.478784, 0.690338,
		0.816684, -0.493222, -0.299597,
		29.120886, 41.224167, 61.119728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137320, 41.985126, 61.129250>,  <28.549208, 41.569424, 61.329445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137320, 41.985126, 61.129250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.210823, 41.665337, 60.900490>,  <29.254925, 41.473461, 60.763233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.210823, 41.665337, 60.900490>,  <29.137320, 41.985126, 61.129250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210823, 41.665337, 60.900490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225906, 0.600584, -0.766984,
		0.956661, 0.011742, 0.290968,
		0.183757, -0.799475, -0.571903,
		29.265949, 41.425495, 60.728920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818371, 42.108101, 60.811890>,  <29.137320, 41.985126, 61.129250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818371, 42.108101, 60.811890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.633251, 41.842865, 60.576561>,  <29.522179, 41.683723, 60.435364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.633251, 41.842865, 60.576561>,  <29.818371, 42.108101, 60.811890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633251, 41.842865, 60.576561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336895, 0.482317, -0.808624,
		0.819950, -0.572436, 0.000175,
		-0.462801, -0.663090, -0.588326,
		29.494411, 41.643940, 60.400063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282051, 41.928097, 60.351406>,  <29.818371, 42.108101, 60.811890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282051, 41.928097, 60.351406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.934212, 41.833088, 60.178253>,  <29.725508, 41.776081, 60.074360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.934212, 41.833088, 60.178253>,  <30.282051, 41.928097, 60.351406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934212, 41.833088, 60.178253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399582, 0.176495, -0.899546,
		0.290063, -0.955213, -0.058570,
		-0.869596, -0.237522, -0.432881,
		29.673332, 41.761829, 60.048389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400568, 41.437599, 59.846916>,  <30.282051, 41.928097, 60.351406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400568, 41.437599, 59.846916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.048677, 41.604053, 59.754906>,  <29.837543, 41.703926, 59.699699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.048677, 41.604053, 59.754906>,  <30.400568, 41.437599, 59.846916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048677, 41.604053, 59.754906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215468, -0.082354, -0.973032,
		-0.423860, -0.905564, -0.017216,
		-0.879725, 0.416138, -0.230027,
		29.784760, 41.728893, 59.685898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136568, 41.046093, 59.260342>,  <30.400568, 41.437599, 59.846916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136568, 41.046093, 59.260342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.956635, 41.402802, 59.240734>,  <29.848675, 41.616825, 59.228970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.956635, 41.402802, 59.240734>,  <30.136568, 41.046093, 59.260342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956635, 41.402802, 59.240734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111794, 0.001766, -0.993730,
		-0.886089, -0.452492, -0.100488,
		-0.449832, 0.891767, -0.049021,
		29.821686, 41.670330, 59.226028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662146, 40.982925, 58.718952>,  <30.136568, 41.046093, 59.260342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662146, 40.982925, 58.718952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.681025, 41.379177, 58.770214>,  <29.692352, 41.616928, 58.800972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.681025, 41.379177, 58.770214>,  <29.662146, 40.982925, 58.718952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681025, 41.379177, 58.770214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032232, 0.126719, -0.991415,
		-0.998365, 0.050925, -0.025948,
		0.047200, 0.990631, 0.128153,
		29.695185, 41.676365, 58.808659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194767, 41.224358, 58.228699>,  <29.662146, 40.982925, 58.718952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194767, 41.224358, 58.228699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.456377, 41.510868, 58.326023>,  <29.613342, 41.682774, 58.384418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.456377, 41.510868, 58.326023>,  <29.194767, 41.224358, 58.228699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456377, 41.510868, 58.326023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160672, 0.182771, -0.969938,
		-0.739215, 0.673455, 0.004451,
		0.654023, 0.716277, 0.243312,
		29.652584, 41.725750, 58.399017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063910, 41.712891, 57.776333>,  <29.194767, 41.224358, 58.228699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063910, 41.712891, 57.776333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.431513, 41.803322, 57.905521>,  <29.652075, 41.857582, 57.983036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.431513, 41.803322, 57.905521>,  <29.063910, 41.712891, 57.776333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431513, 41.803322, 57.905521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268940, 0.239488, -0.932908,
		-0.288257, 0.944211, 0.159291,
		0.919010, 0.226077, 0.322970,
		29.707216, 41.871143, 58.002411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242426, 42.405437, 57.363426>,  <29.063910, 41.712891, 57.776333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242426, 42.405437, 57.363426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.570839, 42.218971, 57.495243>,  <29.767887, 42.107090, 57.574333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.570839, 42.218971, 57.495243>,  <29.242426, 42.405437, 57.363426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570839, 42.218971, 57.495243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378425, 0.012204, -0.925552,
		0.427438, 0.884613, 0.186429,
		0.821031, -0.466165, 0.329543,
		29.817148, 42.079121, 57.594105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735882, 42.724979, 57.068825>,  <29.242426, 42.405437, 57.363426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735882, 42.724979, 57.068825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.949781, 42.405876, 57.180271>,  <30.078121, 42.214417, 57.247139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.949781, 42.405876, 57.180271>,  <29.735882, 42.724979, 57.068825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949781, 42.405876, 57.180271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432099, -0.025201, -0.901474,
		0.726177, 0.602455, 0.331233,
		0.534750, -0.797755, 0.278620,
		30.110207, 42.166550, 57.263859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352545, 42.892521, 56.715157>,  <29.735882, 42.724979, 57.068825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352545, 42.892521, 56.715157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.413649, 42.509945, 56.814663>,  <30.450312, 42.280399, 56.874367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.413649, 42.509945, 56.814663>,  <30.352545, 42.892521, 56.715157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413649, 42.509945, 56.814663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636121, -0.097482, -0.765407,
		0.756316, 0.275172, 0.593520,
		0.152761, -0.956440, 0.248770,
		30.459476, 42.223011, 56.889294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122187, 42.767365, 56.782444>,  <30.352545, 42.892521, 56.715157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122187, 42.767365, 56.782444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.966778, 42.411018, 56.688282>,  <30.873531, 42.197212, 56.631786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.966778, 42.411018, 56.688282>,  <31.122187, 42.767365, 56.782444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966778, 42.411018, 56.688282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626018, -0.067737, -0.776861,
		0.676130, -0.449197, 0.584012,
		-0.388523, -0.890861, -0.235406,
		30.850222, 42.143761, 56.617661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683508, 42.183994, 56.708096>,  <31.122187, 42.767365, 56.782444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683508, 42.183994, 56.708096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.381371, 42.034492, 56.492779>,  <31.200089, 41.944790, 56.363586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.381371, 42.034492, 56.492779>,  <31.683508, 42.183994, 56.708096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381371, 42.034492, 56.492779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624783, -0.162857, -0.763625,
		0.197745, -0.913117, 0.356530,
		-0.755343, -0.373757, -0.538296,
		31.154768, 41.922367, 56.331291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947929, 41.574291, 56.402550>,  <31.683508, 42.183994, 56.708096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947929, 41.574291, 56.402550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.623459, 41.665497, 56.187141>,  <31.428778, 41.720222, 56.057896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.623459, 41.665497, 56.187141>,  <31.947929, 41.574291, 56.402550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623459, 41.665497, 56.187141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500419, -0.205873, -0.840950,
		-0.302619, -0.951643, 0.052894,
		-0.811174, 0.228018, -0.538521,
		31.380106, 41.733902, 56.025585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719681, 40.949459, 55.964958>,  <31.947929, 41.574291, 56.402550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719681, 40.949459, 55.964958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593832, 41.284828, 55.786942>,  <31.518322, 41.486050, 55.680130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593832, 41.284828, 55.786942>,  <31.719681, 40.949459, 55.964958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593832, 41.284828, 55.786942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493395, -0.256090, -0.831252,
		-0.810909, -0.481113, -0.333101,
		-0.314622, 0.838420, -0.445045,
		31.499445, 41.536354, 55.653427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624790, 40.743130, 55.230099>,  <31.719681, 40.949459, 55.964958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624790, 40.743130, 55.230099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.611610, 41.142857, 55.223392>,  <31.603703, 41.382694, 55.219368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.611610, 41.142857, 55.223392>,  <31.624790, 40.743130, 55.230099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611610, 41.142857, 55.223392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447242, -0.000256, -0.894413,
		-0.893806, -0.036968, -0.446928,
		-0.032950, 0.999316, -0.016763,
		31.601725, 41.442650, 55.218365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279160, 40.963753, 54.663998>,  <31.624790, 40.743130, 55.230099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279160, 40.963753, 54.663998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.497051, 41.295746, 54.711994>,  <31.627787, 41.494942, 54.740791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.497051, 41.295746, 54.711994>,  <31.279160, 40.963753, 54.663998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497051, 41.295746, 54.711994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484717, -0.194855, -0.852691,
		-0.684340, 0.522644, -0.508451,
		0.544728, 0.829985, 0.119987,
		31.660469, 41.544743, 54.747990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323265, 41.237991, 54.020363>,  <31.279160, 40.963753, 54.663998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323265, 41.237991, 54.020363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.626715, 41.409599, 54.216499>,  <31.808784, 41.512566, 54.334179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.626715, 41.409599, 54.216499>,  <31.323265, 41.237991, 54.020363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626715, 41.409599, 54.216499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595292, -0.150548, -0.789280,
		-0.264801, 0.890659, -0.369604,
		0.758622, 0.429024, 0.490338,
		31.854301, 41.538307, 54.363602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693136, 41.695282, 53.523548>,  <31.323265, 41.237991, 54.020363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693136, 41.695282, 53.523548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.960709, 41.661396, 53.818943>,  <32.121250, 41.641064, 53.996178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.960709, 41.661396, 53.818943>,  <31.693136, 41.695282, 53.523548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960709, 41.661396, 53.818943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732820, -0.091283, -0.674272,
		0.124532, 0.992215, 0.001019,
		0.668929, -0.084715, 0.738483,
		32.161388, 41.635983, 54.040489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244450, 42.208561, 53.409275>,  <31.693136, 41.695282, 53.523548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244450, 42.208561, 53.409275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.391304, 41.933884, 53.660244>,  <32.479416, 41.769077, 53.810825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.391304, 41.933884, 53.660244>,  <32.244450, 42.208561, 53.409275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391304, 41.933884, 53.660244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801069, -0.109402, -0.588490,
		0.472755, 0.718665, 0.509925,
		0.367141, -0.686696, 0.627420,
		32.501446, 41.727875, 53.848469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939255, 42.376759, 53.441868>,  <32.244450, 42.208561, 53.409275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939255, 42.376759, 53.441868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.936501, 41.995968, 53.564301>,  <32.934849, 41.767494, 53.637760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.936501, 41.995968, 53.564301>,  <32.939255, 42.376759, 53.441868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936501, 41.995968, 53.564301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713936, -0.219007, -0.665080,
		0.700177, 0.213943, 0.681161,
		-0.006890, -0.951979, 0.306085,
		32.934433, 41.710373, 53.656128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546379, 42.160061, 53.533123>,  <32.939255, 42.376759, 53.441868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546379, 42.160061, 53.533123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.381195, 41.796383, 53.511818>,  <33.282085, 41.578178, 53.499035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.381195, 41.796383, 53.511818>,  <33.546379, 42.160061, 53.533123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381195, 41.796383, 53.511818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786839, -0.326710, -0.523589,
		0.458642, -0.258128, 0.850305,
		-0.412956, -0.909192, -0.053262,
		33.257309, 41.523624, 53.495838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148891, 41.760342, 53.580730>,  <33.546379, 42.160061, 53.533123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148891, 41.760342, 53.580730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.872330, 41.506538, 53.442539>,  <33.706390, 41.354256, 53.359623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.872330, 41.506538, 53.442539>,  <34.148891, 41.760342, 53.580730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872330, 41.506538, 53.442539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691053, -0.441354, -0.572410,
		0.210719, -0.634513, 0.743633,
		-0.691407, -0.634507, -0.345481,
		33.664909, 41.316185, 53.338894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421940, 40.980717, 53.717567>,  <34.148891, 41.760342, 53.580730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421940, 40.980717, 53.717567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.145100, 40.966633, 53.429188>,  <33.978996, 40.958183, 53.256161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.145100, 40.966633, 53.429188>,  <34.421940, 40.980717, 53.717567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145100, 40.966633, 53.429188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707652, -0.229918, -0.668107,
		-0.142234, -0.972573, 0.184041,
		-0.692097, -0.035209, -0.720945,
		33.937469, 40.956070, 53.212906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577831, 40.344463, 53.355629>,  <34.421940, 40.980717, 53.717567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577831, 40.344463, 53.355629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.333797, 40.522484, 53.093418>,  <34.187378, 40.629295, 52.936092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.333797, 40.522484, 53.093418>,  <34.577831, 40.344463, 53.355629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333797, 40.522484, 53.093418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560922, -0.341734, -0.754045,
		-0.559609, -0.827734, -0.041154,
		-0.610086, 0.445055, -0.655532,
		34.150772, 40.655998, 52.896759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445606, 39.817997, 52.963661>,  <34.577831, 40.344463, 53.355629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445606, 39.817997, 52.963661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.389935, 40.150993, 52.749153>,  <34.356529, 40.350792, 52.620449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.389935, 40.150993, 52.749153>,  <34.445606, 39.817997, 52.963661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389935, 40.150993, 52.749153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502849, -0.407113, -0.762497,
		-0.853095, -0.375789, -0.361955,
		-0.139181, 0.832492, -0.536271,
		34.348179, 40.400742, 52.588272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148983, 39.530300, 52.367687>,  <34.445606, 39.817997, 52.963661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148983, 39.530300, 52.367687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283813, 39.891731, 52.261913>,  <34.364712, 40.108589, 52.198448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283813, 39.891731, 52.261913>,  <34.148983, 39.530300, 52.367687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283813, 39.891731, 52.261913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611123, -0.423650, -0.668617,
		-0.716176, 0.063773, -0.695000,
		0.337076, 0.903578, -0.264435,
		34.384937, 40.162804, 52.182583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016918, 39.659306, 51.606976>,  <34.148983, 39.530300, 52.367687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016918, 39.659306, 51.606976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.326752, 39.895718, 51.697041>,  <34.512653, 40.037563, 51.751080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.326752, 39.895718, 51.697041>,  <34.016918, 39.659306, 51.606976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326752, 39.895718, 51.697041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566145, -0.489230, -0.663425,
		-0.281948, 0.641355, -0.713561,
		0.774587, 0.591031, 0.225162,
		34.559128, 40.073029, 51.764587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365185, 39.876507, 50.897446>,  <34.016918, 39.659306, 51.606976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365185, 39.876507, 50.897446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.635540, 39.975811, 51.175018>,  <34.797752, 40.035393, 51.341560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.635540, 39.975811, 51.175018>,  <34.365185, 39.876507, 50.897446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635540, 39.975811, 51.175018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720937, -0.418234, -0.552566,
		0.153048, 0.873756, -0.461658,
		0.675889, 0.248257, 0.693933,
		34.838306, 40.050289, 51.383198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918282, 40.232224, 50.568768>,  <34.365185, 39.876507, 50.897446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918282, 40.232224, 50.568768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.080399, 40.102203, 50.910545>,  <35.177670, 40.024189, 51.115612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.080399, 40.102203, 50.910545>,  <34.918282, 40.232224, 50.568768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080399, 40.102203, 50.910545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827303, -0.267284, -0.494094,
		0.388987, 0.907138, 0.160590,
		0.405288, -0.325052, 0.854449,
		35.201984, 40.004688, 51.166882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607368, 40.581364, 50.572266>,  <34.918282, 40.232224, 50.568768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607368, 40.581364, 50.572266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.594147, 40.260670, 50.810974>,  <35.586212, 40.068253, 50.954197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.594147, 40.260670, 50.810974>,  <35.607368, 40.581364, 50.572266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594147, 40.260670, 50.810974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865098, -0.321969, -0.384632,
		0.500513, 0.503550, 0.704219,
		-0.033055, -0.801732, 0.596769,
		35.584229, 40.020149, 50.990005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187298, 40.525169, 50.878178>,  <35.607368, 40.581364, 50.572266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187298, 40.525169, 50.878178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.053806, 40.152016, 50.932381>,  <35.973713, 39.928123, 50.964901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.053806, 40.152016, 50.932381>,  <36.187298, 40.525169, 50.878178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053806, 40.152016, 50.932381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868630, -0.360161, -0.340244,
		0.366210, 0.004155, 0.930523,
		-0.333725, -0.932881, 0.135503,
		35.953690, 39.872150, 50.973030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742455, 40.109348, 51.215523>,  <36.187298, 40.525169, 50.878178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742455, 40.109348, 51.215523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.508549, 39.860172, 51.007679>,  <36.368206, 39.710667, 50.882973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.508549, 39.860172, 51.007679>,  <36.742455, 40.109348, 51.215523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508549, 39.860172, 51.007679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800859, -0.341353, -0.492039,
		0.129141, -0.703862, 0.698499,
		-0.584762, -0.622942, -0.519612,
		36.333118, 39.673290, 50.851795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098320, 39.366123, 51.135830>,  <36.742455, 40.109348, 51.215523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098320, 39.366123, 51.135830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.808258, 39.368073, 50.860401>,  <36.634220, 39.369244, 50.695145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.808258, 39.368073, 50.860401>,  <37.098320, 39.366123, 51.135830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808258, 39.368073, 50.860401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613128, -0.450572, -0.648890,
		-0.313412, -0.892727, 0.323747,
		-0.725153, 0.004871, -0.688570,
		36.590714, 39.369534, 50.653831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134743, 38.714165, 50.812607>,  <37.098320, 39.366123, 51.135830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134743, 38.714165, 50.812607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951096, 38.972488, 50.568592>,  <36.840908, 39.127483, 50.422184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.951096, 38.972488, 50.568592>,  <37.134743, 38.714165, 50.812607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951096, 38.972488, 50.568592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441080, -0.430358, -0.787553,
		-0.771140, -0.630657, -0.087265,
		-0.459121, 0.645805, -0.610036,
		36.813358, 39.166229, 50.385582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135117, 38.292969, 50.288818>,  <37.134743, 38.714165, 50.812607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135117, 38.292969, 50.288818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.071007, 38.657028, 50.136009>,  <37.032539, 38.875465, 50.044323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.071007, 38.657028, 50.136009>,  <37.135117, 38.292969, 50.288818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071007, 38.657028, 50.136009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592001, -0.221059, -0.775028,
		-0.789840, -0.350375, -0.503379,
		-0.160274, 0.910149, -0.382023,
		37.022926, 38.930073, 50.021400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949306, 38.205368, 49.525299>,  <37.135117, 38.292969, 50.288818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949306, 38.205368, 49.525299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.037766, 38.593628, 49.563099>,  <37.090839, 38.826584, 49.585777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.037766, 38.593628, 49.563099>,  <36.949306, 38.205368, 49.525299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037766, 38.593628, 49.563099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534095, -0.039469, -0.844503,
		-0.815988, 0.237229, -0.527149,
		0.221147, 0.970652, 0.094497,
		37.104111, 38.884823, 49.591450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908333, 38.385883, 48.814308>,  <36.949306, 38.205368, 49.525299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908333, 38.385883, 48.814308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102058, 38.671535, 49.016479>,  <37.218296, 38.842926, 49.137783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102058, 38.671535, 49.016479>,  <36.908333, 38.385883, 48.814308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102058, 38.671535, 49.016479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717135, 0.006876, -0.696901,
		-0.501153, 0.699980, -0.508796,
		0.484318, 0.714129, 0.505426,
		37.247353, 38.885773, 49.168106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171513, 38.839340, 48.320393>,  <36.908333, 38.385883, 48.814308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171513, 38.839340, 48.320393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432438, 38.911919, 48.614758>,  <37.588993, 38.955467, 48.791378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.432438, 38.911919, 48.614758>,  <37.171513, 38.839340, 48.320393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432438, 38.911919, 48.614758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745684, 0.020342, -0.665989,
		-0.135812, 0.983190, -0.122033,
		0.652311, 0.181448, 0.735912,
		37.628132, 38.966354, 48.835533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439735, 38.908367, 48.158737>,  <37.171513, 38.839340, 48.320393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439735, 38.908367, 48.158737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.491398, 39.106071, 47.814873>,  <36.522396, 39.224693, 47.608555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.491398, 39.106071, 47.814873>,  <36.439735, 38.908367, 48.158737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491398, 39.106071, 47.814873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795008, 0.569770, 0.208145,
		0.592689, 0.656556, 0.466533,
		0.129157, 0.494263, -0.859664,
		36.530144, 39.254349, 47.556973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110580, 39.309795, 48.551701>,  <36.439735, 38.908367, 48.158737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110580, 39.309795, 48.551701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.106739, 39.344234, 48.153206>,  <36.104435, 39.364899, 47.914108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.106739, 39.344234, 48.153206>,  <36.110580, 39.309795, 48.551701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106739, 39.344234, 48.153206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885887, 0.461368, 0.048413,
		0.463801, 0.883022, 0.071838,
		-0.009606, 0.086094, -0.996241,
		36.103859, 39.370064, 47.854332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052792, 40.035835, 48.356361>,  <36.110580, 39.309795, 48.551701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052792, 40.035835, 48.356361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.865334, 39.783581, 48.108921>,  <35.752857, 39.632229, 47.960457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.865334, 39.783581, 48.108921>,  <36.052792, 40.035835, 48.356361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865334, 39.783581, 48.108921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865050, 0.469545, 0.176678,
		0.179039, 0.617918, -0.765586,
		-0.468650, -0.630638, -0.618598,
		35.724739, 39.594391, 47.923344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433743, 40.360340, 48.023537>,  <36.052792, 40.035835, 48.356361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433743, 40.360340, 48.023537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.355682, 39.970379, 47.980690>,  <35.308846, 39.736401, 47.954983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.355682, 39.970379, 47.980690>,  <35.433743, 40.360340, 48.023537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355682, 39.970379, 47.980690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967062, 0.173077, 0.186639,
		-0.163417, 0.140007, -0.976572,
		-0.195153, -0.974906, -0.107112,
		35.297138, 39.677906, 47.948555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775150, 40.306213, 47.623180>,  <35.433743, 40.360340, 48.023537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775150, 40.306213, 47.623180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.814026, 39.957169, 47.814636>,  <34.837349, 39.747742, 47.929512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.814026, 39.957169, 47.814636>,  <34.775150, 40.306213, 47.623180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814026, 39.957169, 47.814636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982162, -0.006304, 0.187929,
		-0.160972, -0.488368, -0.857662,
		0.097185, -0.872615, 0.478642,
		34.843182, 39.695385, 47.958229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129402, 39.868244, 47.437153>,  <34.775150, 40.306213, 47.623180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129402, 39.868244, 47.437153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283504, 39.723560, 47.776741>,  <34.375965, 39.636749, 47.980492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283504, 39.723560, 47.776741>,  <34.129402, 39.868244, 47.437153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283504, 39.723560, 47.776741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920995, -0.093054, 0.378297,
		-0.057830, -0.927639, -0.368973,
		0.385258, -0.361700, 0.848970,
		34.399082, 39.615047, 48.031433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659821, 39.462162, 47.581753>,  <34.129402, 39.868244, 47.437153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659821, 39.462162, 47.581753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841320, 39.469296, 47.938133>,  <33.950222, 39.473576, 48.151962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841320, 39.469296, 47.938133>,  <33.659821, 39.462162, 47.581753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841320, 39.469296, 47.938133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876693, -0.170289, 0.449900,
		0.159742, -0.985233, -0.061634,
		0.453752, 0.017834, 0.890950,
		33.977448, 39.474644, 48.205418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600090, 38.798141, 47.971642>,  <33.659821, 39.462162, 47.581753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600090, 38.798141, 47.971642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.636166, 39.098270, 48.233601>,  <33.657810, 39.278347, 48.390774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.636166, 39.098270, 48.233601>,  <33.600090, 38.798141, 47.971642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636166, 39.098270, 48.233601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807919, -0.329384, 0.488644,
		0.582351, -0.573173, 0.576490,
		0.090191, 0.750319, 0.654894,
		33.663223, 39.323368, 48.430069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421482, 38.447124, 48.672138>,  <33.600090, 38.798141, 47.971642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421482, 38.447124, 48.672138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.373817, 38.842331, 48.711376>,  <33.345219, 39.079456, 48.734921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.373817, 38.842331, 48.711376>,  <33.421482, 38.447124, 48.672138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373817, 38.842331, 48.711376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746948, -0.154298, 0.646731,
		0.654118, 0.003788, 0.756383,
		-0.119158, 0.988017, 0.098100,
		33.338070, 39.138737, 48.740807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157604, 38.451355, 49.283188>,  <33.421482, 38.447124, 48.672138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157604, 38.451355, 49.283188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.106396, 38.837524, 49.192348>,  <33.075672, 39.069225, 49.137844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.106396, 38.837524, 49.192348>,  <33.157604, 38.451355, 49.283188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106396, 38.837524, 49.192348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734951, 0.061401, 0.675334,
		0.665925, 0.253364, 0.701676,
		-0.128022, 0.965420, -0.227099,
		33.067989, 39.127151, 49.124218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009209, 38.678226, 49.890690>,  <33.157604, 38.451355, 49.283188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009209, 38.678226, 49.890690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.892372, 38.986694, 49.664421>,  <32.822269, 39.171776, 49.528660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.892372, 38.986694, 49.664421>,  <33.009209, 38.678226, 49.890690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892372, 38.986694, 49.664421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675290, 0.252534, 0.692972,
		0.677249, 0.584402, 0.446999,
		-0.292092, 0.771168, -0.565669,
		32.804745, 39.218044, 49.494720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006592, 39.388485, 50.225842>,  <33.009209, 38.678226, 49.890690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006592, 39.388485, 50.225842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.751987, 39.428127, 49.919895>,  <32.599224, 39.451912, 49.736328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.751987, 39.428127, 49.919895>,  <33.006592, 39.388485, 50.225842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751987, 39.428127, 49.919895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649827, 0.465243, 0.601061,
		0.415420, 0.879617, -0.231732,
		-0.636515, 0.099106, -0.764870,
		32.561031, 39.457859, 49.690434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682838, 40.063328, 50.319679>,  <33.006592, 39.388485, 50.225842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682838, 40.063328, 50.319679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.435383, 39.887489, 50.059208>,  <32.286907, 39.781986, 49.902924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.435383, 39.887489, 50.059208>,  <32.682838, 40.063328, 50.319679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435383, 39.887489, 50.059208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777952, 0.458649, 0.429455,
		0.109875, 0.772266, -0.625726,
		-0.618642, -0.439598, -0.651180,
		32.249790, 39.755611, 49.863853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352699, 40.646896, 50.091484>,  <32.682838, 40.063328, 50.319679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352699, 40.646896, 50.091484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.128334, 40.320972, 50.032894>,  <31.993713, 40.125420, 49.997738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.128334, 40.320972, 50.032894>,  <32.352699, 40.646896, 50.091484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128334, 40.320972, 50.032894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779875, 0.460692, 0.423744,
		-0.277789, 0.351921, -0.893860,
		-0.560918, -0.814810, -0.146479,
		31.960058, 40.076530, 49.988949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751078, 40.931377, 49.956409>,  <32.352699, 40.646896, 50.091484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751078, 40.931377, 49.956409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.659369, 40.549835, 50.033974>,  <31.604343, 40.320911, 50.080513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.659369, 40.549835, 50.033974>,  <31.751078, 40.931377, 49.956409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659369, 40.549835, 50.033974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780479, 0.299195, 0.548940,
		-0.581625, -0.025489, -0.813058,
		-0.229271, -0.953851, 0.193913,
		31.590588, 40.263680, 50.092148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045975, 40.925728, 50.026325>,  <31.751078, 40.931377, 49.956409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045975, 40.925728, 50.026325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.135971, 40.609940, 50.254749>,  <31.189970, 40.420467, 50.391804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.135971, 40.609940, 50.254749>,  <31.045975, 40.925728, 50.026325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135971, 40.609940, 50.254749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641598, 0.321046, 0.696622,
		-0.733302, -0.523124, -0.434292,
		0.224992, -0.789475, 0.571059,
		31.203468, 40.373096, 50.426067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366497, 40.649551, 50.186928>,  <31.045975, 40.925728, 50.026325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366497, 40.649551, 50.186928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.620277, 40.505608, 50.460560>,  <30.772547, 40.419243, 50.624741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.620277, 40.505608, 50.460560>,  <30.366497, 40.649551, 50.186928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620277, 40.505608, 50.460560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670637, 0.183783, 0.718659,
		-0.384340, -0.914726, -0.124734,
		0.634452, -0.359861, 0.684084,
		30.810614, 40.397648, 50.665787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912165, 40.411835, 50.667412>,  <30.366497, 40.649551, 50.186928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912165, 40.411835, 50.667412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.260101, 40.438915, 50.862877>,  <30.468863, 40.455166, 50.980156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.260101, 40.438915, 50.862877>,  <29.912165, 40.411835, 50.667412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260101, 40.438915, 50.862877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493329, 0.123992, 0.860960,
		-0.002303, -0.989971, 0.141252,
		0.869840, 0.067701, 0.488667,
		30.521053, 40.459229, 51.009476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825521, 39.972664, 51.359680>,  <29.912165, 40.411835, 50.667412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825521, 39.972664, 51.359680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.137123, 40.216057, 51.420212>,  <30.324085, 40.362091, 51.456532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.137123, 40.216057, 51.420212>,  <29.825521, 39.972664, 51.359680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137123, 40.216057, 51.420212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329271, 0.191603, 0.924591,
		0.533601, -0.770090, 0.349615,
		0.779006, 0.608481, 0.151328,
		30.370825, 40.398602, 51.465611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136160, 39.689903, 51.946178>,  <29.825521, 39.972664, 51.359680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136160, 39.689903, 51.946178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.207916, 40.078392, 51.883499>,  <30.250971, 40.311485, 51.845890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.207916, 40.078392, 51.883499>,  <30.136160, 39.689903, 51.946178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207916, 40.078392, 51.883499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371956, 0.214418, 0.903147,
		0.910751, -0.103731, 0.399715,
		0.179391, 0.971218, -0.156698,
		30.261734, 40.369759, 51.836491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244158, 39.815975, 52.598122>,  <30.136160, 39.689903, 51.946178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244158, 39.815975, 52.598122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.178337, 40.165310, 52.414730>,  <30.138845, 40.374912, 52.304695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.178337, 40.165310, 52.414730>,  <30.244158, 39.815975, 52.598122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178337, 40.165310, 52.414730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397578, 0.366657, 0.841127,
		0.902693, 0.320690, 0.286887,
		-0.164552, 0.873339, -0.458478,
		30.128971, 40.427311, 52.277187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566063, 40.376820, 52.994495>,  <30.244158, 39.815975, 52.598122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566063, 40.376820, 52.994495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.316092, 40.584255, 52.761074>,  <30.166109, 40.708717, 52.621021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.316092, 40.584255, 52.761074>,  <30.566063, 40.376820, 52.994495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316092, 40.584255, 52.761074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397226, 0.432272, 0.809538,
		0.672068, 0.737707, -0.064144,
		-0.624929, 0.518585, -0.583552,
		30.128613, 40.739830, 52.586010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547504, 41.033806, 53.277115>,  <30.566063, 40.376820, 52.994495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547504, 41.033806, 53.277115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.204435, 40.998306, 53.074524>,  <29.998594, 40.977005, 52.952969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.204435, 40.998306, 53.074524>,  <30.547504, 41.033806, 53.277115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204435, 40.998306, 53.074524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492738, 0.423457, 0.760193,
		0.147004, 0.901558, -0.406918,
		-0.857671, -0.088752, -0.506482,
		29.947134, 40.971680, 52.922581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249790, 41.652996, 53.360870>,  <30.547504, 41.033806, 53.277115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249790, 41.652996, 53.360870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.929049, 41.435516, 53.261738>,  <29.736605, 41.305027, 53.202259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.929049, 41.435516, 53.261738>,  <30.249790, 41.652996, 53.360870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929049, 41.435516, 53.261738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487194, 0.354780, 0.797980,
		-0.345939, 0.760604, -0.549370,
		-0.801853, -0.543703, -0.247830,
		29.688492, 41.272404, 53.187389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692966, 42.099800, 53.428543>,  <30.249790, 41.652996, 53.360870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692966, 42.099800, 53.428543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.547148, 41.728085, 53.452328>,  <29.459656, 41.505054, 53.466599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.547148, 41.728085, 53.452328>,  <29.692966, 42.099800, 53.428543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547148, 41.728085, 53.452328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462616, 0.236158, 0.854527,
		-0.808141, 0.284008, -0.515992,
		-0.364548, -0.929284, 0.059462,
		29.437784, 41.449299, 53.470165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023602, 42.230659, 53.779835>,  <29.692966, 42.099800, 53.428543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023602, 42.230659, 53.779835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.024235, 41.830845, 53.792046>,  <29.024614, 41.590958, 53.799374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.024235, 41.830845, 53.792046>,  <29.023602, 42.230659, 53.779835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024235, 41.830845, 53.792046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512901, 0.025396, 0.858072,
		-0.858446, -0.017019, -0.512622,
		0.001585, -0.999532, 0.030531,
		29.024710, 41.530987, 53.801205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316727, 42.031345, 53.873856>,  <29.023602, 42.230659, 53.779835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316727, 42.031345, 53.873856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.575418, 41.759819, 54.012970>,  <28.730633, 41.596905, 54.096439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.575418, 41.759819, 54.012970>,  <28.316727, 42.031345, 53.873856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575418, 41.759819, 54.012970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553485, -0.103954, 0.826346,
		-0.524781, -0.726916, -0.442943,
		0.646730, -0.678813, 0.347784,
		28.769438, 41.556175, 54.117306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897346, 41.422173, 54.196701>,  <28.316727, 42.031345, 53.873856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897346, 41.422173, 54.196701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.265804, 41.455528, 54.348778>,  <28.486879, 41.475540, 54.440022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.265804, 41.455528, 54.348778>,  <27.897346, 41.422173, 54.196701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265804, 41.455528, 54.348778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355581, -0.216975, 0.909112,
		0.158300, -0.972609, -0.170214,
		0.921142, 0.083388, 0.380189,
		28.542147, 41.480545, 54.462833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985365, 40.841530, 54.555523>,  <27.897346, 41.422173, 54.196701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985365, 40.841530, 54.555523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.242863, 41.104828, 54.711624>,  <28.397362, 41.262806, 54.805286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.242863, 41.104828, 54.711624>,  <27.985365, 40.841530, 54.555523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242863, 41.104828, 54.711624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208471, -0.339838, 0.917088,
		0.736296, -0.671728, -0.081544,
		0.643745, 0.658248, 0.390258,
		28.435986, 41.302303, 54.828701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279398, 40.477592, 55.106800>,  <27.985365, 40.841530, 54.555523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279398, 40.477592, 55.106800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.359503, 40.862537, 55.180286>,  <28.407566, 41.093506, 55.224377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.359503, 40.862537, 55.180286>,  <28.279398, 40.477592, 55.106800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359503, 40.862537, 55.180286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254459, -0.129988, 0.958308,
		0.946121, -0.238662, 0.218851,
		0.200263, 0.962364, 0.183714,
		28.419582, 41.151245, 55.235401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678713, 40.433971, 55.664314>,  <28.279398, 40.477592, 55.106800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678713, 40.433971, 55.664314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.515594, 40.799191, 55.661869>,  <28.417723, 41.018322, 55.660400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.515594, 40.799191, 55.661869>,  <28.678713, 40.433971, 55.664314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515594, 40.799191, 55.661869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418048, -0.180752, 0.890261,
		0.811749, 0.365601, 0.455410,
		-0.407797, 0.913052, -0.006113,
		28.393255, 41.073105, 55.660034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688635, 40.588753, 56.303574>,  <28.678713, 40.433971, 55.664314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688635, 40.588753, 56.303574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.423855, 40.846806, 56.150928>,  <28.264986, 41.001637, 56.059341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.423855, 40.846806, 56.150928>,  <28.688635, 40.588753, 56.303574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423855, 40.846806, 56.150928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526109, -0.037267, 0.849600,
		0.533884, 0.763161, 0.364079,
		-0.661950, 0.645133, -0.381609,
		28.225269, 41.040344, 56.036446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548479, 40.903381, 56.923347>,  <28.688635, 40.588753, 56.303574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548479, 40.903381, 56.923347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.280552, 40.973808, 56.634808>,  <28.119795, 41.016064, 56.461685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.280552, 40.973808, 56.634808>,  <28.548479, 40.903381, 56.923347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280552, 40.973808, 56.634808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740751, -0.225580, 0.632774,
		-0.051313, 0.958183, 0.281517,
		-0.669818, 0.176064, -0.721350,
		28.079607, 41.026627, 56.418404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086596, 41.368633, 57.167488>,  <28.548479, 40.903381, 56.923347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086596, 41.368633, 57.167488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.861223, 41.214798, 56.875011>,  <27.726000, 41.122498, 56.699528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.861223, 41.214798, 56.875011>,  <28.086596, 41.368633, 57.167488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861223, 41.214798, 56.875011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702069, -0.243633, 0.669136,
		-0.435485, 0.890355, -0.132739,
		-0.563429, -0.384590, -0.731189,
		27.692194, 41.099422, 56.655655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427744, 41.703716, 57.329155>,  <28.086596, 41.368633, 57.167488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427744, 41.703716, 57.329155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.366997, 41.380398, 57.101612>,  <27.330547, 41.186405, 56.965088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.366997, 41.380398, 57.101612>,  <27.427744, 41.703716, 57.329155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366997, 41.380398, 57.101612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734741, -0.292642, 0.611977,
		-0.661129, 0.510901, -0.549444,
		-0.151870, -0.808295, -0.568854,
		27.321436, 41.137909, 56.930954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663702, 41.719120, 57.187351>,  <27.427744, 41.703716, 57.329155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663702, 41.719120, 57.187351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.818470, 41.352459, 57.147251>,  <26.911331, 41.132462, 57.123192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.818470, 41.352459, 57.147251>,  <26.663702, 41.719120, 57.187351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818470, 41.352459, 57.147251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715276, -0.366962, 0.594742,
		-0.581957, -0.158412, -0.797642,
		0.386919, -0.916649, -0.100248,
		26.934546, 41.077465, 57.117176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044514, 41.371655, 57.199326>,  <26.663702, 41.719120, 57.187351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044514, 41.371655, 57.199326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.327541, 41.097618, 57.268600>,  <26.497358, 40.933197, 57.310165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.327541, 41.097618, 57.268600>,  <26.044514, 41.371655, 57.199326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.327541, 41.097618, 57.268600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624752, -0.491966, 0.606345,
		-0.330199, -0.537232, -0.776113,
		0.707568, -0.685093, 0.173190,
		26.539812, 40.892090, 57.320557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657272, 40.724575, 57.115555>,  <26.044514, 41.371655, 57.199326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657272, 40.724575, 57.115555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.996542, 40.643108, 57.311153>,  <26.200104, 40.594227, 57.428513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.996542, 40.643108, 57.311153>,  <25.657272, 40.724575, 57.115555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996542, 40.643108, 57.311153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519482, -0.500373, 0.692650,
		0.103611, -0.841515, -0.530205,
		0.848176, -0.203666, 0.488997,
		26.250996, 40.582008, 57.457851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.902832, 39.984295, 57.057800>,  <25.657272, 40.724575, 57.115555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.902832, 39.984295, 57.057800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.956697, 40.200649, 57.389900>,  <25.989017, 40.330460, 57.589161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.956697, 40.200649, 57.389900>,  <25.902832, 39.984295, 57.057800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956697, 40.200649, 57.389900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566801, -0.645220, 0.512278,
		0.812774, -0.539571, 0.219684,
		0.134666, 0.540883, 0.830247,
		25.997097, 40.362915, 57.638973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255589, 39.556122, 57.108459>,  <25.902832, 39.984295, 57.057800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.255589, 39.556122, 57.108459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.042450, 39.218102, 57.090706>,  <24.914566, 39.015289, 57.080055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.042450, 39.218102, 57.090706>,  <25.255589, 39.556122, 57.108459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.042450, 39.218102, 57.090706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219553, -0.087409, -0.971677,
		0.817233, -0.527500, 0.232108,
		-0.532848, -0.845046, -0.044381,
		24.882595, 38.964588, 57.077393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.670059, 39.049938, 56.720524>,  <25.255589, 39.556122, 57.108459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.670059, 39.049938, 56.720524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.290142, 38.929855, 56.685261>,  <25.062193, 38.857803, 56.664104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.290142, 38.929855, 56.685261>,  <25.670059, 39.049938, 56.720524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290142, 38.929855, 56.685261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136016, -0.142432, -0.980415,
		0.281774, -0.943179, 0.176114,
		-0.949791, -0.300210, -0.088154,
		25.005205, 38.839794, 56.658813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698238, 38.415588, 56.396366>,  <25.670059, 39.049938, 56.720524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698238, 38.415588, 56.396366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.334948, 38.573483, 56.340782>,  <25.116974, 38.668221, 56.307430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.334948, 38.573483, 56.340782>,  <25.698238, 38.415588, 56.396366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334948, 38.573483, 56.340782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165046, 0.032731, -0.985743,
		-0.384557, -0.918212, -0.094877,
		-0.908226, 0.394734, -0.138961,
		25.062479, 38.691902, 56.299095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469948, 38.049450, 55.892532>,  <25.698238, 38.415588, 56.396366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.469948, 38.049450, 55.892532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.236422, 38.373688, 55.910835>,  <25.096306, 38.568230, 55.921818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.236422, 38.373688, 55.910835>,  <25.469948, 38.049450, 55.892532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.236422, 38.373688, 55.910835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018350, 0.069518, -0.997412,
		-0.811679, -0.581464, -0.055460,
		-0.583815, 0.810597, 0.045756,
		25.061277, 38.616867, 55.924561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.033394, 37.978764, 55.357040>,  <25.469948, 38.049450, 55.892532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.033394, 37.978764, 55.357040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.030922, 38.369125, 55.444294>,  <25.029438, 38.603340, 55.496647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.030922, 38.369125, 55.444294>,  <25.033394, 37.978764, 55.357040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.030922, 38.369125, 55.444294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082376, 0.217891, -0.972490,
		-0.996582, 0.011957, -0.081738,
		-0.006182, 0.975900, 0.218132,
		25.029068, 38.661896, 55.509735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.553823, 38.330627, 54.797928>,  <25.033394, 37.978764, 55.357040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.553823, 38.330627, 54.797928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.834482, 38.568207, 54.955368>,  <25.002876, 38.710754, 55.049831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.834482, 38.568207, 54.955368>,  <24.553823, 38.330627, 54.797928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.834482, 38.568207, 54.955368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261205, 0.299532, -0.917634,
		-0.662922, 0.746664, 0.055023,
		0.701645, 0.593948, 0.393599,
		25.044975, 38.746391, 55.073448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.439814, 38.879925, 54.338043>,  <24.553823, 38.330627, 54.797928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.439814, 38.879925, 54.338043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.764685, 38.999538, 54.538422>,  <24.959606, 39.071308, 54.658649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.764685, 38.999538, 54.538422>,  <24.439814, 38.879925, 54.338043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.764685, 38.999538, 54.538422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372905, 0.394263, -0.839940,
		-0.448678, 0.868984, 0.208698,
		0.812176, 0.299038, 0.500945,
		25.008337, 39.089249, 54.688705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.606205, 39.478458, 54.028175>,  <24.439814, 38.879925, 54.338043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.606205, 39.478458, 54.028175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.937508, 39.420238, 54.244621>,  <25.136290, 39.385307, 54.374489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.937508, 39.420238, 54.244621>,  <24.606205, 39.478458, 54.028175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.937508, 39.420238, 54.244621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551617, 0.381595, -0.741690,
		-0.098530, 0.912798, 0.396349,
		0.828257, -0.145554, 0.541113,
		25.185986, 39.376572, 54.406956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.026680, 40.008888, 53.835136>,  <24.606205, 39.478458, 54.028175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.026680, 40.008888, 53.835136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.269081, 39.715691, 53.958740>,  <25.414522, 39.539772, 54.032902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.269081, 39.715691, 53.958740>,  <25.026680, 40.008888, 53.835136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.269081, 39.715691, 53.958740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655494, 0.240082, -0.716022,
		0.450650, 0.636465, 0.625961,
		0.606005, -0.732989, 0.309006,
		25.450882, 39.495792, 54.051441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753767, 40.318825, 53.885025>,  <25.026680, 40.008888, 53.835136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753767, 40.318825, 53.885025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.806469, 39.922451, 53.874454>,  <25.838091, 39.684628, 53.868111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.806469, 39.922451, 53.874454>,  <25.753767, 40.318825, 53.885025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.806469, 39.922451, 53.874454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670295, 0.108703, -0.734090,
		0.730305, 0.079004, 0.678537,
		0.131755, -0.990930, -0.026431,
		25.845995, 39.625172, 53.866524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426893, 40.248909, 53.896957>,  <25.753767, 40.318825, 53.885025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426893, 40.248909, 53.896957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.285425, 39.908981, 53.740643>,  <26.200544, 39.705025, 53.646854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.285425, 39.908981, 53.740643>,  <26.426893, 40.248909, 53.896957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285425, 39.908981, 53.740643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649869, 0.077238, -0.756112,
		0.672746, -0.521377, 0.524957,
		-0.353672, -0.849824, -0.390788,
		26.179323, 39.654034, 53.623405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023602, 39.909668, 53.908646>,  <26.426893, 40.248909, 53.896957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023602, 39.909668, 53.908646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.774580, 39.731876, 53.651005>,  <26.625168, 39.625202, 53.496418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.774580, 39.731876, 53.651005>,  <27.023602, 39.909668, 53.908646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774580, 39.731876, 53.651005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706766, 0.034069, -0.706627,
		0.336022, -0.895143, 0.292931,
		-0.622553, -0.444476, -0.644104,
		26.587814, 39.598534, 53.457775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379498, 39.317047, 53.618557>,  <27.023602, 39.909668, 53.908646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.379498, 39.317047, 53.618557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.097710, 39.412010, 53.351017>,  <26.928637, 39.468987, 53.190491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.097710, 39.412010, 53.351017>,  <27.379498, 39.317047, 53.618557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097710, 39.412010, 53.351017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662372, -0.118580, -0.739731,
		-0.254927, -0.964147, -0.073713,
		-0.704468, 0.237403, -0.668853,
		26.886370, 39.483231, 53.150360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407307, 38.801933, 53.162113>,  <27.379498, 39.317047, 53.618557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407307, 38.801933, 53.162113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.241266, 39.112793, 52.972912>,  <27.141642, 39.299309, 52.859390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.241266, 39.112793, 52.972912>,  <27.407307, 38.801933, 53.162113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241266, 39.112793, 52.972912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553831, -0.196623, -0.809080,
		-0.721777, -0.597815, -0.348790,
		-0.415100, 0.777146, -0.473007,
		27.116735, 39.345936, 52.831009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981277, 38.553566, 52.452923>,  <27.407307, 38.801933, 53.162113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981277, 38.553566, 52.452923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.090530, 38.937996, 52.436241>,  <27.156082, 39.168652, 52.426231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.090530, 38.937996, 52.436241>,  <26.981277, 38.553566, 52.452923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090530, 38.937996, 52.436241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387154, -0.149507, -0.909813,
		-0.880631, 0.232351, -0.412918,
		0.273130, 0.961073, -0.041705,
		27.172470, 39.226318, 52.423729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.781765, 38.733349, 51.835503>,  <26.981277, 38.553566, 52.452923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.781765, 38.733349, 51.835503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.059460, 38.995728, 51.954002>,  <27.226076, 39.153156, 52.025105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.059460, 38.995728, 51.954002>,  <26.781765, 38.733349, 51.835503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059460, 38.995728, 51.954002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375122, 0.021528, -0.926725,
		-0.614263, 0.754497, -0.231116,
		0.694236, 0.655950, 0.296253,
		27.267731, 39.192513, 52.042877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888014, 39.076920, 51.243904>,  <26.781765, 38.733349, 51.835503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888014, 39.076920, 51.243904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.210272, 39.175232, 51.459507>,  <27.403627, 39.234219, 51.588867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.210272, 39.175232, 51.459507>,  <26.888014, 39.076920, 51.243904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210272, 39.175232, 51.459507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571982, -0.085945, -0.815751,
		-0.154171, 0.965508, -0.209824,
		0.805647, 0.245781, 0.539003,
		27.451965, 39.248966, 51.621208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250370, 39.771641, 51.006657>,  <26.888014, 39.076920, 51.243904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250370, 39.771641, 51.006657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.536509, 39.568848, 51.199009>,  <27.708191, 39.447170, 51.314419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.536509, 39.568848, 51.199009>,  <27.250370, 39.771641, 51.006657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536509, 39.568848, 51.199009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637218, 0.190880, -0.746671,
		0.286763, 0.840553, 0.459607,
		0.715346, -0.506987, 0.480878,
		27.751112, 39.416752, 51.343273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788094, 40.061390, 50.696774>,  <27.250370, 39.771641, 51.006657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788094, 40.061390, 50.696774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.966398, 39.770237, 50.905190>,  <28.073381, 39.595547, 51.030239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.966398, 39.770237, 50.905190>,  <27.788094, 40.061390, 50.696774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966398, 39.770237, 50.905190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737595, -0.031140, -0.674524,
		0.507200, 0.684995, 0.523002,
		0.445759, -0.727882, 0.521043,
		28.100126, 39.551872, 51.061501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535536, 40.275028, 50.789707>,  <27.788094, 40.061390, 50.696774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535536, 40.275028, 50.789707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.510717, 39.876968, 50.820244>,  <28.495827, 39.638134, 50.838566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.510717, 39.876968, 50.820244>,  <28.535536, 40.275028, 50.789707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510717, 39.876968, 50.820244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656316, -0.098307, -0.748054,
		0.751930, 0.003688, 0.659232,
		-0.062048, -0.995149, 0.076341,
		28.492104, 39.578423, 50.843147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283640, 40.070114, 50.718414>,  <28.535536, 40.275028, 50.789707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283640, 40.070114, 50.718414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.100794, 39.714649, 50.703869>,  <28.991087, 39.501369, 50.695141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.100794, 39.714649, 50.703869>,  <29.283640, 40.070114, 50.718414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100794, 39.714649, 50.703869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688811, -0.327853, -0.646569,
		0.562659, -0.320607, 0.761988,
		-0.457115, -0.888664, -0.036368,
		28.963659, 39.448051, 50.692959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667131, 39.488232, 50.852810>,  <29.283640, 40.070114, 50.718414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667131, 39.488232, 50.852810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.378754, 39.306076, 50.643867>,  <29.205727, 39.196781, 50.518501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.378754, 39.306076, 50.643867>,  <29.667131, 39.488232, 50.852810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378754, 39.306076, 50.643867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691872, -0.515877, -0.505158,
		-0.039428, -0.725596, 0.686991,
		-0.720943, -0.455392, -0.522359,
		29.162470, 39.169460, 50.487160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842880, 38.727325, 50.782707>,  <29.667131, 39.488232, 50.852810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842880, 38.727325, 50.782707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.601593, 38.812267, 50.475193>,  <29.456820, 38.863232, 50.290684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.601593, 38.812267, 50.475193>,  <29.842880, 38.727325, 50.782707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601593, 38.812267, 50.475193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604303, -0.507389, -0.614308,
		-0.520532, -0.835140, 0.177731,
		-0.603212, 0.212364, -0.768789,
		29.420628, 38.875973, 50.244556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653662, 38.092041, 50.456764>,  <29.842880, 38.727325, 50.782707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653662, 38.092041, 50.456764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.590635, 38.371696, 50.177799>,  <29.552820, 38.539490, 50.010422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.590635, 38.371696, 50.177799>,  <29.653662, 38.092041, 50.456764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590635, 38.371696, 50.177799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505816, -0.549414, -0.665052,
		-0.848129, -0.457550, -0.267066,
		-0.157565, 0.699136, -0.697411,
		29.543365, 38.581436, 49.968575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691401, 37.649845, 49.820766>,  <29.653662, 38.092041, 50.456764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691401, 37.649845, 49.820766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.713097, 38.027584, 49.690987>,  <29.726114, 38.254227, 49.613121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.713097, 38.027584, 49.690987>,  <29.691401, 37.649845, 49.820766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713097, 38.027584, 49.690987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396982, -0.318536, -0.860779,
		-0.916222, -0.082110, -0.392166,
		0.054240, 0.944348, -0.324446,
		29.729368, 38.310890, 49.593655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328348, 37.593334, 49.248440>,  <29.691401, 37.649845, 49.820766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328348, 37.593334, 49.248440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.573711, 37.908230, 49.223183>,  <29.720928, 38.097168, 49.208027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.573711, 37.908230, 49.223183>,  <29.328348, 37.593334, 49.248440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573711, 37.908230, 49.223183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384006, -0.367165, -0.847189,
		-0.690125, 0.495423, -0.527526,
		0.613406, 0.787239, -0.063145,
		29.757732, 38.144402, 49.204239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214352, 37.815624, 48.541348>,  <29.328348, 37.593334, 49.248440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214352, 37.815624, 48.541348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.570471, 37.940662, 48.673801>,  <29.784143, 38.015686, 48.753273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.570471, 37.940662, 48.673801>,  <29.214352, 37.815624, 48.541348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570471, 37.940662, 48.673801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444856, -0.441648, -0.779135,
		-0.097313, 0.840969, -0.532260,
		0.890300, 0.312599, 0.331132,
		29.837561, 38.034443, 48.773140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497227, 38.030388, 47.977718>,  <29.214352, 37.815624, 48.541348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497227, 38.030388, 47.977718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.809837, 38.003971, 48.225864>,  <29.997404, 37.988121, 48.374752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.809837, 38.003971, 48.225864>,  <29.497227, 38.030388, 47.977718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809837, 38.003971, 48.225864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544025, -0.414579, -0.729494,
		0.305369, 0.907613, -0.288075,
		0.781529, -0.066045, 0.620364,
		30.044296, 37.984158, 48.411972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970144, 38.267860, 47.660362>,  <29.497227, 38.030388, 47.977718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970144, 38.267860, 47.660362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.154161, 38.047943, 47.939243>,  <30.264572, 37.915993, 48.106571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.154161, 38.047943, 47.939243>,  <29.970144, 38.267860, 47.660362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154161, 38.047943, 47.939243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437350, -0.543053, -0.716811,
		0.772714, 0.634685, -0.009376,
		0.460041, -0.549789, 0.697205,
		30.292173, 37.883007, 48.148403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661718, 38.252155, 47.447357>,  <29.970144, 38.267860, 47.660362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661718, 38.252155, 47.447357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.602638, 37.936172, 47.685402>,  <30.567190, 37.746582, 47.828228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.602638, 37.936172, 47.685402>,  <30.661718, 38.252155, 47.447357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602638, 37.936172, 47.685402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403977, -0.597410, -0.692751,
		0.902767, 0.138091, 0.407361,
		-0.147698, -0.789957, 0.595108,
		30.558329, 37.699184, 47.863934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107565, 37.757557, 47.110443>,  <30.661718, 38.252155, 47.447357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107565, 37.757557, 47.110443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.889959, 37.540485, 47.366428>,  <30.759396, 37.410240, 47.520020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.889959, 37.540485, 47.366428>,  <31.107565, 37.757557, 47.110443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889959, 37.540485, 47.366428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377543, -0.839439, -0.390901,
		0.749341, 0.028957, 0.661551,
		-0.544012, -0.542682, 0.639959,
		30.726755, 37.377682, 47.558414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501839, 37.219631, 47.342968>,  <31.107565, 37.757557, 47.110443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501839, 37.219631, 47.342968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.136034, 37.073982, 47.413490>,  <30.916552, 36.986591, 47.455803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.136034, 37.073982, 47.413490>,  <31.501839, 37.219631, 47.342968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136034, 37.073982, 47.413490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301513, -0.904008, -0.303083,
		0.269743, -0.224013, 0.936513,
		-0.914510, -0.364125, 0.176307,
		30.861681, 36.964745, 47.466381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680107, 36.663925, 47.616703>,  <31.501839, 37.219631, 47.342968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680107, 36.663925, 47.616703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.299004, 36.614262, 47.505825>,  <31.070341, 36.584461, 47.439297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.299004, 36.614262, 47.505825>,  <31.680107, 36.663925, 47.616703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299004, 36.614262, 47.505825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247469, -0.846472, -0.471428,
		-0.176107, -0.517754, 0.837208,
		-0.952757, -0.124161, -0.277197,
		31.013176, 36.577015, 47.422665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591679, 35.974537, 47.706638>,  <31.680107, 36.663925, 47.616703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591679, 35.974537, 47.706638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.278055, 36.047707, 47.469391>,  <31.089882, 36.091606, 47.327042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.278055, 36.047707, 47.469391>,  <31.591679, 35.974537, 47.706638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278055, 36.047707, 47.469391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119203, -0.893424, -0.433110,
		-0.609133, -0.410286, 0.678692,
		-0.784058, 0.182920, -0.593121,
		31.042837, 36.102581, 47.291454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048679, 35.401505, 47.831066>,  <31.591679, 35.974537, 47.706638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048679, 35.401505, 47.831066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.010445, 35.543530, 47.459091>,  <30.987503, 35.628746, 47.235905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.010445, 35.543530, 47.459091>,  <31.048679, 35.401505, 47.831066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010445, 35.543530, 47.459091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204525, -0.907282, -0.367436,
		-0.974183, -0.225319, 0.014104,
		-0.095587, 0.355065, -0.929942,
		30.981770, 35.650047, 47.180107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620249, 34.951279, 47.445950>,  <31.048679, 35.401505, 47.831066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620249, 34.951279, 47.445950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.844673, 35.156300, 47.185947>,  <30.979328, 35.279312, 47.029945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.844673, 35.156300, 47.185947>,  <30.620249, 34.951279, 47.445950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844673, 35.156300, 47.185947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201835, -0.846250, -0.493076,
		-0.802792, 0.145451, -0.578246,
		0.561059, 0.512548, -0.650006,
		31.012991, 35.310062, 46.990944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503826, 34.640896, 46.755772>,  <30.620249, 34.951279, 47.445950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503826, 34.640896, 46.755772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.839844, 34.851894, 46.705067>,  <31.041454, 34.978493, 46.674644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.839844, 34.851894, 46.705067>,  <30.503826, 34.640896, 46.755772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839844, 34.851894, 46.705067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343650, -0.698188, -0.628043,
		-0.419799, 0.484021, -0.767784,
		0.840044, 0.527501, -0.126764,
		31.091856, 35.010143, 46.667038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577387, 34.650936, 45.979328>,  <30.503826, 34.640896, 46.755772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577387, 34.650936, 45.979328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.928545, 34.743046, 46.147270>,  <31.139240, 34.798313, 46.248035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.928545, 34.743046, 46.147270>,  <30.577387, 34.650936, 45.979328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928545, 34.743046, 46.147270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430913, -0.762297, -0.482926,
		0.208848, 0.604878, -0.768444,
		0.877893, 0.230274, 0.419854,
		31.191914, 34.812130, 46.273228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044353, 34.683376, 45.447792>,  <30.577387, 34.650936, 45.979328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044353, 34.683376, 45.447792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.277729, 34.605904, 45.763283>,  <31.417755, 34.559422, 45.952576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.277729, 34.605904, 45.763283>,  <31.044353, 34.683376, 45.447792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277729, 34.605904, 45.763283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463778, -0.717782, -0.519326,
		0.666714, 0.668788, -0.328960,
		0.583440, -0.193678, 0.788725,
		31.452761, 34.547802, 45.999901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589762, 34.508656, 45.059692>,  <31.044353, 34.683376, 45.447792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589762, 34.508656, 45.059692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.683157, 34.373322, 45.424332>,  <31.739195, 34.292122, 45.643116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.683157, 34.373322, 45.424332>,  <31.589762, 34.508656, 45.059692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683157, 34.373322, 45.424332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330764, -0.853969, -0.401662,
		0.914373, 0.395307, -0.087484,
		0.233488, -0.338332, 0.911600,
		31.753204, 34.271820, 45.697811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363422, 34.377762, 45.150005>,  <31.589762, 34.508656, 45.059692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363422, 34.377762, 45.150005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.181572, 34.153515, 45.426853>,  <32.072464, 34.018967, 45.592960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.181572, 34.153515, 45.426853>,  <32.363422, 34.377762, 45.150005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181572, 34.153515, 45.426853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571249, -0.779720, -0.256343,
		0.683369, 0.278833, 0.674729,
		-0.454622, -0.560615, 0.692119,
		32.045185, 33.985329, 45.634487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921379, 33.858799, 45.599751>,  <32.363422, 34.377762, 45.150005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921379, 33.858799, 45.599751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.551861, 33.706436, 45.615284>,  <32.330151, 33.615017, 45.624603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.551861, 33.706436, 45.615284>,  <32.921379, 33.858799, 45.599751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551861, 33.706436, 45.615284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344119, -0.870453, -0.351984,
		0.167880, -0.311797, 0.935200,
		-0.923795, -0.380911, 0.038837,
		32.274723, 33.592163, 45.626934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828556, 33.180088, 46.007576>,  <32.921379, 33.858799, 45.599751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828556, 33.180088, 46.007576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.537964, 33.128159, 45.737652>,  <32.363609, 33.097000, 45.575699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.537964, 33.128159, 45.737652>,  <32.828556, 33.180088, 46.007576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537964, 33.128159, 45.737652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305823, -0.940467, -0.148308,
		-0.615381, -0.314115, 0.722937,
		-0.726484, -0.129825, -0.674809,
		32.320019, 33.089211, 45.535210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966518, 33.809341, 46.467270>,  <32.828556, 33.180088, 46.007576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966518, 33.809341, 46.467270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262329, 33.544167, 46.513962>,  <33.439816, 33.385063, 46.541977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262329, 33.544167, 46.513962>,  <32.966518, 33.809341, 46.467270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262329, 33.544167, 46.513962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673005, 0.724815, -0.147339,
		0.013072, 0.187517, 0.982174,
		0.739523, -0.662934, 0.116725,
		33.484184, 33.345287, 46.548981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491589, 34.182003, 46.815323>,  <32.966518, 33.809341, 46.467270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491589, 34.182003, 46.815323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.685726, 33.875977, 46.646030>,  <33.802208, 33.692360, 46.544456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.685726, 33.875977, 46.646030>,  <33.491589, 34.182003, 46.815323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685726, 33.875977, 46.646030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757456, 0.609697, -0.233516,
		0.436696, -0.207242, 0.875413,
		0.485342, -0.765062, -0.423229,
		33.831329, 33.646458, 46.519062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141914, 34.116066, 47.067719>,  <33.491589, 34.182003, 46.815323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141914, 34.116066, 47.067719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.117752, 33.985802, 46.690296>,  <34.103256, 33.907642, 46.463844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.117752, 33.985802, 46.690296>,  <34.141914, 34.116066, 47.067719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117752, 33.985802, 46.690296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822969, 0.518687, -0.231703,
		0.564866, -0.790512, 0.236679,
		-0.060402, -0.325660, -0.943555,
		34.099632, 33.888103, 46.407230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696709, 33.668930, 46.731979>,  <34.141914, 34.116066, 47.067719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696709, 33.668930, 46.731979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.513611, 33.900948, 46.462456>,  <34.403751, 34.040157, 46.300743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.513611, 33.900948, 46.462456>,  <34.696709, 33.668930, 46.731979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513611, 33.900948, 46.462456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838192, 0.534270, -0.109499,
		0.296480, -0.614901, -0.730751,
		-0.457749, 0.580045, -0.673805,
		34.376286, 34.074963, 46.260315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129082, 33.703491, 46.219845>,  <34.696709, 33.668930, 46.731979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129082, 33.703491, 46.219845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.903225, 34.033493, 46.229153>,  <34.767712, 34.231495, 46.234737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.903225, 34.033493, 46.229153>,  <35.129082, 33.703491, 46.219845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903225, 34.033493, 46.229153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809750, 0.548302, 0.208974,
		0.159644, 0.136841, -0.977644,
		-0.564641, 0.825009, 0.023274,
		34.733833, 34.280994, 46.236134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447182, 34.201195, 45.776337>,  <35.129082, 33.703491, 46.219845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447182, 34.201195, 45.776337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233986, 34.386391, 46.059620>,  <35.106068, 34.497509, 46.229591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233986, 34.386391, 46.059620>,  <35.447182, 34.201195, 45.776337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233986, 34.386391, 46.059620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827566, 0.459576, 0.322372,
		-0.176222, 0.757912, -0.628104,
		-0.532991, 0.462989, 0.708210,
		35.074089, 34.525288, 46.272083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733688, 34.897873, 45.864681>,  <35.447182, 34.201195, 45.776337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733688, 34.897873, 45.864681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.546219, 34.814686, 46.208099>,  <35.433739, 34.764774, 46.414150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.546219, 34.814686, 46.208099>,  <35.733688, 34.897873, 45.864681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546219, 34.814686, 46.208099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802099, 0.307018, 0.512227,
		-0.370115, 0.928703, 0.022919,
		-0.468670, -0.207966, 0.858544,
		35.405617, 34.752296, 46.465664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812412, 35.518288, 46.297237>,  <35.733688, 34.897873, 45.864681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812412, 35.518288, 46.297237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.722591, 35.239525, 46.569679>,  <35.668697, 35.072269, 46.733143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.722591, 35.239525, 46.569679>,  <35.812412, 35.518288, 46.297237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722591, 35.239525, 46.569679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834213, 0.223775, 0.503998,
		-0.503652, 0.681359, 0.531117,
		-0.224553, -0.696904, 0.681103,
		35.655224, 35.030453, 46.774010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885330, 35.822937, 46.928131>,  <35.812412, 35.518288, 46.297237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885330, 35.822937, 46.928131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.910576, 35.432274, 47.010258>,  <35.925724, 35.197876, 47.059532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.910576, 35.432274, 47.010258>,  <35.885330, 35.822937, 46.928131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910576, 35.432274, 47.010258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836901, 0.163870, 0.522249,
		-0.543704, 0.138868, 0.827709,
		0.063113, -0.976659, 0.205316,
		35.929508, 35.139275, 47.071854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981030, 35.755089, 47.626274>,  <35.885330, 35.822937, 46.928131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981030, 35.755089, 47.626274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.133354, 35.420307, 47.469055>,  <36.224747, 35.219437, 47.374725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.133354, 35.420307, 47.469055>,  <35.981030, 35.755089, 47.626274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133354, 35.420307, 47.469055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866515, 0.174671, 0.467592,
		-0.322702, -0.518642, 0.791754,
		0.380809, -0.836959, -0.393045,
		36.247597, 35.169220, 47.351143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509342, 35.386398, 48.157215>,  <35.981030, 35.755089, 47.626274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509342, 35.386398, 48.157215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.586704, 35.196789, 47.813614>,  <36.633121, 35.083023, 47.607452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.586704, 35.196789, 47.813614>,  <36.509342, 35.386398, 48.157215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586704, 35.196789, 47.813614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960816, -0.085681, 0.263614,
		-0.198560, -0.876332, 0.438881,
		0.193409, -0.474027, -0.859006,
		36.644726, 35.054581, 47.555912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059658, 34.916595, 48.358570>,  <36.509342, 35.386398, 48.157215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059658, 34.916595, 48.358570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.055141, 34.964325, 47.961452>,  <37.052433, 34.992962, 47.723183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.055141, 34.964325, 47.961452>,  <37.059658, 34.916595, 48.358570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055141, 34.964325, 47.961452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999932, -0.001485, -0.011550,
		-0.002853, -0.992854, -0.119298,
		-0.011291, 0.119323, -0.992791,
		37.051754, 35.000122, 47.663616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467728, 34.504768, 48.164394>,  <37.059658, 34.916595, 48.358570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467728, 34.504768, 48.164394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.471157, 34.770817, 47.865719>,  <37.473213, 34.930447, 47.686516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.471157, 34.770817, 47.865719>,  <37.467728, 34.504768, 48.164394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471157, 34.770817, 47.865719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979347, 0.145262, 0.140636,
		0.202005, -0.732468, -0.650142,
		0.008570, 0.665124, -0.746684,
		37.473728, 34.970352, 47.641712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989052, 34.277344, 47.671902>,  <37.467728, 34.504768, 48.164394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989052, 34.277344, 47.671902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.927052, 34.670185, 47.629093>,  <37.889851, 34.905888, 47.603409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.927052, 34.670185, 47.629093>,  <37.989052, 34.277344, 47.671902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927052, 34.670185, 47.629093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987074, 0.149491, -0.057771,
		-0.040739, -0.114590, -0.992577,
		-0.155002, 0.982101, -0.107018,
		37.880550, 34.964817, 47.596989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656368, 34.539959, 47.331520>,  <37.989052, 34.277344, 47.671902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656368, 34.539959, 47.331520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.470715, 34.878674, 47.435467>,  <38.359322, 35.081902, 47.497837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.470715, 34.878674, 47.435467>,  <38.656368, 34.539959, 47.331520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470715, 34.878674, 47.435467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882205, 0.468204, 0.049994,
		-0.079339, 0.252463, -0.964348,
		-0.464133, 0.846786, 0.259871,
		38.331474, 35.132710, 47.513428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751827, 35.039906, 46.796349>,  <38.656368, 34.539959, 47.331520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751827, 35.039906, 46.796349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.670296, 35.216316, 47.145966>,  <38.621376, 35.322163, 47.355736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.670296, 35.216316, 47.145966>,  <38.751827, 35.039906, 46.796349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670296, 35.216316, 47.145966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749581, 0.644589, -0.150443,
		-0.629748, 0.624501, -0.461970,
		-0.203829, 0.441026, 0.874042,
		38.609146, 35.348625, 47.408176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723392, 35.795223, 46.627750>,  <38.751827, 35.039906, 46.796349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723392, 35.795223, 46.627750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.877441, 35.667328, 46.974033>,  <38.969872, 35.590591, 47.181801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.877441, 35.667328, 46.974033>,  <38.723392, 35.795223, 46.627750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877441, 35.667328, 46.974033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749721, 0.655404, -0.091458,
		-0.538143, 0.684260, 0.492129,
		0.385124, -0.319741, 0.865705,
		38.992977, 35.571407, 47.233746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781929, 36.427574, 47.024239>,  <38.723392, 35.795223, 46.627750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781929, 36.427574, 47.024239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.036797, 36.137463, 47.128532>,  <39.189716, 35.963394, 47.191109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.036797, 36.137463, 47.128532>,  <38.781929, 36.427574, 47.024239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036797, 36.137463, 47.128532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759667, 0.648096, -0.053647,
		-0.130069, 0.232251, 0.963920,
		0.637172, -0.725280, 0.260731,
		39.227947, 35.919880, 47.206753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456417, 36.746704, 47.112297>,  <38.781929, 36.427574, 47.024239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456417, 36.746704, 47.112297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.551884, 36.358555, 47.127377>,  <39.609161, 36.125668, 47.136425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.551884, 36.358555, 47.127377>,  <39.456417, 36.746704, 47.112297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551884, 36.358555, 47.127377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962198, 0.231052, -0.144188,
		0.131206, 0.070687, 0.988832,
		0.238664, -0.970370, 0.037699,
		39.623482, 36.067444, 47.138687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084831, 36.709328, 47.445717>,  <39.456417, 36.746704, 47.112297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084831, 36.709328, 47.445717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.033752, 36.391758, 47.207935>,  <40.003105, 36.201218, 47.065266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.033752, 36.391758, 47.207935>,  <40.084831, 36.709328, 47.445717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033752, 36.391758, 47.207935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937299, 0.099371, -0.334059,
		0.324289, -0.599841, 0.731455,
		-0.127697, -0.793924, -0.594456,
		39.995441, 36.153580, 47.029598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702179, 36.206100, 47.523338>,  <40.084831, 36.709328, 47.445717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702179, 36.206100, 47.523338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.507557, 36.228405, 47.174591>,  <40.390781, 36.241787, 46.965343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.507557, 36.228405, 47.174591>,  <40.702179, 36.206100, 47.523338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507557, 36.228405, 47.174591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872528, 0.081519, -0.481715,
		0.044214, -0.995111, -0.088314,
		-0.486559, 0.055758, -0.871866,
		40.361588, 36.245132, 46.913033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956375, 35.782009, 47.000580>,  <40.702179, 36.206100, 47.523338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956375, 35.782009, 47.000580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.829086, 36.132381, 46.855537>,  <40.752712, 36.342606, 46.768513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.829086, 36.132381, 46.855537>,  <40.956375, 35.782009, 47.000580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829086, 36.132381, 46.855537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894567, 0.150828, -0.420715,
		-0.313826, -0.458253, -0.831575,
		-0.318219, 0.875931, -0.362604,
		40.733620, 36.395161, 46.746758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861858, 35.873047, 46.291328>,  <40.956375, 35.782009, 47.000580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861858, 35.873047, 46.291328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.970005, 36.230705, 46.434097>,  <41.034893, 36.445301, 46.519760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.970005, 36.230705, 46.434097>,  <40.861858, 35.873047, 46.291328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970005, 36.230705, 46.434097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941528, -0.168143, -0.291980,
		-0.201060, 0.414997, -0.887329,
		0.270369, 0.894151, 0.356924,
		41.051117, 36.498951, 46.541176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669601, 35.702129, 45.522633>,  <40.861858, 35.873047, 46.291328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669601, 35.702129, 45.522633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.374931, 35.642448, 45.258801>,  <40.198128, 35.606640, 45.100502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.374931, 35.642448, 45.258801>,  <40.669601, 35.702129, 45.522633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374931, 35.642448, 45.258801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428869, 0.857203, 0.285088,
		0.522860, 0.492891, -0.695468,
		-0.736674, -0.149203, -0.659583,
		40.153931, 35.597687, 45.060925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554802, 36.350716, 45.094223>,  <40.669601, 35.702129, 45.522633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554802, 36.350716, 45.094223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.199924, 36.172363, 45.141670>,  <39.986996, 36.065353, 45.170139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.199924, 36.172363, 45.141670>,  <40.554802, 36.350716, 45.094223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199924, 36.172363, 45.141670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377980, 0.849813, 0.367355,
		-0.264597, 0.281083, -0.922486,
		-0.887198, -0.445882, 0.118614,
		39.933765, 36.038597, 45.177254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853737, 36.923782, 44.509209>,  <40.554802, 36.350716, 45.094223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853737, 36.923782, 44.509209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.923054, 37.293415, 44.372948>,  <40.964645, 37.515194, 44.291191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.923054, 37.293415, 44.372948>,  <40.853737, 36.923782, 44.509209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923054, 37.293415, 44.372948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641117, -0.368414, -0.673232,
		-0.747621, -0.101731, -0.656287,
		0.173297, 0.924079, -0.340656,
		40.975044, 37.570641, 44.270752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855911, 36.968571, 43.724354>,  <40.853737, 36.923782, 44.509209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855911, 36.968571, 43.724354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.087502, 37.266922, 43.856083>,  <41.226456, 37.445930, 43.935120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.087502, 37.266922, 43.856083>,  <40.855911, 36.968571, 43.724354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087502, 37.266922, 43.856083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651627, -0.180529, -0.736744,
		-0.490065, 0.641156, -0.590554,
		0.578980, 0.745874, 0.329324,
		41.261196, 37.490685, 43.954880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165039, 36.388290, 43.590855>,  <40.855911, 36.968571, 43.724354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165039, 36.388290, 43.590855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.399532, 36.207298, 43.859653>,  <41.540230, 36.098701, 44.020935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.399532, 36.207298, 43.859653>,  <41.165039, 36.388290, 43.590855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399532, 36.207298, 43.859653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586798, -0.334742, -0.737303,
		0.558565, 0.826562, 0.069280,
		0.586236, -0.452485, 0.672001,
		41.575401, 36.071552, 44.061253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813812, 36.589630, 43.555576>,  <41.165039, 36.388290, 43.590855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813812, 36.589630, 43.555576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.798492, 36.216709, 43.699432>,  <41.789299, 35.992954, 43.785748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.798492, 36.216709, 43.699432>,  <41.813812, 36.589630, 43.555576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798492, 36.216709, 43.699432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505684, -0.328501, -0.797728,
		0.861868, 0.151311, 0.484034,
		-0.038300, -0.932305, 0.359640,
		41.787003, 35.937019, 43.807323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509853, 36.226719, 43.506123>,  <41.813812, 36.589630, 43.555576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509853, 36.226719, 43.506123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.234371, 35.943726, 43.442688>,  <42.069080, 35.773930, 43.404629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.234371, 35.943726, 43.442688>,  <42.509853, 36.226719, 43.506123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234371, 35.943726, 43.442688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521589, -0.331528, -0.786151,
		0.503613, -0.624145, 0.597342,
		-0.688708, -0.707483, -0.158585,
		42.027760, 35.731480, 43.395111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.696217, 36.684097, 43.006073>,  <42.509853, 36.226719, 43.506123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.696217, 36.684097, 43.006073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.484554, 36.738922, 43.341026>,  <42.357559, 36.771816, 43.542000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.484554, 36.738922, 43.341026>,  <42.696217, 36.684097, 43.006073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484554, 36.738922, 43.341026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514246, 0.733185, -0.444961,
		-0.674945, -0.666073, -0.317484,
		-0.529152, 0.137060, 0.837385,
		42.325809, 36.780041, 43.592243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097122, 36.599957, 42.676342>,  <42.696217, 36.684097, 43.006073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097122, 36.599957, 42.676342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.090523, 36.286037, 42.428532>,  <42.086563, 36.097687, 42.279846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.090523, 36.286037, 42.428532>,  <42.097122, 36.599957, 42.676342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090523, 36.286037, 42.428532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725734, -0.416815, 0.547334,
		-0.687777, 0.458642, -0.562681,
		-0.016497, -0.784801, -0.619528,
		42.085575, 36.050598, 42.242672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448513, 36.517036, 42.310989>,  <42.097122, 36.599957, 42.676342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448513, 36.517036, 42.310989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.675865, 36.201736, 42.405315>,  <41.812275, 36.012558, 42.461910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.675865, 36.201736, 42.405315>,  <41.448513, 36.517036, 42.310989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675865, 36.201736, 42.405315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793150, -0.448728, 0.411772,
		-0.218758, -0.421084, -0.880246,
		0.568382, -0.788246, 0.235820,
		41.846378, 35.965263, 42.476063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370029, 35.938808, 41.874893>,  <41.448513, 36.517036, 42.310989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370029, 35.938808, 41.874893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.442390, 35.881920, 42.264160>,  <41.485806, 35.847786, 42.497719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.442390, 35.881920, 42.264160>,  <41.370029, 35.938808, 41.874893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442390, 35.881920, 42.264160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920231, -0.373647, 0.116457,
		0.347057, -0.916603, -0.198469,
		0.180902, -0.142220, 0.973164,
		41.496662, 35.839252, 42.556110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123867, 35.213528, 42.168674>,  <41.370029, 35.938808, 41.874893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123867, 35.213528, 42.168674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.200775, 35.399235, 42.514503>,  <41.246922, 35.510658, 42.722000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.200775, 35.399235, 42.514503>,  <41.123867, 35.213528, 42.168674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200775, 35.399235, 42.514503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675643, -0.576324, 0.459736,
		0.711715, -0.672537, 0.202870,
		0.192271, 0.464269, 0.864573,
		41.258457, 35.538517, 42.773876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903492, 34.768970, 41.711006>,  <41.123867, 35.213528, 42.168674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903492, 34.768970, 41.711006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.206345, 34.889706, 41.479267>,  <41.388058, 34.962147, 41.340225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.206345, 34.889706, 41.479267>,  <40.903492, 34.768970, 41.711006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206345, 34.889706, 41.479267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419438, 0.455288, 0.785356,
		0.500827, -0.837617, 0.218106,
		0.757129, 0.301846, -0.579349,
		41.433483, 34.980259, 41.305462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283913, 34.035931, 41.600300>,  <40.903492, 34.768970, 41.711006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283913, 34.035931, 41.600300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.671696, 33.940178, 41.578930>,  <41.904366, 33.882725, 41.566109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.671696, 33.940178, 41.578930>,  <41.283913, 34.035931, 41.600300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671696, 33.940178, 41.578930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077333, 0.505031, -0.859630,
		0.232763, 0.829240, 0.508116,
		0.969454, -0.239385, -0.053425,
		41.962532, 33.868362, 41.562904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797745, 34.542454, 41.399822>,  <41.283913, 34.035931, 41.600300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797745, 34.542454, 41.399822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.931072, 34.179165, 41.298603>,  <42.011070, 33.961193, 41.237873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.931072, 34.179165, 41.298603>,  <41.797745, 34.542454, 41.399822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931072, 34.179165, 41.298603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042738, 0.282672, -0.958264,
		0.941844, 0.308594, 0.133036,
		0.333320, -0.908221, -0.253044,
		42.031067, 33.906700, 41.222691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495766, 34.664211, 41.141872>,  <41.797745, 34.542454, 41.399822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495766, 34.664211, 41.141872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.278141, 34.363380, 40.993076>,  <42.147568, 34.182880, 40.903797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.278141, 34.363380, 40.993076>,  <42.495766, 34.664211, 41.141872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278141, 34.363380, 40.993076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166458, 0.337787, -0.926386,
		0.822371, -0.565927, -0.058586,
		-0.544057, -0.752081, -0.371990,
		42.114925, 34.137756, 40.881481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015022, 35.191132, 41.005634>,  <42.495766, 34.664211, 41.141872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015022, 35.191132, 41.005634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.256023, 35.320484, 40.713768>,  <43.400623, 35.398094, 40.538647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.256023, 35.320484, 40.713768>,  <43.015022, 35.191132, 41.005634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256023, 35.320484, 40.713768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102331, -0.875390, -0.472462,
		-0.791530, 0.359327, -0.494332,
		0.602502, 0.323383, -0.729668,
		43.436775, 35.417500, 40.494869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720177, 35.051758, 40.428356>,  <43.015022, 35.191132, 41.005634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720177, 35.051758, 40.428356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.110813, 35.041958, 40.342876>,  <43.345196, 35.036079, 40.291588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.110813, 35.041958, 40.342876>,  <42.720177, 35.051758, 40.428356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110813, 35.041958, 40.342876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158058, -0.755586, -0.635694,
		-0.145895, 0.654590, -0.741772,
		0.976592, -0.024499, -0.213700,
		43.403790, 35.034607, 40.278767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807022, 34.905960, 39.665607>,  <42.720177, 35.051758, 40.428356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807022, 34.905960, 39.665607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.130939, 34.790070, 39.869682>,  <43.325291, 34.720535, 39.992126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.130939, 34.790070, 39.869682>,  <42.807022, 34.905960, 39.665607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130939, 34.790070, 39.869682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002746, -0.871434, -0.490504,
		0.586708, 0.395807, -0.706478,
		0.809794, -0.289723, 0.510191,
		43.373878, 34.703152, 40.022739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278061, 34.644573, 39.071312>,  <42.807022, 34.905960, 39.665607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278061, 34.644573, 39.071312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.907459, 34.535870, 39.175423>,  <42.685101, 34.470650, 39.237888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.907459, 34.535870, 39.175423>,  <43.278061, 34.644573, 39.071312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907459, 34.535870, 39.175423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056249, -0.783938, -0.618286,
		0.372063, -0.558203, 0.741606,
		-0.926502, -0.271755, 0.260276,
		42.629509, 34.454342, 39.253506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657490, 35.151924, 39.456802>,  <43.278061, 34.644573, 39.071312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657490, 35.151924, 39.456802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.877636, 34.820110, 39.494667>,  <44.009724, 34.621021, 39.517387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.877636, 34.820110, 39.494667>,  <43.657490, 35.151924, 39.456802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877636, 34.820110, 39.494667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069569, -0.158547, -0.984897,
		0.832019, 0.535470, -0.144970,
		0.550367, -0.829539, 0.094662,
		44.042747, 34.571247, 39.523067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963997, 35.229771, 38.814739>,  <43.657490, 35.151924, 39.456802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963997, 35.229771, 38.814739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.952671, 34.855556, 38.955582>,  <43.945877, 34.631027, 39.040089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.952671, 34.855556, 38.955582>,  <43.963997, 35.229771, 38.814739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952671, 34.855556, 38.955582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105001, -0.347517, -0.931776,
		0.994069, -0.063350, -0.088393,
		-0.028310, -0.935531, 0.352108,
		43.944180, 34.574898, 39.061214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606449, 34.915928, 38.595131>,  <43.963997, 35.229771, 38.814739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606449, 34.915928, 38.595131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.271637, 34.699600, 38.628326>,  <44.070747, 34.569805, 38.648243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.271637, 34.699600, 38.628326>,  <44.606449, 34.915928, 38.595131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271637, 34.699600, 38.628326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033192, -0.201591, -0.978907,
		0.546143, -0.816624, 0.186689,
		-0.837034, -0.540820, 0.082992,
		44.020527, 34.537354, 38.653225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201801, 34.551537, 38.432236>,  <44.606449, 34.915928, 38.595131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201801, 34.551537, 38.432236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.573536, 34.584362, 38.576233>,  <45.796577, 34.604057, 38.662632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.573536, 34.584362, 38.576233>,  <45.201801, 34.551537, 38.432236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.573536, 34.584362, 38.576233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367839, -0.121219, -0.921955,
		-0.032017, 0.989228, -0.142838,
		0.929338, 0.082059, 0.359996,
		45.852337, 34.608978, 38.684231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553204, 35.013687, 37.968025>,  <45.201801, 34.551537, 38.432236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553204, 35.013687, 37.968025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.806042, 34.773193, 38.163567>,  <45.957745, 34.628899, 38.280891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.806042, 34.773193, 38.163567>,  <45.553204, 35.013687, 37.968025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.806042, 34.773193, 38.163567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652693, 0.073061, -0.754091,
		0.417668, 0.795727, 0.438602,
		0.632096, -0.601232, 0.488850,
		45.995670, 34.592823, 38.310223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.075008, 35.444633, 38.248627>,  <45.553204, 35.013687, 37.968025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.075008, 35.444633, 38.248627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.143101, 35.069485, 38.127682>,  <46.183956, 34.844395, 38.055115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.143101, 35.069485, 38.127682>,  <46.075008, 35.444633, 38.248627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.143101, 35.069485, 38.127682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671281, 0.335001, -0.661178,
		0.721389, -0.090414, 0.686603,
		0.170233, -0.937870, -0.302359,
		46.194172, 34.788124, 38.036972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.810551, 35.298161, 38.239632>,  <46.075008, 35.444633, 38.248627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.810551, 35.298161, 38.239632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.598537, 35.116791, 37.953003>,  <46.471329, 35.007969, 37.781025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.598537, 35.116791, 37.953003>,  <46.810551, 35.298161, 38.239632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.598537, 35.116791, 37.953003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544475, 0.465850, -0.697518,
		0.650084, -0.759863, -0.000039,
		-0.530036, -0.453423, -0.716568,
		46.439526, 34.980762, 37.738033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.198441, 35.543259, 37.672966>,  <46.810551, 35.298161, 38.239632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.198441, 35.543259, 37.672966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.913555, 35.297722, 37.536762>,  <46.742622, 35.150398, 37.455040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.913555, 35.297722, 37.536762>,  <47.198441, 35.543259, 37.672966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.913555, 35.297722, 37.536762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434202, -0.004087, -0.900806,
		0.551561, -0.789418, 0.269443,
		-0.712214, -0.613842, -0.340513,
		46.699890, 35.113571, 37.434608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.366505, 34.897564, 37.326286>,  <47.198441, 35.543259, 37.672966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.366505, 34.897564, 37.326286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.049358, 35.004520, 37.107243>,  <46.859070, 35.068695, 36.975819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.049358, 35.004520, 37.107243>,  <47.366505, 34.897564, 37.326286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.049358, 35.004520, 37.107243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540034, -0.108084, -0.834674,
		-0.282372, -0.957507, -0.058705,
		-0.792861, 0.267392, -0.547606,
		46.811501, 35.084736, 36.942959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.097202, 34.402237, 36.786663>,  <47.366505, 34.897564, 37.326286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.097202, 34.402237, 36.786663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.011639, 34.771931, 36.660149>,  <46.960300, 34.993748, 36.584240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.011639, 34.771931, 36.660149>,  <47.097202, 34.402237, 36.786663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.011639, 34.771931, 36.660149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538778, -0.158456, -0.827412,
		-0.814837, -0.347404, -0.464059,
		-0.213913, 0.924231, -0.316290,
		46.947464, 35.049198, 36.565262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.797840, 34.306583, 36.144840>,  <47.097202, 34.402237, 36.786663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.797840, 34.306583, 36.144840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.978638, 34.661613, 36.180439>,  <47.087116, 34.874630, 36.201797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.978638, 34.661613, 36.180439>,  <46.797840, 34.306583, 36.144840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.978638, 34.661613, 36.180439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408438, -0.117224, -0.905228,
		-0.793021, 0.445507, -0.415502,
		0.451992, 0.887571, 0.089000,
		47.114235, 34.927883, 36.207138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.670647, 34.751030, 35.655293>,  <46.797840, 34.306583, 36.144840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.670647, 34.751030, 35.655293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.040974, 34.840843, 35.776917>,  <47.263168, 34.894730, 35.849892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.040974, 34.840843, 35.776917>,  <46.670647, 34.751030, 35.655293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.040974, 34.840843, 35.776917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336976, -0.125895, -0.933058,
		-0.171223, 0.966300, -0.192217,
		0.925813, 0.224533, 0.304064,
		47.318718, 34.908203, 35.868137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.986794, 35.361736, 35.228622>,  <46.670647, 34.751030, 35.655293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.986794, 35.361736, 35.228622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.267944, 35.112881, 35.366558>,  <47.436634, 34.963566, 35.449318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.267944, 35.112881, 35.366558>,  <46.986794, 35.361736, 35.228622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.267944, 35.112881, 35.366558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398422, -0.057268, -0.915413,
		0.589262, 0.780810, 0.207621,
		0.702873, -0.622139, 0.344838,
		47.478806, 34.926239, 35.470009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.653461, 35.630398, 35.083378>,  <46.986794, 35.361736, 35.228622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.653461, 35.630398, 35.083378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.655945, 35.232033, 35.119404>,  <47.657436, 34.993011, 35.141022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.655945, 35.232033, 35.119404>,  <47.653461, 35.630398, 35.083378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.655945, 35.232033, 35.119404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494202, -0.075246, -0.866084,
		0.869325, 0.049892, 0.491716,
		0.006211, -0.995916, 0.090070,
		47.657806, 34.933258, 35.146423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.143219, 33.486469, 55.635891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.446766, 33.742874, 55.681889>,  <31.628895, 33.896717, 55.709488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.446766, 33.742874, 55.681889>,  <31.143219, 33.486469, 55.635891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446766, 33.742874, 55.681889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300862, -0.188476, -0.934858,
		-0.577580, 0.744031, -0.335884,
		0.758870, 0.641010, 0.114991,
		31.674427, 33.935177, 55.716385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097637, 33.950775, 55.058327>,  <31.143219, 33.486469, 55.635891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097637, 33.950775, 55.058327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.473675, 33.969200, 55.193443>,  <31.699297, 33.980255, 55.274513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.473675, 33.969200, 55.193443>,  <31.097637, 33.950775, 55.058327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473675, 33.969200, 55.193443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340385, -0.181995, -0.922505,
		0.018980, 0.982220, -0.186772,
		0.940095, 0.046065, 0.337787,
		31.755703, 33.983021, 55.294781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449406, 34.326420, 54.510700>,  <31.097637, 33.950775, 55.058327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449406, 34.326420, 54.510700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.749174, 34.151749, 54.709770>,  <31.929035, 34.046947, 54.829212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.749174, 34.151749, 54.709770>,  <31.449406, 34.326420, 54.510700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749174, 34.151749, 54.709770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459036, -0.198994, -0.865844,
		0.477127, 0.877335, 0.051319,
		0.749423, -0.436675, 0.497674,
		31.974001, 34.020744, 54.859074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048519, 34.652328, 54.219883>,  <31.449406, 34.326420, 54.510700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048519, 34.652328, 54.219883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.166744, 34.303562, 54.376038>,  <32.237679, 34.094303, 54.469730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.166744, 34.303562, 54.376038>,  <32.048519, 34.652328, 54.219883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166744, 34.303562, 54.376038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674057, -0.099239, -0.731983,
		0.676970, 0.479491, 0.558390,
		0.295566, -0.871917, 0.390386,
		32.255413, 34.041988, 54.493153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727341, 34.647335, 53.994495>,  <32.048519, 34.652328, 54.219883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727341, 34.647335, 53.994495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.633362, 34.265297, 54.066711>,  <32.576977, 34.036076, 54.110039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.633362, 34.265297, 54.066711>,  <32.727341, 34.647335, 53.994495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633362, 34.265297, 54.066711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428118, -0.268427, -0.862938,
		0.872649, -0.125450, 0.471959,
		-0.234943, -0.955096, 0.180535,
		32.562878, 33.978767, 54.120872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396969, 34.289661, 54.056801>,  <32.727341, 34.647335, 53.994495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396969, 34.289661, 54.056801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.110462, 34.034473, 53.943699>,  <32.938557, 33.881359, 53.875835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.110462, 34.034473, 53.943699>,  <33.396969, 34.289661, 54.056801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110462, 34.034473, 53.943699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545697, -0.259521, -0.796783,
		0.434946, -0.725009, 0.534027,
		-0.716266, -0.637974, -0.282757,
		32.895584, 33.843082, 53.858871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780792, 33.663666, 53.849312>,  <33.396969, 34.289661, 54.056801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780792, 33.663666, 53.849312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.414181, 33.647343, 53.690159>,  <33.194214, 33.637550, 53.594666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.414181, 33.647343, 53.690159>,  <33.780792, 33.663666, 53.849312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414181, 33.647343, 53.690159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376761, -0.422001, -0.824601,
		-0.134258, -0.905677, 0.402150,
		-0.916529, -0.040805, -0.397881,
		33.139221, 33.635101, 53.570793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798168, 32.997730, 53.447704>,  <33.780792, 33.663666, 53.849312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798168, 32.997730, 53.447704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.456474, 33.161064, 53.318985>,  <33.251457, 33.259064, 53.241753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.456474, 33.161064, 53.318985>,  <33.798168, 32.997730, 53.447704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456474, 33.161064, 53.318985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134900, -0.423675, -0.895713,
		-0.502087, -0.808556, 0.306832,
		-0.854231, 0.408334, -0.321796,
		33.200203, 33.283566, 53.222446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483150, 32.479500, 53.100285>,  <33.798168, 32.997730, 53.447704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483150, 32.479500, 53.100285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.360527, 32.830097, 52.951805>,  <33.286953, 33.040455, 52.862717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.360527, 32.830097, 52.951805>,  <33.483150, 32.479500, 53.100285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360527, 32.830097, 52.951805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350381, -0.258680, -0.900177,
		-0.885018, -0.406016, -0.227805,
		-0.306557, 0.876491, -0.371196,
		33.268559, 33.093044, 52.840446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212234, 32.360909, 52.384911>,  <33.483150, 32.479500, 53.100285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212234, 32.360909, 52.384911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.240261, 32.758839, 52.414314>,  <33.257076, 32.997597, 52.431957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.240261, 32.758839, 52.414314>,  <33.212234, 32.360909, 52.384911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240261, 32.758839, 52.414314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542113, 0.023885, -0.839966,
		-0.837379, 0.098708, -0.537636,
		0.070070, 0.994830, 0.073512,
		33.261284, 33.057289, 52.436367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887848, 32.700874, 51.755417>,  <33.212234, 32.360909, 52.384911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887848, 32.700874, 51.755417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.151417, 32.965824, 51.898010>,  <33.309559, 33.124794, 51.983566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.151417, 32.965824, 51.898010>,  <32.887848, 32.700874, 51.755417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151417, 32.965824, 51.898010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449687, 0.033031, -0.892575,
		-0.602994, 0.748444, -0.276097,
		0.658923, 0.662375, 0.356483,
		33.349094, 33.164536, 52.004955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994453, 33.197491, 51.186958>,  <32.887848, 32.700874, 51.755417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994453, 33.197491, 51.186958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.304531, 33.280029, 51.425789>,  <33.490578, 33.329552, 51.569088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.304531, 33.280029, 51.425789>,  <32.994453, 33.197491, 51.186958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304531, 33.280029, 51.425789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555648, 0.226952, -0.799843,
		-0.300552, 0.951795, 0.061275,
		0.775193, 0.206347, 0.597074,
		33.537090, 33.341934, 51.604912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251350, 33.853886, 50.942905>,  <32.994453, 33.197491, 51.186958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251350, 33.853886, 50.942905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.552624, 33.660843, 51.121700>,  <33.733387, 33.545017, 51.228977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.552624, 33.660843, 51.121700>,  <33.251350, 33.853886, 50.942905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552624, 33.660843, 51.121700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576137, 0.156045, -0.802319,
		0.317457, 0.861822, 0.395580,
		0.753185, -0.482610, 0.446990,
		33.778580, 33.516060, 51.255798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853073, 34.264332, 50.905109>,  <33.251350, 33.853886, 50.942905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853073, 34.264332, 50.905109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.004539, 33.908340, 51.006737>,  <34.095421, 33.694748, 51.067715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.004539, 33.908340, 51.006737>,  <33.853073, 34.264332, 50.905109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004539, 33.908340, 51.006737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552212, -0.003048, -0.833698,
		0.742746, 0.455997, 0.490301,
		0.378669, -0.889976, 0.254071,
		34.118141, 33.641346, 51.082958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537178, 34.370430, 50.687260>,  <33.853073, 34.264332, 50.905109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537178, 34.370430, 50.687260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.453243, 33.982128, 50.733894>,  <34.402882, 33.749146, 50.761875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.453243, 33.982128, 50.733894>,  <34.537178, 34.370430, 50.687260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453243, 33.982128, 50.733894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587732, -0.220535, -0.778418,
		0.781369, -0.094819, 0.616824,
		-0.209841, -0.970759, 0.116591,
		34.390289, 33.690899, 50.768871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186527, 33.923149, 50.596191>,  <34.537178, 34.370430, 50.687260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186527, 33.923149, 50.596191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.912540, 33.648628, 50.498371>,  <34.748150, 33.483913, 50.439678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.912540, 33.648628, 50.498371>,  <35.186527, 33.923149, 50.596191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912540, 33.648628, 50.498371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393523, -0.066026, -0.916941,
		0.613156, -0.724310, 0.315303,
		-0.684967, -0.686306, -0.244548,
		34.707050, 33.442738, 50.425007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552647, 33.460949, 50.192436>,  <35.186527, 33.923149, 50.596191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552647, 33.460949, 50.192436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.169670, 33.372158, 50.118641>,  <34.939884, 33.318886, 50.074364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.169670, 33.372158, 50.118641>,  <35.552647, 33.460949, 50.192436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169670, 33.372158, 50.118641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251261, -0.326407, -0.911223,
		0.142049, -0.918796, 0.368289,
		-0.957439, -0.221975, -0.184491,
		34.882439, 33.305565, 50.063293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528950, 32.741615, 49.941147>,  <35.552647, 33.460949, 50.192436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528950, 32.741615, 49.941147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.209396, 32.935165, 49.798233>,  <35.017666, 33.051296, 49.712486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.209396, 32.935165, 49.798233>,  <35.528950, 32.741615, 49.941147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209396, 32.935165, 49.798233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217187, -0.321863, -0.921539,
		-0.560907, -0.813798, 0.152039,
		-0.798882, 0.483876, -0.357282,
		34.969730, 33.080330, 49.691048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237301, 32.311737, 49.426579>,  <35.528950, 32.741615, 49.941147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237301, 32.311737, 49.426579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.051300, 32.657146, 49.348511>,  <34.939697, 32.864391, 49.301670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.051300, 32.657146, 49.348511>,  <35.237301, 32.311737, 49.426579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051300, 32.657146, 49.348511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089008, -0.264935, -0.960150,
		-0.880822, -0.429104, 0.200057,
		-0.465006, 0.863528, -0.195166,
		34.911797, 32.916206, 49.289963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609543, 32.098045, 49.004044>,  <35.237301, 32.311737, 49.426579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609543, 32.098045, 49.004044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.702282, 32.474350, 48.905075>,  <34.757927, 32.700134, 48.845695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.702282, 32.474350, 48.905075>,  <34.609543, 32.098045, 49.004044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702282, 32.474350, 48.905075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188878, -0.205972, -0.960157,
		-0.954239, 0.269342, 0.129935,
		0.231848, 0.940761, -0.247419,
		34.771835, 32.756577, 48.830849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175621, 32.243553, 48.435928>,  <34.609543, 32.098045, 49.004044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175621, 32.243553, 48.435928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.467197, 32.516781, 48.417767>,  <34.642143, 32.680717, 48.406868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.467197, 32.516781, 48.417767>,  <34.175621, 32.243553, 48.435928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467197, 32.516781, 48.417767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024885, -0.092722, -0.995381,
		-0.684126, 0.724442, -0.084586,
		0.728939, 0.683071, -0.045406,
		34.685879, 32.721703, 48.404144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003101, 32.770386, 47.826385>,  <34.175621, 32.243553, 48.435928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003101, 32.770386, 47.826385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.396835, 32.784786, 47.895416>,  <34.633076, 32.793427, 47.936836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.396835, 32.784786, 47.895416>,  <34.003101, 32.770386, 47.826385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396835, 32.784786, 47.895416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173479, -0.023675, -0.984553,
		-0.031356, 0.999071, -0.029549,
		0.984338, 0.035998, 0.172576,
		34.692139, 32.795586, 47.947189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466286, 33.239670, 47.827431>,  <34.003101, 32.770386, 47.826385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466286, 33.239670, 47.827431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.159969, 33.112724, 47.603703>,  <32.976181, 33.036556, 47.469463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.159969, 33.112724, 47.603703>,  <33.466286, 33.239670, 47.827431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159969, 33.112724, 47.603703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460706, -0.336078, 0.821463,
		-0.448683, 0.886752, 0.111152,
		-0.765789, -0.317368, -0.559324,
		32.930233, 33.017513, 47.435905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931160, 33.420574, 48.187405>,  <33.466286, 33.239670, 47.827431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931160, 33.420574, 48.187405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.784187, 33.136425, 47.947281>,  <32.696003, 32.965935, 47.803207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.784187, 33.136425, 47.947281>,  <32.931160, 33.420574, 48.187405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784187, 33.136425, 47.947281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646011, -0.269411, 0.714204,
		-0.669078, 0.650226, -0.359916,
		-0.367429, -0.710369, -0.600310,
		32.673958, 32.923313, 47.767189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186119, 33.528160, 47.980350>,  <32.931160, 33.420574, 48.187405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186119, 33.528160, 47.980350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.238003, 33.133022, 47.946075>,  <32.269135, 32.895939, 47.925510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.238003, 33.133022, 47.946075>,  <32.186119, 33.528160, 47.980350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238003, 33.133022, 47.946075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779843, -0.155007, 0.606480,
		-0.612389, -0.011842, -0.790468,
		0.129710, -0.987843, -0.085690,
		32.276917, 32.836670, 47.920368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712402, 33.232990, 48.294243>,  <32.186119, 33.528160, 47.980350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712402, 33.232990, 48.294243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.903307, 32.884369, 48.249325>,  <32.017849, 32.675194, 48.222374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.903307, 32.884369, 48.249325>,  <31.712402, 33.232990, 48.294243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903307, 32.884369, 48.249325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678903, -0.446833, 0.582607,
		-0.557954, -0.201814, -0.804958,
		0.477260, -0.871556, -0.112300,
		32.046486, 32.622902, 48.215633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145458, 32.638420, 48.103214>,  <31.712402, 33.232990, 48.294243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145458, 32.638420, 48.103214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.471716, 32.490593, 48.281269>,  <31.667471, 32.401897, 48.388100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.471716, 32.490593, 48.281269>,  <31.145458, 32.638420, 48.103214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471716, 32.490593, 48.281269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578048, -0.552800, 0.600227,
		0.024243, -0.746880, -0.664517,
		0.815643, -0.369572, 0.445134,
		31.716408, 32.379723, 48.414810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839199, 32.055420, 48.206554>,  <31.145458, 32.638420, 48.103214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839199, 32.055420, 48.206554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.172949, 32.051540, 48.426998>,  <31.373199, 32.049213, 48.559265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.172949, 32.051540, 48.426998>,  <30.839199, 32.055420, 48.206554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172949, 32.051540, 48.426998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439779, -0.614465, 0.655002,
		0.332282, -0.788884, -0.516962,
		0.834376, -0.009703, 0.551110,
		31.423262, 32.048630, 48.592331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844046, 31.382694, 48.539429>,  <30.839199, 32.055420, 48.206554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844046, 31.382694, 48.539429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.075220, 31.642092, 48.737598>,  <31.213924, 31.797731, 48.856503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.075220, 31.642092, 48.737598>,  <30.844046, 31.382694, 48.539429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075220, 31.642092, 48.737598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273566, -0.418004, 0.866276,
		0.768866, -0.636182, -0.064172,
		0.577934, 0.648495, 0.495426,
		31.248600, 31.836639, 48.886227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009933, 31.062544, 49.057716>,  <30.844046, 31.382694, 48.539429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009933, 31.062544, 49.057716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.098486, 31.431684, 49.183784>,  <31.151617, 31.653170, 49.259426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.098486, 31.431684, 49.183784>,  <31.009933, 31.062544, 49.057716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098486, 31.431684, 49.183784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200446, -0.273227, 0.940834,
		0.954365, -0.271456, 0.124496,
		0.221379, 0.922854, 0.315170,
		31.164900, 31.708540, 49.278336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415756, 31.016233, 49.689495>,  <31.009933, 31.062544, 49.057716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415756, 31.016233, 49.689495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.257223, 31.383289, 49.701202>,  <31.162104, 31.603523, 49.708229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.257223, 31.383289, 49.701202>,  <31.415756, 31.016233, 49.689495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257223, 31.383289, 49.701202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164517, -0.102350, 0.981050,
		0.903246, 0.384008, 0.191532,
		-0.396335, 0.917639, 0.029272,
		31.138323, 31.658581, 49.709984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645706, 31.349401, 50.254284>,  <31.415756, 31.016233, 49.689495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645706, 31.349401, 50.254284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.326544, 31.574438, 50.167717>,  <31.135046, 31.709459, 50.115776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.326544, 31.574438, 50.167717>,  <31.645706, 31.349401, 50.254284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326544, 31.574438, 50.167717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187545, 0.109508, 0.976133,
		0.572862, 0.819451, 0.018133,
		-0.797908, 0.562590, -0.216417,
		31.087172, 31.743216, 50.102791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600840, 31.712978, 50.805855>,  <31.645706, 31.349401, 50.254284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600840, 31.712978, 50.805855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.234091, 31.762571, 50.654079>,  <31.014042, 31.792328, 50.563015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.234091, 31.762571, 50.654079>,  <31.600840, 31.712978, 50.805855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234091, 31.762571, 50.654079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347443, 0.220140, 0.911495,
		0.196538, 0.967557, -0.158763,
		-0.916873, 0.123982, -0.379437,
		30.959028, 31.799767, 50.540249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447523, 32.279865, 51.083992>,  <31.600840, 31.712978, 50.805855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447523, 32.279865, 51.083992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.094446, 32.115429, 50.992905>,  <30.882601, 32.016766, 50.938251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.094446, 32.115429, 50.992905>,  <31.447523, 32.279865, 51.083992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094446, 32.115429, 50.992905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332926, 0.205002, 0.920399,
		-0.331688, 0.888243, -0.317817,
		-0.882691, -0.411095, -0.227723,
		30.829639, 31.992100, 50.924587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960764, 32.820076, 51.211269>,  <31.447523, 32.279865, 51.083992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960764, 32.820076, 51.211269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.788998, 32.461971, 51.258778>,  <30.685938, 32.247108, 51.287285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.788998, 32.461971, 51.258778>,  <30.960764, 32.820076, 51.211269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788998, 32.461971, 51.258778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356207, 0.288754, 0.888672,
		-0.829892, 0.339300, -0.442894,
		-0.429414, -0.895264, 0.118774,
		30.660173, 32.193394, 51.294411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365110, 32.919228, 51.436512>,  <30.960764, 32.820076, 51.211269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365110, 32.919228, 51.436512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.394911, 32.540562, 51.561909>,  <30.412790, 32.313362, 51.637146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.394911, 32.540562, 51.561909>,  <30.365110, 32.919228, 51.436512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394911, 32.540562, 51.561909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438253, 0.251300, 0.863008,
		-0.895759, -0.201683, -0.396156,
		0.074500, -0.946663, 0.313492,
		30.417261, 32.256561, 51.655956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736490, 32.771412, 51.765755>,  <30.365110, 32.919228, 51.436512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736490, 32.771412, 51.765755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.978060, 32.470787, 51.871910>,  <30.123001, 32.290413, 51.935604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.978060, 32.470787, 51.871910>,  <29.736490, 32.771412, 51.765755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978060, 32.470787, 51.871910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307165, 0.087791, 0.947598,
		-0.735476, -0.653796, -0.177834,
		0.603924, -0.751561, 0.265391,
		30.159237, 32.245319, 51.951527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321028, 32.273670, 52.121254>,  <29.736490, 32.771412, 51.765755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321028, 32.273670, 52.121254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.703541, 32.235397, 52.231792>,  <29.933048, 32.212433, 52.298115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.703541, 32.235397, 52.231792>,  <29.321028, 32.273670, 52.121254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703541, 32.235397, 52.231792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265952, 0.108440, 0.957868,
		-0.121616, -0.989488, 0.078252,
		0.956284, -0.095681, 0.276344,
		29.990425, 32.206692, 52.314697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287210, 31.777649, 52.732380>,  <29.321028, 32.273670, 52.121254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287210, 31.777649, 52.732380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.639986, 31.965130, 52.752377>,  <29.851652, 32.077618, 52.764374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.639986, 31.965130, 52.752377>,  <29.287210, 31.777649, 52.732380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639986, 31.965130, 52.752377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223118, 0.321680, 0.920185,
		0.415211, -0.822703, 0.388278,
		0.881940, 0.468703, 0.049994,
		29.904568, 32.105740, 52.767376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434750, 31.660877, 53.412365>,  <29.287210, 31.777649, 52.732380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434750, 31.660877, 53.412365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.692217, 31.950729, 53.313892>,  <29.846697, 32.124641, 53.254810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.692217, 31.950729, 53.313892>,  <29.434750, 31.660877, 53.412365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692217, 31.950729, 53.313892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050600, 0.361267, 0.931088,
		0.763630, -0.586855, 0.269202,
		0.643668, 0.724629, -0.246179,
		29.885317, 32.168118, 53.240040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.838165, 31.790157, 54.137421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913073, 32.105785, 53.903397>,  <29.958017, 32.295162, 53.762981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913073, 32.105785, 53.903397>,  <29.838165, 31.790157, 54.137421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913073, 32.105785, 53.903397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202540, 0.613816, 0.763025,
		0.961202, -0.024392, 0.274767,
		0.187268, 0.789072, -0.585061,
		29.969254, 32.342506, 53.727879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133951, 32.255692, 54.583385>,  <29.838165, 31.790157, 54.137421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133951, 32.255692, 54.583385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993658, 32.444103, 54.259628>,  <29.909483, 32.557152, 54.065372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993658, 32.444103, 54.259628>,  <30.133951, 32.255692, 54.583385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993658, 32.444103, 54.259628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306498, 0.758959, 0.574491,
		0.884899, 0.449569, -0.121821,
		-0.350731, 0.471029, -0.809395,
		29.888439, 32.585411, 54.016811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405750, 32.919128, 54.568256>,  <30.133951, 32.255692, 54.583385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405750, 32.919128, 54.568256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065651, 32.947678, 54.359650>,  <29.861591, 32.964806, 54.234486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065651, 32.947678, 54.359650>,  <30.405750, 32.919128, 54.568256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065651, 32.947678, 54.359650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284800, 0.770845, 0.569813,
		0.442679, 0.633012, -0.635083,
		-0.850249, 0.071373, -0.521519,
		29.810575, 32.969090, 54.203194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252645, 33.697414, 54.386333>,  <30.405750, 32.919128, 54.568256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252645, 33.697414, 54.386333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896156, 33.518818, 54.354412>,  <29.682262, 33.411659, 54.335258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896156, 33.518818, 54.354412>,  <30.252645, 33.697414, 54.386333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896156, 33.518818, 54.354412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405029, 0.704240, 0.583093,
		-0.204150, 0.551986, -0.808477,
		-0.891221, -0.446495, -0.079800,
		29.628790, 33.384869, 54.330471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865847, 34.328339, 54.247971>,  <30.252645, 33.697414, 54.386333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865847, 34.328339, 54.247971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630032, 34.019573, 54.343132>,  <29.488543, 33.834312, 54.400230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630032, 34.019573, 54.343132>,  <29.865847, 34.328339, 54.247971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630032, 34.019573, 54.343132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610449, 0.618653, 0.494591,
		-0.528960, 0.146352, -0.835932,
		-0.589536, -0.771913, 0.237902,
		29.453171, 33.787998, 54.414501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408709, 34.642464, 54.585464>,  <29.865847, 34.328339, 54.247971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408709, 34.642464, 54.585464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327339, 34.258904, 54.664593>,  <29.278519, 34.028767, 54.712070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327339, 34.258904, 54.664593>,  <29.408709, 34.642464, 54.585464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327339, 34.258904, 54.664593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646413, 0.283283, 0.708450,
		-0.735371, 0.016241, -0.677470,
		-0.203421, -0.958899, 0.197820,
		29.266314, 33.971233, 54.723938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651865, 34.636009, 54.597710>,  <29.408709, 34.642464, 54.585464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651865, 34.636009, 54.597710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806173, 34.331055, 54.805534>,  <28.898758, 34.148083, 54.930229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806173, 34.331055, 54.805534>,  <28.651865, 34.636009, 54.597710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806173, 34.331055, 54.805534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661546, 0.163946, 0.731764,
		-0.643068, -0.626009, -0.441108,
		0.385773, -0.762388, 0.519562,
		28.921906, 34.102337, 54.961403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050106, 34.034275, 54.870953>,  <28.651865, 34.636009, 54.597710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050106, 34.034275, 54.870953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382545, 34.035236, 55.093399>,  <28.582010, 34.035812, 55.226868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382545, 34.035236, 55.093399>,  <28.050106, 34.034275, 54.870953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382545, 34.035236, 55.093399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554529, 0.079241, 0.828383,
		-0.042078, -0.996853, 0.067189,
		0.831100, 0.002401, 0.556118,
		28.631876, 34.035957, 55.260235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958344, 33.537689, 55.372070>,  <28.050106, 34.034275, 54.870953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958344, 33.537689, 55.372070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240841, 33.785995, 55.508228>,  <28.410339, 33.934978, 55.589924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240841, 33.785995, 55.508228>,  <27.958344, 33.537689, 55.372070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240841, 33.785995, 55.508228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627883, 0.327079, 0.706245,
		0.327079, -0.712508, 0.620767,
		-0.706245, -0.620767, -0.340391,
		28.452715, 33.972225, 55.610344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806767, 33.585823, 55.989204>,  <27.958344, 33.537689, 55.372070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806767, 33.585823, 55.989204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063755, 33.890343, 55.954224>,  <28.217949, 34.073055, 55.933235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063755, 33.890343, 55.954224>,  <27.806767, 33.585823, 55.989204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063755, 33.890343, 55.954224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572774, 0.552889, 0.605181,
		0.509077, -0.338721, 0.791270,
		0.642472, 0.761303, -0.087452,
		28.256496, 34.118732, 55.927986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947104, 33.704967, 56.635963>,  <27.806767, 33.585823, 55.989204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947104, 33.704967, 56.635963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970356, 34.006927, 56.374660>,  <27.984308, 34.188103, 56.217876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970356, 34.006927, 56.374660>,  <27.947104, 33.704967, 56.635963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970356, 34.006927, 56.374660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631721, 0.534506, 0.561456,
		0.773014, 0.380040, 0.507957,
		0.058130, 0.754900, -0.653259,
		27.987795, 34.233398, 56.178684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971241, 34.384018, 57.120766>,  <27.947104, 33.704967, 56.635963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971241, 34.384018, 57.120766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912600, 34.527275, 56.751930>,  <27.877415, 34.613228, 56.530628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912600, 34.527275, 56.751930>,  <27.971241, 34.384018, 57.120766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912600, 34.527275, 56.751930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703713, 0.617351, 0.351662,
		0.695195, 0.700438, 0.161522,
		-0.146602, 0.358139, -0.922087,
		27.868620, 34.634716, 56.475304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928339, 35.061726, 57.219131>,  <27.971241, 34.384018, 57.120766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928339, 35.061726, 57.219131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761106, 35.044579, 56.856171>,  <27.660767, 35.034290, 56.638393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761106, 35.044579, 56.856171>,  <27.928339, 35.061726, 57.219131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761106, 35.044579, 56.856171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725876, 0.616343, 0.305330,
		0.546180, 0.786311, -0.288796,
		-0.418081, -0.042865, -0.907398,
		27.635683, 35.031719, 56.583950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906721, 35.697235, 56.995846>,  <27.928339, 35.061726, 57.219131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906721, 35.697235, 56.995846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614759, 35.507591, 56.798882>,  <27.439583, 35.393806, 56.680702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614759, 35.507591, 56.798882>,  <27.906721, 35.697235, 56.995846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614759, 35.507591, 56.798882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651469, 0.700596, 0.291124,
		0.206956, 0.533282, -0.820232,
		-0.729902, -0.474106, -0.492409,
		27.395788, 35.365360, 56.651157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558319, 36.218601, 56.801914>,  <27.906721, 35.697235, 56.995846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558319, 36.218601, 56.801914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288092, 35.924225, 56.784027>,  <27.125956, 35.747601, 56.773293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288092, 35.924225, 56.784027>,  <27.558319, 36.218601, 56.801914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288092, 35.924225, 56.784027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725671, 0.652961, 0.216896,
		-0.130423, 0.178980, -0.975170,
		-0.675568, -0.735941, -0.044720,
		27.085421, 35.703442, 56.770611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964626, 36.426952, 56.352406>,  <27.558319, 36.218601, 56.801914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964626, 36.426952, 56.352406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865978, 36.129929, 56.601494>,  <26.806789, 35.951714, 56.750946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865978, 36.129929, 56.601494>,  <26.964626, 36.426952, 56.352406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865978, 36.129929, 56.601494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745824, 0.555729, 0.367303,
		-0.618810, -0.373859, -0.690872,
		-0.246618, -0.742559, 0.622724,
		26.791992, 35.907162, 56.788311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.244781, 36.378586, 56.391979>,  <26.964626, 36.426952, 56.352406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.244781, 36.378586, 56.391979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294348, 36.133743, 56.704384>,  <26.324087, 35.986839, 56.891827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294348, 36.133743, 56.704384>,  <26.244781, 36.378586, 56.391979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294348, 36.133743, 56.704384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824332, 0.374640, 0.424408,
		-0.552379, -0.696401, -0.458152,
		0.123916, -0.612103, 0.781009,
		26.331522, 35.950111, 56.938686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.519741, 35.942890, 56.479389>,  <26.244781, 36.378586, 56.391979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.519741, 35.942890, 56.479389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729942, 36.010849, 56.812851>,  <25.856062, 36.051624, 57.012928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729942, 36.010849, 56.812851>,  <25.519741, 35.942890, 56.479389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.729942, 36.010849, 56.812851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804042, 0.419512, 0.421339,
		-0.278145, -0.891709, 0.357058,
		0.525502, 0.169896, 0.833657,
		25.887592, 36.061817, 57.062946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.984827, 35.758301, 56.919239>,  <25.519741, 35.942890, 56.479389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.984827, 35.758301, 56.919239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.257160, 35.928207, 57.157913>,  <25.420561, 36.030151, 57.301117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.257160, 35.928207, 57.157913>,  <24.984827, 35.758301, 56.919239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.257160, 35.928207, 57.157913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709039, 0.586498, 0.391514,
		-0.183654, -0.689632, 0.700485,
		0.680834, 0.424768, 0.596689,
		25.461411, 36.055637, 57.336918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.657255, 35.801155, 57.604862>,  <24.984827, 35.758301, 56.919239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.657255, 35.801155, 57.604862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.973873, 36.045471, 57.596947>,  <25.163843, 36.192062, 57.592197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.973873, 36.045471, 57.596947>,  <24.657255, 35.801155, 57.604862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.973873, 36.045471, 57.596947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505627, 0.672761, 0.540124,
		0.343218, -0.417525, 0.841353,
		0.791545, 0.610790, -0.019791,
		25.211336, 36.228710, 57.591011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.847984, 36.107948, 58.273445>,  <24.657255, 35.801155, 57.604862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.847984, 36.107948, 58.273445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.975012, 36.374813, 58.003914>,  <25.051229, 36.534931, 57.842194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.975012, 36.374813, 58.003914>,  <24.847984, 36.107948, 58.273445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975012, 36.374813, 58.003914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522374, 0.716152, 0.462874,
		0.791375, 0.204996, 0.575936,
		0.317570, 0.667161, -0.673829,
		25.070282, 36.574963, 57.801765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.011568, 36.695946, 58.679447>,  <24.847984, 36.107948, 58.273445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.011568, 36.695946, 58.679447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943007, 36.818741, 58.304985>,  <24.901869, 36.892418, 58.080307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943007, 36.818741, 58.304985>,  <25.011568, 36.695946, 58.679447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.943007, 36.818741, 58.304985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556424, 0.753989, 0.349131,
		0.813027, 0.580739, 0.041578,
		-0.171405, 0.306988, -0.936151,
		24.891584, 36.910839, 58.024139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080166, 37.388851, 59.025913>,  <25.011568, 36.695946, 58.679447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080166, 37.388851, 59.025913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302673, 37.704674, 58.922249>,  <25.436178, 37.894169, 58.860050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302673, 37.704674, 58.922249>,  <25.080166, 37.388851, 59.025913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302673, 37.704674, 58.922249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829416, -0.546781, 0.114450,
		-0.051341, -0.278620, -0.959028,
		0.556267, 0.789558, -0.259164,
		25.469553, 37.941540, 58.844498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698479, 37.220104, 58.543636>,  <25.080166, 37.388851, 59.025913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698479, 37.220104, 58.543636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797558, 37.531319, 58.774567>,  <25.857006, 37.718048, 58.913124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797558, 37.531319, 58.774567>,  <25.698479, 37.220104, 58.543636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797558, 37.531319, 58.774567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850890, -0.459650, 0.254377,
		0.463283, 0.428236, -0.775875,
		0.247698, 0.778033, 0.577330,
		25.871868, 37.764729, 58.947765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275434, 37.504581, 58.324158>,  <25.698479, 37.220104, 58.543636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275434, 37.504581, 58.324158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255341, 37.601318, 58.711761>,  <26.243284, 37.659363, 58.944324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255341, 37.601318, 58.711761>,  <26.275434, 37.504581, 58.324158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255341, 37.601318, 58.711761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976835, -0.190182, 0.098106,
		0.208016, 0.951495, -0.226688,
		-0.050236, 0.241844, 0.969014,
		26.240271, 37.673870, 59.002464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787401, 37.949245, 58.421455>,  <26.275434, 37.504581, 58.324158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787401, 37.949245, 58.421455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.701435, 37.775688, 58.771439>,  <26.649855, 37.671555, 58.981430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.701435, 37.775688, 58.771439>,  <26.787401, 37.949245, 58.421455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701435, 37.775688, 58.771439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926142, -0.374875, 0.041589,
		0.309955, 0.819273, 0.482410,
		-0.214916, -0.433889, 0.874958,
		26.636961, 37.645523, 59.033924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422821, 38.127937, 58.870995>,  <26.787401, 37.949245, 58.421455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422821, 38.127937, 58.870995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231754, 37.822144, 59.044151>,  <27.117115, 37.638668, 59.148045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231754, 37.822144, 59.044151>,  <27.422821, 38.127937, 58.870995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231754, 37.822144, 59.044151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876143, -0.450904, 0.170469,
		0.064874, 0.460707, 0.885178,
		-0.477666, -0.764484, 0.432897,
		27.088455, 37.592800, 59.174019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646137, 38.015041, 59.627846>,  <27.422821, 38.127937, 58.870995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646137, 38.015041, 59.627846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505005, 37.676758, 59.467701>,  <27.420326, 37.473789, 59.371613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505005, 37.676758, 59.467701>,  <27.646137, 38.015041, 59.627846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505005, 37.676758, 59.467701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886895, -0.438639, 0.144961,
		-0.298210, -0.303933, 0.904818,
		-0.352830, -0.845707, -0.400363,
		27.399157, 37.423046, 59.347591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.028143, 37.499977, 60.034096>,  <27.646137, 38.015041, 59.627846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.028143, 37.499977, 60.034096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863110, 37.249294, 59.769669>,  <27.764090, 37.098885, 59.611012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863110, 37.249294, 59.769669>,  <28.028143, 37.499977, 60.034096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863110, 37.249294, 59.769669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784801, -0.612983, 0.091316,
		-0.462452, -0.481132, 0.744748,
		-0.412583, -0.626709, -0.661068,
		27.739334, 37.061283, 59.571346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991381, 36.785038, 60.286411>,  <28.028143, 37.499977, 60.034096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991381, 36.785038, 60.286411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008465, 36.784138, 59.886776>,  <28.018715, 36.783596, 59.646996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008465, 36.784138, 59.886776>,  <27.991381, 36.785038, 60.286411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008465, 36.784138, 59.886776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796108, -0.604119, 0.035397,
		-0.603646, -0.796891, -0.024009,
		0.042712, -0.002254, -0.999085,
		28.021278, 36.783463, 59.587051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120321, 36.048996, 60.298595>,  <27.991381, 36.785038, 60.286411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120321, 36.048996, 60.298595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211782, 36.206108, 59.942295>,  <28.266659, 36.300377, 59.728516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211782, 36.206108, 59.942295>,  <28.120321, 36.048996, 60.298595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211782, 36.206108, 59.942295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785026, -0.615506, -0.069898,
		-0.575717, -0.683280, -0.449085,
		0.228655, 0.392785, -0.890751,
		28.280378, 36.323944, 59.675072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112083, 35.537930, 59.853622>,  <28.120321, 36.048996, 60.298595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.112083, 35.537930, 59.853622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363712, 35.817833, 59.718212>,  <28.514690, 35.985775, 59.636967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363712, 35.817833, 59.718212>,  <28.112083, 35.537930, 59.853622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363712, 35.817833, 59.718212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662443, -0.710448, -0.237557,
		-0.406741, -0.074816, -0.910475,
		0.629072, 0.699762, -0.338529,
		28.552433, 36.027763, 59.616653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270201, 35.209667, 59.207436>,  <28.112083, 35.537930, 59.853622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270201, 35.209667, 59.207436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078630, 35.290768, 58.865788>,  <27.963688, 35.339428, 58.660797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078630, 35.290768, 58.865788>,  <28.270201, 35.209667, 59.207436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078630, 35.290768, 58.865788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763537, 0.576313, -0.291332,
		0.433172, -0.791679, -0.430820,
		-0.478928, 0.202750, -0.854120,
		27.934952, 35.351593, 58.609550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860256, 35.615452, 58.896164>,  <28.270201, 35.209667, 59.207436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860256, 35.615452, 58.896164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062164, 35.910118, 58.716152>,  <29.183310, 36.086918, 58.608143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062164, 35.910118, 58.716152>,  <28.860256, 35.615452, 58.896164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062164, 35.910118, 58.716152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120471, -0.576334, -0.808286,
		-0.854805, 0.353785, -0.379665,
		0.504773, 0.736665, -0.450032,
		29.213596, 36.131119, 58.581142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579481, 35.782921, 58.182407>,  <28.860256, 35.615452, 58.896164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579481, 35.782921, 58.182407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958086, 35.911785, 58.175186>,  <29.185249, 35.989105, 58.170853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958086, 35.911785, 58.175186>,  <28.579481, 35.782921, 58.182407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958086, 35.911785, 58.175186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145858, -0.477084, -0.866670,
		-0.287821, 0.817680, -0.498556,
		0.946512, 0.322164, -0.018050,
		29.242039, 36.008434, 58.169769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731796, 35.819557, 57.437981>,  <28.579481, 35.782921, 58.182407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731796, 35.819557, 57.437981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094984, 35.858643, 57.600971>,  <29.312897, 35.882095, 57.698765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094984, 35.858643, 57.600971>,  <28.731796, 35.819557, 57.437981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094984, 35.858643, 57.600971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389627, -0.554726, -0.735167,
		0.154202, 0.826275, -0.541748,
		0.907972, 0.097715, 0.407479,
		29.367376, 35.887959, 57.723213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199303, 35.971916, 56.856461>,  <28.731796, 35.819557, 57.437981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199303, 35.971916, 56.856461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451769, 35.830463, 57.132595>,  <29.603249, 35.745590, 57.298275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451769, 35.830463, 57.132595>,  <29.199303, 35.971916, 56.856461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451769, 35.830463, 57.132595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438685, -0.571245, -0.693711,
		0.639675, 0.740689, -0.205417,
		0.631167, -0.353636, 0.690340,
		29.641119, 35.724373, 57.339699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943970, 35.919376, 56.512283>,  <29.199303, 35.971916, 56.856461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943970, 35.919376, 56.512283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983818, 35.682549, 56.832165>,  <30.007727, 35.540451, 57.024094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983818, 35.682549, 56.832165>,  <29.943970, 35.919376, 56.512283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983818, 35.682549, 56.832165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736287, -0.496740, -0.459490,
		0.669295, 0.634587, 0.386449,
		0.099622, -0.592072, 0.799704,
		30.013704, 35.504929, 57.072075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716377, 35.928429, 56.591690>,  <29.943970, 35.919376, 56.512283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716377, 35.928429, 56.591690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543749, 35.629105, 56.793198>,  <30.440172, 35.449512, 56.914104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543749, 35.629105, 56.793198>,  <30.716377, 35.928429, 56.591690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543749, 35.629105, 56.793198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751929, -0.606928, -0.257375,
		0.498348, 0.267726, 0.824604,
		-0.431569, -0.748306, 0.503772,
		30.414278, 35.404613, 56.944328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213980, 35.608727, 56.986683>,  <30.716377, 35.928429, 56.591690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213980, 35.608727, 56.986683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939825, 35.320610, 56.943932>,  <30.775331, 35.147739, 56.918282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939825, 35.320610, 56.943932>,  <31.213980, 35.608727, 56.986683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939825, 35.320610, 56.943932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705746, -0.620927, -0.341134,
		0.179352, -0.309238, 0.933919,
		-0.685387, -0.720293, -0.106879,
		30.734209, 35.104523, 56.911869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389273, 35.044537, 57.566566>,  <31.213980, 35.608727, 56.986683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389273, 35.044537, 57.566566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175285, 34.915428, 57.254253>,  <31.046892, 34.837963, 57.066864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175285, 34.915428, 57.254253>,  <31.389273, 35.044537, 57.566566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175285, 34.915428, 57.254253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725842, -0.648544, -0.229225,
		-0.432389, -0.689357, 0.581229,
		-0.534970, -0.322767, -0.780787,
		31.014793, 34.818600, 57.020016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644823, 34.378254, 57.477131>,  <31.389273, 35.044537, 57.566566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644823, 34.378254, 57.477131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434540, 34.418118, 57.139210>,  <31.308369, 34.442036, 56.936455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434540, 34.418118, 57.139210>,  <31.644823, 34.378254, 57.477131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434540, 34.418118, 57.139210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641279, -0.606084, -0.470555,
		-0.558918, -0.789133, 0.254717,
		-0.525711, 0.099657, -0.844806,
		31.276827, 34.448013, 56.885769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809484, 33.764389, 57.090408>,  <31.644823, 34.378254, 57.477131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809484, 33.764389, 57.090408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661634, 34.020771, 56.821323>,  <31.572924, 34.174603, 56.659870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661634, 34.020771, 56.821323>,  <31.809484, 33.764389, 57.090408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661634, 34.020771, 56.821323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432514, -0.522089, -0.735088,
		-0.822380, -0.562666, -0.084247,
		-0.369625, 0.640960, -0.672717,
		31.550747, 34.213058, 56.619507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349907, 33.427864, 56.547485>,  <31.809484, 33.764389, 57.090408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349907, 33.427864, 56.547485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487495, 33.752689, 56.358921>,  <31.570049, 33.947586, 56.245781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487495, 33.752689, 56.358921>,  <31.349907, 33.427864, 56.547485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487495, 33.752689, 56.358921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298829, -0.570617, -0.764917,
		-0.890160, 0.122239, -0.438946,
		0.343973, 0.812068, -0.471412,
		31.590687, 33.996311, 56.217499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.742672, 34.333862, 50.492222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.771122, 34.509167, 50.850636>,  <47.788193, 34.614349, 51.065681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.771122, 34.509167, 50.850636>,  <47.742672, 34.333862, 50.492222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.771122, 34.509167, 50.850636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997206, 0.010685, 0.073932,
		0.022827, -0.898785, 0.437795,
		0.071126, 0.438260, 0.896030,
		47.792461, 34.640644, 51.119446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.289009, 34.033611, 50.785259>,  <47.742672, 34.333862, 50.492222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.289009, 34.033611, 50.785259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.323864, 34.351379, 51.025692>,  <47.344776, 34.542042, 51.169952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.323864, 34.351379, 51.025692>,  <47.289009, 34.033611, 50.785259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.323864, 34.351379, 51.025692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992208, 0.123150, -0.018925,
		-0.089058, -0.594752, 0.798961,
		0.087136, 0.794421, 0.601085,
		47.350006, 34.589706, 51.206017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.785805, 33.952847, 51.368950>,  <47.289009, 34.033611, 50.785259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.785805, 33.952847, 51.368950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.872952, 34.342587, 51.346390>,  <46.925240, 34.576431, 51.332851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.872952, 34.342587, 51.346390>,  <46.785805, 33.952847, 51.368950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.872952, 34.342587, 51.346390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975889, 0.218268, 0.000900,
		0.013188, 0.054847, 0.998408,
		0.217871, 0.974346, -0.056403,
		46.938313, 34.634892, 51.329468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.335892, 34.276596, 51.888374>,  <46.785805, 33.952847, 51.368950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.335892, 34.276596, 51.888374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.430893, 34.551910, 51.614193>,  <46.487892, 34.717098, 51.449684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.430893, 34.551910, 51.614193>,  <46.335892, 34.276596, 51.888374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.430893, 34.551910, 51.614193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966898, 0.235268, -0.098777,
		0.093279, 0.686227, 0.721381,
		0.237501, 0.688289, -0.685458,
		46.502144, 34.758396, 51.408554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.817238, 34.886936, 52.016087>,  <46.335892, 34.276596, 51.888374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.817238, 34.886936, 52.016087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.958313, 34.963051, 51.649612>,  <46.042957, 35.008720, 51.429726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.958313, 34.963051, 51.649612>,  <45.817238, 34.886936, 52.016087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.958313, 34.963051, 51.649612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844458, 0.486520, -0.224027,
		0.403114, 0.852694, 0.332282,
		0.352689, 0.190290, -0.916188,
		46.064121, 35.020138, 51.374756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.707088, 35.606358, 51.863602>,  <45.817238, 34.886936, 52.016087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.707088, 35.606358, 51.863602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.765675, 35.448822, 51.500626>,  <45.800827, 35.354301, 51.282841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.765675, 35.448822, 51.500626>,  <45.707088, 35.606358, 51.863602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.765675, 35.448822, 51.500626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912444, 0.300535, -0.277713,
		0.382089, 0.868662, -0.315332,
		0.146470, -0.393834, -0.907437,
		45.809616, 35.330673, 51.228394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.571617, 36.219738, 51.378574>,  <45.707088, 35.606358, 51.863602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.571617, 36.219738, 51.378574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.548073, 35.904148, 51.133934>,  <45.533947, 35.714794, 50.987148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.548073, 35.904148, 51.133934>,  <45.571617, 36.219738, 51.378574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548073, 35.904148, 51.133934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840960, 0.369302, -0.395476,
		0.537886, 0.491055, -0.685232,
		-0.058857, -0.788974, -0.611601,
		45.530415, 35.667458, 50.950455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589058, 36.498981, 50.657143>,  <45.571617, 36.219738, 51.378574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589058, 36.498981, 50.657143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.409531, 36.142361, 50.632854>,  <45.301815, 35.928387, 50.618282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.409531, 36.142361, 50.632854>,  <45.589058, 36.498981, 50.657143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.409531, 36.142361, 50.632854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681563, 0.385470, -0.622001,
		0.577956, -0.237780, -0.780658,
		-0.448820, -0.891557, -0.060723,
		45.274883, 35.874893, 50.614639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.359741, 36.386738, 49.992706>,  <45.589058, 36.498981, 50.657143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.359741, 36.386738, 49.992706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.134422, 36.103653, 50.163280>,  <44.999229, 35.933804, 50.265625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.134422, 36.103653, 50.163280>,  <45.359741, 36.386738, 49.992706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.134422, 36.103653, 50.163280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824375, 0.446587, -0.347802,
		0.055704, -0.547454, -0.834979,
		-0.563297, -0.707710, 0.426431,
		44.965435, 35.891338, 50.291210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.844521, 36.296654, 49.492073>,  <45.359741, 36.386738, 49.992706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.844521, 36.296654, 49.492073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.704262, 36.135914, 49.830437>,  <44.620106, 36.039471, 50.033455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.704262, 36.135914, 49.830437>,  <44.844521, 36.296654, 49.492073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.704262, 36.135914, 49.830437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936505, 0.152831, -0.315595,
		-0.002460, -0.902862, -0.429924,
		-0.350644, -0.401849, 0.845911,
		44.599068, 36.015358, 50.084209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342125, 35.833588, 49.256142>,  <44.844521, 36.296654, 49.492073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342125, 35.833588, 49.256142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.253494, 35.918774, 49.636784>,  <44.200314, 35.969887, 49.865170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.253494, 35.918774, 49.636784>,  <44.342125, 35.833588, 49.256142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.253494, 35.918774, 49.636784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973360, -0.107278, -0.202637,
		0.058932, -0.971153, 0.231060,
		-0.221579, 0.212963, 0.951604,
		44.187019, 35.982662, 49.922264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694744, 35.420631, 49.443104>,  <44.342125, 35.833588, 49.256142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.694744, 35.420631, 49.443104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.692463, 35.699833, 49.729534>,  <43.691093, 35.867352, 49.901390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.692463, 35.699833, 49.729534>,  <43.694744, 35.420631, 49.443104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692463, 35.699833, 49.729534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999874, -0.014590, 0.006256,
		0.014814, -0.715948, 0.697996,
		-0.005704, 0.698001, 0.716074,
		43.690750, 35.909233, 49.944355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112415, 35.171726, 49.876308>,  <43.694744, 35.420631, 49.443104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112415, 35.171726, 49.876308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.205166, 35.541656, 49.996929>,  <43.260815, 35.763615, 50.069302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.205166, 35.541656, 49.996929>,  <43.112415, 35.171726, 49.876308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205166, 35.541656, 49.996929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963741, 0.260494, -0.057846,
		-0.132049, -0.277202, 0.951694,
		0.231876, 0.924825, 0.301549,
		43.274727, 35.819103, 50.087395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904755, 35.317703, 50.604542>,  <43.112415, 35.171726, 49.876308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904755, 35.317703, 50.604542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.887753, 35.652699, 50.386620>,  <42.877552, 35.853695, 50.255867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.887753, 35.652699, 50.386620>,  <42.904755, 35.317703, 50.604542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887753, 35.652699, 50.386620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990631, 0.035498, 0.131866,
		0.129776, 0.545303, 0.828132,
		-0.042510, 0.837487, -0.544801,
		42.875000, 35.903946, 50.223179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233616, 35.587948, 50.744846>,  <42.904755, 35.317703, 50.604542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233616, 35.587948, 50.744846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.337196, 35.872242, 50.483223>,  <42.399345, 36.042820, 50.326248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.337196, 35.872242, 50.483223>,  <42.233616, 35.587948, 50.744846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337196, 35.872242, 50.483223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946118, 0.322957, -0.023636,
		0.194434, 0.624939, 0.756073,
		0.258950, 0.710739, -0.654060,
		42.414883, 36.085464, 50.287006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001461, 36.325562, 51.009155>,  <42.233616, 35.587948, 50.744846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001461, 36.325562, 51.009155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.021034, 36.338772, 50.609852>,  <42.032776, 36.346699, 50.370270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.021034, 36.338772, 50.609852>,  <42.001461, 36.325562, 51.009155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021034, 36.338772, 50.609852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865847, 0.499637, -0.025908,
		0.497909, 0.865605, 0.053046,
		0.048929, 0.033030, -0.998256,
		42.035713, 36.348682, 50.310375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803944, 37.007969, 50.840282>,  <42.001461, 36.325562, 51.009155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803944, 37.007969, 50.840282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.743988, 36.789150, 50.510853>,  <41.708015, 36.657860, 50.313194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.743988, 36.789150, 50.510853>,  <41.803944, 37.007969, 50.840282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743988, 36.789150, 50.510853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879405, 0.454459, -0.141822,
		0.451865, 0.703000, -0.549189,
		-0.149883, -0.547044, -0.823576,
		41.699024, 36.625038, 50.263779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418221, 37.452793, 50.449715>,  <41.803944, 37.007969, 50.840282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418221, 37.452793, 50.449715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.327271, 37.102180, 50.280014>,  <41.272701, 36.891811, 50.178192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.327271, 37.102180, 50.280014>,  <41.418221, 37.452793, 50.449715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327271, 37.102180, 50.280014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936700, 0.315983, -0.150826,
		0.266262, 0.363106, -0.892894,
		-0.227374, -0.876532, -0.424255,
		41.259060, 36.839222, 50.152737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904648, 37.666645, 49.987194>,  <41.418221, 37.452793, 50.449715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904648, 37.666645, 49.987194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.845039, 37.272076, 50.014812>,  <40.809273, 37.035336, 50.031384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.845039, 37.272076, 50.014812>,  <40.904648, 37.666645, 49.987194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845039, 37.272076, 50.014812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976795, 0.135989, -0.165465,
		0.153829, -0.092102, -0.983796,
		-0.149025, -0.986420, 0.069046,
		40.800331, 36.976151, 50.035526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354462, 37.576626, 49.580032>,  <40.904648, 37.666645, 49.987194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354462, 37.576626, 49.580032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.338539, 37.223892, 49.767982>,  <40.328987, 37.012253, 49.880753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.338539, 37.223892, 49.767982>,  <40.354462, 37.576626, 49.580032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338539, 37.223892, 49.767982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970219, -0.078342, -0.229212,
		0.238938, -0.465008, -0.852453,
		-0.039802, -0.881834, 0.469878,
		40.326599, 36.959343, 49.908947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936459, 37.132957, 49.085167>,  <40.354462, 37.576626, 49.580032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936459, 37.132957, 49.085167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.939217, 37.003502, 49.463631>,  <39.940872, 36.925827, 49.690708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.939217, 37.003502, 49.463631>,  <39.936459, 37.132957, 49.085167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939217, 37.003502, 49.463631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999976, -0.001147, 0.006895,
		-0.001147, -0.946179, -0.323641,
		-0.006895, 0.323641, -0.946155,
		39.941284, 36.906410, 49.747478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470249, 36.544113, 49.215282>,  <39.936459, 37.132957, 49.085167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470249, 36.544113, 49.215282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.488998, 36.794125, 49.526958>,  <39.500248, 36.944130, 49.713966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.488998, 36.794125, 49.526958>,  <39.470249, 36.544113, 49.215282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488998, 36.794125, 49.526958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997581, 0.069369, 0.004372,
		-0.051320, -0.777513, 0.626769,
		0.046878, 0.625029, 0.779193,
		39.503063, 36.981632, 49.760715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809124, 36.624512, 48.976063>,  <39.470249, 36.544113, 49.215282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809124, 36.624512, 48.976063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.683205, 37.004154, 48.972115>,  <38.607655, 37.231941, 48.969746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.683205, 37.004154, 48.972115>,  <38.809124, 36.624512, 48.976063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683205, 37.004154, 48.972115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924667, -0.309007, -0.222498,
		-0.214224, -0.060917, 0.974883,
		-0.314800, 0.949107, -0.009869,
		38.588764, 37.288887, 48.969154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406540, 36.100845, 48.426163>,  <38.809124, 36.624512, 48.976063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406540, 36.100845, 48.426163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.440899, 35.914452, 48.073917>,  <38.461514, 35.802616, 47.862568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.440899, 35.914452, 48.073917>,  <38.406540, 36.100845, 48.426163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440899, 35.914452, 48.073917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938196, -0.335275, 0.085898,
		-0.335275, 0.818811, -0.465982,
		-0.085898, 0.465982, 0.880615,
		38.466667, 35.774658, 47.809734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724720, 36.252434, 47.990349>,  <38.406540, 36.100845, 48.426163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724720, 36.252434, 47.990349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.903389, 35.925610, 47.844528>,  <38.010590, 35.729515, 47.757034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.903389, 35.925610, 47.844528>,  <37.724720, 36.252434, 47.990349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903389, 35.925610, 47.844528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894611, -0.413590, -0.169159,
		-0.012562, 0.401691, -0.915689,
		0.446670, -0.817060, -0.364552,
		38.037392, 35.680492, 47.735161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483212, 36.181229, 47.248497>,  <37.724720, 36.252434, 47.990349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483212, 36.181229, 47.248497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.629803, 35.823513, 47.351215>,  <37.717758, 35.608883, 47.412846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.629803, 35.823513, 47.351215>,  <37.483212, 36.181229, 47.248497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629803, 35.823513, 47.351215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801060, -0.443662, -0.401829,
		0.473281, -0.058447, -0.878971,
		0.366480, -0.894286, 0.256796,
		37.739746, 35.555225, 47.428253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425671, 35.774353, 46.634022>,  <37.483212, 36.181229, 47.248497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425671, 35.774353, 46.634022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.442085, 35.531288, 46.951275>,  <37.451935, 35.385448, 47.141628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.442085, 35.531288, 46.951275>,  <37.425671, 35.774353, 46.634022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442085, 35.531288, 46.951275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842813, -0.447399, -0.299166,
		0.536639, -0.656186, -0.530508,
		0.041040, -0.607663, 0.793134,
		37.454399, 35.348988, 47.189217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216095, 35.137897, 46.351757>,  <37.425671, 35.774353, 46.634022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216095, 35.137897, 46.351757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.162151, 35.084740, 46.744522>,  <37.129787, 35.052845, 46.980183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.162151, 35.084740, 46.744522>,  <37.216095, 35.137897, 46.351757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162151, 35.084740, 46.744522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917700, -0.356971, -0.174350,
		0.373685, -0.924614, -0.073820,
		-0.134855, -0.132897, 0.981913,
		37.121696, 35.044872, 47.039097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872334, 34.534924, 46.384182>,  <37.216095, 35.137897, 46.351757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872334, 34.534924, 46.384182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.813820, 34.689548, 46.748417>,  <36.778709, 34.782322, 46.966957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.813820, 34.689548, 46.748417>,  <36.872334, 34.534924, 46.384182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813820, 34.689548, 46.748417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973552, -0.219551, -0.063200,
		0.175490, -0.895751, 0.408452,
		-0.146287, 0.386558, 0.910589,
		36.769932, 34.805515, 47.021595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472927, 34.079807, 46.782112>,  <36.872334, 34.534924, 46.384182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472927, 34.079807, 46.782112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.415680, 34.424133, 46.977467>,  <36.381332, 34.630730, 47.094681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.415680, 34.424133, 46.977467>,  <36.472927, 34.079807, 46.782112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415680, 34.424133, 46.977467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984012, -0.070904, -0.163382,
		-0.106012, -0.503961, 0.857196,
		-0.143117, 0.860811, 0.488387,
		36.372746, 34.682377, 47.123981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020325, 33.870949, 47.261627>,  <36.472927, 34.079807, 46.782112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020325, 33.870949, 47.261627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.000557, 34.264530, 47.193047>,  <35.988697, 34.500679, 47.151897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.000557, 34.264530, 47.193047>,  <36.020325, 33.870949, 47.261627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000557, 34.264530, 47.193047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987749, -0.073592, -0.137610,
		-0.148019, 0.162551, 0.975535,
		-0.049423, 0.983952, -0.171453,
		35.985729, 34.559715, 47.141609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394718, 34.051464, 47.566448>,  <36.020325, 33.870949, 47.261627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394718, 34.051464, 47.566448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487495, 34.355064, 47.323097>,  <35.543159, 34.537224, 47.177086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.487495, 34.355064, 47.323097>,  <35.394718, 34.051464, 47.566448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487495, 34.355064, 47.323097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941677, 0.018431, -0.336014,
		-0.243823, 0.650826, 0.719011,
		0.231939, 0.759004, -0.608373,
		35.557076, 34.582764, 47.140587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809021, 34.579006, 47.607529>,  <35.394718, 34.051464, 47.566448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809021, 34.579006, 47.607529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.003380, 34.618259, 47.260132>,  <35.119995, 34.641811, 47.051693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.003380, 34.618259, 47.260132>,  <34.809021, 34.579006, 47.607529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003380, 34.618259, 47.260132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869539, -0.046195, -0.491699,
		-0.088373, 0.994101, 0.062885,
		0.485894, 0.098134, -0.868491,
		35.149147, 34.647701, 46.999584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403694, 35.004932, 47.268730>,  <34.809021, 34.579006, 47.607529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403694, 35.004932, 47.268730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.591984, 34.851490, 46.950924>,  <34.704960, 34.759426, 46.760239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.591984, 34.851490, 46.950924>,  <34.403694, 35.004932, 47.268730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591984, 34.851490, 46.950924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861847, -0.007250, -0.507116,
		0.188773, 0.923468, -0.334023,
		0.470727, -0.383606, -0.794520,
		34.733200, 34.736408, 46.712566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147194, 35.352325, 46.587616>,  <34.403694, 35.004932, 47.268730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147194, 35.352325, 46.587616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.325848, 35.023857, 46.445522>,  <34.433041, 34.826775, 46.360268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.325848, 35.023857, 46.445522>,  <34.147194, 35.352325, 46.587616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325848, 35.023857, 46.445522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764317, -0.143782, -0.628607,
		0.465118, 0.552271, -0.691854,
		0.446637, -0.821172, -0.355234,
		34.459839, 34.777504, 46.338951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.694002, 31.496992, 50.690006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.063581, 31.627256, 50.770271>,  <30.285330, 31.705414, 50.818432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.063581, 31.627256, 50.770271>,  <29.694002, 31.496992, 50.690006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063581, 31.627256, 50.770271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240329, -0.086094, -0.966866,
		-0.297593, 0.941559, -0.157812,
		0.923948, 0.325659, 0.200663,
		30.340765, 31.724955, 50.830471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781279, 31.970819, 50.050377>,  <29.694002, 31.496992, 50.690006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781279, 31.970819, 50.050377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.138285, 31.883881, 50.208454>,  <30.352489, 31.831717, 50.303299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.138285, 31.883881, 50.208454>,  <29.781279, 31.970819, 50.050377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138285, 31.883881, 50.208454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414208, 0.048307, -0.908899,
		0.178457, 0.974898, 0.133142,
		0.892516, -0.217348, 0.395190,
		30.406040, 31.818676, 50.327011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069246, 32.485382, 49.848362>,  <29.781279, 31.970819, 50.050377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069246, 32.485382, 49.848362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.357866, 32.216785, 49.915848>,  <30.531038, 32.055626, 49.956341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.357866, 32.216785, 49.915848>,  <30.069246, 32.485382, 49.848362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357866, 32.216785, 49.915848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440656, 0.257433, -0.859971,
		0.534032, 0.694856, 0.481648,
		0.721548, -0.671493, 0.168716,
		30.574331, 32.015339, 49.966461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620853, 32.867867, 49.573345>,  <30.069246, 32.485382, 49.848362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620853, 32.867867, 49.573345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.788963, 32.508026, 49.620819>,  <30.889830, 32.292122, 49.649303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.788963, 32.508026, 49.620819>,  <30.620853, 32.867867, 49.573345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788963, 32.508026, 49.620819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660296, 0.213481, -0.720024,
		0.622398, 0.380974, 0.683724,
		0.420273, -0.899602, 0.118686,
		30.915045, 32.238144, 49.656425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307396, 32.944191, 49.679718>,  <30.620853, 32.867867, 49.573345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307396, 32.944191, 49.679718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.284409, 32.571976, 49.535061>,  <31.270617, 32.348644, 49.448265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.284409, 32.571976, 49.535061>,  <31.307396, 32.944191, 49.679718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284409, 32.571976, 49.535061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599492, 0.257501, -0.757827,
		0.798315, -0.260354, 0.543055,
		-0.057466, -0.930542, -0.361647,
		31.267168, 32.292812, 49.426567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990797, 32.692493, 49.566120>,  <31.307396, 32.944191, 49.679718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990797, 32.692493, 49.566120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.785450, 32.415253, 49.363708>,  <31.662241, 32.248909, 49.242260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.785450, 32.415253, 49.363708>,  <31.990797, 32.692493, 49.566120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785450, 32.415253, 49.363708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653758, 0.066122, -0.753809,
		0.555924, -0.717803, 0.419174,
		-0.513369, -0.693099, -0.506028,
		31.631439, 32.207321, 49.211899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545776, 32.251614, 49.355270>,  <31.990797, 32.692493, 49.566120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545776, 32.251614, 49.355270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.204880, 32.205051, 49.151257>,  <32.000343, 32.177113, 49.028851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.204880, 32.205051, 49.151257>,  <32.545776, 32.251614, 49.355270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204880, 32.205051, 49.151257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512793, 0.007133, -0.858483,
		0.103573, -0.993176, 0.053615,
		-0.852242, -0.116409, -0.510032,
		31.949207, 32.170128, 48.998245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534027, 31.566404, 48.855698>,  <32.545776, 32.251614, 49.355270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534027, 31.566404, 48.855698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.308212, 31.863075, 48.710808>,  <32.172722, 32.041077, 48.623875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.308212, 31.863075, 48.710808>,  <32.534027, 31.566404, 48.855698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308212, 31.863075, 48.710808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446223, -0.094952, -0.889870,
		-0.694391, -0.664002, -0.277349,
		-0.564541, 0.741678, -0.362227,
		32.138851, 32.085579, 48.602139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573254, 31.484476, 48.135822>,  <32.534027, 31.566404, 48.855698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573254, 31.484476, 48.135822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.390160, 31.840109, 48.134445>,  <32.280304, 32.053490, 48.133617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.390160, 31.840109, 48.134445>,  <32.573254, 31.484476, 48.135822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390160, 31.840109, 48.134445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369873, 0.186902, -0.910089,
		-0.808499, -0.417854, -0.414400,
		-0.457737, 0.889081, -0.003443,
		32.252838, 32.106834, 48.133411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393154, 31.519751, 47.416866>,  <32.573254, 31.484476, 48.135822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393154, 31.519751, 47.416866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.385624, 31.866962, 47.615326>,  <32.381107, 32.075291, 47.734402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.385624, 31.866962, 47.615326>,  <32.393154, 31.519751, 47.416866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385624, 31.866962, 47.615326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355973, 0.469542, -0.807968,
		-0.934307, 0.161405, -0.317836,
		-0.018827, 0.868031, 0.496152,
		32.379974, 32.127373, 47.764172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255135, 32.006748, 46.919613>,  <32.393154, 31.519751, 47.416866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255135, 32.006748, 46.919613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.388885, 32.276058, 47.183399>,  <32.469135, 32.437645, 47.341671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.388885, 32.276058, 47.183399>,  <32.255135, 32.006748, 46.919613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388885, 32.276058, 47.183399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252329, 0.610240, -0.750957,
		-0.908031, 0.417508, 0.034167,
		0.334381, 0.673271, 0.659466,
		32.489201, 32.478039, 47.381241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978785, 32.587357, 46.670483>,  <32.255135, 32.006748, 46.919613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978785, 32.587357, 46.670483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.286369, 32.692547, 46.903564>,  <32.470921, 32.755661, 47.043415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.286369, 32.692547, 46.903564>,  <31.978785, 32.587357, 46.670483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286369, 32.692547, 46.903564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316077, 0.635895, -0.704083,
		-0.555694, 0.725592, 0.405858,
		0.768960, 0.262972, 0.582706,
		32.517059, 32.771439, 47.078377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787836, 33.045227, 46.177410>,  <31.978785, 32.587357, 46.670483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787836, 33.045227, 46.177410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.731140, 32.659782, 46.268066>,  <31.697123, 32.428516, 46.322460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.731140, 32.659782, 46.268066>,  <31.787836, 33.045227, 46.177410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731140, 32.659782, 46.268066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079903, 0.239342, 0.967642,
		-0.986674, 0.119043, -0.110919,
		-0.141739, -0.963610, 0.226641,
		31.688618, 32.370701, 46.336060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405960, 33.432484, 46.680866>,  <31.787836, 33.045227, 46.177410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405960, 33.432484, 46.680866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.614214, 33.601059, 46.383862>,  <31.739166, 33.702206, 46.205658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.614214, 33.601059, 46.383862>,  <31.405960, 33.432484, 46.680866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614214, 33.601059, 46.383862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097605, 0.893359, 0.438615,
		0.848181, -0.155886, 0.506249,
		0.520636, 0.421437, -0.742515,
		31.770405, 33.727489, 46.161106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854616, 33.923660, 46.954147>,  <31.405960, 33.432484, 46.680866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854616, 33.923660, 46.954147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.838823, 34.021481, 46.566616>,  <31.829348, 34.080173, 46.334095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.838823, 34.021481, 46.566616>,  <31.854616, 33.923660, 46.954147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838823, 34.021481, 46.566616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098025, 0.963962, 0.247321,
		0.994401, 0.104735, -0.014088,
		-0.039483, 0.244555, -0.968831,
		31.826979, 34.094849, 46.275967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205753, 34.457611, 47.003860>,  <31.854616, 33.923660, 46.954147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205753, 34.457611, 47.003860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.970770, 34.489727, 46.681755>,  <31.829781, 34.508999, 46.488491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.970770, 34.489727, 46.681755>,  <32.205753, 34.457611, 47.003860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970770, 34.489727, 46.681755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185166, 0.955332, 0.230337,
		0.787788, 0.284420, -0.546348,
		-0.587456, 0.080292, -0.805263,
		31.794533, 34.513813, 46.440178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295364, 35.145401, 46.923683>,  <32.205753, 34.457611, 47.003860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295364, 35.145401, 46.923683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984797, 35.068279, 46.683681>,  <31.798456, 35.022007, 46.539680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984797, 35.068279, 46.683681>,  <32.295364, 35.145401, 46.923683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984797, 35.068279, 46.683681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394013, 0.891549, 0.223368,
		0.491867, 0.409836, -0.768180,
		-0.776415, -0.192806, -0.600005,
		31.751871, 35.010437, 46.503681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119015, 35.785179, 46.477928>,  <32.295364, 35.145401, 46.923683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119015, 35.785179, 46.477928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.800173, 35.545357, 46.506638>,  <31.608868, 35.401463, 46.523865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.800173, 35.545357, 46.506638>,  <32.119015, 35.785179, 46.477928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800173, 35.545357, 46.506638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582571, 0.794850, 0.169778,
		-0.158844, 0.093515, -0.982865,
		-0.797107, -0.599557, 0.071778,
		31.561041, 35.365490, 46.528172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517487, 36.028656, 46.014618>,  <32.119015, 35.785179, 46.477928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517487, 36.028656, 46.014618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.403400, 35.823345, 46.338394>,  <31.334949, 35.700157, 46.532661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.403400, 35.823345, 46.338394>,  <31.517487, 36.028656, 46.014618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403400, 35.823345, 46.338394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556020, 0.776496, 0.296471,
		-0.780701, -0.365507, -0.506864,
		-0.285216, -0.513281, 0.809441,
		31.317835, 35.669361, 46.581226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844364, 36.250290, 46.023121>,  <31.517487, 36.028656, 46.014618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844364, 36.250290, 46.023121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.901106, 36.070362, 46.375832>,  <30.935150, 35.962406, 46.587460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.901106, 36.070362, 46.375832>,  <30.844364, 36.250290, 46.023121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901106, 36.070362, 46.375832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492712, 0.740516, 0.457024,
		-0.858553, -0.499294, -0.116589,
		0.141853, -0.449824, 0.881780,
		30.943663, 35.935413, 46.640366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259003, 36.411575, 46.328033>,  <30.844364, 36.250290, 46.023121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259003, 36.411575, 46.328033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.496679, 36.315968, 46.635227>,  <30.639286, 36.258602, 46.819542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.496679, 36.315968, 46.635227>,  <30.259003, 36.411575, 46.328033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496679, 36.315968, 46.635227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366760, 0.769262, 0.523185,
		-0.715836, -0.592539, 0.369426,
		0.594193, -0.239024, 0.767986,
		30.674938, 36.244259, 46.865623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838377, 36.363300, 46.892609>,  <30.259003, 36.411575, 46.328033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838377, 36.363300, 46.892609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.195148, 36.442532, 47.055202>,  <30.409210, 36.490070, 47.152760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.195148, 36.442532, 47.055202>,  <29.838377, 36.363300, 46.892609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195148, 36.442532, 47.055202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421765, 0.688555, 0.589920,
		-0.163034, -0.697607, 0.697685,
		0.891927, 0.198082, 0.406484,
		30.462727, 36.501957, 47.177147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647703, 36.682133, 47.531204>,  <29.838377, 36.363300, 46.892609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647703, 36.682133, 47.531204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.041796, 36.744221, 47.560135>,  <30.278252, 36.781471, 47.577492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.041796, 36.744221, 47.560135>,  <29.647703, 36.682133, 47.531204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041796, 36.744221, 47.560135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164163, 0.735972, 0.656807,
		0.048721, -0.658978, 0.750582,
		0.985229, 0.155218, 0.072322,
		30.337364, 36.790787, 47.581833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880320, 36.673107, 48.233334>,  <29.647703, 36.682133, 47.531204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880320, 36.673107, 48.233334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.153627, 36.895844, 48.044411>,  <30.317612, 37.029484, 47.931057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.153627, 36.895844, 48.044411>,  <29.880320, 36.673107, 48.233334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153627, 36.895844, 48.044411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115292, 0.721008, 0.683268,
		0.721008, -0.412402, 0.556841,
		-0.683268, -0.556841, 0.472306,
		30.358608, 37.062897, 47.902718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357908, 36.757809, 48.708813>,  <29.880320, 36.673107, 48.233334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357908, 36.757809, 48.708813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.453243, 37.043713, 48.445808>,  <30.510445, 37.215256, 48.288006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.453243, 37.043713, 48.445808>,  <30.357908, 36.757809, 48.708813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453243, 37.043713, 48.445808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246996, 0.699370, 0.670727,
		0.939248, 0.002542, 0.343229,
		0.238339, 0.714756, -0.657510,
		30.524746, 37.258141, 48.248554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854141, 37.119640, 49.044598>,  <30.357908, 36.757809, 48.708813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854141, 37.119640, 49.044598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.664942, 37.339939, 48.769512>,  <30.551422, 37.472118, 48.604462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.664942, 37.339939, 48.769512>,  <30.854141, 37.119640, 49.044598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664942, 37.339939, 48.769512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278456, 0.647097, 0.709738,
		0.835904, 0.527202, -0.152716,
		-0.472997, 0.550748, -0.687714,
		30.523043, 37.505165, 48.563198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094954, 37.759876, 49.193680>,  <30.854141, 37.119640, 49.044598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094954, 37.759876, 49.193680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.768427, 37.843716, 48.978386>,  <30.572512, 37.894020, 48.849209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.768427, 37.843716, 48.978386>,  <31.094954, 37.759876, 49.193680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768427, 37.843716, 48.978386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369084, 0.527494, 0.765198,
		0.444302, 0.823296, -0.353241,
		-0.816317, 0.209603, -0.538232,
		30.523531, 37.906597, 48.816917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989962, 38.513214, 49.189201>,  <31.094954, 37.759876, 49.193680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989962, 38.513214, 49.189201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.639763, 38.372513, 49.056675>,  <30.429644, 38.288090, 48.977158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.639763, 38.372513, 49.056675>,  <30.989962, 38.513214, 49.189201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639763, 38.372513, 49.056675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483044, 0.655749, 0.580226,
		0.013162, 0.668027, -0.744021,
		-0.875497, -0.351758, -0.331318,
		30.377113, 38.266987, 48.957279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520290, 39.118473, 49.118713>,  <30.989962, 38.513214, 49.189201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520290, 39.118473, 49.118713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.741913, 39.372353, 49.334187>,  <31.874887, 39.524681, 49.463470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.741913, 39.372353, 49.334187>,  <31.520290, 39.118473, 49.118713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741913, 39.372353, 49.334187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798150, -0.221104, -0.560419,
		-0.236593, 0.740453, -0.629090,
		0.554058, 0.634699, 0.538681,
		31.908131, 39.562763, 49.495792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826200, 39.668583, 48.676250>,  <31.520290, 39.118473, 49.118713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826200, 39.668583, 48.676250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.051834, 39.602364, 48.999832>,  <32.187214, 39.562630, 49.193981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.051834, 39.602364, 48.999832>,  <31.826200, 39.668583, 48.676250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051834, 39.602364, 48.999832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799369, -0.136021, -0.585242,
		0.206923, 0.976776, 0.055609,
		0.564086, -0.165552, 0.808950,
		32.221062, 39.552696, 49.242516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330116, 40.112896, 48.625404>,  <31.826200, 39.668583, 48.676250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330116, 40.112896, 48.625404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.465633, 39.840351, 48.884933>,  <32.546944, 39.676826, 49.040649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.465633, 39.840351, 48.884933>,  <32.330116, 40.112896, 48.625404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465633, 39.840351, 48.884933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816725, -0.129378, -0.562336,
		0.467095, 0.720424, 0.512650,
		0.338795, -0.681359, 0.648820,
		32.567272, 39.635944, 49.079578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868267, 40.395626, 48.743439>,  <32.330116, 40.112896, 48.625404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868267, 40.395626, 48.743439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.918556, 40.012547, 48.846977>,  <32.948730, 39.782700, 48.909100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.918556, 40.012547, 48.846977>,  <32.868267, 40.395626, 48.743439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918556, 40.012547, 48.846977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983558, 0.086225, -0.158679,
		0.129648, 0.274542, 0.952795,
		0.125719, -0.957701, 0.258849,
		32.956272, 39.725235, 48.924633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426064, 40.399078, 49.077286>,  <32.868267, 40.395626, 48.743439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426064, 40.399078, 49.077286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.391693, 40.012680, 48.979748>,  <33.371071, 39.780842, 48.921223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.391693, 40.012680, 48.979748>,  <33.426064, 40.399078, 49.077286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391693, 40.012680, 48.979748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977157, -0.033961, -0.209787,
		0.194372, -0.256304, 0.946851,
		-0.085925, -0.966000, -0.243848,
		33.365917, 39.722881, 48.906593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029282, 40.131779, 49.355362>,  <33.426064, 40.399078, 49.077286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029282, 40.131779, 49.355362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.913399, 39.880680, 49.066364>,  <33.843868, 39.730019, 48.892963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.913399, 39.880680, 49.066364>,  <34.029282, 40.131779, 49.355362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913399, 39.880680, 49.066364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935744, -0.027139, -0.351632,
		0.201129, -0.777942, 0.595276,
		-0.289705, -0.627750, -0.722497,
		33.826488, 39.692356, 48.849617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534985, 39.657005, 49.356510>,  <34.029282, 40.131779, 49.355362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534985, 39.657005, 49.356510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.358204, 39.592045, 49.003624>,  <34.252136, 39.553066, 48.791893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.358204, 39.592045, 49.003624>,  <34.534985, 39.657005, 49.356510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358204, 39.592045, 49.003624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897038, -0.078246, -0.434973,
		0.001611, -0.983617, 0.180263,
		-0.441951, -0.162404, -0.882215,
		34.225620, 39.543324, 48.738960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779690, 39.005512, 49.139816>,  <34.534985, 39.657005, 49.356510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779690, 39.005512, 49.139816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.660137, 39.189312, 48.805264>,  <34.588406, 39.299591, 48.604534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.660137, 39.189312, 48.805264>,  <34.779690, 39.005512, 49.139816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660137, 39.189312, 48.805264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793547, -0.367139, -0.485276,
		-0.530052, -0.808744, -0.254906,
		-0.298878, 0.459502, -0.836379,
		34.570473, 39.327164, 48.554348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851906, 38.469662, 48.679829>,  <34.779690, 39.005512, 49.139816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851906, 38.469662, 48.679829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.844013, 38.818302, 48.483902>,  <34.839279, 39.027489, 48.366348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.844013, 38.818302, 48.483902>,  <34.851906, 38.469662, 48.679829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844013, 38.818302, 48.483902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836203, -0.254168, -0.485966,
		-0.548065, -0.419170, -0.723824,
		-0.019730, 0.871605, -0.489812,
		34.838093, 39.079784, 48.336960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014225, 38.454742, 47.976620>,  <34.851906, 38.469662, 48.679829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014225, 38.454742, 47.976620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.107521, 38.843517, 47.964325>,  <35.163498, 39.076782, 47.956947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.107521, 38.843517, 47.964325>,  <35.014225, 38.454742, 47.976620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107521, 38.843517, 47.964325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908408, -0.229055, -0.349755,
		-0.346979, 0.053655, -0.936337,
		0.233239, 0.971933, -0.030736,
		35.177494, 39.135098, 47.955105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290268, 38.574013, 47.317772>,  <35.014225, 38.454742, 47.976620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290268, 38.574013, 47.317772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465588, 38.843304, 47.555984>,  <35.570778, 39.004879, 47.698914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465588, 38.843304, 47.555984>,  <35.290268, 38.574013, 47.317772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465588, 38.843304, 47.555984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893376, -0.253405, -0.371033,
		-0.098879, 0.694657, -0.712513,
		0.438295, 0.673229, 0.595534,
		35.597076, 39.045273, 47.734646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606956, 39.155487, 46.944824>,  <35.290268, 38.574013, 47.317772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606956, 39.155487, 46.944824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.791145, 39.059380, 47.286640>,  <35.901657, 39.001717, 47.491730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.791145, 39.059380, 47.286640>,  <35.606956, 39.155487, 46.944824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791145, 39.059380, 47.286640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887519, 0.106503, -0.448294,
		0.016698, 0.964847, 0.262280,
		0.460469, -0.240264, 0.854542,
		35.929287, 38.987301, 47.543003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.520920, 40.598667, 54.568958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.282509, 40.882656, 54.418922>,  <29.139462, 41.053047, 54.328903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.282509, 40.882656, 54.418922>,  <29.520920, 40.598667, 54.568958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282509, 40.882656, 54.418922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160747, -0.352171, -0.922028,
		-0.786708, -0.609850, 0.095779,
		-0.596029, 0.709971, -0.375088,
		29.103701, 41.095646, 54.306396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028255, 40.237026, 54.026279>,  <29.520920, 40.598667, 54.568958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028255, 40.237026, 54.026279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.044638, 40.628063, 53.943680>,  <29.054466, 40.862686, 53.894119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.044638, 40.628063, 53.943680>,  <29.028255, 40.237026, 54.026279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044638, 40.628063, 53.943680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263852, -0.209919, -0.941443,
		-0.963693, -0.015930, -0.266536,
		0.040954, 0.977589, -0.206501,
		29.056925, 40.921341, 53.881729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726524, 40.363678, 53.405857>,  <29.028255, 40.237026, 54.026279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726524, 40.363678, 53.405857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.930506, 40.706844, 53.430897>,  <29.052895, 40.912746, 53.445923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.930506, 40.706844, 53.430897>,  <28.726524, 40.363678, 53.405857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930506, 40.706844, 53.430897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309037, -0.114804, -0.944095,
		-0.802771, 0.500793, -0.323674,
		0.509956, 0.857920, 0.062602,
		29.083492, 40.964222, 53.449677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676342, 40.592213, 52.655003>,  <28.726524, 40.363678, 53.405857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676342, 40.592213, 52.655003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972176, 40.808723, 52.815022>,  <29.149675, 40.938629, 52.911034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972176, 40.808723, 52.815022>,  <28.676342, 40.592213, 52.655003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972176, 40.808723, 52.815022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555555, -0.155387, -0.816831,
		-0.379967, 0.826364, -0.415630,
		0.739583, 0.541274, 0.400049,
		29.194050, 40.971107, 52.935036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891741, 41.138401, 52.184063>,  <28.676342, 40.592213, 52.655003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891741, 41.138401, 52.184063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217974, 41.082470, 52.408661>,  <29.413713, 41.048912, 52.543419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217974, 41.082470, 52.408661>,  <28.891741, 41.138401, 52.184063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217974, 41.082470, 52.408661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555005, -0.085487, -0.827443,
		0.163699, 0.986479, 0.007883,
		0.815581, -0.139826, 0.561494,
		29.462648, 41.040524, 52.577110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324543, 41.450119, 51.889271>,  <28.891741, 41.138401, 52.184063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324543, 41.450119, 51.889271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.573921, 41.217220, 52.098003>,  <29.723547, 41.077480, 52.223244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.573921, 41.217220, 52.098003>,  <29.324543, 41.450119, 51.889271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573921, 41.217220, 52.098003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521057, -0.188205, -0.832513,
		0.582938, 0.790930, 0.186047,
		0.623444, -0.582245, 0.521832,
		29.760954, 41.042545, 52.254555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019638, 41.650181, 51.661160>,  <29.324543, 41.450119, 51.889271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019638, 41.650181, 51.661160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.046936, 41.303349, 51.858547>,  <30.063314, 41.095249, 51.976978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.046936, 41.303349, 51.858547>,  <30.019638, 41.650181, 51.661160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046936, 41.303349, 51.858547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737977, -0.288974, -0.609823,
		0.671367, 0.405783, 0.620167,
		0.068244, -0.867084, 0.493466,
		30.067410, 41.043224, 52.006588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637180, 41.588375, 51.836075>,  <30.019638, 41.650181, 51.661160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637180, 41.588375, 51.836075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.502840, 41.211941, 51.820263>,  <30.422235, 40.986080, 51.810776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.502840, 41.211941, 51.820263>,  <30.637180, 41.588375, 51.836075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502840, 41.211941, 51.820263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825942, -0.274067, -0.492654,
		0.452797, -0.198104, 0.869327,
		-0.335851, -0.941086, -0.039525,
		30.402084, 40.929615, 51.808407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341124, 41.236477, 51.736946>,  <30.637180, 41.588375, 51.836075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341124, 41.236477, 51.736946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.047531, 40.978939, 51.650475>,  <30.871376, 40.824417, 51.598591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.047531, 40.978939, 51.650475>,  <31.341124, 41.236477, 51.736946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047531, 40.978939, 51.650475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650818, -0.575755, -0.494916,
		0.194182, -0.503955, 0.841619,
		-0.733982, -0.643845, -0.216182,
		30.827337, 40.785786, 51.585621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574579, 40.569759, 51.791622>,  <31.341124, 41.236477, 51.736946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574579, 40.569759, 51.791622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.266642, 40.546520, 51.537388>,  <31.081879, 40.532578, 51.384850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.266642, 40.546520, 51.537388>,  <31.574579, 40.569759, 51.791622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266642, 40.546520, 51.537388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493684, -0.685353, -0.535320,
		-0.404497, -0.725890, 0.556297,
		-0.769843, -0.058099, -0.635583,
		31.035688, 40.529091, 51.346714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713171, 39.982967, 51.525833>,  <31.574579, 40.569759, 51.791622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713171, 39.982967, 51.525833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.443233, 40.104469, 51.256817>,  <31.281271, 40.177372, 51.095406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.443233, 40.104469, 51.256817>,  <31.713171, 39.982967, 51.525833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443233, 40.104469, 51.256817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366287, -0.653297, -0.662599,
		-0.640641, -0.693495, 0.329611,
		-0.674843, 0.303756, -0.672547,
		31.240780, 40.195595, 51.055054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551638, 39.349464, 51.134232>,  <31.713171, 39.982967, 51.525833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551638, 39.349464, 51.134232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.428492, 39.663353, 50.919037>,  <31.354605, 39.851688, 50.789921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.428492, 39.663353, 50.919037>,  <31.551638, 39.349464, 51.134232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428492, 39.663353, 50.919037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314049, -0.449942, -0.836018,
		-0.898105, -0.426335, -0.107920,
		-0.307865, 0.784724, -0.537985,
		31.336132, 39.898769, 50.757641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224386, 39.096157, 50.540176>,  <31.551638, 39.349464, 51.134232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224386, 39.096157, 50.540176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.342272, 39.455070, 50.408707>,  <31.413004, 39.670418, 50.329826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.342272, 39.455070, 50.408707>,  <31.224386, 39.096157, 50.540176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342272, 39.455070, 50.408707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451669, -0.433904, -0.779566,
		-0.842104, 0.081297, -0.533153,
		0.294714, 0.897284, -0.328673,
		31.430685, 39.724255, 50.310104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193825, 39.079834, 49.817799>,  <31.224386, 39.096157, 50.540176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193825, 39.079834, 49.817799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.443325, 39.384071, 49.889832>,  <31.593025, 39.566616, 49.933052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.443325, 39.384071, 49.889832>,  <31.193825, 39.079834, 49.817799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443325, 39.384071, 49.889832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594713, -0.312322, -0.740791,
		-0.507199, 0.569166, -0.647147,
		0.623752, 0.760595, 0.180081,
		31.630451, 39.612251, 49.943855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585205, 39.169189, 49.252056>,  <31.193825, 39.079834, 49.817799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585205, 39.169189, 49.252056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.327980, 38.866039, 49.208061>,  <30.173645, 38.684151, 49.181664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.327980, 38.866039, 49.208061>,  <30.585205, 39.169189, 49.252056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327980, 38.866039, 49.208061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654056, 0.468814, 0.593653,
		-0.398351, 0.453693, -0.797170,
		-0.643061, -0.757876, -0.109989,
		30.135061, 38.638676, 49.175064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959095, 39.492062, 49.247292>,  <30.585205, 39.169189, 49.252056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959095, 39.492062, 49.247292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.866901, 39.115711, 49.346596>,  <29.811584, 38.889900, 49.406178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.866901, 39.115711, 49.346596>,  <29.959095, 39.492062, 49.247292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866901, 39.115711, 49.346596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655091, 0.338686, 0.675387,
		-0.719536, -0.006966, -0.694420,
		-0.230485, -0.940873, 0.248261,
		29.797756, 38.833450, 49.421074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246288, 39.410061, 49.039841>,  <29.959095, 39.492062, 49.247292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246288, 39.410061, 49.039841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.342556, 39.148586, 49.326832>,  <29.400316, 38.991703, 49.499027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.342556, 39.148586, 49.326832>,  <29.246288, 39.410061, 49.039841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342556, 39.148586, 49.326832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745633, 0.348715, 0.567828,
		-0.621377, -0.671633, -0.403486,
		0.240670, -0.653687, 0.717475,
		29.414757, 38.952480, 49.542076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637228, 39.190697, 49.285378>,  <29.246288, 39.410061, 49.039841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637228, 39.190697, 49.285378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.869316, 39.073101, 49.589199>,  <29.008568, 39.002544, 49.771492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.869316, 39.073101, 49.589199>,  <28.637228, 39.190697, 49.285378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869316, 39.073101, 49.589199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738570, 0.203174, 0.642833,
		-0.343309, -0.933964, -0.099250,
		0.580218, -0.293993, 0.759549,
		29.043381, 38.984901, 49.817062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192593, 38.706409, 49.782463>,  <28.637228, 39.190697, 49.285378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192593, 38.706409, 49.782463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.498516, 38.870308, 49.981331>,  <28.682070, 38.968647, 50.100651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.498516, 38.870308, 49.981331>,  <28.192593, 38.706409, 49.782463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498516, 38.870308, 49.981331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594885, 0.152872, 0.789140,
		0.247348, -0.899297, 0.360672,
		0.764808, 0.409751, 0.497165,
		28.727959, 38.993233, 50.130482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213675, 38.323009, 50.359959>,  <28.192593, 38.706409, 49.782463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213675, 38.323009, 50.359959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.398977, 38.666061, 50.449280>,  <28.510159, 38.871891, 50.502872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.398977, 38.666061, 50.449280>,  <28.213675, 38.323009, 50.359959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398977, 38.666061, 50.449280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586541, 0.107823, 0.802711,
		0.664352, -0.502837, 0.552984,
		0.463257, 0.857630, 0.223302,
		28.537954, 38.923351, 50.516270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402103, 38.292812, 50.956665>,  <28.213675, 38.323009, 50.359959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402103, 38.292812, 50.956665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.419161, 38.690941, 50.921982>,  <28.429396, 38.929817, 50.901173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.419161, 38.690941, 50.921982>,  <28.402103, 38.292812, 50.956665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419161, 38.690941, 50.921982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486284, 0.096493, 0.868456,
		0.872759, 0.005131, 0.488124,
		0.042645, 0.995320, -0.086711,
		28.431953, 38.989536, 50.895969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584389, 38.507809, 51.604397>,  <28.402103, 38.292812, 50.956665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584389, 38.507809, 51.604397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.451933, 38.847065, 51.438988>,  <28.372459, 39.050621, 51.339745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.451933, 38.847065, 51.438988>,  <28.584389, 38.507809, 51.604397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451933, 38.847065, 51.438988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532188, 0.194014, 0.824097,
		0.779181, 0.492961, 0.387126,
		-0.331140, 0.848144, -0.413519,
		28.352591, 39.101509, 51.314934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649771, 38.933933, 52.074276>,  <28.584389, 38.507809, 51.604397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649771, 38.933933, 52.074276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.375139, 39.084377, 51.825390>,  <28.210360, 39.174644, 51.676060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.375139, 39.084377, 51.825390>,  <28.649771, 38.933933, 52.074276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375139, 39.084377, 51.825390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562710, 0.267039, 0.782335,
		0.460397, 0.887262, 0.028295,
		-0.686580, 0.376107, -0.622215,
		28.169165, 39.197208, 51.638725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442883, 39.607254, 52.377357>,  <28.649771, 38.933933, 52.074276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442883, 39.607254, 52.377357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.141329, 39.492489, 52.140938>,  <27.960398, 39.423630, 51.999084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.141329, 39.492489, 52.140938>,  <28.442883, 39.607254, 52.377357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141329, 39.492489, 52.140938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656811, 0.307021, 0.688722,
		-0.016141, 0.907423, -0.419908,
		-0.753883, -0.286916, -0.591050,
		27.915165, 39.406414, 51.963623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054070, 40.186253, 52.310143>,  <28.442883, 39.607254, 52.377357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054070, 40.186253, 52.310143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819527, 39.868645, 52.246006>,  <27.678801, 39.678078, 52.207523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819527, 39.868645, 52.246006>,  <28.054070, 40.186253, 52.310143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819527, 39.868645, 52.246006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634132, 0.326776, 0.700781,
		-0.504043, 0.512585, -0.695124,
		-0.586359, -0.794024, -0.160337,
		27.643620, 39.630436, 52.197906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362869, 40.478222, 52.343357>,  <28.054070, 40.186253, 52.310143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362869, 40.478222, 52.343357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.330254, 40.081646, 52.384155>,  <27.310684, 39.843700, 52.408634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.330254, 40.081646, 52.384155>,  <27.362869, 40.478222, 52.343357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.330254, 40.081646, 52.384155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806495, 0.125761, 0.577711,
		-0.585591, -0.035155, -0.809844,
		-0.081537, -0.991437, 0.101997,
		27.305792, 39.784214, 52.414753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581564, 40.299534, 52.159519>,  <27.362869, 40.478222, 52.343357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581564, 40.299534, 52.159519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.781094, 40.029766, 52.377266>,  <26.900810, 39.867905, 52.507915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.781094, 40.029766, 52.377266>,  <26.581564, 40.299534, 52.159519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781094, 40.029766, 52.377266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787202, -0.089766, 0.610127,
		-0.362616, -0.732871, -0.575682,
		0.498821, -0.674420, 0.544366,
		26.930740, 39.827442, 52.540577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981642, 39.823757, 52.297771>,  <26.581564, 40.299534, 52.159519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981642, 39.823757, 52.297771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.264841, 39.713387, 52.557804>,  <26.434761, 39.647163, 52.713821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.264841, 39.713387, 52.557804>,  <25.981642, 39.823757, 52.297771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264841, 39.713387, 52.557804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705810, -0.245380, 0.664546,
		-0.023848, -0.929330, -0.368478,
		0.707999, -0.275923, 0.650079,
		26.477242, 39.630611, 52.752827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.565319, 37.111279, 57.669823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.313240, 37.318089, 57.438118>,  <32.161991, 37.442173, 57.299095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.313240, 37.318089, 57.438118>,  <32.565319, 37.111279, 57.669823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313240, 37.318089, 57.438118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356676, -0.469897, -0.807453,
		-0.689663, -0.715461, 0.111718,
		-0.630196, 0.517023, -0.579258,
		32.124180, 37.473194, 57.264339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134636, 36.564339, 57.350826>,  <32.565319, 37.111279, 57.669823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134636, 36.564339, 57.350826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134602, 36.891373, 57.120506>,  <32.134583, 37.087593, 56.982315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134602, 36.891373, 57.120506>,  <32.134636, 36.564339, 57.350826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134602, 36.891373, 57.120506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320416, -0.545423, -0.774498,
		-0.947277, -0.184563, -0.261922,
		-0.000086, 0.817588, -0.575804,
		32.134575, 37.136650, 56.947765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859928, 36.288795, 56.776268>,  <32.134636, 36.564339, 57.350826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859928, 36.288795, 56.776268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.035301, 36.633835, 56.675312>,  <32.140526, 36.840858, 56.614738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.035301, 36.633835, 56.675312>,  <31.859928, 36.288795, 56.776268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035301, 36.633835, 56.675312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195435, -0.365595, -0.910025,
		-0.877259, 0.349658, -0.328871,
		0.438431, 0.862600, -0.252386,
		32.166832, 36.892616, 56.599598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608187, 36.469631, 56.173798>,  <31.859928, 36.288795, 56.776268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608187, 36.469631, 56.173798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957691, 36.663807, 56.185764>,  <32.167393, 36.780312, 56.192944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957691, 36.663807, 56.185764>,  <31.608187, 36.469631, 56.173798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957691, 36.663807, 56.185764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230880, -0.359855, -0.903990,
		-0.428063, 0.796778, -0.426505,
		0.873760, 0.485437, 0.029920,
		32.219818, 36.809437, 56.194740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666754, 36.714924, 55.477898>,  <31.608187, 36.469631, 56.173798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666754, 36.714924, 55.477898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.037918, 36.739693, 55.624947>,  <32.260616, 36.754555, 55.713177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.037918, 36.739693, 55.624947>,  <31.666754, 36.714924, 55.477898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037918, 36.739693, 55.624947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356889, -0.432583, -0.827951,
		0.107756, 0.899465, -0.423499,
		0.927911, 0.061925, 0.367622,
		32.316292, 36.758270, 55.735233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176910, 37.019249, 54.943901>,  <31.666754, 36.714924, 55.477898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176910, 37.019249, 54.943901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400597, 36.815041, 55.205173>,  <32.534809, 36.692516, 55.361938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400597, 36.815041, 55.205173>,  <32.176910, 37.019249, 54.943901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400597, 36.815041, 55.205173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523294, -0.393720, -0.755743,
		0.642991, 0.764431, 0.046976,
		0.559219, -0.510519, 0.653181,
		32.568363, 36.661884, 55.401127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679016, 37.030949, 54.555874>,  <32.176910, 37.019249, 54.943901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679016, 37.030949, 54.555874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782139, 36.766899, 54.838085>,  <32.844013, 36.608471, 55.007412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782139, 36.766899, 54.838085>,  <32.679016, 37.030949, 54.555874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782139, 36.766899, 54.838085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652684, -0.419435, -0.630935,
		0.712418, 0.623150, 0.322716,
		0.257808, -0.660121, 0.705532,
		32.859482, 36.568863, 55.049744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383430, 37.046421, 54.549767>,  <32.679016, 37.030949, 54.555874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383430, 37.046421, 54.549767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.300976, 36.696693, 54.725529>,  <33.251503, 36.486858, 54.830986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.300976, 36.696693, 54.725529>,  <33.383430, 37.046421, 54.549767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300976, 36.696693, 54.725529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631971, -0.461790, -0.622385,
		0.747074, 0.149393, 0.647736,
		-0.206138, -0.874318, 0.439403,
		33.239136, 36.434399, 54.857349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046474, 36.710529, 54.716991>,  <33.383430, 37.046421, 54.549767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046474, 36.710529, 54.716991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.761486, 36.429932, 54.710236>,  <33.590492, 36.261574, 54.706184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.761486, 36.429932, 54.710236>,  <34.046474, 36.710529, 54.716991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761486, 36.429932, 54.710236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584410, -0.579889, -0.567621,
		0.388393, -0.414282, 0.823117,
		-0.712472, -0.701498, -0.016885,
		33.547745, 36.219482, 54.705170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350719, 36.140808, 54.978409>,  <34.046474, 36.710529, 54.716991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350719, 36.140808, 54.978409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.034634, 36.015129, 54.767948>,  <33.844982, 35.939720, 54.641670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.034634, 36.015129, 54.767948>,  <34.350719, 36.140808, 54.978409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034634, 36.015129, 54.767948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565587, -0.704463, -0.428769,
		-0.235936, -0.636406, 0.734385,
		-0.790218, -0.314197, -0.526151,
		33.797569, 35.920872, 54.610104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443291, 35.263100, 54.931290>,  <34.350719, 36.140808, 54.978409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443291, 35.263100, 54.931290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.211071, 35.407101, 54.639164>,  <34.071739, 35.493500, 54.463886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.211071, 35.407101, 54.639164>,  <34.443291, 35.263100, 54.931290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211071, 35.407101, 54.639164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485968, -0.566472, -0.665541,
		-0.653300, -0.741289, 0.153914,
		-0.580546, 0.360001, -0.730319,
		34.036907, 35.515099, 54.420067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251389, 34.624889, 54.543579>,  <34.443291, 35.263100, 54.931290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251389, 34.624889, 54.543579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232918, 34.947723, 54.308125>,  <34.221836, 35.141422, 54.166851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232918, 34.947723, 54.308125>,  <34.251389, 34.624889, 54.543579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232918, 34.947723, 54.308125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426326, -0.516979, -0.742280,
		-0.903390, -0.285224, -0.320208,
		-0.046175, 0.807081, -0.588632,
		34.219067, 35.189846, 54.131535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281487, 34.368221, 53.830215>,  <34.251389, 34.624889, 54.543579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281487, 34.368221, 53.830215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.320190, 34.756653, 53.742897>,  <34.343414, 34.989712, 53.690506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.320190, 34.756653, 53.742897>,  <34.281487, 34.368221, 53.830215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320190, 34.756653, 53.742897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507206, -0.236814, -0.828650,
		-0.856376, -0.030538, -0.515449,
		0.096760, 0.971075, -0.218291,
		34.349220, 35.047974, 53.677410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033234, 34.454033, 53.119194>,  <34.281487, 34.368221, 53.830215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033234, 34.454033, 53.119194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.268726, 34.766117, 53.203739>,  <34.410023, 34.953365, 53.254467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.268726, 34.766117, 53.203739>,  <34.033234, 34.454033, 53.119194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268726, 34.766117, 53.203739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570356, -0.215664, -0.792580,
		-0.572794, 0.587166, -0.571964,
		0.588728, 0.780208, 0.211363,
		34.445343, 35.000179, 53.267147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499271, 34.334019, 52.522400>,  <34.033234, 34.454033, 53.119194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499271, 34.334019, 52.522400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404598, 33.948536, 52.473015>,  <33.347794, 33.717247, 52.443382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404598, 33.948536, 52.473015>,  <33.499271, 34.334019, 52.522400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404598, 33.948536, 52.473015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643950, 0.060443, 0.762676,
		-0.727537, 0.260015, -0.634887,
		-0.236682, -0.963711, -0.123462,
		33.333595, 33.659424, 52.435978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762440, 34.260101, 52.552933>,  <33.499271, 34.334019, 52.522400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762440, 34.260101, 52.552933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919445, 33.904728, 52.648117>,  <33.013649, 33.691505, 52.705227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.919445, 33.904728, 52.648117>,  <32.762440, 34.260101, 52.552933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919445, 33.904728, 52.648117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582106, -0.039649, 0.812146,
		-0.712100, -0.457295, -0.532723,
		0.392512, -0.888431, 0.237961,
		33.037197, 33.638199, 52.719505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255146, 33.926056, 52.744961>,  <32.762440, 34.260101, 52.552933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255146, 33.926056, 52.744961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.554321, 33.722172, 52.915035>,  <32.733826, 33.599842, 53.017082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.554321, 33.722172, 52.915035>,  <32.255146, 33.926056, 52.744961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554321, 33.722172, 52.915035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484017, 0.019537, 0.874841,
		-0.454220, -0.860126, -0.232095,
		0.747938, -0.509708, 0.425189,
		32.778702, 33.569260, 53.042591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967436, 33.304943, 53.153366>,  <32.255146, 33.926056, 52.744961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967436, 33.304943, 53.153366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.328033, 33.404682, 53.294865>,  <32.544392, 33.464523, 53.379765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.328033, 33.404682, 53.294865>,  <31.967436, 33.304943, 53.153366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328033, 33.404682, 53.294865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390653, 0.117009, 0.913071,
		0.186285, -0.961318, 0.202893,
		0.901492, 0.249352, 0.353745,
		32.598480, 33.479485, 53.400990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037014, 32.884647, 53.795372>,  <31.967436, 33.304943, 53.153366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037014, 32.884647, 53.795372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.314476, 33.172276, 53.812229>,  <32.480953, 33.344852, 53.822346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.314476, 33.172276, 53.812229>,  <32.037014, 32.884647, 53.795372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314476, 33.172276, 53.812229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212602, 0.148484, 0.965791,
		0.688213, -0.678890, 0.255873,
		0.693659, 0.719069, 0.042145,
		32.522575, 33.387997, 53.824871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531364, 32.731407, 54.360691>,  <32.037014, 32.884647, 53.795372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531364, 32.731407, 54.360691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.523525, 33.124676, 54.288044>,  <32.518822, 33.360638, 54.244453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.523525, 33.124676, 54.288044>,  <32.531364, 32.731407, 54.360691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523525, 33.124676, 54.288044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185026, 0.174952, 0.967035,
		0.982538, 0.052556, 0.178484,
		-0.019597, 0.983173, -0.181621,
		32.517647, 33.419628, 54.233559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702435, 32.918457, 55.013695>,  <32.531364, 32.731407, 54.360691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702435, 32.918457, 55.013695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.572739, 33.252773, 54.836464>,  <32.494923, 33.453365, 54.730125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.572739, 33.252773, 54.836464>,  <32.702435, 32.918457, 55.013695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572739, 33.252773, 54.836464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420403, 0.292274, 0.858975,
		0.847426, 0.464784, 0.256604,
		-0.324239, 0.835794, -0.443077,
		32.475468, 33.503513, 54.703541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065086, 33.531460, 55.392864>,  <32.702435, 32.918457, 55.013695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065086, 33.531460, 55.392864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.723682, 33.680153, 55.246803>,  <32.518841, 33.769371, 55.159168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.723682, 33.680153, 55.246803>,  <33.065086, 33.531460, 55.392864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723682, 33.680153, 55.246803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220104, 0.377985, 0.899268,
		0.472312, 0.847904, -0.240793,
		-0.853508, 0.371735, -0.365153,
		32.467628, 33.791672, 55.137257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027718, 34.095219, 55.703278>,  <33.065086, 33.531460, 55.392864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027718, 34.095219, 55.703278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.646046, 34.051865, 55.591713>,  <32.417042, 34.025852, 55.524773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.646046, 34.051865, 55.591713>,  <33.027718, 34.095219, 55.703278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646046, 34.051865, 55.591713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297056, 0.455323, 0.839308,
		0.036032, 0.883705, -0.466655,
		-0.954180, -0.108381, -0.278916,
		32.359791, 34.019352, 55.508038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672371, 34.706623, 55.813095>,  <33.027718, 34.095219, 55.703278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672371, 34.706623, 55.813095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.379669, 34.434975, 55.790001>,  <32.204048, 34.271988, 55.776146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.379669, 34.434975, 55.790001>,  <32.672371, 34.706623, 55.813095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379669, 34.434975, 55.790001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437214, 0.402743, 0.804140,
		-0.522856, 0.613674, -0.591629,
		-0.731755, -0.679118, -0.057731,
		32.160141, 34.231239, 55.772682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035210, 35.160084, 55.915855>,  <32.672371, 34.706623, 55.813095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035210, 35.160084, 55.915855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.891373, 34.792259, 55.979237>,  <31.805071, 34.571564, 56.017265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.891373, 34.792259, 55.979237>,  <32.035210, 35.160084, 55.915855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891373, 34.792259, 55.979237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711500, 0.380069, 0.591028,
		-0.603707, 0.099791, -0.790936,
		-0.359590, -0.919559, 0.158449,
		31.783495, 34.516392, 56.026772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317410, 35.124439, 55.761009>,  <32.035210, 35.160084, 55.915855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317410, 35.124439, 55.761009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.367216, 34.811935, 56.005676>,  <31.397100, 34.624435, 56.152477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.367216, 34.811935, 56.005676>,  <31.317410, 35.124439, 55.761009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367216, 34.811935, 56.005676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688481, 0.375877, 0.620251,
		-0.714486, -0.498350, -0.491078,
		0.124517, -0.781258, 0.611663,
		31.404572, 34.577557, 56.189175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677176, 34.717319, 55.785889>,  <31.317410, 35.124439, 55.761009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677176, 34.717319, 55.785889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.854881, 34.615246, 56.129402>,  <30.961504, 34.554001, 56.335510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.854881, 34.615246, 56.129402>,  <30.677176, 34.717319, 55.785889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854881, 34.615246, 56.129402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777978, 0.365470, 0.511059,
		-0.444275, -0.895161, -0.036163,
		0.444263, -0.255184, 0.858785,
		30.988161, 34.538692, 56.387039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291323, 34.281334, 56.068314>,  <30.677176, 34.717319, 55.785889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291323, 34.281334, 56.068314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.502035, 34.424641, 56.376637>,  <30.628464, 34.510624, 56.561630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.502035, 34.424641, 56.376637>,  <30.291323, 34.281334, 56.068314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502035, 34.424641, 56.376637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789880, 0.541316, 0.288214,
		-0.313991, -0.760670, 0.568147,
		0.526783, 0.358271, 0.770806,
		30.660070, 34.532124, 56.607880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612186, 33.914413, 56.097546>,  <30.291323, 34.281334, 56.068314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612186, 33.914413, 56.097546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.305370, 33.958111, 55.844654>,  <29.121281, 33.984329, 55.692921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.305370, 33.958111, 55.844654>,  <29.612186, 33.914413, 56.097546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305370, 33.958111, 55.844654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512735, -0.487980, -0.706384,
		-0.385679, -0.865992, 0.318291,
		-0.767043, 0.109239, -0.632228,
		29.075258, 33.990883, 55.654987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520473, 33.224758, 55.730476>,  <29.612186, 33.914413, 56.097546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520473, 33.224758, 55.730476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.318254, 33.487373, 55.506557>,  <29.196924, 33.644943, 55.372204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.318254, 33.487373, 55.506557>,  <29.520473, 33.224758, 55.730476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318254, 33.487373, 55.506557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308992, -0.468015, -0.827940,
		-0.805573, -0.591535, 0.033736,
		-0.505545, 0.656542, -0.559801,
		29.166592, 33.684338, 55.338615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084816, 32.823452, 55.264038>,  <29.520473, 33.224758, 55.730476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084816, 32.823452, 55.264038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.159569, 33.180408, 55.099743>,  <29.204420, 33.394585, 55.001167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.159569, 33.180408, 55.099743>,  <29.084816, 32.823452, 55.264038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159569, 33.180408, 55.099743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299390, -0.449952, -0.841374,
		-0.935650, 0.034266, -0.351262,
		0.186882, 0.892395, -0.410738,
		29.215633, 33.448128, 54.976521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580397, 32.824089, 54.774666>,  <29.084816, 32.823452, 55.264038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580397, 32.824089, 54.774666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.849358, 33.102600, 54.674210>,  <29.010735, 33.269707, 54.613934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.849358, 33.102600, 54.674210>,  <28.580397, 32.824089, 54.774666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849358, 33.102600, 54.674210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306973, -0.571061, -0.761352,
		-0.673530, 0.434842, -0.597721,
		0.672403, 0.696277, -0.251142,
		29.051079, 33.311481, 54.598866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403273, 32.993053, 54.068394>,  <28.580397, 32.824089, 54.774666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403273, 32.993053, 54.068394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.782852, 33.074154, 54.165043>,  <29.010601, 33.122814, 54.223034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.782852, 33.074154, 54.165043>,  <28.403273, 32.993053, 54.068394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782852, 33.074154, 54.165043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312845, -0.507217, -0.803031,
		-0.040261, 0.837628, -0.544755,
		0.948951, 0.202755, 0.241627,
		29.067537, 33.134979, 54.237530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734081, 33.132778, 53.436573>,  <28.403273, 32.993053, 54.068394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734081, 33.132778, 53.436573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.060074, 33.097603, 53.665684>,  <29.255669, 33.076496, 53.803150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.060074, 33.097603, 53.665684>,  <28.734081, 33.132778, 53.436573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060074, 33.097603, 53.665684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484228, -0.439611, -0.756482,
		0.318327, 0.893873, -0.315690,
		0.814979, -0.087943, 0.572779,
		29.304567, 33.071220, 53.837517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342144, 33.355537, 53.132450>,  <28.734081, 33.132778, 53.436573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342144, 33.355537, 53.132450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.525259, 33.133274, 53.410061>,  <29.635128, 32.999916, 53.576630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.525259, 33.133274, 53.410061>,  <29.342144, 33.355537, 53.132450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525259, 33.133274, 53.410061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522871, -0.463088, -0.715651,
		0.719052, 0.690504, 0.078540,
		0.457789, -0.555656, 0.694029,
		29.662596, 32.966576, 53.618271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969978, 33.313972, 52.835274>,  <29.342144, 33.355537, 53.132450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969978, 33.313972, 52.835274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.960476, 33.029385, 53.116199>,  <29.954775, 32.858631, 53.284756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.960476, 33.029385, 53.116199>,  <29.969978, 33.313972, 52.835274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960476, 33.029385, 53.116199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476542, -0.625621, -0.617662,
		0.878831, 0.320007, 0.353909,
		-0.023757, -0.711473, 0.702312,
		29.953348, 32.815941, 53.326893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640800, 33.147732, 52.855042>,  <29.969978, 33.313972, 52.835274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640800, 33.147732, 52.855042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.404865, 32.849178, 52.978336>,  <30.263304, 32.670048, 53.052315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.404865, 32.849178, 52.978336>,  <30.640800, 33.147732, 52.855042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404865, 32.849178, 52.978336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393995, -0.599185, -0.696954,
		0.704883, -0.289646, 0.647491,
		-0.589837, -0.746380, 0.308236,
		30.227915, 32.625263, 53.070808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058937, 32.634323, 52.896717>,  <30.640800, 33.147732, 52.855042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058937, 32.634323, 52.896717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.694164, 32.477158, 52.849384>,  <30.475300, 32.382858, 52.820984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.694164, 32.477158, 52.849384>,  <31.058937, 32.634323, 52.896717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694164, 32.477158, 52.849384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360251, -0.628539, -0.689317,
		0.196465, -0.671238, 0.714731,
		-0.911932, -0.392909, -0.118329,
		30.420584, 32.359283, 52.813885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242575, 31.990837, 52.682777>,  <31.058937, 32.634323, 52.896717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242575, 31.990837, 52.682777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.858376, 32.042938, 52.584404>,  <30.627857, 32.074200, 52.525379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.858376, 32.042938, 52.584404>,  <31.242575, 31.990837, 52.682777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858376, 32.042938, 52.584404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133033, -0.561301, -0.816850,
		-0.244437, -0.817298, 0.521800,
		-0.960496, 0.130252, -0.245931,
		30.570227, 32.082012, 52.510624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028337, 31.379211, 52.415276>,  <31.242575, 31.990837, 52.682777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028337, 31.379211, 52.415276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.765856, 31.648258, 52.278465>,  <30.608368, 31.809687, 52.196381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.765856, 31.648258, 52.278465>,  <31.028337, 31.379211, 52.415276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765856, 31.648258, 52.278465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080598, -0.388196, -0.918046,
		-0.750268, -0.629991, 0.200523,
		-0.656203, 0.672618, -0.342027,
		30.568995, 31.850044, 52.175858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448837, 31.014208, 51.981430>,  <31.028337, 31.379211, 52.415276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448837, 31.014208, 51.981430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.455351, 31.401543, 51.881786>,  <30.459259, 31.633944, 51.821999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.455351, 31.401543, 51.881786>,  <30.448837, 31.014208, 51.981430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455351, 31.401543, 51.881786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080366, -0.247073, -0.965658,
		-0.996632, 0.035746, 0.073798,
		0.016285, 0.968337, -0.249114,
		30.460236, 31.692043, 51.807053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904535, 31.120678, 51.404282>,  <30.448837, 31.014208, 51.981430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904535, 31.120678, 51.404282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.139832, 31.442028, 51.367271>,  <30.281010, 31.634838, 51.345066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.139832, 31.442028, 51.367271>,  <29.904535, 31.120678, 51.404282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139832, 31.442028, 51.367271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076283, -0.169028, -0.982655,
		-0.805079, 0.570981, -0.160713,
		0.588242, 0.803374, -0.092525,
		30.316305, 31.683041, 51.339516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.710655, 39.147774, 52.606853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.973936, 39.295582, 52.869217>,  <26.131905, 39.384266, 53.026634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.973936, 39.295582, 52.869217>,  <25.710655, 39.147774, 52.606853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973936, 39.295582, 52.869217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612484, -0.243768, 0.751958,
		0.437757, -0.896676, 0.065879,
		0.658203, 0.369525, 0.655911,
		26.171396, 39.406441, 53.065990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.702358, 38.640797, 53.076195>,  <25.710655, 39.147774, 52.606853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.702358, 38.640797, 53.076195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.875444, 38.945976, 53.268307>,  <25.979296, 39.129086, 53.383572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.875444, 38.945976, 53.268307>,  <25.702358, 38.640797, 53.076195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.875444, 38.945976, 53.268307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601017, -0.152946, 0.784465,
		0.671962, -0.628107, 0.392363,
		0.432717, 0.762948, 0.480277,
		26.005260, 39.174862, 53.412392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022348, 38.374226, 53.678364>,  <25.702358, 38.640797, 53.076195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022348, 38.374226, 53.678364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.943134, 38.763386, 53.726093>,  <25.895605, 38.996883, 53.754730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.943134, 38.763386, 53.726093>,  <26.022348, 38.374226, 53.678364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943134, 38.763386, 53.726093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575100, -0.213906, 0.789623,
		0.793752, 0.087751, 0.601878,
		-0.198036, 0.972905, 0.119323,
		25.883724, 39.055256, 53.761890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.144844, 38.476383, 54.409447>,  <26.022348, 38.374226, 53.678364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.144844, 38.476383, 54.409447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.925306, 38.785294, 54.281471>,  <25.793585, 38.970642, 54.204685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.925306, 38.785294, 54.281471>,  <26.144844, 38.476383, 54.409447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925306, 38.785294, 54.281471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578520, -0.074649, 0.812245,
		0.603396, 0.630883, 0.487749,
		-0.548842, 0.772278, -0.319936,
		25.760654, 39.016975, 54.185490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296099, 38.904808, 54.921791>,  <26.144844, 38.476383, 54.409447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296099, 38.904808, 54.921791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.955372, 39.032780, 54.755875>,  <25.750937, 39.109562, 54.656322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.955372, 39.032780, 54.755875>,  <26.296099, 38.904808, 54.921791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.955372, 39.032780, 54.755875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412466, 0.078505, 0.907584,
		0.322922, 0.944185, 0.065086,
		-0.851818, 0.319925, -0.414795,
		25.699827, 39.128757, 54.631435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.109283, 39.536850, 55.288334>,  <26.296099, 38.904808, 54.921791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.109283, 39.536850, 55.288334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.784658, 39.385517, 55.110241>,  <25.589884, 39.294720, 55.003384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.784658, 39.385517, 55.110241>,  <26.109283, 39.536850, 55.288334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.784658, 39.385517, 55.110241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488241, 0.020592, 0.872466,
		-0.320911, 0.925442, -0.201428,
		-0.811564, -0.378329, -0.445231,
		25.541189, 39.272018, 54.976673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530073, 39.946133, 55.338753>,  <26.109283, 39.536850, 55.288334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530073, 39.946133, 55.338753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.379984, 39.576298, 55.312382>,  <25.289930, 39.354397, 55.296558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.379984, 39.576298, 55.312382>,  <25.530073, 39.946133, 55.338753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.379984, 39.576298, 55.312382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295952, 0.052093, 0.953781,
		-0.878419, 0.377393, -0.293180,
		-0.375223, -0.924587, -0.065931,
		25.267418, 39.298923, 55.292603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.028667, 39.976475, 55.723145>,  <25.530073, 39.946133, 55.338753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.028667, 39.976475, 55.723145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.014469, 39.581257, 55.663124>,  <25.005951, 39.344128, 55.627110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.014469, 39.581257, 55.663124>,  <25.028667, 39.976475, 55.723145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.014469, 39.581257, 55.663124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343157, -0.128971, 0.930381,
		-0.938607, 0.084515, -0.334476,
		-0.035494, -0.988040, -0.150055,
		25.003820, 39.284843, 55.618107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.286125, 39.644382, 55.783886>,  <25.028667, 39.976475, 55.723145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.286125, 39.644382, 55.783886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.532944, 39.334709, 55.840313>,  <24.681034, 39.148907, 55.874168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.532944, 39.334709, 55.840313>,  <24.286125, 39.644382, 55.783886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532944, 39.334709, 55.840313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504019, -0.251145, 0.826372,
		-0.604334, -0.581008, -0.545170,
		0.617045, -0.774181, 0.141063,
		24.718058, 39.102455, 55.882633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.856213, 39.100643, 55.954884>,  <24.286125, 39.644382, 55.783886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.856213, 39.100643, 55.954884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.224236, 39.007805, 56.081142>,  <24.445049, 38.952103, 56.156898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.224236, 39.007805, 56.081142>,  <23.856213, 39.100643, 55.954884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.224236, 39.007805, 56.081142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373995, -0.280244, 0.884077,
		-0.116730, -0.931449, -0.344641,
		0.920055, -0.232092, 0.315644,
		24.500252, 38.938179, 56.175835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.829119, 38.447151, 56.387417>,  <23.856213, 39.100643, 55.954884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.829119, 38.447151, 56.387417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.184145, 38.600086, 56.490215>,  <24.397161, 38.691849, 56.551895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.184145, 38.600086, 56.490215>,  <23.829119, 38.447151, 56.387417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.184145, 38.600086, 56.490215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175928, -0.234265, 0.956122,
		0.425765, -0.893833, -0.140662,
		0.887566, 0.382337, 0.256992,
		24.450415, 38.714787, 56.567314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.001728, 37.934742, 56.950054>,  <23.829119, 38.447151, 56.387417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.001728, 37.934742, 56.950054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.265606, 38.233776, 56.980816>,  <24.423933, 38.413197, 56.999271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.265606, 38.233776, 56.980816>,  <24.001728, 37.934742, 56.950054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.265606, 38.233776, 56.980816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184945, 0.062315, 0.980771,
		0.728420, -0.661233, 0.179371,
		0.659696, 0.747588, 0.076900,
		24.463514, 38.458054, 57.003887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.282139, 37.579216, 57.678322>,  <24.001728, 37.934742, 56.950054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.282139, 37.579216, 57.678322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.581728, 37.844173, 57.684933>,  <24.761482, 38.003147, 57.688900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.581728, 37.844173, 57.684933>,  <24.282139, 37.579216, 57.678322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.581728, 37.844173, 57.684933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662339, -0.747745, -0.046744,
		-0.018608, 0.045954, -0.998770,
		0.748973, 0.662394, 0.016523,
		24.806419, 38.042892, 57.689888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.675238, 37.670589, 57.034496>,  <24.282139, 37.579216, 57.678322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.675238, 37.670589, 57.034496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.893862, 37.694809, 57.368587>,  <25.025036, 37.709343, 57.569042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.893862, 37.694809, 57.368587>,  <24.675238, 37.670589, 57.034496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.893862, 37.694809, 57.368587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440645, -0.868935, -0.225354,
		0.712114, 0.491208, -0.501606,
		0.546558, 0.060553, 0.835229,
		25.057829, 37.712975, 57.619156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151545, 37.386002, 56.817345>,  <24.675238, 37.670589, 57.034496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151545, 37.386002, 56.817345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.197140, 37.323029, 57.209717>,  <25.224497, 37.285244, 57.445141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.197140, 37.323029, 57.209717>,  <25.151545, 37.386002, 56.817345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.197140, 37.323029, 57.209717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549549, -0.812561, -0.194268,
		0.827649, 0.561213, -0.006109,
		0.113990, -0.157428, 0.980929,
		25.231337, 37.275799, 57.503994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792530, 37.262230, 57.009811>,  <25.151545, 37.386002, 56.817345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792530, 37.262230, 57.009811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.575148, 37.072662, 57.286957>,  <25.444719, 36.958923, 57.453243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.575148, 37.072662, 57.286957>,  <25.792530, 37.262230, 57.009811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.575148, 37.072662, 57.286957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636465, -0.770797, -0.028007,
		0.547329, 0.425762, 0.720526,
		-0.543455, -0.473918, 0.692862,
		25.412111, 36.930489, 57.494816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242254, 36.912628, 57.404812>,  <25.792530, 37.262230, 57.009811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242254, 36.912628, 57.404812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.898880, 36.735497, 57.508339>,  <25.692856, 36.629219, 57.570454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.898880, 36.735497, 57.508339>,  <26.242254, 36.912628, 57.404812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898880, 36.735497, 57.508339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443946, -0.894207, -0.057501,
		0.256900, 0.065540, 0.964213,
		-0.858437, -0.442831, 0.258818,
		25.641350, 36.602646, 57.585983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271345, 36.674309, 58.132710>,  <26.242254, 36.912628, 57.404812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271345, 36.674309, 58.132710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.035339, 36.459400, 57.891640>,  <25.893736, 36.330456, 57.746998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.035339, 36.459400, 57.891640>,  <26.271345, 36.674309, 58.132710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.035339, 36.459400, 57.891640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754035, -0.633527, -0.173420,
		-0.288639, -0.556761, 0.778912,
		-0.590016, -0.537271, -0.602678,
		25.858335, 36.298218, 57.710835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463837, 35.975758, 58.167961>,  <26.271345, 36.674309, 58.132710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463837, 35.975758, 58.167961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.298271, 36.018360, 57.806335>,  <26.198931, 36.043922, 57.589359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.298271, 36.018360, 57.806335>,  <26.463837, 35.975758, 58.167961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298271, 36.018360, 57.806335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808201, -0.414024, -0.418802,
		-0.418906, -0.904014, 0.085300,
		-0.413919, 0.106499, -0.904063,
		26.174097, 36.050312, 57.535118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639376, 35.298519, 58.001652>,  <26.463837, 35.975758, 58.167961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639376, 35.298519, 58.001652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.554348, 35.512249, 57.674404>,  <26.503330, 35.640488, 57.478058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.554348, 35.512249, 57.674404>,  <26.639376, 35.298519, 58.001652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554348, 35.512249, 57.674404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663830, -0.535417, -0.522168,
		-0.717038, -0.654088, -0.240884,
		-0.212570, 0.534320, -0.818117,
		26.490578, 35.672546, 57.428970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486126, 34.866425, 57.551830>,  <26.639376, 35.298519, 58.001652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486126, 34.866425, 57.551830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.590981, 35.179596, 57.326153>,  <26.653894, 35.367496, 57.190746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.590981, 35.179596, 57.326153>,  <26.486126, 34.866425, 57.551830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590981, 35.179596, 57.326153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462424, -0.615051, -0.638651,
		-0.847023, -0.093480, -0.523272,
		0.262138, 0.782926, -0.564190,
		26.669622, 35.414474, 57.156895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192141, 34.803333, 56.814911>,  <26.486126, 34.866425, 57.551830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192141, 34.803333, 56.814911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.486221, 35.074306, 56.805462>,  <26.662670, 35.236889, 56.799793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.486221, 35.074306, 56.805462>,  <26.192141, 34.803333, 56.814911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486221, 35.074306, 56.805462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505878, -0.571548, -0.646081,
		-0.451180, 0.463051, -0.762903,
		0.735204, 0.677435, -0.023624,
		26.706783, 35.277538, 56.798374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429062, 34.765713, 56.073730>,  <26.192141, 34.803333, 56.814911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429062, 34.765713, 56.073730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.728647, 34.960514, 56.253452>,  <26.908398, 35.077396, 56.361286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.728647, 34.960514, 56.253452>,  <26.429062, 34.765713, 56.073730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728647, 34.960514, 56.253452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639961, -0.355887, -0.681024,
		-0.171762, 0.797601, -0.578213,
		0.748964, 0.487008, 0.449306,
		26.953337, 35.106617, 56.388245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872293, 34.860596, 55.534676>,  <26.429062, 34.765713, 56.073730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872293, 34.860596, 55.534676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.102201, 34.882404, 55.861275>,  <27.240147, 34.895489, 56.057232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.102201, 34.882404, 55.861275>,  <26.872293, 34.860596, 55.534676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102201, 34.882404, 55.861275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789842, -0.297872, -0.536118,
		0.213981, 0.953048, -0.214272,
		0.574771, 0.054521, 0.816496,
		27.274633, 34.898762, 56.106224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514023, 35.215538, 55.369774>,  <26.872293, 34.860596, 55.534676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514023, 35.215538, 55.369774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.632586, 35.030319, 55.703896>,  <27.703724, 34.919189, 55.904369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.632586, 35.030319, 55.703896>,  <27.514023, 35.215538, 55.369774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632586, 35.030319, 55.703896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847955, -0.274841, -0.453250,
		0.439450, 0.842647, 0.311174,
		0.296406, -0.463042, 0.835305,
		27.721508, 34.891407, 55.954487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288235, 35.365025, 55.477612>,  <27.514023, 35.215538, 55.369774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288235, 35.365025, 55.477612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.200788, 35.040874, 55.695049>,  <28.148321, 34.846382, 55.825512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.200788, 35.040874, 55.695049>,  <28.288235, 35.365025, 55.477612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200788, 35.040874, 55.695049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929676, -0.342231, -0.136308,
		0.296496, 0.475569, 0.828205,
		-0.218614, -0.810378, 0.543595,
		28.135204, 34.797760, 55.858128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925913, 35.221394, 55.902279>,  <28.288235, 35.365025, 55.477612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925913, 35.221394, 55.902279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.700994, 34.890656, 55.907181>,  <28.566044, 34.692211, 55.910122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.700994, 34.890656, 55.907181>,  <28.925913, 35.221394, 55.902279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700994, 34.890656, 55.907181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789037, -0.540901, -0.291284,
		0.247477, -0.154115, 0.956558,
		-0.562295, -0.826846, 0.012258,
		28.532307, 34.642601, 55.910858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398876, 34.690685, 56.114559>,  <28.925913, 35.221394, 55.902279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398876, 34.690685, 56.114559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.106499, 34.464268, 55.962082>,  <28.931072, 34.328415, 55.870594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.106499, 34.464268, 55.962082>,  <29.398876, 34.690685, 56.114559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106499, 34.464268, 55.962082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676652, -0.528560, -0.512609,
		0.088676, -0.632625, 0.769365,
		-0.730944, -0.566048, -0.381196,
		28.887215, 34.294453, 55.847725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689690, 34.370296, 56.708733>,  <29.398876, 34.690685, 56.114559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689690, 34.370296, 56.708733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.022385, 34.577141, 56.789536>,  <30.222002, 34.701248, 56.838017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.022385, 34.577141, 56.789536>,  <29.689690, 34.370296, 56.708733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022385, 34.577141, 56.789536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521301, 0.602315, 0.604535,
		0.190935, -0.608124, 0.770538,
		0.831739, 0.517109, 0.202012,
		30.271906, 34.732273, 56.850140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930084, 34.321960, 57.435337>,  <29.689690, 34.370296, 56.708733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930084, 34.321960, 57.435337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.068584, 34.669411, 57.293579>,  <30.151684, 34.877880, 57.208523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.068584, 34.669411, 57.293579>,  <29.930084, 34.321960, 57.435337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068584, 34.669411, 57.293579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481383, 0.488745, 0.727598,
		0.805221, -0.081330, 0.587371,
		0.346250, 0.868628, -0.354397,
		30.172459, 34.930000, 57.187260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046938, 34.689117, 58.029045>,  <29.930084, 34.321960, 57.435337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046938, 34.689117, 58.029045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.045206, 34.947403, 57.723618>,  <30.044167, 35.102375, 57.540359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.045206, 34.947403, 57.723618>,  <30.046938, 34.689117, 58.029045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045206, 34.947403, 57.723618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265813, 0.735362, 0.623367,
		0.964015, 0.205664, 0.168456,
		-0.004328, 0.645713, -0.763568,
		30.043907, 35.141117, 57.494549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441376, 35.205978, 58.255363>,  <30.046938, 34.689117, 58.029045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441376, 35.205978, 58.255363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.209044, 35.353416, 57.965046>,  <30.069645, 35.441879, 57.790855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.209044, 35.353416, 57.965046>,  <30.441376, 35.205978, 58.255363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209044, 35.353416, 57.965046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279931, 0.746792, 0.603275,
		0.764380, 0.553572, -0.330578,
		-0.580829, 0.368592, -0.725794,
		30.034794, 35.463993, 57.747307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533199, 35.902534, 58.300484>,  <30.441376, 35.205978, 58.255363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533199, 35.902534, 58.300484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.173359, 35.889999, 58.126251>,  <29.957455, 35.882481, 58.021709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.173359, 35.889999, 58.126251>,  <30.533199, 35.902534, 58.300484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173359, 35.889999, 58.126251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325261, 0.713645, 0.620416,
		0.291413, 0.699807, -0.652188,
		-0.899602, -0.031334, -0.435585,
		29.903479, 35.880600, 57.995575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417160, 36.541100, 58.242046>,  <30.533199, 35.902534, 58.300484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417160, 36.541100, 58.242046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.063187, 36.357349, 58.211395>,  <29.850803, 36.247101, 58.193005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.063187, 36.357349, 58.211395>,  <30.417160, 36.541100, 58.242046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063187, 36.357349, 58.211395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395021, 0.653211, 0.645968,
		-0.246684, 0.601909, -0.759509,
		-0.884933, -0.459372, -0.076630,
		29.797707, 36.219540, 58.188408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976852, 37.079845, 58.221214>,  <30.417160, 36.541100, 58.242046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976852, 37.079845, 58.221214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.763901, 36.761826, 58.337467>,  <29.636129, 36.571014, 58.407219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.763901, 36.761826, 58.337467>,  <29.976852, 37.079845, 58.221214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763901, 36.761826, 58.337467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422243, 0.546981, 0.722857,
		-0.733676, 0.262119, -0.626907,
		-0.532381, -0.795051, 0.290629,
		29.604187, 36.523312, 58.424656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753786, 37.631096, 58.722462>,  <29.976852, 37.079845, 58.221214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753786, 37.631096, 58.722462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.006216, 37.865467, 58.925808>,  <30.157675, 38.006088, 59.047817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.006216, 37.865467, 58.925808>,  <29.753786, 37.631096, 58.722462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006216, 37.865467, 58.925808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599160, 0.048065, -0.799185,
		-0.492697, 0.808939, -0.320729,
		0.631077, 0.585924, 0.508365,
		30.195539, 38.041245, 59.078316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968103, 38.176899, 58.302490>,  <29.753786, 37.631096, 58.722462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968103, 38.176899, 58.302490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.249044, 38.141880, 58.585060>,  <30.417608, 38.120869, 58.754601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.249044, 38.141880, 58.585060>,  <29.968103, 38.176899, 58.302490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249044, 38.141880, 58.585060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710809, 0.139370, -0.689439,
		-0.038098, 0.986363, 0.160115,
		0.702352, -0.087545, 0.706425,
		30.459749, 38.115616, 58.796989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397188, 38.661034, 58.172962>,  <29.968103, 38.176899, 58.302490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397188, 38.661034, 58.172962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.622988, 38.450302, 58.427139>,  <30.758467, 38.323864, 58.579647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.622988, 38.450302, 58.427139>,  <30.397188, 38.661034, 58.172962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622988, 38.450302, 58.427139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757780, 0.025526, -0.652011,
		0.327280, 0.849586, 0.413633,
		0.564498, -0.526833, 0.635445,
		30.792337, 38.292252, 58.617771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038055, 39.058243, 58.318768>,  <30.397188, 38.661034, 58.172962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038055, 39.058243, 58.318768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.095547, 38.663006, 58.340729>,  <31.130041, 38.425865, 58.353905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.095547, 38.663006, 58.340729>,  <31.038055, 39.058243, 58.318768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095547, 38.663006, 58.340729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746570, 0.071841, -0.661416,
		0.649596, 0.136056, 0.748007,
		0.143728, -0.988093, 0.054908,
		31.138664, 38.366577, 58.357201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730246, 38.968601, 58.000736>,  <31.038055, 39.058243, 58.318768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730246, 38.968601, 58.000736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.611952, 38.588017, 58.034821>,  <31.540976, 38.359665, 58.055271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.611952, 38.588017, 58.034821>,  <31.730246, 38.968601, 58.000736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611952, 38.588017, 58.034821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706044, -0.277795, -0.651407,
		0.643461, -0.132477, 0.753928,
		-0.295734, -0.951462, 0.085215,
		31.523232, 38.302578, 58.060387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372478, 38.506855, 57.970165>,  <31.730246, 38.968601, 58.000736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372478, 38.506855, 57.970165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.064125, 38.275135, 57.864216>,  <31.879114, 38.136105, 57.800648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.064125, 38.275135, 57.864216>,  <32.372478, 38.506855, 57.970165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064125, 38.275135, 57.864216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613626, -0.563796, -0.552809,
		0.170906, -0.588683, 0.790092,
		-0.770879, -0.579299, -0.264875,
		31.832861, 38.101345, 57.784752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597450, 37.757141, 57.987038>,  <32.372478, 38.506855, 57.970165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597450, 37.757141, 57.987038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.269135, 37.772003, 57.759029>,  <32.072144, 37.780922, 57.622227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.269135, 37.772003, 57.759029>,  <32.597450, 37.757141, 57.987038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269135, 37.772003, 57.759029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419378, -0.638330, -0.645490,
		-0.387846, -0.768866, 0.508352,
		-0.820791, 0.037159, -0.570019,
		32.022896, 37.783150, 57.588024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.012352, 40.933067, 58.552277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724550, 40.753529, 58.340294>,  <26.551868, 40.645805, 58.213104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724550, 40.753529, 58.340294>,  <27.012352, 40.933067, 58.552277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724550, 40.753529, 58.340294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596909, -0.009626, -0.802252,
		0.354986, -0.893558, 0.274845,
		-0.719504, -0.448845, -0.529955,
		26.508699, 40.618874, 58.181309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403788, 40.403736, 58.033821>,  <27.012352, 40.933067, 58.552277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403788, 40.403736, 58.033821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038799, 40.434017, 57.872993>,  <26.819805, 40.452187, 57.776497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038799, 40.434017, 57.872993>,  <27.403788, 40.403736, 58.033821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038799, 40.434017, 57.872993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408913, 0.136213, -0.902350,
		-0.013547, -0.987783, -0.155248,
		-0.912473, 0.075707, -0.402072,
		26.765057, 40.456730, 57.752373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455479, 39.966457, 57.470512>,  <27.403788, 40.403736, 58.033821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.455479, 39.966457, 57.470512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176725, 40.245457, 57.403751>,  <27.009474, 40.412857, 57.363693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176725, 40.245457, 57.403751>,  <27.455479, 39.966457, 57.470512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176725, 40.245457, 57.403751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416216, 0.203809, -0.886129,
		-0.584053, -0.686996, -0.432339,
		-0.696883, 0.697494, -0.166903,
		26.967661, 40.454704, 57.353680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202383, 39.874325, 56.764870>,  <27.455479, 39.966457, 57.470512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202383, 39.874325, 56.764870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119572, 40.251602, 56.868805>,  <27.069885, 40.477970, 56.931168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119572, 40.251602, 56.868805>,  <27.202383, 39.874325, 56.764870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119572, 40.251602, 56.868805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415891, 0.325250, -0.849263,
		-0.885536, -0.067754, -0.459603,
		-0.207027, 0.943198, 0.259843,
		27.057463, 40.534561, 56.946758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966450, 40.145702, 56.195019>,  <27.202383, 39.874325, 56.764870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966450, 40.145702, 56.195019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085453, 40.452885, 56.421906>,  <27.156855, 40.637192, 56.558037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085453, 40.452885, 56.421906>,  <26.966450, 40.145702, 56.195019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085453, 40.452885, 56.421906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449491, 0.411488, -0.792865,
		-0.842287, 0.490843, -0.222767,
		0.297506, 0.767952, 0.567221,
		27.174706, 40.683270, 56.592072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804127, 40.739681, 55.817699>,  <26.966450, 40.145702, 56.195019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804127, 40.739681, 55.817699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091721, 40.863682, 56.066525>,  <27.264277, 40.938084, 56.215820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091721, 40.863682, 56.066525>,  <26.804127, 40.739681, 55.817699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091721, 40.863682, 56.066525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531051, 0.332377, -0.779429,
		-0.448384, 0.890743, 0.074346,
		0.718983, 0.310002, 0.622063,
		27.307415, 40.956684, 56.253143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083073, 41.287140, 55.513985>,  <26.804127, 40.739681, 55.817699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083073, 41.287140, 55.513985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376770, 41.194294, 55.769173>,  <27.552988, 41.138584, 55.922287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376770, 41.194294, 55.769173>,  <27.083073, 41.287140, 55.513985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376770, 41.194294, 55.769173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673424, 0.368015, -0.641144,
		-0.085964, 0.900382, 0.426525,
		0.734242, -0.232117, 0.637974,
		27.597042, 41.124660, 55.960564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426672, 41.946148, 55.542397>,  <27.083073, 41.287140, 55.513985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426672, 41.946148, 55.542397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680973, 41.674324, 55.688828>,  <27.833553, 41.511230, 55.776688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680973, 41.674324, 55.688828>,  <27.426672, 41.946148, 55.542397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680973, 41.674324, 55.688828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701929, 0.311674, -0.640434,
		0.321119, 0.664118, 0.675152,
		0.635751, -0.679564, 0.366079,
		27.871698, 41.470455, 55.798653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965815, 42.356552, 55.645023>,  <27.426672, 41.946148, 55.542397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965815, 42.356552, 55.645023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059216, 41.968204, 55.623486>,  <28.115255, 41.735195, 55.610561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.059216, 41.968204, 55.623486>,  <27.965815, 42.356552, 55.645023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059216, 41.968204, 55.623486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715624, 0.209076, -0.666461,
		0.658301, 0.117087, 0.743593,
		0.233501, -0.970865, -0.053845,
		28.129267, 41.676945, 55.607330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604071, 42.409935, 55.420708>,  <27.965815, 42.356552, 55.645023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604071, 42.409935, 55.420708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554611, 42.018330, 55.355907>,  <28.524935, 41.783367, 55.317028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554611, 42.018330, 55.355907>,  <28.604071, 42.409935, 55.420708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554611, 42.018330, 55.355907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600983, 0.056027, -0.797296,
		0.789639, -0.195946, 0.581442,
		-0.123650, -0.979013, -0.162001,
		28.517517, 41.724625, 55.307308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274670, 42.034729, 55.398190>,  <28.604071, 42.409935, 55.420708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274670, 42.034729, 55.398190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001196, 41.823975, 55.196213>,  <28.837112, 41.697521, 55.075027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001196, 41.823975, 55.196213>,  <29.274670, 42.034729, 55.398190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001196, 41.823975, 55.196213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603007, -0.018141, -0.797530,
		0.411047, -0.849743, 0.330118,
		-0.683684, -0.526885, -0.504944,
		28.796091, 41.665909, 55.044731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729824, 41.484077, 55.064411>,  <29.274670, 42.034729, 55.398190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729824, 41.484077, 55.064411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380829, 41.527229, 54.873779>,  <29.171432, 41.553120, 54.759399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380829, 41.527229, 54.873779>,  <29.729824, 41.484077, 55.064411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380829, 41.527229, 54.873779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483057, 0.043414, -0.874512,
		-0.073648, -0.993216, -0.089988,
		-0.872486, 0.107875, -0.476583,
		29.119083, 41.559593, 54.730804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354101, 41.796459, 55.283855>,  <29.729824, 41.484077, 55.064411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354101, 41.796459, 55.283855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675453, 41.767624, 55.520290>,  <30.868265, 41.750324, 55.662151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675453, 41.767624, 55.520290>,  <30.354101, 41.796459, 55.283855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675453, 41.767624, 55.520290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592264, -0.199536, 0.780646,
		0.061672, -0.977236, -0.202996,
		0.803380, -0.072083, 0.591087,
		30.916468, 41.745998, 55.697617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973473, 41.593529, 55.829273>,  <30.354101, 41.796459, 55.283855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973473, 41.593529, 55.829273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343130, 41.676823, 55.957394>,  <30.564924, 41.726799, 56.034264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343130, 41.676823, 55.957394>,  <29.973473, 41.593529, 55.829273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343130, 41.676823, 55.957394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311037, -0.076710, 0.947297,
		0.221836, -0.975065, -0.006120,
		0.924146, 0.208241, 0.320299,
		30.620375, 41.739296, 56.053482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190319, 41.057480, 56.278923>,  <29.973473, 41.593529, 55.829273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190319, 41.057480, 56.278923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400879, 41.382957, 56.377552>,  <30.527214, 41.578243, 56.436729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400879, 41.382957, 56.377552>,  <30.190319, 41.057480, 56.278923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400879, 41.382957, 56.377552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191082, -0.169368, 0.966852,
		0.828487, -0.556066, 0.066328,
		0.526399, 0.813699, 0.246574,
		30.558798, 41.627068, 56.451523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565140, 40.875599, 56.915165>,  <30.190319, 41.057480, 56.278923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565140, 40.875599, 56.915165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509701, 41.271538, 56.902596>,  <30.476439, 41.509102, 56.895054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509701, 41.271538, 56.902596>,  <30.565140, 40.875599, 56.915165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509701, 41.271538, 56.902596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120615, 0.014623, 0.992592,
		0.982977, 0.141359, 0.117364,
		-0.138596, 0.989850, -0.031424,
		30.468122, 41.568493, 56.893169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712160, 41.078644, 57.576710>,  <30.565140, 40.875599, 56.915165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712160, 41.078644, 57.576710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520594, 41.415428, 57.477314>,  <30.405653, 41.617496, 57.417675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520594, 41.415428, 57.477314>,  <30.712160, 41.078644, 57.576710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520594, 41.415428, 57.477314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089460, 0.234782, 0.967923,
		0.873290, 0.485784, -0.037120,
		-0.478917, 0.841957, -0.248491,
		30.376919, 41.668015, 57.402767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916813, 41.516239, 58.033890>,  <30.712160, 41.078644, 57.576710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916813, 41.516239, 58.033890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591345, 41.699543, 57.890820>,  <30.396065, 41.809525, 57.804977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591345, 41.699543, 57.890820>,  <30.916813, 41.516239, 58.033890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591345, 41.699543, 57.890820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250689, 0.278527, 0.927134,
		0.524495, 0.844048, -0.111747,
		-0.813670, 0.458264, -0.357680,
		30.347244, 41.837021, 57.783516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939888, 42.229061, 58.337914>,  <30.916813, 41.516239, 58.033890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939888, 42.229061, 58.337914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564480, 42.123680, 58.248672>,  <30.339235, 42.060452, 58.195129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564480, 42.123680, 58.248672>,  <30.939888, 42.229061, 58.337914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564480, 42.123680, 58.248672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268281, 0.149862, 0.951613,
		-0.217268, 0.952961, -0.211327,
		-0.938520, -0.263450, -0.223101,
		30.282925, 42.044643, 58.181744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539083, 42.667427, 58.692032>,  <30.939888, 42.229061, 58.337914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539083, 42.667427, 58.692032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281757, 42.373848, 58.604885>,  <30.127361, 42.197701, 58.552597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281757, 42.373848, 58.604885>,  <30.539083, 42.667427, 58.692032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281757, 42.373848, 58.604885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276224, -0.042895, 0.960136,
		-0.714035, 0.677850, -0.175139,
		-0.643315, -0.733948, -0.217867,
		30.088762, 42.153664, 58.539524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834852, 42.976299, 59.038677>,  <30.539083, 42.667427, 58.692032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834852, 42.976299, 59.038677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764563, 42.589691, 58.963898>,  <29.722389, 42.357727, 58.919029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764563, 42.589691, 58.963898>,  <29.834852, 42.976299, 59.038677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764563, 42.589691, 58.963898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397662, -0.104032, 0.911615,
		-0.900547, 0.234539, -0.366069,
		-0.175726, -0.966524, -0.186953,
		29.711845, 42.299732, 58.907810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125505, 42.778851, 59.332706>,  <29.834852, 42.976299, 59.038677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125505, 42.778851, 59.332706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289368, 42.417984, 59.278622>,  <29.387686, 42.201466, 59.246170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289368, 42.417984, 59.278622>,  <29.125505, 42.778851, 59.332706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289368, 42.417984, 59.278622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351720, -0.292964, 0.889081,
		-0.841709, -0.316660, -0.437323,
		0.409656, -0.902163, -0.135214,
		29.412264, 42.147335, 59.238056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610907, 42.251270, 59.438416>,  <29.125505, 42.778851, 59.332706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610907, 42.251270, 59.438416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974146, 42.104347, 59.518864>,  <29.192089, 42.016193, 59.567131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974146, 42.104347, 59.518864>,  <28.610907, 42.251270, 59.438416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974146, 42.104347, 59.518864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321081, -0.302405, 0.897473,
		-0.268824, -0.879568, -0.392547,
		0.908097, -0.367301, 0.201119,
		29.246574, 41.994156, 59.579197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476765, 41.507919, 59.598412>,  <28.610907, 42.251270, 59.438416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476765, 41.507919, 59.598412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858713, 41.558426, 59.705948>,  <29.087883, 41.588730, 59.770470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858713, 41.558426, 59.705948>,  <28.476765, 41.507919, 59.598412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858713, 41.558426, 59.705948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155057, -0.560093, 0.813789,
		0.253335, -0.818750, -0.515238,
		0.954871, 0.126269, 0.268844,
		29.145174, 41.596306, 59.786602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801056, 40.813728, 59.696743>,  <28.476765, 41.507919, 59.598412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801056, 40.813728, 59.696743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021877, 41.069088, 59.911289>,  <29.154371, 41.222301, 60.040016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021877, 41.069088, 59.911289>,  <28.801056, 40.813728, 59.696743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021877, 41.069088, 59.911289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083507, -0.682369, 0.726222,
		0.829616, -0.356124, -0.430015,
		0.552054, 0.638394, 0.536365,
		29.187494, 41.260605, 60.072201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289944, 40.357197, 60.046959>,  <28.801056, 40.813728, 59.696743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289944, 40.357197, 60.046959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269445, 40.711086, 60.232277>,  <29.257147, 40.923420, 60.343468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269445, 40.711086, 60.232277>,  <29.289944, 40.357197, 60.046959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269445, 40.711086, 60.232277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200254, -0.445377, 0.872661,
		0.978403, 0.137498, -0.154345,
		-0.051247, 0.884723, 0.463292,
		29.254072, 40.976501, 60.371265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021296, 40.052490, 60.614304>,  <29.289944, 40.357197, 60.046959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021296, 40.052490, 60.614304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919724, 39.743587, 60.847248>,  <28.858780, 39.558247, 60.987015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919724, 39.743587, 60.847248>,  <29.021296, 40.052490, 60.614304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919724, 39.743587, 60.847248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611600, -0.594646, -0.521863,
		0.749309, 0.223654, 0.623310,
		-0.253932, -0.772253, 0.582360,
		28.843544, 39.511913, 61.021957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634848, 39.753193, 60.804207>,  <29.021296, 40.052490, 60.614304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634848, 39.753193, 60.804207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368769, 39.457565, 60.846706>,  <29.209122, 39.280190, 60.872204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368769, 39.457565, 60.846706>,  <29.634848, 39.753193, 60.804207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368769, 39.457565, 60.846706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562450, -0.589568, -0.579707,
		0.491084, -0.325860, 0.807869,
		-0.665197, -0.739070, 0.106247,
		29.169210, 39.235844, 60.878582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950766, 39.128223, 61.018578>,  <29.634848, 39.753193, 60.804207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950766, 39.128223, 61.018578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608807, 39.000340, 60.855145>,  <29.403631, 38.923611, 60.757084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608807, 39.000340, 60.855145>,  <29.950766, 39.128223, 61.018578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608807, 39.000340, 60.855145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515364, -0.613775, -0.598063,
		-0.059570, -0.721850, 0.689481,
		-0.854898, -0.319707, -0.408579,
		29.352337, 38.904427, 60.732571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041830, 38.440838, 60.946583>,  <29.950766, 39.128223, 61.018578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041830, 38.440838, 60.946583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715267, 38.501369, 60.723663>,  <29.519329, 38.537689, 60.589912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715267, 38.501369, 60.723663>,  <30.041830, 38.440838, 60.946583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715267, 38.501369, 60.723663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398893, -0.550046, -0.733713,
		-0.417568, -0.821310, 0.388699,
		-0.816408, 0.151325, -0.557296,
		29.470345, 38.546768, 60.556473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879658, 37.720348, 60.640793>,  <30.041830, 38.440838, 60.946583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879658, 37.720348, 60.640793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749411, 38.002220, 60.388634>,  <29.671263, 38.171341, 60.237339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749411, 38.002220, 60.388634>,  <29.879658, 37.720348, 60.640793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749411, 38.002220, 60.388634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627996, -0.337240, -0.701349,
		-0.706820, -0.624261, -0.332722,
		-0.325617, 0.704675, -0.630401,
		29.651726, 38.213623, 60.199512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766439, 37.394630, 60.106579>,  <29.879658, 37.720348, 60.640793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766439, 37.394630, 60.106579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789650, 37.770222, 59.970966>,  <29.803576, 37.995579, 59.889599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789650, 37.770222, 59.970966>,  <29.766439, 37.394630, 60.106579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789650, 37.770222, 59.970966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660653, -0.290724, -0.692111,
		-0.748446, -0.183825, -0.637211,
		0.058025, 0.938983, -0.339035,
		29.807058, 38.051918, 59.869255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920258, 37.275871, 59.458908>,  <29.766439, 37.394630, 60.106579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920258, 37.275871, 59.458908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010145, 37.664021, 59.494423>,  <30.064077, 37.896908, 59.515732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010145, 37.664021, 59.494423>,  <29.920258, 37.275871, 59.458908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010145, 37.664021, 59.494423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470034, -0.028128, -0.882200,
		-0.853563, 0.239980, -0.462427,
		0.224717, 0.970370, 0.088790,
		30.077560, 37.955132, 59.521061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286608, 36.956097, 59.763042>,  <29.920258, 37.275871, 59.458908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286608, 36.956097, 59.763042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225840, 36.665321, 59.495167>,  <29.189379, 36.490856, 59.334442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225840, 36.665321, 59.495167>,  <29.286608, 36.956097, 59.763042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225840, 36.665321, 59.495167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971113, 0.235923, -0.035790,
		0.184012, 0.644906, -0.741779,
		-0.151922, -0.726937, -0.669689,
		29.180264, 36.447239, 59.294262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000645, 37.166950, 59.071033>,  <29.286608, 36.956097, 59.763042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000645, 37.166950, 59.071033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888163, 36.794632, 59.164452>,  <28.820673, 36.571239, 59.220505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888163, 36.794632, 59.164452>,  <29.000645, 37.166950, 59.071033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888163, 36.794632, 59.164452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959208, 0.265262, -0.097755,
		0.029039, -0.251510, -0.967419,
		-0.281206, -0.930795, 0.233547,
		28.803801, 36.515392, 59.234516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564169, 36.882633, 58.593716>,  <29.000645, 37.166950, 59.071033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564169, 36.882633, 58.593716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467043, 36.668037, 58.917004>,  <28.408768, 36.539280, 59.110977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467043, 36.668037, 58.917004>,  <28.564169, 36.882633, 58.593716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467043, 36.668037, 58.917004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927320, 0.372983, -0.031013,
		-0.284815, -0.757010, -0.588061,
		-0.242814, -0.536488, 0.808222,
		28.394199, 36.507092, 59.159470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955957, 36.667835, 58.327812>,  <28.564169, 36.882633, 58.593716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955957, 36.667835, 58.327812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.953192, 36.679035, 58.727646>,  <27.951532, 36.685757, 58.967545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.953192, 36.679035, 58.727646>,  <27.955957, 36.667835, 58.327812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953192, 36.679035, 58.727646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904139, 0.426851, -0.018211,
		-0.427183, -0.903889, 0.022367,
		-0.006914, 0.028002, 0.999584,
		27.951117, 36.687435, 59.027519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320923, 36.442722, 58.499157>,  <27.955957, 36.667835, 58.327812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.320923, 36.442722, 58.499157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440535, 36.641827, 58.824810>,  <27.512302, 36.761288, 59.020203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440535, 36.641827, 58.824810>,  <27.320923, 36.442722, 58.499157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440535, 36.641827, 58.824810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936121, 0.318508, 0.149101,
		-0.185093, -0.806716, 0.561204,
		0.299030, 0.497757, 0.814137,
		27.530243, 36.791153, 59.069050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840839, 36.318653, 58.975624>,  <27.320923, 36.442722, 58.499157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840839, 36.318653, 58.975624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036234, 36.647243, 59.093300>,  <27.153471, 36.844398, 59.163906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036234, 36.647243, 59.093300>,  <26.840839, 36.318653, 58.975624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036234, 36.647243, 59.093300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872033, 0.447771, 0.197634,
		0.030621, -0.353088, 0.935089,
		0.488488, 0.821480, 0.294193,
		27.182781, 36.893688, 59.181557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.565416, 36.541897, 59.709354>,  <26.840839, 36.318653, 58.975624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.565416, 36.541897, 59.709354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710651, 36.857426, 59.510990>,  <26.797792, 37.046741, 59.391972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710651, 36.857426, 59.510990>,  <26.565416, 36.541897, 59.709354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710651, 36.857426, 59.510990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865701, 0.482423, 0.133531,
		0.344571, 0.380828, 0.858045,
		0.363088, 0.788821, -0.495912,
		26.819578, 37.094070, 59.362217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387934, 36.998440, 60.130722>,  <26.565416, 36.541897, 59.709354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387934, 36.998440, 60.130722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463705, 37.195827, 59.791168>,  <26.509169, 37.314259, 59.587437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463705, 37.195827, 59.791168>,  <26.387934, 36.998440, 60.130722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.463705, 37.195827, 59.791168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910335, 0.412259, 0.036509,
		0.367977, 0.765856, 0.527312,
		0.189428, 0.493465, -0.848887,
		26.520533, 37.343868, 59.536503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.123627, 37.615707, 60.293636>,  <26.387934, 36.998440, 60.130722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.123627, 37.615707, 60.293636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141270, 37.599850, 59.894341>,  <26.151855, 37.590336, 59.654762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141270, 37.599850, 59.894341>,  <26.123627, 37.615707, 60.293636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.141270, 37.599850, 59.894341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814652, 0.576950, -0.058910,
		0.578270, 0.815816, -0.006851,
		0.044107, -0.039648, -0.998240,
		26.154501, 37.587955, 59.594868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.962246, 35.916157, 48.591881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899437, 36.304939, 48.521862>,  <36.861752, 36.538208, 48.479851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899437, 36.304939, 48.521862>,  <36.962246, 35.916157, 48.591881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899437, 36.304939, 48.521862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738070, 0.002276, 0.674721,
		0.656198, 0.235146, 0.717015,
		-0.157026, 0.971957, -0.175048,
		36.852329, 36.596527, 48.469349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966900, 36.260349, 49.253490>,  <36.962246, 35.916157, 48.591881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966900, 36.260349, 49.253490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.752647, 36.511139, 49.027214>,  <36.624096, 36.661613, 48.891449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.752647, 36.511139, 49.027214>,  <36.966900, 36.260349, 49.253490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752647, 36.511139, 49.027214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709325, 0.029448, 0.704266,
		0.458216, 0.778482, 0.428955,
		-0.535627, 0.626975, -0.565691,
		36.591961, 36.699230, 48.857506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697567, 36.846294, 49.732815>,  <36.966900, 36.260349, 49.253490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697567, 36.846294, 49.732815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461929, 36.894028, 49.413132>,  <36.320545, 36.922668, 49.221321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461929, 36.894028, 49.413132>,  <36.697567, 36.846294, 49.732815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461929, 36.894028, 49.413132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799011, 0.061616, 0.598152,
		0.120624, 0.990941, 0.059052,
		-0.589094, 0.119334, -0.799204,
		36.285202, 36.929829, 49.173370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150200, 37.293301, 50.027512>,  <36.697567, 36.846294, 49.732815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150200, 37.293301, 50.027512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.032207, 37.141609, 49.676701>,  <35.961411, 37.050594, 49.466213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.032207, 37.141609, 49.676701>,  <36.150200, 37.293301, 50.027512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032207, 37.141609, 49.676701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952857, 0.185006, 0.240490,
		0.071053, 0.906618, -0.415927,
		-0.294982, -0.379232, -0.877023,
		35.943714, 37.027840, 49.413593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779732, 37.785366, 49.809868>,  <36.150200, 37.293301, 50.027512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779732, 37.785366, 49.809868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.689362, 37.422417, 49.668091>,  <35.635139, 37.204647, 49.583023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.689362, 37.422417, 49.668091>,  <35.779732, 37.785366, 49.809868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689362, 37.422417, 49.668091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950437, 0.125538, 0.284445,
		-0.213602, 0.401139, -0.890765,
		-0.225927, -0.907374, -0.354442,
		35.621582, 37.150204, 49.561760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111168, 37.902451, 49.701839>,  <35.779732, 37.785366, 49.809868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111168, 37.902451, 49.701839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.126514, 37.509033, 49.631222>,  <35.135723, 37.272984, 49.588852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.126514, 37.509033, 49.631222>,  <35.111168, 37.902451, 49.701839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126514, 37.509033, 49.631222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925484, -0.101600, 0.364906,
		-0.376838, 0.149389, -0.914153,
		0.038365, -0.983544, -0.176544,
		35.138023, 37.213970, 49.578259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448559, 37.698860, 49.396622>,  <35.111168, 37.902451, 49.701839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448559, 37.698860, 49.396622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.585239, 37.358219, 49.555630>,  <34.667248, 37.153835, 49.651035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.585239, 37.358219, 49.555630>,  <34.448559, 37.698860, 49.396622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585239, 37.358219, 49.555630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896560, -0.168548, 0.409600,
		-0.281815, -0.496357, -0.821103,
		0.341703, -0.851599, 0.397514,
		34.687752, 37.102741, 49.674885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951599, 37.097111, 49.290279>,  <34.448559, 37.698860, 49.396622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951599, 37.097111, 49.290279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.185566, 36.998196, 49.599270>,  <34.325947, 36.938847, 49.784664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.185566, 36.998196, 49.599270>,  <33.951599, 37.097111, 49.290279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185566, 36.998196, 49.599270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810141, -0.224212, 0.541664,
		0.039249, -0.942643, -0.331487,
		0.584919, -0.247291, 0.772474,
		34.361042, 36.924007, 49.831013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604816, 36.535282, 49.552155>,  <33.951599, 37.097111, 49.290279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604816, 36.535282, 49.552155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.840508, 36.684669, 49.838741>,  <33.981922, 36.774303, 50.010693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.840508, 36.684669, 49.838741>,  <33.604816, 36.535282, 49.552155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840508, 36.684669, 49.838741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741878, -0.101162, 0.662860,
		0.320040, -0.922108, 0.217464,
		0.589230, 0.373474, 0.716468,
		34.017277, 36.796711, 50.053680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389908, 36.207405, 50.155029>,  <33.604816, 36.535282, 49.552155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389908, 36.207405, 50.155029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.623962, 36.491276, 50.311989>,  <33.764393, 36.661598, 50.406166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.623962, 36.491276, 50.311989>,  <33.389908, 36.207405, 50.155029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623962, 36.491276, 50.311989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594059, 0.045742, 0.803120,
		0.552007, -0.703039, 0.448356,
		0.585133, 0.709678, 0.392397,
		33.799503, 36.704178, 50.429707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566734, 35.956516, 50.886120>,  <33.389908, 36.207405, 50.155029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566734, 35.956516, 50.886120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.579620, 36.355854, 50.867054>,  <33.587353, 36.595455, 50.855614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.579620, 36.355854, 50.867054>,  <33.566734, 35.956516, 50.886120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579620, 36.355854, 50.867054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786780, 0.054741, 0.614801,
		0.616392, 0.017699, 0.787240,
		0.032212, 0.998344, -0.047667,
		33.589283, 36.655357, 50.852753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486465, 36.209648, 51.582706>,  <33.566734, 35.956516, 50.886120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486465, 36.209648, 51.582706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.356430, 36.506077, 51.347717>,  <33.278408, 36.683933, 51.206722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.356430, 36.506077, 51.347717>,  <33.486465, 36.209648, 51.582706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356430, 36.506077, 51.347717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812223, 0.099379, 0.574820,
		0.484365, 0.664031, 0.569608,
		-0.325092, 0.741071, -0.587477,
		33.258904, 36.728397, 51.171474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201729, 36.770382, 51.994324>,  <33.486465, 36.209648, 51.582706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201729, 36.770382, 51.994324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.048527, 36.832302, 51.630051>,  <32.956608, 36.869453, 51.411488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.048527, 36.832302, 51.630051>,  <33.201729, 36.770382, 51.994324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048527, 36.832302, 51.630051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892588, 0.191879, 0.408006,
		0.237900, 0.969134, 0.064679,
		-0.383002, 0.154796, -0.910685,
		32.933628, 36.878742, 51.356846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646233, 37.191456, 52.108826>,  <33.201729, 36.770382, 51.994324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646233, 37.191456, 52.108826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.581032, 37.079472, 51.730396>,  <32.541912, 37.012283, 51.503338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.581032, 37.079472, 51.730396>,  <32.646233, 37.191456, 52.108826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581032, 37.079472, 51.730396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983879, 0.117628, 0.134710,
		0.073572, 0.952779, -0.294617,
		-0.163004, -0.279956, -0.946073,
		32.532131, 36.995483, 51.446575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187756, 37.583302, 52.037785>,  <32.646233, 37.191456, 52.108826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187756, 37.583302, 52.037785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.133045, 37.297379, 51.763458>,  <32.100220, 37.125824, 51.598862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.133045, 37.297379, 51.763458>,  <32.187756, 37.583302, 52.037785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133045, 37.297379, 51.763458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988331, 0.051608, 0.143315,
		-0.067050, 0.697410, -0.713529,
		-0.136773, -0.714811, -0.685812,
		32.092014, 37.082935, 51.557716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733370, 37.886456, 51.480801>,  <32.187756, 37.583302, 52.037785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733370, 37.886456, 51.480801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.723984, 37.486683, 51.471123>,  <31.718353, 37.246819, 51.465317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.723984, 37.486683, 51.471123>,  <31.733370, 37.886456, 51.480801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723984, 37.486683, 51.471123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999147, 0.022620, 0.034549,
		-0.033982, 0.024984, -0.999110,
		-0.023463, -0.999432, -0.024194,
		31.716946, 37.186852, 51.463863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064320, 37.834259, 51.211140>,  <31.733370, 37.886456, 51.480801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064320, 37.834259, 51.211140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.117432, 37.456440, 51.331272>,  <31.149298, 37.229748, 51.403351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.117432, 37.456440, 51.331272>,  <31.064320, 37.834259, 51.211140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117432, 37.456440, 51.331272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975887, -0.071624, 0.206189,
		-0.173245, -0.320467, -0.931283,
		0.132778, -0.944548, 0.300331,
		31.157265, 37.173077, 51.421371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661837, 37.332603, 50.743809>,  <31.064320, 37.834259, 51.211140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661837, 37.332603, 50.743809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.707851, 37.194805, 51.116493>,  <30.735460, 37.112125, 51.340103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.707851, 37.194805, 51.116493>,  <30.661837, 37.332603, 50.743809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707851, 37.194805, 51.116493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985295, -0.158855, 0.062915,
		0.126333, -0.925250, -0.357706,
		0.115035, -0.344498, 0.931713,
		30.742361, 37.091457, 51.396008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316454, 36.719990, 50.700886>,  <30.661837, 37.332603, 50.743809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316454, 36.719990, 50.700886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.359196, 36.797108, 51.091045>,  <30.384840, 36.843380, 51.325142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.359196, 36.797108, 51.091045>,  <30.316454, 36.719990, 50.700886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359196, 36.797108, 51.091045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896846, -0.404830, 0.178266,
		0.429242, -0.893835, 0.129653,
		0.106853, 0.192798, 0.975403,
		30.391253, 36.854946, 51.383667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156662, 36.094494, 51.075191>,  <30.316454, 36.719990, 50.700886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156662, 36.094494, 51.075191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.115019, 36.376499, 51.355797>,  <30.090033, 36.545704, 51.524158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.115019, 36.376499, 51.355797>,  <30.156662, 36.094494, 51.075191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115019, 36.376499, 51.355797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830354, -0.449844, 0.328864,
		0.547425, -0.548266, 0.632243,
		-0.104106, 0.705014, 0.701510,
		30.083788, 36.588005, 51.566250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884077, 35.740067, 51.626060>,  <30.156662, 36.094494, 51.075191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884077, 35.740067, 51.626060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.773451, 36.115364, 51.709198>,  <29.707075, 36.340546, 51.759083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.773451, 36.115364, 51.709198>,  <29.884077, 35.740067, 51.626060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773451, 36.115364, 51.709198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864866, -0.337300, 0.371802,
		0.418949, -0.076932, 0.904745,
		-0.276567, 0.938249, 0.207847,
		29.690481, 36.396839, 51.771553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574892, 35.732265, 52.317894>,  <29.884077, 35.740067, 51.626060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574892, 35.732265, 52.317894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.440140, 36.063053, 52.137836>,  <29.359287, 36.261524, 52.029800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.440140, 36.063053, 52.137836>,  <29.574892, 35.732265, 52.317894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440140, 36.063053, 52.137836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938045, -0.253593, 0.236140,
		0.081127, 0.501809, 0.861166,
		-0.336882, 0.826970, -0.450146,
		29.339075, 36.311146, 52.002792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084631, 36.111652, 52.852058>,  <29.574892, 35.732265, 52.317894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084631, 36.111652, 52.852058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.986528, 36.242386, 52.486977>,  <28.927666, 36.320827, 52.267929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.986528, 36.242386, 52.486977>,  <29.084631, 36.111652, 52.852058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986528, 36.242386, 52.486977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969455, -0.080764, 0.231588,
		0.001978, 0.941624, 0.336660,
		-0.245259, 0.326835, -0.912703,
		28.912951, 36.340435, 52.213165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528374, 36.635094, 52.881737>,  <29.084631, 36.111652, 52.852058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528374, 36.635094, 52.881737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.505857, 36.531063, 52.496159>,  <28.492348, 36.468643, 52.264812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.505857, 36.531063, 52.496159>,  <28.528374, 36.635094, 52.881737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505857, 36.531063, 52.496159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998306, 0.028923, 0.050491,
		0.014748, 0.965154, -0.261268,
		-0.056289, -0.260081, -0.963945,
		28.488972, 36.453037, 52.206974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935602, 36.974529, 52.652290>,  <28.528374, 36.635094, 52.881737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935602, 36.974529, 52.652290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.983997, 36.740688, 52.331390>,  <28.013035, 36.600384, 52.138851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.983997, 36.740688, 52.331390>,  <27.935602, 36.974529, 52.652290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983997, 36.740688, 52.331390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988659, -0.143404, -0.044600,
		-0.088971, 0.798543, -0.595326,
		0.120987, -0.584606, -0.802246,
		28.020294, 36.565308, 52.090717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457130, 37.255104, 52.028008>,  <27.935602, 36.974529, 52.652290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457130, 37.255104, 52.028008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.543659, 36.865776, 51.997417>,  <27.595577, 36.632179, 51.979061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.543659, 36.865776, 51.997417>,  <27.457130, 37.255104, 52.028008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543659, 36.865776, 51.997417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974895, -0.219577, 0.036952,
		-0.052760, 0.066566, -0.996386,
		0.216324, -0.973321, -0.076480,
		27.608557, 36.573780, 51.974472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934975, 37.020756, 51.544285>,  <27.457130, 37.255104, 52.028008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934975, 37.020756, 51.544285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.079340, 36.690151, 51.717079>,  <27.165958, 36.491787, 51.820755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.079340, 36.690151, 51.717079>,  <26.934975, 37.020756, 51.544285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079340, 36.690151, 51.717079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918935, -0.394175, 0.013573,
		0.159061, -0.401868, -0.901777,
		0.360913, -0.826516, 0.431988,
		27.187614, 36.442196, 51.846676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546082, 36.497551, 51.216423>,  <26.934975, 37.020756, 51.544285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546082, 36.497551, 51.216423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.698410, 36.293079, 51.524624>,  <26.789806, 36.170395, 51.709545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.698410, 36.293079, 51.524624>,  <26.546082, 36.497551, 51.216423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698410, 36.293079, 51.524624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858806, -0.504358, 0.089856,
		0.342677, -0.695931, -0.631072,
		0.380820, -0.511177, 0.770502,
		26.812656, 36.139725, 51.755775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272289, 35.799461, 51.150581>,  <26.546082, 36.497551, 51.216423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272289, 35.799461, 51.150581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.391346, 35.824902, 51.531605>,  <26.462780, 35.840164, 51.760220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.391346, 35.824902, 51.531605>,  <26.272289, 35.799461, 51.150581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391346, 35.824902, 51.531605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847323, -0.442093, 0.294276,
		0.439834, -0.894712, -0.077696,
		0.297642, 0.063599, 0.952557,
		26.480639, 35.843983, 51.817371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075476, 35.195271, 51.342407>,  <26.272289, 35.799461, 51.150581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075476, 35.195271, 51.342407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.112555, 35.420761, 51.670704>,  <26.134802, 35.556057, 51.867683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.112555, 35.420761, 51.670704>,  <26.075476, 35.195271, 51.342407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112555, 35.420761, 51.670704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812244, -0.433957, 0.389797,
		0.575906, -0.702776, 0.417657,
		0.092695, 0.563726, 0.820744,
		26.140364, 35.589878, 51.916927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943991, 34.756927, 51.758240>,  <26.075476, 35.195271, 51.342407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943991, 34.756927, 51.758240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.846302, 35.102211, 51.934978>,  <25.787689, 35.309380, 52.041023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.846302, 35.102211, 51.934978>,  <25.943991, 34.756927, 51.758240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.846302, 35.102211, 51.934978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902653, -0.368868, 0.221708,
		0.354364, -0.344693, 0.869260,
		-0.244221, 0.863205, 0.441851,
		25.773035, 35.361172, 52.067535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673679, 34.563297, 52.403713>,  <25.943991, 34.756927, 51.758240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673679, 34.563297, 52.403713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.522299, 34.927807, 52.338768>,  <25.431471, 35.146511, 52.299801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.522299, 34.927807, 52.338768>,  <25.673679, 34.563297, 52.403713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522299, 34.927807, 52.338768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897953, -0.318879, 0.303309,
		0.224622, 0.260581, 0.938958,
		-0.378450, 0.911270, -0.162362,
		25.408764, 35.201187, 52.290058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.320229, 34.703461, 53.016197>,  <25.673679, 34.563297, 52.403713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.320229, 34.703461, 53.016197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.166252, 34.933105, 52.727139>,  <25.073866, 35.070892, 52.553703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.166252, 34.933105, 52.727139>,  <25.320229, 34.703461, 53.016197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.166252, 34.933105, 52.727139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922833, -0.227404, 0.310912,
		0.014167, 0.786561, 0.617349,
		-0.384939, 0.574115, -0.722643,
		25.050770, 35.105339, 52.510345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.999941, 35.186916, 53.476238>,  <25.320229, 34.703461, 53.016197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.999941, 35.186916, 53.476238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.866838, 35.210793, 53.099789>,  <24.786976, 35.225117, 52.873920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.866838, 35.210793, 53.099789>,  <24.999941, 35.186916, 53.476238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.866838, 35.210793, 53.099789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942952, -0.032325, 0.331356,
		-0.010643, 0.997693, 0.067041,
		-0.332758, 0.059690, -0.941121,
		24.767012, 35.228699, 52.817451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.318399, 35.656269, 53.441456>,  <24.999941, 35.186916, 53.476238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.318399, 35.656269, 53.441456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.291321, 35.420368, 53.119560>,  <24.275074, 35.278828, 52.926422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.291321, 35.420368, 53.119560>,  <24.318399, 35.656269, 53.441456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.291321, 35.420368, 53.119560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984770, -0.089971, 0.148776,
		-0.160144, 0.802558, -0.574677,
		-0.067697, -0.589750, -0.804743,
		24.271011, 35.243443, 52.878136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.947098, 32.993393, 48.225121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559715, 32.956573, 48.132504>,  <35.327286, 32.934483, 48.076935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559715, 32.956573, 48.132504>,  <35.947098, 32.993393, 48.225121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559715, 32.956573, 48.132504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248585, 0.293514, 0.923068,
		-0.017008, 0.951513, -0.307139,
		-0.968461, -0.092050, -0.231540,
		35.269176, 32.928959, 48.063042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547798, 33.683491, 48.307587>,  <35.947098, 32.993393, 48.225121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547798, 33.683491, 48.307587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.301548, 33.372063, 48.356300>,  <35.153797, 33.185207, 48.385529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.301548, 33.372063, 48.356300>,  <35.547798, 33.683491, 48.307587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301548, 33.372063, 48.356300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248059, 0.338142, 0.907814,
		-0.747977, 0.528667, -0.401301,
		-0.615628, -0.778570, 0.121782,
		35.116859, 33.138493, 48.392834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929756, 34.000980, 48.537483>,  <35.547798, 33.683491, 48.307587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929756, 34.000980, 48.537483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.921188, 33.613350, 48.635811>,  <34.916050, 33.380772, 48.694809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.921188, 33.613350, 48.635811>,  <34.929756, 34.000980, 48.537483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921188, 33.613350, 48.635811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434855, 0.230426, 0.870520,
		-0.900246, -0.088252, -0.426344,
		-0.021415, -0.969079, 0.245817,
		34.914764, 33.322624, 48.709557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354919, 33.997391, 48.949535>,  <34.929756, 34.000980, 48.537483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354919, 33.997391, 48.949535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.535774, 33.655380, 49.051132>,  <34.644287, 33.450176, 49.112091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.535774, 33.655380, 49.051132>,  <34.354919, 33.997391, 48.949535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535774, 33.655380, 49.051132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232570, 0.161896, 0.959010,
		-0.861096, -0.492671, -0.125654,
		0.452134, -0.855023, 0.253988,
		34.671413, 33.398872, 49.127327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814411, 33.509979, 49.205536>,  <34.354919, 33.997391, 48.949535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814411, 33.509979, 49.205536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.165314, 33.419266, 49.374763>,  <34.375854, 33.364838, 49.476299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.165314, 33.419266, 49.374763>,  <33.814411, 33.509979, 49.205536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165314, 33.419266, 49.374763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439175, -0.023408, 0.898097,
		-0.193777, -0.973662, -0.120136,
		0.877255, -0.226791, 0.423072,
		34.428490, 33.351231, 49.501686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697899, 32.996754, 49.743034>,  <33.814411, 33.509979, 49.205536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697899, 32.996754, 49.743034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065834, 33.108227, 49.853481>,  <34.286594, 33.175110, 49.919750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065834, 33.108227, 49.853481>,  <33.697899, 32.996754, 49.743034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065834, 33.108227, 49.853481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217605, -0.223189, 0.950176,
		0.326425, -0.934089, -0.144654,
		0.919834, 0.278684, 0.276117,
		34.341785, 33.191833, 49.936317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825180, 32.543076, 50.245903>,  <33.697899, 32.996754, 49.743034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825180, 32.543076, 50.245903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.090088, 32.836510, 50.306889>,  <34.249035, 33.012569, 50.343479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.090088, 32.836510, 50.306889>,  <33.825180, 32.543076, 50.245903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090088, 32.836510, 50.306889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238898, 0.013879, 0.970945,
		0.710156, -0.679454, 0.184444,
		0.662273, 0.733587, 0.152464,
		34.288769, 33.056587, 50.352627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233677, 32.355293, 50.888298>,  <33.825180, 32.543076, 50.245903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233677, 32.355293, 50.888298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292427, 32.748295, 50.842506>,  <34.327679, 32.984097, 50.815029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292427, 32.748295, 50.842506>,  <34.233677, 32.355293, 50.888298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292427, 32.748295, 50.842506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172448, 0.139398, 0.975105,
		0.974007, -0.123477, 0.189905,
		0.146876, 0.982508, -0.114481,
		34.336491, 33.043049, 50.808163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840950, 32.573879, 51.371048>,  <34.233677, 32.355293, 50.888298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840950, 32.573879, 51.371048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.586521, 32.870422, 51.285439>,  <34.433865, 33.048347, 51.234074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.586521, 32.870422, 51.285439>,  <34.840950, 32.573879, 51.371048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586521, 32.870422, 51.285439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299706, 0.018228, 0.953857,
		0.711050, 0.670864, 0.210595,
		-0.636069, 0.741357, -0.214023,
		34.395699, 33.092831, 51.221233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724751, 32.860832, 51.963707>,  <34.840950, 32.573879, 51.371048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724751, 32.860832, 51.963707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452633, 33.065224, 51.753525>,  <34.289364, 33.187859, 51.627415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452633, 33.065224, 51.753525>,  <34.724751, 32.860832, 51.963707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452633, 33.065224, 51.753525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479332, 0.232181, 0.846364,
		0.554473, 0.827644, 0.086976,
		-0.680294, 0.510977, -0.525455,
		34.248543, 33.218517, 51.595890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714207, 33.560169, 52.033897>,  <34.724751, 32.860832, 51.963707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714207, 33.560169, 52.033897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.338699, 33.451103, 51.949638>,  <34.113396, 33.385666, 51.899082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.338699, 33.451103, 51.949638>,  <34.714207, 33.560169, 52.033897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338699, 33.451103, 51.949638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267404, 0.191031, 0.944459,
		-0.217279, 0.942954, -0.252245,
		-0.938768, -0.272662, -0.210643,
		34.057068, 33.369305, 51.886444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200451, 34.015038, 52.498001>,  <34.714207, 33.560169, 52.033897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200451, 34.015038, 52.498001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.931786, 33.765488, 52.338173>,  <33.770588, 33.615757, 52.242275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.931786, 33.765488, 52.338173>,  <34.200451, 34.015038, 52.498001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931786, 33.765488, 52.338173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654168, 0.246259, 0.715136,
		-0.347757, 0.741713, -0.573521,
		-0.671661, -0.623873, -0.399567,
		33.730286, 33.578327, 52.218304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148811, 34.791756, 52.428154>,  <34.200451, 34.015038, 52.498001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148811, 34.791756, 52.428154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.434597, 34.951855, 52.657707>,  <34.606068, 35.047916, 52.795441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.434597, 34.951855, 52.657707>,  <34.148811, 34.791756, 52.428154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434597, 34.951855, 52.657707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670658, -0.158015, -0.724741,
		-0.199396, 0.902680, -0.381326,
		0.714465, 0.400250, 0.573882,
		34.648937, 35.071930, 52.829872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531044, 35.301971, 51.950462>,  <34.148811, 34.791756, 52.428154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531044, 35.301971, 51.950462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.780842, 35.229969, 52.254463>,  <34.930721, 35.186768, 52.436863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.780842, 35.229969, 52.254463>,  <34.531044, 35.301971, 51.950462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780842, 35.229969, 52.254463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775004, 0.022154, -0.631568,
		0.096851, 0.983416, 0.153342,
		0.624491, -0.180009, 0.760005,
		34.968189, 35.175968, 52.482464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143581, 35.797783, 51.897621>,  <34.531044, 35.301971, 51.950462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143581, 35.797783, 51.897621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268467, 35.487972, 52.117668>,  <35.343399, 35.302086, 52.249695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268467, 35.487972, 52.117668>,  <35.143581, 35.797783, 51.897621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268467, 35.487972, 52.117668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841002, -0.043990, -0.539240,
		0.441856, 0.631009, 0.637645,
		0.312215, -0.774528, 0.550117,
		35.362133, 35.255615, 52.282703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748306, 35.983318, 52.073917>,  <35.143581, 35.797783, 51.897621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748306, 35.983318, 52.073917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.747978, 35.583530, 52.086952>,  <35.747784, 35.343658, 52.094772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.747978, 35.583530, 52.086952>,  <35.748306, 35.983318, 52.073917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747978, 35.583530, 52.086952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843268, -0.018203, -0.537186,
		0.537493, 0.027039, 0.842834,
		-0.000818, -0.999469, 0.032585,
		35.747734, 35.283691, 52.096729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378338, 35.821407, 52.224052>,  <35.748306, 35.983318, 52.073917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378338, 35.821407, 52.224052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.240902, 35.478050, 52.071682>,  <36.158440, 35.272034, 51.980259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.240902, 35.478050, 52.071682>,  <36.378338, 35.821407, 52.224052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240902, 35.478050, 52.071682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812595, -0.068409, -0.578800,
		0.470782, -0.508404, 0.721033,
		-0.343589, -0.858397, -0.380921,
		36.137825, 35.220531, 51.957405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950390, 35.481594, 52.136200>,  <36.378338, 35.821407, 52.224052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950390, 35.481594, 52.136200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.684849, 35.307552, 51.892899>,  <36.525524, 35.203125, 51.746918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.684849, 35.307552, 51.892899>,  <36.950390, 35.481594, 52.136200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684849, 35.307552, 51.892899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679454, -0.011082, -0.733634,
		0.312470, -0.900309, 0.302994,
		-0.663856, -0.435109, -0.608256,
		36.485691, 35.177021, 51.710423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314800, 34.943642, 51.868675>,  <36.950390, 35.481594, 52.136200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314800, 34.943642, 51.868675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009621, 34.998459, 51.615971>,  <36.826511, 35.031349, 51.464348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009621, 34.998459, 51.615971>,  <37.314800, 34.943642, 51.868675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009621, 34.998459, 51.615971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638947, 0.011372, -0.769166,
		-0.098227, -0.990499, -0.096241,
		-0.762953, 0.137046, -0.631760,
		36.780735, 35.039574, 51.426441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388832, 34.358444, 51.330120>,  <37.314800, 34.943642, 51.868675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388832, 34.358444, 51.330120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.179348, 34.669880, 51.191826>,  <37.053658, 34.856743, 51.108849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.179348, 34.669880, 51.191826>,  <37.388832, 34.358444, 51.330120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179348, 34.669880, 51.191826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637348, 0.088812, -0.765441,
		-0.565258, -0.621220, -0.542743,
		-0.523709, 0.778588, -0.345732,
		37.022236, 34.903458, 51.088108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617233, 34.330711, 50.650486>,  <37.388832, 34.358444, 51.330120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617233, 34.330711, 50.650486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.433884, 34.686054, 50.639774>,  <37.323875, 34.899258, 50.633347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.433884, 34.686054, 50.639774>,  <37.617233, 34.330711, 50.650486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433884, 34.686054, 50.639774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531519, 0.249856, -0.809357,
		-0.712306, -0.385224, -0.586706,
		-0.458375, 0.888355, -0.026780,
		37.296371, 34.952560, 50.631741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306755, 34.431534, 49.891624>,  <37.617233, 34.330711, 50.650486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306755, 34.431534, 49.891624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.377182, 34.767735, 50.096581>,  <37.419437, 34.969456, 50.219555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.377182, 34.767735, 50.096581>,  <37.306755, 34.431534, 49.891624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377182, 34.767735, 50.096581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624866, 0.306774, -0.717936,
		-0.760619, 0.446586, -0.471190,
		0.176072, 0.840506, 0.512395,
		37.430004, 35.019886, 50.250298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396164, 34.918617, 49.350525>,  <37.306755, 34.431534, 49.891624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396164, 34.918617, 49.350525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547646, 35.101704, 49.672287>,  <37.638535, 35.211555, 49.865345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547646, 35.101704, 49.672287>,  <37.396164, 34.918617, 49.350525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547646, 35.101704, 49.672287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607237, 0.533034, -0.589185,
		-0.698458, 0.711596, -0.076079,
		0.378709, 0.457718, 0.804409,
		37.661259, 35.239017, 49.913609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313412, 35.648300, 49.206238>,  <37.396164, 34.918617, 49.350525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313412, 35.648300, 49.206238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.605015, 35.586426, 49.472958>,  <37.779976, 35.549301, 49.632988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.605015, 35.586426, 49.472958>,  <37.313412, 35.648300, 49.206238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605015, 35.586426, 49.472958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641881, 0.492862, -0.587432,
		-0.237773, 0.856248, 0.458589,
		0.729008, -0.154684, 0.666798,
		37.823719, 35.540020, 49.672997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707825, 36.304447, 49.308998>,  <37.313412, 35.648300, 49.206238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707825, 36.304447, 49.308998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.994732, 36.062016, 49.446522>,  <38.166874, 35.916557, 49.529037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.994732, 36.062016, 49.446522>,  <37.707825, 36.304447, 49.308998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994732, 36.062016, 49.446522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693999, 0.577154, -0.430417,
		0.062435, 0.547325, 0.834588,
		0.717264, -0.606076, 0.343809,
		38.209911, 35.880192, 49.549664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155487, 36.764706, 49.558136>,  <37.707825, 36.304447, 49.308998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155487, 36.764706, 49.558136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.365749, 36.432552, 49.484215>,  <38.491909, 36.233261, 49.439861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.365749, 36.432552, 49.484215>,  <38.155487, 36.764706, 49.558136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365749, 36.432552, 49.484215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642238, 0.529830, -0.553903,
		0.557865, 0.172476, 0.811812,
		0.525658, -0.830380, -0.184804,
		38.523445, 36.183437, 49.428772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697300, 37.220451, 49.928772>,  <38.155487, 36.764706, 49.558136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697300, 37.220451, 49.928772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675900, 37.314026, 50.317085>,  <38.663059, 37.370171, 50.550072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675900, 37.314026, 50.317085>,  <38.697300, 37.220451, 49.928772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675900, 37.314026, 50.317085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216605, 0.946305, -0.239975,
		-0.974792, -0.223116, 0.000040,
		-0.053505, 0.233935, 0.970779,
		38.659847, 37.384205, 50.608318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251797, 37.811287, 49.896706>,  <38.697300, 37.220451, 49.928772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251797, 37.811287, 49.896706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.420509, 37.834743, 50.258625>,  <38.521736, 37.848816, 50.475777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.420509, 37.834743, 50.258625>,  <38.251797, 37.811287, 49.896706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420509, 37.834743, 50.258625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181575, 0.983154, 0.020928,
		-0.888331, -0.173116, 0.425322,
		0.421780, 0.058637, 0.904800,
		38.547043, 37.852333, 50.530064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332584, 38.540993, 49.747227>,  <38.251797, 37.811287, 49.896706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332584, 38.540993, 49.747227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.293709, 38.788368, 49.435307>,  <38.270382, 38.936794, 49.248154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.293709, 38.788368, 49.435307>,  <38.332584, 38.540993, 49.747227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293709, 38.788368, 49.435307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879252, 0.313764, 0.358425,
		0.466337, 0.720475, 0.513269,
		-0.097191, 0.618440, -0.779799,
		38.264553, 38.973900, 49.201366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227795, 39.224064, 49.894928>,  <38.332584, 38.540993, 49.747227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227795, 39.224064, 49.894928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.052540, 39.164551, 49.540325>,  <37.947388, 39.128845, 49.327564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.052540, 39.164551, 49.540325>,  <38.227795, 39.224064, 49.894928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052540, 39.164551, 49.540325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801765, 0.510612, 0.310561,
		0.406458, 0.846841, -0.343005,
		-0.438138, -0.148780, -0.886510,
		37.921097, 39.119919, 49.274372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992821, 39.957417, 49.640900>,  <38.227795, 39.224064, 49.894928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992821, 39.957417, 49.640900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.799854, 39.627823, 49.522026>,  <37.684074, 39.430065, 49.450703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.799854, 39.627823, 49.522026>,  <37.992821, 39.957417, 49.640900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799854, 39.627823, 49.522026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839531, 0.338143, 0.425261,
		-0.249916, 0.454653, -0.854887,
		-0.482421, -0.823984, -0.297188,
		37.655128, 39.380627, 49.432869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401684, 40.210625, 49.633698>,  <37.992821, 39.957417, 49.640900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401684, 40.210625, 49.633698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.332348, 39.816696, 49.630291>,  <37.290745, 39.580338, 49.628246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.332348, 39.816696, 49.630291>,  <37.401684, 40.210625, 49.633698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332348, 39.816696, 49.630291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700461, 0.117201, 0.704002,
		-0.692320, 0.128003, -0.710147,
		-0.173344, -0.984825, -0.008521,
		37.280346, 39.521248, 49.627735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822483, 40.079613, 49.453632>,  <37.401684, 40.210625, 49.633698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822483, 40.079613, 49.453632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.874786, 39.726566, 49.634251>,  <36.906170, 39.514740, 49.742622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.874786, 39.726566, 49.634251>,  <36.822483, 40.079613, 49.453632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874786, 39.726566, 49.634251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737942, 0.217512, 0.638851,
		-0.662075, -0.416753, -0.622875,
		0.130760, -0.882613, 0.451549,
		36.914013, 39.461784, 49.769714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174213, 39.902580, 49.556507>,  <36.822483, 40.079613, 49.453632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174213, 39.902580, 49.556507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.375271, 39.676476, 49.818142>,  <36.495903, 39.540813, 49.975124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.375271, 39.676476, 49.818142>,  <36.174213, 39.902580, 49.556507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375271, 39.676476, 49.818142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628631, 0.280396, 0.725398,
		-0.593444, -0.775793, -0.214404,
		0.502641, -0.565264, 0.654087,
		36.526062, 39.506897, 50.014366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613243, 39.394054, 49.778694>,  <36.174213, 39.902580, 49.556507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613243, 39.394054, 49.778694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.910969, 39.407734, 50.045475>,  <36.089603, 39.415943, 50.205544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.910969, 39.407734, 50.045475>,  <35.613243, 39.394054, 49.778694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910969, 39.407734, 50.045475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664368, 0.139444, 0.734282,
		-0.067891, -0.989639, 0.126511,
		0.744316, 0.034199, 0.666952,
		36.134262, 39.417995, 50.245560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372326, 38.946949, 50.323433>,  <35.613243, 39.394054, 49.778694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372326, 38.946949, 50.323433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667606, 39.163937, 50.483822>,  <35.844776, 39.294128, 50.580055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.667606, 39.163937, 50.483822>,  <35.372326, 38.946949, 50.323433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667606, 39.163937, 50.483822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597724, 0.250469, 0.761571,
		0.312705, -0.801862, 0.509149,
		0.738201, 0.542478, 0.400970,
		35.889069, 39.326679, 50.604115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441299, 38.674164, 51.020691>,  <35.372326, 38.946949, 50.323433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441299, 38.674164, 51.020691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.609356, 39.036648, 51.001675>,  <35.710190, 39.254139, 50.990265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.609356, 39.036648, 51.001675>,  <35.441299, 38.674164, 51.020691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609356, 39.036648, 51.001675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623819, 0.326474, 0.710117,
		0.659036, -0.268695, 0.702478,
		0.420146, 0.906210, -0.047541,
		35.735401, 39.308510, 50.987411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559135, 38.980831, 51.776047>,  <35.441299, 38.674164, 51.020691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559135, 38.980831, 51.776047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553665, 39.295181, 51.528755>,  <35.550385, 39.483791, 51.380379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553665, 39.295181, 51.528755>,  <35.559135, 38.980831, 51.776047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553665, 39.295181, 51.528755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496760, 0.531247, 0.686299,
		0.867780, 0.316498, 0.383128,
		-0.013677, 0.785879, -0.618229,
		35.549561, 39.530945, 51.343285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708260, 39.527599, 52.229420>,  <35.559135, 38.980831, 51.776047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708260, 39.527599, 52.229420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.563168, 39.696552, 51.897148>,  <35.476112, 39.797924, 51.697784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.563168, 39.696552, 51.897148>,  <35.708260, 39.527599, 52.229420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563168, 39.696552, 51.897148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582834, 0.592708, 0.555881,
		0.727141, 0.685780, 0.031185,
		-0.362728, 0.422379, -0.830677,
		35.454350, 39.823265, 51.647945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726017, 40.247910, 52.319855>,  <35.708260, 39.527599, 52.229420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726017, 40.247910, 52.319855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.461525, 40.207214, 52.022552>,  <35.302830, 40.182796, 51.844170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.461525, 40.207214, 52.022552>,  <35.726017, 40.247910, 52.319855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461525, 40.207214, 52.022552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553333, 0.735152, 0.391631,
		0.506560, 0.670224, -0.542400,
		-0.661227, -0.101743, -0.743255,
		35.263157, 40.176693, 51.799576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546684, 40.864422, 52.074223>,  <35.726017, 40.247910, 52.319855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546684, 40.864422, 52.074223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.242512, 40.625404, 51.972492>,  <35.060009, 40.481995, 51.911453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.242512, 40.625404, 51.972492>,  <35.546684, 40.864422, 52.074223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242512, 40.625404, 51.972492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647824, 0.670576, 0.361458,
		-0.045444, 0.439621, -0.897033,
		-0.760433, -0.597545, -0.254323,
		35.014381, 40.446140, 51.896194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982880, 41.296288, 51.999569>,  <35.546684, 40.864422, 52.074223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982880, 41.296288, 51.999569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.783302, 40.951790, 52.038174>,  <34.663555, 40.745090, 52.061337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.783302, 40.951790, 52.038174>,  <34.982880, 41.296288, 51.999569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783302, 40.951790, 52.038174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758975, 0.488004, 0.431056,
		-0.418342, 0.141825, -0.897149,
		-0.498946, -0.861242, 0.096511,
		34.633617, 40.693417, 52.067127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212540, 41.357510, 51.730350>,  <34.982880, 41.296288, 51.999569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212540, 41.357510, 51.730350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275852, 41.093117, 52.023758>,  <34.313839, 40.934479, 52.199802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275852, 41.093117, 52.023758>,  <34.212540, 41.357510, 51.730350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275852, 41.093117, 52.023758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793881, 0.356531, 0.492583,
		-0.587112, -0.660290, -0.468312,
		0.158280, -0.660986, 0.733516,
		34.323338, 40.894821, 52.243813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464546, 41.228844, 51.974384>,  <34.212540, 41.357510, 51.730350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464546, 41.228844, 51.974384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.682072, 41.047600, 52.256931>,  <33.812588, 40.938854, 52.426460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.682072, 41.047600, 52.256931>,  <33.464546, 41.228844, 51.974384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682072, 41.047600, 52.256931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696589, 0.225689, 0.681050,
		-0.468011, -0.862413, -0.192898,
		0.543811, -0.453109, 0.706372,
		33.845215, 40.911667, 52.468842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037621, 40.852497, 52.321983>,  <33.464546, 41.228844, 51.974384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037621, 40.852497, 52.321983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.324329, 40.886852, 52.598785>,  <33.496353, 40.907467, 52.764866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.324329, 40.886852, 52.598785>,  <33.037621, 40.852497, 52.321983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324329, 40.886852, 52.598785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690965, 0.221068, 0.688256,
		-0.093867, -0.971469, 0.217800,
		0.716768, 0.085888, 0.692002,
		33.539360, 40.912621, 52.806385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814034, 40.478584, 52.890152>,  <33.037621, 40.852497, 52.321983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814034, 40.478584, 52.890152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.066277, 40.743286, 53.052341>,  <33.217625, 40.902107, 53.149654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.066277, 40.743286, 53.052341>,  <32.814034, 40.478584, 52.890152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066277, 40.743286, 53.052341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601129, 0.086022, 0.794509,
		0.490891, -0.744768, 0.452047,
		0.630611, 0.661756, 0.405475,
		33.255459, 40.941814, 53.173985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848232, 40.309734, 53.530037>,  <32.814034, 40.478584, 52.890152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848232, 40.309734, 53.530037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991055, 40.682976, 53.547115>,  <33.076748, 40.906921, 53.557362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991055, 40.682976, 53.547115>,  <32.848232, 40.309734, 53.530037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991055, 40.682976, 53.547115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606778, 0.196954, 0.770084,
		0.710162, -0.300869, 0.636512,
		0.357058, 0.933106, 0.042692,
		33.098171, 40.962906, 53.559921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927349, 40.467022, 54.153725>,  <32.848232, 40.309734, 53.530037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927349, 40.467022, 54.153725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.913834, 40.836136, 54.000191>,  <32.905724, 41.057606, 53.908070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.913834, 40.836136, 54.000191>,  <32.927349, 40.467022, 54.153725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913834, 40.836136, 54.000191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489778, 0.319487, 0.811200,
		0.871193, 0.215398, 0.441166,
		-0.033784, 0.922785, -0.383831,
		32.903698, 41.112972, 53.885040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177837, 40.934711, 54.671761>,  <32.927349, 40.467022, 54.153725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177837, 40.934711, 54.671761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.965088, 41.149273, 54.409649>,  <32.837440, 41.278008, 54.252384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.965088, 41.149273, 54.409649>,  <33.177837, 40.934711, 54.671761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965088, 41.149273, 54.409649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618072, 0.283069, 0.733389,
		0.578879, 0.795076, 0.180979,
		-0.531871, 0.536401, -0.655277,
		32.805527, 41.310192, 54.213066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944469, 41.425472, 55.078934>,  <33.177837, 40.934711, 54.671761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944469, 41.425472, 55.078934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.727688, 41.495590, 54.750164>,  <32.597618, 41.537659, 54.552902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.727688, 41.495590, 54.750164>,  <32.944469, 41.425472, 55.078934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727688, 41.495590, 54.750164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667823, 0.503897, 0.547814,
		0.510191, 0.845790, -0.156026,
		-0.541957, 0.175292, -0.821922,
		32.565102, 41.548180, 54.503586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864628, 42.166489, 54.978207>,  <32.944469, 41.425472, 55.078934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864628, 42.166489, 54.978207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.562794, 41.976494, 54.797104>,  <32.381691, 41.862499, 54.688442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.562794, 41.976494, 54.797104>,  <32.864628, 42.166489, 54.978207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562794, 41.976494, 54.797104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652115, 0.465931, 0.598042,
		-0.073106, 0.746524, -0.661330,
		-0.754587, -0.474984, -0.452757,
		32.336418, 41.834000, 54.661278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345322, 42.605633, 54.987259>,  <32.864628, 42.166489, 54.978207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345322, 42.605633, 54.987259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.128677, 42.275211, 54.924900>,  <31.998692, 42.076958, 54.887486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.128677, 42.275211, 54.924900>,  <32.345322, 42.605633, 54.987259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128677, 42.275211, 54.924900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646949, 0.291175, 0.704751,
		-0.536768, 0.482553, -0.692115,
		-0.541606, -0.826051, -0.155894,
		31.966196, 42.027397, 54.878132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599558, 42.771503, 55.041702>,  <32.345322, 42.605633, 54.987259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599558, 42.771503, 55.041702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.612980, 42.375919, 55.099434>,  <31.621033, 42.138569, 55.134071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.612980, 42.375919, 55.099434>,  <31.599558, 42.771503, 55.041702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612980, 42.375919, 55.099434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701966, 0.079473, 0.707762,
		-0.711419, -0.125060, -0.691551,
		0.033553, -0.988961, 0.144327,
		31.623045, 42.079231, 55.142731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882433, 42.506702, 55.009583>,  <31.599558, 42.771503, 55.041702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882433, 42.506702, 55.009583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.091536, 42.221542, 55.196556>,  <31.216997, 42.050446, 55.308739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.091536, 42.221542, 55.196556>,  <30.882433, 42.506702, 55.009583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091536, 42.221542, 55.196556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771629, -0.162626, 0.614932,
		-0.362371, -0.682144, -0.635111,
		0.522758, -0.712904, 0.467431,
		31.248363, 42.007671, 55.336784>
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
