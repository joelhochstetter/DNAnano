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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
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
	<4.375144, 15.226325, 14.676066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.384214, 15.234501, 15.075880>,  <4.389656, 15.239407, 15.315768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.384214, 15.234501, 15.075880>,  <4.375144, 15.226325, 14.676066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.384214, 15.234501, 15.075880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104327, -0.994284, 0.022700,
		0.994285, -0.104794, -0.020413,
		0.022676, 0.020441, 0.999534,
		4.391016, 15.240633, 15.375740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.883820, 14.765404, 14.920155>,  <4.375144, 15.226325, 14.676066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.883820, 14.765404, 14.920155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.567265, 14.762597, 15.164664>,  <4.377332, 14.760913, 15.311370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.567265, 14.762597, 15.164664>,  <4.883820, 14.765404, 14.920155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.567265, 14.762597, 15.164664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066498, -0.994989, 0.074668,
		0.607687, 0.099740, 0.787888,
		-0.791388, -0.007018, 0.611274,
		4.329848, 14.760491, 15.348046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.981363, 14.401019, 15.563032>,  <4.883820, 14.765404, 14.920155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.981363, 14.401019, 15.563032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.595428, 14.337601, 15.479176>,  <4.363867, 14.299549, 15.428862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.595428, 14.337601, 15.479176>,  <4.981363, 14.401019, 15.563032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.595428, 14.337601, 15.479176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109116, -0.967220, 0.229300,
		-0.239125, 0.198362, 0.950511,
		-0.964838, -0.158547, -0.209642,
		4.305976, 14.290036, 15.416283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.655472, 14.643447, 15.999413>,  <4.981363, 14.401019, 15.563032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.655472, 14.643447, 15.999413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.959167, 14.875927, 15.882273>,  <6.141385, 15.015415, 15.811988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.959167, 14.875927, 15.882273>,  <5.655472, 14.643447, 15.999413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.959167, 14.875927, 15.882273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568175, 0.372492, -0.733775,
		-0.317385, 0.723502, 0.613034,
		0.759238, 0.581200, -0.292853,
		6.186939, 15.050287, 15.794416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.396727, 15.369003, 15.844587>,  <5.655472, 14.643447, 15.999413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.396727, 15.369003, 15.844587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.739787, 15.329553, 15.642713>,  <5.945622, 15.305882, 15.521587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.739787, 15.329553, 15.642713>,  <5.396727, 15.369003, 15.844587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.739787, 15.329553, 15.642713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329529, 0.648034, -0.686631,
		0.394774, 0.755198, 0.523286,
		0.857650, -0.098626, -0.504687,
		5.997082, 15.299965, 15.491306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.663907, 15.985348, 15.501586>,  <5.396727, 15.369003, 15.844587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.663907, 15.985348, 15.501586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.773606, 15.681354, 15.265888>,  <5.839425, 15.498957, 15.124470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.773606, 15.681354, 15.265888>,  <5.663907, 15.985348, 15.501586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.773606, 15.681354, 15.265888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125628, 0.579174, -0.805466,
		0.953418, 0.294922, 0.063361,
		0.274247, -0.759986, -0.589245,
		5.855880, 15.453358, 15.089115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.213997, 16.228685, 15.102844>,  <5.663907, 15.985348, 15.501586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.213997, 16.228685, 15.102844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.051771, 15.916256, 14.912921>,  <5.954436, 15.728799, 14.798967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.051771, 15.916256, 14.912921>,  <6.213997, 16.228685, 15.102844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.051771, 15.916256, 14.912921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000037, 0.519432, -0.854512,
		0.914067, -0.346576, -0.210634,
		-0.405563, -0.781073, -0.474808,
		5.930102, 15.681934, 14.770478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.491325, 16.258352, 14.401516>,  <6.213997, 16.228685, 15.102844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.491325, 16.258352, 14.401516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.165391, 16.029959, 14.361479>,  <5.969831, 15.892922, 14.337457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.165391, 16.029959, 14.361479>,  <6.491325, 16.258352, 14.401516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.165391, 16.029959, 14.361479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166755, 0.396244, -0.902875,
		0.555191, -0.719003, -0.418089,
		-0.814835, -0.570986, -0.100093,
		5.920940, 15.858663, 14.331451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.566452, 16.057028, 13.764336>,  <6.491325, 16.258352, 14.401516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.566452, 16.057028, 13.764336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.178102, 16.011852, 13.848854>,  <5.945091, 15.984747, 13.899565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.178102, 16.011852, 13.848854>,  <6.566452, 16.057028, 13.764336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.178102, 16.011852, 13.848854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239011, 0.395554, -0.886798,
		0.016575, -0.911472, -0.411027,
		-0.970875, -0.112939, 0.211296,
		5.886839, 15.977970, 13.912243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.268399, 15.739778, 13.147468>,  <6.566452, 16.057028, 13.764336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.268399, 15.739778, 13.147468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.955477, 15.897688, 13.340197>,  <5.767724, 15.992434, 13.455834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.955477, 15.897688, 13.340197>,  <6.268399, 15.739778, 13.147468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.955477, 15.897688, 13.340197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421959, 0.233137, -0.876126,
		-0.458204, -0.888707, -0.015805,
		-0.782304, 0.394775, 0.481822,
		5.720786, 16.016121, 13.484743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.643971, 15.532103, 12.883661>,  <6.268399, 15.739778, 13.147468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.643971, 15.532103, 12.883661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.541152, 15.870605, 13.070330>,  <5.479461, 16.073706, 13.182330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.541152, 15.870605, 13.070330>,  <5.643971, 15.532103, 12.883661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.541152, 15.870605, 13.070330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510261, 0.291247, -0.809202,
		-0.820707, -0.446127, 0.356946,
		-0.257047, 0.846254, 0.466670,
		5.464038, 16.124481, 13.210331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.009335, 15.700265, 12.492519>,  <5.643971, 15.532103, 12.883661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.009335, 15.700265, 12.492519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.099267, 16.029070, 12.701803>,  <5.153225, 16.226353, 12.827374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.099267, 16.029070, 12.701803>,  <5.009335, 15.700265, 12.492519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.099267, 16.029070, 12.701803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470059, 0.561843, -0.680718,
		-0.853520, -0.092894, 0.512713,
		0.224829, 0.822012, 0.523210,
		5.166715, 16.275673, 12.858767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.358814, 16.142784, 12.716519>,  <5.009335, 15.700265, 12.492519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.358814, 16.142784, 12.716519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.674688, 16.387058, 12.692979>,  <4.864213, 16.533623, 12.678854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.674688, 16.387058, 12.692979>,  <4.358814, 16.142784, 12.716519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.674688, 16.387058, 12.692979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447061, 0.507089, -0.736884,
		-0.420159, 0.608217, 0.673453,
		0.789685, 0.610683, -0.058852,
		4.911593, 16.570263, 12.675323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.128439, 16.721439, 12.755060>,  <4.358814, 16.142784, 12.716519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.128439, 16.721439, 12.755060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.479670, 16.799976, 12.580506>,  <4.690408, 16.847099, 12.475774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.479670, 16.799976, 12.580506>,  <4.128439, 16.721439, 12.755060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.479670, 16.799976, 12.580506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440124, 0.689296, -0.575466,
		0.187809, 0.697367, 0.691670,
		0.878076, 0.196343, -0.436384,
		4.743093, 16.858879, 12.449591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.986511, 17.294243, 12.311739>,  <4.128439, 16.721439, 12.755060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.986511, 17.294243, 12.311739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.365041, 17.242332, 12.193332>,  <4.592159, 17.211187, 12.122288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.365041, 17.242332, 12.193332>,  <3.986511, 17.294243, 12.311739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.365041, 17.242332, 12.193332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189885, 0.517917, -0.834090,
		0.261556, 0.845530, 0.465476,
		0.946326, -0.129774, -0.296017,
		4.648939, 17.203400, 12.104527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.292758, 17.921534, 12.112843>,  <3.986511, 17.294243, 12.311739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.292758, 17.921534, 12.112843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.534402, 17.670916, 11.915870>,  <4.679389, 17.520544, 11.797686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.534402, 17.670916, 11.915870>,  <4.292758, 17.921534, 12.112843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.534402, 17.670916, 11.915870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040114, 0.593242, -0.804024,
		0.795890, 0.505473, 0.333251,
		0.604111, -0.626547, -0.492432,
		4.715636, 17.482952, 11.768140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.763079, 18.359129, 11.706189>,  <4.292758, 17.921534, 12.112843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.763079, 18.359129, 11.706189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.770872, 18.006289, 11.517925>,  <4.775547, 17.794584, 11.404967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.770872, 18.006289, 11.517925>,  <4.763079, 18.359129, 11.706189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.770872, 18.006289, 11.517925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029694, 0.471051, -0.881606,
		0.999369, 0.003199, 0.035370,
		0.019481, -0.882100, -0.470659,
		4.776716, 17.741659, 11.376727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.406140, 18.440044, 11.378599>,  <4.763079, 18.359129, 11.706189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.406140, 18.440044, 11.378599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.209652, 18.144657, 11.193831>,  <5.091759, 17.967424, 11.082971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.209652, 18.144657, 11.193831>,  <5.406140, 18.440044, 11.378599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.209652, 18.144657, 11.193831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016177, 0.522485, -0.852495,
		0.870886, -0.426234, -0.244709,
		-0.491219, -0.738467, -0.461920,
		5.062286, 17.923117, 11.055256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.841237, 18.328579, 10.791617>,  <5.406140, 18.440044, 11.378599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.841237, 18.328579, 10.791617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.476073, 18.185452, 10.713071>,  <5.256975, 18.099575, 10.665943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.476073, 18.185452, 10.713071>,  <5.841237, 18.328579, 10.791617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.476073, 18.185452, 10.713071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082535, 0.309325, -0.947368,
		0.399731, -0.881068, -0.252853,
		-0.912909, -0.357823, -0.196366,
		5.202200, 18.078106, 10.654161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.910275, 17.922228, 10.179630>,  <5.841237, 18.328579, 10.791617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.910275, 17.922228, 10.179630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.519661, 18.003246, 10.208903>,  <5.285293, 18.051857, 10.226467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.519661, 18.003246, 10.208903>,  <5.910275, 17.922228, 10.179630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.519661, 18.003246, 10.208903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022700, 0.434733, -0.900273,
		-0.214161, -0.877487, -0.429129,
		-0.976534, 0.202545, 0.073184,
		5.226701, 18.064011, 10.230858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.544175, 17.595997, 9.617218>,  <5.910275, 17.922228, 10.179630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.544175, 17.595997, 9.617218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.308103, 17.895042, 9.739043>,  <5.166460, 18.074471, 9.812139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.308103, 17.895042, 9.739043>,  <5.544175, 17.595997, 9.617218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.308103, 17.895042, 9.739043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021640, 0.391792, -0.919799,
		-0.806981, -0.536257, -0.247406,
		-0.590180, 0.747615, 0.304564,
		5.131049, 18.119328, 9.830413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.073020, 17.653839, 9.096106>,  <5.544175, 17.595997, 9.617218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.073020, 17.653839, 9.096106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.018982, 18.011122, 9.267653>,  <4.986559, 18.225492, 9.370581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.018982, 18.011122, 9.267653>,  <5.073020, 17.653839, 9.096106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.018982, 18.011122, 9.267653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131283, 0.412883, -0.901273,
		-0.982097, -0.178061, 0.061485,
		-0.135096, 0.893209, 0.428867,
		4.978453, 18.279085, 9.396313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.507688, 18.004881, 8.787470>,  <5.073020, 17.653839, 9.096106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.507688, 18.004881, 8.787470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.672016, 18.320786, 8.969681>,  <4.770612, 18.510328, 9.079007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.672016, 18.320786, 8.969681>,  <4.507688, 18.004881, 8.787470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.672016, 18.320786, 8.969681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025355, 0.489546, -0.871609,
		-0.911364, 0.369623, 0.181090,
		0.410819, 0.789762, 0.455526,
		4.795261, 18.557714, 9.106339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.103630, 18.652239, 8.640347>,  <4.507688, 18.004881, 8.787470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.103630, 18.652239, 8.640347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.481664, 18.752693, 8.724004>,  <4.708485, 18.812965, 8.774199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.481664, 18.752693, 8.724004>,  <4.103630, 18.652239, 8.640347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.481664, 18.752693, 8.724004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027766, 0.575925, -0.817031,
		-0.325638, 0.777972, 0.537326,
		0.945087, 0.251137, 0.209144,
		4.765190, 18.828033, 8.786747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.096895, 19.355421, 8.493909>,  <4.103630, 18.652239, 8.640347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.096895, 19.355421, 8.493909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.482267, 19.248272, 8.496696>,  <4.713490, 19.183983, 8.498369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.482267, 19.248272, 8.496696>,  <4.096895, 19.355421, 8.493909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.482267, 19.248272, 8.496696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191410, 0.669764, -0.717481,
		0.187525, 0.692576, 0.696544,
		0.963430, -0.267871, 0.006969,
		4.771296, 19.167910, 8.498787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.579252, 20.016891, 8.607156>,  <4.096895, 19.355421, 8.493909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.579252, 20.016891, 8.607156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.736848, 19.728441, 8.379210>,  <4.831406, 19.555370, 8.242441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.736848, 19.728441, 8.379210>,  <4.579252, 20.016891, 8.607156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.736848, 19.728441, 8.379210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119721, 0.654999, -0.746085,
		0.911284, 0.225725, 0.344397,
		0.393990, -0.721127, -0.569867,
		4.855045, 19.512104, 8.208249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.045090, 20.417086, 8.137332>,  <4.579252, 20.016891, 8.607156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.045090, 20.417086, 8.137332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.940483, 20.053270, 8.008121>,  <4.877719, 19.834982, 7.930593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.940483, 20.053270, 8.008121>,  <5.045090, 20.417086, 8.137332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.940483, 20.053270, 8.008121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120461, 0.301303, -0.945889,
		0.957652, -0.286279, 0.030767,
		-0.261518, -0.909539, -0.323029,
		4.862028, 19.780409, 7.911212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.548986, 20.019518, 7.643520>,  <5.045090, 20.417086, 8.137332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.548986, 20.019518, 7.643520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.169949, 19.909777, 7.578042>,  <4.942526, 19.843931, 7.538755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.169949, 19.909777, 7.578042>,  <5.548986, 20.019518, 7.643520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.169949, 19.909777, 7.578042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075698, 0.304978, -0.949346,
		0.310431, -0.911971, -0.268219,
		-0.947577, -0.274403, -0.163709,
		4.885671, 19.827471, 7.528934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.040781, 19.497194, 7.717207>,  <5.548986, 20.019518, 7.643520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.040781, 19.497194, 7.717207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.190237, 19.761284, 7.456593>,  <6.279910, 19.919737, 7.300224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.190237, 19.761284, 7.456593>,  <6.040781, 19.497194, 7.717207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.190237, 19.761284, 7.456593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802746, -0.582090, -0.129495,
		-0.464748, -0.474634, -0.747484,
		0.373640, 0.660223, -0.651536,
		6.302329, 19.959351, 7.261132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.260598, 19.208168, 7.041486>,  <6.040781, 19.497194, 7.717207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.260598, 19.208168, 7.041486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.481267, 19.507435, 7.188947>,  <6.613668, 19.686995, 7.277423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.481267, 19.507435, 7.188947>,  <6.260598, 19.208168, 7.041486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.481267, 19.507435, 7.188947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830241, -0.534846, -0.156970,
		0.079732, 0.392666, -0.916219,
		0.551672, 0.748167, 0.368652,
		6.646769, 19.731884, 7.299542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.804250, 19.205013, 6.623652>,  <6.260598, 19.208168, 7.041486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.804250, 19.205013, 6.623652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.911126, 19.381195, 6.966488>,  <6.975252, 19.486904, 7.172191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.911126, 19.381195, 6.966488>,  <6.804250, 19.205013, 6.623652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.911126, 19.381195, 6.966488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933343, -0.339572, -0.116457,
		0.239750, 0.831077, -0.501827,
		0.267191, 0.440456, 0.857092,
		6.991283, 19.513332, 7.223616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.544343, 19.436508, 6.618789>,  <6.804250, 19.205013, 6.623652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.544343, 19.436508, 6.618789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.480204, 19.363516, 7.006807>,  <7.441720, 19.319719, 7.239618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.480204, 19.363516, 7.006807>,  <7.544343, 19.436508, 6.618789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.480204, 19.363516, 7.006807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893446, -0.444579, 0.064053,
		0.419574, 0.876955, 0.234326,
		-0.160348, -0.182483, 0.970046,
		7.432100, 19.308771, 7.297821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.052251, 19.820721, 7.116539>,  <7.544343, 19.436508, 6.618789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.052251, 19.820721, 7.116539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.916789, 19.472757, 7.259966>,  <7.835512, 19.263979, 7.346023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.916789, 19.472757, 7.259966>,  <8.052251, 19.820721, 7.116539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.916789, 19.472757, 7.259966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912976, -0.395973, -0.098383,
		0.227568, 0.294046, 0.928305,
		-0.338654, -0.869909, 0.358568,
		7.815193, 19.211784, 7.367537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.275751, 19.752718, 7.834707>,  <8.052251, 19.820721, 7.116539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.275751, 19.752718, 7.834707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.212770, 19.418076, 7.624833>,  <8.174980, 19.217289, 7.498908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.212770, 19.418076, 7.624833>,  <8.275751, 19.752718, 7.834707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.212770, 19.418076, 7.624833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897182, -0.343200, 0.277991,
		-0.412642, -0.426968, 0.804627,
		-0.157455, -0.836607, -0.524687,
		8.165533, 19.167093, 7.467427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.717459, 20.277914, 7.561816>,  <8.275751, 19.752718, 7.834707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.717459, 20.277914, 7.561816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.623540, 20.587685, 7.326824>,  <8.567188, 20.773548, 7.185829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.623540, 20.587685, 7.326824>,  <8.717459, 20.277914, 7.561816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.623540, 20.587685, 7.326824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520193, -0.610656, -0.597074,
		-0.821139, 0.165412, 0.546232,
		-0.234796, 0.774427, -0.587480,
		8.553101, 20.820013, 7.150580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.809188, 20.551144, 8.276093>,  <8.717459, 20.277914, 7.561816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.809188, 20.551144, 8.276093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.428974, 20.492050, 8.385389>,  <8.200846, 20.456594, 8.450967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.428974, 20.492050, 8.385389>,  <8.809188, 20.551144, 8.276093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.428974, 20.492050, 8.385389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305082, -0.278640, 0.910651,
		-0.058398, 0.948965, 0.309928,
		-0.950534, -0.147733, 0.273240,
		8.143814, 20.447731, 8.467361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.766910, 20.734476, 8.963682>,  <8.809188, 20.551144, 8.276093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.766910, 20.734476, 8.963682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.424122, 20.532013, 8.924891>,  <8.218449, 20.410534, 8.901617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.424122, 20.532013, 8.924891>,  <8.766910, 20.734476, 8.963682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.424122, 20.532013, 8.924891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098132, -0.344992, 0.933462,
		-0.505937, 0.790432, 0.345318,
		-0.856970, -0.506159, -0.096977,
		8.167030, 20.380165, 8.895799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.317140, 20.853024, 9.507700>,  <8.766910, 20.734476, 8.963682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.317140, 20.853024, 9.507700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.215595, 20.487541, 9.380769>,  <8.154669, 20.268251, 9.304610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.215595, 20.487541, 9.380769>,  <8.317140, 20.853024, 9.507700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.215595, 20.487541, 9.380769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130444, -0.357420, 0.924789,
		-0.958404, 0.193374, 0.209922,
		-0.253861, -0.913705, -0.317328,
		8.139437, 20.213430, 9.285570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.886337, 20.682955, 10.090480>,  <8.317140, 20.853024, 9.507700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.886337, 20.682955, 10.090480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.973398, 20.352392, 9.882758>,  <8.025635, 20.154055, 9.758125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.973398, 20.352392, 9.882758>,  <7.886337, 20.682955, 10.090480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.973398, 20.352392, 9.882758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114033, -0.506885, 0.854438,
		-0.969342, -0.245189, -0.016087,
		0.217653, -0.826408, -0.519304,
		8.038694, 20.104469, 9.726967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.345481, 20.152397, 10.452903>,  <7.886337, 20.682955, 10.090480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.345481, 20.152397, 10.452903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.663626, 19.987394, 10.275258>,  <7.854514, 19.888393, 10.168672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.663626, 19.987394, 10.275258>,  <7.345481, 20.152397, 10.452903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.663626, 19.987394, 10.275258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068013, -0.667331, 0.741649,
		-0.602304, -0.620086, -0.502715,
		0.795364, -0.412507, -0.444110,
		7.902235, 19.863642, 10.142025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.260099, 19.354141, 10.419697>,  <7.345481, 20.152397, 10.452903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.260099, 19.354141, 10.419697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.651611, 19.386209, 10.344264>,  <7.886518, 19.405451, 10.299005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.651611, 19.386209, 10.344264>,  <7.260099, 19.354141, 10.419697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.651611, 19.386209, 10.344264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192163, -0.678699, 0.708830,
		-0.071162, -0.730027, -0.679703,
		0.978779, 0.080173, -0.188582,
		7.945245, 19.410261, 10.287689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.483726, 18.664660, 10.206457>,  <7.260099, 19.354141, 10.419697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.483726, 18.664660, 10.206457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.813378, 18.864237, 10.313689>,  <8.011169, 18.983982, 10.378028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.813378, 18.864237, 10.313689>,  <7.483726, 18.664660, 10.206457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.813378, 18.864237, 10.313689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270105, -0.762223, 0.588269,
		0.497848, -0.412400, -0.762937,
		0.824130, 0.498942, 0.268079,
		8.060616, 19.013920, 10.394113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.990288, 18.189837, 10.131083>,  <7.483726, 18.664660, 10.206457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.990288, 18.189837, 10.131083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.087735, 18.461452, 10.408082>,  <8.146203, 18.624422, 10.574282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.087735, 18.461452, 10.408082>,  <7.990288, 18.189837, 10.131083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.087735, 18.461452, 10.408082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153298, -0.731994, 0.663841,
		0.957680, -0.055565, -0.282422,
		0.243617, 0.679042, 0.692497,
		8.160820, 18.665165, 10.615831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.635406, 17.936125, 10.437557>,  <7.990288, 18.189837, 10.131083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.635406, 17.936125, 10.437557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.464491, 18.184265, 10.700644>,  <8.361942, 18.333149, 10.858497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.464491, 18.184265, 10.700644>,  <8.635406, 17.936125, 10.437557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.464491, 18.184265, 10.700644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011611, -0.731176, 0.682091,
		0.904042, 0.283812, 0.319624,
		-0.427287, 0.620349, 0.657718,
		8.336305, 18.370369, 10.897960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.876059, 17.761475, 10.997373>,  <8.635406, 17.936125, 10.437557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.876059, 17.761475, 10.997373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.593857, 17.996553, 11.155804>,  <8.424536, 18.137600, 11.250862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.593857, 17.996553, 11.155804>,  <8.876059, 17.761475, 10.997373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.593857, 17.996553, 11.155804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076301, -0.618612, 0.781983,
		0.704586, 0.521472, 0.481275,
		-0.705505, 0.587696, 0.396077,
		8.382205, 18.172863, 11.274627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.074423, 17.873438, 11.707530>,  <8.876059, 17.761475, 10.997373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.074423, 17.873438, 11.707530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.683532, 17.957901, 11.699122>,  <8.448997, 18.008579, 11.694077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.683532, 17.957901, 11.699122>,  <9.074423, 17.873438, 11.707530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.683532, 17.957901, 11.699122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154176, -0.638465, 0.754051,
		0.145802, 0.740119, 0.656479,
		-0.977227, 0.211155, -0.021019,
		8.390364, 18.021248, 11.692817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.921477, 18.077675, 12.248350>,  <9.074423, 17.873438, 11.707530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.921477, 18.077675, 12.248350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.584097, 17.909985, 12.113984>,  <8.381669, 17.809370, 12.033364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.584097, 17.909985, 12.113984>,  <8.921477, 18.077675, 12.248350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.584097, 17.909985, 12.113984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008324, -0.615027, 0.788462,
		-0.537141, 0.667825, 0.515256,
		-0.843451, -0.419227, -0.335915,
		8.331061, 17.784216, 12.013209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.574295, 17.852888, 12.877280>,  <8.921477, 18.077675, 12.248350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.574295, 17.852888, 12.877280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.345848, 17.694153, 12.589851>,  <8.208780, 17.598911, 12.417395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.345848, 17.694153, 12.589851>,  <8.574295, 17.852888, 12.877280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.345848, 17.694153, 12.589851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291648, -0.720169, 0.629522,
		-0.767311, 0.569101, 0.295564,
		-0.571117, -0.396839, -0.718571,
		8.174513, 17.575102, 12.374280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.936433, 17.734373, 13.082719>,  <8.574295, 17.852888, 12.877280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.936433, 17.734373, 13.082719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.010067, 17.465197, 12.796149>,  <8.054248, 17.303692, 12.624207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.010067, 17.465197, 12.796149>,  <7.936433, 17.734373, 13.082719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.010067, 17.465197, 12.796149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259610, -0.736286, 0.624888,
		-0.948006, 0.070958, -0.310242,
		0.184086, -0.672940, -0.716425,
		8.065292, 17.263315, 12.581222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.343851, 17.400202, 13.137635>,  <7.936433, 17.734373, 13.082719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.343851, 17.400202, 13.137635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.572628, 17.149952, 12.925419>,  <7.709894, 16.999802, 12.798089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.572628, 17.149952, 12.925419>,  <7.343851, 17.400202, 13.137635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.572628, 17.149952, 12.925419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207554, -0.736095, 0.644271,
		-0.793603, -0.258368, -0.550854,
		0.571940, -0.625628, -0.530542,
		7.744211, 16.962263, 12.766256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.000181, 16.746115, 13.007312>,  <7.343851, 17.400202, 13.137635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.000181, 16.746115, 13.007312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.381274, 16.643448, 12.942291>,  <7.609930, 16.581848, 12.903279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.381274, 16.643448, 12.942291>,  <7.000181, 16.746115, 13.007312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.381274, 16.643448, 12.942291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108334, -0.786880, 0.607523,
		-0.283838, -0.561197, -0.777492,
		0.952732, -0.256667, -0.162550,
		7.667094, 16.566448, 12.893526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.034292, 16.048027, 12.851440>,  <7.000181, 16.746115, 13.007312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.034292, 16.048027, 12.851440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.410013, 16.115120, 12.971157>,  <7.635446, 16.155375, 13.042987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.410013, 16.115120, 12.971157>,  <7.034292, 16.048027, 12.851440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.410013, 16.115120, 12.971157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040634, -0.811819, 0.582493,
		0.340672, -0.559299, -0.755729,
		0.939303, 0.167731, 0.299291,
		7.691804, 16.165440, 13.060945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.309703, 15.380979, 12.814722>,  <7.034292, 16.048027, 12.851440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.309703, 15.380979, 12.814722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.565254, 15.577503, 13.051517>,  <7.718584, 15.695418, 13.193593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.565254, 15.577503, 13.051517>,  <7.309703, 15.380979, 12.814722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.565254, 15.577503, 13.051517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148941, -0.833939, 0.531379,
		0.754753, -0.251314, -0.605961,
		0.638877, 0.491312, 0.591987,
		7.756917, 15.724896, 13.229113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.850825, 14.942465, 12.829059>,  <7.309703, 15.380979, 12.814722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.850825, 14.942465, 12.829059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.888779, 15.172263, 13.154254>,  <7.911551, 15.310143, 13.349371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.888779, 15.172263, 13.154254>,  <7.850825, 14.942465, 12.829059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.888779, 15.172263, 13.154254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223544, -0.808113, 0.544961,
		0.970065, 0.130030, -0.205102,
		0.094884, 0.574497, 0.812989,
		7.917244, 15.344612, 13.398150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.494962, 14.743093, 13.259812>,  <7.850825, 14.942465, 12.829059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.494962, 14.743093, 13.259812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.280922, 14.928263, 13.542477>,  <8.152498, 15.039365, 13.712075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.280922, 14.928263, 13.542477>,  <8.494962, 14.743093, 13.259812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.280922, 14.928263, 13.542477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181261, -0.754096, 0.631255,
		0.825114, 0.465874, 0.319606,
		-0.535099, 0.462926, 0.706660,
		8.120392, 15.067141, 13.754475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.937259, 14.700651, 13.871644>,  <8.494962, 14.743093, 13.259812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.937259, 14.700651, 13.871644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.551768, 14.747180, 13.967727>,  <8.320474, 14.775097, 14.025376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.551768, 14.747180, 13.967727>,  <8.937259, 14.700651, 13.871644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.551768, 14.747180, 13.967727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061071, -0.780029, 0.622756,
		0.259809, 0.614837, 0.744631,
		-0.963727, 0.116322, 0.240207,
		8.262650, 14.782077, 14.039789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.922544, 15.328056, 14.181320>,  <8.937259, 14.700651, 13.871644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.922544, 15.328056, 14.181320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.848040, 15.526607, 14.520476>,  <8.803337, 15.645737, 14.723970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.848040, 15.526607, 14.520476>,  <8.922544, 15.328056, 14.181320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.848040, 15.526607, 14.520476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915383, -0.225819, 0.333285,
		0.356904, 0.838223, -0.412313,
		-0.186259, 0.496375, 0.847891,
		8.792162, 15.675519, 14.774843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.468094, 15.844881, 14.290421>,  <8.922544, 15.328056, 14.181320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.468094, 15.844881, 14.290421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.285333, 15.681066, 14.606274>,  <9.175676, 15.582776, 14.795785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.285333, 15.681066, 14.606274>,  <9.468094, 15.844881, 14.290421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.285333, 15.681066, 14.606274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874223, -0.370645, 0.313618,
		0.164235, 0.833607, 0.527376,
		-0.456903, -0.409538, 0.789632,
		9.148262, 15.558205, 14.843163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.838181, 16.113916, 15.037211>,  <9.468094, 15.844881, 14.290421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.838181, 16.113916, 15.037211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.702636, 15.741487, 14.983139>,  <9.621309, 15.518028, 14.950696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.702636, 15.741487, 14.983139>,  <9.838181, 16.113916, 15.037211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.702636, 15.741487, 14.983139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840698, -0.364156, 0.400771,
		-0.422374, 0.022159, 0.906151,
		-0.338861, -0.931074, -0.135181,
		9.600977, 15.462164, 14.942585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.966374, 15.785178, 15.677711>,  <9.838181, 16.113916, 15.037211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.966374, 15.785178, 15.677711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.934593, 15.533364, 15.368550>,  <9.915524, 15.382277, 15.183054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.934593, 15.533364, 15.368550>,  <9.966374, 15.785178, 15.677711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.934593, 15.533364, 15.368550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873057, -0.418152, 0.250839,
		-0.481101, -0.654856, 0.582842,
		-0.079453, -0.629534, -0.772900,
		9.910757, 15.344504, 15.136681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.070614, 15.026355, 15.877769>,  <9.966374, 15.785178, 15.677711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.070614, 15.026355, 15.877769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.159902, 15.077824, 15.491274>,  <10.213474, 15.108705, 15.259377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.159902, 15.077824, 15.491274>,  <10.070614, 15.026355, 15.877769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.159902, 15.077824, 15.491274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875307, -0.462678, 0.140599,
		-0.428966, -0.877139, -0.215906,
		0.223220, 0.128671, -0.966238,
		10.226868, 15.116425, 15.201403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.137978, 14.405421, 15.621397>,  <10.070614, 15.026355, 15.877769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.137978, 14.405421, 15.621397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.368663, 14.697392, 15.474643>,  <10.507074, 14.872576, 15.386590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.368663, 14.697392, 15.474643>,  <10.137978, 14.405421, 15.621397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.368663, 14.697392, 15.474643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804993, -0.584289, 0.102923,
		-0.139242, -0.354698, -0.924555,
		0.576713, 0.729929, -0.366887,
		10.541677, 14.916371, 15.364576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.575678, 14.027929, 15.097353>,  <10.137978, 14.405421, 15.621397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.575678, 14.027929, 15.097353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.735085, 14.375663, 15.214273>,  <10.830730, 14.584303, 15.284426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.735085, 14.375663, 15.214273>,  <10.575678, 14.027929, 15.097353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.735085, 14.375663, 15.214273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875491, -0.455549, 0.161218,
		0.273310, 0.191659, -0.942639,
		0.398520, 0.869334, 0.292302,
		10.854641, 14.636463, 15.301964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.287053, 14.165774, 14.742707>,  <10.575678, 14.027929, 15.097353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.287053, 14.165774, 14.742707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.274242, 14.333291, 15.105714>,  <11.266556, 14.433802, 15.323518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.274242, 14.333291, 15.105714>,  <11.287053, 14.165774, 14.742707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.274242, 14.333291, 15.105714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923128, -0.335683, 0.187486,
		0.383156, 0.843759, -0.375848,
		-0.032027, 0.418792, 0.907517,
		11.264634, 14.458929, 15.377969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.324288, 13.465088, 14.863209>,  <11.287053, 14.165774, 14.742707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.324288, 13.465088, 14.863209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.644529, 13.678088, 14.753315>,  <11.836674, 13.805888, 14.687379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.644529, 13.678088, 14.753315>,  <11.324288, 13.465088, 14.863209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.644529, 13.678088, 14.753315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058723, 0.526025, 0.848439,
		0.596313, -0.663128, 0.452406,
		0.800601, 0.532502, -0.274735,
		11.884710, 13.837838, 14.670895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.725762, 13.405856, 15.326975>,  <11.324288, 13.465088, 14.863209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.725762, 13.405856, 15.326975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.795964, 13.767016, 15.170020>,  <11.838085, 13.983713, 15.075848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.795964, 13.767016, 15.170020>,  <11.725762, 13.405856, 15.326975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.795964, 13.767016, 15.170020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130086, 0.416347, 0.899851,
		0.975846, -0.106884, 0.190525,
		0.175504, 0.902901, -0.392387,
		11.848616, 14.037887, 15.052304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.837126, 13.832397, 15.891149>,  <11.725762, 13.405856, 15.326975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.837126, 13.832397, 15.891149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.868269, 14.137727, 15.634625>,  <11.886954, 14.320925, 15.480711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.868269, 14.137727, 15.634625>,  <11.837126, 13.832397, 15.891149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.868269, 14.137727, 15.634625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078797, 0.645960, 0.759293,
		0.993846, -0.008583, 0.110440,
		0.077857, 0.763323, -0.641308,
		11.891626, 14.366724, 15.442233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.234606, 14.262221, 16.204266>,  <11.837126, 13.832397, 15.891149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.234606, 14.262221, 16.204266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.060382, 14.501459, 15.935172>,  <11.955848, 14.645002, 15.773716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.060382, 14.501459, 15.935172>,  <12.234606, 14.262221, 16.204266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.060382, 14.501459, 15.935172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196342, 0.666230, 0.719436,
		0.878485, 0.445444, -0.172752,
		-0.435561, 0.598095, -0.672732,
		11.929713, 14.680888, 15.733353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.632977, 14.766594, 16.176622>,  <12.234606, 14.262221, 16.204266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.632977, 14.766594, 16.176622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.273651, 14.886981, 16.048590>,  <12.058056, 14.959213, 15.971769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.273651, 14.886981, 16.048590>,  <12.632977, 14.766594, 16.176622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.273651, 14.886981, 16.048590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040162, 0.669226, 0.741973,
		0.437518, 0.679379, -0.589086,
		-0.898312, 0.300967, -0.320084,
		12.004157, 14.977271, 15.952564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.697295, 15.496244, 16.120686>,  <12.632977, 14.766594, 16.176622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.697295, 15.496244, 16.120686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.303622, 15.430134, 16.146200>,  <12.067418, 15.390468, 16.161509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.303622, 15.430134, 16.146200>,  <12.697295, 15.496244, 16.120686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.303622, 15.430134, 16.146200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068983, 0.689163, 0.721316,
		-0.163178, 0.705506, -0.689663,
		-0.984182, -0.165277, 0.063788,
		12.008368, 15.380550, 16.165337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.303045, 16.176716, 16.309443>,  <12.697295, 15.496244, 16.120686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.303045, 16.176716, 16.309443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.003336, 15.918458, 16.368410>,  <11.823510, 15.763503, 16.403791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.003336, 15.918458, 16.368410>,  <12.303045, 16.176716, 16.309443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.003336, 15.918458, 16.368410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385574, 0.606272, 0.695533,
		-0.538444, 0.464303, -0.703208,
		-0.749274, -0.645644, 0.147420,
		11.778554, 15.724765, 16.412636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.678128, 16.554525, 16.313627>,  <12.303045, 16.176716, 16.309443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.678128, 16.554525, 16.313627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.675857, 16.216579, 16.527607>,  <11.674494, 16.013811, 16.655994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.675857, 16.216579, 16.527607>,  <11.678128, 16.554525, 16.313627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.675857, 16.216579, 16.527607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062332, 0.534218, 0.843045,
		-0.998039, -0.028556, -0.055696,
		-0.005680, -0.844864, 0.534951,
		11.674152, 15.963120, 16.688091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.174285, 16.669266, 16.892761>,  <11.678128, 16.554525, 16.313627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.174285, 16.669266, 16.892761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.397517, 16.355350, 17.000578>,  <11.531456, 16.167002, 17.065268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.397517, 16.355350, 17.000578>,  <11.174285, 16.669266, 16.892761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.397517, 16.355350, 17.000578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088328, 0.266800, 0.959696,
		-0.825073, -0.559394, 0.079577,
		0.558079, -0.784790, 0.269540,
		11.564941, 16.119913, 17.081440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.800109, 16.405136, 17.377262>,  <11.174285, 16.669266, 16.892761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.800109, 16.405136, 17.377262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.151122, 16.243042, 17.479805>,  <11.361731, 16.145786, 17.541330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.151122, 16.243042, 17.479805>,  <10.800109, 16.405136, 17.377262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.151122, 16.243042, 17.479805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183934, 0.209262, 0.960405,
		-0.442834, -0.889941, 0.109098,
		0.877534, -0.405234, 0.256359,
		11.414382, 16.121471, 17.556713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.680403, 16.000059, 17.984285>,  <10.800109, 16.405136, 17.377262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.680403, 16.000059, 17.984285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.076471, 16.049776, 18.009932>,  <11.314113, 16.079605, 18.025318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.076471, 16.049776, 18.009932>,  <10.680403, 16.000059, 17.984285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.076471, 16.049776, 18.009932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080154, 0.128676, 0.988442,
		0.114582, -0.983870, 0.137372,
		0.990175, 0.124268, 0.064117,
		11.373523, 16.087063, 18.029165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.815515, 15.607800, 18.579382>,  <10.680403, 16.000059, 17.984285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.815515, 15.607800, 18.579382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.113595, 15.863894, 18.504789>,  <11.292443, 16.017550, 18.460033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.113595, 15.863894, 18.504789>,  <10.815515, 15.607800, 18.579382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.113595, 15.863894, 18.504789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137661, 0.125924, 0.982442,
		0.652477, -0.757787, 0.005703,
		0.745200, 0.640236, -0.186480,
		11.337155, 16.055964, 18.448845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.277599, 15.474764, 19.116940>,  <10.815515, 15.607800, 18.579382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.277599, 15.474764, 19.116940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.409722, 15.833240, 18.998455>,  <11.488997, 16.048325, 18.927364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.409722, 15.833240, 18.998455>,  <11.277599, 15.474764, 19.116940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.409722, 15.833240, 18.998455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329577, 0.184565, 0.925913,
		0.884463, -0.403462, -0.234400,
		0.330309, 0.896189, -0.296212,
		11.508815, 16.102097, 18.909592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.052395, 15.557763, 19.319500>,  <11.277599, 15.474764, 19.116940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.052395, 15.557763, 19.319500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.882515, 15.916101, 19.267204>,  <11.780587, 16.131104, 19.235826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.882515, 15.916101, 19.267204>,  <12.052395, 15.557763, 19.319500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.882515, 15.916101, 19.267204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284026, 0.268961, 0.920321,
		0.859628, 0.353727, -0.368670,
		-0.424700, 0.895845, -0.130738,
		11.755105, 16.184855, 19.227983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.570775, 16.021872, 19.472883>,  <12.052395, 15.557763, 19.319500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.570775, 16.021872, 19.472883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.220268, 16.207933, 19.523140>,  <12.009964, 16.319571, 19.553295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.220268, 16.207933, 19.523140>,  <12.570775, 16.021872, 19.472883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.220268, 16.207933, 19.523140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357540, 0.452938, 0.816709,
		0.322987, 0.760578, -0.563206,
		-0.876268, 0.465155, 0.125644,
		11.957388, 16.347481, 19.560833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.647829, 16.745701, 19.682293>,  <12.570775, 16.021872, 19.472883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.647829, 16.745701, 19.682293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.263923, 16.686216, 19.777569>,  <12.033579, 16.650526, 19.834734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.263923, 16.686216, 19.777569>,  <12.647829, 16.745701, 19.682293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.263923, 16.686216, 19.777569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109036, 0.584314, 0.804169,
		-0.258766, 0.797786, -0.544590,
		-0.959766, -0.148711, 0.238188,
		11.975993, 16.641603, 19.849026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.486929, 17.241491, 20.056307>,  <12.647829, 16.745701, 19.682293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.486929, 17.241491, 20.056307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.164648, 17.019123, 20.138083>,  <11.971280, 16.885702, 20.187149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.164648, 17.019123, 20.138083>,  <12.486929, 17.241491, 20.056307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.164648, 17.019123, 20.138083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066883, 0.428330, 0.901144,
		-0.588533, 0.712379, -0.382288,
		-0.805702, -0.555921, 0.204441,
		11.922937, 16.852346, 20.199415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.977594, 17.653858, 20.224182>,  <12.486929, 17.241491, 20.056307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.977594, 17.653858, 20.224182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.892353, 17.303553, 20.397446>,  <11.841208, 17.093370, 20.501404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.892353, 17.303553, 20.397446>,  <11.977594, 17.653858, 20.224182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.892353, 17.303553, 20.397446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225118, 0.475428, 0.850465,
		-0.950741, 0.083725, -0.298465,
		-0.213104, -0.875762, 0.433161,
		11.828422, 17.040825, 20.527393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.434894, 17.842775, 20.625128>,  <11.977594, 17.653858, 20.224182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.434894, 17.842775, 20.625128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.568343, 17.496466, 20.774330>,  <11.648413, 17.288679, 20.863852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.568343, 17.496466, 20.774330>,  <11.434894, 17.842775, 20.625128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.568343, 17.496466, 20.774330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173406, 0.332562, 0.927002,
		-0.926621, -0.373950, -0.039180,
		0.333623, -0.865773, 0.373004,
		11.668430, 17.236734, 20.886230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.003373, 17.705269, 21.110819>,  <11.434894, 17.842775, 20.625128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.003373, 17.705269, 21.110819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.309784, 17.466944, 21.207325>,  <11.493630, 17.323948, 21.265228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.309784, 17.466944, 21.207325>,  <11.003373, 17.705269, 21.110819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.309784, 17.466944, 21.207325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096349, 0.264669, 0.959514,
		-0.635547, -0.758259, 0.145338,
		0.766027, -0.595814, 0.241267,
		11.539592, 17.288200, 21.279705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.823530, 17.193537, 21.595560>,  <11.003373, 17.705269, 21.110819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.823530, 17.193537, 21.595560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.210979, 17.282158, 21.640610>,  <11.443449, 17.335331, 21.667639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.210979, 17.282158, 21.640610>,  <10.823530, 17.193537, 21.595560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.210979, 17.282158, 21.640610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178241, 0.303449, 0.936028,
		0.173204, -0.926732, 0.333418,
		0.968623, 0.221552, 0.112623,
		11.501566, 17.348623, 21.674397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.950397, 17.205235, 22.362232>,  <10.823530, 17.193537, 21.595560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.950397, 17.205235, 22.362232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.298908, 17.346985, 22.226414>,  <11.508015, 17.432035, 22.144922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.298908, 17.346985, 22.226414>,  <10.950397, 17.205235, 22.362232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.298908, 17.346985, 22.226414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167542, 0.435522, 0.884449,
		0.461311, -0.827488, 0.320087,
		0.871276, 0.354378, -0.339550,
		11.560291, 17.453297, 22.124550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.406637, 16.972418, 22.923462>,  <10.950397, 17.205235, 22.362232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.406637, 16.972418, 22.923462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.587241, 17.264221, 22.717955>,  <11.695603, 17.439302, 22.594650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.587241, 17.264221, 22.717955>,  <11.406637, 16.972418, 22.923462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.587241, 17.264221, 22.717955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316975, 0.407103, 0.856618,
		0.834067, -0.549622, -0.047425,
		0.451509, 0.729509, -0.513767,
		11.722694, 17.483074, 22.563824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.037222, 17.144093, 23.369919>,  <11.406637, 16.972418, 22.923462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.037222, 17.144093, 23.369919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.984267, 17.449898, 23.117573>,  <11.952495, 17.633381, 22.966166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.984267, 17.449898, 23.117573>,  <12.037222, 17.144093, 23.369919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.984267, 17.449898, 23.117573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283354, 0.639097, 0.715028,
		0.949834, -0.084098, -0.301236,
		-0.132386, 0.764515, -0.630866,
		11.944551, 17.679253, 22.928312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.612277, 17.512592, 23.514221>,  <12.037222, 17.144093, 23.369919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.612277, 17.512592, 23.514221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.341041, 17.752270, 23.343971>,  <12.178299, 17.896076, 23.241821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.341041, 17.752270, 23.343971>,  <12.612277, 17.512592, 23.514221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.341041, 17.752270, 23.343971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264659, 0.739317, 0.619165,
		0.685673, 0.307205, -0.659907,
		-0.678092, 0.599195, -0.425625,
		12.137613, 17.932028, 23.216284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.909436, 18.219265, 23.539631>,  <12.612277, 17.512592, 23.514221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.909436, 18.219265, 23.539631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.516899, 18.264923, 23.477747>,  <12.281377, 18.292318, 23.440617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.516899, 18.264923, 23.477747>,  <12.909436, 18.219265, 23.539631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.516899, 18.264923, 23.477747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023223, 0.728428, 0.684729,
		0.190854, 0.675547, -0.712187,
		-0.981344, 0.114144, -0.154712,
		12.222496, 18.299166, 23.431334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.844570, 18.936481, 23.458817>,  <12.909436, 18.219265, 23.539631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.844570, 18.936481, 23.458817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.493767, 18.777954, 23.567474>,  <12.283285, 18.682838, 23.632669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.493767, 18.777954, 23.567474>,  <12.844570, 18.936481, 23.458817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.493767, 18.777954, 23.567474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033806, 0.614863, 0.787909,
		-0.479286, 0.681819, -0.552637,
		-0.877007, -0.396316, 0.271646,
		12.230664, 18.659060, 23.648968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.491322, 19.467340, 23.733522>,  <12.844570, 18.936481, 23.458817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.491322, 19.467340, 23.733522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.326622, 19.140076, 23.894056>,  <12.227802, 18.943716, 23.990377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.326622, 19.140076, 23.894056>,  <12.491322, 19.467340, 23.733522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.326622, 19.140076, 23.894056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252783, 0.525660, 0.812270,
		-0.875536, 0.233000, -0.423257,
		-0.411749, -0.818164, 0.401336,
		12.203097, 18.894627, 24.014458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.849960, 19.690619, 23.909637>,  <12.491322, 19.467340, 23.733522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.849960, 19.690619, 23.909637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.896829, 19.350534, 24.114931>,  <11.924950, 19.146484, 24.238108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.896829, 19.350534, 24.114931>,  <11.849960, 19.690619, 23.909637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.896829, 19.350534, 24.114931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322228, 0.456288, 0.829440,
		-0.939383, -0.262565, -0.220499,
		0.117171, -0.850213, 0.513234,
		11.931980, 19.095470, 24.268902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.347141, 19.778713, 24.361742>,  <11.849960, 19.690619, 23.909637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.347141, 19.778713, 24.361742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.553574, 19.480778, 24.530916>,  <11.677433, 19.302015, 24.632420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.553574, 19.480778, 24.530916>,  <11.347141, 19.778713, 24.361742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.553574, 19.480778, 24.530916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175903, 0.391083, 0.903389,
		-0.838283, -0.540617, 0.070811,
		0.516080, -0.744841, 0.422934,
		11.708398, 19.257326, 24.657797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.981214, 19.437714, 24.875525>,  <11.347141, 19.778713, 24.361742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.981214, 19.437714, 24.875525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.340185, 19.343685, 25.024851>,  <11.555568, 19.287268, 25.114447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.340185, 19.343685, 25.024851>,  <10.981214, 19.437714, 24.875525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.340185, 19.343685, 25.024851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273889, 0.366497, 0.889193,
		-0.345841, -0.900234, 0.264522,
		0.897429, -0.235070, 0.373314,
		11.609414, 19.273165, 25.136845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.954301, 18.998514, 25.444342>,  <10.981214, 19.437714, 24.875525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.954301, 18.998514, 25.444342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.280691, 19.227083, 25.479355>,  <11.476525, 19.364223, 25.500362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.280691, 19.227083, 25.479355>,  <10.954301, 18.998514, 25.444342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.280691, 19.227083, 25.479355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325582, 0.329147, 0.886374,
		0.477682, -0.751758, 0.454620,
		0.815976, 0.571421, 0.087531,
		11.525484, 19.398510, 25.505615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.150873, 18.957996, 26.128704>,  <10.954301, 18.998514, 25.444342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.150873, 18.957996, 26.128704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.406445, 19.254370, 26.045967>,  <11.559788, 19.432194, 25.996325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.406445, 19.254370, 26.045967>,  <11.150873, 18.957996, 26.128704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.406445, 19.254370, 26.045967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040429, 0.236171, 0.970870,
		0.768203, -0.628679, 0.120941,
		0.638928, 0.740936, -0.206844,
		11.598124, 19.476650, 25.983913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.740103, 18.935024, 26.574390>,  <11.150873, 18.957996, 26.128704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.740103, 18.935024, 26.574390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.678186, 19.303421, 26.431387>,  <11.641036, 19.524460, 26.345585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.678186, 19.303421, 26.431387>,  <11.740103, 18.935024, 26.574390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.678186, 19.303421, 26.431387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147226, 0.336325, 0.930167,
		0.976915, 0.196617, 0.083534,
		-0.154792, 0.920993, -0.357508,
		11.631749, 19.579720, 26.324135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.294944, 18.443384, 26.615683>,  <11.740103, 18.935024, 26.574390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.294944, 18.443384, 26.615683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.347758, 18.835756, 26.672731>,  <12.379447, 19.071180, 26.706961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.347758, 18.835756, 26.672731>,  <12.294944, 18.443384, 26.615683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.347758, 18.835756, 26.672731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033411, -0.139395, 0.989673,
		0.990682, -0.135437, 0.014369,
		0.132036, 0.980931, 0.142621,
		12.387369, 19.130035, 26.715517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.632160, 18.435110, 27.276924>,  <12.294944, 18.443384, 26.615683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.632160, 18.435110, 27.276924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.541399, 18.820110, 27.217455>,  <12.486942, 19.051111, 27.181772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.541399, 18.820110, 27.217455>,  <12.632160, 18.435110, 27.276924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.541399, 18.820110, 27.217455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012467, 0.149774, 0.988642,
		0.973838, 0.226179, -0.021984,
		-0.226903, 0.962503, -0.148675,
		12.473329, 19.108862, 27.172852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.051880, 18.907167, 27.751333>,  <12.632160, 18.435110, 27.276924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.051880, 18.907167, 27.751333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.724346, 19.122190, 27.670792>,  <12.527826, 19.251204, 27.622467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.724346, 19.122190, 27.670792>,  <13.051880, 18.907167, 27.751333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.724346, 19.122190, 27.670792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145143, 0.145485, 0.978656,
		0.555377, 0.830582, -0.041106,
		-0.818834, 0.537557, -0.201353,
		12.478696, 19.283457, 27.610386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.093217, 19.485235, 28.259756>,  <13.051880, 18.907167, 27.751333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.093217, 19.485235, 28.259756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.717205, 19.463980, 28.124985>,  <12.491598, 19.451227, 28.044123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.717205, 19.463980, 28.124985>,  <13.093217, 19.485235, 28.259756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.717205, 19.463980, 28.124985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340944, 0.175488, 0.923559,
		0.010052, 0.983046, -0.183080,
		-0.940030, -0.053137, -0.336928,
		12.435196, 19.448038, 28.023907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.824494, 20.008364, 28.542654>,  <13.093217, 19.485235, 28.259756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.824494, 20.008364, 28.542654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.518444, 19.766092, 28.455261>,  <12.334814, 19.620729, 28.402826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.518444, 19.766092, 28.455261>,  <12.824494, 20.008364, 28.542654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.518444, 19.766092, 28.455261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361414, 0.123164, 0.924235,
		-0.532881, 0.786119, -0.313137,
		-0.765126, -0.605679, -0.218482,
		12.288906, 19.584389, 28.389717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.168435, 20.303822, 28.834219>,  <12.824494, 20.008364, 28.542654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.168435, 20.303822, 28.834219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.090494, 19.916594, 28.771130>,  <12.043730, 19.684258, 28.733276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.090494, 19.916594, 28.771130>,  <12.168435, 20.303822, 28.834219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.090494, 19.916594, 28.771130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509745, -0.037435, 0.859511,
		-0.837969, 0.247878, -0.486173,
		-0.194854, -0.968068, -0.157724,
		12.032038, 19.626173, 28.723812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.464569, 20.308104, 29.062426>,  <12.168435, 20.303822, 28.834219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.464569, 20.308104, 29.062426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.630560, 19.945032, 29.037405>,  <11.730154, 19.727190, 29.022392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.630560, 19.945032, 29.037405>,  <11.464569, 20.308104, 29.062426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.630560, 19.945032, 29.037405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485400, -0.279019, 0.828575,
		-0.769533, -0.313476, -0.556373,
		0.414977, -0.907679, -0.062553,
		11.755053, 19.672728, 29.018639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.859677, 19.804699, 29.374969>,  <11.464569, 20.308104, 29.062426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.859677, 19.804699, 29.374969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.225826, 19.647038, 29.407801>,  <11.445516, 19.552441, 29.427500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.225826, 19.647038, 29.407801>,  <10.859677, 19.804699, 29.374969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.225826, 19.647038, 29.407801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227237, -0.337503, 0.913485,
		-0.332349, -0.854831, -0.398507,
		0.915373, -0.394151, 0.082080,
		11.500438, 19.528791, 29.432425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.929874, 19.162926, 29.384256>,  <10.859677, 19.804699, 29.374969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.929874, 19.162926, 29.384256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.232895, 19.298626, 29.607334>,  <11.414707, 19.380045, 29.741180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.232895, 19.298626, 29.607334>,  <10.929874, 19.162926, 29.384256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.232895, 19.298626, 29.607334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431176, -0.381393, 0.817695,
		0.490104, -0.859912, -0.142649,
		0.757552, 0.339249, 0.557697,
		11.460160, 19.400400, 29.774643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.003994, 18.766146, 29.957409>,  <10.929874, 19.162926, 29.384256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.003994, 18.766146, 29.957409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.232833, 19.074417, 30.069666>,  <11.370136, 19.259380, 30.137020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.232833, 19.074417, 30.069666>,  <11.003994, 18.766146, 29.957409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.232833, 19.074417, 30.069666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151502, -0.236984, 0.959628,
		0.806072, -0.591518, -0.018818,
		0.572096, 0.770678, 0.280643,
		11.404462, 19.305620, 30.153858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.415009, 18.496140, 30.503630>,  <11.003994, 18.766146, 29.957409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.415009, 18.496140, 30.503630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.422569, 18.895630, 30.522356>,  <11.427105, 19.135324, 30.533592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.422569, 18.895630, 30.522356>,  <11.415009, 18.496140, 30.503630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.422569, 18.895630, 30.522356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056488, -0.047816, 0.997258,
		0.998224, -0.016203, -0.057319,
		0.018899, 0.998725, 0.046816,
		11.428239, 19.195248, 30.536402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.979872, 18.719492, 30.889257>,  <11.415009, 18.496140, 30.503630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.979872, 18.719492, 30.889257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.699535, 19.004726, 30.896509>,  <11.531333, 19.175867, 30.900860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.699535, 19.004726, 30.896509>,  <11.979872, 18.719492, 30.889257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.699535, 19.004726, 30.896509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036450, 0.010416, 0.999281,
		0.712385, 0.700999, -0.033292,
		-0.700842, 0.713086, 0.018131,
		11.489283, 19.218653, 30.901949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.206659, 19.044888, 31.464323>,  <11.979872, 18.719492, 30.889257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.206659, 19.044888, 31.464323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.820528, 19.138966, 31.419024>,  <11.588849, 19.195414, 31.391844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.820528, 19.138966, 31.419024>,  <12.206659, 19.044888, 31.464323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.820528, 19.138966, 31.419024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080237, 0.145494, 0.986100,
		0.248404, 0.960997, -0.121578,
		-0.965328, 0.235196, -0.113249,
		11.530930, 19.209524, 31.385050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.731817, 19.220377, 31.799423>,  <12.206659, 19.044888, 31.464323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.731817, 19.220377, 31.799423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.125939, 19.250917, 31.738308>,  <13.362412, 19.269241, 31.701639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.125939, 19.250917, 31.738308>,  <12.731817, 19.220377, 31.799423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.125939, 19.250917, 31.738308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123075, -0.937620, 0.325150,
		-0.118433, -0.339176, -0.933238,
		0.985305, 0.076350, -0.152790,
		13.421531, 19.273823, 31.692471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.995052, 18.675480, 31.419641>,  <12.731817, 19.220377, 31.799423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.995052, 18.675480, 31.419641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.292266, 18.805117, 31.653860>,  <13.470594, 18.882898, 31.794392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.292266, 18.805117, 31.653860>,  <12.995052, 18.675480, 31.419641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.292266, 18.805117, 31.653860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048255, -0.898593, 0.436122,
		0.667511, -0.295798, -0.683324,
		0.743034, 0.324090, 0.585547,
		13.515176, 18.902344, 31.829525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.462485, 18.948612, 30.794556>,  <12.995052, 18.675480, 31.419641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.462485, 18.948612, 30.794556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.412216, 18.566750, 30.902508>,  <13.382055, 18.337631, 30.967279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.412216, 18.566750, 30.902508>,  <13.462485, 18.948612, 30.794556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.412216, 18.566750, 30.902508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125343, -0.254578, -0.958895,
		0.984122, -0.154333, -0.087666,
		-0.125671, -0.954658, 0.269881,
		13.374515, 18.280352, 30.983473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.844692, 18.460793, 30.326706>,  <13.462485, 18.948612, 30.794556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.844692, 18.460793, 30.326706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.558453, 18.218966, 30.466658>,  <13.386709, 18.073870, 30.550629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.558453, 18.218966, 30.466658>,  <13.844692, 18.460793, 30.326706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.558453, 18.218966, 30.466658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169277, -0.335867, -0.926573,
		0.677691, -0.722281, 0.138006,
		-0.715598, -0.604569, 0.349880,
		13.343773, 18.037596, 30.571621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.983624, 17.738152, 30.314247>,  <13.844692, 18.460793, 30.326706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.983624, 17.738152, 30.314247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.610882, 17.864983, 30.243700>,  <13.387237, 17.941082, 30.201372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.610882, 17.864983, 30.243700>,  <13.983624, 17.738152, 30.314247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.610882, 17.864983, 30.243700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070451, -0.318715, -0.945229,
		-0.355926, -0.893241, 0.274658,
		-0.931855, 0.317081, -0.176368,
		13.331325, 17.960106, 30.190790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.480701, 17.125412, 30.075489>,  <13.983624, 17.738152, 30.314247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.480701, 17.125412, 30.075489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.433030, 17.504131, 29.955910>,  <13.404428, 17.731363, 29.884161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.433030, 17.504131, 29.955910>,  <13.480701, 17.125412, 30.075489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.433030, 17.504131, 29.955910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271413, -0.258561, -0.927082,
		-0.955056, -0.191626, -0.226159,
		-0.119177, 0.946798, -0.298950,
		13.397277, 17.788170, 29.866224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.093703, 17.061100, 29.521038>,  <13.480701, 17.125412, 30.075489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.093703, 17.061100, 29.521038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.259707, 17.424994, 29.516117>,  <13.359310, 17.643330, 29.513165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.259707, 17.424994, 29.516117>,  <13.093703, 17.061100, 29.521038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.259707, 17.424994, 29.516117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406447, -0.197479, -0.892078,
		-0.813983, 0.365221, -0.451715,
		0.415009, 0.909734, -0.012302,
		13.384211, 17.697914, 29.512426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.728286, 17.408091, 28.922518>,  <13.093703, 17.061100, 29.521038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.728286, 17.408091, 28.922518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.075236, 17.600855, 28.972183>,  <13.283407, 17.716515, 29.001984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.075236, 17.600855, 28.972183>,  <12.728286, 17.408091, 28.922518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.075236, 17.600855, 28.972183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248662, -0.203573, -0.946956,
		-0.431073, 0.852243, -0.296408,
		0.867377, 0.481912, 0.124166,
		13.335449, 17.745428, 29.009434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.740916, 17.713396, 28.365458>,  <12.728286, 17.408091, 28.922518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.740916, 17.713396, 28.365458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.107759, 17.697176, 28.524088>,  <13.327864, 17.687443, 28.619267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.107759, 17.697176, 28.524088>,  <12.740916, 17.713396, 28.365458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.107759, 17.697176, 28.524088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380609, -0.206755, -0.901327,
		0.118544, 0.977552, -0.174182,
		0.917107, -0.040552, 0.396574,
		13.382891, 17.685011, 28.643061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.192266, 18.075939, 27.971203>,  <12.740916, 17.713396, 28.365458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.192266, 18.075939, 27.971203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.450463, 17.828194, 28.149967>,  <13.605382, 17.679546, 28.257225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.450463, 17.828194, 28.149967>,  <13.192266, 18.075939, 27.971203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.450463, 17.828194, 28.149967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442529, -0.173624, -0.879785,
		0.622500, 0.765667, 0.162013,
		0.645493, -0.619362, 0.446911,
		13.644112, 17.642385, 28.284040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.839695, 18.251823, 27.728645>,  <13.192266, 18.075939, 27.971203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.839695, 18.251823, 27.728645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.885863, 17.878832, 27.865562>,  <13.913565, 17.655037, 27.947712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.885863, 17.878832, 27.865562>,  <13.839695, 18.251823, 27.728645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.885863, 17.878832, 27.865562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390825, -0.274170, -0.878685,
		0.913200, 0.235196, 0.332790,
		0.115422, -0.932477, 0.342292,
		13.920490, 17.599089, 27.968250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.430355, 17.956444, 27.363455>,  <13.839695, 18.251823, 27.728645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.430355, 17.956444, 27.363455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.227498, 17.644463, 27.510141>,  <14.105784, 17.457273, 27.598154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.227498, 17.644463, 27.510141>,  <14.430355, 17.956444, 27.363455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.227498, 17.644463, 27.510141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315238, -0.563876, -0.763328,
		0.802142, -0.271512, 0.531835,
		-0.507142, -0.779952, 0.366718,
		14.075356, 17.410477, 27.620157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.893768, 17.372568, 27.391363>,  <14.430355, 17.956444, 27.363455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.893768, 17.372568, 27.391363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.528268, 17.210329, 27.400736>,  <14.308968, 17.112986, 27.406359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.528268, 17.210329, 27.400736>,  <14.893768, 17.372568, 27.391363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.528268, 17.210329, 27.400736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232667, -0.569703, -0.788229,
		0.333052, -0.714794, 0.614936,
		-0.913752, -0.405596, 0.023432,
		14.254142, 17.088650, 27.407764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.995125, 16.699869, 27.211882>,  <14.893768, 17.372568, 27.391363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.995125, 16.699869, 27.211882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.603909, 16.736526, 27.137007>,  <14.369179, 16.758520, 27.092081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.603909, 16.736526, 27.137007>,  <14.995125, 16.699869, 27.211882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.603909, 16.736526, 27.137007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113590, -0.518640, -0.847413,
		-0.174740, -0.850067, 0.496842,
		-0.978040, 0.091641, -0.187186,
		14.310496, 16.764019, 27.080851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.739516, 16.015741, 27.023582>,  <14.995125, 16.699869, 27.211882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.739516, 16.015741, 27.023582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507302, 16.298203, 26.861433>,  <14.367974, 16.467680, 26.764143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.507302, 16.298203, 26.861433>,  <14.739516, 16.015741, 27.023582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507302, 16.298203, 26.861433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084214, -0.547261, -0.832715,
		-0.809870, -0.449281, 0.377171,
		-0.580534, 0.706154, -0.405374,
		14.333142, 16.510048, 26.739820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.073110, 15.621902, 26.824894>,  <14.739516, 16.015741, 27.023582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.073110, 15.621902, 26.824894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.111412, 15.952773, 26.603405>,  <14.134394, 16.151297, 26.470512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.111412, 15.952773, 26.603405>,  <14.073110, 15.621902, 26.824894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.111412, 15.952773, 26.603405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281403, -0.511090, -0.812157,
		-0.954800, 0.233589, 0.183830,
		0.095757, 0.827178, -0.553721,
		14.140140, 16.200926, 26.437288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.632083, 15.511465, 26.244284>,  <14.073110, 15.621902, 26.824894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.632083, 15.511465, 26.244284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.849176, 15.820496, 26.112486>,  <13.979432, 16.005913, 26.033407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.849176, 15.820496, 26.112486>,  <13.632083, 15.511465, 26.244284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.849176, 15.820496, 26.112486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042675, -0.366430, -0.929467,
		-0.838820, 0.518514, -0.165904,
		0.542734, 0.772575, -0.329496,
		14.011996, 16.052269, 26.013638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.222939, 15.744697, 25.676741>,  <13.632083, 15.511465, 26.244284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.222939, 15.744697, 25.676741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.607142, 15.847116, 25.633175>,  <13.837665, 15.908568, 25.607035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.607142, 15.847116, 25.633175>,  <13.222939, 15.744697, 25.676741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.607142, 15.847116, 25.633175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004593, -0.376788, -0.926288,
		-0.278214, 0.890208, -0.360731,
		0.960508, 0.256050, -0.108916,
		13.895295, 15.923931, 25.600500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.217270, 15.920505, 25.014856>,  <13.222939, 15.744697, 25.676741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.217270, 15.920505, 25.014856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.608714, 15.887871, 25.090397>,  <13.843580, 15.868291, 25.135721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.608714, 15.887871, 25.090397>,  <13.217270, 15.920505, 25.014856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.608714, 15.887871, 25.090397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139830, -0.409546, -0.901509,
		0.150892, 0.908634, -0.389379,
		0.978611, -0.081584, 0.188852,
		13.902297, 15.863396, 25.147053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.589368, 16.141685, 24.441101>,  <13.217270, 15.920505, 25.014856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.589368, 16.141685, 24.441101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.843709, 15.897590, 24.630117>,  <13.996314, 15.751132, 24.743526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.843709, 15.897590, 24.630117>,  <13.589368, 16.141685, 24.441101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.843709, 15.897590, 24.630117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207931, -0.454171, -0.866310,
		0.743273, 0.649103, -0.161898,
		0.635854, -0.610242, 0.472541,
		14.034465, 15.714518, 24.771879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.039057, 16.180136, 23.991535>,  <13.589368, 16.141685, 24.441101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.039057, 16.180136, 23.991535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.168823, 15.877738, 24.218946>,  <14.246683, 15.696299, 24.355392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.168823, 15.877738, 24.218946>,  <14.039057, 16.180136, 23.991535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.168823, 15.877738, 24.218946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351922, -0.461426, -0.814394,
		0.878012, 0.464280, 0.116358,
		0.324416, -0.755996, 0.568528,
		14.266149, 15.650939, 24.389505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.751635, 15.956163, 23.662630>,  <14.039057, 16.180136, 23.991535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.751635, 15.956163, 23.662630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.600303, 15.649426, 23.870020>,  <14.509503, 15.465384, 23.994453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.600303, 15.649426, 23.870020>,  <14.751635, 15.956163, 23.662630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.600303, 15.649426, 23.870020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159800, -0.605804, -0.779400,
		0.911773, -0.212019, 0.351736,
		-0.378330, -0.766843, 0.518476,
		14.486803, 15.419374, 24.025562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.231558, 15.499011, 23.568066>,  <14.751635, 15.956163, 23.662630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.231558, 15.499011, 23.568066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.896872, 15.299317, 23.658110>,  <14.696060, 15.179502, 23.712135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.896872, 15.299317, 23.658110>,  <15.231558, 15.499011, 23.568066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.896872, 15.299317, 23.658110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158553, -0.614286, -0.772990,
		0.524185, -0.611080, 0.593137,
		-0.836715, -0.499233, 0.225111,
		14.645857, 15.149548, 23.725643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.504239, 14.797611, 23.493847>,  <15.231558, 15.499011, 23.568066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.504239, 14.797611, 23.493847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.105875, 14.802540, 23.458048>,  <14.866857, 14.805497, 23.436569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.105875, 14.802540, 23.458048>,  <15.504239, 14.797611, 23.493847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.105875, 14.802540, 23.458048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063811, -0.605321, -0.793419,
		-0.063949, -0.795886, 0.602060,
		-0.995911, 0.012321, -0.089496,
		14.807102, 14.806236, 23.431198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.433736, 14.171592, 23.193598>,  <15.504239, 14.797611, 23.493847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.433736, 14.171592, 23.193598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.082966, 14.348063, 23.117321>,  <14.872504, 14.453946, 23.071554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.082966, 14.348063, 23.117321>,  <15.433736, 14.171592, 23.193598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.082966, 14.348063, 23.117321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083543, -0.530634, -0.843474,
		-0.473307, -0.723734, 0.502184,
		-0.876927, 0.441176, -0.190689,
		14.819888, 14.480417, 23.060114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.073071, 13.698900, 22.829453>,  <15.433736, 14.171592, 23.193598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.073071, 13.698900, 22.829453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.835713, 14.014355, 22.765034>,  <14.693299, 14.203628, 22.726383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.835713, 14.014355, 22.765034>,  <15.073071, 13.698900, 22.829453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.835713, 14.014355, 22.765034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268573, -0.382605, -0.884014,
		-0.758784, -0.481315, 0.438842,
		-0.593393, 0.788637, -0.161047,
		14.657696, 14.250946, 22.716721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.392725, 13.442189, 22.615135>,  <15.073071, 13.698900, 22.829453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.392725, 13.442189, 22.615135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.427963, 13.808538, 22.458462>,  <14.449106, 14.028348, 22.364458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.427963, 13.808538, 22.458462>,  <14.392725, 13.442189, 22.615135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.427963, 13.808538, 22.458462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232648, -0.363420, -0.902109,
		-0.968563, 0.170596, 0.181061,
		0.088095, 0.915873, -0.391684,
		14.454391, 14.083301, 22.340956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.966891, 13.429249, 21.943045>,  <14.392725, 13.442189, 22.615135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.966891, 13.429249, 21.943045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.205103, 13.750135, 21.926104>,  <14.348030, 13.942667, 21.915939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.205103, 13.750135, 21.926104>,  <13.966891, 13.429249, 21.943045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.205103, 13.750135, 21.926104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063073, -0.099253, -0.993061,
		-0.800854, 0.588725, -0.109706,
		0.595529, 0.802217, -0.042355,
		14.383761, 13.990801, 21.913397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.613579, 13.998602, 21.687794>,  <13.966891, 13.429249, 21.943045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.613579, 13.998602, 21.687794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.006369, 14.039498, 21.624205>,  <14.242043, 14.064036, 21.586052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.006369, 14.039498, 21.624205>,  <13.613579, 13.998602, 21.687794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.006369, 14.039498, 21.624205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154033, -0.054570, -0.986558,
		-0.109543, 0.993262, -0.037838,
		0.981975, 0.102242, -0.158973,
		14.300961, 14.070171, 21.576513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.665399, 14.428208, 21.047354>,  <13.613579, 13.998602, 21.687794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.665399, 14.428208, 21.047354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.034650, 14.274537, 21.053587>,  <14.256201, 14.182334, 21.057327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.034650, 14.274537, 21.053587>,  <13.665399, 14.428208, 21.047354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.034650, 14.274537, 21.053587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091137, -0.258005, -0.961835,
		0.373538, 0.886476, -0.273185,
		0.923127, -0.384179, 0.015584,
		14.311588, 14.159284, 21.058262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.934574, 14.770105, 20.458452>,  <13.665399, 14.428208, 21.047354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.934574, 14.770105, 20.458452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.192674, 14.470248, 20.517363>,  <14.347533, 14.290334, 20.552708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.192674, 14.470248, 20.517363>,  <13.934574, 14.770105, 20.458452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.192674, 14.470248, 20.517363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050674, -0.150352, -0.987333,
		0.762290, 0.644539, -0.059027,
		0.645249, -0.749642, 0.147274,
		14.386249, 14.245356, 20.561544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.522077, 14.860305, 19.966251>,  <13.934574, 14.770105, 20.458452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.522077, 14.860305, 19.966251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.449533, 14.479090, 20.063271>,  <14.406006, 14.250360, 20.121481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.449533, 14.479090, 20.063271>,  <14.522077, 14.860305, 19.966251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.449533, 14.479090, 20.063271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070988, -0.233307, -0.969809,
		0.980851, -0.193102, -0.025341,
		-0.181360, -0.953037, 0.242547,
		14.395124, 14.193178, 20.136034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.592527, 14.636424, 19.419426>,  <14.522077, 14.860305, 19.966251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.592527, 14.636424, 19.419426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.484718, 14.290578, 19.589037>,  <14.420033, 14.083071, 19.690804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.484718, 14.290578, 19.589037>,  <14.592527, 14.636424, 19.419426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.484718, 14.290578, 19.589037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006132, -0.441853, -0.897066,
		0.962974, -0.239180, 0.124392,
		-0.269524, -0.864615, 0.424027,
		14.403861, 14.031194, 19.716246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.121861, 14.165315, 19.177620>,  <14.592527, 14.636424, 19.419426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.121861, 14.165315, 19.177620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.781887, 13.977995, 19.274210>,  <14.577903, 13.865603, 19.332163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.781887, 13.977995, 19.274210>,  <15.121861, 14.165315, 19.177620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.781887, 13.977995, 19.274210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117767, -0.277857, -0.953376,
		0.513559, -0.838744, 0.181010,
		-0.849934, -0.468298, 0.241473,
		14.526907, 13.837505, 19.346651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.203768, 13.538832, 18.874186>,  <15.121861, 14.165315, 19.177620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.203768, 13.538832, 18.874186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.809227, 13.557972, 18.937206>,  <14.572503, 13.569456, 18.975018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.809227, 13.557972, 18.937206>,  <15.203768, 13.538832, 18.874186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.809227, 13.557972, 18.937206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164656, -0.284097, -0.944551,
		-0.000439, -0.957601, 0.288098,
		-0.986351, 0.047852, 0.157550,
		14.513322, 13.572328, 18.984470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.892200, 12.840050, 18.569286>,  <15.203768, 13.538832, 18.874186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.892200, 12.840050, 18.569286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.616995, 13.130327, 18.568222>,  <14.451872, 13.304494, 18.567583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.616995, 13.130327, 18.568222>,  <14.892200, 12.840050, 18.569286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.616995, 13.130327, 18.568222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266597, -0.256164, -0.929143,
		-0.674955, -0.638552, 0.369712,
		-0.688013, 0.725694, -0.002663,
		14.410591, 13.348035, 18.567423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.311082, 12.464521, 18.352520>,  <14.892200, 12.840050, 18.569286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.311082, 12.464521, 18.352520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.257301, 12.852556, 18.271669>,  <14.225033, 13.085377, 18.223160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.257301, 12.852556, 18.271669>,  <14.311082, 12.464521, 18.352520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.257301, 12.852556, 18.271669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390123, -0.239326, -0.889116,
		-0.910893, -0.040689, 0.410631,
		-0.134452, 0.970086, -0.202127,
		14.216966, 13.143582, 18.211031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.636826, 12.513450, 17.962700>,  <14.311082, 12.464521, 18.352520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.636826, 12.513450, 17.962700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.793650, 12.873713, 17.887753>,  <13.887744, 13.089870, 17.842785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.793650, 12.873713, 17.887753>,  <13.636826, 12.513450, 17.962700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.793650, 12.873713, 17.887753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422354, -0.004714, -0.906419,
		-0.817255, 0.434506, 0.378548,
		0.392060, 0.900657, -0.187368,
		13.911267, 13.143909, 17.831543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.131550, 12.903396, 17.762606>,  <13.636826, 12.513450, 17.962700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.131550, 12.903396, 17.762606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.463479, 13.072033, 17.616373>,  <13.662637, 13.173216, 17.528633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.463479, 13.072033, 17.616373>,  <13.131550, 12.903396, 17.762606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.463479, 13.072033, 17.616373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367516, -0.080082, -0.926563,
		-0.419910, 0.903242, 0.088488,
		0.829824, 0.421594, -0.365583,
		13.712426, 13.198511, 17.506699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.959585, 13.368071, 17.167242>,  <13.131550, 12.903396, 17.762606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.959585, 13.368071, 17.167242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.353276, 13.314072, 17.121508>,  <13.589491, 13.281672, 17.094067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.353276, 13.314072, 17.121508>,  <12.959585, 13.368071, 17.167242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.353276, 13.314072, 17.121508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111046, 0.031674, -0.993311,
		0.137715, 0.990339, 0.016184,
		0.984227, -0.134997, -0.114335,
		13.648544, 13.273573, 17.087208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.225467, 13.842921, 16.651142>,  <12.959585, 13.368071, 17.167242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.225467, 13.842921, 16.651142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.478491, 13.533235, 16.659695>,  <13.630305, 13.347423, 16.664825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.478491, 13.533235, 16.659695>,  <13.225467, 13.842921, 16.651142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.478491, 13.533235, 16.659695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007546, -0.033763, -0.999401,
		0.774475, 0.632019, -0.027199,
		0.632559, -0.774217, 0.021379,
		13.668259, 13.300969, 16.666109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.691384, 13.976306, 16.159565>,  <13.225467, 13.842921, 16.651142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.691384, 13.976306, 16.159565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.774334, 13.589417, 16.218191>,  <13.824103, 13.357285, 16.253366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.774334, 13.589417, 16.218191>,  <13.691384, 13.976306, 16.159565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.774334, 13.589417, 16.218191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100459, -0.127975, -0.986676,
		0.973090, 0.219334, 0.070628,
		0.207373, -0.967220, 0.146565,
		13.836546, 13.299252, 16.262161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.267893, 13.892635, 15.792516>,  <13.691384, 13.976306, 16.159565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.267893, 13.892635, 15.792516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.090886, 13.534627, 15.814856>,  <13.984682, 13.319822, 15.828259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.090886, 13.534627, 15.814856>,  <14.267893, 13.892635, 15.792516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.090886, 13.534627, 15.814856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080055, -0.022604, -0.996534,
		0.893180, -0.445453, -0.061648,
		-0.442515, -0.895020, 0.055850,
		13.958132, 13.266121, 15.831611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.446614, 13.624909, 15.147046>,  <14.267893, 13.892635, 15.792516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.446614, 13.624909, 15.147046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.174025, 13.355848, 15.262378>,  <14.010471, 13.194412, 15.331576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.174025, 13.355848, 15.262378>,  <14.446614, 13.624909, 15.147046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.174025, 13.355848, 15.262378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202864, -0.204915, -0.957526,
		0.703165, -0.711020, 0.003188,
		-0.681474, -0.672652, 0.288329,
		13.969583, 13.154053, 15.348876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.950141, 14.173249, 14.934474>,  <14.446614, 13.624909, 15.147046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.950141, 14.173249, 14.934474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.192123, 14.469026, 14.816318>,  <15.337313, 14.646491, 14.745424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.192123, 14.469026, 14.816318>,  <14.950141, 14.173249, 14.934474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.192123, 14.469026, 14.816318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288875, 0.141888, 0.946794,
		0.742011, -0.658099, -0.127770,
		0.604956, 0.739441, -0.295391,
		15.373610, 14.690858, 14.727700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.568422, 14.081197, 15.338651>,  <14.950141, 14.173249, 14.934474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.568422, 14.081197, 15.338651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.619951, 14.444417, 15.179227>,  <15.650868, 14.662349, 15.083572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.619951, 14.444417, 15.179227>,  <15.568422, 14.081197, 15.338651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.619951, 14.444417, 15.179227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552245, 0.268130, 0.789387,
		0.823668, -0.321793, -0.466925,
		0.128823, 0.908050, -0.398559,
		15.658598, 14.716832, 15.059659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.316654, 14.290299, 15.407449>,  <15.568422, 14.081197, 15.338651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.316654, 14.290299, 15.407449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.180458, 14.658172, 15.329213>,  <16.098742, 14.878895, 15.282271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.180458, 14.658172, 15.329213>,  <16.316654, 14.290299, 15.407449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.180458, 14.658172, 15.329213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498214, 0.352886, 0.791994,
		0.797402, 0.172220, -0.578351,
		-0.340489, 0.919680, -0.195589,
		16.078312, 14.934075, 15.270536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.937288, 14.779906, 15.472237>,  <16.316654, 14.290299, 15.407449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.937288, 14.779906, 15.472237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.598045, 14.985004, 15.525608>,  <16.394499, 15.108063, 15.557631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.598045, 14.985004, 15.525608>,  <16.937288, 14.779906, 15.472237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.598045, 14.985004, 15.525608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376484, 0.406036, 0.832703,
		0.372787, 0.756457, -0.537403,
		-0.848109, 0.512745, 0.133429,
		16.343613, 15.138828, 15.565637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.174000, 15.378465, 15.784048>,  <16.937288, 14.779906, 15.472237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.174000, 15.378465, 15.784048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.779053, 15.429302, 15.821892>,  <16.542084, 15.459805, 15.844598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.779053, 15.429302, 15.821892>,  <17.174000, 15.378465, 15.784048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.779053, 15.429302, 15.821892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139882, 0.418820, 0.897230,
		0.074408, 0.899131, -0.431308,
		-0.987368, 0.127094, 0.094609,
		16.482841, 15.467430, 15.850274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.100113, 16.111132, 16.106043>,  <17.174000, 15.378465, 15.784048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.100113, 16.111132, 16.106043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.790348, 15.878837, 16.206465>,  <16.604488, 15.739459, 16.266718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.790348, 15.878837, 16.206465>,  <17.100113, 16.111132, 16.106043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.790348, 15.878837, 16.206465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110746, 0.266255, 0.957520,
		-0.622913, 0.769318, -0.141877,
		-0.774413, -0.580739, 0.251052,
		16.558023, 15.704615, 16.281780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.660091, 16.629318, 16.502687>,  <17.100113, 16.111132, 16.106043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.660091, 16.629318, 16.502687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.564322, 16.250479, 16.588175>,  <16.506861, 16.023174, 16.639467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.564322, 16.250479, 16.588175>,  <16.660091, 16.629318, 16.502687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.564322, 16.250479, 16.588175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013394, 0.223322, 0.974653,
		-0.970823, 0.230493, -0.066154,
		-0.239424, -0.947101, 0.213719,
		16.492495, 15.966349, 16.652290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.148287, 16.674351, 17.019104>,  <16.660091, 16.629318, 16.502687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.148287, 16.674351, 17.019104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.289227, 16.301678, 17.054470>,  <16.373791, 16.078074, 17.075689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.289227, 16.301678, 17.054470>,  <16.148287, 16.674351, 17.019104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.289227, 16.301678, 17.054470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038833, 0.108947, 0.993289,
		-0.935062, -0.346552, 0.074567,
		0.352350, -0.931682, 0.088415,
		16.394932, 16.022173, 17.080994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.635682, 16.332983, 17.423553>,  <16.148287, 16.674351, 17.019104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.635682, 16.332983, 17.423553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.978251, 16.130825, 17.465721>,  <16.183794, 16.009531, 17.491022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.978251, 16.130825, 17.465721>,  <15.635682, 16.332983, 17.423553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.978251, 16.130825, 17.465721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148464, -0.045526, 0.987869,
		-0.494466, -0.861686, -0.114022,
		0.856424, -0.505396, 0.105418,
		16.235178, 15.979206, 17.497347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.540429, 15.897495, 17.996170>,  <15.635682, 16.332983, 17.423553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.540429, 15.897495, 17.996170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.938603, 15.877701, 17.963530>,  <16.177507, 15.865824, 17.943945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.938603, 15.877701, 17.963530>,  <15.540429, 15.897495, 17.996170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.938603, 15.877701, 17.963530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082780, 0.022281, 0.996319,
		-0.047489, -0.998526, 0.026276,
		0.995436, -0.049489, -0.081599,
		16.237234, 15.862855, 17.939051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.721248, 15.428868, 18.500927>,  <15.540429, 15.897495, 17.996170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.721248, 15.428868, 18.500927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.047928, 15.648520, 18.429985>,  <16.243937, 15.780312, 18.387419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.047928, 15.648520, 18.429985>,  <15.721248, 15.428868, 18.500927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.047928, 15.648520, 18.429985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072837, 0.206792, 0.975670,
		0.572447, -0.809748, 0.128890,
		0.816700, 0.549131, -0.177357,
		16.292938, 15.813260, 18.376778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.338451, 15.134737, 18.854187>,  <15.721248, 15.428868, 18.500927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.338451, 15.134737, 18.854187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.460457, 15.509924, 18.788240>,  <16.533661, 15.735037, 18.748672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.460457, 15.509924, 18.788240>,  <16.338451, 15.134737, 18.854187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.460457, 15.509924, 18.788240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273157, 0.079676, 0.958664,
		0.912333, -0.337441, -0.231911,
		0.305015, 0.937969, -0.164866,
		16.551962, 15.791314, 18.738781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.889059, 15.221530, 19.186443>,  <16.338451, 15.134737, 18.854187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.889059, 15.221530, 19.186443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.826839, 15.616148, 19.166306>,  <16.789509, 15.852919, 19.154222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.826839, 15.616148, 19.166306>,  <16.889059, 15.221530, 19.186443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.826839, 15.616148, 19.166306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429564, 0.113449, 0.895882,
		0.889539, 0.117726, -0.441431,
		-0.155548, 0.986545, -0.050346,
		16.780174, 15.912111, 19.151201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.434227, 15.618727, 19.475845>,  <16.889059, 15.221530, 19.186443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.434227, 15.618727, 19.475845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.166094, 15.915544, 19.473665>,  <17.005215, 16.093634, 19.472357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.166094, 15.915544, 19.473665>,  <17.434227, 15.618727, 19.475845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.166094, 15.915544, 19.473665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372068, 0.342446, 0.862726,
		0.642045, 0.576286, -0.505642,
		-0.670332, 0.742042, -0.005448,
		16.964994, 16.138157, 19.472031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.737972, 16.268320, 19.685314>,  <17.434227, 15.618727, 19.475845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.737972, 16.268320, 19.685314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.349352, 16.321867, 19.763462>,  <17.116180, 16.353996, 19.810350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.349352, 16.321867, 19.763462>,  <17.737972, 16.268320, 19.685314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.349352, 16.321867, 19.763462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227594, 0.299552, 0.926536,
		0.065510, 0.944642, -0.321497,
		-0.971550, 0.133868, 0.195371,
		17.057886, 16.362028, 19.822073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.684717, 16.973419, 19.987034>,  <17.737972, 16.268320, 19.685314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.684717, 16.973419, 19.987034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.368896, 16.758121, 20.104950>,  <17.179403, 16.628942, 20.175699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.368896, 16.758121, 20.104950>,  <17.684717, 16.973419, 19.987034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.368896, 16.758121, 20.104950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031099, 0.444652, 0.895163,
		-0.612895, 0.715946, -0.334337,
		-0.789552, -0.538244, 0.294790,
		17.132030, 16.596649, 20.193386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.288219, 17.329357, 20.434326>,  <17.684717, 16.973419, 19.987034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.288219, 17.329357, 20.434326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.129120, 16.969273, 20.505226>,  <17.033659, 16.753222, 20.547766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.129120, 16.969273, 20.505226>,  <17.288219, 17.329357, 20.434326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.129120, 16.969273, 20.505226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187542, 0.268880, 0.944739,
		-0.898121, 0.342530, -0.275774,
		-0.397751, -0.900209, 0.177248,
		17.009794, 16.699209, 20.558401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.616142, 17.371515, 20.847790>,  <17.288219, 17.329357, 20.434326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.616142, 17.371515, 20.847790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.757557, 17.010038, 20.944414>,  <16.842405, 16.793152, 21.002390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.757557, 17.010038, 20.944414>,  <16.616142, 17.371515, 20.847790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.757557, 17.010038, 20.944414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211178, 0.174467, 0.961751,
		-0.911272, -0.391027, -0.129159,
		0.353536, -0.903692, 0.241563,
		16.863617, 16.738932, 21.016884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.099871, 17.109692, 21.266098>,  <16.616142, 17.371515, 20.847790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.099871, 17.109692, 21.266098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.424892, 16.890821, 21.346449>,  <16.619905, 16.759499, 21.394659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.424892, 16.890821, 21.346449>,  <16.099871, 17.109692, 21.266098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.424892, 16.890821, 21.346449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177097, 0.096578, 0.979443,
		-0.555328, -0.831427, -0.018428,
		0.812556, -0.547176, 0.200876,
		16.668659, 16.726669, 21.406712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.987659, 17.143539, 21.909159>,  <16.099871, 17.109692, 21.266098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.987659, 17.143539, 21.909159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.320915, 16.922338, 21.912428>,  <16.520868, 16.789618, 21.914391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.320915, 16.922338, 21.912428>,  <15.987659, 17.143539, 21.909159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.320915, 16.922338, 21.912428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007957, 0.002794, 0.999964,
		-0.553006, -0.833175, -0.002072,
		0.833140, -0.553003, 0.008175,
		16.570858, 16.756437, 21.914881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.753501, 16.559898, 22.239145>,  <15.987659, 17.143539, 21.909159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.753501, 16.559898, 22.239145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.150019, 16.592985, 22.280119>,  <16.387930, 16.612837, 22.304703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.150019, 16.592985, 22.280119>,  <15.753501, 16.559898, 22.239145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.150019, 16.592985, 22.280119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095105, -0.088164, 0.991556,
		0.091051, -0.992666, -0.079530,
		0.991295, 0.082718, 0.102434,
		16.447407, 16.617800, 22.310850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.063389, 15.982883, 22.624355>,  <15.753501, 16.559898, 22.239145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.063389, 15.982883, 22.624355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.338501, 16.271809, 22.653257>,  <16.503569, 16.445164, 22.670599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.338501, 16.271809, 22.653257>,  <16.063389, 15.982883, 22.624355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.338501, 16.271809, 22.653257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166770, 0.060353, 0.984147,
		0.706501, -0.688928, 0.161969,
		0.687782, 0.722313, 0.072253,
		16.544836, 16.488503, 22.674932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.368580, 15.834546, 23.279026>,  <16.063389, 15.982883, 22.624355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.368580, 15.834546, 23.279026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.453560, 16.215807, 23.192896>,  <16.504547, 16.444563, 23.141218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.453560, 16.215807, 23.192896>,  <16.368580, 15.834546, 23.279026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.453560, 16.215807, 23.192896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219669, 0.261301, 0.939929,
		0.952161, -0.152388, 0.264892,
		0.212451, 0.953152, -0.215326,
		16.517296, 16.501753, 23.128298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.641607, 16.015589, 23.976978>,  <16.368580, 15.834546, 23.279026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.641607, 16.015589, 23.976978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.568224, 16.367435, 23.801426>,  <16.524193, 16.578545, 23.696095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.568224, 16.367435, 23.801426>,  <16.641607, 16.015589, 23.976978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.568224, 16.367435, 23.801426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232103, 0.395073, 0.888845,
		0.955233, 0.264932, 0.131682,
		-0.183459, 0.879618, -0.438879,
		16.513186, 16.631321, 23.669762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.093170, 16.463825, 24.312963>,  <16.641607, 16.015589, 23.976978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.093170, 16.463825, 24.312963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.820850, 16.705011, 24.146618>,  <16.657457, 16.849722, 24.046810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.820850, 16.705011, 24.146618>,  <17.093170, 16.463825, 24.312963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.820850, 16.705011, 24.146618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056086, 0.523180, 0.850374,
		0.730318, 0.602260, -0.322364,
		-0.680801, 0.602963, -0.415866,
		16.616610, 16.885900, 24.021858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.462053, 17.180105, 24.193369>,  <17.093170, 16.463825, 24.312963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.462053, 17.180105, 24.193369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.064083, 17.204924, 24.225061>,  <16.825302, 17.219814, 24.244076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.064083, 17.204924, 24.225061>,  <17.462053, 17.180105, 24.193369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.064083, 17.204924, 24.225061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100618, 0.627015, 0.772482,
		-0.001750, 0.776533, -0.630074,
		-0.994924, 0.062045, 0.079230,
		16.765606, 17.223537, 24.248831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.411777, 17.712872, 24.452375>,  <17.462053, 17.180105, 24.193369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.411777, 17.712872, 24.452375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.051565, 17.569378, 24.550644>,  <16.835438, 17.483282, 24.609606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.051565, 17.569378, 24.550644>,  <17.411777, 17.712872, 24.452375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.051565, 17.569378, 24.550644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072229, 0.433753, 0.898132,
		-0.428753, 0.826539, -0.364696,
		-0.900530, -0.358736, 0.245673,
		16.781406, 17.461758, 24.624346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.048794, 18.249552, 24.632046>,  <17.411777, 17.712872, 24.452375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.048794, 18.249552, 24.632046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.870026, 17.928604, 24.790270>,  <16.762764, 17.736036, 24.885204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.870026, 17.928604, 24.790270>,  <17.048794, 18.249552, 24.632046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.870026, 17.928604, 24.790270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180653, 0.514016, 0.838542,
		-0.876143, 0.303303, -0.374675,
		-0.446921, -0.802368, 0.395559,
		16.735949, 17.687893, 24.908937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.479816, 18.522839, 24.996023>,  <17.048794, 18.249552, 24.632046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.479816, 18.522839, 24.996023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.530754, 18.149340, 25.129829>,  <16.561316, 17.925241, 25.210114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.530754, 18.149340, 25.129829>,  <16.479816, 18.522839, 24.996023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.530754, 18.149340, 25.129829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207177, 0.304783, 0.929615,
		-0.969980, -0.187683, -0.154639,
		0.127342, -0.933746, 0.334517,
		16.568956, 17.869215, 25.230185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.885445, 18.495939, 25.380033>,  <16.479816, 18.522839, 24.996023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.885445, 18.495939, 25.380033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.136101, 18.209755, 25.503603>,  <16.286495, 18.038044, 25.577745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.136101, 18.209755, 25.503603>,  <15.885445, 18.495939, 25.380033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.136101, 18.209755, 25.503603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162802, 0.267476, 0.949712,
		-0.762113, -0.645422, 0.051132,
		0.626641, -0.715463, 0.308923,
		16.324093, 17.995115, 25.596279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.545445, 17.976349, 25.893137>,  <15.885445, 18.495939, 25.380033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.545445, 17.976349, 25.893137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.939391, 17.983725, 25.962076>,  <16.175758, 17.988150, 26.003439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.939391, 17.983725, 25.962076>,  <15.545445, 17.976349, 25.893137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.939391, 17.983725, 25.962076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172399, 0.207118, 0.963006,
		-0.017939, -0.978142, 0.207162,
		0.984864, 0.018439, 0.172346,
		16.234850, 17.989256, 26.013781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.643698, 17.659771, 26.657917>,  <15.545445, 17.976349, 25.893137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.643698, 17.659771, 26.657917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.958545, 17.874804, 26.536953>,  <16.147453, 18.003822, 26.464375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.958545, 17.874804, 26.536953>,  <15.643698, 17.659771, 26.657917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.958545, 17.874804, 26.536953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021244, 0.466366, 0.884337,
		0.616436, -0.702502, 0.355665,
		0.787119, 0.537581, -0.302409,
		16.194681, 18.036077, 26.446230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.125458, 17.498400, 27.208887>,  <15.643698, 17.659771, 26.657917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.125458, 17.498400, 27.208887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.170904, 17.861628, 27.047640>,  <16.198172, 18.079565, 26.950891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.170904, 17.861628, 27.047640>,  <16.125458, 17.498400, 27.208887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.170904, 17.861628, 27.047640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032806, 0.402093, 0.915011,
		0.992983, -0.117183, 0.015893,
		0.113614, 0.908069, -0.403116,
		16.204988, 18.134048, 26.926704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.677731, 17.862089, 27.581287>,  <16.125458, 17.498400, 27.208887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.677731, 17.862089, 27.581287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.421013, 18.117756, 27.411785>,  <16.266983, 18.271156, 27.310083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.421013, 18.117756, 27.411785>,  <16.677731, 17.862089, 27.581287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.421013, 18.117756, 27.411785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103395, 0.619648, 0.778040,
		0.759875, 0.455527, -0.463773,
		-0.641794, 0.639165, -0.423755,
		16.228474, 18.309505, 27.284658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.899649, 18.568300, 27.662718>,  <16.677731, 17.862089, 27.581287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.899649, 18.568300, 27.662718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.503321, 18.528030, 27.626621>,  <16.265524, 18.503868, 27.604963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.503321, 18.528030, 27.626621>,  <16.899649, 18.568300, 27.662718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.503321, 18.528030, 27.626621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125856, 0.442962, 0.887662,
		-0.049391, 0.890870, -0.451566,
		-0.990818, -0.100675, -0.090243,
		16.206076, 18.497828, 27.599548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.616205, 19.260572, 27.440794>,  <16.899649, 18.568300, 27.662718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.616205, 19.260572, 27.440794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.416191, 18.995338, 27.663607>,  <16.296183, 18.836197, 27.797295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.416191, 18.995338, 27.663607>,  <16.616205, 19.260572, 27.440794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.416191, 18.995338, 27.663607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068716, 0.610809, 0.788790,
		-0.863275, 0.432699, -0.259860,
		-0.500034, -0.663087, 0.557030,
		16.266180, 18.796413, 27.830715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.899213, 19.498636, 27.673298>,  <16.616205, 19.260572, 27.440794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.899213, 19.498636, 27.673298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.086279, 19.242773, 27.917307>,  <16.198519, 19.089254, 28.063713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.086279, 19.242773, 27.917307>,  <15.899213, 19.498636, 27.673298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.086279, 19.242773, 27.917307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139968, 0.627845, 0.765650,
		-0.872753, -0.443451, 0.204090,
		0.467665, -0.639657, 0.610023,
		16.226578, 19.050877, 28.100313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.397722, 19.296301, 28.247700>,  <15.899213, 19.498636, 27.673298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.397722, 19.296301, 28.247700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.785213, 19.287563, 28.346567>,  <16.017708, 19.282322, 28.405888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.785213, 19.287563, 28.346567>,  <15.397722, 19.296301, 28.247700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.785213, 19.287563, 28.346567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156987, 0.717457, 0.678682,
		-0.192156, -0.696260, 0.691591,
		0.968726, -0.021842, 0.247168,
		16.075830, 19.281010, 28.420717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.270947, 20.171803, 28.187435>,  <15.397722, 19.296301, 28.247700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.270947, 20.171803, 28.187435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.413350, 20.540691, 28.127081>,  <15.498793, 20.762024, 28.090868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.413350, 20.540691, 28.127081>,  <15.270947, 20.171803, 28.187435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.413350, 20.540691, 28.127081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393839, 0.001648, -0.919178,
		-0.847436, 0.386661, 0.363793,
		0.356010, 0.922220, -0.150885,
		15.520153, 20.817358, 28.081816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.723723, 20.574600, 27.917416>,  <15.270947, 20.171803, 28.187435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.723723, 20.574600, 27.917416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.071606, 20.719379, 27.783188>,  <15.280335, 20.806246, 27.702652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.071606, 20.719379, 27.783188>,  <14.723723, 20.574600, 27.917416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.071606, 20.719379, 27.783188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339843, -0.053911, -0.938936,
		-0.357935, 0.930639, 0.076118,
		0.869707, 0.361946, -0.335567,
		15.332518, 20.827963, 27.682518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.596406, 21.057507, 27.360401>,  <14.723723, 20.574600, 27.917416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.596406, 21.057507, 27.360401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.985361, 20.989388, 27.296579>,  <15.218735, 20.948515, 27.258286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.985361, 20.989388, 27.296579>,  <14.596406, 21.057507, 27.360401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.985361, 20.989388, 27.296579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170674, -0.052681, -0.983918,
		0.159154, 0.983983, -0.080293,
		0.972389, -0.170299, -0.159556,
		15.277078, 20.938297, 27.248713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.862822, 21.543154, 26.733763>,  <14.596406, 21.057507, 27.360401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.862822, 21.543154, 26.733763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.137224, 21.254656, 26.772133>,  <15.301866, 21.081556, 26.795155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.137224, 21.254656, 26.772133>,  <14.862822, 21.543154, 26.733763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.137224, 21.254656, 26.772133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026582, -0.156591, -0.987306,
		0.727110, 0.674749, -0.126595,
		0.686007, -0.721245, 0.095923,
		15.343026, 21.038282, 26.800909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.351393, 21.718348, 26.231085>,  <14.862822, 21.543154, 26.733763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.351393, 21.718348, 26.231085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.407566, 21.332096, 26.318573>,  <15.441270, 21.100346, 26.371065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.407566, 21.332096, 26.318573>,  <15.351393, 21.718348, 26.231085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.407566, 21.332096, 26.318573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164254, -0.195125, -0.966926,
		0.976370, 0.171714, 0.131206,
		0.140433, -0.965629, 0.218719,
		15.449696, 21.042408, 26.384190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.786345, 21.514566, 25.654461>,  <15.351393, 21.718348, 26.231085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.786345, 21.514566, 25.654461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.674745, 21.162893, 25.808962>,  <15.607784, 20.951889, 25.901663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.674745, 21.162893, 25.808962>,  <15.786345, 21.514566, 25.654461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.674745, 21.162893, 25.808962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085127, -0.423286, -0.901988,
		0.956510, -0.218776, 0.192940,
		-0.279002, -0.879185, 0.386254,
		15.591044, 20.899137, 25.924837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318399, 21.103453, 25.530029>,  <15.786345, 21.514566, 25.654461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318399, 21.103453, 25.530029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.002598, 20.864908, 25.588043>,  <15.813116, 20.721783, 25.622852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.002598, 20.864908, 25.588043>,  <16.318399, 21.103453, 25.530029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.002598, 20.864908, 25.588043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099655, -0.357741, -0.928488,
		0.605598, -0.718593, 0.341869,
		-0.789506, -0.596360, 0.145036,
		15.765746, 20.686001, 25.631554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.401928, 20.475597, 25.187916>,  <16.318399, 21.103453, 25.530029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.401928, 20.475597, 25.187916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.002687, 20.468554, 25.211538>,  <15.763144, 20.464327, 25.225712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.002687, 20.468554, 25.211538>,  <16.401928, 20.475597, 25.187916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.002687, 20.468554, 25.211538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048204, -0.373991, -0.926179,
		0.038398, -0.927265, 0.372432,
		-0.998100, -0.017611, 0.059059,
		15.703258, 20.463270, 25.229256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.192835, 19.834063, 24.974903>,  <16.401928, 20.475597, 25.187916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.192835, 19.834063, 24.974903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.891064, 20.088448, 24.909927>,  <15.710001, 20.241079, 24.870941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.891064, 20.088448, 24.909927>,  <16.192835, 19.834063, 24.974903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.891064, 20.088448, 24.909927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005191, -0.253249, -0.967387,
		-0.656361, -0.728982, 0.194359,
		-0.754429, 0.635965, -0.162439,
		15.664735, 20.279238, 24.861197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.849243, 19.410591, 24.556181>,  <16.192835, 19.834063, 24.974903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.849243, 19.410591, 24.556181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.713470, 19.783274, 24.504484>,  <15.632005, 20.006884, 24.473465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.713470, 19.783274, 24.504484>,  <15.849243, 19.410591, 24.556181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.713470, 19.783274, 24.504484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020127, -0.130175, -0.991287,
		-0.940414, -0.339079, 0.025433,
		-0.339435, 0.931708, -0.129243,
		15.611639, 20.062786, 24.465712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.303328, 19.423527, 23.969753>,  <15.849243, 19.410591, 24.556181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.303328, 19.423527, 23.969753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.429858, 19.800560, 24.012598>,  <15.505776, 20.026779, 24.038305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.429858, 19.800560, 24.012598>,  <15.303328, 19.423527, 23.969753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.429858, 19.800560, 24.012598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093369, 0.081428, -0.992296,
		-0.944044, 0.323891, -0.062251,
		0.316327, 0.942584, 0.107113,
		15.524756, 20.083336, 24.044731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.821346, 19.781473, 23.522144>,  <15.303328, 19.423527, 23.969753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.821346, 19.781473, 23.522144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.147086, 20.000967, 23.597750>,  <15.342530, 20.132664, 23.643112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.147086, 20.000967, 23.597750>,  <14.821346, 19.781473, 23.522144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.147086, 20.000967, 23.597750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039384, 0.272675, -0.961300,
		-0.579036, 0.790279, 0.200442,
		0.814350, 0.548733, 0.189013,
		15.391391, 20.165586, 23.654453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.654461, 20.411936, 23.248354>,  <14.821346, 19.781473, 23.522144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.654461, 20.411936, 23.248354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.047851, 20.344952, 23.275873>,  <15.283885, 20.304760, 23.292385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.047851, 20.344952, 23.275873>,  <14.654461, 20.411936, 23.248354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.047851, 20.344952, 23.275873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109891, 0.250180, -0.961943,
		0.143877, 0.953607, 0.264449,
		0.983475, -0.167462, 0.068797,
		15.342894, 20.294712, 23.296513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.893238, 20.857647, 22.821501>,  <14.654461, 20.411936, 23.248354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.893238, 20.857647, 22.821501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.206567, 20.610617, 22.849806>,  <15.394564, 20.462399, 22.866789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.206567, 20.610617, 22.849806>,  <14.893238, 20.857647, 22.821501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.206567, 20.610617, 22.849806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173305, 0.107645, -0.978968,
		0.596971, 0.779109, 0.191349,
		0.783321, -0.617577, 0.070763,
		15.441563, 20.425344, 22.871035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.308893, 21.150038, 22.478655>,  <14.893238, 20.857647, 22.821501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.308893, 21.150038, 22.478655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.497727, 20.797440, 22.482618>,  <15.611028, 20.585880, 22.484997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.497727, 20.797440, 22.482618>,  <15.308893, 21.150038, 22.478655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.497727, 20.797440, 22.482618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241711, 0.118622, -0.963071,
		0.847768, 0.457048, 0.269067,
		0.472086, -0.881497, 0.009909,
		15.639354, 20.532991, 22.485592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.838099, 21.246727, 22.083954>,  <15.308893, 21.150038, 22.478655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.838099, 21.246727, 22.083954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.775416, 20.851717, 22.090067>,  <15.737806, 20.614710, 22.093735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.775416, 20.851717, 22.090067>,  <15.838099, 21.246727, 22.083954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.775416, 20.851717, 22.090067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207465, -0.048041, -0.977062,
		0.965609, -0.149943, 0.212406,
		-0.156708, -0.987527, 0.015281,
		15.728404, 20.555458, 22.094650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.344034, 20.942511, 21.681509>,  <15.838099, 21.246727, 22.083954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.344034, 20.942511, 21.681509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.089981, 20.633627, 21.674530>,  <15.937550, 20.448298, 21.670343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.089981, 20.633627, 21.674530>,  <16.344034, 20.942511, 21.681509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.089981, 20.633627, 21.674530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355397, -0.272105, -0.894233,
		0.685785, -0.574156, 0.447262,
		-0.635131, -0.772207, -0.017448,
		15.899442, 20.401964, 21.669296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.726078, 20.338909, 21.342039>,  <16.344034, 20.942511, 21.681509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.726078, 20.338909, 21.342039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.342880, 20.225903, 21.322325>,  <16.112961, 20.158098, 21.310495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.342880, 20.225903, 21.322325>,  <16.726078, 20.338909, 21.342039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.342880, 20.225903, 21.322325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183616, -0.472226, -0.862141,
		0.220294, -0.834977, 0.504265,
		-0.957996, -0.282515, -0.049286,
		16.055481, 20.141148, 21.307539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.770956, 19.609140, 21.153925>,  <16.726078, 20.338909, 21.342039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.770956, 19.609140, 21.153925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.394073, 19.721468, 21.080830>,  <16.167944, 19.788864, 21.036972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.394073, 19.721468, 21.080830>,  <16.770956, 19.609140, 21.153925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.394073, 19.721468, 21.080830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005994, -0.531204, -0.847223,
		-0.334984, -0.799353, 0.498820,
		-0.942205, 0.280816, -0.182736,
		16.111412, 19.805714, 21.026009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.460463, 19.021875, 21.323420>,  <16.770956, 19.609140, 21.153925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.460463, 19.021875, 21.323420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.261238, 19.265928, 21.076950>,  <16.141703, 19.412359, 20.929068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.261238, 19.265928, 21.076950>,  <16.460463, 19.021875, 21.323420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.261238, 19.265928, 21.076950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244048, -0.583232, -0.774778,
		-0.832091, -0.536264, 0.141584,
		-0.498062, 0.610133, -0.616176,
		16.111820, 19.448969, 20.892097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.017422, 18.566298, 20.870256>,  <16.460463, 19.021875, 21.323420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.017422, 18.566298, 20.870256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.065088, 18.902695, 20.659151>,  <16.093689, 19.104532, 20.532488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.065088, 18.902695, 20.659151>,  <16.017422, 18.566298, 20.870256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.065088, 18.902695, 20.659151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283946, -0.538217, -0.793535,
		-0.951406, -0.055292, -0.302934,
		0.119168, 0.840991, -0.527763,
		16.100838, 19.154991, 20.500822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.764526, 18.376677, 20.226461>,  <16.017422, 18.566298, 20.870256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.764526, 18.376677, 20.226461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.985263, 18.701973, 20.152586>,  <16.117704, 18.897150, 20.108261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.985263, 18.701973, 20.152586>,  <15.764526, 18.376677, 20.226461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.985263, 18.701973, 20.152586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383675, -0.444214, -0.809609,
		-0.740448, 0.375916, -0.557157,
		0.551842, 0.813241, -0.184688,
		16.150816, 18.945946, 20.097179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.506384, 18.684719, 19.642313>,  <15.764526, 18.376677, 20.226461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.506384, 18.684719, 19.642313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.875881, 18.837646, 19.651518>,  <16.097580, 18.929403, 19.657042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.875881, 18.837646, 19.651518>,  <15.506384, 18.684719, 19.642313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.875881, 18.837646, 19.651518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196144, -0.420598, -0.885791,
		-0.328974, 0.822758, -0.463514,
		0.923744, 0.382318, 0.023013,
		16.153004, 18.952341, 19.658422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.583676, 18.964300, 19.027842>,  <15.506384, 18.684719, 19.642313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.583676, 18.964300, 19.027842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.969564, 18.958113, 19.132971>,  <16.201097, 18.954401, 19.196049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.969564, 18.958113, 19.132971>,  <15.583676, 18.964300, 19.027842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.969564, 18.958113, 19.132971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244737, -0.315305, -0.916890,
		0.097052, 0.948865, -0.300395,
		0.964720, -0.015468, 0.262823,
		16.258980, 18.953472, 19.211819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.962009, 19.312689, 18.425388>,  <15.583676, 18.964300, 19.027842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.962009, 19.312689, 18.425388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.251116, 19.127205, 18.630360>,  <16.424580, 19.015915, 18.753344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.251116, 19.127205, 18.630360>,  <15.962009, 19.312689, 18.425388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.251116, 19.127205, 18.630360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399390, -0.324856, -0.857296,
		0.564001, 0.824283, -0.049594,
		0.722766, -0.463708, 0.512430,
		16.467945, 18.988092, 18.784088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.695091, 19.542049, 18.197889>,  <15.962009, 19.312689, 18.425388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.695091, 19.542049, 18.197889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.711969, 19.175217, 18.356472>,  <16.722097, 18.955116, 18.451622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.711969, 19.175217, 18.356472>,  <16.695091, 19.542049, 18.197889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.711969, 19.175217, 18.356472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550171, -0.309899, -0.775419,
		0.833985, 0.250839, 0.491476,
		0.042197, -0.917084, 0.396455,
		16.724628, 18.900091, 18.475409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.410967, 19.314873, 18.170231>,  <16.695091, 19.542049, 18.197889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.410967, 19.314873, 18.170231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.180130, 18.988285, 18.177639>,  <17.041628, 18.792332, 18.182083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.180130, 18.988285, 18.177639>,  <17.410967, 19.314873, 18.170231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.180130, 18.988285, 18.177639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581203, -0.426520, -0.693025,
		0.573733, -0.389175, 0.720676,
		-0.577091, -0.816470, 0.018519,
		17.007002, 18.743343, 18.183195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.850340, 18.769514, 18.292225>,  <17.410967, 19.314873, 18.170231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.850340, 18.769514, 18.292225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.525620, 18.595968, 18.135895>,  <17.330788, 18.491840, 18.042097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.525620, 18.595968, 18.135895>,  <17.850340, 18.769514, 18.292225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.525620, 18.595968, 18.135895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569642, -0.441214, -0.693425,
		0.128416, -0.785551, 0.605325,
		-0.811799, -0.433865, -0.390824,
		17.282080, 18.465809, 18.018648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.010733, 17.954134, 18.133266>,  <17.850340, 18.769514, 18.292225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.010733, 17.954134, 18.133266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.686043, 18.033089, 17.913395>,  <17.491230, 18.080462, 17.781473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.686043, 18.033089, 17.913395>,  <18.010733, 17.954134, 18.133266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.686043, 18.033089, 17.913395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381546, -0.533344, -0.754961,
		-0.442184, -0.822547, 0.357617,
		-0.811724, 0.197384, -0.549676,
		17.442526, 18.092304, 17.748491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.848408, 17.316206, 17.741714>,  <18.010733, 17.954134, 18.133266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.848408, 17.316206, 17.741714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.711004, 17.647850, 17.565269>,  <17.628563, 17.846836, 17.459402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.711004, 17.647850, 17.565269>,  <17.848408, 17.316206, 17.741714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.711004, 17.647850, 17.565269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403110, -0.294059, -0.866621,
		-0.848237, -0.475507, -0.233211,
		-0.343506, 0.829109, -0.441114,
		17.607952, 17.896584, 17.432936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.006887, 17.175501, 17.011967>,  <17.848408, 17.316206, 17.741714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.006887, 17.175501, 17.011967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.883427, 17.553263, 16.966646>,  <17.809351, 17.779919, 16.939455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.883427, 17.553263, 16.966646>,  <18.006887, 17.175501, 17.011967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.883427, 17.553263, 16.966646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385435, 0.015283, -0.922608,
		-0.869583, -0.328433, -0.368723,
		-0.308650, 0.944403, -0.113300,
		17.790831, 17.836584, 16.932655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.734667, 17.235722, 16.308352>,  <18.006887, 17.175501, 17.011967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.734667, 17.235722, 16.308352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.839094, 17.603603, 16.425648>,  <17.901751, 17.824331, 16.496025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.839094, 17.603603, 16.425648>,  <17.734667, 17.235722, 16.308352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.839094, 17.603603, 16.425648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214559, 0.240890, -0.946539,
		-0.941173, 0.310029, -0.134442,
		0.261069, 0.919703, 0.293238,
		17.917416, 17.879515, 16.513618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.469133, 17.681677, 15.846472>,  <17.734667, 17.235722, 16.308352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.469133, 17.681677, 15.846472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.732088, 17.926706, 16.022017>,  <17.889860, 18.073725, 16.127342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.732088, 17.926706, 16.022017>,  <17.469133, 17.681677, 15.846472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.732088, 17.926706, 16.022017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202561, 0.417303, -0.885905,
		-0.725820, 0.671276, 0.150246,
		0.657385, 0.612574, 0.438861,
		17.929304, 18.110477, 16.153675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.348618, 18.460613, 15.614637>,  <17.469133, 17.681677, 15.846472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.348618, 18.460613, 15.614637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.726498, 18.382423, 15.719962>,  <17.953226, 18.335510, 15.783156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.726498, 18.382423, 15.719962>,  <17.348618, 18.460613, 15.614637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.726498, 18.382423, 15.719962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322214, 0.403928, -0.856166,
		0.061000, 0.893662, 0.444575,
		0.944699, -0.195475, 0.263311,
		18.009907, 18.323780, 15.798955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.618824, 18.959599, 15.360408>,  <17.348618, 18.460613, 15.614637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.618824, 18.959599, 15.360408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.960485, 18.766996, 15.438969>,  <18.165482, 18.651434, 15.486105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.960485, 18.766996, 15.438969>,  <17.618824, 18.959599, 15.360408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.960485, 18.766996, 15.438969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415542, 0.404919, -0.814472,
		0.312647, 0.777297, 0.545950,
		0.854152, -0.481507, 0.196403,
		18.216732, 18.622543, 15.497890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.219086, 19.435011, 15.318957>,  <17.618824, 18.959599, 15.360408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.219086, 19.435011, 15.318957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.335716, 19.064253, 15.224425>,  <18.405695, 18.841799, 15.167706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.335716, 19.064253, 15.224425>,  <18.219086, 19.435011, 15.318957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.335716, 19.064253, 15.224425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431036, 0.347876, -0.832580,
		0.853926, 0.140895, 0.500958,
		0.291578, -0.926893, -0.236330,
		18.423189, 18.786184, 15.153526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.840124, 19.557114, 14.956982>,  <18.219086, 19.435011, 15.318957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.840124, 19.557114, 14.956982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.751303, 19.189516, 14.826666>,  <18.698009, 18.968956, 14.748476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.751303, 19.189516, 14.826666>,  <18.840124, 19.557114, 14.956982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.751303, 19.189516, 14.826666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142950, 0.299837, -0.943220,
		0.964499, -0.256015, 0.064792,
		-0.222051, -0.918997, -0.325790,
		18.684687, 18.913816, 14.728929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.391998, 19.427296, 14.381303>,  <18.840124, 19.557114, 14.956982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.391998, 19.427296, 14.381303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.125908, 19.134274, 14.323563>,  <18.966253, 18.958460, 14.288918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.125908, 19.134274, 14.323563>,  <19.391998, 19.427296, 14.381303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.125908, 19.134274, 14.323563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184635, 0.025931, -0.982465,
		0.723452, -0.680214, 0.118005,
		-0.665227, -0.732555, -0.144351,
		18.926340, 18.914507, 14.280257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.635050, 18.874454, 13.912961>,  <19.391998, 19.427296, 14.381303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.635050, 18.874454, 13.912961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.245224, 18.799778, 13.863377>,  <19.011328, 18.754972, 13.833626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.245224, 18.799778, 13.863377>,  <19.635050, 18.874454, 13.912961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.245224, 18.799778, 13.863377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133930, -0.041721, -0.990112,
		0.179676, -0.981532, 0.065664,
		-0.974566, -0.186694, -0.123961,
		18.952854, 18.743771, 13.826188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.567324, 18.360783, 13.400017>,  <19.635050, 18.874454, 13.912961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.567324, 18.360783, 13.400017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.224630, 18.567080, 13.401580>,  <19.019014, 18.690859, 13.402517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.224630, 18.567080, 13.401580>,  <19.567324, 18.360783, 13.400017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.224630, 18.567080, 13.401580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119569, 0.205981, -0.971224,
		-0.501708, -0.831613, -0.238138,
		-0.856734, 0.515744, 0.003907,
		18.967609, 18.721804, 13.402752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.162331, 18.071110, 12.779164>,  <19.567324, 18.360783, 13.400017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.162331, 18.071110, 12.779164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.046963, 18.446800, 12.853639>,  <18.977741, 18.672215, 12.898323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.046963, 18.446800, 12.853639>,  <19.162331, 18.071110, 12.779164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.046963, 18.446800, 12.853639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096401, 0.221946, -0.970282,
		-0.952639, -0.261900, -0.154557,
		-0.288420, 0.939228, 0.186187,
		18.960436, 18.728569, 12.909494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.758713, 18.197239, 12.159956>,  <19.162331, 18.071110, 12.779164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.758713, 18.197239, 12.159956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.876047, 18.527710, 12.352365>,  <18.946447, 18.725992, 12.467810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.876047, 18.527710, 12.352365>,  <18.758713, 18.197239, 12.159956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.876047, 18.527710, 12.352365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207779, 0.436031, -0.875617,
		-0.933157, 0.356796, -0.043759,
		0.293336, 0.826180, 0.481020,
		18.964048, 18.775564, 12.496671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.348938, 18.720800, 11.885020>,  <18.758713, 18.197239, 12.159956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.348938, 18.720800, 11.885020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.686779, 18.873325, 12.035353>,  <18.889484, 18.964840, 12.125552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.686779, 18.873325, 12.035353>,  <18.348938, 18.720800, 11.885020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.686779, 18.873325, 12.035353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230326, 0.374913, -0.897992,
		-0.483318, 0.845010, 0.228827,
		0.844602, 0.381312, 0.375830,
		18.940159, 18.987719, 12.148102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.509151, 19.435377, 11.735436>,  <18.348938, 18.720800, 11.885020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.509151, 19.435377, 11.735436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.873663, 19.278049, 11.784220>,  <19.092369, 19.183653, 11.813490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.873663, 19.278049, 11.784220>,  <18.509151, 19.435377, 11.735436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.873663, 19.278049, 11.784220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251619, 0.297395, -0.921002,
		0.325979, 0.869975, 0.369975,
		0.911277, -0.393320, 0.121957,
		19.147045, 19.160053, 11.820807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.928242, 19.996231, 11.585590>,  <18.509151, 19.435377, 11.735436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.928242, 19.996231, 11.585590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.119576, 19.649315, 11.530450>,  <19.234375, 19.441166, 11.497365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.119576, 19.649315, 11.530450>,  <18.928242, 19.996231, 11.585590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.119576, 19.649315, 11.530450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287708, 0.303081, -0.908497,
		0.829711, 0.394904, 0.394500,
		0.478334, -0.867291, -0.137852,
		19.263075, 19.389128, 11.489094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.545393, 20.111706, 11.288915>,  <18.928242, 19.996231, 11.585590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.545393, 20.111706, 11.288915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.545441, 19.717606, 11.220467>,  <19.545469, 19.481146, 11.179398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.545441, 19.717606, 11.220467>,  <19.545393, 20.111706, 11.288915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.545441, 19.717606, 11.220467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457837, 0.152184, -0.875914,
		0.889036, -0.078242, 0.451102,
		0.000117, -0.985250, -0.171119,
		19.545475, 19.422031, 11.169130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.763210, 20.019463, 12.018641>,  <19.545393, 20.111706, 11.288915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.763210, 20.019463, 12.018641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.823097, 20.405165, 12.106095>,  <19.859030, 20.636585, 12.158567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.823097, 20.405165, 12.106095>,  <19.763210, 20.019463, 12.018641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.823097, 20.405165, 12.106095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549421, -0.264979, 0.792416,
		0.822023, 0.001486, -0.569452,
		0.149715, 0.964253, 0.218636,
		19.868011, 20.694441, 12.171686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.451954, 20.267025, 12.102999>,  <19.763210, 20.019463, 12.018641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.451954, 20.267025, 12.102999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.191959, 20.464373, 12.334206>,  <20.035963, 20.582781, 12.472930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.191959, 20.464373, 12.334206>,  <20.451954, 20.267025, 12.102999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.191959, 20.464373, 12.334206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580910, -0.167818, 0.796480,
		0.489960, 0.853477, -0.177524,
		-0.649986, 0.493369, 0.578018,
		19.996964, 20.612383, 12.507611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.408318, 19.459307, 12.221339>,  <20.451954, 20.267025, 12.102999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.408318, 19.459307, 12.221339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.498375, 19.069746, 12.209836>,  <20.552410, 18.836010, 12.202934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.498375, 19.069746, 12.209836>,  <20.408318, 19.459307, 12.221339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.498375, 19.069746, 12.209836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269968, 0.090716, -0.958586,
		0.936177, 0.208058, 0.283346,
		0.225145, -0.973901, -0.028757,
		20.565918, 18.777576, 12.201209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.945589, 19.479881, 11.815473>,  <20.408318, 19.459307, 12.221339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.945589, 19.479881, 11.815473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.847204, 19.092270, 11.806614>,  <20.788174, 18.859703, 11.801298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.847204, 19.092270, 11.806614>,  <20.945589, 19.479881, 11.815473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.847204, 19.092270, 11.806614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121471, -0.008147, -0.992561,
		0.961638, -0.246823, 0.119713,
		-0.245963, -0.969026, -0.022148,
		20.773415, 18.801561, 11.799970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.487446, 19.077768, 11.345058>,  <20.945589, 19.479881, 11.815473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.487446, 19.077768, 11.345058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.134512, 18.894316, 11.387278>,  <20.922750, 18.784245, 11.412609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.134512, 18.894316, 11.387278>,  <21.487446, 19.077768, 11.345058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.134512, 18.894316, 11.387278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116665, -0.004116, -0.993163,
		0.455930, -0.888617, -0.049874,
		-0.882337, -0.458631, 0.105547,
		20.869810, 18.756727, 11.418941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.637974, 18.570953, 10.962878>,  <21.487446, 19.077768, 11.345058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.637974, 18.570953, 10.962878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.240789, 18.610567, 10.988859>,  <21.002478, 18.634335, 11.004448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.240789, 18.610567, 10.988859>,  <21.637974, 18.570953, 10.962878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.240789, 18.610567, 10.988859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054488, 0.104933, -0.992985,
		-0.105154, -0.989536, -0.098798,
		-0.992962, 0.099033, 0.064952,
		20.942902, 18.640278, 11.008345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.385664, 17.992455, 10.578986>,  <21.637974, 18.570953, 10.962878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.385664, 17.992455, 10.578986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.107836, 18.279736, 10.595725>,  <20.941139, 18.452105, 10.605768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.107836, 18.279736, 10.595725>,  <21.385664, 17.992455, 10.578986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.107836, 18.279736, 10.595725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137643, -0.075570, -0.987595,
		-0.706133, -0.691716, 0.151344,
		-0.694572, 0.718205, 0.041847,
		20.899464, 18.495197, 10.608279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.666119, 17.700354, 10.253839>,  <21.385664, 17.992455, 10.578986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.666119, 17.700354, 10.253839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.693710, 18.098536, 10.227585>,  <20.710264, 18.337444, 10.211832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.693710, 18.098536, 10.227585>,  <20.666119, 17.700354, 10.253839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.693710, 18.098536, 10.227585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158783, -0.054000, -0.985836,
		-0.984901, 0.078423, 0.154337,
		0.068978, 0.995457, -0.065636,
		20.714403, 18.397173, 10.207894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.077442, 17.855698, 9.737826>,  <20.666119, 17.700354, 10.253839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.077442, 17.855698, 9.737826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.296329, 18.190113, 9.753771>,  <20.427662, 18.390762, 9.763337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.296329, 18.190113, 9.753771>,  <20.077442, 17.855698, 9.737826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.296329, 18.190113, 9.753771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216857, 0.187618, -0.958004,
		-0.808408, 0.515594, 0.283969,
		0.547219, 0.836040, 0.039861,
		20.460495, 18.440926, 9.765729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.656605, 18.317764, 9.416520>,  <20.077442, 17.855698, 9.737826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.656605, 18.317764, 9.416520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.023424, 18.476734, 9.403423>,  <20.243517, 18.572117, 9.395565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.023424, 18.476734, 9.403423>,  <19.656605, 18.317764, 9.416520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.023424, 18.476734, 9.403423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097839, 0.144642, -0.984635,
		-0.386582, 0.906164, 0.171527,
		0.917050, 0.397425, -0.032742,
		20.298540, 18.595963, 9.393600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.551876, 19.037453, 9.074964>,  <19.656605, 18.317764, 9.416520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.551876, 19.037453, 9.074964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.937071, 18.930790, 9.059212>,  <20.168188, 18.866793, 9.049761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.937071, 18.930790, 9.059212>,  <19.551876, 19.037453, 9.074964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.937071, 18.930790, 9.059212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069174, 0.385677, -0.920037,
		0.260523, 0.883259, 0.389847,
		0.962986, -0.266658, -0.039379,
		20.225967, 18.850792, 9.047398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.843895, 19.582073, 8.643577>,  <19.551876, 19.037453, 9.074964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.843895, 19.582073, 8.643577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.123425, 19.296333, 8.628890>,  <20.291142, 19.124889, 8.620078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.123425, 19.296333, 8.628890>,  <19.843895, 19.582073, 8.643577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.123425, 19.296333, 8.628890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279530, 0.319982, -0.905248,
		0.658414, 0.622345, 0.423294,
		0.698823, -0.714351, -0.036717,
		20.333071, 19.082027, 8.617875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.487265, 19.874678, 8.402383>,  <19.843895, 19.582073, 8.643577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.487265, 19.874678, 8.402383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.528858, 19.487114, 8.312583>,  <20.553814, 19.254576, 8.258703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.528858, 19.487114, 8.312583>,  <20.487265, 19.874678, 8.402383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.528858, 19.487114, 8.312583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368161, 0.247186, -0.896301,
		0.923929, 0.010549, 0.382418,
		0.103984, -0.968911, -0.224499,
		20.560053, 19.196442, 8.245234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.156492, 19.702854, 8.246504>,  <20.487265, 19.874678, 8.402383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.156492, 19.702854, 8.246504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.946138, 19.417656, 8.060997>,  <20.819925, 19.246536, 7.949693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.946138, 19.417656, 8.060997>,  <21.156492, 19.702854, 8.246504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.946138, 19.417656, 8.060997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528180, 0.153631, -0.835119,
		0.666685, -0.684130, 0.295798,
		-0.525886, -0.712996, -0.463768,
		20.788372, 19.203756, 7.921866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.717241, 19.323755, 7.813345>,  <21.156492, 19.702854, 8.246504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.717241, 19.323755, 7.813345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.345121, 19.254036, 7.684248>,  <21.121849, 19.212204, 7.606790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.345121, 19.254036, 7.684248>,  <21.717241, 19.323755, 7.813345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.345121, 19.254036, 7.684248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302661, 0.132313, -0.943870,
		0.207218, -0.975763, -0.070337,
		-0.930299, -0.174299, -0.322743,
		21.066032, 19.201746, 7.587425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.752560, 18.699236, 7.425451>,  <21.717241, 19.323755, 7.813345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.752560, 18.699236, 7.425451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.425787, 18.893791, 7.301483>,  <21.229723, 19.010525, 7.227102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.425787, 18.893791, 7.301483>,  <21.752560, 18.699236, 7.425451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.425787, 18.893791, 7.301483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351628, -0.005895, -0.936121,
		-0.457143, -0.873724, -0.166211,
		-0.816932, 0.486386, -0.309921,
		21.180708, 19.039707, 7.208507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.790016, 18.604654, 6.670016>,  <21.752560, 18.699236, 7.425451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.790016, 18.604654, 6.670016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.487719, 18.863321, 6.711329>,  <21.306339, 19.018522, 6.736117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.487719, 18.863321, 6.711329>,  <21.790016, 18.604654, 6.670016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.487719, 18.863321, 6.711329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042624, 0.205956, -0.977632,
		-0.653476, -0.734439, -0.183214,
		-0.755746, 0.646669, 0.103283,
		21.260994, 19.057322, 6.742314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.329908, 18.459015, 6.121949>,  <21.790016, 18.604654, 6.670016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.329908, 18.459015, 6.121949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.264563, 18.842628, 6.214526>,  <21.225355, 19.072796, 6.270072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.264563, 18.842628, 6.214526>,  <21.329908, 18.459015, 6.121949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.264563, 18.842628, 6.214526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140132, 0.254773, -0.956793,
		-0.976563, -0.123873, -0.176012,
		-0.163364, 0.959034, 0.231444,
		21.215553, 19.130339, 6.283959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.930239, 18.713718, 5.590588>,  <21.329908, 18.459015, 6.121949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.930239, 18.713718, 5.590588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.139690, 19.009539, 5.759762>,  <21.265362, 19.187031, 5.861267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.139690, 19.009539, 5.759762>,  <20.930239, 18.713718, 5.590588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.139690, 19.009539, 5.759762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259263, 0.334563, -0.906008,
		-0.811538, 0.584065, -0.016551,
		0.523630, 0.739551, 0.422937,
		21.296780, 19.231403, 5.886643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.744566, 19.375603, 5.220175>,  <20.930239, 18.713718, 5.590588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.744566, 19.375603, 5.220175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.096411, 19.472433, 5.383970>,  <21.307518, 19.530531, 5.482248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.096411, 19.472433, 5.383970>,  <20.744566, 19.375603, 5.220175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.096411, 19.472433, 5.383970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318851, 0.338781, -0.885190,
		-0.353008, 0.909191, 0.220811,
		0.879613, 0.242074, 0.409489,
		21.360294, 19.545055, 5.506817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.787033, 19.954908, 5.066220>,  <20.744566, 19.375603, 5.220175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.787033, 19.954908, 5.066220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.170839, 19.884714, 5.154340>,  <21.401123, 19.842598, 5.207212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.170839, 19.884714, 5.154340>,  <20.787033, 19.954908, 5.066220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.170839, 19.884714, 5.154340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281134, 0.549358, -0.786873,
		0.017061, 0.816952, 0.576453,
		0.959517, -0.175486, 0.220300,
		21.458694, 19.832067, 5.220430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.173861, 20.640846, 5.081062>,  <20.787033, 19.954908, 5.066220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.173861, 20.640846, 5.081062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.464808, 20.367237, 5.058971>,  <21.639376, 20.203072, 5.045716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.464808, 20.367237, 5.058971>,  <21.173861, 20.640846, 5.081062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.464808, 20.367237, 5.058971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517369, 0.599460, -0.610719,
		0.450853, 0.415644, 0.789919,
		0.727366, -0.684024, -0.055227,
		21.683018, 20.162029, 5.042403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.842321, 20.866388, 5.400367>,  <21.173861, 20.640846, 5.081062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.842321, 20.866388, 5.400367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.910339, 20.593126, 5.116287>,  <21.951149, 20.429169, 4.945838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.910339, 20.593126, 5.116287>,  <21.842321, 20.866388, 5.400367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.910339, 20.593126, 5.116287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566278, 0.657560, -0.496935,
		0.806483, -0.317671, 0.498669,
		0.170043, -0.683155, -0.710201,
		21.961351, 20.388180, 4.903226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.525133, 20.903051, 5.240075>,  <21.842321, 20.866388, 5.400367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.525133, 20.903051, 5.240075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.333378, 20.738253, 4.930121>,  <22.218325, 20.639374, 4.744149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.333378, 20.738253, 4.930121>,  <22.525133, 20.903051, 5.240075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.333378, 20.738253, 4.930121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483765, 0.612638, -0.625017,
		0.732230, -0.674487, -0.094380,
		-0.479386, -0.411998, -0.774885,
		22.189562, 20.614653, 4.697656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.951277, 20.782780, 4.760480>,  <22.525133, 20.903051, 5.240075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.951277, 20.782780, 4.760480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.586584, 20.831091, 4.603429>,  <22.367767, 20.860077, 4.509199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.586584, 20.831091, 4.603429>,  <22.951277, 20.782780, 4.760480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.586584, 20.831091, 4.603429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362692, 0.685439, -0.631370,
		0.192867, -0.718044, -0.668742,
		-0.911733, 0.120777, -0.392628,
		22.313065, 20.867323, 4.485641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.548302, 21.200645, 5.034150>,  <22.951277, 20.782780, 4.760480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.548302, 21.200645, 5.034150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.434324, 20.837030, 5.155776>,  <23.365938, 20.618862, 5.228752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.434324, 20.837030, 5.155776>,  <23.548302, 21.200645, 5.034150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.434324, 20.837030, 5.155776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917295, -0.166546, 0.361707,
		-0.278164, 0.381986, 0.881313,
		-0.284946, -0.909038, 0.304066,
		23.348841, 20.564320, 5.246996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.768631, 21.184629, 5.738994>,  <23.548302, 21.200645, 5.034150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.768631, 21.184629, 5.738994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.726152, 20.819363, 5.581593>,  <23.700665, 20.600203, 5.487152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.726152, 20.819363, 5.581593>,  <23.768631, 21.184629, 5.738994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.726152, 20.819363, 5.581593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918113, -0.242013, 0.313845,
		-0.381826, -0.327950, 0.864093,
		-0.106197, -0.913169, -0.393502,
		23.694294, 20.545412, 5.463542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.754391, 20.745525, 6.275072>,  <23.768631, 21.184629, 5.738994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.754391, 20.745525, 6.275072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.888699, 20.556534, 5.949121>,  <23.969284, 20.443138, 5.753551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.888699, 20.556534, 5.949121>,  <23.754391, 20.745525, 6.275072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.888699, 20.556534, 5.949121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903369, -0.083507, 0.420655,
		-0.266798, -0.877377, 0.398784,
		0.335771, -0.472479, -0.814875,
		23.989429, 20.414789, 5.704659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.156609, 20.060617, 6.342226>,  <23.754391, 20.745525, 6.275072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.156609, 20.060617, 6.342226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.280025, 20.212839, 5.993518>,  <24.354074, 20.304173, 5.784294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.280025, 20.212839, 5.993518>,  <24.156609, 20.060617, 6.342226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.280025, 20.212839, 5.993518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949629, -0.176075, 0.259234,
		-0.054844, -0.907841, -0.415711,
		0.308540, 0.380554, -0.871769,
		24.372587, 20.327005, 5.731987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.213696, 20.054876, 7.196835>,  <24.156609, 20.060617, 6.342226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.213696, 20.054876, 7.196835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.935381, 19.820173, 7.031137>,  <23.768393, 19.679352, 6.931718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.935381, 19.820173, 7.031137>,  <24.213696, 20.054876, 7.196835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.935381, 19.820173, 7.031137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038975, -0.545046, 0.837500,
		-0.717192, 0.598865, 0.356366,
		-0.695785, -0.586758, -0.414243,
		23.726645, 19.644146, 6.906864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.823526, 20.059153, 7.763252>,  <24.213696, 20.054876, 7.196835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.823526, 20.059153, 7.763252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.806129, 19.763918, 7.493930>,  <23.795692, 19.586777, 7.332337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.806129, 19.763918, 7.493930>,  <23.823526, 20.059153, 7.763252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.806129, 19.763918, 7.493930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219037, -0.664589, 0.714383,
		-0.974747, -0.116409, 0.190571,
		-0.043491, -0.738085, -0.673305,
		23.793081, 19.542492, 7.291938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.410278, 19.512589, 7.938031>,  <23.823526, 20.059153, 7.763252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.410278, 19.512589, 7.938031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.707705, 19.373817, 7.709382>,  <23.886160, 19.290554, 7.572193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.707705, 19.373817, 7.709382>,  <23.410278, 19.512589, 7.938031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.707705, 19.373817, 7.709382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137450, -0.757312, 0.638424,
		-0.654383, -0.553280, -0.515426,
		0.743566, -0.346928, -0.571621,
		23.930775, 19.269739, 7.537896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.468996, 18.758629, 8.077320>,  <23.410278, 19.512589, 7.938031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.468996, 18.758629, 8.077320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.822170, 18.852631, 7.914744>,  <24.034075, 18.909031, 7.817199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.822170, 18.852631, 7.914744>,  <23.468996, 18.758629, 8.077320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.822170, 18.852631, 7.914744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462389, -0.585272, 0.666072,
		-0.081348, -0.776034, -0.625423,
		0.882938, 0.235005, -0.406440,
		24.087051, 18.923132, 7.792812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.743248, 18.108904, 7.751674>,  <23.468996, 18.758629, 8.077320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.743248, 18.108904, 7.751674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.062466, 18.338791, 7.824146>,  <24.253996, 18.476723, 7.867629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.062466, 18.338791, 7.824146>,  <23.743248, 18.108904, 7.751674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.062466, 18.338791, 7.824146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359567, -0.695427, 0.622168,
		0.483568, -0.431371, -0.761631,
		0.798044, 0.574718, 0.181180,
		24.301878, 18.511206, 7.878500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.346806, 17.659632, 7.730242>,  <23.743248, 18.108904, 7.751674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.346806, 17.659632, 7.730242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.462214, 17.983246, 7.935070>,  <24.531458, 18.177414, 8.057967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.462214, 17.983246, 7.935070>,  <24.346806, 17.659632, 7.730242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.462214, 17.983246, 7.935070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481958, -0.584835, 0.652445,
		0.827328, 0.058553, -0.558658,
		0.288520, 0.809036, 0.512071,
		24.548769, 18.225956, 8.088691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.936213, 17.396893, 7.998402>,  <24.346806, 17.659632, 7.730242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.936213, 17.396893, 7.998402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.852585, 17.729826, 8.203733>,  <24.802408, 17.929586, 8.326932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.852585, 17.729826, 8.203733>,  <24.936213, 17.396893, 7.998402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.852585, 17.729826, 8.203733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337296, -0.431338, 0.836767,
		0.917889, 0.348087, -0.190563,
		-0.209071, 0.832336, 0.513329,
		24.789864, 17.979527, 8.357732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593046, 17.506359, 8.486306>,  <24.936213, 17.396893, 7.998402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593046, 17.506359, 8.486306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267391, 17.690962, 8.627271>,  <25.071999, 17.801723, 8.711849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.267391, 17.690962, 8.627271>,  <25.593046, 17.506359, 8.486306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.267391, 17.690962, 8.627271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178814, -0.378155, 0.908309,
		0.552456, 0.802503, 0.225346,
		-0.814136, 0.461506, 0.352412,
		25.023149, 17.829414, 8.732994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.809233, 17.879078, 9.118361>,  <25.593046, 17.506359, 8.486306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.809233, 17.879078, 9.118361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412188, 17.869148, 9.165857>,  <25.173960, 17.863190, 9.194356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.412188, 17.869148, 9.165857>,  <25.809233, 17.879078, 9.118361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.412188, 17.869148, 9.165857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120897, -0.283128, 0.951432,
		0.010001, 0.958761, 0.284039,
		-0.992615, -0.024824, 0.118743,
		25.114403, 17.861702, 9.201480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652414, 18.241947, 9.743674>,  <25.809233, 17.879078, 9.118361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652414, 18.241947, 9.743674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321878, 18.024529, 9.684721>,  <25.123558, 17.894077, 9.649349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321878, 18.024529, 9.684721>,  <25.652414, 18.241947, 9.743674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.321878, 18.024529, 9.684721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012866, -0.243411, 0.969838,
		-0.563027, 0.803310, 0.194147,
		-0.826338, -0.543547, -0.147382,
		25.073977, 17.861464, 9.640506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158590, 18.356194, 10.274591>,  <25.652414, 18.241947, 9.743674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158590, 18.356194, 10.274591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040117, 17.999870, 10.136760>,  <24.969034, 17.786076, 10.054061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040117, 17.999870, 10.136760>,  <25.158590, 18.356194, 10.274591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.040117, 17.999870, 10.136760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066217, -0.379049, 0.923005,
		-0.952834, 0.250560, 0.171254,
		-0.296181, -0.890810, -0.344579,
		24.951263, 17.732628, 10.033386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.705488, 18.134932, 10.734016>,  <25.158590, 18.356194, 10.274591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.705488, 18.134932, 10.734016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.824881, 17.808807, 10.535553>,  <24.896517, 17.613132, 10.416474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.824881, 17.808807, 10.535553>,  <24.705488, 18.134932, 10.734016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.824881, 17.808807, 10.535553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103445, -0.489159, 0.866039,
		-0.948793, -0.309822, -0.061665,
		0.298482, -0.815312, -0.496160,
		24.914425, 17.564213, 10.386705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.228981, 17.634258, 11.037697>,  <24.705488, 18.134932, 10.734016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.228981, 17.634258, 11.037697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.520998, 17.415552, 10.873704>,  <24.696207, 17.284328, 10.775308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.520998, 17.415552, 10.873704>,  <24.228981, 17.634258, 11.037697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.520998, 17.415552, 10.873704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093264, -0.674008, 0.732813,
		-0.677047, -0.496719, -0.543027,
		0.730006, -0.546794, -0.410009,
		24.740009, 17.251522, 10.750710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.014633, 17.084446, 10.825360>,  <24.228981, 17.634258, 11.037697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.014633, 17.084446, 10.825360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392712, 16.969828, 10.887965>,  <24.619558, 16.901056, 10.925529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392712, 16.969828, 10.887965>,  <24.014633, 17.084446, 10.825360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.392712, 16.969828, 10.887965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318107, -0.700180, 0.639183,
		-0.073568, -0.653941, -0.752960,
		0.945196, -0.286545, 0.156512,
		24.676270, 16.883863, 10.934918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.015306, 16.324316, 10.925210>,  <24.014633, 17.084446, 10.825360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.015306, 16.324316, 10.925210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361320, 16.445366, 11.085276>,  <24.568930, 16.517996, 11.181315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361320, 16.445366, 11.085276>,  <24.015306, 16.324316, 10.925210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.361320, 16.445366, 11.085276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154074, -0.598821, 0.785923,
		0.477467, -0.741506, -0.471375,
		0.865036, 0.302626, 0.400164,
		24.620831, 16.536154, 11.205325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.150040, 15.884770, 11.344672>,  <24.015306, 16.324316, 10.925210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.150040, 15.884770, 11.344672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.432722, 16.131289, 11.483668>,  <24.602331, 16.279200, 11.567066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.432722, 16.131289, 11.483668>,  <24.150040, 15.884770, 11.344672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.432722, 16.131289, 11.483668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051493, -0.445040, 0.894029,
		0.705633, -0.649707, -0.282777,
		0.706704, 0.616295, 0.347490,
		24.644733, 16.316177, 11.587915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.578596, 15.488963, 11.721796>,  <24.150040, 15.884770, 11.344672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.578596, 15.488963, 11.721796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.628967, 15.850644, 11.885043>,  <24.659189, 16.067654, 11.982991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.628967, 15.850644, 11.885043>,  <24.578596, 15.488963, 11.721796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.628967, 15.850644, 11.885043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232447, -0.373046, 0.898223,
		0.964422, -0.207977, 0.163203,
		0.125928, 0.904203, 0.408117,
		24.666746, 16.121904, 12.007479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061247, 15.377185, 12.289096>,  <24.578596, 15.488963, 11.721796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.061247, 15.377185, 12.289096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881269, 15.727460, 12.359206>,  <24.773283, 15.937625, 12.401273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881269, 15.727460, 12.359206>,  <25.061247, 15.377185, 12.289096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.881269, 15.727460, 12.359206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189141, -0.285254, 0.939604,
		0.872799, 0.389615, 0.293977,
		-0.449942, 0.875688, 0.175277,
		24.746286, 15.990167, 12.411789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.239359, 15.623725, 12.951203>,  <25.061247, 15.377185, 12.289096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.239359, 15.623725, 12.951203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880857, 15.775853, 12.859911>,  <24.665756, 15.867130, 12.805136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880857, 15.775853, 12.859911>,  <25.239359, 15.623725, 12.951203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.880857, 15.775853, 12.859911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291800, -0.118046, 0.949167,
		0.334045, 0.917290, 0.216777,
		-0.896251, 0.380320, -0.228232,
		24.611982, 15.889949, 12.791441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.057077, 15.939965, 13.603492>,  <25.239359, 15.623725, 12.951203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.057077, 15.939965, 13.603492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719809, 15.945012, 13.388494>,  <24.517447, 15.948040, 13.259495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719809, 15.945012, 13.388494>,  <25.057077, 15.939965, 13.603492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.719809, 15.945012, 13.388494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536095, -0.095571, 0.838730,
		-0.040786, 0.995343, 0.087347,
		-0.843172, 0.012618, -0.537497,
		24.466858, 15.948797, 13.227244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.275524, 16.703901, 13.502183>,  <25.057077, 15.939965, 13.603492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.275524, 16.703901, 13.502183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.505781, 16.401478, 13.377598>,  <25.643934, 16.220024, 13.302847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.505781, 16.401478, 13.377598>,  <25.275524, 16.703901, 13.502183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.505781, 16.401478, 13.377598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539740, 0.637454, -0.549848,
		0.614262, 0.148406, 0.775021,
		0.575641, -0.756061, -0.311463,
		25.678474, 16.174660, 13.284159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442127, 17.432434, 13.663272>,  <25.275524, 16.703901, 13.502183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442127, 17.432434, 13.663272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337877, 17.231318, 13.992944>,  <25.275328, 17.110647, 14.190747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337877, 17.231318, 13.992944>,  <25.442127, 17.432434, 13.663272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.337877, 17.231318, 13.992944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947231, 0.031846, 0.318967,
		-0.186621, 0.863820, 0.467961,
		-0.260627, -0.502792, 0.824180,
		25.259689, 17.080481, 14.240198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894541, 17.566607, 14.261716>,  <25.442127, 17.432434, 13.663272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.894541, 17.566607, 14.261716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713299, 17.227293, 14.371340>,  <25.604553, 17.023705, 14.437114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.713299, 17.227293, 14.371340>,  <25.894541, 17.566607, 14.261716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.713299, 17.227293, 14.371340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855269, -0.326956, 0.402013,
		-0.251416, 0.416550, 0.873657,
		-0.453106, -0.848284, 0.274060,
		25.577368, 16.972807, 14.453558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155231, 17.317690, 14.893466>,  <25.894541, 17.566607, 14.261716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155231, 17.317690, 14.893466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011568, 16.967749, 14.763457>,  <25.925369, 16.757784, 14.685452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011568, 16.967749, 14.763457>,  <26.155231, 17.317690, 14.893466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011568, 16.967749, 14.763457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808891, -0.465512, 0.359158,
		-0.465512, -0.133912, 0.874852,
		-0.359158, -0.874852, -0.325022,
		25.903820, 16.705294, 14.665951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991482, 16.781679, 15.375608>,  <26.155231, 17.317690, 14.893466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991482, 16.781679, 15.375608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113335, 16.690916, 15.005589>,  <26.186445, 16.636457, 14.783578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113335, 16.690916, 15.005589>,  <25.991482, 16.781679, 15.375608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113335, 16.690916, 15.005589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855267, -0.362268, 0.370513,
		-0.419187, -0.904032, 0.083709,
		0.304631, -0.226908, -0.925047,
		26.204723, 16.622845, 14.728075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172165, 16.180834, 15.405332>,  <25.991482, 16.781679, 15.375608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172165, 16.180834, 15.405332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374094, 16.357315, 15.108550>,  <26.495253, 16.463203, 14.930481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374094, 16.357315, 15.108550>,  <26.172165, 16.180834, 15.405332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374094, 16.357315, 15.108550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860541, -0.189520, 0.472813,
		0.067990, -0.877168, -0.475346,
		0.504824, 0.441201, -0.741953,
		26.525541, 16.489676, 14.885964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703110, 15.685782, 15.146257>,  <26.172165, 16.180834, 15.405332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703110, 15.685782, 15.146257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774313, 16.077160, 15.104379>,  <26.817034, 16.311987, 15.079251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774313, 16.077160, 15.104379>,  <26.703110, 15.685782, 15.146257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774313, 16.077160, 15.104379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806802, -0.084206, 0.584791,
		0.563369, -0.188566, -0.804399,
		0.178006, 0.978444, -0.104696,
		26.827715, 16.370693, 15.072969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732063, 14.964735, 15.185123>,  <26.703110, 15.685782, 15.146257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.732063, 14.964735, 15.185123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782824, 15.234590, 14.894259>,  <26.813280, 15.396502, 14.719741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782824, 15.234590, 14.894259>,  <26.732063, 14.964735, 15.185123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782824, 15.234590, 14.894259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095595, 0.737994, 0.668002,
		0.987298, -0.015258, 0.158144,
		0.126902, 0.674635, -0.727161,
		26.820894, 15.436980, 14.676111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.896092, 21.080168, 21.583010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.625438, 20.845949, 21.761581>,  <12.463045, 20.705418, 21.868725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.625438, 20.845949, 21.761581>,  <12.896092, 21.080168, 21.583010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.625438, 20.845949, 21.761581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156687, -0.706918, -0.689722,
		0.719453, -0.396741, 0.570073,
		-0.676636, -0.585546, 0.446430,
		12.422447, 20.670286, 21.895510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.143924, 20.444223, 21.493444>,  <12.896092, 21.080168, 21.583010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.143924, 20.444223, 21.493444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.760869, 20.364775, 21.576851>,  <12.531036, 20.317104, 21.626894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.760869, 20.364775, 21.576851>,  <13.143924, 20.444223, 21.493444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.760869, 20.364775, 21.576851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018368, -0.680468, -0.732548,
		0.287390, -0.705345, 0.647993,
		-0.957638, -0.198624, 0.208515,
		12.473577, 20.305187, 21.639406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.109739, 19.692661, 21.541929>,  <13.143924, 20.444223, 21.493444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.109739, 19.692661, 21.541929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.747865, 19.846617, 21.468824>,  <12.530740, 19.938990, 21.424961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.747865, 19.846617, 21.468824>,  <13.109739, 19.692661, 21.541929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.747865, 19.846617, 21.468824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069319, -0.556182, -0.828164,
		-0.420397, -0.736562, 0.529851,
		-0.904688, 0.384887, -0.182759,
		12.476459, 19.962084, 21.413996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.739327, 19.061155, 21.282717>,  <13.109739, 19.692661, 21.541929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.739327, 19.061155, 21.282717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.538418, 19.396122, 21.196503>,  <12.417872, 19.597101, 21.144773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.538418, 19.396122, 21.196503>,  <12.739327, 19.061155, 21.282717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.538418, 19.396122, 21.196503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268678, -0.388059, -0.881602,
		-0.821908, -0.384896, 0.419907,
		-0.502273, 0.837416, -0.215536,
		12.387735, 19.647346, 21.131842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.066778, 18.766737, 21.053230>,  <12.739327, 19.061155, 21.282717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.066778, 18.766737, 21.053230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.139431, 19.137379, 20.921526>,  <12.183022, 19.359764, 20.842503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.139431, 19.137379, 20.921526>,  <12.066778, 18.766737, 21.053230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.139431, 19.137379, 20.921526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402805, -0.235347, -0.884512,
		-0.897083, 0.293283, 0.330494,
		0.181632, 0.926605, -0.329262,
		12.193920, 19.415359, 20.822748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.464673, 18.997644, 20.822769>,  <12.066778, 18.766737, 21.053230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.464673, 18.997644, 20.822769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.742676, 19.219553, 20.639818>,  <11.909477, 19.352697, 20.530046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.742676, 19.219553, 20.639818>,  <11.464673, 18.997644, 20.822769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.742676, 19.219553, 20.639818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406020, -0.222172, -0.886446,
		-0.593392, 0.801791, 0.070838,
		0.695006, 0.554771, -0.457379,
		11.951178, 19.385984, 20.502605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.132728, 19.319023, 20.255386>,  <11.464673, 18.997644, 20.822769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.132728, 19.319023, 20.255386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.521743, 19.319832, 20.162292>,  <11.755152, 19.320316, 20.106436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.521743, 19.319832, 20.162292>,  <11.132728, 19.319023, 20.255386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.521743, 19.319832, 20.162292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231088, -0.110612, -0.966625,
		-0.027697, 0.993862, -0.107107,
		0.972539, 0.002022, -0.232733,
		11.813504, 19.320438, 20.092472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.087070, 19.366419, 19.580006>,  <11.132728, 19.319023, 20.255386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.087070, 19.366419, 19.580006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.478548, 19.286356, 19.598299>,  <11.713435, 19.238319, 19.609276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.478548, 19.286356, 19.598299>,  <11.087070, 19.366419, 19.580006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.478548, 19.286356, 19.598299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013822, -0.158014, -0.987340,
		0.204849, 0.966938, -0.151881,
		0.978696, -0.200156, 0.045734,
		11.772157, 19.226309, 19.612019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.409532, 19.657854, 18.941986>,  <11.087070, 19.366419, 19.580006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.409532, 19.657854, 18.941986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.673103, 19.379181, 19.055439>,  <11.831246, 19.211977, 19.123510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.673103, 19.379181, 19.055439>,  <11.409532, 19.657854, 18.941986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.673103, 19.379181, 19.055439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254425, -0.148418, -0.955636,
		0.707871, 0.701859, 0.079457,
		0.658929, -0.696683, 0.283631,
		11.870782, 19.170176, 19.140528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.963810, 19.848171, 18.557035>,  <11.409532, 19.657854, 18.941986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.963810, 19.848171, 18.557035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.034527, 19.476086, 18.685686>,  <12.076957, 19.252834, 18.762877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.034527, 19.476086, 18.685686>,  <11.963810, 19.848171, 18.557035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.034527, 19.476086, 18.685686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396375, -0.231817, -0.888340,
		0.900906, 0.284538, 0.327731,
		0.176793, -0.930215, 0.321629,
		12.087564, 19.197021, 18.782175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.749158, 19.623688, 18.545521>,  <11.963810, 19.848171, 18.557035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.749158, 19.623688, 18.545521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.519916, 19.298977, 18.500687>,  <12.382370, 19.104151, 18.473787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.519916, 19.298977, 18.500687>,  <12.749158, 19.623688, 18.545521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.519916, 19.298977, 18.500687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444667, -0.193169, -0.874618,
		0.688346, -0.551090, 0.471678,
		-0.573107, -0.811779, -0.112084,
		12.347983, 19.055443, 18.467062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.186928, 19.035255, 18.359350>,  <12.749158, 19.623688, 18.545521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.186928, 19.035255, 18.359350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.817015, 18.915533, 18.265379>,  <12.595066, 18.843699, 18.208996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.817015, 18.915533, 18.265379>,  <13.186928, 19.035255, 18.359350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.817015, 18.915533, 18.265379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331480, -0.330627, -0.883633,
		0.186805, -0.895043, 0.404973,
		-0.924784, -0.299307, -0.234926,
		12.539579, 18.825741, 18.194901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.303416, 18.468781, 17.780476>,  <13.186928, 19.035255, 18.359350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.303416, 18.468781, 17.780476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.927248, 18.601566, 17.751060>,  <12.701547, 18.681238, 17.733412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.927248, 18.601566, 17.751060>,  <13.303416, 18.468781, 17.780476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.927248, 18.601566, 17.751060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000170, -0.215826, -0.976432,
		-0.340013, -0.918270, 0.202911,
		-0.940421, 0.331965, -0.073539,
		12.645122, 18.701157, 17.728998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.994383, 17.918898, 17.509539>,  <13.303416, 18.468781, 17.780476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.994383, 17.918898, 17.509539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.780322, 18.246931, 17.428467>,  <12.651886, 18.443750, 17.379824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.780322, 18.246931, 17.428467>,  <12.994383, 17.918898, 17.509539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.780322, 18.246931, 17.428467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044656, -0.212129, -0.976221,
		-0.843575, -0.531477, 0.076900,
		-0.535151, 0.820082, -0.202680,
		12.619777, 18.492956, 17.367662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.579565, 17.765982, 16.831333>,  <12.994383, 17.918898, 17.509539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.579565, 17.765982, 16.831333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.609424, 18.161777, 16.880871>,  <12.627338, 18.399256, 16.910593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.609424, 18.161777, 16.880871>,  <12.579565, 17.765982, 16.831333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.609424, 18.161777, 16.880871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146538, 0.111961, -0.982849,
		-0.986385, 0.091515, -0.136640,
		0.074647, 0.989490, 0.123847,
		12.631818, 18.458624, 16.918024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.358282, 17.990900, 16.185663>,  <12.579565, 17.765982, 16.831333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.358282, 17.990900, 16.185663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.572867, 18.293890, 16.334492>,  <12.701618, 18.475683, 16.423790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.572867, 18.293890, 16.334492>,  <12.358282, 17.990900, 16.185663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.572867, 18.293890, 16.334492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301287, 0.239929, -0.922854,
		-0.788311, 0.607178, -0.099504,
		0.536463, 0.757475, 0.372073,
		12.733807, 18.521133, 16.446114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.170398, 18.515488, 15.744787>,  <12.358282, 17.990900, 16.185663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.170398, 18.515488, 15.744787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.512908, 18.639767, 15.909838>,  <12.718414, 18.714334, 16.008867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.512908, 18.639767, 15.909838>,  <12.170398, 18.515488, 15.744787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.512908, 18.639767, 15.909838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366611, 0.197163, -0.909243,
		-0.363853, 0.929836, 0.054922,
		0.856275, 0.310696, 0.412626,
		12.769791, 18.732975, 16.033627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.274952, 19.118418, 15.485439>,  <12.170398, 18.515488, 15.744787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.274952, 19.118418, 15.485439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.647925, 19.029615, 15.599479>,  <12.871710, 18.976334, 15.667902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.647925, 19.029615, 15.599479>,  <12.274952, 19.118418, 15.485439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.647925, 19.029615, 15.599479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347366, 0.333418, -0.876453,
		0.099521, 0.916267, 0.388007,
		0.932433, -0.222006, 0.285098,
		12.927655, 18.963013, 15.685008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.717134, 19.729040, 15.512471>,  <12.274952, 19.118418, 15.485439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.717134, 19.729040, 15.512471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.947617, 19.409260, 15.444512>,  <13.085906, 19.217392, 15.403737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.947617, 19.409260, 15.444512>,  <12.717134, 19.729040, 15.512471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.947617, 19.409260, 15.444512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363174, 0.436670, -0.823058,
		0.732183, 0.412548, 0.541952,
		0.576205, -0.799452, -0.169896,
		13.120478, 19.169424, 15.393543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.201812, 20.040775, 15.101195>,  <12.717134, 19.729040, 15.512471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.201812, 20.040775, 15.101195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.281150, 19.651197, 15.057212>,  <13.328753, 19.417450, 15.030822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.281150, 19.651197, 15.057212>,  <13.201812, 20.040775, 15.101195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.281150, 19.651197, 15.057212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416097, 0.185248, -0.890251,
		0.887424, 0.130824, 0.441999,
		0.198346, -0.973945, -0.109958,
		13.340653, 19.359015, 15.024224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.900111, 20.032276, 14.824207>,  <13.201812, 20.040775, 15.101195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.900111, 20.032276, 14.824207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.759965, 19.667973, 14.736789>,  <13.675878, 19.449390, 14.684338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.759965, 19.667973, 14.736789>,  <13.900111, 20.032276, 14.824207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.759965, 19.667973, 14.736789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506294, 0.012144, -0.862276,
		0.787979, -0.412761, 0.456856,
		-0.350365, -0.910759, -0.218547,
		13.654856, 19.394745, 14.671225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.521552, 19.814268, 14.651052>,  <13.900111, 20.032276, 14.824207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.521552, 19.814268, 14.651052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.224461, 19.595100, 14.497097>,  <14.046206, 19.463600, 14.404724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.224461, 19.595100, 14.497097>,  <14.521552, 19.814268, 14.651052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.224461, 19.595100, 14.497097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419080, 0.067922, -0.905405,
		0.522231, -0.833769, 0.179175,
		-0.742729, -0.547919, -0.384887,
		14.001642, 19.430725, 14.381631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.631461, 19.440321, 14.034140>,  <14.521552, 19.814268, 14.651052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.631461, 19.440321, 14.034140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.985724, 19.554346, 13.887527>,  <15.198282, 19.622761, 13.799559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.985724, 19.554346, 13.887527>,  <14.631461, 19.440321, 14.034140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.985724, 19.554346, 13.887527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174939, 0.526355, 0.832074,
		0.430119, -0.801055, 0.416303,
		0.885661, 0.285063, -0.366531,
		15.251422, 19.639866, 13.777567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.124903, 19.254995, 14.433816>,  <14.631461, 19.440321, 14.034140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.124903, 19.254995, 14.433816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.263259, 19.586189, 14.257271>,  <15.346272, 19.784904, 14.151343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.263259, 19.586189, 14.257271>,  <15.124903, 19.254995, 14.433816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.263259, 19.586189, 14.257271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262634, 0.366157, 0.892722,
		0.900768, -0.424702, -0.090806,
		0.345891, 0.827984, -0.441364,
		15.367026, 19.834585, 14.124862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.746874, 19.354612, 14.801762>,  <15.124903, 19.254995, 14.433816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.746874, 19.354612, 14.801762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.674999, 19.696278, 14.606573>,  <15.631874, 19.901278, 14.489460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.674999, 19.696278, 14.606573>,  <15.746874, 19.354612, 14.801762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.674999, 19.696278, 14.606573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241105, 0.519154, 0.819968,
		0.953719, 0.029685, -0.299229,
		-0.179686, 0.854165, -0.487971,
		15.621094, 19.952528, 14.460182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.280760, 19.862133, 15.036659>,  <15.746874, 19.354612, 14.801762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.280760, 19.862133, 15.036659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.968024, 20.068468, 14.896583>,  <15.780382, 20.192270, 14.812537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.968024, 20.068468, 14.896583>,  <16.280760, 19.862133, 15.036659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.968024, 20.068468, 14.896583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101453, 0.659446, 0.744875,
		0.615168, 0.546846, -0.567916,
		-0.781841, 0.515840, -0.350191,
		15.733472, 20.223221, 14.791525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.519983, 20.533543, 15.060477>,  <16.280760, 19.862133, 15.036659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.519983, 20.533543, 15.060477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.121586, 20.566267, 15.046039>,  <15.882547, 20.585901, 15.037375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.121586, 20.566267, 15.046039>,  <16.519983, 20.533543, 15.060477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.121586, 20.566267, 15.046039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050963, 0.851046, 0.522612,
		0.073475, 0.518679, -0.851806,
		-0.995994, 0.081810, -0.036097,
		15.822787, 20.590811, 15.035210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.374796, 21.338779, 14.959623>,  <16.519983, 20.533543, 15.060477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.374796, 21.338779, 14.959623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.036625, 21.155346, 15.069131>,  <15.833722, 21.045286, 15.134835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.036625, 21.155346, 15.069131>,  <16.374796, 21.338779, 14.959623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.036625, 21.155346, 15.069131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178260, 0.725483, 0.664753,
		-0.503461, 0.513200, -0.695092,
		-0.845429, -0.458585, 0.273769,
		15.782996, 21.017771, 15.151261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.882131, 21.879143, 15.094481>,  <16.374796, 21.338779, 14.959623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.882131, 21.879143, 15.094481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.719931, 21.566017, 15.283276>,  <15.622610, 21.378141, 15.396552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.719931, 21.566017, 15.283276>,  <15.882131, 21.879143, 15.094481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.719931, 21.566017, 15.283276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060910, 0.538336, 0.840526,
		-0.912063, 0.312085, -0.265977,
		-0.405500, -0.782814, 0.471987,
		15.598281, 21.331173, 15.424871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.410009, 22.095831, 15.469180>,  <15.882131, 21.879143, 15.094481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.410009, 22.095831, 15.469180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.454225, 21.739241, 15.644931>,  <15.480754, 21.525286, 15.750381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.454225, 21.739241, 15.644931>,  <15.410009, 22.095831, 15.469180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.454225, 21.739241, 15.644931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240506, 0.404955, 0.882139,
		-0.964333, -0.203183, -0.169643,
		0.110538, -0.891476, 0.439378,
		15.487386, 21.471798, 15.776744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.815666, 22.059893, 15.876426>,  <15.410009, 22.095831, 15.469180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.815666, 22.059893, 15.876426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.075186, 21.790054, 16.017269>,  <15.230898, 21.628151, 16.101774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.075186, 21.790054, 16.017269>,  <14.815666, 22.059893, 15.876426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.075186, 21.790054, 16.017269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315014, 0.183105, 0.931257,
		-0.692694, -0.715118, -0.093709,
		0.648799, -0.674596, 0.352108,
		15.269826, 21.587675, 16.122902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.356776, 21.637520, 16.181959>,  <14.815666, 22.059893, 15.876426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.356776, 21.637520, 16.181959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.727152, 21.615353, 16.331392>,  <14.949377, 21.602053, 16.421053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.727152, 21.615353, 16.331392>,  <14.356776, 21.637520, 16.181959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.727152, 21.615353, 16.331392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372519, 0.028829, 0.927577,
		-0.062173, -0.998047, 0.006051,
		0.925940, -0.055416, 0.373583,
		15.004933, 21.598728, 16.443468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.368974, 21.122856, 16.819155>,  <14.356776, 21.637520, 16.181959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.368974, 21.122856, 16.819155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.701031, 21.335150, 16.887491>,  <14.900265, 21.462526, 16.928493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.701031, 21.335150, 16.887491>,  <14.368974, 21.122856, 16.819155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.701031, 21.335150, 16.887491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249324, 0.079290, 0.965169,
		0.498702, -0.843822, 0.198147,
		0.830141, 0.530734, 0.170842,
		14.950073, 21.494370, 16.938744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.658340, 20.807671, 17.494013>,  <14.368974, 21.122856, 16.819155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.658340, 20.807671, 17.494013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.822254, 21.169794, 17.449301>,  <14.920603, 21.387068, 17.422474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.822254, 21.169794, 17.449301>,  <14.658340, 20.807671, 17.494013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.822254, 21.169794, 17.449301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069414, 0.153136, 0.985764,
		0.909537, -0.396193, 0.125594,
		0.409786, 0.905307, -0.111781,
		14.945190, 21.441385, 17.415766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.316912, 20.870316, 17.937752>,  <14.658340, 20.807671, 17.494013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.316912, 20.870316, 17.937752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.179674, 21.242378, 17.885448>,  <15.097332, 21.465616, 17.854067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.179674, 21.242378, 17.885448>,  <15.316912, 20.870316, 17.937752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.179674, 21.242378, 17.885448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099933, 0.102272, 0.989724,
		0.933970, 0.352635, 0.057864,
		-0.343093, 0.930155, -0.130759,
		15.076746, 21.521425, 17.846220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.661612, 21.299013, 18.375998>,  <15.316912, 20.870316, 17.937752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.661612, 21.299013, 18.375998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.346142, 21.531509, 18.295845>,  <15.156860, 21.671007, 18.247753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.346142, 21.531509, 18.295845>,  <15.661612, 21.299013, 18.375998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.346142, 21.531509, 18.295845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145841, 0.139755, 0.979387,
		0.597264, 0.801641, -0.025452,
		-0.788674, 0.581241, -0.200383,
		15.109540, 21.705881, 18.235731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.773725, 21.807236, 18.782232>,  <15.661612, 21.299013, 18.375998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.773725, 21.807236, 18.782232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.383098, 21.816547, 18.696653>,  <15.148722, 21.822134, 18.645306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.383098, 21.816547, 18.696653>,  <15.773725, 21.807236, 18.782232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.383098, 21.816547, 18.696653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207253, 0.166087, 0.964086,
		0.057978, 0.985836, -0.157370,
		-0.976568, 0.023280, -0.213947,
		15.090127, 21.823532, 18.632469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.511798, 22.416389, 19.105309>,  <15.773725, 21.807236, 18.782232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.511798, 22.416389, 19.105309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.181557, 22.199299, 19.043564>,  <14.983412, 22.069044, 19.006517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.181557, 22.199299, 19.043564>,  <15.511798, 22.416389, 19.105309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.181557, 22.199299, 19.043564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283188, 0.161926, 0.945296,
		-0.488041, 0.824153, -0.287380,
		-0.825603, -0.542726, -0.154364,
		14.933876, 22.036482, 18.997255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.017276, 22.866896, 19.377480>,  <15.511798, 22.416389, 19.105309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.017276, 22.866896, 19.377480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.855649, 22.501076, 19.370237>,  <14.758673, 22.281584, 19.365892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.855649, 22.501076, 19.370237>,  <15.017276, 22.866896, 19.377480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.855649, 22.501076, 19.370237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367694, 0.144268, 0.918688,
		-0.837574, 0.377868, -0.394569,
		-0.404067, -0.914550, -0.018104,
		14.734429, 22.226711, 19.364805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.349105, 22.839443, 19.605381>,  <15.017276, 22.866896, 19.377480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.349105, 22.839443, 19.605381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.432541, 22.453045, 19.666494>,  <14.482602, 22.221207, 19.703163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.432541, 22.453045, 19.666494>,  <14.349105, 22.839443, 19.605381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.432541, 22.453045, 19.666494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342640, 0.074138, 0.936537,
		-0.916018, -0.247702, -0.315524,
		0.208590, -0.965996, 0.152784,
		14.495118, 22.163246, 19.712330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.652323, 22.544924, 19.968235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.950624, 22.287046, 20.035435>,  <14.129604, 22.132320, 20.075754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.950624, 22.287046, 20.035435>,  <13.652323, 22.544924, 19.968235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.950624, 22.287046, 20.035435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212155, 0.009230, 0.977192,
		-0.631541, -0.764384, -0.129892,
		0.745751, -0.644694, 0.167997,
		14.174349, 22.093637, 20.085835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.354001, 22.043615, 20.442768>,  <13.652323, 22.544924, 19.968235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.354001, 22.043615, 20.442768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.752470, 22.028576, 20.474327>,  <13.991551, 22.019552, 20.493261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.752470, 22.028576, 20.474327>,  <13.354001, 22.043615, 20.442768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.752470, 22.028576, 20.474327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074865, 0.098690, 0.992298,
		-0.045097, -0.994408, 0.095497,
		0.996173, -0.037600, 0.078897,
		14.051322, 22.017296, 20.497995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.459260, 21.530060, 20.902727>,  <13.354001, 22.043615, 20.442768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.459260, 21.530060, 20.902727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.791748, 21.751446, 20.923708>,  <13.991241, 21.884277, 20.936296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.791748, 21.751446, 20.923708>,  <13.459260, 21.530060, 20.902727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.791748, 21.751446, 20.923708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121599, 0.088934, 0.988587,
		0.542483, -0.828111, 0.141224,
		0.831219, 0.553464, 0.052453,
		14.041114, 21.917484, 20.939444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.778848, 21.239988, 21.490021>,  <13.459260, 21.530060, 20.902727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.778848, 21.239988, 21.490021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.943793, 21.600136, 21.434458>,  <14.042761, 21.816223, 21.401119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.943793, 21.600136, 21.434458>,  <13.778848, 21.239988, 21.490021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.943793, 21.600136, 21.434458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157672, 0.079640, 0.984275,
		0.897271, -0.427782, -0.109122,
		0.412365, 0.900367, -0.138908,
		14.067503, 21.870245, 21.392786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.437421, 21.325787, 21.942047>,  <13.778848, 21.239988, 21.490021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.437421, 21.325787, 21.942047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.349225, 21.702251, 21.839602>,  <14.296308, 21.928131, 21.778133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.349225, 21.702251, 21.839602>,  <14.437421, 21.325787, 21.942047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.349225, 21.702251, 21.839602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146331, 0.291525, 0.945305,
		0.964351, 0.170952, -0.202000,
		-0.220489, 0.941164, -0.256116,
		14.283078, 21.984600, 21.762766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.929421, 21.806185, 22.360611>,  <14.437421, 21.325787, 21.942047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.929421, 21.806185, 22.360611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.613172, 22.036781, 22.278080>,  <14.423422, 22.175138, 22.228561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.613172, 22.036781, 22.278080>,  <14.929421, 21.806185, 22.360611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.613172, 22.036781, 22.278080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068902, 0.418596, 0.905555,
		0.608411, 0.701739, -0.370674,
		-0.790626, 0.576490, -0.206327,
		14.375984, 22.209728, 22.216183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.118929, 22.417135, 22.781199>,  <14.929421, 21.806185, 22.360611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.118929, 22.417135, 22.781199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.737286, 22.473799, 22.675663>,  <14.508300, 22.507797, 22.612341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.737286, 22.473799, 22.675663>,  <15.118929, 22.417135, 22.781199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.737286, 22.473799, 22.675663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145104, 0.552013, 0.821113,
		0.261960, 0.821714, -0.506125,
		-0.954108, 0.141658, -0.263840,
		14.451054, 22.516296, 22.596512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.939256, 23.155212, 22.881729>,  <15.118929, 22.417135, 22.781199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.939256, 23.155212, 22.881729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.586601, 22.967703, 22.859941>,  <14.375009, 22.855196, 22.846869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.586601, 22.967703, 22.859941>,  <14.939256, 23.155212, 22.881729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.586601, 22.967703, 22.859941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316392, 0.501476, 0.805244,
		-0.350163, 0.727166, -0.590437,
		-0.881636, -0.468776, -0.054471,
		14.322110, 22.827070, 22.843599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.366982, 23.706434, 22.963345>,  <14.939256, 23.155212, 22.881729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.366982, 23.706434, 22.963345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.229308, 23.349787, 23.081024>,  <14.146704, 23.135799, 23.151632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.229308, 23.349787, 23.081024>,  <14.366982, 23.706434, 22.963345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.229308, 23.349787, 23.081024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233372, 0.384753, 0.893030,
		-0.909436, 0.238710, -0.340505,
		-0.344186, -0.891618, 0.294200,
		14.126052, 23.082302, 23.169285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.871847, 23.829557, 23.365202>,  <14.366982, 23.706434, 22.963345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.871847, 23.829557, 23.365202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.935419, 23.445885, 23.458761>,  <13.973562, 23.215681, 23.514896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.935419, 23.445885, 23.458761>,  <13.871847, 23.829557, 23.365202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.935419, 23.445885, 23.458761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229053, 0.194623, 0.953759,
		-0.960352, -0.205157, -0.188773,
		0.158931, -0.959183, 0.233899,
		13.983098, 23.158131, 23.528931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.378979, 23.794178, 23.800144>,  <13.871847, 23.829557, 23.365202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.378979, 23.794178, 23.800144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.651629, 23.516844, 23.893669>,  <13.815220, 23.350443, 23.949785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.651629, 23.516844, 23.893669>,  <13.378979, 23.794178, 23.800144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.651629, 23.516844, 23.893669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136988, 0.192976, 0.971594,
		-0.718761, -0.694295, 0.036559,
		0.681628, -0.693336, 0.233813,
		13.856117, 23.308844, 23.963814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.111358, 23.531137, 24.379297>,  <13.378979, 23.794178, 23.800144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.111358, 23.531137, 24.379297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.503182, 23.450682, 24.378504>,  <13.738277, 23.402409, 24.378029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.503182, 23.450682, 24.378504>,  <13.111358, 23.531137, 24.379297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503182, 23.450682, 24.378504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006546, 0.022031, 0.999736,
		-0.201042, -0.979315, 0.022897,
		0.979561, -0.201139, -0.001981,
		13.797050, 23.390341, 24.377909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.216262, 23.001348, 24.820784>,  <13.111358, 23.531137, 24.379297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.216262, 23.001348, 24.820784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.584976, 23.155025, 24.799976>,  <13.806205, 23.247232, 24.787491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.584976, 23.155025, 24.799976>,  <13.216262, 23.001348, 24.820784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.584976, 23.155025, 24.799976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018645, 0.090092, 0.995759,
		0.387252, -0.918846, 0.075882,
		0.921785, 0.384195, -0.052020,
		13.861512, 23.270285, 24.784370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.608219, 22.665003, 25.338409>,  <13.216262, 23.001348, 24.820784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.608219, 22.665003, 25.338409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.804713, 23.005064, 25.262589>,  <13.922609, 23.209101, 25.217096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.804713, 23.005064, 25.262589>,  <13.608219, 22.665003, 25.338409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.804713, 23.005064, 25.262589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140315, 0.137540, 0.980507,
		0.859652, -0.508256, -0.051725,
		0.491234, 0.850152, -0.189553,
		13.952084, 23.260109, 25.205723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.212151, 22.584606, 25.645451>,  <13.608219, 22.665003, 25.338409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.212151, 22.584606, 25.645451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.178200, 22.983145, 25.641699>,  <14.157829, 23.222269, 25.639448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.178200, 22.983145, 25.641699>,  <14.212151, 22.584606, 25.645451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.178200, 22.983145, 25.641699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259634, 0.031202, 0.965203,
		0.961970, 0.079489, -0.261334,
		-0.084877, 0.996347, -0.009378,
		14.152737, 23.282049, 25.638885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.804713, 22.815756, 25.999294>,  <14.212151, 22.584606, 25.645451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.804713, 22.815756, 25.999294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.578712, 23.144648, 25.971840>,  <14.443112, 23.341982, 25.955368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.578712, 23.144648, 25.971840>,  <14.804713, 22.815756, 25.999294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.578712, 23.144648, 25.971840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381792, 0.334280, 0.861679,
		0.731442, 0.460646, -0.502790,
		-0.565002, 0.822230, -0.068636,
		14.409212, 23.391317, 25.951250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.322429, 23.334759, 26.245777>,  <14.804713, 22.815756, 25.999294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.322429, 23.334759, 26.245777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.949730, 23.477720, 26.271420>,  <14.726110, 23.563498, 26.286804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.949730, 23.477720, 26.271420>,  <15.322429, 23.334759, 26.245777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.949730, 23.477720, 26.271420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225668, 0.431668, 0.873348,
		0.284468, 0.828206, -0.482860,
		-0.931747, 0.357405, 0.064104,
		14.670206, 23.584942, 26.290651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.440986, 24.019075, 26.392059>,  <15.322429, 23.334759, 26.245777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.440986, 24.019075, 26.392059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.055842, 23.963074, 26.484409>,  <14.824757, 23.929472, 26.539820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.055842, 23.963074, 26.484409>,  <15.440986, 24.019075, 26.392059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.055842, 23.963074, 26.484409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121556, 0.538746, 0.833653,
		-0.241099, 0.830753, -0.501717,
		-0.962858, -0.140006, 0.230875,
		14.766985, 23.921072, 26.553671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.152297, 24.743164, 26.579058>,  <15.440986, 24.019075, 26.392059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.152297, 24.743164, 26.579058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.940156, 24.450186, 26.749821>,  <14.812872, 24.274399, 26.852278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.940156, 24.450186, 26.749821>,  <15.152297, 24.743164, 26.579058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.940156, 24.450186, 26.749821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240367, 0.352984, 0.904227,
		-0.812989, 0.582173, -0.011150,
		-0.530352, -0.732446, 0.426907,
		14.781051, 24.230452, 26.877893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.868661, 25.115023, 27.141104>,  <15.152297, 24.743164, 26.579058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.868661, 25.115023, 27.141104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.808361, 24.729425, 27.228733>,  <14.772182, 24.498068, 27.281311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.808361, 24.729425, 27.228733>,  <14.868661, 25.115023, 27.141104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.808361, 24.729425, 27.228733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248304, 0.177580, 0.952266,
		-0.956880, 0.197950, 0.212593,
		-0.150749, -0.963992, 0.219075,
		14.763136, 24.440228, 27.294455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.468548, 25.175173, 27.680662>,  <14.868661, 25.115023, 27.141104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.468548, 25.175173, 27.680662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.640924, 24.814222, 27.679630>,  <14.744350, 24.597652, 27.679010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.640924, 24.814222, 27.679630>,  <14.468548, 25.175173, 27.680662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.640924, 24.814222, 27.679630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267360, 0.124951, 0.955461,
		-0.861863, -0.412438, 0.295106,
		0.430943, -0.902376, -0.002579,
		14.770207, 24.543510, 27.678856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201344, 24.807961, 28.221384>,  <14.468548, 25.175173, 27.680662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.201344, 24.807961, 28.221384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.573685, 24.681332, 28.148396>,  <14.797090, 24.605354, 28.104603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.573685, 24.681332, 28.148396>,  <14.201344, 24.807961, 28.221384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.573685, 24.681332, 28.148396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259884, 0.222563, 0.939641,
		-0.256852, -0.922089, 0.289445,
		0.930853, -0.316571, -0.182471,
		14.852941, 24.586361, 28.093655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.344656, 24.521439, 28.940483>,  <14.201344, 24.807961, 28.221384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.344656, 24.521439, 28.940483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.609691, 24.674562, 28.682978>,  <14.768712, 24.766438, 28.528475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.609691, 24.674562, 28.682978>,  <14.344656, 24.521439, 28.940483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.609691, 24.674562, 28.682978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381301, 0.567393, 0.729846,
		0.644661, -0.729055, 0.229981,
		0.662588, 0.382811, -0.643765,
		14.808467, 24.789406, 28.489849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.793553, 24.044353, 29.321091>,  <14.344656, 24.521439, 28.940483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.793553, 24.044353, 29.321091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.544479, 23.776201, 29.482512>,  <13.395035, 23.615311, 29.579365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.544479, 23.776201, 29.482512>,  <13.793553, 24.044353, 29.321091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.544479, 23.776201, 29.482512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020303, -0.501724, -0.864789,
		0.782209, -0.546685, 0.298806,
		-0.622685, -0.670380, 0.403552,
		13.357674, 23.575087, 29.603577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.992477, 23.214699, 29.236856>,  <13.793553, 24.044353, 29.321091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.992477, 23.214699, 29.236856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.593958, 23.235140, 29.264500>,  <13.354846, 23.247404, 29.281086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.593958, 23.235140, 29.264500>,  <13.992477, 23.214699, 29.236856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.593958, 23.235140, 29.264500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082040, -0.325703, -0.941906,
		-0.025625, -0.944090, 0.328690,
		-0.996299, 0.051102, 0.069107,
		13.295068, 23.250471, 29.285233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.758410, 22.634188, 28.879784>,  <13.992477, 23.214699, 29.236856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.758410, 22.634188, 28.879784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.406221, 22.821915, 28.906658>,  <13.194908, 22.934551, 28.922783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.406221, 22.821915, 28.906658>,  <13.758410, 22.634188, 28.879784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.406221, 22.821915, 28.906658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349388, -0.546525, -0.761077,
		-0.320467, -0.693580, 0.645173,
		-0.880470, 0.469316, 0.067186,
		13.142080, 22.962709, 28.926813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.285952, 22.086239, 28.809553>,  <13.758410, 22.634188, 28.879784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.285952, 22.086239, 28.809553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.120559, 22.432980, 28.698126>,  <13.021323, 22.641024, 28.631269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.120559, 22.432980, 28.698126>,  <13.285952, 22.086239, 28.809553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.120559, 22.432980, 28.698126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485428, -0.468711, -0.738017,
		-0.770319, -0.169934, 0.614599,
		-0.413483, 0.866853, -0.278566,
		12.996514, 22.693035, 28.614555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.615559, 21.960587, 28.664303>,  <13.285952, 22.086239, 28.809553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.615559, 21.960587, 28.664303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.683786, 22.310389, 28.482691>,  <12.724723, 22.520269, 28.373724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.683786, 22.310389, 28.482691>,  <12.615559, 21.960587, 28.664303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.683786, 22.310389, 28.482691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437501, -0.345659, -0.830128,
		-0.882892, 0.340234, 0.323639,
		0.170570, 0.874506, -0.454032,
		12.734957, 22.572741, 28.346481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.976342, 22.068863, 28.457933>,  <12.615559, 21.960587, 28.664303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.976342, 22.068863, 28.457933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.229424, 22.292053, 28.243141>,  <12.381274, 22.425966, 28.114265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.229424, 22.292053, 28.243141>,  <11.976342, 22.068863, 28.457933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.229424, 22.292053, 28.243141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400674, -0.357513, -0.843591,
		-0.662679, 0.748899, -0.002635,
		0.632706, 0.557974, -0.536981,
		12.419236, 22.459446, 28.082047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.586420, 22.208715, 27.921860>,  <11.976342, 22.068863, 28.457933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.586420, 22.208715, 27.921860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.942654, 22.305914, 27.768074>,  <12.156394, 22.364233, 27.675802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.942654, 22.305914, 27.768074>,  <11.586420, 22.208715, 27.921860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.942654, 22.305914, 27.768074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290187, -0.347316, -0.891719,
		-0.350215, 0.905718, -0.238800,
		0.890585, 0.242996, -0.384463,
		12.209829, 22.378813, 27.652735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.492653, 22.704721, 27.398104>,  <11.586420, 22.208715, 27.921860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.492653, 22.704721, 27.398104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.843689, 22.530464, 27.318054>,  <12.054311, 22.425909, 27.270025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.843689, 22.530464, 27.318054>,  <11.492653, 22.704721, 27.398104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.843689, 22.530464, 27.318054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342148, -0.276741, -0.897970,
		0.335814, 0.856521, -0.391920,
		0.877590, -0.435645, -0.200123,
		12.106966, 22.399771, 27.258017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.653290, 22.957563, 26.770126>,  <11.492653, 22.704721, 27.398104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.653290, 22.957563, 26.770126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.874028, 22.627890, 26.821014>,  <12.006472, 22.430086, 26.851547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.874028, 22.627890, 26.821014>,  <11.653290, 22.957563, 26.770126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.874028, 22.627890, 26.821014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057870, -0.190031, -0.980071,
		0.831935, 0.533487, -0.152564,
		0.551847, -0.824184, 0.127221,
		12.039582, 22.380634, 26.859180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.098895, 22.929195, 26.254578>,  <11.653290, 22.957563, 26.770126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.098895, 22.929195, 26.254578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.110858, 22.543461, 26.359772>,  <12.118035, 22.312019, 26.422888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.110858, 22.543461, 26.359772>,  <12.098895, 22.929195, 26.254578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.110858, 22.543461, 26.359772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059728, -0.260907, -0.963514,
		0.997767, 0.044523, 0.049795,
		0.029906, -0.964337, 0.262984,
		12.119830, 22.254160, 26.438667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.667655, 22.643974, 26.114746>,  <12.098895, 22.929195, 26.254578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.667655, 22.643974, 26.114746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.449144, 22.308945, 26.117691>,  <12.318038, 22.107927, 26.119457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.449144, 22.308945, 26.117691>,  <12.667655, 22.643974, 26.114746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.449144, 22.308945, 26.117691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273894, -0.186929, -0.943419,
		0.791558, -0.513352, 0.331521,
		-0.546277, -0.837572, 0.007362,
		12.285261, 22.057673, 26.119900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.953247, 22.423170, 25.585238>,  <12.667655, 22.643974, 26.114746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.953247, 22.423170, 25.585238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.685959, 22.135567, 25.661669>,  <12.525586, 21.963005, 25.707527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.685959, 22.135567, 25.661669>,  <12.953247, 22.423170, 25.585238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.685959, 22.135567, 25.661669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055153, -0.304005, -0.951073,
		0.741916, -0.624988, 0.242798,
		-0.668221, -0.719007, 0.191076,
		12.485493, 21.919865, 25.718992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.256659, 21.731197, 25.402969>,  <12.953247, 22.423170, 25.585238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.256659, 21.731197, 25.402969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.857574, 21.735689, 25.376299>,  <12.618123, 21.738384, 25.360296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.857574, 21.735689, 25.376299>,  <13.256659, 21.731197, 25.402969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.857574, 21.735689, 25.376299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054534, -0.449294, -0.891718,
		-0.039972, -0.893313, 0.447653,
		-0.997711, 0.011231, -0.066675,
		12.558260, 21.739059, 25.356297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.076212, 21.094198, 25.138248>,  <13.256659, 21.731197, 25.402969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.076212, 21.094198, 25.138248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.735636, 21.291054, 25.065752>,  <12.531290, 21.409166, 25.022255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.735636, 21.291054, 25.065752>,  <13.076212, 21.094198, 25.138248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.735636, 21.291054, 25.065752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007996, -0.333361, -0.942765,
		-0.524389, -0.804158, 0.279902,
		-0.851441, 0.492138, -0.181241,
		12.480204, 21.438694, 25.011379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.651053, 20.757675, 24.674143>,  <13.076212, 21.094198, 25.138248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.651053, 20.757675, 24.674143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.487981, 21.121065, 24.637339>,  <12.390138, 21.339100, 24.615255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.487981, 21.121065, 24.637339>,  <12.651053, 20.757675, 24.674143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.487981, 21.121065, 24.637339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243368, -0.205223, -0.947974,
		-0.880095, -0.364079, 0.304760,
		-0.407681, 0.908477, -0.092011,
		12.365677, 21.393608, 24.609735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.969083, 20.677338, 24.487932>,  <12.651053, 20.757675, 24.674143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.969083, 20.677338, 24.487932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.090408, 21.038759, 24.366875>,  <12.163204, 21.255611, 24.294241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.090408, 21.038759, 24.366875>,  <11.969083, 20.677338, 24.487932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.090408, 21.038759, 24.366875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108414, -0.282819, -0.953027,
		-0.946703, 0.321877, 0.012175,
		0.303314, 0.903553, -0.302642,
		12.181402, 21.309826, 24.276083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.463840, 20.835672, 24.002335>,  <11.969083, 20.677338, 24.487932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.463840, 20.835672, 24.002335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.796587, 21.047451, 23.935785>,  <11.996236, 21.174519, 23.895855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.796587, 21.047451, 23.935785>,  <11.463840, 20.835672, 24.002335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.796587, 21.047451, 23.935785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020156, -0.270766, -0.962434,
		-0.554606, 0.803972, -0.214570,
		0.831868, 0.529447, -0.166373,
		12.046147, 21.206285, 23.885874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.362865, 21.274363, 23.510715>,  <11.463840, 20.835672, 24.002335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.362865, 21.274363, 23.510715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.759646, 21.223951, 23.505852>,  <11.997715, 21.193705, 23.502934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.759646, 21.223951, 23.505852>,  <11.362865, 21.274363, 23.510715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.759646, 21.223951, 23.505852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027101, -0.117550, -0.992697,
		0.123677, 0.985038, -0.120020,
		0.991952, -0.126027, -0.012157,
		12.057232, 21.186144, 23.502205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.526478, 21.573158, 22.903131>,  <11.362865, 21.274363, 23.510715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.526478, 21.573158, 22.903131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.867586, 21.385714, 22.995378>,  <12.072251, 21.273247, 23.050728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.867586, 21.385714, 22.995378>,  <11.526478, 21.573158, 22.903131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.867586, 21.385714, 22.995378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078296, -0.321867, -0.943542,
		0.516382, 0.822682, -0.237788,
		0.852772, -0.468610, 0.230619,
		12.123418, 21.245131, 23.064564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.026772, 21.826296, 22.378851>,  <11.526478, 21.573158, 22.903131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.026772, 21.826296, 22.378851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.139544, 21.467903, 22.516098>,  <12.207208, 21.252867, 22.598446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.139544, 21.467903, 22.516098>,  <12.026772, 21.826296, 22.378851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.139544, 21.467903, 22.516098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050528, -0.343264, -0.937879,
		0.958104, 0.281753, -0.051504,
		0.281929, -0.895983, 0.343119,
		12.224123, 21.199108, 22.619034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.538562, 21.663837, 21.923328>,  <12.026772, 21.826296, 22.378851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.538562, 21.663837, 21.923328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.431479, 21.316681, 22.090708>,  <12.367229, 21.108387, 22.191135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.431479, 21.316681, 22.090708>,  <12.538562, 21.663837, 21.923328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.431479, 21.316681, 22.090708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052889, -0.446884, -0.893027,
		0.962048, -0.216939, 0.165536,
		-0.267707, -0.867889, 0.418450,
		12.351167, 21.056314, 22.216244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.581310, 20.209873, 1.243411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.525589, 20.249474, 1.637527>,  <23.492157, 20.273233, 1.873996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.525589, 20.249474, 1.637527>,  <23.581310, 20.209873, 1.243411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.525589, 20.249474, 1.637527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656783, -0.735412, 0.166749,
		0.741102, 0.670349, 0.037422,
		-0.139301, 0.099000, 0.985289,
		23.483799, 20.279173, 1.933113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.161644, 20.079914, 1.492160>,  <23.581310, 20.209873, 1.243411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.161644, 20.079914, 1.492160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.935535, 20.053631, 1.821074>,  <23.799871, 20.037861, 2.018423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.935535, 20.053631, 1.821074>,  <24.161644, 20.079914, 1.492160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.935535, 20.053631, 1.821074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486320, -0.831715, 0.267851,
		0.666306, 0.551301, 0.502099,
		-0.565269, -0.065710, 0.822285,
		23.765955, 20.033918, 2.067760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.677288, 19.854521, 1.951293>,  <24.161644, 20.079914, 1.492160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.677288, 19.854521, 1.951293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.340485, 19.736803, 2.132141>,  <24.138403, 19.666172, 2.240650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.340485, 19.736803, 2.132141>,  <24.677288, 19.854521, 1.951293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.340485, 19.736803, 2.132141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483227, -0.784032, 0.389597,
		0.239821, 0.546520, 0.802372,
		-0.842008, -0.294294, 0.452121,
		24.087883, 19.648516, 2.267777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.874567, 19.671577, 2.739552>,  <24.677288, 19.854521, 1.951293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.874567, 19.671577, 2.739552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.578175, 19.474264, 2.557293>,  <24.400339, 19.355875, 2.447937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.578175, 19.474264, 2.557293>,  <24.874567, 19.671577, 2.739552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.578175, 19.474264, 2.557293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402041, -0.869359, 0.287363,
		-0.537874, 0.029742, 0.842501,
		-0.740983, -0.493285, -0.455648,
		24.355881, 19.326279, 2.420598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.155558, 19.620029, 3.177624>,  <24.874567, 19.671577, 2.739552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.155558, 19.620029, 3.177624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.986990, 19.319902, 2.973887>,  <23.885849, 19.139826, 2.851645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.986990, 19.319902, 2.973887>,  <24.155558, 19.620029, 3.177624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.986990, 19.319902, 2.973887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826839, 0.548593, -0.124024,
		0.372479, 0.368878, -0.851580,
		-0.421421, -0.750317, -0.509342,
		23.860563, 19.094807, 2.821085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.162268, 20.255537, 3.415065>,  <24.155558, 19.620029, 3.177624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.162268, 20.255537, 3.415065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.053169, 20.633848, 3.485620>,  <23.987709, 20.860834, 3.527954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.053169, 20.633848, 3.485620>,  <24.162268, 20.255537, 3.415065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.053169, 20.633848, 3.485620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887811, 0.318063, -0.332607,
		-0.370675, 0.065882, -0.926423,
		-0.272748, 0.945778, 0.176389,
		23.971344, 20.917582, 3.538537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.516191, 20.369898, 3.697601>,  <24.162268, 20.255537, 3.415065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.516191, 20.369898, 3.697601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.148239, 20.510544, 3.628108>,  <22.927467, 20.594931, 3.586412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.148239, 20.510544, 3.628108>,  <23.516191, 20.369898, 3.697601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.148239, 20.510544, 3.628108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210598, -0.816541, -0.537503,
		-0.330854, -0.457852, 0.825171,
		-0.919883, 0.351614, -0.173733,
		22.872274, 20.616028, 3.575988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.010447, 19.980486, 4.090173>,  <23.516191, 20.369898, 3.697601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.010447, 19.980486, 4.090173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.908985, 20.103601, 3.723365>,  <22.848108, 20.177471, 3.503280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.908985, 20.103601, 3.723365>,  <23.010447, 19.980486, 4.090173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.908985, 20.103601, 3.723365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082568, -0.937675, -0.337561,
		-0.963765, -0.161339, 0.212429,
		-0.253652, 0.307790, -0.917020,
		22.832890, 20.195938, 3.448259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.632153, 19.435314, 3.801541>,  <23.010447, 19.980486, 4.090173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.632153, 19.435314, 3.801541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.773100, 19.642796, 3.489957>,  <22.857668, 19.767284, 3.303006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.773100, 19.642796, 3.489957>,  <22.632153, 19.435314, 3.801541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.773100, 19.642796, 3.489957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135124, -0.851824, -0.506100,
		-0.926055, 0.073078, -0.370247,
		0.352370, 0.518705, -0.778961,
		22.878811, 19.798407, 3.256268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.202501, 19.257431, 4.292782>,  <22.632153, 19.435314, 3.801541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.202501, 19.257431, 4.292782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.184845, 19.615019, 4.471161>,  <22.174252, 19.829571, 4.578189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.184845, 19.615019, 4.471161>,  <22.202501, 19.257431, 4.292782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.184845, 19.615019, 4.471161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348389, -0.432135, 0.831796,
		0.936310, -0.118648, 0.330523,
		-0.044139, 0.893970, 0.445948,
		22.171602, 19.883209, 4.604946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.594284, 19.234652, 4.972244>,  <22.202501, 19.257431, 4.292782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.594284, 19.234652, 4.972244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.308641, 19.514423, 4.983928>,  <22.137257, 19.682287, 4.990939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.308641, 19.514423, 4.983928>,  <22.594284, 19.234652, 4.972244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.308641, 19.514423, 4.983928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265279, -0.308987, 0.913320,
		0.647829, 0.644457, 0.406193,
		-0.714104, 0.699430, 0.029210,
		22.094410, 19.724253, 4.992691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.671333, 19.691088, 5.550242>,  <22.594284, 19.234652, 4.972244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.671333, 19.691088, 5.550242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.289770, 19.735117, 5.438569>,  <22.060833, 19.761534, 5.371565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.289770, 19.735117, 5.438569>,  <22.671333, 19.691088, 5.550242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.289770, 19.735117, 5.438569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294970, -0.172674, 0.939775,
		0.055237, 0.978809, 0.197183,
		-0.953909, 0.110073, -0.279182,
		22.003597, 19.768139, 5.354815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.418293, 19.939314, 6.102548>,  <22.671333, 19.691088, 5.550242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.418293, 19.939314, 6.102548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.078205, 19.832647, 5.920993>,  <21.874153, 19.768646, 5.812060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.078205, 19.832647, 5.920993>,  <22.418293, 19.939314, 6.102548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.078205, 19.832647, 5.920993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392881, -0.252445, 0.884260,
		-0.350386, 0.930140, 0.109865,
		-0.850220, -0.266668, -0.453887,
		21.823139, 19.752647, 5.784827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.877419, 20.327427, 6.441136>,  <22.418293, 19.939314, 6.102548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.877419, 20.327427, 6.441136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.722441, 19.998074, 6.275278>,  <21.629454, 19.800463, 6.175763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.722441, 19.998074, 6.275278>,  <21.877419, 20.327427, 6.441136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.722441, 19.998074, 6.275278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493269, -0.194823, 0.847779,
		-0.778828, 0.532998, -0.330665,
		-0.387444, -0.823381, -0.414645,
		21.606207, 19.751059, 6.150885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.089836, 20.412825, 6.583921>,  <21.877419, 20.327427, 6.441136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.089836, 20.412825, 6.583921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.157562, 20.027683, 6.499780>,  <21.198198, 19.796598, 6.449296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.157562, 20.027683, 6.499780>,  <21.089836, 20.412825, 6.583921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.157562, 20.027683, 6.499780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622644, -0.269948, 0.734468,
		-0.763968, 0.006619, -0.645220,
		0.169314, -0.962852, -0.210353,
		21.208357, 19.738827, 6.436674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.459738, 20.058714, 6.755597>,  <21.089836, 20.412825, 6.583921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.459738, 20.058714, 6.755597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.694693, 19.735056, 6.749175>,  <20.835667, 19.540861, 6.745321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.694693, 19.735056, 6.749175>,  <20.459738, 20.058714, 6.755597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.694693, 19.735056, 6.749175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528775, -0.398726, 0.749276,
		-0.612676, -0.431625, -0.662063,
		0.587389, -0.809146, -0.016057,
		20.870909, 19.492311, 6.744358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.990715, 19.523798, 6.954508>,  <20.459738, 20.058714, 6.755597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.990715, 19.523798, 6.954508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.358877, 19.375732, 7.004843>,  <20.579775, 19.286892, 7.035044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.358877, 19.375732, 7.004843>,  <19.990715, 19.523798, 6.954508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.358877, 19.375732, 7.004843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306768, -0.484207, 0.819413,
		-0.242388, -0.792793, -0.559221,
		0.920403, -0.370167, 0.125837,
		20.634998, 19.264683, 7.042594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.901396, 18.806694, 7.084639>,  <19.990715, 19.523798, 6.954508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.901396, 18.806694, 7.084639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.259501, 18.910053, 7.229821>,  <20.474363, 18.972069, 7.316930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.259501, 18.910053, 7.229821>,  <19.901396, 18.806694, 7.084639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.259501, 18.910053, 7.229821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206847, -0.480471, 0.852269,
		0.394616, -0.838080, -0.376697,
		0.895261, 0.258400, 0.362956,
		20.528078, 18.987574, 7.338708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.202038, 18.172834, 7.388331>,  <19.901396, 18.806694, 7.084639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.202038, 18.172834, 7.388331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.393364, 18.482849, 7.553513>,  <20.508160, 18.668858, 7.652622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.393364, 18.482849, 7.553513>,  <20.202038, 18.172834, 7.388331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.393364, 18.482849, 7.553513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097464, -0.420480, 0.902052,
		0.872764, -0.471712, -0.125583,
		0.478314, 0.775038, 0.412955,
		20.536858, 18.715361, 7.677400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.526840, 17.938795, 7.975062>,  <20.202038, 18.172834, 7.388331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.526840, 17.938795, 7.975062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.546112, 18.330692, 8.052811>,  <20.557674, 18.565830, 8.099460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.546112, 18.330692, 8.052811>,  <20.526840, 17.938795, 7.975062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.546112, 18.330692, 8.052811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227818, -0.178689, 0.957167,
		0.972511, -0.090397, 0.214595,
		0.048179, 0.979744, 0.194371,
		20.560566, 18.624615, 8.111122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.021448, 17.994566, 8.563108>,  <20.526840, 17.938795, 7.975062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.021448, 17.994566, 8.563108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.817387, 18.338560, 8.557927>,  <20.694950, 18.544956, 8.554818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.817387, 18.338560, 8.557927>,  <21.021448, 17.994566, 8.563108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.817387, 18.338560, 8.557927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165341, 0.112839, 0.979760,
		0.844041, 0.497687, -0.199756,
		-0.510154, 0.859986, -0.012953,
		20.664341, 18.596556, 8.554041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.531130, 18.454920, 8.925697>,  <21.021448, 17.994566, 8.563108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.531130, 18.454920, 8.925697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.148556, 18.570551, 8.942018>,  <20.919010, 18.639929, 8.951810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.148556, 18.570551, 8.942018>,  <21.531130, 18.454920, 8.925697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.148556, 18.570551, 8.942018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081659, 0.130721, 0.988051,
		0.280289, 0.948339, -0.148632,
		-0.956436, 0.289077, 0.040801,
		20.861626, 18.657274, 8.954258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.468353, 19.133301, 9.288937>,  <21.531130, 18.454920, 8.925697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.468353, 19.133301, 9.288937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.111917, 18.957298, 9.333393>,  <20.898056, 18.851696, 9.360066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.111917, 18.957298, 9.333393>,  <21.468353, 19.133301, 9.288937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.111917, 18.957298, 9.333393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087763, 0.073197, 0.993448,
		-0.445259, 0.895006, -0.026608,
		-0.891090, -0.440007, 0.111140,
		20.844591, 18.825296, 9.366735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.142651, 19.555157, 9.755264>,  <21.468353, 19.133301, 9.288937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.142651, 19.555157, 9.755264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.938086, 19.211441, 9.751760>,  <20.815346, 19.005211, 9.749659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.938086, 19.211441, 9.751760>,  <21.142651, 19.555157, 9.755264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.938086, 19.211441, 9.751760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037333, 0.012034, 0.999230,
		-0.858523, 0.511348, -0.038234,
		-0.511415, -0.859289, -0.008759,
		20.784660, 18.953653, 9.749133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.528708, 19.696093, 10.155562>,  <21.142651, 19.555157, 9.755264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.528708, 19.696093, 10.155562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.615713, 19.306248, 10.176805>,  <20.667917, 19.072342, 10.189551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.615713, 19.306248, 10.176805>,  <20.528708, 19.696093, 10.155562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.615713, 19.306248, 10.176805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014814, 0.057701, 0.998224,
		-0.975945, -0.216340, 0.026989,
		0.217514, -0.974611, 0.053109,
		20.680967, 19.013865, 10.192739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.933792, 19.392704, 10.637572>,  <20.528708, 19.696093, 10.155562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.933792, 19.392704, 10.637572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.222849, 19.116215, 10.636960>,  <20.396282, 18.950321, 10.636593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.222849, 19.116215, 10.636960>,  <19.933792, 19.392704, 10.637572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.222849, 19.116215, 10.636960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079408, -0.085218, 0.993193,
		-0.686647, -0.717601, -0.116471,
		0.722641, -0.691222, -0.001532,
		20.439642, 18.908848, 10.636500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.666178, 18.792459, 11.066254>,  <19.933792, 19.392704, 10.637572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.666178, 18.792459, 11.066254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.061766, 18.737623, 11.043811>,  <20.299118, 18.704721, 11.030345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.061766, 18.737623, 11.043811>,  <19.666178, 18.792459, 11.066254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.061766, 18.737623, 11.043811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006393, -0.338915, 0.940795,
		-0.147989, -0.930776, -0.334300,
		0.988968, -0.137091, -0.056106,
		20.358456, 18.696495, 11.026978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.746780, 18.155453, 11.434845>,  <19.666178, 18.792459, 11.066254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.746780, 18.155453, 11.434845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.101959, 18.339428, 11.433799>,  <20.315067, 18.449814, 11.433171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.101959, 18.339428, 11.433799>,  <19.746780, 18.155453, 11.434845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.101959, 18.339428, 11.433799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171889, -0.326561, 0.929415,
		0.426619, -0.825721, -0.369027,
		0.887947, 0.459938, -0.002615,
		20.368343, 18.477409, 11.433014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.223351, 17.646093, 11.686511>,  <19.746780, 18.155453, 11.434845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.223351, 17.646093, 11.686511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.384941, 18.008474, 11.737194>,  <20.481895, 18.225903, 11.767604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.384941, 18.008474, 11.737194>,  <20.223351, 17.646093, 11.686511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.384941, 18.008474, 11.737194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108449, -0.184969, 0.976742,
		0.908317, -0.380841, -0.172973,
		0.403978, 0.905951, 0.126708,
		20.506134, 18.280260, 11.775207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.886137, 17.557604, 12.078429>,  <20.223351, 17.646093, 11.686511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.886137, 17.557604, 12.078429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.752104, 17.933887, 12.099552>,  <20.671684, 18.159657, 12.112226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.752104, 17.933887, 12.099552>,  <20.886137, 17.557604, 12.078429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.752104, 17.933887, 12.099552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099391, -0.020443, 0.994839,
		0.936932, 0.338602, -0.086648,
		-0.335083, 0.940708, 0.052807,
		20.651579, 18.216099, 12.115395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.793816, 16.971079, 11.602444>,  <20.886137, 17.557604, 12.078429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.793816, 16.971079, 11.602444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.086008, 16.707876, 11.529320>,  <21.261324, 16.549953, 11.485445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.086008, 16.707876, 11.529320>,  <20.793816, 16.971079, 11.602444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.086008, 16.707876, 11.529320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627693, 0.541433, 0.559331,
		-0.269065, -0.523331, 0.808535,
		0.730483, -0.658008, -0.182811,
		21.305153, 16.510473, 11.474477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.225113, 16.932972, 12.184752>,  <20.793816, 16.971079, 11.602444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.225113, 16.932972, 12.184752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.443260, 16.750448, 11.903509>,  <21.574148, 16.640934, 11.734764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.443260, 16.750448, 11.903509>,  <21.225113, 16.932972, 12.184752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.443260, 16.750448, 11.903509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837331, 0.258452, 0.481746,
		-0.038105, -0.851461, 0.523032,
		0.545367, -0.456308, -0.703106,
		21.606871, 16.613556, 11.692577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.713549, 16.858950, 12.570354>,  <21.225113, 16.932972, 12.184752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.713549, 16.858950, 12.570354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.869532, 16.741179, 12.221355>,  <21.963121, 16.670517, 12.011956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.869532, 16.741179, 12.221355>,  <21.713549, 16.858950, 12.570354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.869532, 16.741179, 12.221355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914092, 0.009325, 0.405400,
		-0.111224, -0.955629, 0.272769,
		0.389955, -0.294426, -0.872495,
		21.986519, 16.652851, 11.959607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.109852, 16.349674, 12.605976>,  <21.713549, 16.858950, 12.570354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.109852, 16.349674, 12.605976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.238619, 16.568007, 12.296540>,  <22.315878, 16.699005, 12.110879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.238619, 16.568007, 12.296540>,  <22.109852, 16.349674, 12.605976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.238619, 16.568007, 12.296540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890419, 0.103135, 0.443302,
		0.321752, -0.831525, -0.452816,
		0.321915, 0.545830, -0.773589,
		22.335194, 16.731756, 12.064464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.741627, 16.114761, 12.234747>,  <22.109852, 16.349674, 12.605976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.741627, 16.114761, 12.234747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.691727, 16.511629, 12.237146>,  <22.661787, 16.749750, 12.238586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.691727, 16.511629, 12.237146>,  <22.741627, 16.114761, 12.234747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.691727, 16.511629, 12.237146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832761, 0.101417, 0.544264,
		0.539394, 0.072894, -0.838893,
		-0.124751, 0.992170, 0.006000,
		22.654301, 16.809280, 12.238946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.405830, 15.980532, 12.447204>,  <22.741627, 16.114761, 12.234747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.405830, 15.980532, 12.447204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.720243, 15.993908, 12.694117>,  <23.908892, 16.001934, 12.842264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.720243, 15.993908, 12.694117>,  <23.405830, 15.980532, 12.447204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.720243, 15.993908, 12.694117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546018, 0.430645, -0.718616,
		-0.289859, 0.901902, 0.320242,
		0.786032, 0.033439, 0.617281,
		23.956053, 16.003941, 12.879301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.606695, 16.688948, 12.503090>,  <23.405830, 15.980532, 12.447204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.606695, 16.688948, 12.503090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.910114, 16.445120, 12.595201>,  <24.092167, 16.298822, 12.650467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.910114, 16.445120, 12.595201>,  <23.606695, 16.688948, 12.503090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.910114, 16.445120, 12.595201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584952, 0.481297, -0.652828,
		0.287112, 0.629904, 0.721657,
		0.758550, -0.609569, 0.230277,
		24.137680, 16.262249, 12.664284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.185734, 17.145451, 12.651310>,  <23.606695, 16.688948, 12.503090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.185734, 17.145451, 12.651310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.371151, 16.799412, 12.574650>,  <24.482401, 16.591787, 12.528653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.371151, 16.799412, 12.574650>,  <24.185734, 17.145451, 12.651310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.371151, 16.799412, 12.574650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524834, 0.442333, -0.727248,
		0.713915, 0.236527, 0.659075,
		0.463545, -0.865099, -0.191651,
		24.510214, 16.539883, 12.517155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.879541, 17.302444, 12.527061>,  <24.185734, 17.145451, 12.651310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.879541, 17.302444, 12.527061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.820032, 16.941523, 12.365214>,  <24.784327, 16.724970, 12.268106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.820032, 16.941523, 12.365214>,  <24.879541, 17.302444, 12.527061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.820032, 16.941523, 12.365214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313572, 0.345008, -0.884671,
		0.937838, -0.258491, 0.231609,
		-0.148772, -0.902304, -0.404617,
		24.775400, 16.670832, 12.243829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.433386, 17.181562, 12.149304>,  <24.879541, 17.302444, 12.527061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.433386, 17.181562, 12.149304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.198978, 16.912226, 11.968996>,  <25.058334, 16.750624, 11.860811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.198978, 16.912226, 11.968996>,  <25.433386, 17.181562, 12.149304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198978, 16.912226, 11.968996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310460, 0.327273, -0.892472,
		0.748463, -0.662952, 0.017257,
		-0.586019, -0.673340, -0.450771,
		25.023172, 16.710224, 11.833765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815121, 16.798031, 11.755273>,  <25.433386, 17.181562, 12.149304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815121, 16.798031, 11.755273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.465099, 16.733599, 11.572701>,  <25.255085, 16.694939, 11.463157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.465099, 16.733599, 11.572701>,  <25.815121, 16.798031, 11.755273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.465099, 16.733599, 11.572701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365499, 0.398302, -0.841289,
		0.317315, -0.903000, -0.289660,
		-0.875055, -0.161083, -0.456432,
		25.202583, 16.685274, 11.435771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925859, 16.606005, 10.997158>,  <25.815121, 16.798031, 11.755273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.925859, 16.606005, 10.997158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.536751, 16.695654, 10.973555>,  <25.303286, 16.749443, 10.959393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.536751, 16.695654, 10.973555>,  <25.925859, 16.606005, 10.997158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536751, 16.695654, 10.973555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164234, 0.486976, -0.857836,
		-0.163526, -0.844170, -0.510526,
		-0.972772, 0.224124, -0.059008,
		25.244919, 16.762892, 10.955853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708731, 16.509661, 10.254005>,  <25.925859, 16.606005, 10.997158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708731, 16.509661, 10.254005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.415070, 16.729918, 10.412908>,  <25.238873, 16.862072, 10.508248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.415070, 16.729918, 10.412908>,  <25.708731, 16.509661, 10.254005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415070, 16.729918, 10.412908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152879, 0.435993, -0.886870,
		-0.661549, -0.711830, -0.235904,
		-0.734154, 0.550643, 0.397255,
		25.194824, 16.895111, 10.532084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.145498, 16.407471, 9.801723>,  <25.708731, 16.509661, 10.254005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.145498, 16.407471, 9.801723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.061026, 16.746298, 9.996814>,  <25.010342, 16.949594, 10.113869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.061026, 16.746298, 9.996814>,  <25.145498, 16.407471, 9.801723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.061026, 16.746298, 9.996814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265422, 0.430537, -0.862664,
		-0.940720, -0.311633, 0.133908,
		-0.211183, 0.847067, 0.487729,
		24.997671, 17.000418, 10.143132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.501240, 16.597836, 9.572584>,  <25.145498, 16.407471, 9.801723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.501240, 16.597836, 9.572584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.657516, 16.938116, 9.713249>,  <24.751282, 17.142284, 9.797648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.657516, 16.938116, 9.713249>,  <24.501240, 16.597836, 9.572584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.657516, 16.938116, 9.713249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223082, 0.458138, -0.860432,
		-0.893081, 0.257714, 0.368767,
		0.390692, 0.850701, 0.351663,
		24.774725, 17.193327, 9.818748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.040302, 17.083439, 9.527841>,  <24.501240, 16.597836, 9.572584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.040302, 17.083439, 9.527841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.357431, 17.326603, 9.545185>,  <24.547709, 17.472502, 9.555592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.357431, 17.326603, 9.545185>,  <24.040302, 17.083439, 9.527841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.357431, 17.326603, 9.545185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412640, 0.587793, -0.695864,
		-0.448509, 0.533804, 0.716863,
		0.792822, 0.607908, 0.043361,
		24.595278, 17.508976, 9.558193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.822887, 17.789579, 9.504519>,  <24.040302, 17.083439, 9.527841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.822887, 17.789579, 9.504519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.200239, 17.793154, 9.371882>,  <24.426651, 17.795300, 9.292300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.200239, 17.793154, 9.371882>,  <23.822887, 17.789579, 9.504519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.200239, 17.793154, 9.371882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252360, 0.668110, -0.699959,
		0.215283, 0.744008, 0.632538,
		0.943381, 0.008938, -0.331591,
		24.483253, 17.795835, 9.272405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.984783, 18.430189, 9.270729>,  <23.822887, 17.789579, 9.504519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.984783, 18.430189, 9.270729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.305462, 18.255890, 9.107067>,  <24.497869, 18.151310, 9.008870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.305462, 18.255890, 9.107067>,  <23.984783, 18.430189, 9.270729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.305462, 18.255890, 9.107067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043830, 0.639816, -0.767277,
		0.596122, 0.633057, 0.493839,
		0.801696, -0.435746, -0.409156,
		24.545971, 18.125166, 8.984321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.486078, 18.983835, 9.150945>,  <23.984783, 18.430189, 9.270729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.486078, 18.983835, 9.150945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.600746, 18.679014, 8.918703>,  <24.669546, 18.496122, 8.779358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.600746, 18.679014, 8.918703>,  <24.486078, 18.983835, 9.150945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.600746, 18.679014, 8.918703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004297, 0.607055, -0.794648,
		0.958020, 0.225305, 0.177298,
		0.286667, -0.762051, -0.580603,
		24.686747, 18.450399, 8.744522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.996265, 19.299166, 8.702785>,  <24.486078, 18.983835, 9.150945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.996265, 19.299166, 8.702785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.874859, 18.963083, 8.523039>,  <24.802015, 18.761433, 8.415192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.874859, 18.963083, 8.523039>,  <24.996265, 19.299166, 8.702785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.874859, 18.963083, 8.523039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156002, 0.509069, -0.846471,
		0.939969, -0.186815, -0.285584,
		-0.303515, -0.840208, -0.449365,
		24.783804, 18.711021, 8.388229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.309481, 19.339582, 8.045775>,  <24.996265, 19.299166, 8.702785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.309481, 19.339582, 8.045775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.993208, 19.096371, 8.017143>,  <24.803444, 18.950443, 7.999964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.993208, 19.096371, 8.017143>,  <25.309481, 19.339582, 8.045775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.993208, 19.096371, 8.017143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303288, 0.490565, -0.816923,
		0.531832, -0.624213, -0.572288,
		-0.790678, -0.608034, -0.071582,
		24.756004, 18.913961, 7.995669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.219456, 19.272068, 7.269498>,  <25.309481, 19.339582, 8.045775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.219456, 19.272068, 7.269498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.872955, 19.162878, 7.436873>,  <24.665054, 19.097364, 7.537298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.872955, 19.162878, 7.436873>,  <25.219456, 19.272068, 7.269498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.872955, 19.162878, 7.436873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499570, 0.483291, -0.718930,
		-0.005977, -0.831814, -0.555023,
		-0.866253, -0.272976, 0.418438,
		24.613079, 19.080986, 7.562404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.511090, 22.670614, 17.240887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.352137, 22.306879, 17.290182>,  <15.256764, 22.088638, 17.319759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.352137, 22.306879, 17.290182>,  <15.511090, 22.670614, 17.240887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.352137, 22.306879, 17.290182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265531, -0.242496, -0.933107,
		0.878396, -0.338079, 0.337822,
		-0.397384, -0.909339, 0.123237,
		15.232922, 22.034077, 17.327154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.006052, 22.215405, 17.045984>,  <15.511090, 22.670614, 17.240887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.006052, 22.215405, 17.045984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.678205, 21.988037, 17.017326>,  <15.481498, 21.851618, 17.000132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.678205, 21.988037, 17.017326>,  <16.006052, 22.215405, 17.045984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.678205, 21.988037, 17.017326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285306, -0.296515, -0.911416,
		0.496821, -0.767451, 0.405201,
		-0.819615, -0.568417, -0.071643,
		15.432321, 21.817513, 16.995832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218842, 21.466534, 16.995918>,  <16.006052, 22.215405, 17.045984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.218842, 21.466534, 16.995918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.852787, 21.493773, 16.836977>,  <15.633155, 21.510115, 16.741611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.852787, 21.493773, 16.836977>,  <16.218842, 21.466534, 16.995918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.852787, 21.493773, 16.836977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323717, -0.463321, -0.824949,
		-0.240278, -0.883570, 0.401958,
		-0.915136, 0.068096, -0.397353,
		15.578246, 21.514202, 16.717772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.141628, 20.850574, 16.615860>,  <16.218842, 21.466534, 16.995918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.141628, 20.850574, 16.615860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.841810, 21.074507, 16.474567>,  <15.661920, 21.208866, 16.389791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.841810, 21.074507, 16.474567>,  <16.141628, 20.850574, 16.615860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.841810, 21.074507, 16.474567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067840, -0.595779, -0.800278,
		-0.658469, -0.575881, 0.484542,
		-0.749544, 0.559830, -0.353234,
		15.616946, 21.242455, 16.368597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.571632, 20.361694, 16.471067>,  <16.141628, 20.850574, 16.615860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.571632, 20.361694, 16.471067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.574503, 20.689005, 16.241158>,  <15.576225, 20.885391, 16.103210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.574503, 20.689005, 16.241158>,  <15.571632, 20.361694, 16.471067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.574503, 20.689005, 16.241158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015159, -0.574637, -0.818268,
		-0.999859, 0.014587, 0.008280,
		0.007178, 0.818279, -0.574777,
		15.576656, 20.934488, 16.068724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.154780, 20.223261, 16.025002>,  <15.571632, 20.361694, 16.471067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.154780, 20.223261, 16.025002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.296516, 20.555717, 15.853583>,  <15.381558, 20.755192, 15.750732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.296516, 20.555717, 15.853583>,  <15.154780, 20.223261, 16.025002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.296516, 20.555717, 15.853583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101129, -0.421532, -0.901157,
		-0.929632, 0.362655, -0.065313,
		0.354341, 0.831139, -0.428544,
		15.402819, 20.805059, 15.725020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667916, 20.510250, 15.578859>,  <15.154780, 20.223261, 16.025002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.667916, 20.510250, 15.578859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.023701, 20.645378, 15.455742>,  <15.237171, 20.726454, 15.381871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.023701, 20.645378, 15.455742>,  <14.667916, 20.510250, 15.578859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.023701, 20.645378, 15.455742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167794, -0.385060, -0.907510,
		-0.425093, 0.858840, -0.285812,
		0.889461, 0.337819, -0.307795,
		15.290539, 20.746723, 15.363403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.544633, 20.633394, 14.865883>,  <14.667916, 20.510250, 15.578859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.544633, 20.633394, 14.865883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.941988, 20.653181, 14.907325>,  <15.180401, 20.665054, 14.932190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.941988, 20.653181, 14.907325>,  <14.544633, 20.633394, 14.865883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.941988, 20.653181, 14.907325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114749, -0.457072, -0.881997,
		0.003724, 0.888053, -0.459726,
		0.993388, 0.049469, 0.103605,
		15.240005, 20.668022, 14.938406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.750470, 20.847515, 14.206278>,  <14.544633, 20.633394, 14.865883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.750470, 20.847515, 14.206278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.076339, 20.697594, 14.383289>,  <15.271860, 20.607641, 14.489496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.076339, 20.697594, 14.383289>,  <14.750470, 20.847515, 14.206278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.076339, 20.697594, 14.383289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216886, -0.510795, -0.831895,
		0.537839, 0.773700, -0.334840,
		0.814672, -0.374804, 0.442530,
		15.320740, 20.585152, 14.516048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.300499, 20.840950, 13.641997>,  <14.750470, 20.847515, 14.206278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.300499, 20.840950, 13.641997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.416767, 20.567883, 13.910170>,  <15.486528, 20.404043, 14.071073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.416767, 20.567883, 13.910170>,  <15.300499, 20.840950, 13.641997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.416767, 20.567883, 13.910170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210713, -0.637811, -0.740809,
		0.933333, 0.356599, -0.041546,
		0.290670, -0.682667, 0.670430,
		15.503968, 20.363083, 14.111299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.962241, 20.678436, 13.402635>,  <15.300499, 20.840950, 13.641997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.962241, 20.678436, 13.402635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.773241, 20.401484, 13.620754>,  <15.659841, 20.235312, 13.751626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.773241, 20.401484, 13.620754>,  <15.962241, 20.678436, 13.402635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.773241, 20.401484, 13.620754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149947, -0.672857, -0.724417,
		0.868481, -0.260522, 0.421746,
		-0.472501, -0.692382, 0.545299,
		15.631491, 20.193769, 13.784344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.355410, 20.109764, 13.330722>,  <15.962241, 20.678436, 13.402635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.355410, 20.109764, 13.330722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.004644, 19.967300, 13.459826>,  <15.794185, 19.881823, 13.537288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.004644, 19.967300, 13.459826>,  <16.355410, 20.109764, 13.330722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.004644, 19.967300, 13.459826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060863, -0.748385, -0.660466,
		0.476777, -0.559528, 0.677946,
		-0.876914, -0.356157, 0.322758,
		15.741570, 19.860453, 13.556653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.524134, 19.653669, 12.886724>,  <16.355410, 20.109764, 13.330722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.524134, 19.653669, 12.886724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.699553, 20.001507, 12.977485>,  <16.804804, 20.210209, 13.031941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.699553, 20.001507, 12.977485>,  <16.524134, 19.653669, 12.886724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.699553, 20.001507, 12.977485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310709, -0.383612, 0.869656,
		0.843289, -0.310885, -0.438422,
		0.438547, 0.869593, 0.226901,
		16.831118, 20.262384, 13.045555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.253717, 19.596008, 13.052112>,  <16.524134, 19.653669, 12.886724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.253717, 19.596008, 13.052112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.078827, 19.904572, 13.237048>,  <16.973892, 20.089710, 13.348010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.078827, 19.904572, 13.237048>,  <17.253717, 19.596008, 13.052112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.078827, 19.904572, 13.237048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365779, -0.317115, 0.875011,
		0.821606, 0.551695, -0.143513,
		-0.437229, 0.771409, 0.462341,
		16.947659, 20.135994, 13.375751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.858536, 19.233974, 13.413369>,  <17.253717, 19.596008, 13.052112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.858536, 19.233974, 13.413369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.189428, 19.010065, 13.394034>,  <18.387964, 18.875719, 13.382433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.189428, 19.010065, 13.394034>,  <17.858536, 19.233974, 13.413369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.189428, 19.010065, 13.394034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061981, -0.176424, 0.982361,
		-0.558430, -0.809645, -0.180639,
		0.827233, -0.559776, -0.048338,
		18.437599, 18.842133, 13.379533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.687943, 18.576784, 13.692569>,  <17.858536, 19.233974, 13.413369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.687943, 18.576784, 13.692569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.078354, 18.647369, 13.743529>,  <18.312601, 18.689720, 13.774106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.078354, 18.647369, 13.743529>,  <17.687943, 18.576784, 13.692569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.078354, 18.647369, 13.743529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091508, -0.198392, 0.975842,
		0.197477, -0.964106, -0.177488,
		0.976027, 0.176464, 0.127402,
		18.371162, 18.700308, 13.781750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.986464, 18.009336, 14.096008>,  <17.687943, 18.576784, 13.692569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.986464, 18.009336, 14.096008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.240870, 18.315845, 14.132468>,  <18.393513, 18.499752, 14.154345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.240870, 18.315845, 14.132468>,  <17.986464, 18.009336, 14.096008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.240870, 18.315845, 14.132468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036152, -0.088401, 0.995429,
		0.770830, -0.636403, -0.028522,
		0.636015, 0.766275, 0.091150,
		18.431675, 18.545729, 14.159813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.449648, 17.674328, 14.439590>,  <17.986464, 18.009336, 14.096008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.449648, 17.674328, 14.439590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.536991, 18.055292, 14.524667>,  <18.589397, 18.283871, 14.575713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.536991, 18.055292, 14.524667>,  <18.449648, 17.674328, 14.439590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.536991, 18.055292, 14.524667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101172, -0.238870, 0.965767,
		0.970610, -0.189363, -0.148516,
		0.218356, 0.952409, 0.212691,
		18.602497, 18.341015, 14.588474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.828323, 17.630199, 15.150584>,  <18.449648, 17.674328, 14.439590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.828323, 17.630199, 15.150584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.735689, 18.019325, 15.151176>,  <18.680109, 18.252800, 15.151531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.735689, 18.019325, 15.151176>,  <18.828323, 17.630199, 15.150584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.735689, 18.019325, 15.151176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092034, -0.023424, 0.995481,
		0.968451, 0.230403, 0.094957,
		-0.231586, 0.972813, 0.001479,
		18.666214, 18.311169, 15.151620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.249485, 17.868641, 15.645990>,  <18.828323, 17.630199, 15.150584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.249485, 17.868641, 15.645990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.949890, 18.132231, 15.618361>,  <18.770134, 18.290384, 15.601785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.949890, 18.132231, 15.618361>,  <19.249485, 17.868641, 15.645990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.949890, 18.132231, 15.618361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205221, -0.131599, 0.969828,
		0.630003, 0.740563, 0.233801,
		-0.748987, 0.658975, -0.069071,
		18.725195, 18.329924, 15.597640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.261909, 18.330290, 16.208673>,  <19.249485, 17.868641, 15.645990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.261909, 18.330290, 16.208673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.878166, 18.316015, 16.096704>,  <18.647921, 18.307451, 16.029524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.878166, 18.316015, 16.096704>,  <19.261909, 18.330290, 16.208673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.878166, 18.316015, 16.096704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269901, -0.173485, 0.947131,
		-0.082362, 0.984190, 0.156802,
		-0.959359, -0.035687, -0.279922,
		18.590359, 18.305309, 16.012728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.934408, 18.647692, 16.703194>,  <19.261909, 18.330290, 16.208673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.934408, 18.647692, 16.703194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.633587, 18.471146, 16.507393>,  <18.453094, 18.365219, 16.389912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.633587, 18.471146, 16.507393>,  <18.934408, 18.647692, 16.703194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.633587, 18.471146, 16.507393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515089, -0.069787, 0.854291,
		-0.411214, 0.894611, -0.174857,
		-0.752055, -0.441363, -0.489501,
		18.407970, 18.338737, 16.360542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.271194, 19.001963, 16.909105>,  <18.934408, 18.647692, 16.703194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.271194, 19.001963, 16.909105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.126844, 18.664490, 16.750122>,  <18.040236, 18.462006, 16.654732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.126844, 18.664490, 16.750122>,  <18.271194, 19.001963, 16.909105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.126844, 18.664490, 16.750122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591935, -0.122122, 0.796680,
		-0.720682, 0.522769, -0.455335,
		-0.360873, -0.843682, -0.397456,
		18.018583, 18.411385, 16.630886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.545633, 19.150480, 16.873480>,  <18.271194, 19.001963, 16.909105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.545633, 19.150480, 16.873480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.605326, 18.755806, 16.899347>,  <17.641140, 18.519001, 16.914867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.605326, 18.755806, 16.899347>,  <17.545633, 19.150480, 16.873480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.605326, 18.755806, 16.899347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591292, -0.036628, 0.805625,
		-0.792530, -0.158461, -0.588886,
		0.149230, -0.986686, 0.064668,
		17.650095, 18.459801, 16.918747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.935717, 18.842167, 16.801477>,  <17.545633, 19.150480, 16.873480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.935717, 18.842167, 16.801477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.154278, 18.563725, 16.987759>,  <17.285414, 18.396658, 17.099527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.154278, 18.563725, 16.987759>,  <16.935717, 18.842167, 16.801477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.154278, 18.563725, 16.987759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732269, -0.127200, 0.669031,
		-0.406480, -0.706579, -0.579240,
		0.546403, -0.696108, 0.465701,
		17.318199, 18.354893, 17.127470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.450630, 18.351053, 16.965458>,  <16.935717, 18.842167, 16.801477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.450630, 18.351053, 16.965458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.750463, 18.282753, 17.221260>,  <16.930363, 18.241774, 17.374743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.750463, 18.282753, 17.221260>,  <16.450630, 18.351053, 16.965458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.750463, 18.282753, 17.221260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645017, 0.028450, 0.763638,
		-0.148586, -0.984903, -0.088812,
		0.749583, -0.170751, 0.639507,
		16.975338, 18.231527, 17.413113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.248354, 17.890284, 17.565699>,  <16.450630, 18.351053, 16.965458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.248354, 17.890284, 17.565699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.579268, 18.064886, 17.707159>,  <16.777815, 18.169647, 17.792034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.579268, 18.064886, 17.707159>,  <16.248354, 17.890284, 17.565699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.579268, 18.064886, 17.707159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417889, 0.057423, 0.906682,
		0.375464, -0.897868, 0.229915,
		0.827282, 0.436505, 0.353649,
		16.827452, 18.195837, 17.813253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.373417, 17.618624, 18.269827>,  <16.248354, 17.890284, 17.565699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.373417, 17.618624, 18.269827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.549314, 17.976456, 18.237936>,  <16.654854, 18.191154, 18.218801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.549314, 17.976456, 18.237936>,  <16.373417, 17.618624, 18.269827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.549314, 17.976456, 18.237936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173831, 0.171868, 0.969662,
		0.881140, -0.412544, 0.231083,
		0.439744, 0.894577, -0.079727,
		16.681238, 18.244829, 18.214018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.867508, 17.014301, 18.342121>,  <16.373417, 17.618624, 18.269827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.867508, 17.014301, 18.342121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.736380, 16.660692, 18.475412>,  <16.657701, 16.448526, 18.555387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.736380, 16.660692, 18.475412>,  <16.867508, 17.014301, 18.342121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.736380, 16.660692, 18.475412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053667, -0.369574, -0.927650,
		0.943214, -0.286221, 0.168597,
		-0.327822, -0.884021, 0.333227,
		16.638033, 16.395487, 18.575380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.370884, 16.488060, 18.225033>,  <16.867508, 17.014301, 18.342121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.370884, 16.488060, 18.225033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.020834, 16.299152, 18.267200>,  <16.810804, 16.185808, 18.292501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.020834, 16.299152, 18.267200>,  <17.370884, 16.488060, 18.225033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.020834, 16.299152, 18.267200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099898, -0.389487, -0.915598,
		0.473469, -0.790734, 0.388029,
		-0.875127, -0.472271, 0.105418,
		16.758295, 16.157471, 18.298826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.544828, 15.814976, 17.994896>,  <17.370884, 16.488060, 18.225033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.544828, 15.814976, 17.994896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.146925, 15.845368, 17.967522>,  <16.908182, 15.863604, 17.951097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.146925, 15.845368, 17.967522>,  <17.544828, 15.814976, 17.994896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.146925, 15.845368, 17.967522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033772, -0.387561, -0.921225,
		-0.096519, -0.918707, 0.382963,
		-0.994758, 0.075982, -0.068434,
		16.848497, 15.868163, 17.946991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.251631, 15.180329, 17.581799>,  <17.544828, 15.814976, 17.994896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.251631, 15.180329, 17.581799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.948263, 15.439021, 17.549444>,  <16.766243, 15.594236, 17.530031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.948263, 15.439021, 17.549444>,  <17.251631, 15.180329, 17.581799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.948263, 15.439021, 17.549444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052140, -0.183905, -0.981560,
		-0.649680, -0.740215, 0.173197,
		-0.758418, 0.646730, -0.080884,
		16.720737, 15.633040, 17.525179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.834553, 14.805655, 17.156391>,  <17.251631, 15.180329, 17.581799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.834553, 14.805655, 17.156391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711451, 15.185420, 17.131392>,  <16.637590, 15.413279, 17.116392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711451, 15.185420, 17.131392>,  <16.834553, 14.805655, 17.156391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.711451, 15.185420, 17.131392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209214, -0.131605, -0.968973,
		-0.928179, -0.285130, 0.239132,
		-0.307755, 0.949411, -0.062500,
		16.619123, 15.470243, 17.112642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.180052, 14.716005, 16.934776>,  <16.834553, 14.805655, 17.156391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.180052, 14.716005, 16.934776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293695, 15.089270, 16.846691>,  <16.361881, 15.313229, 16.793840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293695, 15.089270, 16.846691>,  <16.180052, 14.716005, 16.934776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.293695, 15.089270, 16.846691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370947, -0.104810, -0.922720,
		-0.884127, 0.343840, 0.316376,
		0.284109, 0.933161, -0.220211,
		16.378927, 15.369218, 16.780628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.553992, 15.030272, 16.669107>,  <16.180052, 14.716005, 16.934776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.553992, 15.030272, 16.669107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.847470, 15.267283, 16.536079>,  <16.023558, 15.409490, 16.456263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.847470, 15.267283, 16.536079>,  <15.553992, 15.030272, 16.669107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.847470, 15.267283, 16.536079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322092, -0.127681, -0.938059,
		-0.598288, 0.795367, 0.097169,
		0.733695, 0.592527, -0.332571,
		16.067579, 15.445042, 16.436308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.215340, 15.506338, 16.184610>,  <15.553992, 15.030272, 16.669107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.215340, 15.506338, 16.184610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.602798, 15.516448, 16.085751>,  <15.835274, 15.522513, 16.026436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.602798, 15.516448, 16.085751>,  <15.215340, 15.506338, 16.184610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.602798, 15.516448, 16.085751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247166, -0.002425, -0.968970,
		-0.025089, 0.999677, 0.003898,
		0.968648, 0.025274, -0.247148,
		15.893393, 15.524031, 16.011606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.295568, 16.038366, 15.674613>,  <15.215340, 15.506338, 16.184610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.295568, 16.038366, 15.674613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.586889, 15.771091, 15.613817>,  <15.761682, 15.610726, 15.577339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.586889, 15.771091, 15.613817>,  <15.295568, 16.038366, 15.674613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.586889, 15.771091, 15.613817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274190, -0.080884, -0.958268,
		0.628009, 0.739583, -0.242119,
		0.728302, -0.668188, -0.151990,
		15.805380, 15.570635, 15.568220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.408962, 16.035509, 15.019732>,  <15.295568, 16.038366, 15.674613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.408962, 16.035509, 15.019732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.612998, 15.704059, 15.111985>,  <15.735419, 15.505189, 15.167337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.612998, 15.704059, 15.111985>,  <15.408962, 16.035509, 15.019732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.612998, 15.704059, 15.111985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103491, -0.325320, -0.939924,
		0.853873, 0.455575, -0.251697,
		0.510088, -0.828624, 0.230634,
		15.766025, 15.455471, 15.181175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.876938, 15.893875, 14.511926>,  <15.408962, 16.035509, 15.019732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.876938, 15.893875, 14.511926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.806192, 15.540488, 14.685455>,  <15.763745, 15.328456, 14.789574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.806192, 15.540488, 14.685455>,  <15.876938, 15.893875, 14.511926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.806192, 15.540488, 14.685455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088406, -0.424732, -0.900992,
		0.980257, -0.197704, -0.002985,
		-0.176862, -0.883468, 0.433825,
		15.753134, 15.275448, 14.815603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.340284, 15.445814, 14.206900>,  <15.876938, 15.893875, 14.511926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.340284, 15.445814, 14.206900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.031401, 15.239479, 14.355279>,  <15.846070, 15.115678, 14.444306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.031401, 15.239479, 14.355279>,  <16.340284, 15.445814, 14.206900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.031401, 15.239479, 14.355279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143145, -0.427576, -0.892574,
		0.619031, -0.742355, 0.256339,
		-0.772211, -0.515838, 0.370947,
		15.799737, 15.084728, 14.466563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<15.431617, 17.388489, 24.247545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.826789, 17.326601, 24.250557>,  <16.063892, 17.289469, 24.252365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.826789, 17.326601, 24.250557>,  <15.431617, 17.388489, 24.247545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.826789, 17.326601, 24.250557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075782, -0.525152, -0.847628,
		0.135098, 0.836826, -0.530538,
		0.987930, -0.154718, 0.007531,
		16.123167, 17.280186, 24.252817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.540567, 17.577328, 23.618353>,  <15.431617, 17.388489, 24.247545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.540567, 17.577328, 23.618353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.888915, 17.397747, 23.698381>,  <16.097923, 17.289999, 23.746399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.888915, 17.397747, 23.698381>,  <15.540567, 17.577328, 23.618353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.888915, 17.397747, 23.698381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073956, -0.282727, -0.956345,
		0.485918, 0.847648, -0.213016,
		0.870870, -0.448951, 0.200071,
		16.150175, 17.263062, 23.758404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.212685, 17.794769, 23.084669>,  <15.540567, 17.577328, 23.618353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.212685, 17.794769, 23.084669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.300106, 17.444490, 23.256895>,  <16.352560, 17.234324, 23.360229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.300106, 17.444490, 23.256895>,  <16.212685, 17.794769, 23.084669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.300106, 17.444490, 23.256895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346036, -0.343008, -0.873273,
		0.912410, 0.339849, 0.228057,
		0.218555, -0.875699, 0.430564,
		16.365673, 17.181780, 23.386065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.906240, 17.688911, 22.874842>,  <16.212685, 17.794769, 23.084669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.906240, 17.688911, 22.874842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.792822, 17.315025, 22.960550>,  <16.724771, 17.090694, 23.011974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.792822, 17.315025, 22.960550>,  <16.906240, 17.688911, 22.874842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.792822, 17.315025, 22.960550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395081, -0.317459, -0.862050,
		0.873793, -0.159775, 0.459302,
		-0.283544, -0.934715, 0.214269,
		16.707758, 17.034611, 23.024832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.532305, 17.321772, 22.771143>,  <16.906240, 17.688911, 22.874842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.532305, 17.321772, 22.771143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.221701, 17.073372, 22.728453>,  <17.035337, 16.924332, 22.702839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.221701, 17.073372, 22.728453>,  <17.532305, 17.321772, 22.771143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.221701, 17.073372, 22.728453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377237, -0.322504, -0.868150,
		0.504699, -0.714390, 0.484692,
		-0.776512, -0.620998, -0.106727,
		16.988747, 16.887072, 22.696434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.725996, 16.781027, 22.372412>,  <17.532305, 17.321772, 22.771143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.725996, 16.781027, 22.372412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.329918, 16.733534, 22.342964>,  <17.092272, 16.705038, 22.325294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.329918, 16.733534, 22.342964>,  <17.725996, 16.781027, 22.372412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.329918, 16.733534, 22.342964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105352, -0.288518, -0.951661,
		0.091754, -0.950084, 0.298197,
		-0.990193, -0.118735, -0.073620,
		17.032860, 16.697914, 22.320879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.713503, 16.202328, 22.057230>,  <17.725996, 16.781027, 22.372412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.713503, 16.202328, 22.057230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.346209, 16.352467, 22.006708>,  <17.125832, 16.442551, 21.976395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.346209, 16.352467, 22.006708>,  <17.713503, 16.202328, 22.057230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.346209, 16.352467, 22.006708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005274, -0.307308, -0.951595,
		-0.395997, -0.874456, 0.280202,
		-0.918237, 0.375351, -0.126305,
		17.070738, 16.465071, 21.968817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.555243, 15.791972, 21.483271>,  <17.713503, 16.202328, 22.057230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.555243, 15.791972, 21.483271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.229515, 16.023428, 21.501450>,  <17.034079, 16.162302, 21.512358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.229515, 16.023428, 21.501450>,  <17.555243, 15.791972, 21.483271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.229515, 16.023428, 21.501450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258208, -0.291020, -0.921215,
		-0.519825, -0.761895, 0.386391,
		-0.814316, 0.578639, 0.045448,
		16.985220, 16.197020, 21.515083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.881529, 15.387210, 21.359980>,  <17.555243, 15.791972, 21.483271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.881529, 15.387210, 21.359980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.908232, 15.772185, 21.254715>,  <16.924253, 16.003170, 21.191555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.908232, 15.772185, 21.254715>,  <16.881529, 15.387210, 21.359980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.908232, 15.772185, 21.254715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090370, -0.256835, -0.962221,
		-0.993668, 0.088017, 0.069830,
		0.066757, 0.962439, -0.263163,
		16.928259, 16.060917, 21.175766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.464598, 15.524491, 20.744915>,  <16.881529, 15.387210, 21.359980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.464598, 15.524491, 20.744915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.639660, 15.879097, 20.684847>,  <16.744698, 16.091860, 20.648806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.639660, 15.879097, 20.684847>,  <16.464598, 15.524491, 20.744915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.639660, 15.879097, 20.684847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298434, -0.014327, -0.954323,
		-0.848172, 0.462480, 0.258296,
		0.437655, 0.886514, -0.150172,
		16.770956, 16.145052, 20.639795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.983387, 16.182138, 20.564827>,  <16.464598, 15.524491, 20.744915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.983387, 16.182138, 20.564827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.351128, 16.280573, 20.442036>,  <16.571772, 16.339634, 20.368361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.351128, 16.280573, 20.442036>,  <15.983387, 16.182138, 20.564827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.351128, 16.280573, 20.442036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251014, -0.233946, -0.939287,
		-0.302962, 0.940591, -0.153307,
		0.919351, 0.246086, -0.306979,
		16.626932, 16.354399, 20.349941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.821042, 16.568604, 19.946091>,  <15.983387, 16.182138, 20.564827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.821042, 16.568604, 19.946091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.209143, 16.474554, 19.923021>,  <16.442003, 16.418123, 19.909180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.209143, 16.474554, 19.923021>,  <15.821042, 16.568604, 19.946091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.209143, 16.474554, 19.923021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080868, -0.090233, -0.992632,
		0.228189, 0.967767, -0.106563,
		0.970253, -0.235126, -0.057671,
		16.500219, 16.404016, 19.905720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.912474, 16.929819, 19.420313>,  <15.821042, 16.568604, 19.946091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.912474, 16.929819, 19.420313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.251080, 16.717485, 19.436451>,  <16.454243, 16.590086, 19.446135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.251080, 16.717485, 19.436451>,  <15.912474, 16.929819, 19.420313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.251080, 16.717485, 19.436451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147179, -0.306191, -0.940524,
		0.511615, 0.790230, -0.337323,
		0.846515, -0.530833, 0.040346,
		16.505033, 16.558235, 19.448555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.336729, 17.089895, 18.826878>,  <15.912474, 16.929819, 19.420313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.336729, 17.089895, 18.826878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.481401, 16.733488, 18.936623>,  <16.568205, 16.519644, 19.002470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.481401, 16.733488, 18.936623>,  <16.336729, 17.089895, 18.826878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.481401, 16.733488, 18.936623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038635, -0.279710, -0.959307,
		0.931502, 0.357562, -0.066741,
		0.361680, -0.891017, 0.274365,
		16.589905, 16.466183, 19.018932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.774023, 17.742722, 19.011129>,  <16.336729, 17.089895, 18.826878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.774023, 17.742722, 19.011129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.754038, 18.101620, 18.835649>,  <16.742046, 18.316957, 18.730362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.754038, 18.101620, 18.835649>,  <16.774023, 17.742722, 19.011129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.754038, 18.101620, 18.835649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135491, 0.429099, 0.893037,
		0.989518, 0.104059, 0.100130,
		-0.049963, 0.897243, -0.438700,
		16.739050, 18.370792, 18.704039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.360332, 18.236050, 19.279501>,  <16.774023, 17.742722, 19.011129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.360332, 18.236050, 19.279501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.062695, 18.462839, 19.138155>,  <16.884111, 18.598913, 19.053349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.062695, 18.462839, 19.138155>,  <17.360332, 18.236050, 19.279501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.062695, 18.462839, 19.138155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020284, 0.547857, 0.836326,
		0.667765, 0.615139, -0.419159,
		-0.744096, 0.566971, -0.353363,
		16.839466, 18.632931, 19.032146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.513077, 18.853334, 19.579317>,  <17.360332, 18.236050, 19.279501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.513077, 18.853334, 19.579317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.130722, 18.884035, 19.465906>,  <16.901308, 18.902456, 19.397860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.130722, 18.884035, 19.465906>,  <17.513077, 18.853334, 19.579317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.130722, 18.884035, 19.465906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196233, 0.551382, 0.810846,
		0.218565, 0.830715, -0.511998,
		-0.955888, 0.076752, -0.283526,
		16.843956, 18.907061, 19.380848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.272234, 19.565672, 19.678543>,  <17.513077, 18.853334, 19.579317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.272234, 19.565672, 19.678543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.924902, 19.367588, 19.667419>,  <16.716503, 19.248737, 19.660746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.924902, 19.367588, 19.667419>,  <17.272234, 19.565672, 19.678543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.924902, 19.367588, 19.667419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359389, 0.589553, 0.723372,
		-0.341827, 0.638118, -0.689898,
		-0.868328, -0.495210, -0.027807,
		16.664404, 19.219025, 19.659077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.808756, 20.048120, 19.836330>,  <17.272234, 19.565672, 19.678543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.808756, 20.048120, 19.836330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.603273, 19.715790, 19.921967>,  <16.479984, 19.516392, 19.973349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.603273, 19.715790, 19.921967>,  <16.808756, 20.048120, 19.836330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.603273, 19.715790, 19.921967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429717, 0.465130, 0.773949,
		-0.742597, 0.305583, -0.595960,
		-0.513704, -0.830827, 0.214090,
		16.449162, 19.466541, 19.986193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.144728, 20.273428, 19.882662>,  <16.808756, 20.048120, 19.836330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.144728, 20.273428, 19.882662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.128448, 19.925011, 20.078468>,  <16.118681, 19.715960, 20.195951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.128448, 19.925011, 20.078468>,  <16.144728, 20.273428, 19.882662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.128448, 19.925011, 20.078468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463638, 0.450447, 0.762979,
		-0.885090, -0.195906, -0.422181,
		-0.040698, -0.871044, 0.489515,
		16.116240, 19.663698, 20.225323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.356752, 20.100761, 20.041105>,  <16.144728, 20.273428, 19.882662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.356752, 20.100761, 20.041105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.611394, 19.915026, 20.287397>,  <15.764179, 19.803585, 20.435173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.611394, 19.915026, 20.287397>,  <15.356752, 20.100761, 20.041105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.611394, 19.915026, 20.287397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432291, 0.446325, 0.783530,
		-0.638639, -0.764973, 0.083403,
		0.636604, -0.464339, 0.615731,
		15.802375, 19.775724, 20.472116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.972262, 20.317820, 20.673630>,  <15.356752, 20.100761, 20.041105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.972262, 20.317820, 20.673630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.305673, 20.124180, 20.780125>,  <15.505719, 20.007996, 20.844023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.305673, 20.124180, 20.780125>,  <14.972262, 20.317820, 20.673630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.305673, 20.124180, 20.780125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138092, 0.284049, 0.948813,
		-0.534944, -0.827626, 0.169912,
		0.833526, -0.484099, 0.266239,
		15.555731, 19.978951, 20.859997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.799596, 19.921247, 21.206524>,  <14.972262, 20.317820, 20.673630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.799596, 19.921247, 21.206524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.193947, 19.985359, 21.225937>,  <15.430557, 20.023827, 21.237585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.193947, 19.985359, 21.225937>,  <14.799596, 19.921247, 21.206524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.193947, 19.985359, 21.225937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074121, 0.157748, 0.984694,
		0.150174, -0.974384, 0.167400,
		0.985877, 0.160283, 0.048533,
		15.489710, 20.033443, 21.240498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.121049, 19.421854, 21.643570>,  <14.799596, 19.921247, 21.206524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.121049, 19.421854, 21.643570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.380402, 19.725349, 21.668610>,  <15.536014, 19.907446, 21.683634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.380402, 19.725349, 21.668610>,  <15.121049, 19.421854, 21.643570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.380402, 19.725349, 21.668610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024298, -0.102810, 0.994404,
		0.760927, -0.643233, -0.085095,
		0.648382, 0.758737, 0.062602,
		15.574916, 19.952971, 21.687389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.678034, 19.273214, 22.034134>,  <15.121049, 19.421854, 21.643570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.678034, 19.273214, 22.034134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.691787, 19.672621, 22.051039>,  <15.700039, 19.912264, 22.061182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.691787, 19.672621, 22.051039>,  <15.678034, 19.273214, 22.034134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.691787, 19.672621, 22.051039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161466, -0.047281, 0.985745,
		0.986279, -0.027069, -0.162852,
		0.034383, 0.998515, 0.042261,
		15.702102, 19.972176, 22.063717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.276194, 19.382212, 22.482170>,  <15.678034, 19.273214, 22.034134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.276194, 19.382212, 22.482170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.074350, 19.727545, 22.480087>,  <15.953244, 19.934744, 22.478838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.074350, 19.727545, 22.480087>,  <16.276194, 19.382212, 22.482170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.074350, 19.727545, 22.480087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175715, 0.108605, 0.978432,
		0.845278, 0.492810, -0.206504,
		-0.504609, 0.863333, -0.005207,
		15.922968, 19.986544, 22.478525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.358082, 19.597584, 23.194407>,  <16.276194, 19.382212, 22.482170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.358082, 19.597584, 23.194407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.094721, 19.872322, 23.071278>,  <15.936705, 20.037165, 22.997400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.094721, 19.872322, 23.071278>,  <16.358082, 19.597584, 23.194407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.094721, 19.872322, 23.071278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113915, 0.313327, 0.942788,
		0.743997, 0.655797, -0.128053,
		-0.658400, 0.686845, -0.307820,
		15.897201, 20.078375, 22.978931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670681, 20.251024, 23.363653>,  <16.358082, 19.597584, 23.194407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.670681, 20.251024, 23.363653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.270935, 20.248007, 23.349749>,  <16.031088, 20.246197, 23.341406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.270935, 20.248007, 23.349749>,  <16.670681, 20.251024, 23.363653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.270935, 20.248007, 23.349749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035564, 0.233589, 0.971685,
		0.000790, 0.972306, -0.233709,
		-0.999367, -0.007544, -0.034763,
		15.971125, 20.245743, 23.339319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<10.983017, 18.346434, 23.921297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.367140, 18.414814, 23.833128>,  <11.597613, 18.455843, 23.780228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.367140, 18.414814, 23.833128>,  <10.983017, 18.346434, 23.921297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.367140, 18.414814, 23.833128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132881, -0.414418, -0.900333,
		-0.245261, 0.893886, -0.375252,
		0.960307, 0.170953, -0.220421,
		11.655231, 18.466101, 23.767002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.935253, 18.411085, 23.200487>,  <10.983017, 18.346434, 23.921297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.935253, 18.411085, 23.200487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.326556, 18.379557, 23.277220>,  <11.561337, 18.360640, 23.323259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.326556, 18.379557, 23.277220>,  <10.935253, 18.411085, 23.200487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.326556, 18.379557, 23.277220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120951, -0.534558, -0.836432,
		0.168475, 0.841448, -0.513402,
		0.978257, -0.078822, 0.191834,
		11.620033, 18.355909, 23.334770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.268203, 18.694288, 22.607674>,  <10.935253, 18.411085, 23.200487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.268203, 18.694288, 22.607674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.526939, 18.454510, 22.796249>,  <11.682181, 18.310642, 22.909395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.526939, 18.454510, 22.796249>,  <11.268203, 18.694288, 22.607674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.526939, 18.454510, 22.796249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132905, -0.520116, -0.843692,
		0.750954, 0.608392, -0.256763,
		0.646842, -0.599448, 0.471441,
		11.720992, 18.274675, 22.937681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.864815, 18.745415, 22.264624>,  <11.268203, 18.694288, 22.607674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.864815, 18.745415, 22.264624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.869770, 18.395920, 22.459120>,  <11.872743, 18.186222, 22.575817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.869770, 18.395920, 22.459120>,  <11.864815, 18.745415, 22.264624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.869770, 18.395920, 22.459120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224538, -0.471429, -0.852841,
		0.974387, 0.119744, 0.190347,
		0.012388, -0.873737, 0.486241,
		11.873487, 18.133799, 22.604992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.365371, 18.460585, 21.873039>,  <11.864815, 18.745415, 22.264624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.365371, 18.460585, 21.873039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.189139, 18.166426, 22.078983>,  <12.083401, 17.989931, 22.202551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.189139, 18.166426, 22.078983>,  <12.365371, 18.460585, 21.873039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.189139, 18.166426, 22.078983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046626, -0.554006, -0.831206,
		0.896502, -0.390217, 0.209795,
		-0.440579, -0.735397, 0.514861,
		12.056966, 17.945807, 22.233442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.618845, 17.856884, 21.568804>,  <12.365371, 18.460585, 21.873039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.618845, 17.856884, 21.568804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.301324, 17.725260, 21.773392>,  <12.110811, 17.646286, 21.896145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.301324, 17.725260, 21.773392>,  <12.618845, 17.856884, 21.568804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.301324, 17.725260, 21.773392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137100, -0.722519, -0.677620,
		0.592522, -0.608018, 0.528423,
		-0.793802, -0.329058, 0.511468,
		12.063184, 17.626543, 21.926832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.795896, 17.250494, 21.661732>,  <12.618845, 17.856884, 21.568804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.795896, 17.250494, 21.661732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.398262, 17.277407, 21.695839>,  <12.159682, 17.293554, 21.716303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.398262, 17.277407, 21.695839>,  <12.795896, 17.250494, 21.661732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.398262, 17.277407, 21.695839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107274, -0.731277, -0.673592,
		0.017035, -0.678754, 0.734168,
		-0.994083, 0.067283, 0.085270,
		12.100037, 17.297592, 21.721420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.597157, 16.588953, 21.591780>,  <12.795896, 17.250494, 21.661732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.597157, 16.588953, 21.591780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.273258, 16.801819, 21.492897>,  <12.078918, 16.929539, 21.433567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.273258, 16.801819, 21.492897>,  <12.597157, 16.588953, 21.591780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.273258, 16.801819, 21.492897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213245, -0.659375, -0.720937,
		-0.546657, -0.531062, 0.647409,
		-0.809748, 0.532162, -0.247206,
		12.030334, 16.961468, 21.418736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.030133, 16.108812, 21.420816>,  <12.597157, 16.588953, 21.591780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.030133, 16.108812, 21.420816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.903153, 16.444466, 21.244144>,  <11.826965, 16.645857, 21.138142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.903153, 16.444466, 21.244144>,  <12.030133, 16.108812, 21.420816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.903153, 16.444466, 21.244144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349178, -0.536484, -0.768283,
		-0.881646, -0.089667, 0.463314,
		-0.317450, 0.839133, -0.441680,
		11.807919, 16.696205, 21.111641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.277828, 15.967527, 21.064751>,  <12.030133, 16.108812, 21.420816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.277828, 15.967527, 21.064751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.438375, 16.290707, 20.892181>,  <11.534703, 16.484613, 20.788641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.438375, 16.290707, 20.892181>,  <11.277828, 15.967527, 21.064751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.438375, 16.290707, 20.892181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225145, -0.369544, -0.901525,
		-0.887814, 0.458975, 0.033582,
		0.401367, 0.807947, -0.431422,
		11.558785, 16.533091, 20.762754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.917192, 16.130058, 20.484756>,  <11.277828, 15.967527, 21.064751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.917192, 16.130058, 20.484756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.240040, 16.348932, 20.396084>,  <11.433749, 16.480257, 20.342880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.240040, 16.348932, 20.396084>,  <10.917192, 16.130058, 20.484756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.240040, 16.348932, 20.396084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220396, -0.069081, -0.972961,
		-0.547704, 0.834155, 0.064841,
		0.807122, 0.547186, -0.221681,
		11.482177, 16.513088, 20.329580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.710710, 16.760303, 20.054573>,  <10.917192, 16.130058, 20.484756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.710710, 16.760303, 20.054573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.098927, 16.677942, 20.004532>,  <11.331857, 16.628527, 19.974506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.098927, 16.677942, 20.004532>,  <10.710710, 16.760303, 20.054573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.098927, 16.677942, 20.004532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103498, 0.112587, -0.988237,
		0.217564, 0.972075, 0.087960,
		0.970543, -0.205901, -0.125103,
		11.390089, 16.616173, 19.967001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.947190, 17.193106, 19.521273>,  <10.710710, 16.760303, 20.054573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.947190, 17.193106, 19.521273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.248114, 16.932201, 19.558342>,  <11.428668, 16.775660, 19.580584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.248114, 16.932201, 19.558342>,  <10.947190, 17.193106, 19.521273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.248114, 16.932201, 19.558342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059075, -0.073317, -0.995558,
		0.656157, 0.754442, -0.016625,
		0.752309, -0.652260, 0.092676,
		11.473806, 16.736523, 19.586145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.367871, 17.424601, 19.018129>,  <10.947190, 17.193106, 19.521273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.367871, 17.424601, 19.018129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.494319, 17.050268, 19.080469>,  <11.570188, 16.825668, 19.117872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.494319, 17.050268, 19.080469>,  <11.367871, 17.424601, 19.018129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.494319, 17.050268, 19.080469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108713, -0.127461, -0.985868,
		0.942471, 0.328593, 0.061444,
		0.316118, -0.935831, 0.155850,
		11.589154, 16.769518, 19.127224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.980069, 17.952648, 19.090572>,  <11.367871, 17.424601, 19.018129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.980069, 17.952648, 19.090572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.060588, 18.334948, 19.004761>,  <12.108899, 18.564327, 18.953274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.060588, 18.334948, 19.004761>,  <11.980069, 17.952648, 19.090572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.060588, 18.334948, 19.004761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057157, 0.230102, 0.971487,
		0.977861, -0.183296, 0.100946,
		0.201297, 0.955749, -0.214531,
		12.120977, 18.621672, 18.940401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.509410, 18.187178, 19.626835>,  <11.980069, 17.952648, 19.090572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.509410, 18.187178, 19.626835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.355653, 18.524475, 19.476540>,  <12.263398, 18.726854, 19.386362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.355653, 18.524475, 19.476540>,  <12.509410, 18.187178, 19.626835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.355653, 18.524475, 19.476540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044005, 0.389810, 0.919843,
		0.922120, 0.370116, -0.112734,
		-0.384393, 0.843245, -0.375739,
		12.240335, 18.777449, 19.363817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.039161, 18.796650, 19.778791>,  <12.509410, 18.187178, 19.626835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.039161, 18.796650, 19.778791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.681631, 18.963808, 19.713743>,  <12.467113, 19.064102, 19.674715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.681631, 18.963808, 19.713743>,  <13.039161, 18.796650, 19.778791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.681631, 18.963808, 19.713743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045928, 0.446062, 0.893823,
		0.446062, 0.791450, -0.417893,
		-0.893823, 0.417893, -0.162621,
		12.413485, 19.089176, 19.664957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.088693, 19.500790, 19.684603>,  <13.039161, 18.796650, 19.778791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.088693, 19.500790, 19.684603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.720049, 19.430948, 19.823254>,  <12.498863, 19.389044, 19.906445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.720049, 19.430948, 19.823254>,  <13.088693, 19.500790, 19.684603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.720049, 19.430948, 19.823254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234844, 0.460180, 0.856202,
		-0.309008, 0.870487, -0.383101,
		-0.921609, -0.174604, 0.346628,
		12.443566, 19.378567, 19.927242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.847183, 20.122280, 19.983328>,  <13.088693, 19.500790, 19.684603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.847183, 20.122280, 19.983328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.581196, 19.854694, 20.116175>,  <12.421603, 19.694143, 20.195883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.581196, 19.854694, 20.116175>,  <12.847183, 20.122280, 19.983328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.581196, 19.854694, 20.116175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085896, 0.373229, 0.923754,
		-0.741917, 0.642794, -0.190723,
		-0.664967, -0.668966, 0.332118,
		12.381705, 19.654005, 20.215811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.320524, 20.563065, 20.234537>,  <12.847183, 20.122280, 19.983328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.320524, 20.563065, 20.234537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.293230, 20.211271, 20.422943>,  <12.276854, 20.000196, 20.535986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.293230, 20.211271, 20.422943>,  <12.320524, 20.563065, 20.234537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.293230, 20.211271, 20.422943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070539, 0.475187, 0.877053,
		-0.995172, 0.026620, -0.094462,
		-0.068234, -0.879482, 0.471015,
		12.272759, 19.947426, 20.564247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.744629, 20.694645, 20.655540>,  <12.320524, 20.563065, 20.234537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.744629, 20.694645, 20.655540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.922955, 20.369690, 20.805889>,  <12.029950, 20.174717, 20.896097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.922955, 20.369690, 20.805889>,  <11.744629, 20.694645, 20.655540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.922955, 20.369690, 20.805889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009406, 0.424135, 0.905550,
		-0.895076, -0.400171, 0.196727,
		0.445814, -0.812387, 0.375869,
		12.056699, 20.125975, 20.918650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.270440, 20.451134, 21.185537>,  <11.744629, 20.694645, 20.655540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.270440, 20.451134, 21.185537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.624966, 20.282457, 21.262087>,  <11.837681, 20.181252, 21.308016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.624966, 20.282457, 21.262087>,  <11.270440, 20.451134, 21.185537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.624966, 20.282457, 21.262087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018393, 0.380879, 0.924442,
		-0.462719, -0.822866, 0.329822,
		0.886314, -0.421690, 0.191374,
		11.890860, 20.155951, 21.319500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.179008, 20.240583, 21.836023>,  <11.270440, 20.451134, 21.185537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.179008, 20.240583, 21.836023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.573912, 20.246443, 21.772644>,  <11.810854, 20.249958, 21.734617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.573912, 20.246443, 21.772644>,  <11.179008, 20.240583, 21.836023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.573912, 20.246443, 21.772644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130454, 0.495664, 0.858661,
		0.091113, -0.868391, 0.487438,
		0.987259, 0.014647, -0.158447,
		11.870090, 20.250837, 21.725109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.471767, 19.975946, 22.420683>,  <11.179008, 20.240583, 21.836023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.471767, 19.975946, 22.420683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.773011, 20.182339, 22.257423>,  <11.953757, 20.306175, 22.159468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.773011, 20.182339, 22.257423>,  <11.471767, 19.975946, 22.420683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.773011, 20.182339, 22.257423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231632, 0.372706, 0.898575,
		0.615770, -0.771266, 0.161171,
		0.753110, 0.515983, -0.408151,
		11.998944, 20.337133, 22.134977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.156737, 19.852655, 22.795557>,  <11.471767, 19.975946, 22.420683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.156737, 19.852655, 22.795557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.175599, 20.215714, 22.628723>,  <12.186916, 20.433548, 22.528624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.175599, 20.215714, 22.628723>,  <12.156737, 19.852655, 22.795557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.175599, 20.215714, 22.628723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332296, 0.379514, 0.863451,
		0.941996, -0.179312, -0.283711,
		0.047155, 0.907643, -0.417085,
		12.189746, 20.488007, 22.503597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.777144, 20.092056, 23.045252>,  <12.156737, 19.852655, 22.795557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.777144, 20.092056, 23.045252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.594235, 20.424671, 22.919109>,  <12.484490, 20.624241, 22.843424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.594235, 20.424671, 22.919109>,  <12.777144, 20.092056, 23.045252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.594235, 20.424671, 22.919109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069639, 0.386991, 0.919450,
		0.886596, 0.398478, -0.234867,
		-0.457272, 0.831536, -0.315356,
		12.457054, 20.674131, 22.824503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.173908, 20.578474, 23.387201>,  <12.777144, 20.092056, 23.045252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.173908, 20.578474, 23.387201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.835423, 20.770626, 23.294975>,  <12.632333, 20.885918, 23.239639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.835423, 20.770626, 23.294975>,  <13.173908, 20.578474, 23.387201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.835423, 20.770626, 23.294975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085919, 0.550054, 0.830698,
		0.525874, 0.683136, -0.506736,
		-0.846212, 0.480381, -0.230564,
		12.581560, 20.914740, 23.225805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.284311, 21.377899, 23.390127>,  <13.173908, 20.578474, 23.387201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.284311, 21.377899, 23.390127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.894393, 21.302673, 23.438133>,  <12.660441, 21.257538, 23.466936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.894393, 21.302673, 23.438133>,  <13.284311, 21.377899, 23.390127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.894393, 21.302673, 23.438133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013176, 0.488474, 0.872479,
		-0.222706, 0.852071, -0.473685,
		-0.974797, -0.188065, 0.120013,
		12.601954, 21.246254, 23.474136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.234574, 22.106989, 22.972216>,  <13.284311, 21.377899, 23.390127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.234574, 22.106989, 22.972216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.573869, 22.312666, 22.921457>,  <13.777446, 22.436071, 22.891003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.573869, 22.312666, 22.921457>,  <13.234574, 22.106989, 22.972216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.573869, 22.312666, 22.921457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005722, -0.230684, -0.973012,
		-0.529587, 0.826070, -0.192732,
		0.848236, 0.514191, -0.126894,
		13.828340, 22.466923, 22.883389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.214213, 22.589905, 22.355202>,  <13.234574, 22.106989, 22.972216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.214213, 22.589905, 22.355202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.608650, 22.563688, 22.416294>,  <13.845312, 22.547958, 22.452950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.608650, 22.563688, 22.416294>,  <13.214213, 22.589905, 22.355202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.608650, 22.563688, 22.416294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141415, -0.151941, -0.978221,
		0.087322, 0.986214, -0.140559,
		0.986092, -0.065543, 0.152733,
		13.904478, 22.544025, 22.462114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.508671, 23.068724, 21.860620>,  <13.214213, 22.589905, 22.355202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.508671, 23.068724, 21.860620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.781822, 22.791082, 21.951746>,  <13.945713, 22.624498, 22.006422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.781822, 22.791082, 21.951746>,  <13.508671, 23.068724, 21.860620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.781822, 22.791082, 21.951746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098876, -0.221160, -0.970212,
		0.723811, 0.685061, -0.082395,
		0.682877, -0.694103, 0.227814,
		13.986686, 22.582851, 22.020090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.137669, 23.201099, 21.509989>,  <13.508671, 23.068724, 21.860620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.137669, 23.201099, 21.509989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.192797, 22.812801, 21.588636>,  <14.225874, 22.579823, 21.635826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.192797, 22.812801, 21.588636>,  <14.137669, 23.201099, 21.509989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.192797, 22.812801, 21.588636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253961, -0.157243, -0.954347,
		0.957345, 0.181463, 0.224860,
		0.137821, -0.970745, 0.196621,
		14.234143, 22.521578, 21.647623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.643513, 22.986834, 21.060640>,  <14.137669, 23.201099, 21.509989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.643513, 22.986834, 21.060640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.470588, 22.644915, 21.175480>,  <14.366833, 22.439764, 21.244385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.470588, 22.644915, 21.175480>,  <14.643513, 22.986834, 21.060640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.470588, 22.644915, 21.175480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175242, -0.391965, -0.903136,
		0.884531, -0.340125, 0.319248,
		-0.432313, -0.854797, 0.287101,
		14.340894, 22.388475, 21.261610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.192081, 22.506142, 21.005676>,  <14.643513, 22.986834, 21.060640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.192081, 22.506142, 21.005676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.836493, 22.325323, 20.976324>,  <14.623139, 22.216833, 20.958712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.836493, 22.325323, 20.976324>,  <15.192081, 22.506142, 21.005676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.836493, 22.325323, 20.976324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253117, -0.351452, -0.901340,
		0.381656, -0.819839, 0.426851,
		-0.888971, -0.452045, -0.073382,
		14.569801, 22.189709, 20.954309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.310806, 21.864462, 20.701937>,  <15.192081, 22.506142, 21.005676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.310806, 21.864462, 20.701937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.918479, 21.899984, 20.632528>,  <14.683083, 21.921297, 20.590883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.918479, 21.899984, 20.632528>,  <15.310806, 21.864462, 20.701937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.918479, 21.899984, 20.632528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159784, -0.143587, -0.976653,
		-0.111643, -0.985646, 0.126644,
		-0.980819, 0.088801, -0.173521,
		14.624233, 21.926626, 20.580471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.179338, 21.263618, 20.393362>,  <15.310806, 21.864462, 20.701937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.179338, 21.263618, 20.393362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.889763, 21.520771, 20.293264>,  <14.716018, 21.675062, 20.233206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.889763, 21.520771, 20.293264>,  <15.179338, 21.263618, 20.393362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.889763, 21.520771, 20.293264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097352, -0.263909, -0.959622,
		-0.682963, -0.719067, 0.128468,
		-0.723937, 0.642880, -0.250243,
		14.672582, 21.713634, 20.218191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.714098, 20.877190, 19.911953>,  <15.179338, 21.263618, 20.393362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.714098, 20.877190, 19.911953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.643933, 21.265863, 19.848631>,  <14.601834, 21.499067, 19.810637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.643933, 21.265863, 19.848631>,  <14.714098, 20.877190, 19.911953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.643933, 21.265863, 19.848631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033601, -0.166616, -0.985449,
		-0.983922, -0.167540, 0.061876,
		-0.175412, 0.971684, -0.158307,
		14.591310, 21.557369, 19.801138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.326333, 20.955256, 19.353203>,  <14.714098, 20.877190, 19.911953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.326333, 20.955256, 19.353203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.429404, 21.341612, 19.363432>,  <14.491247, 21.573425, 19.369570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.429404, 21.341612, 19.363432>,  <14.326333, 20.955256, 19.353203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.429404, 21.341612, 19.363432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049761, 0.013164, -0.998674,
		-0.964949, 0.258609, -0.044672,
		0.257678, 0.965892, 0.025571,
		14.506708, 21.631380, 19.371103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.867677, 21.353666, 18.872950>,  <14.326333, 20.955256, 19.353203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.867677, 21.353666, 18.872950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.210621, 21.556328, 18.909243>,  <14.416388, 21.677925, 18.931019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.210621, 21.556328, 18.909243>,  <13.867677, 21.353666, 18.872950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.210621, 21.556328, 18.909243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074217, 0.052750, -0.995846,
		-0.509336, 0.860534, 0.007623,
		0.857361, 0.506655, 0.090734,
		14.467829, 21.708324, 18.936462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.845417, 21.911276, 18.369087>,  <13.867677, 21.353666, 18.872950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.845417, 21.911276, 18.369087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.232018, 21.880880, 18.467150>,  <14.463978, 21.862642, 18.525988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.232018, 21.880880, 18.467150>,  <13.845417, 21.911276, 18.369087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.232018, 21.880880, 18.467150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256641, 0.299164, -0.919041,
		-0.003504, 0.951171, 0.308644,
		0.966501, -0.075991, 0.245158,
		14.521968, 21.858084, 18.540697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.142397, 22.496563, 17.985846>,  <13.845417, 21.911276, 18.369087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.142397, 22.496563, 17.985846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.456476, 22.260017, 18.059330>,  <14.644924, 22.118090, 18.103420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.456476, 22.260017, 18.059330>,  <14.142397, 22.496563, 17.985846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.456476, 22.260017, 18.059330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250332, 0.031781, -0.967638,
		0.566389, 0.805777, 0.172993,
		0.785199, -0.591365, 0.183711,
		14.692036, 22.082607, 18.114443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.726182, 22.737946, 17.572449>,  <14.142397, 22.496563, 17.985846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.726182, 22.737946, 17.572449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.822018, 22.359037, 17.657558>,  <14.879519, 22.131693, 17.708624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.822018, 22.359037, 17.657558>,  <14.726182, 22.737946, 17.572449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.822018, 22.359037, 17.657558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378679, -0.110623, -0.918893,
		0.893979, 0.300731, 0.332208,
		0.239590, -0.947272, 0.212775,
		14.893895, 22.074856, 17.721392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<5.911238, 22.493925, 7.818688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.892065, 22.094406, 7.822815>,  <5.880561, 21.854694, 7.825292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.892065, 22.094406, 7.822815>,  <5.911238, 22.493925, 7.818688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.892065, 22.094406, 7.822815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693929, 0.025869, -0.719579,
		0.718446, -0.041651, -0.694335,
		-0.047933, -0.998797, 0.010318,
		5.877685, 21.794767, 7.825911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.255005, 22.211905, 7.202922>,  <5.911238, 22.493925, 7.818688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.255005, 22.211905, 7.202922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.947535, 21.996441, 7.340898>,  <5.763052, 21.867163, 7.423684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.947535, 21.996441, 7.340898>,  <6.255005, 22.211905, 7.202922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.947535, 21.996441, 7.340898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532950, 0.241157, -0.811053,
		0.353699, -0.807271, -0.472451,
		-0.768675, -0.538661, 0.344938,
		5.716932, 21.834843, 7.444380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.070046, 21.724470, 6.605199>,  <6.255005, 22.211905, 7.202922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.070046, 21.724470, 6.605199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.744314, 21.816509, 6.818336>,  <5.548874, 21.871733, 6.946218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.744314, 21.816509, 6.818336>,  <6.070046, 21.724470, 6.605199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.744314, 21.816509, 6.818336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469892, 0.277515, -0.837966,
		-0.340687, -0.932759, -0.117867,
		-0.814331, 0.230099, 0.532842,
		5.500015, 21.885538, 6.978188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.501132, 21.484024, 6.207541>,  <6.070046, 21.724470, 6.605199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.501132, 21.484024, 6.207541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.331646, 21.733599, 6.470195>,  <5.229955, 21.883343, 6.627787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.331646, 21.733599, 6.470195>,  <5.501132, 21.484024, 6.207541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.331646, 21.733599, 6.470195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572911, 0.376899, -0.727819,
		-0.701599, -0.684579, 0.197764,
		-0.423712, 0.623937, 0.656635,
		5.204533, 21.920780, 6.667185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.895483, 20.982052, 6.321575>,  <5.501132, 21.484024, 6.207541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.895483, 20.982052, 6.321575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.171866, 20.693521, 6.340604>,  <5.337696, 20.520403, 6.352022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.171866, 20.693521, 6.340604>,  <4.895483, 20.982052, 6.321575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.171866, 20.693521, 6.340604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220684, 0.147809, -0.964080,
		0.688386, 0.676638, 0.261315,
		0.690958, -0.721327, 0.047574,
		5.379153, 20.477123, 6.354877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.625138, 20.226431, 6.482131>,  <4.895483, 20.982052, 6.321575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.625138, 20.226431, 6.482131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.893080, 19.934078, 6.534446>,  <5.053845, 19.758667, 6.565835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.893080, 19.934078, 6.534446>,  <4.625138, 20.226431, 6.482131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.893080, 19.934078, 6.534446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100079, 0.085665, 0.991285,
		-0.735717, -0.677105, -0.015763,
		0.669854, -0.730883, 0.130789,
		5.094036, 19.714813, 6.573683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.352808, 19.712757, 7.017106>,  <4.625138, 20.226431, 6.482131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.352808, 19.712757, 7.017106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.746477, 19.650330, 6.983532>,  <4.982679, 19.612873, 6.963388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.746477, 19.650330, 6.983532>,  <4.352808, 19.712757, 7.017106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.746477, 19.650330, 6.983532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087318, 0.014946, 0.996068,
		-0.154201, -0.987633, 0.028337,
		0.984174, -0.156069, -0.083934,
		5.041729, 19.603510, 6.958352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.579588, 19.195295, 7.505740>,  <4.352808, 19.712757, 7.017106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.579588, 19.195295, 7.505740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.912848, 19.401646, 7.426005>,  <5.112803, 19.525455, 7.378164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.912848, 19.401646, 7.426005>,  <4.579588, 19.195295, 7.505740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.912848, 19.401646, 7.426005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298874, -0.116708, 0.947129,
		0.465338, -0.848675, -0.251417,
		0.833147, 0.515878, -0.199339,
		5.162792, 19.556408, 7.366203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.167082, 18.758638, 7.557561>,  <4.579588, 19.195295, 7.505740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.167082, 18.758638, 7.557561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.259334, 19.130178, 7.673526>,  <5.314685, 19.353102, 7.743104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.259334, 19.130178, 7.673526>,  <5.167082, 18.758638, 7.557561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.259334, 19.130178, 7.673526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112136, -0.321329, 0.940305,
		0.966559, -0.184352, -0.178265,
		0.230629, 0.928850, 0.289911,
		5.328523, 19.408833, 7.760499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.826582, 18.747458, 7.886013>,  <5.167082, 18.758638, 7.557561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.826582, 18.747458, 7.886013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.582819, 19.030077, 8.029909>,  <5.436561, 19.199648, 8.116247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.582819, 19.030077, 8.029909>,  <5.826582, 18.747458, 7.886013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.582819, 19.030077, 8.029909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014751, -0.443544, 0.896131,
		0.792719, 0.551417, 0.259877,
		-0.609408, 0.706547, 0.359740,
		5.399996, 19.242041, 8.137831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.048542, 18.994362, 8.523746>,  <5.826582, 18.747458, 7.886013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.048542, 18.994362, 8.523746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.653091, 19.054363, 8.528101>,  <5.415821, 19.090364, 8.530714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.653091, 19.054363, 8.528101>,  <6.048542, 18.994362, 8.523746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.653091, 19.054363, 8.528101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073084, -0.542419, 0.836923,
		0.131445, 0.826608, 0.547212,
		-0.988626, 0.150002, 0.010886,
		5.356503, 19.099363, 8.531366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.975439, 19.140520, 9.185726>,  <6.048542, 18.994362, 8.523746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.975439, 19.140520, 9.185726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.607637, 19.055748, 9.053306>,  <5.386956, 19.004885, 8.973853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.607637, 19.055748, 9.053306>,  <5.975439, 19.140520, 9.185726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.607637, 19.055748, 9.053306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258912, -0.307144, 0.915766,
		-0.295759, 0.927765, 0.227549,
		-0.919506, -0.211931, -0.331050,
		5.331785, 18.992168, 8.953991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.559387, 19.365643, 9.829064>,  <5.975439, 19.140520, 9.185726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.559387, 19.365643, 9.829064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.362458, 19.117397, 9.584947>,  <5.244301, 18.968451, 9.438476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.362458, 19.117397, 9.584947>,  <5.559387, 19.365643, 9.829064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.362458, 19.117397, 9.584947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330343, -0.515472, 0.790672,
		-0.805290, 0.590872, 0.048764,
		-0.492322, -0.620612, -0.610295,
		5.214762, 18.931213, 9.401858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.840745, 19.382275, 10.040814>,  <5.559387, 19.365643, 9.829064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.840745, 19.382275, 10.040814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.922707, 19.038467, 9.853519>,  <4.971883, 18.832184, 9.741142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.922707, 19.038467, 9.853519>,  <4.840745, 19.382275, 10.040814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.922707, 19.038467, 9.853519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401790, -0.510087, 0.760510,
		-0.892513, 0.032303, -0.449863,
		0.204903, -0.859516, -0.468239,
		4.984178, 18.780613, 9.713048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.293326, 18.983030, 10.242227>,  <4.840745, 19.382275, 10.040814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.293326, 18.983030, 10.242227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.579110, 18.735357, 10.111898>,  <4.750581, 18.586754, 10.033702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.579110, 18.735357, 10.111898>,  <4.293326, 18.983030, 10.242227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.579110, 18.735357, 10.111898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294825, -0.688734, 0.662362,
		-0.634524, -0.377174, -0.674625,
		0.714463, -0.619182, -0.325818,
		4.793448, 18.549603, 10.014153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.972354, 18.349779, 10.222187>,  <4.293326, 18.983030, 10.242227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.972354, 18.349779, 10.222187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.361460, 18.260387, 10.246799>,  <4.594923, 18.206753, 10.261565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.361460, 18.260387, 10.246799>,  <3.972354, 18.349779, 10.222187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.361460, 18.260387, 10.246799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208940, -0.730466, 0.650203,
		-0.100360, -0.645351, -0.757265,
		0.972765, -0.223478, 0.061530,
		4.653289, 18.193344, 10.265258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.016672, 17.613176, 10.267743>,  <3.972354, 18.349779, 10.222187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.016672, 17.613176, 10.267743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.383479, 17.724447, 10.382073>,  <4.603563, 17.791210, 10.450671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.383479, 17.724447, 10.382073>,  <4.016672, 17.613176, 10.267743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.383479, 17.724447, 10.382073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019336, -0.684784, 0.728490,
		0.398377, -0.673565, -0.622580,
		0.917018, 0.278175, 0.285826,
		4.658585, 17.807899, 10.467821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.392147, 16.997894, 10.430816>,  <4.016672, 17.613176, 10.267743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.392147, 16.997894, 10.430816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.582829, 17.286114, 10.632236>,  <4.697237, 17.459045, 10.753087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.582829, 17.286114, 10.632236>,  <4.392147, 16.997894, 10.430816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.582829, 17.286114, 10.632236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137039, -0.626735, 0.767088,
		0.868316, -0.296668, -0.397511,
		0.476705, 0.720549, 0.503549,
		4.725840, 17.502279, 10.783300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.878915, 16.621040, 10.815490>,  <4.392147, 16.997894, 10.430816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.878915, 16.621040, 10.815490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.866790, 16.975681, 11.000104>,  <4.859515, 17.188467, 11.110872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.866790, 16.975681, 11.000104>,  <4.878915, 16.621040, 10.815490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.866790, 16.975681, 11.000104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232157, -0.442874, 0.866006,
		0.972206, 0.133399, -0.192407,
		-0.030312, 0.886604, 0.461535,
		4.857696, 17.241663, 11.138564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.507589, 16.729704, 11.127354>,  <4.878915, 16.621040, 10.815490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.507589, 16.729704, 11.127354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.272202, 16.979490, 11.332780>,  <5.130969, 17.129362, 11.456036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.272202, 16.979490, 11.332780>,  <5.507589, 16.729704, 11.127354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.272202, 16.979490, 11.332780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336547, -0.388360, 0.857853,
		0.735147, 0.677658, 0.018376,
		-0.588468, 0.624464, 0.513566,
		5.095661, 17.166830, 11.486850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.793522, 16.725521, 11.769887>,  <5.507589, 16.729704, 11.127354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.793522, 16.725521, 11.769887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.441842, 16.886026, 11.872643>,  <5.230833, 16.982330, 11.934296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.441842, 16.886026, 11.872643>,  <5.793522, 16.725521, 11.769887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.441842, 16.886026, 11.872643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208199, -0.161404, 0.964677,
		0.428552, 0.901630, 0.058364,
		-0.879202, 0.401263, 0.256888,
		5.178081, 17.006405, 11.949709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.979024, 17.197575, 12.212154>,  <5.793522, 16.725521, 11.769887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.979024, 17.197575, 12.212154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.609429, 17.056210, 12.270598>,  <5.387672, 16.971390, 12.305665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.609429, 17.056210, 12.270598>,  <5.979024, 17.197575, 12.212154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.609429, 17.056210, 12.270598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255089, -0.284919, 0.923986,
		-0.284919, 0.891022, 0.353413,
		-0.923986, -0.353413, 0.146111,
		5.332233, 16.950186, 12.314431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.905720, 17.364029, 12.813670>,  <5.979024, 17.197575, 12.212154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.905720, 17.364029, 12.813670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.599966, 17.108450, 12.779122>,  <5.416512, 16.955103, 12.758393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.599966, 17.108450, 12.779122>,  <5.905720, 17.364029, 12.813670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.599966, 17.108450, 12.779122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098895, -0.248561, 0.963555,
		-0.637128, 0.727987, 0.253185,
		-0.764387, -0.638946, -0.086371,
		5.370649, 16.916765, 12.753211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.577736, 17.398367, 13.440928>,  <5.905720, 17.364029, 12.813670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.577736, 17.398367, 13.440928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.448019, 17.053165, 13.285980>,  <5.370189, 16.846045, 13.193011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.448019, 17.053165, 13.285980>,  <5.577736, 17.398367, 13.440928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.448019, 17.053165, 13.285980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029044, -0.418393, 0.907802,
		-0.945511, 0.283143, 0.160747,
		-0.324293, -0.863005, -0.387371,
		5.350731, 16.794264, 13.169769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.015610, 17.123266, 13.877335>,  <5.577736, 17.398367, 13.440928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.015610, 17.123266, 13.877335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.149557, 16.812862, 13.663542>,  <5.229925, 16.626619, 13.535266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.149557, 16.812862, 13.663542>,  <5.015610, 17.123266, 13.877335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.149557, 16.812862, 13.663542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159284, -0.512448, 0.843816,
		-0.928705, -0.367701, -0.047996,
		0.334867, -0.776011, -0.534482,
		5.250017, 16.580059, 13.503198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.647923, 16.534594, 14.109223>,  <5.015610, 17.123266, 13.877335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.647923, 16.534594, 14.109223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.979911, 16.386442, 13.942384>,  <5.179104, 16.297552, 13.842280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.979911, 16.386442, 13.942384>,  <4.647923, 16.534594, 14.109223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.979911, 16.386442, 13.942384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142560, -0.582071, 0.800543,
		-0.539277, -0.723891, -0.430304,
		0.829974, -0.370370, -0.417096,
		5.228902, 16.275330, 13.817254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.621678, 15.815897, 14.023697>,  <4.647923, 16.534594, 14.109223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.621678, 15.815897, 14.023697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.014276, 15.892077, 14.031698>,  <5.249834, 15.937786, 14.036499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.014276, 15.892077, 14.031698>,  <4.621678, 15.815897, 14.023697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.014276, 15.892077, 14.031698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153388, -0.844398, 0.513287,
		0.114648, -0.500719, -0.857984,
		0.981493, 0.190452, 0.020004,
		5.308723, 15.949213, 14.037700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.885313, 15.194014, 13.992597>,  <4.621678, 15.815897, 14.023697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.885313, 15.194014, 13.992597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.209519, 15.397852, 14.108097>,  <5.404042, 15.520155, 14.177398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.209519, 15.397852, 14.108097>,  <4.885313, 15.194014, 13.992597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.209519, 15.397852, 14.108097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134217, -0.641460, 0.755324,
		0.570134, -0.573446, -0.588309,
		0.810514, 0.509597, 0.288752,
		5.452673, 15.550731, 14.194723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.363805, 14.689474, 14.196732>,  <4.885313, 15.194014, 13.992597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.363805, 14.689474, 14.196732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.563241, 15.006601, 14.336931>,  <5.682903, 15.196877, 14.421051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.563241, 15.006601, 14.336931>,  <5.363805, 14.689474, 14.196732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.563241, 15.006601, 14.336931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413129, -0.572800, 0.707973,
		0.762058, -0.208187, -0.613128,
		0.498590, 0.792817, 0.350499,
		5.712819, 15.244447, 14.442080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.036135, 14.499433, 14.218294>,  <5.363805, 14.689474, 14.196732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.036135, 14.499433, 14.218294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.957016, 14.783772, 14.488278>,  <5.909545, 14.954375, 14.650269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.957016, 14.783772, 14.488278>,  <6.036135, 14.499433, 14.218294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.957016, 14.783772, 14.488278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149139, -0.658725, 0.737454,
		0.968831, 0.246529, 0.024278,
		-0.197797, 0.710848, 0.674961,
		5.897677, 14.997025, 14.690766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.539119, 14.504723, 14.749544>,  <6.036135, 14.499433, 14.218294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.539119, 14.504723, 14.749544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.201058, 14.640968, 14.914323>,  <5.998222, 14.722715, 15.013190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.201058, 14.640968, 14.914323>,  <6.539119, 14.504723, 14.749544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.201058, 14.640968, 14.914323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292711, -0.349935, 0.889868,
		0.447256, 0.872656, 0.196047,
		-0.845152, 0.340614, 0.411946,
		5.947513, 14.743153, 15.037907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.096257, 14.961327, 14.559118>,  <6.539119, 14.504723, 14.749544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.096257, 14.961327, 14.559118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.453623, 14.896852, 14.391391>,  <7.668042, 14.858167, 14.290754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.453623, 14.896852, 14.391391>,  <7.096257, 14.961327, 14.559118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.453623, 14.896852, 14.391391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057276, 0.884924, -0.462201,
		0.445567, 0.436954, 0.781372,
		0.893415, -0.161188, -0.419319,
		7.721647, 14.848495, 14.265595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.425914, 15.646383, 14.631529>,  <7.096257, 14.961327, 14.559118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.425914, 15.646383, 14.631529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.655255, 15.479938, 14.349219>,  <7.792859, 15.380070, 14.179833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.655255, 15.479938, 14.349219>,  <7.425914, 15.646383, 14.631529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.655255, 15.479938, 14.349219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123884, 0.895551, -0.427365,
		0.809889, 0.157596, 0.565016,
		0.573352, -0.416115, -0.705774,
		7.827260, 15.355103, 14.137487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.012312, 16.099546, 14.504109>,  <7.425914, 15.646383, 14.631529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.012312, 16.099546, 14.504109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.972488, 15.889407, 14.166093>,  <7.948594, 15.763323, 13.963283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.972488, 15.889407, 14.166093>,  <8.012312, 16.099546, 14.504109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.972488, 15.889407, 14.166093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129431, 0.835208, -0.534485,
		0.986578, -0.162588, -0.015156,
		-0.099560, -0.525350, -0.845042,
		7.942620, 15.731802, 13.912580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.544333, 16.337080, 14.074824>,  <8.012312, 16.099546, 14.504109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.544333, 16.337080, 14.074824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.313218, 16.134012, 13.819189>,  <8.174549, 16.012173, 13.665808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.313218, 16.134012, 13.819189>,  <8.544333, 16.337080, 14.074824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.313218, 16.134012, 13.819189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291671, 0.602883, -0.742603,
		0.762292, -0.615470, -0.200266,
		-0.577787, -0.507668, -0.639088,
		8.139882, 15.981711, 13.627462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.910696, 16.326958, 13.520576>,  <8.544333, 16.337080, 14.074824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.910696, 16.326958, 13.520576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.543052, 16.262529, 13.376748>,  <8.322465, 16.223873, 13.290451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.543052, 16.262529, 13.376748>,  <8.910696, 16.326958, 13.520576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.543052, 16.262529, 13.376748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213055, 0.564495, -0.797467,
		0.331424, -0.809569, -0.484517,
		-0.919111, -0.161071, -0.359570,
		8.267319, 16.214209, 13.268877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.919364, 16.266354, 12.732203>,  <8.910696, 16.326958, 13.520576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.919364, 16.266354, 12.732203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.536678, 16.373480, 12.777766>,  <8.307067, 16.437756, 12.805104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.536678, 16.373480, 12.777766>,  <8.919364, 16.266354, 12.732203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.536678, 16.373480, 12.777766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039641, 0.507664, -0.860643,
		-0.288319, -0.818873, -0.496305,
		-0.956713, 0.267814, 0.113908,
		8.249664, 16.453823, 12.811938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.560029, 16.177200, 12.048594>,  <8.919364, 16.266354, 12.732203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.560029, 16.177200, 12.048594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.331429, 16.420416, 12.269023>,  <8.194270, 16.566345, 12.401280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.331429, 16.420416, 12.269023>,  <8.560029, 16.177200, 12.048594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.331429, 16.420416, 12.269023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123258, 0.600321, -0.790204,
		-0.811294, -0.519524, -0.268136,
		-0.571498, 0.608038, 0.551072,
		8.159980, 16.602827, 12.434344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.259183, 16.512827, 11.545759>,  <8.560029, 16.177200, 12.048594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.259183, 16.512827, 11.545759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.173092, 16.733639, 11.867986>,  <8.121437, 16.866127, 12.061322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.173092, 16.733639, 11.867986>,  <8.259183, 16.512827, 11.545759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.173092, 16.733639, 11.867986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052623, 0.817145, -0.574025,
		-0.975145, -0.165937, -0.146823,
		-0.215228, 0.552031, 0.805567,
		8.108523, 16.899248, 12.109656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.577593, 16.905704, 11.421730>,  <8.259183, 16.512827, 11.545759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.577593, 16.905704, 11.421730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.778570, 17.119717, 11.693404>,  <7.899156, 17.248125, 11.856409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.778570, 17.119717, 11.693404>,  <7.577593, 16.905704, 11.421730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.778570, 17.119717, 11.693404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257497, 0.842490, -0.473186,
		-0.825378, 0.062859, 0.561071,
		0.502441, 0.535032, 0.679187,
		7.929302, 17.280226, 11.897161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.157644, 17.469915, 11.486303>,  <7.577593, 16.905704, 11.421730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.157644, 17.469915, 11.486303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.511515, 17.558163, 11.650583>,  <7.723838, 17.611111, 11.749151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.511515, 17.558163, 11.650583>,  <7.157644, 17.469915, 11.486303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.511515, 17.558163, 11.650583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009501, 0.872228, -0.489008,
		-0.466108, 0.436516, 0.769544,
		0.884677, 0.220619, 0.410699,
		7.776918, 17.624348, 11.773793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.086049, 18.191008, 11.752159>,  <7.157644, 17.469915, 11.486303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.086049, 18.191008, 11.752159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.469713, 18.113548, 11.669685>,  <7.699912, 18.067074, 11.620201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.469713, 18.113548, 11.669685>,  <7.086049, 18.191008, 11.752159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.469713, 18.113548, 11.669685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092091, 0.902989, -0.419679,
		0.267452, 0.383552, 0.883944,
		0.959160, -0.193647, -0.206184,
		7.757462, 18.055454, 11.607830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.353852, 18.853022, 11.773990>,  <7.086049, 18.191008, 11.752159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.353852, 18.853022, 11.773990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.627407, 18.623857, 11.593292>,  <7.791540, 18.486359, 11.484874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.627407, 18.623857, 11.593292>,  <7.353852, 18.853022, 11.773990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.627407, 18.623857, 11.593292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222606, 0.753503, -0.618611,
		0.694799, 0.322499, 0.642844,
		0.683887, -0.572911, -0.451743,
		7.832573, 18.451984, 11.457769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.918948, 19.249958, 11.703319>,  <7.353852, 18.853022, 11.773990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.918948, 19.249958, 11.703319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.025252, 18.976397, 11.431540>,  <8.089035, 18.812260, 11.268474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.025252, 18.976397, 11.431540>,  <7.918948, 19.249958, 11.703319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.025252, 18.976397, 11.431540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277286, 0.729237, -0.625561,
		0.923300, -0.022150, 0.383440,
		0.265762, -0.683903, -0.679446,
		8.104980, 18.771225, 11.227707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.576540, 19.551987, 11.442928>,  <7.918948, 19.249958, 11.703319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.576540, 19.551987, 11.442928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.453633, 19.269583, 11.187698>,  <8.379889, 19.100142, 11.034560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.453633, 19.269583, 11.187698>,  <8.576540, 19.551987, 11.442928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.453633, 19.269583, 11.187698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149455, 0.626390, -0.765048,
		0.939814, -0.330437, -0.086951,
		-0.307265, -0.706008, -0.638076,
		8.361454, 19.057781, 10.996276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.161966, 19.448303, 10.871089>,  <8.576540, 19.551987, 11.442928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.161966, 19.448303, 10.871089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.803502, 19.339470, 10.730881>,  <8.588424, 19.274170, 10.646755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.803502, 19.339470, 10.730881>,  <9.161966, 19.448303, 10.871089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.803502, 19.339470, 10.730881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192135, 0.474113, -0.859244,
		0.399975, -0.837368, -0.372605,
		-0.896161, -0.272085, -0.350521,
		8.534654, 19.257845, 10.625725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.250631, 19.456924, 10.139915>,  <9.161966, 19.448303, 10.871089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.250631, 19.456924, 10.139915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.852799, 19.433172, 10.174054>,  <8.614100, 19.418921, 10.194537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.852799, 19.433172, 10.174054>,  <9.250631, 19.456924, 10.139915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.852799, 19.433172, 10.174054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103543, 0.491177, -0.864884,
		0.009437, -0.869033, -0.494664,
		-0.994580, -0.059380, 0.085347,
		8.554425, 19.415358, 10.199658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.968945, 19.228985, 9.473900>,  <9.250631, 19.456924, 10.139915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.968945, 19.228985, 9.473900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.650907, 19.397076, 9.648821>,  <8.460084, 19.497931, 9.753774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.650907, 19.397076, 9.648821>,  <8.968945, 19.228985, 9.473900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.650907, 19.397076, 9.648821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352316, 0.266871, -0.897025,
		-0.493657, -0.867289, -0.064135,
		-0.795095, 0.420226, 0.437303,
		8.412378, 19.523144, 9.780012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.353327, 18.947952, 9.178215>,  <8.968945, 19.228985, 9.473900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.353327, 18.947952, 9.178215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.242436, 19.296593, 9.339933>,  <8.175902, 19.505777, 9.436965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.242436, 19.296593, 9.339933>,  <8.353327, 18.947952, 9.178215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.242436, 19.296593, 9.339933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332951, 0.307568, -0.891373,
		-0.901272, -0.381721, 0.204935,
		-0.277224, 0.871602, 0.404297,
		8.159269, 19.558073, 9.461223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.651651, 19.118834, 8.908298>,  <8.353327, 18.947952, 9.178215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.651651, 19.118834, 8.908298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.799229, 19.470980, 9.027523>,  <7.887775, 19.682266, 9.099058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.799229, 19.470980, 9.027523>,  <7.651651, 19.118834, 8.908298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.799229, 19.470980, 9.027523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444667, 0.448792, -0.775149,
		-0.816181, 0.153448, 0.557048,
		0.368944, 0.880363, 0.298062,
		7.909912, 19.735088, 9.116941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.153937, 19.574503, 8.709291>,  <7.651651, 19.118834, 8.908298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.153937, 19.574503, 8.709291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.459506, 19.824291, 8.774362>,  <7.642847, 19.974163, 8.813404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.459506, 19.824291, 8.774362>,  <7.153937, 19.574503, 8.709291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.459506, 19.824291, 8.774362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261001, 0.529545, -0.807131,
		-0.590172, 0.574126, 0.567517,
		0.763921, 0.624469, 0.162675,
		7.688682, 20.011633, 8.823164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.899471, 20.137777, 8.725042>,  <7.153937, 19.574503, 8.709291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.899471, 20.137777, 8.725042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.281781, 20.194832, 8.622163>,  <7.511167, 20.229065, 8.560435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.281781, 20.194832, 8.622163>,  <6.899471, 20.137777, 8.725042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.281781, 20.194832, 8.622163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290604, 0.592530, -0.751304,
		0.045234, 0.792819, 0.607776,
		0.955773, 0.142638, -0.257199,
		7.568513, 20.237623, 8.545003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.435068, 20.966181, 23.781050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.120909, 20.719400, 23.760971>,  <15.932413, 20.571331, 23.748924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.120909, 20.719400, 23.760971>,  <16.435068, 20.966181, 23.781050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.120909, 20.719400, 23.760971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195862, 0.170768, 0.965648,
		-0.587187, 0.768250, -0.254958,
		-0.785398, -0.616953, -0.050199,
		15.885289, 20.534315, 23.745911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.965103, 21.312166, 24.122023>,  <16.435068, 20.966181, 23.781050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.965103, 21.312166, 24.122023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.815095, 20.942347, 24.094980>,  <15.725090, 20.720455, 24.078754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.815095, 20.942347, 24.094980>,  <15.965103, 21.312166, 24.122023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.815095, 20.942347, 24.094980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332039, 0.065875, 0.940963,
		-0.865511, 0.375328, -0.331691,
		-0.375020, -0.924548, -0.067608,
		15.702589, 20.664982, 24.074697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.217354, 21.350313, 24.398537>,  <15.965103, 21.312166, 24.122023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.217354, 21.350313, 24.398537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.271545, 20.954124, 24.388638>,  <15.304061, 20.716412, 24.382698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.271545, 20.954124, 24.388638>,  <15.217354, 21.350313, 24.398537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.271545, 20.954124, 24.388638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344037, -0.070451, 0.936310,
		-0.929131, -0.118337, -0.350303,
		0.135480, -0.990471, -0.024746,
		15.312189, 20.656982, 24.381214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.547900, 20.903837, 24.668571>,  <15.217354, 21.350313, 24.398537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.547900, 20.903837, 24.668571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.894711, 20.715216, 24.732944>,  <15.102798, 20.602043, 24.771568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.894711, 20.715216, 24.732944>,  <14.547900, 20.903837, 24.668571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.894711, 20.715216, 24.732944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193291, -0.020621, 0.980925,
		-0.459241, -0.881596, -0.109026,
		0.867027, -0.471555, 0.160934,
		15.154819, 20.573750, 24.781225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.424916, 20.458921, 25.233433>,  <14.547900, 20.903837, 24.668571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.424916, 20.458921, 25.233433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.822750, 20.499266, 25.223389>,  <15.061450, 20.523472, 25.217363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.822750, 20.499266, 25.223389>,  <14.424916, 20.458921, 25.233433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.822750, 20.499266, 25.223389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017603, 0.074636, 0.997056,
		0.102446, -0.992096, 0.072456,
		0.994583, 0.100868, -0.025110,
		15.121125, 20.529524, 25.215857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.606246, 20.096630, 25.793072>,  <14.424916, 20.458921, 25.233433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.606246, 20.096630, 25.793072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.950594, 20.291651, 25.734837>,  <15.157203, 20.408663, 25.699896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.950594, 20.291651, 25.734837>,  <14.606246, 20.096630, 25.793072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.950594, 20.291651, 25.734837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083068, 0.147622, 0.985549,
		0.501998, -0.860524, 0.086584,
		0.860870, 0.487552, -0.145588,
		15.208855, 20.437916, 25.691160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.020311, 19.820957, 26.258732>,  <14.606246, 20.096630, 25.793072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.020311, 19.820957, 26.258732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.234080, 20.145765, 26.164911>,  <15.362342, 20.340651, 26.108620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.234080, 20.145765, 26.164911>,  <15.020311, 19.820957, 26.258732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.234080, 20.145765, 26.164911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198050, 0.149469, 0.968728,
		0.821687, -0.564162, -0.080942,
		0.534421, 0.812022, -0.234550,
		15.394406, 20.389372, 26.094547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.647235, 19.774319, 26.557709>,  <15.020311, 19.820957, 26.258732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.647235, 19.774319, 26.557709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.579318, 20.165619, 26.510050>,  <15.538568, 20.400398, 26.481455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.579318, 20.165619, 26.510050>,  <15.647235, 19.774319, 26.557709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.579318, 20.165619, 26.510050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195010, 0.151865, 0.968973,
		0.965993, 0.141290, -0.216554,
		-0.169793, 0.978251, -0.119148,
		15.528380, 20.459095, 26.474306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.205570, 20.122732, 27.011921>,  <15.647235, 19.774319, 26.557709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.205570, 20.122732, 27.011921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.922557, 20.393656, 26.931274>,  <15.752748, 20.556210, 26.882887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.922557, 20.393656, 26.931274>,  <16.205570, 20.122732, 27.011921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.922557, 20.393656, 26.931274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091117, 0.370357, 0.924410,
		0.700781, 0.635680, -0.323754,
		-0.707534, 0.677308, -0.201618,
		15.710297, 20.596848, 26.870789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.534718, 20.760380, 27.121731>,  <16.205570, 20.122732, 27.011921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.534718, 20.760380, 27.121731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.139156, 20.798159, 27.167608>,  <15.901820, 20.820826, 27.195135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.139156, 20.798159, 27.167608>,  <16.534718, 20.760380, 27.121731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.139156, 20.798159, 27.167608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143977, 0.418596, 0.896687,
		0.036678, 0.903248, -0.427548,
		-0.988901, 0.094445, 0.114694,
		15.842486, 20.826492, 27.202017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.396225, 21.509306, 27.333414>,  <16.534718, 20.760380, 27.121731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.396225, 21.509306, 27.333414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.084183, 21.291395, 27.456478>,  <15.896958, 21.160648, 27.530317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.084183, 21.291395, 27.456478>,  <16.396225, 21.509306, 27.333414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.084183, 21.291395, 27.456478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124910, 0.346231, 0.929796,
		-0.613055, 0.763767, -0.202048,
		-0.780103, -0.544778, 0.307661,
		15.850152, 21.127962, 27.548777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.110428, 22.002756, 27.758568>,  <16.396225, 21.509306, 27.333414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.110428, 22.002756, 27.758568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.942459, 21.653715, 27.858355>,  <15.841679, 21.444290, 27.918226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.942459, 21.653715, 27.858355>,  <16.110428, 22.002756, 27.758568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.942459, 21.653715, 27.858355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012959, 0.280614, 0.959733,
		-0.907469, 0.399778, -0.129143,
		-0.419920, -0.872601, 0.249467,
		15.816483, 21.391935, 27.933195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.523781, 22.682735, 27.391365>,  <16.110428, 22.002756, 27.758568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.523781, 22.682735, 27.391365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.136427, 22.583527, 27.402052>,  <15.904015, 22.524002, 27.408464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.136427, 22.583527, 27.402052>,  <16.523781, 22.682735, 27.391365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.136427, 22.583527, 27.402052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143015, 0.639739, 0.755170,
		-0.204388, 0.727475, -0.654985,
		-0.968386, -0.248021, 0.026715,
		15.845911, 22.509121, 27.410067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.240988, 23.359497, 27.632339>,  <16.523781, 22.682735, 27.391365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.240988, 23.359497, 27.632339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.015909, 23.039179, 27.714409>,  <15.880861, 22.846987, 27.763651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.015909, 23.039179, 27.714409>,  <16.240988, 23.359497, 27.632339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.015909, 23.039179, 27.714409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291102, 0.424244, 0.857483,
		-0.773712, 0.422778, -0.471834,
		-0.562698, -0.800797, 0.205171,
		15.847100, 22.798939, 27.775961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.811494, 23.905113, 27.696127>,  <16.240988, 23.359497, 27.632339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.811494, 23.905113, 27.696127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.486919, 23.942152, 27.926950>,  <15.292175, 23.964376, 28.065445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.486919, 23.942152, 27.926950>,  <15.811494, 23.905113, 27.696127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.486919, 23.942152, 27.926950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568479, 0.104134, -0.816081,
		-0.135660, -0.990243, -0.031857,
		-0.811435, 0.092600, 0.577059,
		15.243488, 23.969933, 28.100069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320520, 23.362513, 27.481962>,  <15.811494, 23.905113, 27.696127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.320520, 23.362513, 27.481962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.149851, 23.707546, 27.590700>,  <15.047449, 23.914566, 27.655943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.149851, 23.707546, 27.590700>,  <15.320520, 23.362513, 27.481962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.149851, 23.707546, 27.590700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607336, -0.050555, -0.792835,
		-0.670143, -0.503382, 0.545449,
		-0.426674, 0.862584, 0.271843,
		15.021849, 23.966322, 27.672253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.600114, 23.200722, 27.618622>,  <15.320520, 23.362513, 27.481962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.600114, 23.200722, 27.618622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.650968, 23.580364, 27.503361>,  <14.681479, 23.808149, 27.434204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.650968, 23.580364, 27.503361>,  <14.600114, 23.200722, 27.618622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.650968, 23.580364, 27.503361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641492, -0.142898, -0.753703,
		-0.756521, 0.280669, 0.590678,
		0.127134, 0.949108, -0.288153,
		14.689108, 23.865097, 27.416914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.962601, 23.370342, 27.408754>,  <14.600114, 23.200722, 27.618622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.962601, 23.370342, 27.408754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.222323, 23.619286, 27.233910>,  <14.378158, 23.768652, 27.129004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.222323, 23.619286, 27.233910>,  <13.962601, 23.370342, 27.408754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.222323, 23.619286, 27.233910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407526, -0.200549, -0.890900,
		-0.642123, 0.756603, 0.123410,
		0.649308, 0.622360, -0.437112,
		14.417116, 23.805994, 27.102776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.523067, 23.797726, 27.001190>,  <13.962601, 23.370342, 27.408754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.523067, 23.797726, 27.001190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.900414, 23.778950, 26.869822>,  <14.126822, 23.767685, 26.791000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.900414, 23.778950, 26.869822>,  <13.523067, 23.797726, 27.001190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.900414, 23.778950, 26.869822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331657, -0.109075, -0.937073,
		0.008164, 0.992924, -0.118465,
		0.943365, -0.046940, -0.328420,
		14.183423, 23.764868, 26.771296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.357955, 23.962500, 26.314034>,  <13.523067, 23.797726, 27.001190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.357955, 23.962500, 26.314034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.752743, 23.898447, 26.320332>,  <13.989615, 23.860016, 26.324110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.752743, 23.898447, 26.320332>,  <13.357955, 23.962500, 26.314034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.752743, 23.898447, 26.320332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035891, 0.123707, -0.991670,
		0.156849, 0.979313, 0.127842,
		0.986970, -0.160131, 0.015745,
		14.048834, 23.850409, 26.325056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.650101, 24.475275, 25.926781>,  <13.357955, 23.962500, 26.314034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.650101, 24.475275, 25.926781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.882895, 24.150118, 25.935698>,  <14.022573, 23.955023, 25.941048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.882895, 24.150118, 25.935698>,  <13.650101, 24.475275, 25.926781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.882895, 24.150118, 25.935698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140139, 0.073252, -0.987419,
		0.801033, 0.577788, 0.156549,
		0.581986, -0.812893, 0.022293,
		14.057491, 23.906250, 25.942385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.245126, 24.601885, 25.549730>,  <13.650101, 24.475275, 25.926781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.245126, 24.601885, 25.549730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.220918, 24.203157, 25.570467>,  <14.206393, 23.963921, 25.582909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.220918, 24.203157, 25.570467>,  <14.245126, 24.601885, 25.549730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.220918, 24.203157, 25.570467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081577, -0.056701, -0.995053,
		0.994828, -0.055991, 0.084749,
		-0.060519, -0.996820, 0.051840,
		14.202762, 23.904112, 25.586020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.575674, 24.361696, 24.949648>,  <14.245126, 24.601885, 25.549730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.575674, 24.361696, 24.949648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.378083, 24.024357, 25.034262>,  <14.259529, 23.821953, 25.085030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.378083, 24.024357, 25.034262>,  <14.575674, 24.361696, 24.949648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.378083, 24.024357, 25.034262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038432, -0.264233, -0.963693,
		0.868626, -0.467912, 0.162936,
		-0.493976, -0.843350, 0.211536,
		14.229890, 23.771351, 25.097723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.969637, 23.878117, 24.724985>,  <14.575674, 24.361696, 24.949648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.969637, 23.878117, 24.724985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.610000, 23.703411, 24.736773>,  <14.394217, 23.598587, 24.743845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.610000, 23.703411, 24.736773>,  <14.969637, 23.878117, 24.724985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.610000, 23.703411, 24.736773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185676, -0.441448, -0.877865,
		0.396429, -0.783812, 0.478000,
		-0.899093, -0.436764, 0.029468,
		14.340272, 23.572382, 24.745613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.055045, 23.190428, 24.505602>,  <14.969637, 23.878117, 24.724985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.055045, 23.190428, 24.505602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.659719, 23.234718, 24.463701>,  <14.422523, 23.261293, 24.438560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.659719, 23.234718, 24.463701>,  <15.055045, 23.190428, 24.505602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.659719, 23.234718, 24.463701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035272, -0.502434, -0.863895,
		-0.148286, -0.857496, 0.492658,
		-0.988315, 0.110727, -0.104750,
		14.363225, 23.267937, 24.432276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.805190, 22.527330, 24.291019>,  <15.055045, 23.190428, 24.505602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.805190, 22.527330, 24.291019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.512537, 22.782246, 24.194210>,  <14.336946, 22.935196, 24.136124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.512537, 22.782246, 24.194210>,  <14.805190, 22.527330, 24.291019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.512537, 22.782246, 24.194210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073667, -0.426866, -0.901309,
		-0.677707, -0.641598, 0.359257,
		-0.731632, 0.637289, -0.242025,
		14.293047, 22.973433, 24.121603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.110906, 22.118397, 24.213701>,  <14.805190, 22.527330, 24.291019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.110906, 22.118397, 24.213701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.079663, 22.449213, 23.991026>,  <14.060918, 22.647703, 23.857420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.079663, 22.449213, 23.991026>,  <14.110906, 22.118397, 24.213701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.079663, 22.449213, 23.991026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088297, -0.561939, -0.822453,
		-0.993027, -0.015085, 0.116917,
		-0.078107, 0.827041, -0.556688,
		14.056231, 22.697325, 23.824018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.773788, 21.914625, 23.646387>,  <14.110906, 22.118397, 24.213701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.773788, 21.914625, 23.646387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.888134, 22.261818, 23.483959>,  <13.956741, 22.470133, 23.386501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.888134, 22.261818, 23.483959>,  <13.773788, 21.914625, 23.646387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.888134, 22.261818, 23.483959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040785, -0.412349, -0.910112,
		-0.957402, 0.276729, -0.082475,
		0.285863, 0.867980, -0.406071,
		13.973893, 22.522211, 23.362139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.009871, 22.024948, 23.713907>,  <13.773788, 21.914625, 23.646387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.009871, 22.024948, 23.713907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.721405, 21.754177, 23.772816>,  <12.548326, 21.591715, 23.808161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.721405, 21.754177, 23.772816>,  <13.009871, 22.024948, 23.713907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.721405, 21.754177, 23.772816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235432, 0.439412, 0.866884,
		-0.651531, 0.590495, -0.476259,
		-0.721165, -0.676929, 0.147269,
		12.505055, 21.551098, 23.816996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.582212, 22.506456, 23.992504>,  <13.009871, 22.024948, 23.713907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.582212, 22.506456, 23.992504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.481183, 22.126034, 24.063719>,  <12.420566, 21.897779, 24.106447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.481183, 22.126034, 24.063719>,  <12.582212, 22.506456, 23.992504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.481183, 22.126034, 24.063719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281055, 0.248182, 0.927046,
		-0.925859, 0.184110, -0.329983,
		-0.252574, -0.951057, 0.178037,
		12.405411, 21.840717, 24.117130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.925821, 22.494442, 24.255653>,  <12.582212, 22.506456, 23.992504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.925821, 22.494442, 24.255653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.105156, 22.158943, 24.379265>,  <12.212757, 21.957644, 24.453432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.105156, 22.158943, 24.379265>,  <11.925821, 22.494442, 24.255653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.105156, 22.158943, 24.379265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160459, 0.264587, 0.950919,
		-0.879344, -0.475919, -0.015961,
		0.448337, -0.838746, 0.309028,
		12.239657, 21.907320, 24.471973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.454248, 22.143944, 24.622589>,  <11.925821, 22.494442, 24.255653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.454248, 22.143944, 24.622589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.770670, 21.945644, 24.765959>,  <11.960523, 21.826664, 24.851980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.770670, 21.945644, 24.765959>,  <11.454248, 22.143944, 24.622589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.770670, 21.945644, 24.765959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311350, 0.178075, 0.933461,
		-0.526590, -0.850012, -0.013485,
		0.791052, -0.495750, 0.358424,
		12.007986, 21.796919, 24.873486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.230490, 21.710243, 25.260803>,  <11.454248, 22.143944, 24.622589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.230490, 21.710243, 25.260803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.629474, 21.727409, 25.283541>,  <11.868864, 21.737709, 25.297184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.629474, 21.727409, 25.283541>,  <11.230490, 21.710243, 25.260803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.629474, 21.727409, 25.283541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054834, -0.046613, 0.997407,
		0.045453, -0.997991, -0.044142,
		0.997460, 0.042915, 0.056843,
		11.928712, 21.740284, 25.300594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.304038, 21.281445, 25.802967>,  <11.230490, 21.710243, 25.260803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.304038, 21.281445, 25.802967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.665095, 21.452148, 25.780657>,  <11.881730, 21.554571, 25.767271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.665095, 21.452148, 25.780657>,  <11.304038, 21.281445, 25.802967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.665095, 21.452148, 25.780657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084547, -0.048760, 0.995226,
		0.422002, -0.903050, -0.080094,
		0.902644, 0.426759, -0.055773,
		11.935888, 21.580175, 25.763926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.660814, 20.960623, 26.264997>,  <11.304038, 21.281445, 25.802967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.660814, 20.960623, 26.264997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.826578, 21.320374, 26.209305>,  <11.926037, 21.536224, 26.175890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.826578, 21.320374, 26.209305>,  <11.660814, 20.960623, 26.264997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.826578, 21.320374, 26.209305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020026, 0.143937, 0.989384,
		0.909870, -0.412798, 0.041638,
		0.414409, 0.899377, -0.139231,
		11.950901, 21.590187, 26.167536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.558449, 20.652882, 25.557611>,  <11.660814, 20.960623, 26.264997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.558449, 20.652882, 25.557611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.604467, 20.348108, 25.812553>,  <11.632078, 20.165243, 25.965519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.604467, 20.348108, 25.812553>,  <11.558449, 20.652882, 25.557611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.604467, 20.348108, 25.812553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297739, -0.585667, -0.753888,
		0.947690, 0.276497, 0.159479,
		0.115046, -0.761935, 0.637354,
		11.638981, 20.119528, 26.003759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.268613, 20.479406, 25.485744>,  <11.558449, 20.652882, 25.557611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.268613, 20.479406, 25.485744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.067322, 20.171848, 25.643509>,  <11.946547, 19.987312, 25.738167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.067322, 20.171848, 25.643509>,  <12.268613, 20.479406, 25.485744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.067322, 20.171848, 25.643509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331533, -0.593268, -0.733566,
		0.798027, -0.238392, 0.553464,
		-0.503228, -0.768897, 0.394409,
		11.916353, 19.941179, 25.761831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.714046, 19.908937, 25.487106>,  <12.268613, 20.479406, 25.485744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.714046, 19.908937, 25.487106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.364499, 19.716095, 25.512190>,  <12.154771, 19.600389, 25.527239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.364499, 19.716095, 25.512190>,  <12.714046, 19.908937, 25.487106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.364499, 19.716095, 25.512190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314343, -0.658696, -0.683599,
		0.370871, -0.577663, 0.727159,
		-0.873867, -0.482105, 0.062707,
		12.102339, 19.571463, 25.531002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.763611, 19.044317, 25.655148>,  <12.714046, 19.908937, 25.487106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.763611, 19.044317, 25.655148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.429302, 19.148703, 25.461908>,  <12.228717, 19.211334, 25.345964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.429302, 19.148703, 25.461908>,  <12.763611, 19.044317, 25.655148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.429302, 19.148703, 25.461908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056571, -0.834228, -0.548510,
		-0.546153, -0.485759, 0.682462,
		-0.835773, 0.260963, -0.483096,
		12.178571, 19.226992, 25.316978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.497408, 18.416273, 25.229311>,  <12.763611, 19.044317, 25.655148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.497408, 18.416273, 25.229311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.265233, 18.678795, 25.036497>,  <12.125928, 18.836308, 24.920809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.265233, 18.678795, 25.036497>,  <12.497408, 18.416273, 25.229311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.265233, 18.678795, 25.036497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005464, -0.595083, -0.803646,
		-0.814287, -0.463832, 0.348994,
		-0.580437, 0.656305, -0.482034,
		12.091102, 18.875687, 24.891888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.947439, 18.050528, 25.004314>,  <12.497408, 18.416273, 25.229311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.947439, 18.050528, 25.004314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.947484, 18.374954, 24.770334>,  <11.947511, 18.569611, 24.629946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.947484, 18.374954, 24.770334>,  <11.947439, 18.050528, 25.004314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.947484, 18.374954, 24.770334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226068, -0.569787, -0.790086,
		-0.974111, 0.132327, 0.183293,
		0.000112, 0.811069, -0.584951,
		11.947517, 18.618275, 24.594849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.417371, 17.969837, 24.537472>,  <11.947439, 18.050528, 25.004314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.417371, 17.969837, 24.537472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.640712, 18.243292, 24.349480>,  <11.774716, 18.407366, 24.236685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.640712, 18.243292, 24.349480>,  <11.417371, 17.969837, 24.537472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.640712, 18.243292, 24.349480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140148, -0.480641, -0.865646,
		-0.817681, 0.549202, -0.172556,
		0.558352, 0.683639, -0.469980,
		11.808217, 18.448383, 24.208485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<20.602713, 18.029562, 27.907650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.775911, 18.008183, 27.547726>,  <20.879831, 17.995356, 27.331772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.775911, 18.008183, 27.547726>,  <20.602713, 18.029562, 27.907650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.775911, 18.008183, 27.547726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867978, 0.294008, 0.400217,
		0.243161, -0.954307, 0.173695,
		0.432997, -0.053446, -0.899809,
		20.905811, 17.992149, 27.277782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.103245, 18.253456, 27.409311>,  <20.602713, 18.029562, 27.907650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.103245, 18.253456, 27.409311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.738937, 18.088358, 27.414104>,  <19.520353, 17.989300, 27.416981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.738937, 18.088358, 27.414104>,  <20.103245, 18.253456, 27.409311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.738937, 18.088358, 27.414104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365309, 0.791890, -0.489346,
		0.192484, -0.450059, -0.872007,
		-0.910769, -0.412744, 0.011985,
		19.465708, 17.964535, 27.417700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.991615, 18.259789, 26.668110>,  <20.103245, 18.253456, 27.409311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.991615, 18.259789, 26.668110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.661112, 18.242842, 26.892788>,  <19.462811, 18.232674, 27.027596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.661112, 18.242842, 26.892788>,  <19.991615, 18.259789, 26.668110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.661112, 18.242842, 26.892788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353026, 0.815986, -0.457754,
		-0.438943, -0.576516, -0.689172,
		-0.826257, -0.042367, 0.561697,
		19.413235, 18.230131, 27.061296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.348997, 18.123262, 26.346378>,  <19.991615, 18.259789, 26.668110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.348997, 18.123262, 26.346378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.278067, 18.379107, 26.645565>,  <19.235508, 18.532612, 26.825077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.278067, 18.379107, 26.645565>,  <19.348997, 18.123262, 26.346378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.278067, 18.379107, 26.645565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353090, 0.668066, -0.654993,
		-0.918631, -0.380248, 0.107373,
		-0.177327, 0.639609, 0.747968,
		19.224869, 18.570990, 26.869955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.565388, 18.192549, 26.373333>,  <19.348997, 18.123262, 26.346378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.565388, 18.192549, 26.373333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.777828, 18.495815, 26.524654>,  <18.905293, 18.677774, 26.615448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.777828, 18.495815, 26.524654>,  <18.565388, 18.192549, 26.373333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.777828, 18.495815, 26.524654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607831, 0.651973, -0.453291,
		-0.590314, 0.010799, 0.807101,
		0.531103, 0.758165, 0.378305,
		18.937159, 18.723265, 26.638145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.093227, 18.794954, 26.392487>,  <18.565388, 18.192549, 26.373333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.093227, 18.794954, 26.392487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.453922, 18.954647, 26.458799>,  <18.670340, 19.050463, 26.498587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.453922, 18.954647, 26.458799>,  <18.093227, 18.794954, 26.392487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.453922, 18.954647, 26.458799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374417, 0.912988, -0.162063,
		-0.216060, 0.084066, 0.972754,
		0.901737, 0.399231, 0.165784,
		18.724443, 19.074417, 26.508535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.366825, 18.510914, 26.173431>,  <18.093227, 18.794954, 26.392487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.366825, 18.510914, 26.173431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.001122, 18.367432, 26.248756>,  <16.781700, 18.281342, 26.293951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.001122, 18.367432, 26.248756>,  <17.366825, 18.510914, 26.173431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.001122, 18.367432, 26.248756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070343, -0.598313, -0.798169,
		0.398978, -0.716486, 0.572245,
		-0.914258, -0.358705, 0.188315,
		16.726845, 18.259821, 26.305250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.511803, 17.851072, 26.125593>,  <17.366825, 18.510914, 26.173431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.511803, 17.851072, 26.125593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.115976, 17.901011, 26.096823>,  <16.878481, 17.930973, 26.079561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.115976, 17.901011, 26.096823>,  <17.511803, 17.851072, 26.125593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.115976, 17.901011, 26.096823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029776, -0.665613, -0.745703,
		-0.140972, -0.735781, 0.662385,
		-0.989566, 0.124846, -0.071924,
		16.819107, 17.938465, 26.075245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221325, 17.232523, 26.104267>,  <17.511803, 17.851072, 26.125593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.221325, 17.232523, 26.104267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.968506, 17.481983, 25.920279>,  <16.816814, 17.631659, 25.809885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.968506, 17.481983, 25.920279>,  <17.221325, 17.232523, 26.104267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.968506, 17.481983, 25.920279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097485, -0.652842, -0.751195,
		-0.768773, -0.429951, 0.473424,
		-0.632048, 0.623650, -0.459974,
		16.778891, 17.669079, 25.782288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.708338, 16.786358, 25.921534>,  <17.221325, 17.232523, 26.104267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.708338, 16.786358, 25.921534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.658136, 17.114567, 25.698465>,  <16.628016, 17.311491, 25.564625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.658136, 17.114567, 25.698465>,  <16.708338, 16.786358, 25.921534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.658136, 17.114567, 25.698465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213470, -0.571281, -0.792508,
		-0.968855, 0.019584, 0.246854,
		-0.125503, 0.820521, -0.557669,
		16.620485, 17.360723, 25.531164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.138622, 16.629021, 25.387457>,  <16.708338, 16.786358, 25.921534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.138622, 16.629021, 25.387457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.293312, 16.966103, 25.237633>,  <16.386126, 17.168352, 25.147738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.293312, 16.966103, 25.237633>,  <16.138622, 16.629021, 25.387457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.293312, 16.966103, 25.237633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217630, -0.311293, -0.925059,
		-0.896148, 0.439259, 0.063012,
		0.386725, 0.842703, -0.374560,
		16.409330, 17.218914, 25.125265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.638331, 16.886635, 24.967052>,  <16.138622, 16.629021, 25.387457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.638331, 16.886635, 24.967052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.976513, 17.066504, 24.851812>,  <16.179422, 17.174425, 24.782669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.976513, 17.066504, 24.851812>,  <15.638331, 16.886635, 24.967052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.976513, 17.066504, 24.851812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123811, -0.359729, -0.924806,
		-0.519497, 0.817551, -0.248460,
		0.845455, 0.449672, -0.288100,
		16.230148, 17.201405, 24.765383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.086652, 16.516983, 25.290331>,  <15.638331, 16.886635, 24.967052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.086652, 16.516983, 25.290331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.725120, 16.386816, 25.401466>,  <14.508201, 16.308716, 25.468147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.725120, 16.386816, 25.401466>,  <15.086652, 16.516983, 25.290331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.725120, 16.386816, 25.401466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113190, 0.444364, 0.888667,
		-0.412649, 0.834653, -0.364796,
		-0.903830, -0.325416, 0.277840,
		14.453971, 16.289190, 25.484818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.683430, 17.060442, 25.484533>,  <15.086652, 16.516983, 25.290331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.683430, 17.060442, 25.484533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.490370, 16.754532, 25.655258>,  <14.374534, 16.570986, 25.757692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.490370, 16.754532, 25.655258>,  <14.683430, 17.060442, 25.484533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.490370, 16.754532, 25.655258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196977, 0.569636, 0.797944,
		-0.853374, 0.301056, -0.425579,
		-0.482651, -0.764774, 0.426812,
		14.345574, 16.525099, 25.783302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.005719, 17.344488, 25.801714>,  <14.683430, 17.060442, 25.484533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.005719, 17.344488, 25.801714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.077853, 16.998245, 25.988564>,  <14.121134, 16.790499, 26.100674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.077853, 16.998245, 25.988564>,  <14.005719, 17.344488, 25.801714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.077853, 16.998245, 25.988564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305121, 0.402252, 0.863189,
		-0.935083, -0.298192, -0.191575,
		0.180334, -0.865607, 0.467123,
		14.131953, 16.738564, 26.128700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.442790, 17.298405, 26.279591>,  <14.005719, 17.344488, 25.801714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.442790, 17.298405, 26.279591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.730983, 17.057550, 26.417191>,  <13.903898, 16.913038, 26.499752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.730983, 17.057550, 26.417191>,  <13.442790, 17.298405, 26.279591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.730983, 17.057550, 26.417191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235258, 0.254412, 0.938045,
		-0.652348, -0.756774, 0.041643,
		0.720483, -0.602135, 0.344002,
		13.947127, 16.876909, 26.520391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.077776, 16.879126, 26.781935>,  <13.442790, 17.298405, 26.279591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.077776, 16.879126, 26.781935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.464197, 16.873507, 26.885118>,  <13.696050, 16.870136, 26.947029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.464197, 16.873507, 26.885118>,  <13.077776, 16.879126, 26.781935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.464197, 16.873507, 26.885118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242398, 0.296058, 0.923901,
		-0.089349, -0.955067, 0.282603,
		0.966054, -0.014047, 0.257958,
		13.754013, 16.869293, 26.962505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.120132, 16.482105, 27.428196>,  <13.077776, 16.879126, 26.781935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.120132, 16.482105, 27.428196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.471353, 16.672907, 27.443665>,  <13.682085, 16.787388, 27.452946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.471353, 16.672907, 27.443665>,  <13.120132, 16.482105, 27.428196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.471353, 16.672907, 27.443665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236198, 0.361667, 0.901891,
		0.416218, -0.801040, 0.430229,
		0.878051, 0.477003, 0.038672,
		13.734768, 16.816008, 27.455267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.433402, 16.428503, 28.119474>,  <13.120132, 16.482105, 27.428196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.433402, 16.428503, 28.119474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.656836, 16.721624, 27.964046>,  <13.790895, 16.897497, 27.870790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.656836, 16.721624, 27.964046>,  <13.433402, 16.428503, 28.119474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.656836, 16.721624, 27.964046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048014, 0.496250, 0.866851,
		0.828058, -0.465551, 0.312382,
		0.558583, 0.732802, -0.388571,
		13.824410, 16.941465, 27.847475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.118037, 16.387236, 28.399767>,  <13.433402, 16.428503, 28.119474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.118037, 16.387236, 28.399767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.022971, 16.755745, 28.276630>,  <13.965932, 16.976851, 28.202747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.022971, 16.755745, 28.276630>,  <14.118037, 16.387236, 28.399767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.022971, 16.755745, 28.276630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126403, 0.343562, 0.930584,
		0.963087, 0.182256, -0.198105,
		-0.237665, 0.921275, -0.307843,
		13.951672, 17.032127, 28.184278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.561404, 16.997765, 28.889505>,  <14.118037, 16.387236, 28.399767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.561404, 16.997765, 28.889505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.271886, 17.181463, 28.683510>,  <14.098175, 17.291683, 28.559914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.271886, 17.181463, 28.683510>,  <14.561404, 16.997765, 28.889505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.271886, 17.181463, 28.683510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242948, 0.528937, 0.813143,
		0.645830, 0.713664, -0.271268,
		-0.723795, 0.459248, -0.514987,
		14.054748, 17.319239, 28.529015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.556496, 17.583055, 29.198078>,  <14.561404, 16.997765, 28.889505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.556496, 17.583055, 29.198078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.202327, 17.606260, 29.013617>,  <13.989825, 17.620184, 28.902941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.202327, 17.606260, 29.013617>,  <14.556496, 17.583055, 29.198078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.202327, 17.606260, 29.013617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343975, 0.585482, 0.734092,
		0.312582, 0.808607, -0.498445,
		-0.885423, 0.058011, -0.461152,
		13.936700, 17.623663, 28.875271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.425038, 18.318132, 29.281797>,  <14.556496, 17.583055, 29.198078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.425038, 18.318132, 29.281797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.086359, 18.126802, 29.188583>,  <13.883151, 18.012005, 29.132654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.086359, 18.126802, 29.188583>,  <14.425038, 18.318132, 29.281797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.086359, 18.126802, 29.188583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460172, 0.438443, 0.772017,
		-0.267102, 0.760902, -0.591341,
		-0.846699, -0.478325, -0.233037,
		13.832350, 17.983305, 29.118671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.873567, 18.878252, 29.278811>,  <14.425038, 18.318132, 29.281797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.873567, 18.878252, 29.278811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.750712, 18.509661, 29.373928>,  <13.677000, 18.288506, 29.431000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.750712, 18.509661, 29.373928>,  <13.873567, 18.878252, 29.278811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.750712, 18.509661, 29.373928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488539, 0.367102, 0.791559,
		-0.816699, 0.126944, -0.562928,
		-0.307136, -0.921478, 0.237795,
		13.658571, 18.233217, 29.445267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.122069, 18.957729, 29.441130>,  <13.873567, 18.878252, 29.278811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.122069, 18.957729, 29.441130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.244391, 18.610678, 29.597948>,  <13.317784, 18.402447, 29.692039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.244391, 18.610678, 29.597948>,  <13.122069, 18.957729, 29.441130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.244391, 18.610678, 29.597948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456565, 0.227705, 0.860057,
		-0.835483, -0.442004, -0.326497,
		0.305804, -0.867631, 0.392047,
		13.336133, 18.350388, 29.715563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.452339, 18.529337, 29.725748>,  <13.122069, 18.957729, 29.441130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.452339, 18.529337, 29.725748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.786922, 18.444036, 29.927683>,  <12.987673, 18.392857, 30.048843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.786922, 18.444036, 29.927683>,  <12.452339, 18.529337, 29.725748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.786922, 18.444036, 29.927683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517433, -0.003821, 0.855715,
		-0.180552, -0.976990, -0.113539,
		0.836459, -0.213250, 0.504837,
		13.037860, 18.380062, 30.079134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.237307, 18.423676, 28.928680>,  <12.452339, 18.529337, 29.725748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.237307, 18.423676, 28.928680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.021640, 18.759800, 28.951233>,  <11.892240, 18.961475, 28.964764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.021640, 18.759800, 28.951233>,  <12.237307, 18.423676, 28.928680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.021640, 18.759800, 28.951233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255023, 0.226699, -0.939985,
		-0.802660, -0.492429, -0.336527,
		-0.539166, 0.840310, 0.056382,
		11.859890, 19.011892, 28.968147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.821283, 18.384089, 28.333397>,  <12.237307, 18.423676, 28.928680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.821283, 18.384089, 28.333397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.860192, 18.760778, 28.462202>,  <11.883537, 18.986792, 28.539486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.860192, 18.760778, 28.462202>,  <11.821283, 18.384089, 28.333397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.860192, 18.760778, 28.462202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145937, 0.306555, -0.940599,
		-0.984500, 0.138488, -0.107613,
		0.097272, 0.941725, 0.322014,
		11.889374, 19.043295, 28.558805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.301695, 18.763659, 28.029119>,  <11.821283, 18.384089, 28.333397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.301695, 18.763659, 28.029119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.598210, 19.010530, 28.134632>,  <11.776120, 19.158653, 28.197939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.598210, 19.010530, 28.134632>,  <11.301695, 18.763659, 28.029119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.598210, 19.010530, 28.134632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258081, 0.100691, -0.960862,
		-0.619584, 0.780353, -0.084641,
		0.741289, 0.617179, 0.263781,
		11.820597, 19.195684, 28.213766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.159082, 19.409071, 27.738894>,  <11.301695, 18.763659, 28.029119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.159082, 19.409071, 27.738894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.552364, 19.404783, 27.811769>,  <11.788334, 19.402210, 27.855495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.552364, 19.404783, 27.811769>,  <11.159082, 19.409071, 27.738894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.552364, 19.404783, 27.811769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181943, 0.135961, -0.973864,
		-0.014331, 0.990656, 0.135628,
		0.983205, -0.010720, 0.182192,
		11.847325, 19.401567, 27.866426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.361555, 19.852064, 27.235056>,  <11.159082, 19.409071, 27.738894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.361555, 19.852064, 27.235056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.715477, 19.707058, 27.352156>,  <11.927831, 19.620054, 27.422415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.715477, 19.707058, 27.352156>,  <11.361555, 19.852064, 27.235056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.715477, 19.707058, 27.352156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324049, 0.027268, -0.945647,
		0.334831, 0.931578, 0.141600,
		0.884805, -0.362517, 0.292747,
		11.980919, 19.598303, 27.439980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.876472, 20.209381, 26.925751>,  <11.361555, 19.852064, 27.235056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.876472, 20.209381, 26.925751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.062940, 19.865065, 27.007458>,  <12.174820, 19.658474, 27.056482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.062940, 19.865065, 27.007458>,  <11.876472, 20.209381, 26.925751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.062940, 19.865065, 27.007458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540293, 0.094172, -0.836191,
		0.700551, 0.500169, 0.508979,
		0.466168, -0.860792, 0.204266,
		12.202790, 19.606827, 27.068737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.534165, 20.374626, 27.018675>,  <11.876472, 20.209381, 26.925751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.534165, 20.374626, 27.018675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.490648, 19.997047, 26.894011>,  <12.464539, 19.770500, 26.819212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.490648, 19.997047, 26.894011>,  <12.534165, 20.374626, 27.018675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.490648, 19.997047, 26.894011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595558, 0.189132, -0.780730,
		0.795911, -0.270548, 0.541598,
		-0.108792, -0.943945, -0.311659,
		12.458011, 19.713863, 26.800512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.308396, 20.968506, 26.719336>,  <12.534165, 20.374626, 27.018675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.308396, 20.968506, 26.719336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.234752, 21.355957, 26.652569>,  <12.190565, 21.588428, 26.612509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.234752, 21.355957, 26.652569>,  <12.308396, 20.968506, 26.719336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.234752, 21.355957, 26.652569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330374, 0.220923, 0.917631,
		0.925719, 0.113803, -0.360684,
		-0.184112, 0.968629, -0.166916,
		12.179518, 21.646545, 26.602493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.701157, 21.318417, 27.213179>,  <12.308396, 20.968506, 26.719336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.701157, 21.318417, 27.213179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.518636, 21.643801, 27.068918>,  <12.409123, 21.839031, 26.982363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.518636, 21.643801, 27.068918>,  <12.701157, 21.318417, 27.213179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.518636, 21.643801, 27.068918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362086, 0.539975, 0.759816,
		0.812824, 0.216118, -0.540935,
		-0.456301, 0.813462, -0.360651,
		12.381745, 21.887838, 26.960722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.237992, 21.835688, 27.117535>,  <12.701157, 21.318417, 27.213179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.237992, 21.835688, 27.117535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.876701, 22.002146, 27.159492>,  <12.659926, 22.102020, 27.184668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.876701, 22.002146, 27.159492>,  <13.237992, 21.835688, 27.117535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.876701, 22.002146, 27.159492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371428, 0.635563, 0.676831,
		0.214992, 0.650294, -0.728626,
		-0.903227, 0.416146, 0.104896,
		12.605733, 22.126989, 27.190962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.423084, 22.590471, 27.183754>,  <13.237992, 21.835688, 27.117535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.423084, 22.590471, 27.183754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.050899, 22.534060, 27.319016>,  <12.827587, 22.500214, 27.400173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.050899, 22.534060, 27.319016>,  <13.423084, 22.590471, 27.183754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.050899, 22.534060, 27.319016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184951, 0.615932, 0.765782,
		-0.316276, 0.775074, -0.547019,
		-0.930463, -0.141027, 0.338155,
		12.771759, 22.491751, 27.420462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.130933, 23.195543, 27.280058>,  <13.423084, 22.590471, 27.183754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.130933, 23.195543, 27.280058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.914314, 22.974001, 27.533031>,  <12.784343, 22.841076, 27.684816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.914314, 22.974001, 27.533031>,  <13.130933, 23.195543, 27.280058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.914314, 22.974001, 27.533031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268497, 0.598945, 0.754436,
		-0.796641, 0.578369, -0.175649,
		-0.541547, -0.553854, 0.632434,
		12.751850, 22.807844, 27.722761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.890920, 23.666378, 27.666410>,  <13.130933, 23.195543, 27.280058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.890920, 23.666378, 27.666410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.825665, 23.343992, 27.894028>,  <12.786511, 23.150560, 28.030598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.825665, 23.343992, 27.894028>,  <12.890920, 23.666378, 27.666410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.825665, 23.343992, 27.894028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298487, 0.509420, 0.807092,
		-0.940368, 0.301520, 0.157464,
		-0.163139, -0.805964, 0.569041,
		12.776723, 23.102203, 28.064739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.567920, 23.899178, 28.328808>,  <12.890920, 23.666378, 27.666410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.567920, 23.899178, 28.328808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.694752, 23.532694, 28.426802>,  <12.770851, 23.312803, 28.485598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.694752, 23.532694, 28.426802>,  <12.567920, 23.899178, 28.328808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.694752, 23.532694, 28.426802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217956, 0.321798, 0.921380,
		-0.923014, -0.238756, 0.301729,
		0.317081, -0.916211, 0.244985,
		12.789876, 23.257832, 28.500298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.107825, 23.703821, 28.907442>,  <12.567920, 23.899178, 28.328808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.107825, 23.703821, 28.907442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.444365, 23.487694, 28.912964>,  <12.646288, 23.358017, 28.916277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.444365, 23.487694, 28.912964>,  <12.107825, 23.703821, 28.907442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.444365, 23.487694, 28.912964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225861, 0.374674, 0.899226,
		-0.491040, -0.753443, 0.437267,
		0.841348, -0.540317, 0.013807,
		12.696769, 23.325598, 28.917107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.061254, 23.320177, 29.521141>,  <12.107825, 23.703821, 28.907442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.061254, 23.320177, 29.521141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.453263, 23.332315, 29.442520>,  <12.688469, 23.339600, 29.395348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.453263, 23.332315, 29.442520>,  <12.061254, 23.320177, 29.521141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.453263, 23.332315, 29.442520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187908, 0.182440, 0.965094,
		0.065147, -0.982748, 0.173093,
		0.980023, 0.030347, -0.196552,
		12.747271, 23.341419, 29.383554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<12.959867, 18.623812, 13.930464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.277813, 18.835247, 14.049654>,  <13.468580, 18.962109, 14.121168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.277813, 18.835247, 14.049654>,  <12.959867, 18.623812, 13.930464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.277813, 18.835247, 14.049654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315921, -0.058758, 0.946964,
		0.518061, -0.846843, 0.120287,
		0.794862, 0.528587, 0.297976,
		13.516272, 18.993822, 14.139047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.292888, 18.211105, 14.347347>,  <12.959867, 18.623812, 13.930464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.292888, 18.211105, 14.347347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.410491, 18.578304, 14.453808>,  <13.481053, 18.798624, 14.517684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.410491, 18.578304, 14.453808>,  <13.292888, 18.211105, 14.347347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.410491, 18.578304, 14.453808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203187, -0.212064, 0.955899,
		0.933956, -0.335121, 0.124177,
		0.294008, 0.917999, 0.266151,
		13.498693, 18.853704, 14.533653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.702483, 18.126713, 14.979795>,  <13.292888, 18.211105, 14.347347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.702483, 18.126713, 14.979795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.618626, 18.517479, 14.996221>,  <13.568311, 18.751938, 15.006076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.618626, 18.517479, 14.996221>,  <13.702483, 18.126713, 14.979795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.618626, 18.517479, 14.996221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269704, -0.098144, 0.957929,
		0.939845, 0.189748, 0.284053,
		-0.209644, 0.976915, 0.041064,
		13.555733, 18.810553, 15.008540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.070318, 18.352518, 15.551322>,  <13.702483, 18.126713, 14.979795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.070318, 18.352518, 15.551322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.759964, 18.599474, 15.499430>,  <13.573751, 18.747648, 15.468294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.759964, 18.599474, 15.499430>,  <14.070318, 18.352518, 15.551322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.759964, 18.599474, 15.499430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144292, 0.026519, 0.989180,
		0.614150, 0.786210, 0.068509,
		-0.775886, 0.617390, -0.129731,
		13.527198, 18.784691, 15.460510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.093316, 18.638826, 16.195457>,  <14.070318, 18.352518, 15.551322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.093316, 18.638826, 16.195457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.753019, 18.777332, 16.037298>,  <13.548841, 18.860435, 15.942402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.753019, 18.777332, 16.037298>,  <14.093316, 18.638826, 16.195457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.753019, 18.777332, 16.037298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372684, 0.133038, 0.918372,
		0.370603, 0.928656, 0.015866,
		-0.850741, 0.346264, -0.395400,
		13.497797, 18.881212, 15.918678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.867865, 19.171108, 16.594133>,  <14.093316, 18.638826, 16.195457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.867865, 19.171108, 16.594133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.534997, 19.049202, 16.408829>,  <13.335277, 18.976057, 16.297646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.534997, 19.049202, 16.408829>,  <13.867865, 19.171108, 16.594133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.534997, 19.049202, 16.408829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519971, 0.138586, 0.842867,
		-0.192677, 0.942290, -0.273797,
		-0.832169, -0.304768, -0.463261,
		13.285346, 18.957771, 16.269850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.304040, 19.595911, 16.904816>,  <13.867865, 19.171108, 16.594133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.304040, 19.595911, 16.904816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.137908, 19.259775, 16.765488>,  <13.038229, 19.058094, 16.681890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.137908, 19.259775, 16.765488>,  <13.304040, 19.595911, 16.904816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.137908, 19.259775, 16.765488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593876, -0.039568, 0.803583,
		-0.689065, 0.540613, -0.482624,
		-0.415331, -0.840340, -0.348322,
		13.013309, 19.007673, 16.660992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.557633, 19.718374, 16.984221>,  <13.304040, 19.595911, 16.904816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.557633, 19.718374, 16.984221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.588160, 19.321108, 16.948891>,  <12.606476, 19.082748, 16.927692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.588160, 19.321108, 16.948891>,  <12.557633, 19.718374, 16.984221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.588160, 19.321108, 16.948891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424316, -0.112512, 0.898497,
		-0.902293, -0.031091, -0.430002,
		0.076316, -0.993164, -0.088326,
		12.611054, 19.023159, 16.922392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.863172, 19.522858, 17.135118>,  <12.557633, 19.718374, 16.984221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.863172, 19.522858, 17.135118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.114493, 19.218025, 17.197683>,  <12.265286, 19.035126, 17.235222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.114493, 19.218025, 17.197683>,  <11.863172, 19.522858, 17.135118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.114493, 19.218025, 17.197683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440192, -0.182477, 0.879166,
		-0.641455, -0.621235, -0.450114,
		0.628305, -0.762082, 0.156412,
		12.302985, 18.989401, 17.244608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.436158, 19.084114, 17.523270>,  <11.863172, 19.522858, 17.135118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.436158, 19.084114, 17.523270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.806976, 18.950308, 17.591015>,  <12.029468, 18.870024, 17.631662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.806976, 18.950308, 17.591015>,  <11.436158, 19.084114, 17.523270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.806976, 18.950308, 17.591015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210717, -0.091191, 0.973284,
		-0.310135, -0.937967, -0.155026,
		0.927046, -0.334517, 0.169364,
		12.085091, 18.849953, 17.641825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.391092, 18.367773, 17.885324>,  <11.436158, 19.084114, 17.523270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.391092, 18.367773, 17.885324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.759729, 18.498960, 17.968367>,  <11.980912, 18.577673, 18.018192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.759729, 18.498960, 17.968367>,  <11.391092, 18.367773, 17.885324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.759729, 18.498960, 17.968367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185807, -0.096837, 0.977803,
		0.340794, -0.939712, -0.028305,
		0.921594, 0.327970, 0.207607,
		12.036207, 18.597351, 18.030649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.666899, 17.936211, 18.406303>,  <11.391092, 18.367773, 17.885324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.666899, 17.936211, 18.406303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.865031, 18.281952, 18.441042>,  <11.983911, 18.489397, 18.461885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.865031, 18.281952, 18.441042>,  <11.666899, 17.936211, 18.406303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.865031, 18.281952, 18.441042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147996, -0.014547, 0.988881,
		0.856005, -0.502676, 0.120715,
		0.495331, 0.864353, 0.086847,
		12.013631, 18.541258, 18.467096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.005395, 17.278702, 18.625145>,  <11.666899, 17.936211, 18.406303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.005395, 17.278702, 18.625145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.817211, 16.931910, 18.690891>,  <11.704301, 16.723835, 18.730339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.817211, 16.931910, 18.690891>,  <12.005395, 17.278702, 18.625145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.817211, 16.931910, 18.690891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190051, -0.281449, -0.940567,
		0.861713, -0.411260, 0.297180,
		-0.470459, -0.866978, 0.164368,
		11.676073, 16.671816, 18.740202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.430645, 16.778870, 18.346710>,  <12.005395, 17.278702, 18.625145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.430645, 16.778870, 18.346710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.084625, 16.579027, 18.364964>,  <11.877013, 16.459122, 18.375916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.084625, 16.579027, 18.364964>,  <12.430645, 16.778870, 18.346710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.084625, 16.579027, 18.364964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197029, -0.421980, -0.884936,
		0.461376, -0.756523, 0.463471,
		-0.865050, -0.499605, 0.045634,
		11.825110, 16.429146, 18.378654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.654694, 16.247755, 17.967682>,  <12.430645, 16.778870, 18.346710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.654694, 16.247755, 17.967682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.258780, 16.198967, 17.997204>,  <12.021231, 16.169693, 18.014917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.258780, 16.198967, 17.997204>,  <12.654694, 16.247755, 17.967682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.258780, 16.198967, 17.997204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000692, -0.513584, -0.858039,
		0.142563, -0.849326, 0.508253,
		-0.989786, -0.121973, 0.073806,
		11.961843, 16.162374, 18.019346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.540333, 15.562467, 17.709440>,  <12.654694, 16.247755, 17.967682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.540333, 15.562467, 17.709440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.189725, 15.751584, 17.673260>,  <11.979361, 15.865054, 17.651552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.189725, 15.751584, 17.673260>,  <12.540333, 15.562467, 17.709440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.189725, 15.751584, 17.673260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196206, -0.522490, -0.829764,
		-0.439565, -0.709557, 0.550737,
		-0.876519, 0.472793, -0.090449,
		11.926769, 15.893422, 17.646126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.102221, 15.043962, 17.691339>,  <12.540333, 15.562467, 17.709440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.102221, 15.043962, 17.691339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.945097, 15.360637, 17.504179>,  <11.850822, 15.550641, 17.391882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.945097, 15.360637, 17.504179>,  <12.102221, 15.043962, 17.691339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.945097, 15.360637, 17.504179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130389, -0.551606, -0.823850,
		-0.910329, -0.262608, 0.319904,
		-0.392810, 0.791687, -0.467902,
		11.827253, 15.598143, 17.363808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.451213, 14.824827, 17.276426>,  <12.102221, 15.043962, 17.691339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.451213, 14.824827, 17.276426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.529869, 15.168606, 17.087669>,  <11.577063, 15.374873, 16.974415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.529869, 15.168606, 17.087669>,  <11.451213, 14.824827, 17.276426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.529869, 15.168606, 17.087669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114956, -0.457762, -0.881611,
		-0.973713, 0.227608, 0.008784,
		0.196641, 0.859446, -0.471894,
		11.588861, 15.426439, 16.946100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.975509, 14.692766, 16.771257>,  <11.451213, 14.824827, 17.276426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.975509, 14.692766, 16.771257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.240811, 14.976554, 16.675974>,  <11.399993, 15.146827, 16.618803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.240811, 14.976554, 16.675974>,  <10.975509, 14.692766, 16.771257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.240811, 14.976554, 16.675974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024657, -0.338839, -0.940521,
		-0.747986, 0.617933, -0.242230,
		0.663256, 0.709470, -0.238211,
		11.439788, 15.189395, 16.604511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.745948, 14.971222, 16.160612>,  <10.975509, 14.692766, 16.771257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.745948, 14.971222, 16.160612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.124368, 15.098724, 16.183889>,  <11.351419, 15.175226, 16.197855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.124368, 15.098724, 16.183889>,  <10.745948, 14.971222, 16.160612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.124368, 15.098724, 16.183889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130062, -0.209074, -0.969212,
		-0.296776, 0.924491, -0.239252,
		0.946049, 0.318756, 0.058193,
		11.408182, 15.194351, 16.201347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.867597, 15.387317, 15.603814>,  <10.745948, 14.971222, 16.160612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.867597, 15.387317, 15.603814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.217080, 15.234011, 15.723641>,  <11.426770, 15.142027, 15.795538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.217080, 15.234011, 15.723641>,  <10.867597, 15.387317, 15.603814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.217080, 15.234011, 15.723641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165219, -0.345414, -0.923792,
		0.457532, 0.856620, -0.238469,
		0.873709, -0.383264, 0.299568,
		11.479193, 15.119031, 15.813512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.112365, 15.299494, 14.923031>,  <10.867597, 15.387317, 15.603814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.112365, 15.299494, 14.923031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.367517, 15.119293, 15.172881>,  <11.520608, 15.011173, 15.322791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.367517, 15.119293, 15.172881>,  <11.112365, 15.299494, 14.923031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.367517, 15.119293, 15.172881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473393, -0.410378, -0.779416,
		0.607460, 0.792868, -0.048508,
		0.637880, -0.450500, 0.624627,
		11.558881, 14.984143, 15.360270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.738312, 15.371505, 14.606934>,  <11.112365, 15.299494, 14.923031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.738312, 15.371505, 14.606934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.782718, 15.058521, 14.852024>,  <11.809361, 14.870731, 14.999079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.782718, 15.058521, 14.852024>,  <11.738312, 15.371505, 14.606934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.782718, 15.058521, 14.852024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398209, -0.529859, -0.748785,
		0.910552, 0.327119, 0.252760,
		0.111015, -0.782459, 0.612726,
		11.816022, 14.823784, 15.035842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.351749, 15.045094, 14.471842>,  <11.738312, 15.371505, 14.606934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.351749, 15.045094, 14.471842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.173976, 14.748422, 14.672794>,  <12.067312, 14.570417, 14.793365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.173976, 14.748422, 14.672794>,  <12.351749, 15.045094, 14.471842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.173976, 14.748422, 14.672794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252236, -0.641729, -0.724266,
		0.859567, -0.195170, 0.472284,
		-0.444433, -0.741682, 0.502380,
		12.040646, 14.525917, 14.823508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.900177, 14.516148, 14.324341>,  <12.351749, 15.045094, 14.471842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.900177, 14.516148, 14.324341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.559619, 14.324788, 14.410375>,  <12.355284, 14.209972, 14.461995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.559619, 14.324788, 14.410375>,  <12.900177, 14.516148, 14.324341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.559619, 14.324788, 14.410375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027948, -0.450848, -0.892163,
		0.523780, -0.753572, 0.397220,
		-0.851395, -0.478399, 0.215084,
		12.304200, 14.181269, 14.474900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.931149, 13.797750, 14.194536>,  <12.900177, 14.516148, 14.324341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.931149, 13.797750, 14.194536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.551221, 13.908772, 14.136843>,  <12.323264, 13.975387, 14.102227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.551221, 13.908772, 14.136843>,  <12.931149, 13.797750, 14.194536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.551221, 13.908772, 14.136843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088158, -0.679954, -0.727936,
		-0.300115, -0.678694, 0.670303,
		-0.949820, 0.277557, -0.144233,
		12.266274, 13.992040, 14.093573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.347310, 13.457213, 14.712080>,  <12.931149, 13.797750, 14.194536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.347310, 13.457213, 14.712080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.497656, 13.088128, 14.677843>,  <13.587864, 12.866677, 14.657301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.497656, 13.088128, 14.677843>,  <13.347310, 13.457213, 14.712080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.497656, 13.088128, 14.677843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150934, -0.030173, 0.988083,
		-0.914300, -0.384305, 0.127928,
		0.375865, -0.922713, -0.085592,
		13.610415, 12.811315, 14.652165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.084071, 13.211442, 15.375559>,  <13.347310, 13.457213, 14.712080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.084071, 13.211442, 15.375559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.339694, 12.944662, 15.222309>,  <13.493068, 12.784595, 15.130360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.339694, 12.944662, 15.222309>,  <13.084071, 13.211442, 15.375559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.339694, 12.944662, 15.222309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307634, -0.234898, 0.922054,
		-0.704959, -0.707107, 0.055064,
		0.639057, -0.666950, -0.383124,
		13.531411, 12.744577, 15.107372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.913257, 12.526437, 15.543472>,  <13.084071, 13.211442, 15.375559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.913257, 12.526437, 15.543472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.295110, 12.640152, 15.508015>,  <13.524221, 12.708381, 15.486740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.295110, 12.640152, 15.508015>,  <12.913257, 12.526437, 15.543472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.295110, 12.640152, 15.508015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148674, -0.197085, 0.969048,
		0.258018, -0.938263, -0.230410,
		0.954632, 0.284288, -0.088644,
		13.581499, 12.725438, 15.481421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.441835, 12.073376, 15.834356>,  <12.913257, 12.526437, 15.543472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.441835, 12.073376, 15.834356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.616397, 12.433194, 15.842031>,  <13.721134, 12.649085, 15.846637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.616397, 12.433194, 15.842031>,  <13.441835, 12.073376, 15.834356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.616397, 12.433194, 15.842031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237892, -0.135925, 0.961734,
		0.867733, -0.415139, -0.273313,
		0.436403, 0.899547, 0.019188,
		13.747318, 12.703058, 15.847788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.930641, 12.005592, 16.312174>,  <13.441835, 12.073376, 15.834356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.930641, 12.005592, 16.312174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.915700, 12.405031, 16.297152>,  <13.906735, 12.644694, 16.288139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.915700, 12.405031, 16.297152>,  <13.930641, 12.005592, 16.312174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.915700, 12.405031, 16.297152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197414, 0.044214, 0.979323,
		0.979608, 0.029167, -0.198788,
		-0.037353, 0.998596, -0.037554,
		13.904494, 12.704610, 16.285885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.491737, 12.294274, 16.751266>,  <13.930641, 12.005592, 16.312174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.491737, 12.294274, 16.751266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.259393, 12.617146, 16.709202>,  <14.119986, 12.810870, 16.683964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.259393, 12.617146, 16.709202>,  <14.491737, 12.294274, 16.751266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.259393, 12.617146, 16.709202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318057, 0.343981, 0.883468,
		0.749292, 0.479726, -0.456535,
		-0.580863, 0.807180, -0.105162,
		14.085134, 12.859301, 16.677652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.892900, 12.978828, 16.914095>,  <14.491737, 12.294274, 16.751266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.892900, 12.978828, 16.914095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.506800, 13.065511, 16.972513>,  <14.275140, 13.117520, 17.007565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.506800, 13.065511, 16.972513>,  <14.892900, 12.978828, 16.914095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.506800, 13.065511, 16.972513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229034, 0.432418, 0.872100,
		0.125836, 0.875245, -0.467025,
		-0.965251, 0.216706, 0.146047,
		14.217224, 13.130523, 17.016327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.833107, 13.675392, 17.121740>,  <14.892900, 12.978828, 16.914095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.833107, 13.675392, 17.121740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.481706, 13.518024, 17.230150>,  <14.270864, 13.423604, 17.295197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.481706, 13.518024, 17.230150>,  <14.833107, 13.675392, 17.121740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.481706, 13.518024, 17.230150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122047, 0.363662, 0.923501,
		-0.461883, 0.844376, -0.271463,
		-0.878503, -0.393419, 0.271023,
		14.218155, 13.399999, 17.311457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.524853, 14.267560, 17.570608>,  <14.833107, 13.675392, 17.121740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.524853, 14.267560, 17.570608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.335177, 13.928010, 17.664038>,  <14.221373, 13.724279, 17.720095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.335177, 13.928010, 17.664038>,  <14.524853, 14.267560, 17.570608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.335177, 13.928010, 17.664038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039187, 0.244684, 0.968811,
		-0.879551, 0.468551, -0.082761,
		-0.474187, -0.848876, 0.233573,
		14.192922, 13.673347, 17.734110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.891653, 14.448643, 18.059801>,  <14.524853, 14.267560, 17.570608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.891653, 14.448643, 18.059801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.948760, 14.059440, 18.132328>,  <13.983024, 13.825918, 18.175844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.948760, 14.059440, 18.132328>,  <13.891653, 14.448643, 18.059801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.948760, 14.059440, 18.132328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027007, 0.186955, 0.981997,
		-0.989388, -0.135299, 0.052968,
		0.142766, -0.973007, 0.181317,
		13.991590, 13.767538, 18.186724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.432462, 14.198414, 18.679239>,  <13.891653, 14.448643, 18.059801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.432462, 14.198414, 18.679239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.727911, 13.931871, 18.638433>,  <13.905181, 13.771946, 18.613951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.727911, 13.931871, 18.638433>,  <13.432462, 14.198414, 18.679239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.727911, 13.931871, 18.638433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020539, -0.129013, 0.991430,
		-0.673806, -0.734388, -0.081605,
		0.738622, -0.666355, -0.102013,
		13.949498, 13.731965, 18.607830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.217686, 13.686054, 19.123486>,  <13.432462, 14.198414, 18.679239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.217686, 13.686054, 19.123486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.612692, 13.647234, 19.073860>,  <13.849696, 13.623942, 19.044085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.612692, 13.647234, 19.073860>,  <13.217686, 13.686054, 19.123486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.612692, 13.647234, 19.073860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128347, 0.039170, 0.990956,
		-0.091313, -0.994509, 0.051138,
		0.987516, -0.097051, -0.124065,
		13.908947, 13.618119, 19.036640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.380323, 13.323256, 19.715694>,  <13.217686, 13.686054, 19.123486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.380323, 13.323256, 19.715694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.721190, 13.482487, 19.579842>,  <13.925711, 13.578025, 19.498331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.721190, 13.482487, 19.579842>,  <13.380323, 13.323256, 19.715694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.721190, 13.482487, 19.579842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337170, 0.078631, 0.938154,
		0.400162, -0.913977, -0.067212,
		0.852166, 0.398076, -0.339631,
		13.976840, 13.601909, 19.477953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.801600, 12.989722, 20.150640>,  <13.380323, 13.323256, 19.715694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.801600, 12.989722, 20.150640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.007181, 13.303089, 20.010862>,  <14.130530, 13.491109, 19.926996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.007181, 13.303089, 20.010862>,  <13.801600, 12.989722, 20.150640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.007181, 13.303089, 20.010862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335761, 0.191142, 0.922350,
		0.789377, -0.591375, -0.164802,
		0.513954, 0.783416, -0.349444,
		14.161367, 13.538114, 19.906029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.438154, 12.933095, 20.498337>,  <13.801600, 12.989722, 20.150640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.438154, 12.933095, 20.498337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.424868, 13.316531, 20.385199>,  <14.416896, 13.546593, 20.317316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.424868, 13.316531, 20.385199>,  <14.438154, 12.933095, 20.498337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.424868, 13.316531, 20.385199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260175, 0.281537, 0.923605,
		0.964990, -0.042910, -0.258753,
		-0.033217, 0.958590, -0.282845,
		14.414903, 13.604108, 20.300344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.000162, 13.111356, 20.846397>,  <14.438154, 12.933095, 20.498337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.000162, 13.111356, 20.846397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.837169, 13.468609, 20.770216>,  <14.739372, 13.682961, 20.724508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.837169, 13.468609, 20.770216>,  <15.000162, 13.111356, 20.846397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.837169, 13.468609, 20.770216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235033, 0.304094, 0.923194,
		0.882449, 0.331425, -0.333829,
		-0.407485, 0.893132, -0.190451,
		14.714923, 13.736548, 20.713081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.413288, 13.548984, 21.213291>,  <15.000162, 13.111356, 20.846397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.413288, 13.548984, 21.213291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.065149, 13.737895, 21.157505>,  <14.856266, 13.851242, 21.124033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.065149, 13.737895, 21.157505>,  <15.413288, 13.548984, 21.213291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.065149, 13.737895, 21.157505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170685, 0.554974, 0.814169,
		0.461914, 0.684804, -0.563630,
		-0.870346, 0.472279, -0.139464,
		14.804046, 13.879579, 21.115665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.527491, 14.345398, 21.279978>,  <15.413288, 13.548984, 21.213291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.527491, 14.345398, 21.279978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.155723, 14.240764, 21.384094>,  <14.932662, 14.177983, 21.446564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.155723, 14.240764, 21.384094>,  <15.527491, 14.345398, 21.279978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.155723, 14.240764, 21.384094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121106, 0.450079, 0.884739,
		-0.348587, 0.853817, -0.386632,
		-0.929420, -0.261585, 0.260293,
		14.876897, 14.162289, 21.462183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.321105, 14.899822, 21.805470>,  <15.527491, 14.345398, 21.279978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.321105, 14.899822, 21.805470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.021177, 14.636995, 21.836542>,  <14.841221, 14.479300, 21.855185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.021177, 14.636995, 21.836542>,  <15.321105, 14.899822, 21.805470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.021177, 14.636995, 21.836542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180432, 0.316019, 0.931438,
		-0.636565, 0.684394, -0.355514,
		-0.749820, -0.657066, 0.077680,
		14.796231, 14.439876, 21.859846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.683569, 15.306993, 21.970951>,  <15.321105, 14.899822, 21.805470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.683569, 15.306993, 21.970951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.595908, 14.932811, 22.081869>,  <14.543312, 14.708301, 22.148420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.595908, 14.932811, 22.081869>,  <14.683569, 15.306993, 21.970951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.595908, 14.932811, 22.081869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372357, 0.342879, 0.862429,
		-0.901844, 0.085750, -0.423467,
		-0.219152, -0.935458, 0.277294,
		14.530163, 14.652174, 22.165058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.064493, 15.293200, 22.271645>,  <14.683569, 15.306993, 21.970951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.064493, 15.293200, 22.271645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.244968, 14.974107, 22.431673>,  <14.353253, 14.782651, 22.527689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.244968, 14.974107, 22.431673>,  <14.064493, 15.293200, 22.271645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.244968, 14.974107, 22.431673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061688, 0.419342, 0.905730,
		-0.890294, -0.433333, 0.139992,
		0.451187, -0.797731, 0.400069,
		14.380324, 14.734788, 22.551693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.649040, 15.180141, 22.840439>,  <14.064493, 15.293200, 22.271645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.649040, 15.180141, 22.840439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.982036, 14.971725, 22.915781>,  <14.181832, 14.846674, 22.960987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.982036, 14.971725, 22.915781>,  <13.649040, 15.180141, 22.840439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.982036, 14.971725, 22.915781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052727, 0.263916, 0.963103,
		-0.551529, -0.811703, 0.192234,
		0.832487, -0.521043, 0.188356,
		14.231782, 14.815412, 22.972288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.507655, 14.894516, 23.362942>,  <13.649040, 15.180141, 22.840439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.507655, 14.894516, 23.362942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.905716, 14.857028, 23.374876>,  <14.144552, 14.834536, 23.382036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.905716, 14.857028, 23.374876>,  <13.507655, 14.894516, 23.362942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.905716, 14.857028, 23.374876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001724, 0.286689, 0.958022,
		-0.098341, -0.953429, 0.285137,
		0.995151, -0.093721, 0.029837,
		14.204262, 14.828912, 23.383827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.505926, 14.683154, 23.977770>,  <13.507655, 14.894516, 23.362942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.505926, 14.683154, 23.977770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.882714, 14.799520, 23.910763>,  <14.108788, 14.869339, 23.870558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.882714, 14.799520, 23.910763>,  <13.505926, 14.683154, 23.977770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.882714, 14.799520, 23.910763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002495, 0.492931, 0.870065,
		0.335686, -0.819993, 0.463601,
		0.941970, 0.290912, -0.167517,
		14.165305, 14.886793, 23.860508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.956984, 14.416797, 24.534100>,  <13.505926, 14.683154, 23.977770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.956984, 14.416797, 24.534100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.145630, 14.738931, 24.390425>,  <14.258818, 14.932211, 24.304220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.145630, 14.738931, 24.390425>,  <13.956984, 14.416797, 24.534100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.145630, 14.738931, 24.390425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039088, 0.387840, 0.920898,
		0.880938, -0.448349, 0.151432,
		0.471615, 0.805335, -0.359188,
		14.287114, 14.980531, 24.282669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.588095, 14.563055, 25.044039>,  <13.956984, 14.416797, 24.534100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.588095, 14.563055, 25.044039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.499570, 14.896348, 24.841358>,  <14.446455, 15.096324, 24.719749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.499570, 14.896348, 24.841358>,  <14.588095, 14.563055, 25.044039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.499570, 14.896348, 24.841358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173546, 0.544943, 0.820316,
		0.959637, 0.093610, -0.265207,
		-0.221312, 0.833231, -0.506701,
		14.433176, 15.146317, 24.689348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.042426, 15.081701, 25.249054>,  <14.588095, 14.563055, 25.044039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.042426, 15.081701, 25.249054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.723783, 15.279828, 25.110445>,  <14.532598, 15.398704, 25.027279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.723783, 15.279828, 25.110445>,  <15.042426, 15.081701, 25.249054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.723783, 15.279828, 25.110445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052071, 0.627338, 0.777005,
		0.602250, 0.600924, -0.525534,
		-0.796607, 0.495316, -0.346523,
		14.484801, 15.428423, 25.006489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.189626, 15.817282, 25.367855>,  <15.042426, 15.081701, 25.249054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.189626, 15.817282, 25.367855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.800040, 15.843649, 25.281094>,  <14.566289, 15.859469, 25.229036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.800040, 15.843649, 25.281094>,  <15.189626, 15.817282, 25.367855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.800040, 15.843649, 25.281094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114793, 0.681652, 0.722615,
		0.195487, 0.728701, -0.656338,
		-0.973965, 0.065919, -0.216904,
		14.507851, 15.863424, 25.216022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
