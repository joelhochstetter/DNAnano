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
	<24.587683, 34.788822, 35.110882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.197580, 34.728195, 35.046509>,  <23.963518, 34.691818, 35.007885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.197580, 34.728195, 35.046509>,  <24.587683, 34.788822, 35.110882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.197580, 34.728195, 35.046509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134021, 0.984304, -0.114823,
		0.175813, -0.090414, -0.980263,
		-0.975258, -0.151563, -0.160936,
		23.905003, 34.682728, 34.998226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.860046, 34.432743, 34.569637>,  <24.587683, 34.788822, 35.110882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.860046, 34.432743, 34.569637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.052595, 34.763927, 34.684708>,  <25.168123, 34.962639, 34.753750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.052595, 34.763927, 34.684708>,  <24.860046, 34.432743, 34.569637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.052595, 34.763927, 34.684708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189196, 0.222320, -0.956441,
		-0.855855, 0.514830, -0.049629,
		0.481370, 0.827964, 0.287677,
		25.197006, 35.012318, 34.771011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.508804, 34.948723, 34.340538>,  <24.860046, 34.432743, 34.569637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.508804, 34.948723, 34.340538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.879660, 35.093235, 34.380314>,  <25.102173, 35.179943, 34.404179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.879660, 35.093235, 34.380314>,  <24.508804, 34.948723, 34.340538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.879660, 35.093235, 34.380314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010919, 0.291314, -0.956565,
		-0.374558, 0.885783, 0.274033,
		0.927139, 0.361281, 0.099442,
		25.157801, 35.201618, 34.410145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.581837, 35.725826, 34.291206>,  <24.508804, 34.948723, 34.340538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.581837, 35.725826, 34.291206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881687, 35.509289, 34.138889>,  <25.061598, 35.379368, 34.047497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881687, 35.509289, 34.138889>,  <24.581837, 35.725826, 34.291206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.881687, 35.509289, 34.138889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116646, 0.458278, -0.881122,
		0.651500, 0.704931, 0.280392,
		0.749628, -0.541344, -0.380796,
		25.106575, 35.346886, 34.024651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.836966, 36.192410, 33.856781>,  <24.581837, 35.725826, 34.291206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.836966, 36.192410, 33.856781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990459, 35.841831, 33.740444>,  <25.082556, 35.631485, 33.670643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990459, 35.841831, 33.740444>,  <24.836966, 36.192410, 33.856781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.990459, 35.841831, 33.740444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156749, 0.248559, -0.955849,
		0.910043, 0.412380, -0.042002,
		0.383733, -0.876448, -0.290840,
		25.105579, 35.578896, 33.653191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.405857, 36.341267, 33.336769>,  <24.836966, 36.192410, 33.856781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.405857, 36.341267, 33.336769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.286114, 35.962467, 33.290169>,  <25.214268, 35.735188, 33.262207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.286114, 35.962467, 33.290169>,  <25.405857, 36.341267, 33.336769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.286114, 35.962467, 33.290169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113929, 0.085750, -0.989781,
		0.947314, -0.309573, 0.082221,
		-0.299359, -0.947001, -0.116502,
		25.196306, 35.678368, 33.255219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659229, 36.179089, 32.652222>,  <25.405857, 36.341267, 33.336769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.659229, 36.179089, 32.652222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440058, 35.854507, 32.733524>,  <25.308556, 35.659760, 32.782307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440058, 35.854507, 32.733524>,  <25.659229, 36.179089, 32.652222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.440058, 35.854507, 32.733524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110130, -0.170884, -0.979117,
		0.829244, -0.558870, 0.004266,
		-0.547928, -0.811457, 0.203253,
		25.275679, 35.611069, 32.794498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937569, 35.661655, 32.252888>,  <25.659229, 36.179089, 32.652222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.937569, 35.661655, 32.252888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558228, 35.566662, 32.337013>,  <25.330624, 35.509666, 32.387489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558228, 35.566662, 32.337013>,  <25.937569, 35.661655, 32.252888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.558228, 35.566662, 32.337013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124103, -0.332391, -0.934941,
		0.291938, -0.912753, 0.285751,
		-0.948352, -0.237482, 0.210312,
		25.273722, 35.495419, 32.400108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.807396, 35.082603, 31.831648>,  <25.937569, 35.661655, 32.252888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.807396, 35.082603, 31.831648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444916, 35.198853, 31.954506>,  <25.227427, 35.268600, 32.028221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444916, 35.198853, 31.954506>,  <25.807396, 35.082603, 31.831648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444916, 35.198853, 31.954506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359325, -0.146367, -0.921663,
		-0.222901, -0.945576, 0.237067,
		-0.906201, 0.290624, 0.307144,
		25.173056, 35.286037, 32.046650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.319157, 34.517250, 31.722889>,  <25.807396, 35.082603, 31.831648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.319157, 34.517250, 31.722889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.123514, 34.866131, 31.720398>,  <25.006128, 35.075459, 31.718903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.123514, 34.866131, 31.720398>,  <25.319157, 34.517250, 31.722889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.123514, 34.866131, 31.720398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323288, -0.187914, -0.927455,
		-0.810098, -0.451613, 0.373883,
		-0.489108, 0.872201, -0.006228,
		24.976782, 35.127792, 31.718529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.663300, 34.328712, 31.391100>,  <25.319157, 34.517250, 31.722889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.663300, 34.328712, 31.391100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.721355, 34.724072, 31.373198>,  <24.756189, 34.961288, 31.362455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.721355, 34.724072, 31.373198>,  <24.663300, 34.328712, 31.391100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.721355, 34.724072, 31.373198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435982, 0.023283, -0.899654,
		-0.888175, 0.150090, 0.434303,
		0.145141, 0.988398, -0.044757,
		24.764898, 35.020592, 31.359770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.068539, 34.587784, 30.998362>,  <24.663300, 34.328712, 31.391100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.068539, 34.587784, 30.998362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330601, 34.889336, 30.978605>,  <24.487839, 35.070267, 30.966751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.330601, 34.889336, 30.978605>,  <24.068539, 34.587784, 30.998362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.330601, 34.889336, 30.978605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212103, 0.120796, -0.969753,
		-0.725108, 0.645816, 0.239039,
		0.655157, 0.753876, -0.049389,
		24.527147, 35.115498, 30.963789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.791500, 35.078316, 30.510475>,  <24.068539, 34.587784, 30.998362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.791500, 35.078316, 30.510475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.177036, 35.179020, 30.545404>,  <24.408358, 35.239441, 30.566362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.177036, 35.179020, 30.545404>,  <23.791500, 35.078316, 30.510475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.177036, 35.179020, 30.545404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032826, 0.213029, -0.976494,
		-0.264443, 0.944053, 0.197062,
		0.963842, 0.251758, 0.087324,
		24.466188, 35.254547, 30.571602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.778513, 35.737221, 30.114096>,  <23.791500, 35.078316, 30.510475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.778513, 35.737221, 30.114096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.156820, 35.607323, 30.117270>,  <24.383804, 35.529385, 30.119173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.156820, 35.607323, 30.117270>,  <23.778513, 35.737221, 30.114096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.156820, 35.607323, 30.117270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017701, -0.075905, -0.996958,
		0.324359, 0.942751, -0.077536,
		0.945768, -0.324745, 0.007933,
		24.440552, 35.509899, 30.119650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.048927, 36.104370, 29.649612>,  <23.778513, 35.737221, 30.114096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.048927, 36.104370, 29.649612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.322971, 35.813789, 29.671133>,  <24.487398, 35.639442, 29.684046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.322971, 35.813789, 29.671133>,  <24.048927, 36.104370, 29.649612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.322971, 35.813789, 29.671133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055985, -0.021131, -0.998208,
		0.726285, 0.686895, 0.026193,
		0.685111, -0.726449, 0.053803,
		24.528505, 35.595856, 29.687275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.611891, 36.330338, 29.284285>,  <24.048927, 36.104370, 29.649612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.611891, 36.330338, 29.284285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.650913, 35.932720, 29.303705>,  <24.674328, 35.694149, 29.315357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.650913, 35.932720, 29.303705>,  <24.611891, 36.330338, 29.284285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.650913, 35.932720, 29.303705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220566, -0.025975, -0.975026,
		0.970481, 0.105830, 0.216718,
		0.097558, -0.994045, 0.048551,
		24.680182, 35.634506, 29.318270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.110731, 36.181538, 28.812654>,  <24.611891, 36.330338, 29.284285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.110731, 36.181538, 28.812654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.991325, 35.804829, 28.874559>,  <24.919682, 35.578804, 28.911701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.991325, 35.804829, 28.874559>,  <25.110731, 36.181538, 28.812654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.991325, 35.804829, 28.874559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152700, -0.207194, -0.966309,
		0.942110, -0.264826, 0.205659,
		-0.298515, -0.941774, 0.154761,
		24.901772, 35.522297, 28.920988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.566248, 35.753075, 28.627960>,  <25.110731, 36.181538, 28.812654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.566248, 35.753075, 28.627960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.242912, 35.519287, 28.599714>,  <25.048910, 35.379013, 28.582767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.242912, 35.519287, 28.599714>,  <25.566248, 35.753075, 28.627960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.242912, 35.519287, 28.599714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259855, -0.246586, -0.933633,
		0.528265, -0.773041, 0.351202,
		-0.808339, -0.584467, -0.070616,
		25.000410, 35.343948, 28.578529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.770561, 35.137802, 28.348291>,  <25.566248, 35.753075, 28.627960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.770561, 35.137802, 28.348291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376579, 35.127533, 28.279936>,  <25.140190, 35.121372, 28.238922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376579, 35.127533, 28.279936>,  <25.770561, 35.137802, 28.348291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.376579, 35.127533, 28.279936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172796, -0.156040, -0.972519,
		-0.001699, -0.987417, 0.158129,
		-0.984956, -0.025672, -0.170887,
		25.081093, 35.119831, 28.228670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721045, 34.554989, 27.911329>,  <25.770561, 35.137802, 28.348291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721045, 34.554989, 27.911329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378542, 34.756630, 27.866230>,  <25.173040, 34.877613, 27.839170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378542, 34.756630, 27.866230>,  <25.721045, 34.554989, 27.911329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.378542, 34.756630, 27.866230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122749, -0.013448, -0.992347,
		-0.501758, -0.863541, -0.050363,
		-0.856254, 0.504100, -0.112747,
		25.121666, 34.907860, 27.832405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311243, 34.229874, 27.328737>,  <25.721045, 34.554989, 27.911329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311243, 34.229874, 27.328737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.111330, 34.575668, 27.350178>,  <24.991383, 34.783146, 27.363043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.111330, 34.575668, 27.350178>,  <25.311243, 34.229874, 27.328737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.111330, 34.575668, 27.350178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079623, 0.107480, -0.991014,
		-0.862484, -0.491022, -0.122550,
		-0.499781, 0.864491, 0.053603,
		24.961395, 34.835014, 27.366259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.863409, 34.183296, 26.847401>,  <25.311243, 34.229874, 27.328737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.863409, 34.183296, 26.847401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.863478, 34.578201, 26.911037>,  <24.863520, 34.815144, 26.949219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.863478, 34.578201, 26.911037>,  <24.863409, 34.183296, 26.847401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.863478, 34.578201, 26.911037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025579, 0.159045, -0.986940,
		-0.999673, -0.003898, 0.025281,
		0.000173, 0.987263, 0.159092,
		24.863529, 34.874382, 26.958765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.272123, 34.463795, 26.540730>,  <24.863409, 34.183296, 26.847401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.272123, 34.463795, 26.540730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.560892, 34.738602, 26.573792>,  <24.734154, 34.903488, 26.593628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.560892, 34.738602, 26.573792>,  <24.272123, 34.463795, 26.540730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.560892, 34.738602, 26.573792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107175, 0.229020, -0.967504,
		-0.683624, 0.689604, 0.238966,
		0.721923, 0.687020, 0.082655,
		24.777470, 34.944706, 26.598587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.024731, 35.053959, 26.264528>,  <24.272123, 34.463795, 26.540730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.024731, 35.053959, 26.264528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.420443, 35.107269, 26.240665>,  <24.657869, 35.139256, 26.226347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.420443, 35.107269, 26.240665>,  <24.024731, 35.053959, 26.264528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.420443, 35.107269, 26.240665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082805, 0.175536, -0.980984,
		-0.120272, 0.975410, 0.184691,
		0.989282, 0.133279, -0.059657,
		24.717228, 35.147251, 26.222769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.194521, 35.678944, 25.843046>,  <24.024731, 35.053959, 26.264528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.194521, 35.678944, 25.843046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.523899, 35.452896, 25.822735>,  <24.721527, 35.317268, 25.810547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.523899, 35.452896, 25.822735>,  <24.194521, 35.678944, 25.843046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.523899, 35.452896, 25.822735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091758, 0.220951, -0.970959,
		0.559924, 0.794874, 0.233795,
		0.823448, -0.565115, -0.050779,
		24.770933, 35.283363, 25.807501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.568245, 36.032650, 25.353678>,  <24.194521, 35.678944, 25.843046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.568245, 36.032650, 25.353678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.746164, 35.674549, 25.364037>,  <24.852917, 35.459686, 25.370253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.746164, 35.674549, 25.364037>,  <24.568245, 36.032650, 25.353678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.746164, 35.674549, 25.364037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262313, 0.102570, -0.959516,
		0.856355, 0.433587, 0.280461,
		0.444800, -0.895255, 0.025899,
		24.879604, 35.405972, 25.371807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330650, 36.048454, 25.272942>,  <24.568245, 36.032650, 25.353678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330650, 36.048454, 25.272942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166235, 35.712578, 25.130980>,  <25.067585, 35.511051, 25.045801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166235, 35.712578, 25.130980>,  <25.330650, 36.048454, 25.272942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.166235, 35.712578, 25.130980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359998, 0.208160, -0.909435,
		0.837525, -0.501579, 0.216727,
		-0.411040, -0.839695, -0.354907,
		25.042923, 35.460670, 25.024508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.839123, 35.747360, 24.846172>,  <25.330650, 36.048454, 25.272942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.839123, 35.747360, 24.846172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524174, 35.581371, 24.663813>,  <25.335205, 35.481777, 24.554398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.524174, 35.581371, 24.663813>,  <25.839123, 35.747360, 24.846172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524174, 35.581371, 24.663813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366754, 0.279108, -0.887463,
		0.495519, -0.865965, -0.067568,
		-0.787370, -0.414974, -0.455900,
		25.287962, 35.456879, 24.527042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061726, 35.283134, 24.269360>,  <25.839123, 35.747360, 24.846172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061726, 35.283134, 24.269360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711910, 35.471317, 24.222271>,  <25.502022, 35.584225, 24.194017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711910, 35.471317, 24.222271>,  <26.061726, 35.283134, 24.269360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711910, 35.471317, 24.222271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323226, 0.384477, -0.864698,
		-0.361540, -0.794260, -0.488302,
		-0.874536, 0.470455, -0.117722,
		25.449549, 35.612453, 24.186954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318136, 34.646900, 23.874218>,  <26.061726, 35.283134, 24.269360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318136, 34.646900, 23.874218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483982, 34.284187, 23.843662>,  <26.583490, 34.066559, 23.825329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483982, 34.284187, 23.843662>,  <26.318136, 34.646900, 23.874218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483982, 34.284187, 23.843662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140875, -0.018974, 0.989845,
		-0.899026, -0.421168, 0.119876,
		0.414616, -0.906784, -0.076390,
		26.608368, 34.012154, 23.820745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003302, 34.026245, 24.237364>,  <26.318136, 34.646900, 23.874218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003302, 34.026245, 24.237364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400726, 33.992573, 24.207024>,  <26.639181, 33.972370, 24.188820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400726, 33.992573, 24.207024>,  <26.003302, 34.026245, 24.237364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400726, 33.992573, 24.207024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079409, 0.039747, 0.996049,
		-0.080832, -0.995658, 0.046175,
		0.993559, -0.084179, -0.075851,
		26.698793, 33.967319, 24.184269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150061, 33.656708, 24.780502>,  <26.003302, 34.026245, 24.237364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150061, 33.656708, 24.780502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447197, 33.902599, 24.674450>,  <26.625479, 34.050133, 24.610819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447197, 33.902599, 24.674450>,  <26.150061, 33.656708, 24.780502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447197, 33.902599, 24.674450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082938, 0.308481, 0.947608,
		0.664311, -0.725912, 0.178168,
		0.742841, 0.614729, -0.265133,
		26.670050, 34.087017, 24.594910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723082, 33.435158, 25.240969>,  <26.150061, 33.656708, 24.780502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723082, 33.435158, 25.240969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711269, 33.828316, 25.168247>,  <26.704182, 34.064209, 25.124615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711269, 33.828316, 25.168247>,  <26.723082, 33.435158, 25.240969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711269, 33.828316, 25.168247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059065, 0.183282, 0.981284,
		0.997817, 0.018237, -0.063467,
		-0.029528, 0.982891, -0.181805,
		26.702412, 34.123184, 25.113707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349182, 32.989426, 25.310135>,  <26.723082, 33.435158, 25.240969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349182, 32.989426, 25.310135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.989552, 32.986069, 25.485218>,  <26.773773, 32.984055, 25.590267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.989552, 32.986069, 25.485218>,  <27.349182, 32.989426, 25.310135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.989552, 32.986069, 25.485218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425460, 0.218847, 0.878117,
		-0.103160, 0.975723, -0.193190,
		-0.899078, -0.008392, 0.437708,
		26.719828, 32.983551, 25.616529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507996, 33.388565, 25.853586>,  <27.349182, 32.989426, 25.310135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507996, 33.388565, 25.853586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154636, 33.225418, 25.945892>,  <26.942621, 33.127529, 26.001276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154636, 33.225418, 25.945892>,  <27.507996, 33.388565, 25.853586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154636, 33.225418, 25.945892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231175, 0.049061, 0.971674,
		-0.407634, 0.911723, 0.050948,
		-0.883398, -0.407866, 0.230767,
		26.889616, 33.103058, 26.015121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152012, 33.852928, 26.411552>,  <27.507996, 33.388565, 25.853586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152012, 33.852928, 26.411552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037317, 33.470097, 26.428457>,  <26.968500, 33.240398, 26.438601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037317, 33.470097, 26.428457>,  <27.152012, 33.852928, 26.411552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037317, 33.470097, 26.428457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083998, 0.018829, 0.996288,
		-0.954320, 0.289221, 0.074994,
		-0.286735, -0.957077, 0.042263,
		26.951296, 33.182972, 26.441135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583965, 33.858311, 26.907206>,  <27.152012, 33.852928, 26.411552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583965, 33.858311, 26.907206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728699, 33.485664, 26.893513>,  <26.815538, 33.262077, 26.885298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728699, 33.485664, 26.893513>,  <26.583965, 33.858311, 26.907206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728699, 33.485664, 26.893513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045105, -0.054173, 0.997512,
		-0.931150, -0.359391, -0.061622,
		0.361835, -0.931613, -0.034233,
		26.837250, 33.206181, 26.883244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.126690, 33.467590, 27.296881>,  <26.583965, 33.858311, 26.907206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.126690, 33.467590, 27.296881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471281, 33.265934, 27.272552>,  <26.678036, 33.144939, 27.257956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471281, 33.265934, 27.272552>,  <26.126690, 33.467590, 27.296881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471281, 33.265934, 27.272552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094866, 0.042120, 0.994599,
		-0.498853, -0.862595, 0.084111,
		0.861479, -0.504138, -0.060819,
		26.729725, 33.114693, 27.254307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074024, 32.949959, 27.832211>,  <26.126690, 33.467590, 27.296881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074024, 32.949959, 27.832211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460335, 33.017082, 27.753101>,  <26.692122, 33.057358, 27.705635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460335, 33.017082, 27.753101>,  <26.074024, 32.949959, 27.832211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460335, 33.017082, 27.753101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169087, 0.170871, 0.970676,
		0.196688, -0.970897, 0.136648,
		0.965776, 0.167815, -0.197774,
		26.750069, 33.067425, 27.693769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.393887, 32.491425, 28.181316>,  <26.074024, 32.949959, 27.832211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.393887, 32.491425, 28.181316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681751, 32.765980, 28.139439>,  <26.854469, 32.930714, 28.114313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681751, 32.765980, 28.139439>,  <26.393887, 32.491425, 28.181316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681751, 32.765980, 28.139439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001150, 0.149606, 0.988745,
		0.694325, -0.711682, 0.106876,
		0.719661, 0.686387, -0.104693,
		26.897650, 32.971897, 28.108030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884676, 32.299664, 28.637156>,  <26.393887, 32.491425, 28.181316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884676, 32.299664, 28.637156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992571, 32.672291, 28.539642>,  <27.057308, 32.895866, 28.481134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992571, 32.672291, 28.539642>,  <26.884676, 32.299664, 28.637156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992571, 32.672291, 28.539642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330153, 0.148350, 0.932197,
		0.904567, -0.331932, -0.267544,
		0.269736, 0.931565, -0.243781,
		27.073492, 32.951759, 28.466509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567186, 32.396927, 28.914192>,  <26.884676, 32.299664, 28.637156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567186, 32.396927, 28.914192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431175, 32.772381, 28.891083>,  <27.349567, 32.997654, 28.877216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431175, 32.772381, 28.891083>,  <27.567186, 32.396927, 28.914192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431175, 32.772381, 28.891083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506346, 0.234506, 0.829832,
		0.792460, 0.252913, -0.555015,
		-0.340030, 0.938638, -0.057775,
		27.329166, 33.053974, 28.873751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124840, 32.769527, 29.123217>,  <27.567186, 32.396927, 28.914192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124840, 32.769527, 29.123217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831760, 33.041336, 29.108221>,  <27.655912, 33.204422, 29.099224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831760, 33.041336, 29.108221>,  <28.124840, 32.769527, 29.123217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831760, 33.041336, 29.108221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364931, 0.438793, 0.821149,
		0.574439, 0.587972, -0.569481,
		-0.732697, 0.679522, -0.037491,
		27.611952, 33.245193, 29.096973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465843, 33.418873, 29.249348>,  <28.124840, 32.769527, 29.123217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465843, 33.418873, 29.249348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078785, 33.440636, 29.347902>,  <27.846550, 33.453693, 29.407036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078785, 33.440636, 29.347902>,  <28.465843, 33.418873, 29.249348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078785, 33.440636, 29.347902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241845, 0.478435, 0.844163,
		-0.071954, 0.876436, -0.476111,
		-0.967643, 0.054405, 0.246387,
		27.788492, 33.456959, 29.421818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433908, 34.080864, 29.648157>,  <28.465843, 33.418873, 29.249348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433908, 34.080864, 29.648157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086140, 33.909992, 29.747458>,  <27.877478, 33.807468, 29.807037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086140, 33.909992, 29.747458>,  <28.433908, 34.080864, 29.648157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086140, 33.909992, 29.747458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081778, 0.371107, 0.924982,
		-0.487256, 0.824501, -0.287715,
		-0.869421, -0.427175, 0.248250,
		27.825314, 33.781841, 29.821932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131083, 34.556320, 30.093443>,  <28.433908, 34.080864, 29.648157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131083, 34.556320, 30.093443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958384, 34.202961, 30.166340>,  <27.854765, 33.990948, 30.210077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958384, 34.202961, 30.166340>,  <28.131083, 34.556320, 30.093443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958384, 34.202961, 30.166340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062571, 0.230888, 0.970966,
		-0.899823, 0.407807, -0.154960,
		-0.431745, -0.883394, 0.182241,
		27.828859, 33.937943, 30.221012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672455, 34.738121, 30.523899>,  <28.131083, 34.556320, 30.093443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672455, 34.738121, 30.523899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728466, 34.348167, 30.593172>,  <27.762074, 34.114197, 30.634735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728466, 34.348167, 30.593172>,  <27.672455, 34.738121, 30.523899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728466, 34.348167, 30.593172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058856, 0.166399, 0.984301,
		-0.988397, -0.148023, -0.034077,
		0.140028, -0.974885, 0.173180,
		27.770475, 34.055702, 30.645126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223696, 34.605820, 31.043070>,  <27.672455, 34.738121, 30.523899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223696, 34.605820, 31.043070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439302, 34.269749, 31.066961>,  <27.568666, 34.068108, 31.081297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.439302, 34.269749, 31.066961>,  <27.223696, 34.605820, 31.043070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439302, 34.269749, 31.066961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018477, 0.082689, 0.996404,
		-0.842092, -0.535976, 0.060095,
		0.539018, -0.840174, 0.059728,
		27.601007, 34.017696, 31.084879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861753, 34.063892, 31.522449>,  <27.223696, 34.605820, 31.043070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861753, 34.063892, 31.522449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247717, 33.959385, 31.511976>,  <27.479296, 33.896679, 31.505693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247717, 33.959385, 31.511976>,  <26.861753, 34.063892, 31.522449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247717, 33.959385, 31.511976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003673, -0.086269, 0.996265,
		-0.262556, -0.961402, -0.082282,
		0.964909, -0.261274, -0.026182,
		27.537189, 33.881004, 31.504122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.864388, 33.620148, 32.073971>,  <26.861753, 34.063892, 31.522449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.864388, 33.620148, 32.073971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227194, 33.767822, 31.992956>,  <27.444878, 33.856426, 31.944347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227194, 33.767822, 31.992956>,  <26.864388, 33.620148, 32.073971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227194, 33.767822, 31.992956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101459, 0.275214, 0.956014,
		0.408690, -0.887670, 0.212166,
		0.907016, 0.369187, -0.202539,
		27.499298, 33.878578, 31.932194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273012, 33.397717, 32.715416>,  <26.864388, 33.620148, 32.073971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273012, 33.397717, 32.715416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462057, 33.704128, 32.541134>,  <27.575483, 33.887974, 32.436565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462057, 33.704128, 32.541134>,  <27.273012, 33.397717, 32.715416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462057, 33.704128, 32.541134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186505, 0.396264, 0.898994,
		0.861310, -0.506135, 0.044411,
		0.472611, 0.766030, -0.435703,
		27.603840, 33.933937, 32.410423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876127, 33.484112, 33.121353>,  <27.273012, 33.397717, 32.715416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876127, 33.484112, 33.121353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820511, 33.841297, 32.950104>,  <27.787142, 34.055607, 32.847355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820511, 33.841297, 32.950104>,  <27.876127, 33.484112, 33.121353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820511, 33.841297, 32.950104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187537, 0.448242, 0.874019,
		0.972367, 0.041234, -0.229786,
		-0.139039, 0.892961, -0.428123,
		27.778799, 34.109184, 32.821667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168453, 33.875164, 33.616646>,  <27.876127, 33.484112, 33.121353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168453, 33.875164, 33.616646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997972, 34.153320, 33.385201>,  <27.895683, 34.320213, 33.246334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997972, 34.153320, 33.385201>,  <28.168453, 33.875164, 33.616646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997972, 34.153320, 33.385201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107771, 0.674085, 0.730750,
		0.898186, 0.249089, -0.362238,
		-0.426201, 0.695388, -0.578609,
		27.870111, 34.361938, 33.211617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651089, 34.389179, 33.476948>,  <28.168453, 33.875164, 33.616646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651089, 34.389179, 33.476948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300604, 34.571724, 33.414997>,  <28.090313, 34.681252, 33.377827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300604, 34.571724, 33.414997>,  <28.651089, 34.389179, 33.476948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300604, 34.571724, 33.414997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242305, 0.694973, 0.676979,
		0.416582, 0.555650, -0.719522,
		-0.876212, 0.456361, -0.154876,
		28.037741, 34.708633, 33.368534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781111, 35.073616, 33.363609>,  <28.651089, 34.389179, 33.476948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781111, 35.073616, 33.363609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398077, 35.062538, 33.478336>,  <28.168257, 35.055889, 33.547173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398077, 35.062538, 33.478336>,  <28.781111, 35.073616, 33.363609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398077, 35.062538, 33.478336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200624, 0.650395, 0.732623,
		-0.206837, 0.759091, -0.617251,
		-0.957585, -0.027697, 0.286818,
		28.110802, 35.054230, 33.564381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626595, 35.721771, 33.307747>,  <28.781111, 35.073616, 33.363609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626595, 35.721771, 33.307747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363981, 35.557423, 33.560776>,  <28.206413, 35.458813, 33.712593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363981, 35.557423, 33.560776>,  <28.626595, 35.721771, 33.307747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363981, 35.557423, 33.560776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215692, 0.701342, 0.679408,
		-0.722799, 0.582495, -0.371833,
		-0.656535, -0.410875, 0.632569,
		28.167021, 35.434162, 33.750546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859852, 36.018677, 33.939659>,  <28.626595, 35.721771, 33.307747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859852, 36.018677, 33.939659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059547, 36.226063, 34.217350>,  <29.179365, 36.350494, 34.383965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059547, 36.226063, 34.217350>,  <28.859852, 36.018677, 33.939659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059547, 36.226063, 34.217350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283394, -0.854859, 0.434630,
		0.818810, -0.020243, -0.573707,
		0.499237, 0.518465, 0.694231,
		29.209318, 36.381603, 34.425621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520428, 35.757607, 34.083031>,  <28.859852, 36.018677, 33.939659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520428, 35.757607, 34.083031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401535, 35.939907, 34.418636>,  <29.330200, 36.049286, 34.619999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401535, 35.939907, 34.418636>,  <29.520428, 35.757607, 34.083031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401535, 35.939907, 34.418636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184974, -0.834596, 0.518878,
		0.936717, 0.309422, 0.163766,
		-0.297231, 0.455750, 0.839015,
		29.312366, 36.076633, 34.670341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829308, 35.202091, 34.488049>,  <29.520428, 35.757607, 34.083031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829308, 35.202091, 34.488049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128605, 35.456238, 34.411682>,  <30.308184, 35.608727, 34.365864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128605, 35.456238, 34.411682>,  <29.829308, 35.202091, 34.488049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128605, 35.456238, 34.411682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085316, 0.193227, 0.977438,
		0.657917, -0.747648, 0.090374,
		0.748242, 0.635363, -0.190914,
		30.353077, 35.646847, 34.354408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555395, 34.907246, 34.834995>,  <29.829308, 35.202091, 34.488049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555395, 34.907246, 34.834995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527069, 35.303501, 34.788319>,  <30.510075, 35.541256, 34.760311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527069, 35.303501, 34.788319>,  <30.555395, 34.907246, 34.834995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527069, 35.303501, 34.788319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052678, 0.120540, 0.991310,
		0.996098, 0.064051, -0.060721,
		-0.070814, 0.990640, -0.116695,
		30.505825, 35.600693, 34.753311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183455, 35.251068, 35.192562>,  <30.555395, 34.907246, 34.834995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183455, 35.251068, 35.192562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866661, 35.494930, 35.179413>,  <30.676586, 35.641247, 35.171524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866661, 35.494930, 35.179413>,  <31.183455, 35.251068, 35.192562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866661, 35.494930, 35.179413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058275, 0.129079, 0.989921,
		0.607757, 0.782084, -0.137756,
		-0.791982, 0.609659, -0.032872,
		30.629066, 35.677830, 35.169552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349340, 35.867706, 35.549316>,  <31.183455, 35.251068, 35.192562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349340, 35.867706, 35.549316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957100, 35.798405, 35.585983>,  <30.721756, 35.756824, 35.607983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.957100, 35.798405, 35.585983>,  <31.349340, 35.867706, 35.549316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957100, 35.798405, 35.585983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082515, 0.059350, 0.994821,
		-0.177797, 0.983087, -0.043902,
		-0.980602, -0.173253, 0.091672,
		30.662920, 35.746429, 35.613483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890230, 36.489624, 35.889015>,  <31.349340, 35.867706, 35.549316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890230, 36.489624, 35.889015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761024, 36.121613, 35.977749>,  <30.683500, 35.900806, 36.030991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761024, 36.121613, 35.977749>,  <30.890230, 36.489624, 35.889015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761024, 36.121613, 35.977749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270328, 0.134942, 0.953265,
		-0.906965, 0.367887, 0.205121,
		-0.323014, -0.920027, 0.221838,
		30.664120, 35.845604, 36.044300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500198, 36.477070, 36.518604>,  <30.890230, 36.489624, 35.889015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500198, 36.477070, 36.518604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670290, 36.119087, 36.464592>,  <30.772345, 35.904297, 36.432186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670290, 36.119087, 36.464592>,  <30.500198, 36.477070, 36.518604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670290, 36.119087, 36.464592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319810, 0.009009, 0.947439,
		-0.846701, -0.446061, 0.290047,
		0.425229, -0.894957, -0.135027,
		30.797859, 35.850601, 36.424084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301184, 35.992287, 37.111801>,  <30.500198, 36.477070, 36.518604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301184, 35.992287, 37.111801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661411, 35.965622, 36.939972>,  <30.877548, 35.949623, 36.836876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661411, 35.965622, 36.939972>,  <30.301184, 35.992287, 37.111801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661411, 35.965622, 36.939972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433775, 0.073011, 0.898058,
		-0.028505, -0.995101, 0.094669,
		0.900570, -0.066664, -0.429569,
		30.931581, 35.945621, 36.811100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680906, 35.478287, 37.537781>,  <30.301184, 35.992287, 37.111801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680906, 35.478287, 37.537781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940683, 35.713882, 37.345398>,  <31.096550, 35.855240, 37.229969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940683, 35.713882, 37.345398>,  <30.680906, 35.478287, 37.537781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940683, 35.713882, 37.345398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349251, 0.330790, 0.876699,
		0.675463, -0.737337, 0.009122,
		0.649441, 0.588992, -0.480952,
		31.135515, 35.890579, 37.201111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370892, 35.264023, 37.704933>,  <30.680906, 35.478287, 37.537781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370892, 35.264023, 37.704933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384556, 35.649708, 37.599766>,  <31.392754, 35.881119, 37.536667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384556, 35.649708, 37.599766>,  <31.370892, 35.264023, 37.704933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384556, 35.649708, 37.599766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441826, 0.221399, 0.869351,
		0.896450, -0.145863, -0.418451,
		0.034161, 0.964213, -0.262919,
		31.394804, 35.938972, 37.520889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056629, 35.566433, 37.892750>,  <31.370892, 35.264023, 37.704933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056629, 35.566433, 37.892750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892662, 35.928001, 37.843925>,  <31.794283, 36.144943, 37.814629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892662, 35.928001, 37.843925>,  <32.056629, 35.566433, 37.892750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892662, 35.928001, 37.843925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465119, 0.322265, 0.824505,
		0.784624, 0.281202, -0.552532,
		-0.409914, 0.903920, -0.122065,
		31.769688, 36.199177, 37.807304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596180, 36.008343, 38.000160>,  <32.056629, 35.566433, 37.892750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596180, 36.008343, 38.000160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291691, 36.263508, 38.046814>,  <32.108997, 36.416607, 38.074806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291691, 36.263508, 38.046814>,  <32.596180, 36.008343, 38.000160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291691, 36.263508, 38.046814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433933, 0.367410, 0.822625,
		0.481913, 0.676813, -0.556493,
		-0.761224, 0.637914, 0.116632,
		32.063324, 36.454884, 38.081802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835342, 36.602203, 38.208111>,  <32.596180, 36.008343, 38.000160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835342, 36.602203, 38.208111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455555, 36.610664, 38.333370>,  <32.227684, 36.615742, 38.408527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455555, 36.610664, 38.333370>,  <32.835342, 36.602203, 38.208111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455555, 36.610664, 38.333370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308738, 0.242518, 0.919710,
		-0.056491, 0.969916, -0.236793,
		-0.949468, 0.021152, 0.313150,
		32.170715, 36.617008, 38.427315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737972, 37.265491, 38.506145>,  <32.835342, 36.602203, 38.208111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737972, 37.265491, 38.506145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464428, 37.024513, 38.670776>,  <32.300301, 36.879925, 38.769554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464428, 37.024513, 38.670776>,  <32.737972, 37.265491, 38.506145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464428, 37.024513, 38.670776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397783, 0.165037, 0.902514,
		-0.611640, 0.780912, 0.126780,
		-0.683860, -0.602445, 0.411577,
		32.259270, 36.843781, 38.794250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581341, 37.521576, 39.170910>,  <32.737972, 37.265491, 38.506145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581341, 37.521576, 39.170910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415592, 37.158672, 39.199696>,  <32.316143, 36.940929, 39.216965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415592, 37.158672, 39.199696>,  <32.581341, 37.521576, 39.170910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415592, 37.158672, 39.199696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368762, -0.095085, 0.924648,
		-0.832053, 0.409682, 0.373963,
		-0.414370, -0.907259, 0.071960,
		32.291283, 36.886494, 39.221283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306072, 37.480827, 39.937363>,  <32.581341, 37.521576, 39.170910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306072, 37.480827, 39.937363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332233, 37.114719, 39.778362>,  <32.347931, 36.895054, 39.682964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.332233, 37.114719, 39.778362>,  <32.306072, 37.480827, 39.937363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332233, 37.114719, 39.778362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131094, -0.387018, 0.912706,
		-0.989210, -0.111805, 0.094673,
		0.065405, -0.915269, -0.397498,
		32.351856, 36.840137, 39.659111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890663, 36.966240, 40.401157>,  <32.306072, 37.480827, 39.937363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890663, 36.966240, 40.401157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149223, 36.736328, 40.200439>,  <32.304359, 36.598381, 40.080009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149223, 36.736328, 40.200439>,  <31.890663, 36.966240, 40.401157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149223, 36.736328, 40.200439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188803, -0.516709, 0.835084,
		-0.739271, -0.634537, -0.225480,
		0.646399, -0.574782, -0.501790,
		32.343143, 36.563892, 40.049904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805681, 36.326710, 40.636707>,  <31.890663, 36.966240, 40.401157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805681, 36.326710, 40.636707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173927, 36.312511, 40.481167>,  <32.394875, 36.303993, 40.387844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173927, 36.312511, 40.481167>,  <31.805681, 36.326710, 40.636707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173927, 36.312511, 40.481167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312505, -0.530102, 0.788247,
		-0.234107, -0.847191, -0.476929,
		0.920617, -0.035492, -0.388852,
		32.450111, 36.301865, 40.364510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047989, 35.591717, 40.671432>,  <31.805681, 36.326710, 40.636707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047989, 35.591717, 40.671432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370483, 35.827805, 40.655281>,  <32.563980, 35.969456, 40.645592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370483, 35.827805, 40.655281>,  <32.047989, 35.591717, 40.671432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370483, 35.827805, 40.655281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356297, -0.429942, 0.829579,
		0.472273, -0.683221, -0.556927,
		0.806232, 0.590219, -0.040379,
		32.612354, 36.004871, 40.643166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561291, 35.143284, 40.867527>,  <32.047989, 35.591717, 40.671432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561291, 35.143284, 40.867527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697674, 35.512909, 40.936630>,  <32.779503, 35.734684, 40.978092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697674, 35.512909, 40.936630>,  <32.561291, 35.143284, 40.867527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697674, 35.512909, 40.936630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577493, -0.350894, 0.737140,
		0.741786, -0.151571, -0.653284,
		0.340962, 0.924067, 0.172757,
		32.799961, 35.790131, 40.988457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220200, 35.013718, 41.058811>,  <32.561291, 35.143284, 40.867527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220200, 35.013718, 41.058811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203487, 35.400707, 41.158607>,  <33.193462, 35.632900, 41.218487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203487, 35.400707, 41.158607>,  <33.220200, 35.013718, 41.058811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203487, 35.400707, 41.158607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621025, -0.170470, 0.765028,
		0.782677, 0.186902, -0.593704,
		-0.041777, 0.967475, 0.249493,
		33.190956, 35.690948, 41.233456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947086, 35.312691, 41.231857>,  <33.220200, 35.013718, 41.058811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947086, 35.312691, 41.231857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669559, 35.529076, 41.422001>,  <33.503044, 35.658909, 41.536087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669559, 35.529076, 41.422001>,  <33.947086, 35.312691, 41.231857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669559, 35.529076, 41.422001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490951, -0.127608, 0.861791,
		0.526858, 0.831309, -0.177049,
		-0.693821, 0.540964, 0.475363,
		33.461414, 35.691364, 41.564610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334320, 35.728039, 41.738705>,  <33.947086, 35.312691, 41.231857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334320, 35.728039, 41.738705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959431, 35.706848, 41.876583>,  <33.734497, 35.694134, 41.959309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959431, 35.706848, 41.876583>,  <34.334320, 35.728039, 41.738705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959431, 35.706848, 41.876583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348092, -0.081797, 0.933885,
		-0.021278, 0.995240, 0.095102,
		-0.937219, -0.052975, 0.344695,
		33.678265, 35.690956, 41.979992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398052, 36.087452, 42.476273>,  <34.334320, 35.728039, 41.738705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398052, 36.087452, 42.476273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049183, 35.896130, 42.435211>,  <33.839863, 35.781338, 42.410576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049183, 35.896130, 42.435211>,  <34.398052, 36.087452, 42.476273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049183, 35.896130, 42.435211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014391, -0.184663, 0.982697,
		-0.488983, 0.858560, 0.154175,
		-0.872174, -0.478304, -0.102653,
		33.787529, 35.752640, 42.404415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043552, 36.378922, 43.090679>,  <34.398052, 36.087452, 42.476273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043552, 36.378922, 43.090679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861164, 36.048897, 42.957195>,  <33.751732, 35.850883, 42.877106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861164, 36.048897, 42.957195>,  <34.043552, 36.378922, 43.090679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861164, 36.048897, 42.957195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111036, -0.319291, 0.941129,
		-0.883040, 0.466184, 0.053977,
		-0.455973, -0.825061, -0.333710,
		33.724373, 35.801380, 42.857082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552876, 36.286366, 43.558331>,  <34.043552, 36.378922, 43.090679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552876, 36.286366, 43.558331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567451, 35.914402, 43.411938>,  <33.576199, 35.691223, 43.324100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567451, 35.914402, 43.411938>,  <33.552876, 36.286366, 43.558331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567451, 35.914402, 43.411938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290939, -0.360237, 0.886331,
		-0.956047, 0.074178, -0.283675,
		0.036444, -0.929907, -0.365985,
		33.578384, 35.635429, 43.302143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889885, 35.977299, 43.640541>,  <33.552876, 36.286366, 43.558331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889885, 35.977299, 43.640541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164757, 35.687160, 43.624226>,  <33.329678, 35.513077, 43.614437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164757, 35.687160, 43.624226>,  <32.889885, 35.977299, 43.640541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164757, 35.687160, 43.624226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428068, -0.449625, 0.783961,
		-0.586982, -0.521259, -0.619468,
		0.687175, -0.725346, -0.040787,
		33.370911, 35.469555, 43.611988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528641, 35.386021, 43.581974>,  <32.889885, 35.977299, 43.640541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528641, 35.386021, 43.581974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881195, 35.287220, 43.743046>,  <33.092728, 35.227940, 43.839691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881195, 35.287220, 43.743046>,  <32.528641, 35.386021, 43.581974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881195, 35.287220, 43.743046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470649, -0.532521, 0.703499,
		0.040672, -0.809574, -0.585607,
		0.881382, -0.247003, 0.402684,
		33.145611, 35.213120, 43.863850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401222, 34.723160, 43.919689>,  <32.528641, 35.386021, 43.581974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401222, 34.723160, 43.919689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773029, 34.790039, 44.051167>,  <32.996113, 34.830166, 44.130051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773029, 34.790039, 44.051167>,  <32.401222, 34.723160, 43.919689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773029, 34.790039, 44.051167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204213, -0.508801, 0.836313,
		0.307065, -0.844493, -0.438797,
		0.929521, 0.167194, 0.328691,
		33.051884, 34.840199, 44.149773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611240, 34.048851, 44.200562>,  <32.401222, 34.723160, 43.919689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611240, 34.048851, 44.200562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842648, 34.314529, 44.389946>,  <32.981491, 34.473938, 44.503574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842648, 34.314529, 44.389946>,  <32.611240, 34.048851, 44.200562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842648, 34.314529, 44.389946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280711, -0.382872, 0.880120,
		0.765845, -0.642069, -0.035050,
		0.578517, 0.664196, 0.473456,
		33.016201, 34.513790, 44.531982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999401, 33.699615, 44.703648>,  <32.611240, 34.048851, 44.200562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999401, 33.699615, 44.703648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986973, 34.074478, 44.842655>,  <32.979515, 34.299397, 44.926060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986973, 34.074478, 44.842655>,  <32.999401, 33.699615, 44.703648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986973, 34.074478, 44.842655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288675, -0.341287, 0.894533,
		0.956923, -0.072529, 0.281137,
		-0.031068, 0.937157, 0.347523,
		32.977654, 34.355625, 44.946911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319153, 33.656982, 45.271999>,  <32.999401, 33.699615, 44.703648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319153, 33.656982, 45.271999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099861, 33.990971, 45.291046>,  <32.968285, 34.191364, 45.302475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099861, 33.990971, 45.291046>,  <33.319153, 33.656982, 45.271999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099861, 33.990971, 45.291046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406156, -0.315583, 0.857581,
		0.731083, 0.450810, 0.512141,
		-0.548229, 0.834972, 0.047619,
		32.935394, 34.241463, 45.305332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272091, 33.806168, 46.046635>,  <33.319153, 33.656982, 45.271999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272091, 33.806168, 46.046635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976795, 34.004875, 45.864109>,  <32.799618, 34.124100, 45.754593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976795, 34.004875, 45.864109>,  <33.272091, 33.806168, 46.046635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976795, 34.004875, 45.864109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636354, -0.288529, 0.715406,
		0.223732, 0.818518, 0.529125,
		-0.738240, 0.496769, -0.456314,
		32.755322, 34.153908, 45.727215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967636, 34.032654, 46.601788>,  <33.272091, 33.806168, 46.046635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967636, 34.032654, 46.601788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707436, 34.107742, 46.307411>,  <32.551315, 34.152794, 46.130787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707436, 34.107742, 46.307411>,  <32.967636, 34.032654, 46.601788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707436, 34.107742, 46.307411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748973, -0.319339, 0.580571,
		-0.126028, 0.928861, 0.348330,
		-0.650505, 0.187722, -0.735937,
		32.512283, 34.164059, 46.086632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529156, 34.461960, 46.904701>,  <32.967636, 34.032654, 46.601788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529156, 34.461960, 46.904701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353699, 34.269924, 46.600830>,  <32.248425, 34.154705, 46.418507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353699, 34.269924, 46.600830>,  <32.529156, 34.461960, 46.904701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353699, 34.269924, 46.600830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750304, -0.269614, 0.603617,
		-0.494607, 0.834761, -0.241945,
		-0.438644, -0.480085, -0.759677,
		32.222107, 34.125900, 46.372929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870008, 34.762791, 46.839100>,  <32.529156, 34.461960, 46.904701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870008, 34.762791, 46.839100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839418, 34.406075, 46.660721>,  <31.821064, 34.192047, 46.553692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839418, 34.406075, 46.660721>,  <31.870008, 34.762791, 46.839100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839418, 34.406075, 46.660721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774809, -0.228351, 0.589513,
		-0.627553, 0.390607, -0.673501,
		-0.076473, -0.891786, -0.445948,
		31.816477, 34.138538, 46.526936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133600, 34.600239, 46.915108>,  <31.870008, 34.762791, 46.839100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133600, 34.600239, 46.915108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269745, 34.235031, 46.825169>,  <31.351433, 34.015907, 46.771206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269745, 34.235031, 46.825169>,  <31.133600, 34.600239, 46.915108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269745, 34.235031, 46.825169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746703, -0.407779, 0.525500,
		-0.571478, -0.010967, -0.820544,
		0.340364, -0.913015, -0.224847,
		31.371855, 33.961128, 46.757713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542706, 34.194569, 46.656113>,  <31.133600, 34.600239, 46.915108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542706, 34.194569, 46.656113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821266, 33.929592, 46.766529>,  <30.988403, 33.770607, 46.832779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821266, 33.929592, 46.766529>,  <30.542706, 34.194569, 46.656113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821266, 33.929592, 46.766529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641697, -0.402569, 0.652812,
		-0.321324, -0.631753, -0.705435,
		0.696402, -0.662440, 0.276039,
		31.030188, 33.730858, 46.849339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229433, 33.553089, 46.737854>,  <30.542706, 34.194569, 46.656113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229433, 33.553089, 46.737854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561350, 33.528702, 46.959747>,  <30.760500, 33.514069, 47.092884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561350, 33.528702, 46.959747>,  <30.229433, 33.553089, 46.737854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561350, 33.528702, 46.959747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528694, -0.404135, 0.746430,
		0.178680, -0.912665, -0.367580,
		0.829793, -0.060966, 0.554732,
		30.810287, 33.510410, 47.126167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108568, 32.913555, 47.073498>,  <30.229433, 33.553089, 46.737854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108568, 32.913555, 47.073498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403368, 33.096619, 47.272446>,  <30.580248, 33.206455, 47.391815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403368, 33.096619, 47.272446>,  <30.108568, 32.913555, 47.073498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403368, 33.096619, 47.272446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403755, -0.292039, 0.867003,
		0.542044, -0.839798, -0.030451,
		0.737001, 0.457659, 0.497371,
		30.624468, 33.233917, 47.421658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340750, 32.483112, 47.629604>,  <30.108568, 32.913555, 47.073498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340750, 32.483112, 47.629604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426817, 32.858162, 47.738827>,  <30.478456, 33.083191, 47.804359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426817, 32.858162, 47.738827>,  <30.340750, 32.483112, 47.629604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426817, 32.858162, 47.738827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458731, -0.149799, 0.875857,
		0.862130, -0.313715, 0.397887,
		0.215167, 0.937626, 0.273058,
		30.491367, 33.139450, 47.820744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706089, 32.418324, 48.180370>,  <30.340750, 32.483112, 47.629604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706089, 32.418324, 48.180370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567875, 32.793018, 48.202724>,  <30.484947, 33.017838, 48.216137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567875, 32.793018, 48.202724>,  <30.706089, 32.418324, 48.180370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567875, 32.793018, 48.202724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344695, -0.182087, 0.920885,
		0.872807, 0.298933, 0.385807,
		-0.345534, 0.936741, 0.055886,
		30.464214, 33.074039, 48.219490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762827, 32.618240, 48.954582>,  <30.706089, 32.418324, 48.180370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762827, 32.618240, 48.954582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525187, 32.904629, 48.807922>,  <30.382603, 33.076462, 48.719929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525187, 32.904629, 48.807922>,  <30.762827, 32.618240, 48.954582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525187, 32.904629, 48.807922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503960, 0.023966, 0.863395,
		0.626952, 0.697719, 0.346582,
		-0.594101, 0.715970, -0.366648,
		30.346956, 33.119419, 48.697929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738573, 33.070061, 49.477600>,  <30.762827, 32.618240, 48.954582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738573, 33.070061, 49.477600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412893, 33.145344, 49.257908>,  <30.217485, 33.190514, 49.126091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412893, 33.145344, 49.257908>,  <30.738573, 33.070061, 49.477600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412893, 33.145344, 49.257908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567782, -0.060569, 0.820948,
		0.121244, 0.980259, 0.156177,
		-0.814201, 0.188210, -0.549230,
		30.168633, 33.201805, 49.093140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398642, 33.589405, 49.804089>,  <30.738573, 33.070061, 49.477600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398642, 33.589405, 49.804089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114052, 33.417923, 49.581371>,  <29.943298, 33.315033, 49.447742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114052, 33.417923, 49.581371>,  <30.398642, 33.589405, 49.804089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114052, 33.417923, 49.581371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599692, -0.042599, 0.799097,
		-0.366298, 0.902438, -0.226785,
		-0.711474, -0.428708, -0.556789,
		29.900610, 33.289310, 49.414333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803022, 34.013065, 49.920834>,  <30.398642, 33.589405, 49.804089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803022, 34.013065, 49.920834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629475, 33.691883, 49.757359>,  <29.525347, 33.499176, 49.659275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629475, 33.691883, 49.757359>,  <29.803022, 34.013065, 49.920834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629475, 33.691883, 49.757359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778886, 0.106265, 0.618097,
		-0.452873, 0.586495, -0.671513,
		-0.433869, -0.802952, -0.408688,
		29.499313, 33.450996, 49.634750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039053, 34.155334, 49.843136>,  <29.803022, 34.013065, 49.920834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039053, 34.155334, 49.843136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084908, 33.758316, 49.826611>,  <29.112421, 33.520103, 49.816696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084908, 33.758316, 49.826611>,  <29.039053, 34.155334, 49.843136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084908, 33.758316, 49.826611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848406, -0.119453, 0.515693,
		-0.516784, -0.024071, -0.855777,
		0.114638, -0.992548, -0.041309,
		29.119299, 33.460552, 49.814217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389870, 33.811295, 49.627815>,  <29.039053, 34.155334, 49.843136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389870, 33.811295, 49.627815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.617203, 33.536694, 49.809238>,  <28.753603, 33.371933, 49.918091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.617203, 33.536694, 49.809238>,  <28.389870, 33.811295, 49.627815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617203, 33.536694, 49.809238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809340, -0.367141, 0.458449,
		-0.148207, -0.627634, -0.764271,
		0.568333, -0.686501, 0.453557,
		28.787703, 33.330742, 49.945305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957678, 33.267036, 49.666245>,  <28.389870, 33.811295, 49.627815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957678, 33.267036, 49.666245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249331, 33.164822, 49.920193>,  <28.424322, 33.103493, 50.072563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249331, 33.164822, 49.920193>,  <27.957678, 33.267036, 49.666245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249331, 33.164822, 49.920193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682469, -0.340613, 0.646698,
		0.050989, -0.904811, -0.422750,
		0.729133, -0.255540, 0.634873,
		28.468071, 33.088158, 50.110653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048664, 32.426582, 49.739502>,  <27.957678, 33.267036, 49.666245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048664, 32.426582, 49.739502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135057, 32.650173, 50.059727>,  <28.186893, 32.784328, 50.251862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135057, 32.650173, 50.059727>,  <28.048664, 32.426582, 49.739502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135057, 32.650173, 50.059727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662388, -0.518500, 0.540740,
		0.717351, -0.647073, 0.258271,
		0.215985, 0.558976, 0.800560,
		28.199852, 32.817867, 50.299896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103394, 31.978384, 50.381618>,  <28.048664, 32.426582, 49.739502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103394, 31.978384, 50.381618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989531, 32.349560, 50.477871>,  <27.921213, 32.572266, 50.535622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989531, 32.349560, 50.477871>,  <28.103394, 31.978384, 50.381618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989531, 32.349560, 50.477871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745944, -0.372071, 0.552386,
		0.602111, -0.022257, 0.798102,
		-0.284656, 0.927938, 0.240630,
		27.904133, 32.627941, 50.550060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597307, 31.815899, 50.791794>,  <28.103394, 31.978384, 50.381618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597307, 31.815899, 50.791794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539780, 32.199646, 50.888897>,  <27.505262, 32.429893, 50.947159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539780, 32.199646, 50.888897>,  <27.597307, 31.815899, 50.791794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539780, 32.199646, 50.888897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815273, -0.253913, 0.520440,
		0.560933, -0.123067, 0.818663,
		-0.143820, 0.959366, 0.242761,
		27.496634, 32.487457, 50.961727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553720, 31.891737, 51.479416>,  <27.597307, 31.815899, 50.791794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553720, 31.891737, 51.479416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340775, 32.198929, 51.336983>,  <27.213007, 32.383244, 51.251522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340775, 32.198929, 51.336983>,  <27.553720, 31.891737, 51.479416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340775, 32.198929, 51.336983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696092, -0.157782, 0.700400,
		0.481710, 0.620733, 0.618583,
		-0.532363, 0.767981, -0.356082,
		27.181067, 32.429321, 51.230160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927322, 31.739981, 52.163792>,  <27.553720, 31.891737, 51.479416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927322, 31.739981, 52.163792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000946, 31.493382, 51.857574>,  <28.045120, 31.345423, 51.673843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000946, 31.493382, 51.857574>,  <27.927322, 31.739981, 52.163792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000946, 31.493382, 51.857574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880816, 0.449105, -0.149893,
		0.436217, -0.646713, 0.625682,
		0.184059, -0.616496, -0.765542,
		28.056164, 31.308434, 51.627911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799286, 30.894072, 51.998466>,  <27.927322, 31.739981, 52.163792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799286, 30.894072, 51.998466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888624, 30.508860, 51.938210>,  <27.942226, 30.277733, 51.902058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888624, 30.508860, 51.938210>,  <27.799286, 30.894072, 51.998466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888624, 30.508860, 51.938210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803671, 0.269385, -0.530609,
		0.551571, -0.002555, 0.834124,
		0.223345, -0.963029, -0.150638,
		27.955627, 30.219952, 51.893017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384804, 30.602921, 52.506466>,  <27.799286, 30.894072, 51.998466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384804, 30.602921, 52.506466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343016, 30.446674, 52.140621>,  <28.317942, 30.352926, 51.921116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343016, 30.446674, 52.140621>,  <28.384804, 30.602921, 52.506466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343016, 30.446674, 52.140621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864439, 0.419068, -0.277718,
		0.491763, -0.819636, 0.293882,
		-0.104471, -0.390614, -0.914607,
		28.311674, 30.329491, 51.866238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144730, 30.517826, 52.115501>,  <28.384804, 30.602921, 52.506466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144730, 30.517826, 52.115501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903910, 30.424200, 51.810150>,  <28.759418, 30.368025, 51.626938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903910, 30.424200, 51.810150>,  <29.144730, 30.517826, 52.115501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903910, 30.424200, 51.810150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708448, 0.284396, -0.645926,
		0.368291, -0.929695, -0.005397,
		-0.602049, -0.234065, -0.763381,
		28.723295, 30.353981, 51.581135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579271, 30.050032, 51.575867>,  <29.144730, 30.517826, 52.115501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579271, 30.050032, 51.575867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278141, 30.242113, 51.395798>,  <29.097464, 30.357363, 51.287754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278141, 30.242113, 51.395798>,  <29.579271, 30.050032, 51.575867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278141, 30.242113, 51.395798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534801, 0.047533, -0.843640,
		-0.383723, -0.875867, -0.292599,
		-0.752824, 0.480206, -0.450175,
		29.052294, 30.386175, 51.260746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450758, 29.728964, 50.935040>,  <29.579271, 30.050032, 51.575867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450758, 29.728964, 50.935040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320580, 30.106152, 50.907047>,  <29.242472, 30.332464, 50.890251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320580, 30.106152, 50.907047>,  <29.450758, 29.728964, 50.935040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320580, 30.106152, 50.907047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377989, 0.061904, -0.923738,
		-0.866723, -0.327079, -0.376578,
		-0.325447, 0.942967, -0.069979,
		29.222946, 30.389042, 50.886055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089651, 29.723202, 50.231255>,  <29.450758, 29.728964, 50.935040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089651, 29.723202, 50.231255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164890, 30.101076, 50.338726>,  <29.210033, 30.327801, 50.403210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164890, 30.101076, 50.338726>,  <29.089651, 29.723202, 50.231255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164890, 30.101076, 50.338726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422241, 0.169211, -0.890551,
		-0.886754, 0.280959, -0.367056,
		0.188098, 0.944685, 0.268681,
		29.221319, 30.384481, 50.419331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796783, 30.133909, 49.690834>,  <29.089651, 29.723202, 50.231255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796783, 30.133909, 49.690834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082348, 30.353071, 49.865250>,  <29.253687, 30.484570, 49.969898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082348, 30.353071, 49.865250>,  <28.796783, 30.133909, 49.690834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082348, 30.353071, 49.865250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393543, 0.201102, -0.897041,
		-0.579182, 0.812008, -0.072056,
		0.713913, 0.547907, 0.436035,
		29.296522, 30.517443, 49.996059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753525, 30.801027, 49.454929>,  <28.796783, 30.133909, 49.690834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753525, 30.801027, 49.454929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135242, 30.766308, 49.569328>,  <29.364273, 30.745476, 49.637966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135242, 30.766308, 49.569328>,  <28.753525, 30.801027, 49.454929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135242, 30.766308, 49.569328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298244, 0.338759, -0.892352,
		-0.019428, 0.936861, 0.349163,
		0.954292, -0.086799, 0.285994,
		29.421530, 30.740269, 49.655128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005508, 31.408560, 49.370335>,  <28.753525, 30.801027, 49.454929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005508, 31.408560, 49.370335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314102, 31.154318, 49.381775>,  <29.499258, 31.001772, 49.388641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314102, 31.154318, 49.381775>,  <29.005508, 31.408560, 49.370335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314102, 31.154318, 49.381775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278242, 0.296611, -0.913566,
		0.572183, 0.712761, 0.405683,
		0.771484, -0.635605, 0.028604,
		29.545547, 30.963636, 49.390354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551334, 31.750319, 49.030407>,  <29.005508, 31.408560, 49.370335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551334, 31.750319, 49.030407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705353, 31.381706, 49.010315>,  <29.797764, 31.160540, 48.998260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705353, 31.381706, 49.010315>,  <29.551334, 31.750319, 49.030407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705353, 31.381706, 49.010315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339952, 0.192221, -0.920589,
		0.858006, 0.337391, 0.387289,
		0.385044, -0.921530, -0.050230,
		29.820866, 31.105247, 48.995247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222395, 31.891096, 48.778008>,  <29.551334, 31.750319, 49.030407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222395, 31.891096, 48.778008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128580, 31.509163, 48.705032>,  <30.072290, 31.280003, 48.661247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128580, 31.509163, 48.705032>,  <30.222395, 31.891096, 48.778008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128580, 31.509163, 48.705032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408150, 0.073602, -0.909943,
		0.882273, -0.287876, 0.372454,
		-0.234537, -0.954835, -0.182433,
		30.058218, 31.222712, 48.650303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913294, 31.709150, 48.530903>,  <30.222395, 31.891096, 48.778008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913294, 31.709150, 48.530903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656269, 31.426432, 48.412548>,  <30.502054, 31.256800, 48.341534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656269, 31.426432, 48.412548>,  <30.913294, 31.709150, 48.530903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656269, 31.426432, 48.412548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539390, -0.142971, -0.829830,
		0.544219, -0.692817, 0.473108,
		-0.642560, -0.706799, -0.295891,
		30.463501, 31.214392, 48.323780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304190, 31.159372, 48.342087>,  <30.913294, 31.709150, 48.530903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304190, 31.159372, 48.342087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947817, 31.101679, 48.169838>,  <30.733994, 31.067062, 48.066490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947817, 31.101679, 48.169838>,  <31.304190, 31.159372, 48.342087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947817, 31.101679, 48.169838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444500, -0.082695, -0.891954,
		0.093043, -0.986082, 0.137789,
		-0.890934, -0.144237, -0.430619,
		30.680536, 31.058409, 48.040653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391054, 30.565256, 47.901737>,  <31.304190, 31.159372, 48.342087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391054, 30.565256, 47.901737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058485, 30.732033, 47.754826>,  <30.858944, 30.832098, 47.666679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058485, 30.732033, 47.754826>,  <31.391054, 30.565256, 47.901737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058485, 30.732033, 47.754826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372618, -0.071962, -0.925191,
		-0.412181, -0.906080, -0.095529,
		-0.831422, 0.416942, -0.367283,
		30.809059, 30.857115, 47.644642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312561, 30.266512, 47.333736>,  <31.391054, 30.565256, 47.901737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312561, 30.266512, 47.333736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068760, 30.577475, 47.271576>,  <30.922480, 30.764051, 47.234280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068760, 30.577475, 47.271576>,  <31.312561, 30.266512, 47.333736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068760, 30.577475, 47.271576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332491, 0.072715, -0.940299,
		-0.719694, -0.624782, -0.302800,
		-0.609500, 0.777406, -0.155402,
		30.885910, 30.810696, 47.224957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962263, 30.065483, 46.757992>,  <31.312561, 30.266512, 47.333736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962263, 30.065483, 46.757992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907707, 30.461739, 46.755760>,  <30.874973, 30.699492, 46.754421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907707, 30.461739, 46.755760>,  <30.962263, 30.065483, 46.757992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907707, 30.461739, 46.755760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245016, 0.028277, -0.969107,
		-0.959877, -0.133544, -0.246579,
		-0.136391, 0.990639, -0.005578,
		30.866791, 30.758930, 46.754086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592731, 30.204329, 46.121910>,  <30.962263, 30.065483, 46.757992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592731, 30.204329, 46.121910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735332, 30.557289, 46.244724>,  <30.820894, 30.769066, 46.318413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735332, 30.557289, 46.244724>,  <30.592731, 30.204329, 46.121910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735332, 30.557289, 46.244724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443866, 0.129211, -0.886729,
		-0.822124, 0.452404, -0.345604,
		0.356504, 0.882403, 0.307034,
		30.842283, 30.822010, 46.336834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354486, 30.702154, 45.648579>,  <30.592731, 30.204329, 46.121910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354486, 30.702154, 45.648579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678394, 30.881411, 45.800076>,  <30.872740, 30.988964, 45.890972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678394, 30.881411, 45.800076>,  <30.354486, 30.702154, 45.648579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678394, 30.881411, 45.800076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328077, 0.189341, -0.925481,
		-0.486456, 0.873683, 0.006299,
		0.809769, 0.448139, 0.378742,
		30.921326, 31.015852, 45.913696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274773, 31.295517, 45.344193>,  <30.354486, 30.702154, 45.648579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274773, 31.295517, 45.344193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648663, 31.235613, 45.473103>,  <30.872995, 31.199671, 45.550449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648663, 31.235613, 45.473103>,  <30.274773, 31.295517, 45.344193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648663, 31.235613, 45.473103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353657, 0.302938, -0.884961,
		0.034901, 0.941170, 0.336127,
		0.934724, -0.149759, 0.322279,
		30.929079, 31.190685, 45.569786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593315, 31.872433, 45.149860>,  <30.274773, 31.295517, 45.344193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593315, 31.872433, 45.149860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878010, 31.593378, 45.182686>,  <31.048826, 31.425945, 45.202381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878010, 31.593378, 45.182686>,  <30.593315, 31.872433, 45.149860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878010, 31.593378, 45.182686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313127, 0.210521, -0.926084,
		0.628794, 0.684824, 0.368285,
		0.711737, -0.697636, 0.082063,
		31.091530, 31.384087, 45.207306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023243, 32.135040, 44.555244>,  <30.593315, 31.872433, 45.149860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023243, 32.135040, 44.555244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157770, 31.777010, 44.672367>,  <31.238487, 31.562193, 44.742641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157770, 31.777010, 44.672367>,  <31.023243, 32.135040, 44.555244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157770, 31.777010, 44.672367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462292, -0.113966, -0.879373,
		0.820473, 0.431112, 0.375456,
		0.336319, -0.895072, 0.292806,
		31.258665, 31.508488, 44.760208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761036, 32.092144, 44.363941>,  <31.023243, 32.135040, 44.555244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761036, 32.092144, 44.363941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629040, 31.715326, 44.388119>,  <31.549841, 31.489235, 44.402626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629040, 31.715326, 44.388119>,  <31.761036, 32.092144, 44.363941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629040, 31.715326, 44.388119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224999, -0.140682, -0.964149,
		0.916777, -0.304561, 0.258384,
		-0.329992, -0.942046, 0.060448,
		31.530043, 31.432713, 44.406254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291298, 31.707203, 43.959366>,  <31.761036, 32.092144, 44.363941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291298, 31.707203, 43.959366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979118, 31.458979, 43.989834>,  <31.791811, 31.310043, 44.008114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979118, 31.458979, 43.989834>,  <32.291298, 31.707203, 43.959366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979118, 31.458979, 43.989834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165176, -0.322156, -0.932166,
		0.603006, -0.714925, 0.353928,
		-0.780449, -0.620562, 0.076173,
		31.744984, 31.272810, 44.012684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484669, 30.965086, 43.738319>,  <32.291298, 31.707203, 43.959366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484669, 30.965086, 43.738319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091064, 31.021042, 43.694229>,  <31.854902, 31.054615, 43.667774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091064, 31.021042, 43.694229>,  <32.484669, 30.965086, 43.738319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091064, 31.021042, 43.694229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024990, -0.504348, -0.863139,
		-0.176336, -0.852094, 0.492789,
		-0.984013, 0.139888, -0.110229,
		31.795860, 31.063009, 43.661160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356239, 30.401577, 43.374069>,  <32.484669, 30.965086, 43.738319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356239, 30.401577, 43.374069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043312, 30.643627, 43.315006>,  <31.855556, 30.788858, 43.279568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043312, 30.643627, 43.315006>,  <32.356239, 30.401577, 43.374069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043312, 30.643627, 43.315006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006038, -0.244409, -0.969653,
		-0.622853, -0.757683, 0.194859,
		-0.782316, 0.605128, -0.147656,
		31.808617, 30.825165, 43.270710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842052, 30.057610, 42.899990>,  <32.356239, 30.401577, 43.374069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842052, 30.057610, 42.899990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738552, 30.443817, 42.888550>,  <31.676453, 30.675543, 42.881687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738552, 30.443817, 42.888550>,  <31.842052, 30.057610, 42.899990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738552, 30.443817, 42.888550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071507, -0.048673, -0.996252,
		-0.963294, -0.255734, 0.081636,
		-0.258749, 0.965521, -0.028599,
		31.660927, 30.733473, 42.879971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280262, 30.096159, 42.381420>,  <31.842052, 30.057610, 42.899990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280262, 30.096159, 42.381420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431736, 30.466349, 42.385345>,  <31.522621, 30.688461, 42.387703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431736, 30.466349, 42.385345>,  <31.280262, 30.096159, 42.381420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431736, 30.466349, 42.385345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050512, -0.010074, -0.998673,
		-0.924146, 0.378679, -0.050563,
		0.378686, 0.925473, 0.009818,
		31.545341, 30.743990, 42.388290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082634, 30.420927, 41.744278>,  <31.280262, 30.096159, 42.381420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082634, 30.420927, 41.744278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352875, 30.685192, 41.875172>,  <31.515018, 30.843752, 41.953709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352875, 30.685192, 41.875172>,  <31.082634, 30.420927, 41.744278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352875, 30.685192, 41.875172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086202, 0.370026, -0.925014,
		-0.732210, 0.653149, 0.193040,
		0.675602, 0.660664, 0.327239,
		31.555555, 30.883390, 41.973343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759777, 31.025509, 41.525261>,  <31.082634, 30.420927, 41.744278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759777, 31.025509, 41.525261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156549, 31.061346, 41.561150>,  <31.394613, 31.082850, 41.582684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156549, 31.061346, 41.561150>,  <30.759777, 31.025509, 41.525261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156549, 31.061346, 41.561150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060457, 0.287799, -0.955781,
		-0.111454, 0.953491, 0.280060,
		0.991929, 0.089594, 0.089721,
		31.454128, 31.088224, 41.588066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859968, 31.525700, 41.123436>,  <30.759777, 31.025509, 41.525261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859968, 31.525700, 41.123436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231691, 31.382240, 41.158661>,  <31.454725, 31.296164, 41.179798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231691, 31.382240, 41.158661>,  <30.859968, 31.525700, 41.123436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231691, 31.382240, 41.158661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208846, 0.313704, -0.926268,
		0.304579, 0.879182, 0.366431,
		0.929309, -0.358650, 0.088066,
		31.510485, 31.274645, 41.185081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356724, 32.123245, 40.978298>,  <30.859968, 31.525700, 41.123436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356724, 32.123245, 40.978298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571640, 31.790419, 40.923176>,  <31.700590, 31.590723, 40.890102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571640, 31.790419, 40.923176>,  <31.356724, 32.123245, 40.978298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571640, 31.790419, 40.923176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097423, 0.223525, -0.969817,
		0.837753, 0.507646, 0.201159,
		0.537288, -0.832065, -0.137802,
		31.732826, 31.540800, 40.881836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977703, 32.368847, 40.731052>,  <31.356724, 32.123245, 40.978298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977703, 32.368847, 40.731052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989931, 31.983599, 40.624119>,  <31.997269, 31.752449, 40.559959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989931, 31.983599, 40.624119>,  <31.977703, 32.368847, 40.731052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989931, 31.983599, 40.624119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371189, 0.259269, -0.891627,
		0.928054, -0.071971, 0.365426,
		0.030573, -0.963120, -0.267331,
		31.999104, 31.694662, 40.543919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725071, 32.275246, 40.428616>,  <31.977703, 32.368847, 40.731052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725071, 32.275246, 40.428616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475597, 31.992790, 40.294518>,  <32.325912, 31.823317, 40.214058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475597, 31.992790, 40.294518>,  <32.725071, 32.275246, 40.428616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475597, 31.992790, 40.294518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320722, 0.159945, -0.933571,
		0.712852, -0.689771, 0.126720,
		-0.623682, -0.706140, -0.335241,
		32.288494, 31.780949, 40.193947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144623, 31.820627, 39.922523>,  <32.725071, 32.275246, 40.428616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144623, 31.820627, 39.922523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756931, 31.759670, 39.845192>,  <32.524319, 31.723097, 39.798794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756931, 31.759670, 39.845192>,  <33.144623, 31.820627, 39.922523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756931, 31.759670, 39.845192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172831, 0.137993, -0.975237,
		0.175305, -0.978638, -0.107407,
		-0.969225, -0.152401, -0.193329,
		32.466164, 31.713953, 39.787193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060818, 31.345175, 39.280602>,  <33.144623, 31.820627, 39.922523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060818, 31.345175, 39.280602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713402, 31.541874, 39.305363>,  <32.504951, 31.659893, 39.320221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713402, 31.541874, 39.305363>,  <33.060818, 31.345175, 39.280602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713402, 31.541874, 39.305363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017800, 0.093867, -0.995426,
		-0.495307, -0.865665, -0.072774,
		-0.868536, 0.491746, 0.061902,
		32.452843, 31.689398, 39.323933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715508, 31.204254, 38.711308>,  <33.060818, 31.345175, 39.280602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715508, 31.204254, 38.711308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530540, 31.544800, 38.810379>,  <32.419559, 31.749128, 38.869823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530540, 31.544800, 38.810379>,  <32.715508, 31.204254, 38.711308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530540, 31.544800, 38.810379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098782, 0.228137, -0.968605,
		-0.881143, -0.472366, -0.021395,
		-0.462417, 0.851366, 0.247682,
		32.391815, 31.800209, 38.884686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022907, 31.188822, 38.345425>,  <32.715508, 31.204254, 38.711308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022907, 31.188822, 38.345425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115948, 31.568531, 38.430065>,  <32.171772, 31.796356, 38.480850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115948, 31.568531, 38.430065>,  <32.022907, 31.188822, 38.345425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115948, 31.568531, 38.430065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266225, 0.271405, -0.924913,
		-0.935426, 0.158800, 0.315850,
		0.232599, 0.949274, 0.211603,
		32.185726, 31.853313, 38.493546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699671, 31.566608, 37.815655>,  <32.022907, 31.188822, 38.345425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699671, 31.566608, 37.815655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927031, 31.856318, 37.971783>,  <32.063446, 32.030144, 38.065460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927031, 31.856318, 37.971783>,  <31.699671, 31.566608, 37.815655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927031, 31.856318, 37.971783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196440, 0.580153, -0.790464,
		-0.798957, 0.372626, 0.472036,
		0.568401, 0.724273, 0.390319,
		32.097549, 32.073601, 38.088879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301352, 32.207390, 37.771217>,  <31.699671, 31.566608, 37.815655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301352, 32.207390, 37.771217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689621, 32.300900, 37.793629>,  <31.922583, 32.357006, 37.807076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689621, 32.300900, 37.793629>,  <31.301352, 32.207390, 37.771217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689621, 32.300900, 37.793629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126745, 0.695712, -0.707051,
		-0.204271, 0.679215, 0.704940,
		0.970675, 0.233777, 0.056026,
		31.980824, 32.371033, 37.810436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274343, 32.902805, 37.757771>,  <31.301352, 32.207390, 37.771217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274343, 32.902805, 37.757771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637236, 32.784710, 37.637924>,  <31.854971, 32.713852, 37.566017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637236, 32.784710, 37.637924>,  <31.274343, 32.902805, 37.757771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637236, 32.784710, 37.637924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056675, 0.620004, -0.782549,
		0.416801, 0.726932, 0.545754,
		0.907229, -0.295237, -0.299617,
		31.909405, 32.696140, 37.548038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526081, 33.537155, 37.452469>,  <31.274343, 32.902805, 37.757771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526081, 33.537155, 37.452469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800714, 33.263073, 37.355225>,  <31.965494, 33.098625, 37.296879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800714, 33.263073, 37.355225>,  <31.526081, 33.537155, 37.452469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800714, 33.263073, 37.355225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136980, 0.450296, -0.882310,
		0.714031, 0.572478, 0.403024,
		0.686583, -0.685203, -0.243107,
		32.006691, 33.057510, 37.282291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146889, 33.870571, 37.337013>,  <31.526081, 33.537155, 37.452469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146889, 33.870571, 37.337013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162575, 33.519306, 37.146309>,  <32.171986, 33.308548, 37.031887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162575, 33.519306, 37.146309>,  <32.146889, 33.870571, 37.337013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162575, 33.519306, 37.146309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342075, 0.460094, -0.819328,
		0.938854, -0.130953, 0.318441,
		0.039220, -0.878160, -0.476757,
		32.174339, 33.255859, 37.003281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881325, 33.842281, 36.989670>,  <32.146889, 33.870571, 37.337013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881325, 33.842281, 36.989670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620438, 33.588875, 36.823170>,  <32.463905, 33.436832, 36.723270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620438, 33.588875, 36.823170>,  <32.881325, 33.842281, 36.989670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620438, 33.588875, 36.823170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406996, 0.170592, -0.897359,
		0.639501, -0.754688, 0.146575,
		-0.652221, -0.633518, -0.416249,
		32.424770, 33.398819, 36.698296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246216, 33.377705, 36.532654>,  <32.881325, 33.842281, 36.989670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246216, 33.377705, 36.532654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861595, 33.403313, 36.425823>,  <32.630825, 33.418678, 36.361725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861595, 33.403313, 36.425823>,  <33.246216, 33.377705, 36.532654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861595, 33.403313, 36.425823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272820, 0.334384, -0.902085,
		0.031556, -0.940260, -0.338991,
		-0.961548, 0.064017, -0.267073,
		32.573132, 33.422516, 36.345699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983406, 33.608669, 36.625740>,  <33.246216, 33.377705, 36.532654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983406, 33.608669, 36.625740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364010, 33.581448, 36.505745>,  <34.592373, 33.565117, 36.433746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364010, 33.581448, 36.505745>,  <33.983406, 33.608669, 36.625740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364010, 33.581448, 36.505745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240800, -0.442073, 0.864052,
		-0.191416, -0.894394, -0.404251,
		0.951512, -0.068049, -0.299990,
		34.649464, 33.561031, 36.415749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260201, 33.019760, 36.820881>,  <33.983406, 33.608669, 36.625740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260201, 33.019760, 36.820881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573570, 33.265797, 36.785309>,  <34.761593, 33.413418, 36.763966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573570, 33.265797, 36.785309>,  <34.260201, 33.019760, 36.820881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573570, 33.265797, 36.785309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329095, -0.289189, 0.898925,
		0.527206, -0.733505, -0.428982,
		0.783423, 0.615094, -0.088931,
		34.808598, 33.450325, 36.758629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893444, 32.623146, 36.969658>,  <34.260201, 33.019760, 36.820881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893444, 32.623146, 36.969658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979298, 33.010387, 37.021362>,  <35.030807, 33.242733, 37.052383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979298, 33.010387, 37.021362>,  <34.893444, 32.623146, 36.969658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979298, 33.010387, 37.021362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498976, -0.222456, 0.837578,
		0.839617, -0.115271, -0.530806,
		0.214630, 0.968104, 0.129261,
		35.043686, 33.300819, 37.060139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559605, 32.600357, 37.251137>,  <34.893444, 32.623146, 36.969658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559605, 32.600357, 37.251137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469082, 32.981213, 37.333321>,  <35.414768, 33.209728, 37.382629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469082, 32.981213, 37.333321>,  <35.559605, 32.600357, 37.251137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469082, 32.981213, 37.333321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432369, -0.090821, 0.897111,
		0.872836, 0.291855, -0.391123,
		-0.226305, 0.952141, 0.205461,
		35.401192, 33.266853, 37.394958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126175, 32.954350, 37.491283>,  <35.559605, 32.600357, 37.251137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126175, 32.954350, 37.491283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813274, 33.146416, 37.650040>,  <35.625534, 33.261654, 37.745293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813274, 33.146416, 37.650040>,  <36.126175, 32.954350, 37.491283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813274, 33.146416, 37.650040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396976, -0.106775, 0.911597,
		0.480094, 0.870656, -0.107088,
		-0.782253, 0.480163, 0.396892,
		35.578598, 33.290466, 37.769108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370857, 33.441952, 38.130608>,  <36.126175, 32.954350, 37.491283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370857, 33.441952, 38.130608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974030, 33.437313, 38.180664>,  <35.735931, 33.434532, 38.210697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974030, 33.437313, 38.180664>,  <36.370857, 33.441952, 38.130608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974030, 33.437313, 38.180664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125431, -0.153589, 0.980142,
		0.007856, 0.988067, 0.153825,
		-0.992071, -0.011595, 0.125141,
		35.676407, 33.433834, 38.218204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252995, 33.971706, 38.659245>,  <36.370857, 33.441952, 38.130608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252995, 33.971706, 38.659245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909874, 33.767254, 38.680832>,  <35.704002, 33.644581, 38.693787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909874, 33.767254, 38.680832>,  <36.252995, 33.971706, 38.659245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909874, 33.767254, 38.680832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195053, -0.226581, 0.954262,
		-0.475526, 0.829098, 0.294061,
		-0.857805, -0.511134, 0.053972,
		35.652531, 33.613914, 38.697025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022137, 34.078789, 39.246471>,  <36.252995, 33.971706, 38.659245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022137, 34.078789, 39.246471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804024, 33.754070, 39.162888>,  <35.673157, 33.559238, 39.112740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804024, 33.754070, 39.162888>,  <36.022137, 34.078789, 39.246471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804024, 33.754070, 39.162888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060572, -0.286783, 0.956079,
		-0.836062, 0.508674, 0.205549,
		-0.545280, -0.811792, -0.208957,
		35.640438, 33.510532, 39.100201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421173, 34.105812, 39.800999>,  <36.022137, 34.078789, 39.246471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421173, 34.105812, 39.800999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469231, 33.739552, 39.647556>,  <35.498066, 33.519794, 39.555489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469231, 33.739552, 39.647556>,  <35.421173, 34.105812, 39.800999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469231, 33.739552, 39.647556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242648, -0.401773, 0.883007,
		-0.962646, -0.013004, -0.270450,
		0.120142, -0.915647, -0.383610,
		35.505272, 33.464859, 39.532475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915722, 33.712360, 40.083675>,  <35.421173, 34.105812, 39.800999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915722, 33.712360, 40.083675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181362, 33.442955, 39.953846>,  <35.340748, 33.281311, 39.875950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181362, 33.442955, 39.953846>,  <34.915722, 33.712360, 40.083675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181362, 33.442955, 39.953846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091346, -0.503973, 0.858876,
		-0.742038, -0.540735, -0.396213,
		0.664104, -0.673512, -0.324573,
		35.380592, 33.240902, 39.856476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558540, 33.101368, 40.182236>,  <34.915722, 33.712360, 40.083675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558540, 33.101368, 40.182236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951683, 33.029297, 40.166630>,  <35.187569, 32.986053, 40.157265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951683, 33.029297, 40.166630>,  <34.558540, 33.101368, 40.182236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951683, 33.029297, 40.166630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044908, -0.439262, 0.897236,
		-0.178801, -0.880105, -0.439825,
		0.982860, -0.180178, -0.039017,
		35.246540, 32.975243, 40.154926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501003, 32.472004, 40.396580>,  <34.558540, 33.101368, 40.182236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501003, 32.472004, 40.396580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864628, 32.626064, 40.460171>,  <35.082802, 32.718502, 40.498325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864628, 32.626064, 40.460171>,  <34.501003, 32.472004, 40.396580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864628, 32.626064, 40.460171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092813, -0.559119, 0.823876,
		0.406204, -0.734195, -0.544018,
		0.909057, 0.385154, 0.158973,
		35.137344, 32.741611, 40.507862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024956, 31.930679, 40.519691>,  <34.501003, 32.472004, 40.396580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024956, 31.930679, 40.519691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136669, 32.269512, 40.700558>,  <35.203697, 32.472813, 40.809078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136669, 32.269512, 40.700558>,  <35.024956, 31.930679, 40.519691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136669, 32.269512, 40.700558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003809, -0.471875, 0.881657,
		0.960200, -0.244514, -0.135015,
		0.279288, 0.847081, 0.452163,
		35.220455, 32.523636, 40.836208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341747, 31.788561, 41.167339>,  <35.024956, 31.930679, 40.519691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341747, 31.788561, 41.167339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332527, 32.184238, 41.225254>,  <35.326996, 32.421646, 41.260002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332527, 32.184238, 41.225254>,  <35.341747, 31.788561, 41.167339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332527, 32.184238, 41.225254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060544, -0.143179, 0.987843,
		0.997899, 0.031537, -0.056590,
		-0.023051, 0.989194, 0.144787,
		35.325611, 32.480995, 41.268692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834499, 31.923731, 41.557507>,  <35.341747, 31.788561, 41.167339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834499, 31.923731, 41.557507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597736, 32.240440, 41.617825>,  <35.455677, 32.430466, 41.654015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597736, 32.240440, 41.617825>,  <35.834499, 31.923731, 41.557507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597736, 32.240440, 41.617825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010755, -0.194835, 0.980777,
		0.805935, 0.578906, 0.123840,
		-0.591906, 0.791775, 0.150798,
		35.420166, 32.477974, 41.663063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081753, 32.365192, 42.205002>,  <35.834499, 31.923731, 41.557507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081753, 32.365192, 42.205002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688206, 32.398426, 42.141640>,  <35.452076, 32.418365, 42.103622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688206, 32.398426, 42.141640>,  <36.081753, 32.365192, 42.205002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688206, 32.398426, 42.141640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168411, -0.131883, 0.976855,
		0.060275, 0.987777, 0.143749,
		-0.983872, 0.083089, -0.158403,
		35.393044, 32.423351, 42.094120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857502, 32.814522, 42.661621>,  <36.081753, 32.365192, 42.205002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857502, 32.814522, 42.661621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530468, 32.610699, 42.554363>,  <35.334248, 32.488403, 42.490009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530468, 32.610699, 42.554363>,  <35.857502, 32.814522, 42.661621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530468, 32.610699, 42.554363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161040, -0.244745, 0.956120,
		-0.552824, 0.824895, 0.118042,
		-0.817589, -0.509557, -0.268142,
		35.285191, 32.457832, 42.473919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319061, 33.007412, 43.059395>,  <35.857502, 32.814522, 42.661621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319061, 33.007412, 43.059395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160809, 32.666946, 42.921410>,  <35.065857, 32.462666, 42.838619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160809, 32.666946, 42.921410>,  <35.319061, 33.007412, 43.059395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160809, 32.666946, 42.921410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384020, -0.187881, 0.904007,
		-0.834269, 0.490125, -0.252532,
		-0.395631, -0.851163, -0.344961,
		35.042118, 32.411598, 42.817921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631084, 33.037495, 43.384281>,  <35.319061, 33.007412, 43.059395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631084, 33.037495, 43.384281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667946, 32.656300, 43.268814>,  <34.690063, 32.427582, 43.199535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667946, 32.656300, 43.268814>,  <34.631084, 33.037495, 43.384281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667946, 32.656300, 43.268814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484635, -0.296176, 0.823049,
		-0.869848, 0.064051, -0.489143,
		0.092155, -0.952983, -0.288669,
		34.695591, 32.370403, 43.182213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978821, 32.714165, 43.313137>,  <34.631084, 33.037495, 43.384281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978821, 32.714165, 43.313137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212772, 32.394627, 43.369366>,  <34.353142, 32.202904, 43.403103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212772, 32.394627, 43.369366>,  <33.978821, 32.714165, 43.313137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212772, 32.394627, 43.369366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581080, -0.291739, 0.759760,
		-0.565923, -0.526049, -0.634826,
		0.584874, -0.798850, 0.140574,
		34.388233, 32.154972, 43.411537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583557, 32.093330, 43.588863>,  <33.978821, 32.714165, 43.313137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583557, 32.093330, 43.588863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944355, 31.980242, 43.719383>,  <34.160835, 31.912388, 43.797695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944355, 31.980242, 43.719383>,  <33.583557, 32.093330, 43.588863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944355, 31.980242, 43.719383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395618, -0.238613, 0.886877,
		-0.172879, -0.929049, -0.327078,
		0.901997, -0.282720, 0.326297,
		34.214954, 31.895424, 43.817272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527039, 31.444284, 43.936459>,  <33.583557, 32.093330, 43.588863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527039, 31.444284, 43.936459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859657, 31.598326, 44.096569>,  <34.059231, 31.690750, 44.192635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859657, 31.598326, 44.096569>,  <33.527039, 31.444284, 43.936459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859657, 31.598326, 44.096569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272623, -0.344899, 0.898177,
		0.483946, -0.856003, -0.181812,
		0.831549, 0.385103, 0.400278,
		34.109123, 31.713856, 44.216652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829742, 30.975834, 44.291809>,  <33.527039, 31.444284, 43.936459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829742, 30.975834, 44.291809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977715, 31.303068, 44.467941>,  <34.066498, 31.499409, 44.573620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977715, 31.303068, 44.467941>,  <33.829742, 30.975834, 44.291809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977715, 31.303068, 44.467941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387962, -0.294623, 0.873317,
		0.844180, -0.493893, 0.208398,
		0.369926, 0.818087, 0.440326,
		34.088692, 31.548494, 44.600040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075146, 30.820307, 44.971348>,  <33.829742, 30.975834, 44.291809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075146, 30.820307, 44.971348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997940, 31.209024, 45.025543>,  <33.951614, 31.442255, 45.058060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997940, 31.209024, 45.025543>,  <34.075146, 30.820307, 44.971348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997940, 31.209024, 45.025543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256610, -0.183275, 0.948979,
		0.947045, 0.148403, 0.284748,
		-0.193019, 0.971796, 0.135488,
		33.940033, 31.500563, 45.066189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342846, 30.875046, 45.659306>,  <34.075146, 30.820307, 44.971348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342846, 30.875046, 45.659306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115788, 31.198959, 45.599941>,  <33.979553, 31.393309, 45.564323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115788, 31.198959, 45.599941>,  <34.342846, 30.875046, 45.659306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115788, 31.198959, 45.599941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213976, 0.028953, 0.976410,
		0.794979, 0.586012, 0.156840,
		-0.567647, 0.809785, -0.148410,
		33.945492, 31.441895, 45.555420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510391, 31.280495, 46.148598>,  <34.342846, 30.875046, 45.659306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510391, 31.280495, 46.148598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167061, 31.457611, 46.044899>,  <33.961063, 31.563881, 45.982677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167061, 31.457611, 46.044899>,  <34.510391, 31.280495, 46.148598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167061, 31.457611, 46.044899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166155, 0.238174, 0.956904,
		0.485456, 0.864412, -0.130859,
		-0.858327, 0.442792, -0.259249,
		33.909561, 31.590448, 45.967125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511971, 31.954525, 46.471485>,  <34.510391, 31.280495, 46.148598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511971, 31.954525, 46.471485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129738, 31.852400, 46.412586>,  <33.900398, 31.791124, 46.377247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129738, 31.852400, 46.412586>,  <34.511971, 31.954525, 46.471485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129738, 31.852400, 46.412586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168589, 0.063708, 0.983625,
		-0.241751, 0.964757, -0.103921,
		-0.955581, -0.255312, -0.147246,
		33.843063, 31.775806, 46.368412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064568, 32.533012, 46.782181>,  <34.511971, 31.954525, 46.471485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064568, 32.533012, 46.782181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862125, 32.189064, 46.755383>,  <33.740662, 31.982697, 46.739304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862125, 32.189064, 46.755383>,  <34.064568, 32.533012, 46.782181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862125, 32.189064, 46.755383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130884, -0.000204, 0.991398,
		-0.852484, 0.510518, -0.112440,
		-0.506104, -0.859867, -0.066993,
		33.710293, 31.931105, 46.735283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414062, 32.585587, 47.087303>,  <34.064568, 32.533012, 46.782181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414062, 32.585587, 47.087303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480705, 32.191223, 47.093285>,  <33.520691, 31.954605, 47.096874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480705, 32.191223, 47.093285>,  <33.414062, 32.585587, 47.087303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480705, 32.191223, 47.093285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224021, -0.023079, 0.974311,
		-0.960238, -0.165678, -0.224709,
		0.166608, -0.985910, 0.014954,
		33.530689, 31.895451, 47.097771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870132, 32.237679, 47.426189>,  <33.414062, 32.585587, 47.087303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870132, 32.237679, 47.426189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161076, 31.967543, 47.474976>,  <33.335640, 31.805462, 47.504246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161076, 31.967543, 47.474976>,  <32.870132, 32.237679, 47.426189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161076, 31.967543, 47.474976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308239, -0.162709, 0.937291,
		-0.613144, -0.719336, -0.326512,
		0.727354, -0.675338, 0.121963,
		33.379280, 31.764942, 47.511566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547619, 31.714836, 47.783970>,  <32.870132, 32.237679, 47.426189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547619, 31.714836, 47.783970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936783, 31.627964, 47.815670>,  <33.170280, 31.575842, 47.834690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936783, 31.627964, 47.815670>,  <32.547619, 31.714836, 47.783970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936783, 31.627964, 47.815670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138613, -0.273650, 0.951789,
		-0.185022, -0.936989, -0.296341,
		0.972909, -0.217179, 0.079248,
		33.228657, 31.562811, 47.839443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655994, 31.164066, 48.230415>,  <32.547619, 31.714836, 47.783970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655994, 31.164066, 48.230415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021549, 31.325874, 48.244068>,  <33.240883, 31.422960, 48.252262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021549, 31.325874, 48.244068>,  <32.655994, 31.164066, 48.230415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021549, 31.325874, 48.244068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066341, -0.231772, 0.970505,
		0.400503, -0.884671, -0.238651,
		0.913891, 0.404523, 0.034135,
		33.295715, 31.447231, 48.254307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060379, 30.743435, 48.624771>,  <32.655994, 31.164066, 48.230415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060379, 30.743435, 48.624771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208866, 31.113894, 48.651451>,  <33.297958, 31.336168, 48.667458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208866, 31.113894, 48.651451>,  <33.060379, 30.743435, 48.624771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208866, 31.113894, 48.651451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059969, -0.047765, 0.997057,
		0.926607, -0.374127, 0.037809,
		0.371220, 0.926147, 0.066695,
		33.320232, 31.391737, 48.671459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720779, 30.680630, 49.018593>,  <33.060379, 30.743435, 48.624771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720779, 30.680630, 49.018593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629044, 31.069639, 49.034592>,  <33.574001, 31.303045, 49.044189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629044, 31.069639, 49.034592>,  <33.720779, 30.680630, 49.018593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629044, 31.069639, 49.034592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099087, -0.017552, 0.994924,
		0.968290, 0.232136, -0.092339,
		-0.229337, 0.972525, 0.039997,
		33.560242, 31.361397, 49.046593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098206, 30.824499, 49.616383>,  <33.720779, 30.680630, 49.018593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098206, 30.824499, 49.616383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863880, 31.139877, 49.541363>,  <33.723286, 31.329103, 49.496349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863880, 31.139877, 49.541363>,  <34.098206, 30.824499, 49.616383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863880, 31.139877, 49.541363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010935, 0.223707, 0.974595,
		0.810370, 0.572985, -0.122430,
		-0.585817, 0.788444, -0.187551,
		33.688133, 31.376410, 49.485096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376724, 31.413540, 49.949329>,  <34.098206, 30.824499, 49.616383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376724, 31.413540, 49.949329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994175, 31.504463, 49.875923>,  <33.764645, 31.559017, 49.831879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994175, 31.504463, 49.875923>,  <34.376724, 31.413540, 49.949329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994175, 31.504463, 49.875923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135562, 0.211136, 0.968011,
		0.258783, 0.950659, -0.171111,
		-0.956375, 0.227309, -0.183512,
		33.707264, 31.572657, 49.820869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251392, 31.944864, 50.308964>,  <34.376724, 31.413540, 49.949329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251392, 31.944864, 50.308964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887417, 31.793455, 50.241154>,  <33.669033, 31.702610, 50.200470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887417, 31.793455, 50.241154>,  <34.251392, 31.944864, 50.308964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887417, 31.793455, 50.241154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245307, 0.161603, 0.955881,
		-0.334430, 0.911375, -0.239902,
		-0.909935, -0.378525, -0.169521,
		33.614437, 31.679897, 50.190296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742821, 32.299500, 49.859428>,  <34.251392, 31.944864, 50.308964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742821, 32.299500, 49.859428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901527, 32.408096, 50.210171>,  <33.996750, 32.473255, 50.420616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901527, 32.408096, 50.210171>,  <33.742821, 32.299500, 49.859428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901527, 32.408096, 50.210171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672435, 0.564277, -0.478980,
		-0.624828, 0.779668, 0.041322,
		0.396762, 0.271494, 0.876853,
		34.020557, 32.489544, 50.473228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624493, 33.029934, 49.980503>,  <33.742821, 32.299500, 49.859428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624493, 33.029934, 49.980503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963264, 32.877831, 50.129162>,  <34.166527, 32.786568, 50.218357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963264, 32.877831, 50.129162>,  <33.624493, 33.029934, 49.980503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963264, 32.877831, 50.129162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530646, 0.648652, -0.545587,
		-0.033608, 0.659285, 0.751141,
		0.846927, -0.380254, 0.371647,
		34.217342, 32.763756, 50.240658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998894, 33.563915, 50.250660>,  <33.624493, 33.029934, 49.980503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998894, 33.563915, 50.250660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267029, 33.278862, 50.167904>,  <34.427910, 33.107830, 50.118252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267029, 33.278862, 50.167904>,  <33.998894, 33.563915, 50.250660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267029, 33.278862, 50.167904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635955, 0.695376, -0.334685,
		0.382372, 0.092781, 0.919339,
		0.670339, -0.712632, -0.206887,
		34.468132, 33.065071, 50.105839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686977, 33.983017, 50.365917>,  <33.998894, 33.563915, 50.250660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686977, 33.983017, 50.365917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815968, 33.650875, 50.184139>,  <34.893360, 33.451588, 50.075073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815968, 33.650875, 50.184139>,  <34.686977, 33.983017, 50.365917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815968, 33.650875, 50.184139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648979, 0.543434, -0.532453,
		0.689086, -0.123221, 0.714127,
		0.322471, -0.830359, -0.454440,
		34.912708, 33.401768, 50.047806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405407, 34.064362, 50.371994>,  <34.686977, 33.983017, 50.365917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405407, 34.064362, 50.371994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349617, 33.782848, 50.093357>,  <35.316143, 33.613941, 49.926174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349617, 33.782848, 50.093357>,  <35.405407, 34.064362, 50.371994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349617, 33.782848, 50.093357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685475, 0.439045, -0.580830,
		0.714612, -0.558505, 0.421190,
		-0.139475, -0.703783, -0.696589,
		35.307774, 33.571712, 49.884380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038170, 33.796593, 50.121674>,  <35.405407, 34.064362, 50.371994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038170, 33.796593, 50.121674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791714, 33.709824, 49.818802>,  <35.643841, 33.657761, 49.637081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791714, 33.709824, 49.818802>,  <36.038170, 33.796593, 50.121674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791714, 33.709824, 49.818802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702339, 0.283802, -0.652822,
		0.356501, -0.934024, -0.022508,
		-0.616139, -0.216923, -0.757177,
		35.606873, 33.644745, 49.591648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520424, 33.428226, 49.661285>,  <36.038170, 33.796593, 50.121674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520424, 33.428226, 49.661285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210304, 33.556580, 49.443680>,  <36.024231, 33.633591, 49.313118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210304, 33.556580, 49.443680>,  <36.520424, 33.428226, 49.661285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210304, 33.556580, 49.443680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629479, 0.322105, -0.707111,
		-0.051668, -0.890666, -0.451714,
		-0.775298, 0.320879, -0.544012,
		35.977715, 33.652843, 49.280476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435253, 32.981705, 49.011372>,  <36.520424, 33.428226, 49.661285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435253, 32.981705, 49.011372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264893, 33.337975, 48.947739>,  <36.162674, 33.551735, 48.909557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264893, 33.337975, 48.947739>,  <36.435253, 32.981705, 49.011372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264893, 33.337975, 48.947739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655638, 0.182657, -0.732649,
		-0.623494, -0.416338, -0.661754,
		-0.425904, 0.890673, -0.159082,
		36.137123, 33.605175, 48.900013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448734, 32.989883, 48.301300>,  <36.435253, 32.981705, 49.011372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448734, 32.989883, 48.301300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359753, 33.373047, 48.373890>,  <36.306362, 33.602943, 48.417442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359753, 33.373047, 48.373890>,  <36.448734, 32.989883, 48.301300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359753, 33.373047, 48.373890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444145, 0.265268, -0.855785,
		-0.867900, -0.109772, -0.484459,
		-0.222453, 0.957906, 0.181472,
		36.293018, 33.660419, 48.428333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136978, 33.284698, 47.681255>,  <36.448734, 32.989883, 48.301300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136978, 33.284698, 47.681255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286423, 33.592781, 47.888020>,  <36.376087, 33.777630, 48.012077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286423, 33.592781, 47.888020>,  <36.136978, 33.284698, 47.681255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286423, 33.592781, 47.888020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315313, 0.418626, -0.851663,
		-0.872349, 0.481178, -0.086454,
		0.373610, 0.770208, 0.516910,
		36.398506, 33.823845, 48.043091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986279, 33.788311, 47.278412>,  <36.136978, 33.284698, 47.681255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986279, 33.788311, 47.278412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256584, 33.951378, 47.524063>,  <36.418766, 34.049217, 47.671452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256584, 33.951378, 47.524063>,  <35.986279, 33.788311, 47.278412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256584, 33.951378, 47.524063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413234, 0.480392, -0.773603,
		-0.610393, 0.776551, 0.156170,
		0.675765, 0.407667, 0.614125,
		36.459312, 34.073677, 47.708302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915501, 34.503246, 47.226604>,  <35.986279, 33.788311, 47.278412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915501, 34.503246, 47.226604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294647, 34.438885, 47.336632>,  <36.522137, 34.400269, 47.402649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294647, 34.438885, 47.336632>,  <35.915501, 34.503246, 47.226604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294647, 34.438885, 47.336632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318556, 0.455230, -0.831437,
		0.008566, 0.875714, 0.482754,
		0.947865, -0.160907, 0.275065,
		36.579006, 34.390614, 47.419151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175705, 34.946331, 46.875870>,  <35.915501, 34.503246, 47.226604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175705, 34.946331, 46.875870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502483, 34.745998, 46.990253>,  <36.698551, 34.625797, 47.058884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502483, 34.745998, 46.990253>,  <36.175705, 34.946331, 46.875870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502483, 34.745998, 46.990253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489062, 0.338838, -0.803746,
		0.305648, 0.796465, 0.521750,
		0.816944, -0.500831, 0.285956,
		36.747566, 34.595749, 47.076038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714756, 35.375721, 46.719158>,  <36.175705, 34.946331, 46.875870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714756, 35.375721, 46.719158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863510, 35.004440, 46.723896>,  <36.952763, 34.781670, 46.726738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863510, 35.004440, 46.723896>,  <36.714756, 35.375721, 46.719158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863510, 35.004440, 46.723896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472831, 0.178430, -0.862899,
		0.798833, 0.326497, 0.505238,
		0.371883, -0.928204, 0.011842,
		36.975075, 34.725979, 46.727448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329502, 35.464954, 46.505867>,  <36.714756, 35.375721, 46.719158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329502, 35.464954, 46.505867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276718, 35.072880, 46.446774>,  <37.245049, 34.837635, 46.411316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276718, 35.072880, 46.446774>,  <37.329502, 35.464954, 46.505867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276718, 35.072880, 46.446774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306999, 0.101297, -0.946304,
		0.942517, -0.170230, 0.287548,
		-0.131961, -0.980184, -0.147734,
		37.237129, 34.778824, 46.402454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890491, 35.167789, 45.980423>,  <37.329502, 35.464954, 46.505867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890491, 35.167789, 45.980423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601223, 34.891769, 45.968678>,  <37.427662, 34.726158, 45.961632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601223, 34.891769, 45.968678>,  <37.890491, 35.167789, 45.980423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601223, 34.891769, 45.968678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156708, -0.122531, -0.980015,
		0.672658, -0.713318, 0.196746,
		-0.723169, -0.690047, -0.029361,
		37.384274, 34.684757, 45.959869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182831, 34.700050, 45.550690>,  <37.890491, 35.167789, 45.980423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182831, 34.700050, 45.550690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791569, 34.621998, 45.522034>,  <37.556812, 34.575169, 45.504841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791569, 34.621998, 45.522034>,  <38.182831, 34.700050, 45.550690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791569, 34.621998, 45.522034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085480, -0.063426, -0.994319,
		0.189475, -0.978725, 0.078720,
		-0.978158, -0.195128, -0.071643,
		37.498123, 34.563461, 45.500542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119762, 34.143349, 45.067680>,  <38.182831, 34.700050, 45.550690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119762, 34.143349, 45.067680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753548, 34.303898, 45.078205>,  <37.533817, 34.400227, 45.084518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753548, 34.303898, 45.078205>,  <38.119762, 34.143349, 45.067680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753548, 34.303898, 45.078205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078333, -0.113762, -0.990415,
		-0.394529, -0.908824, 0.135594,
		-0.915538, 0.401369, 0.026309,
		37.478886, 34.424309, 45.086098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733368, 33.665375, 44.693684>,  <38.119762, 34.143349, 45.067680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733368, 33.665375, 44.693684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541611, 34.016369, 44.688084>,  <37.426556, 34.226967, 44.684723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541611, 34.016369, 44.688084>,  <37.733368, 33.665375, 44.693684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541611, 34.016369, 44.688084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320946, -0.190144, -0.927814,
		-0.816810, -0.440292, 0.372780,
		-0.479391, 0.877490, -0.014001,
		37.397793, 34.279617, 44.683884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203537, 33.431408, 44.254559>,  <37.733368, 33.665375, 44.693684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203537, 33.431408, 44.254559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234585, 33.830166, 44.259872>,  <37.253212, 34.069420, 44.263062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234585, 33.830166, 44.259872>,  <37.203537, 33.431408, 44.254559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234585, 33.830166, 44.259872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356073, 0.040163, -0.933595,
		-0.931229, 0.067731, 0.358085,
		0.077615, 0.996895, 0.013284,
		37.257870, 34.129234, 44.263859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579151, 33.686085, 44.168308>,  <37.203537, 33.431408, 44.254559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579151, 33.686085, 44.168308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794945, 34.001331, 44.049763>,  <36.924423, 34.190479, 43.978634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794945, 34.001331, 44.049763>,  <36.579151, 33.686085, 44.168308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794945, 34.001331, 44.049763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480677, -0.000715, -0.876898,
		-0.691306, 0.615531, 0.378442,
		0.539487, 0.788113, -0.296366,
		36.956791, 34.237766, 43.960854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030834, 33.990490, 43.750004>,  <36.579151, 33.686085, 44.168308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030834, 33.990490, 43.750004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374916, 34.168907, 43.651131>,  <36.581364, 34.275955, 43.591808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374916, 34.168907, 43.651131>,  <36.030834, 33.990490, 43.750004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374916, 34.168907, 43.651131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190939, -0.167743, -0.967163,
		-0.472856, 0.879154, -0.059127,
		0.860203, 0.446039, -0.247183,
		36.632977, 34.302719, 43.576977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962181, 34.556690, 43.181370>,  <36.030834, 33.990490, 43.750004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962181, 34.556690, 43.181370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343060, 34.434998, 43.170238>,  <36.571587, 34.361980, 43.163559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343060, 34.434998, 43.170238>,  <35.962181, 34.556690, 43.181370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343060, 34.434998, 43.170238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050814, -0.067884, -0.996398,
		0.301245, 0.950177, -0.080098,
		0.952192, -0.304230, -0.027832,
		36.628716, 34.343727, 43.161888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105942, 34.924686, 42.548317>,  <35.962181, 34.556690, 43.181370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105942, 34.924686, 42.548317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374790, 34.639214, 42.627220>,  <36.536098, 34.467930, 42.674564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374790, 34.639214, 42.627220>,  <36.105942, 34.924686, 42.548317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374790, 34.639214, 42.627220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036183, -0.297750, -0.953958,
		0.739561, 0.634034, -0.225946,
		0.672117, -0.713685, 0.197262,
		36.576424, 34.425110, 42.686398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472225, 34.988628, 41.941086>,  <36.105942, 34.924686, 42.548317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472225, 34.988628, 41.941086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615082, 34.650455, 42.099922>,  <36.700798, 34.447552, 42.195225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.615082, 34.650455, 42.099922>,  <36.472225, 34.988628, 41.941086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615082, 34.650455, 42.099922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324338, -0.286429, -0.901534,
		0.875929, 0.450772, 0.171910,
		0.357146, -0.845437, 0.397094,
		36.722225, 34.396824, 42.219051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137516, 34.913914, 41.795872>,  <36.472225, 34.988628, 41.941086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137516, 34.913914, 41.795872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996239, 34.543407, 41.848469>,  <36.911472, 34.321106, 41.880028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996239, 34.543407, 41.848469>,  <37.137516, 34.913914, 41.795872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996239, 34.543407, 41.848469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524446, -0.312415, -0.792056,
		0.774733, -0.210790, 0.596118,
		-0.353194, -0.926264, 0.131490,
		36.890282, 34.265530, 41.887917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660126, 34.401833, 41.941582>,  <37.137516, 34.913914, 41.795872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660126, 34.401833, 41.941582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356960, 34.181713, 41.801445>,  <37.175060, 34.049641, 41.717361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356960, 34.181713, 41.801445>,  <37.660126, 34.401833, 41.941582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356960, 34.181713, 41.801445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607958, -0.401082, -0.685216,
		0.236559, -0.732326, 0.638544,
		-0.757910, -0.550302, -0.350344,
		37.129589, 34.016624, 41.696342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837067, 33.663841, 41.912907>,  <37.660126, 34.401833, 41.941582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837067, 33.663841, 41.912907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531605, 33.720905, 41.661041>,  <37.348328, 33.755146, 41.509922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531605, 33.720905, 41.661041>,  <37.837067, 33.663841, 41.912907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531605, 33.720905, 41.661041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507193, -0.470893, -0.721814,
		-0.399481, -0.870579, 0.287242,
		-0.763656, 0.142664, -0.629664,
		37.302509, 33.763706, 41.472141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820808, 33.032391, 41.591702>,  <37.837067, 33.663841, 41.912907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820808, 33.032391, 41.591702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618435, 33.291466, 41.363831>,  <37.497013, 33.446911, 41.227108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618435, 33.291466, 41.363831>,  <37.820808, 33.032391, 41.591702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618435, 33.291466, 41.363831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562832, -0.252590, -0.787031,
		-0.653648, -0.718815, -0.236748,
		-0.505930, 0.647690, -0.569677,
		37.466656, 33.485771, 41.192928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761032, 32.717274, 40.984100>,  <37.820808, 33.032391, 41.591702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761032, 32.717274, 40.984100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695534, 33.090637, 40.856392>,  <37.656235, 33.314655, 40.779766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695534, 33.090637, 40.856392>,  <37.761032, 32.717274, 40.984100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695534, 33.090637, 40.856392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509343, -0.197176, -0.837670,
		-0.844842, -0.299784, -0.443139,
		-0.163743, 0.933408, -0.319276,
		37.646412, 33.370659, 40.760609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820232, 32.710484, 40.219891>,  <37.761032, 32.717274, 40.984100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820232, 32.710484, 40.219891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857063, 33.100082, 40.302689>,  <37.879162, 33.333843, 40.352367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857063, 33.100082, 40.302689>,  <37.820232, 32.710484, 40.219891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857063, 33.100082, 40.302689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708033, 0.082126, -0.701387,
		-0.700150, 0.211145, -0.682061,
		0.092080, 0.973998, 0.206998,
		37.884686, 33.392281, 40.364788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845089, 33.013218, 39.532524>,  <37.820232, 32.710484, 40.219891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845089, 33.013218, 39.532524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980122, 33.315941, 39.756413>,  <38.061142, 33.497574, 39.890747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980122, 33.315941, 39.756413>,  <37.845089, 33.013218, 39.532524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980122, 33.315941, 39.756413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733072, 0.161628, -0.660668,
		-0.590463, 0.633344, -0.500229,
		0.337579, 0.756803, 0.559722,
		38.081394, 33.542980, 39.924328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046165, 33.540146, 39.188313>,  <37.845089, 33.013218, 39.532524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046165, 33.540146, 39.188313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264709, 33.676670, 39.494255>,  <38.395836, 33.758583, 39.677818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264709, 33.676670, 39.494255>,  <38.046165, 33.540146, 39.188313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264709, 33.676670, 39.494255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687897, 0.338088, -0.642257,
		-0.477794, 0.877044, -0.050066,
		0.546361, 0.341307, 0.764852,
		38.428619, 33.779060, 39.723709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171310, 34.291386, 39.091324>,  <38.046165, 33.540146, 39.188313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171310, 34.291386, 39.091324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461094, 34.136757, 39.319611>,  <38.634964, 34.043980, 39.456581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461094, 34.136757, 39.319611>,  <38.171310, 34.291386, 39.091324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461094, 34.136757, 39.319611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678472, 0.253618, -0.689459,
		0.121781, 0.886702, 0.446014,
		0.724462, -0.386571, 0.570717,
		38.678432, 34.020786, 39.490826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510799, 34.873302, 39.391300>,  <38.171310, 34.291386, 39.091324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510799, 34.873302, 39.391300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756218, 34.557507, 39.397892>,  <38.903469, 34.368031, 39.401848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756218, 34.557507, 39.397892>,  <38.510799, 34.873302, 39.391300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756218, 34.557507, 39.397892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701865, 0.535648, -0.469539,
		0.361867, 0.299652, 0.882758,
		0.613546, -0.789487, 0.016482,
		38.940281, 34.320660, 39.402836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026150, 35.184650, 39.127705>,  <38.510799, 34.873302, 39.391300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026150, 35.184650, 39.127705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174881, 34.813431, 39.136322>,  <39.264122, 34.590698, 39.141495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174881, 34.813431, 39.136322>,  <39.026150, 35.184650, 39.127705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174881, 34.813431, 39.136322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778019, 0.298890, -0.552586,
		0.506387, 0.222233, 0.833177,
		0.371831, -0.928050, 0.021547,
		39.286430, 34.535015, 39.142788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816185, 35.205750, 39.300571>,  <39.026150, 35.184650, 39.127705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816185, 35.205750, 39.300571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706486, 34.906132, 39.059334>,  <39.640667, 34.726360, 38.914589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706486, 34.906132, 39.059334>,  <39.816185, 35.205750, 39.300571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706486, 34.906132, 39.059334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561427, 0.384460, -0.732796,
		0.780761, -0.539564, 0.315094,
		-0.274249, -0.749040, -0.603097,
		39.624210, 34.681419, 38.878403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425423, 34.919456, 39.041821>,  <39.816185, 35.205750, 39.300571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425423, 34.919456, 39.041821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152264, 34.781136, 38.784424>,  <39.988369, 34.698143, 38.629986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152264, 34.781136, 38.784424>,  <40.425423, 34.919456, 39.041821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152264, 34.781136, 38.784424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550194, 0.336006, -0.764452,
		0.480563, -0.876084, -0.039201,
		-0.682895, -0.345799, -0.643488,
		39.947395, 34.677395, 38.591377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773678, 34.708660, 38.465546>,  <40.425423, 34.919456, 39.041821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773678, 34.708660, 38.465546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400745, 34.708988, 38.320900>,  <40.176987, 34.709187, 38.234112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400745, 34.708988, 38.320900>,  <40.773678, 34.708660, 38.465546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400745, 34.708988, 38.320900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343224, 0.316861, -0.884193,
		0.113857, -0.948472, -0.295699,
		-0.932327, 0.000820, -0.361615,
		40.121048, 34.709232, 38.212414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804966, 34.378586, 37.761326>,  <40.773678, 34.708660, 38.465546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804966, 34.378586, 37.761326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468021, 34.594082, 37.755939>,  <40.265854, 34.723381, 37.752708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468021, 34.594082, 37.755939>,  <40.804966, 34.378586, 37.761326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468021, 34.594082, 37.755939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297978, 0.444803, -0.844606,
		-0.449035, -0.715477, -0.535219,
		-0.842364, 0.538741, -0.013465,
		40.215313, 34.755703, 37.751900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520382, 34.210022, 37.089832>,  <40.804966, 34.378586, 37.761326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520382, 34.210022, 37.089832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382099, 34.551929, 37.244675>,  <40.299129, 34.757076, 37.337582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382099, 34.551929, 37.244675>,  <40.520382, 34.210022, 37.089832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382099, 34.551929, 37.244675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178135, 0.464825, -0.867298,
		-0.921280, -0.230871, -0.312957,
		-0.345704, 0.854772, 0.387108,
		40.278389, 34.808361, 37.360806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293365, 34.396019, 37.165237>,  <40.520382, 34.210022, 37.089832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293365, 34.396019, 37.165237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403290, 34.233978, 37.514034>,  <41.469242, 34.136753, 37.723312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403290, 34.233978, 37.514034>,  <41.293365, 34.396019, 37.165237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403290, 34.233978, 37.514034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067695, -0.912812, -0.402730,
		0.959113, 0.051644, -0.278271,
		0.274808, -0.405101, 0.871994,
		41.485733, 34.112450, 37.775631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843994, 34.005493, 37.091225>,  <41.293365, 34.396019, 37.165237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843994, 34.005493, 37.091225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657330, 33.827236, 37.396805>,  <41.545330, 33.720280, 37.580154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657330, 33.827236, 37.396805>,  <41.843994, 34.005493, 37.091225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657330, 33.827236, 37.396805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006815, -0.865563, -0.500754,
		0.884408, -0.228478, 0.406965,
		-0.466665, -0.445644, 0.763954,
		41.517330, 33.693542, 37.625992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333508, 33.683224, 37.417358>,  <41.843994, 34.005493, 37.091225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333508, 33.683224, 37.417358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979942, 33.504086, 37.363487>,  <41.767803, 33.396603, 37.331165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979942, 33.504086, 37.363487>,  <42.333508, 33.683224, 37.417358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979942, 33.504086, 37.363487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451735, -0.743134, -0.493647,
		0.120993, -0.497178, 0.859171,
		-0.883909, -0.447846, -0.134679,
		41.714771, 33.369732, 37.323082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641403, 34.310562, 37.560402>,  <42.333508, 33.683224, 37.417358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641403, 34.310562, 37.560402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460758, 34.249714, 37.208740>,  <42.352371, 34.213203, 36.997746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460758, 34.249714, 37.208740>,  <42.641403, 34.310562, 37.560402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460758, 34.249714, 37.208740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103143, 0.987653, -0.117915,
		0.886232, 0.037426, -0.461726,
		-0.451612, -0.152124, -0.879150,
		42.325275, 34.204075, 36.944996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021954, 34.652039, 37.068336>,  <42.641403, 34.310562, 37.560402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021954, 34.652039, 37.068336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639664, 34.616467, 36.956131>,  <42.410290, 34.595123, 36.888809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639664, 34.616467, 36.956131>,  <43.021954, 34.652039, 37.068336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639664, 34.616467, 36.956131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087433, 0.996010, -0.017872,
		0.280980, 0.007445, -0.959684,
		-0.955722, -0.088930, -0.280510,
		42.352947, 34.589787, 36.871979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915642, 35.174595, 36.705635>,  <43.021954, 34.652039, 37.068336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915642, 35.174595, 36.705635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535652, 35.058117, 36.750813>,  <42.307659, 34.988228, 36.777920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.535652, 35.058117, 36.750813>,  <42.915642, 35.174595, 36.705635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.535652, 35.058117, 36.750813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297188, 0.953978, -0.040063,
		-0.096082, -0.071625, -0.992793,
		-0.949972, -0.291197, 0.112947,
		42.250660, 34.970757, 36.784695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.568729, 35.533131, 37.084663>,  <42.915642, 35.174595, 36.705635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.568729, 35.533131, 37.084663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730537, 35.624725, 36.730507>,  <43.827621, 35.679684, 36.518013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730537, 35.624725, 36.730507>,  <43.568729, 35.533131, 37.084663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730537, 35.624725, 36.730507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477298, 0.878694, 0.009185,
		0.780095, 0.418881, 0.464748,
		0.404523, 0.228989, -0.885395,
		43.851894, 35.693420, 36.464890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851093, 36.243694, 37.155434>,  <43.568729, 35.533131, 37.084663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851093, 36.243694, 37.155434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796463, 36.140808, 36.772774>,  <43.763683, 36.079075, 36.543179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796463, 36.140808, 36.772774>,  <43.851093, 36.243694, 37.155434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.796463, 36.140808, 36.772774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430405, 0.885200, -0.176557,
		0.892243, 0.387636, -0.231604,
		-0.136576, -0.257216, -0.956654,
		43.755489, 36.063644, 36.485779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261295, 36.729401, 36.696152>,  <43.851093, 36.243694, 37.155434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261295, 36.729401, 36.696152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979156, 36.564240, 36.465672>,  <43.809875, 36.465141, 36.327385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979156, 36.564240, 36.465672>,  <44.261295, 36.729401, 36.696152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979156, 36.564240, 36.465672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429991, 0.895440, -0.115304,
		0.563558, 0.166430, -0.809137,
		-0.705344, -0.412902, -0.576196,
		43.767551, 36.440369, 36.292812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190174, 37.221592, 36.168827>,  <44.261295, 36.729401, 36.696152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190174, 37.221592, 36.168827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.861885, 36.998730, 36.118244>,  <43.664913, 36.865013, 36.087894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.861885, 36.998730, 36.118244>,  <44.190174, 37.221592, 36.168827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861885, 36.998730, 36.118244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501152, 0.808339, -0.308925,
		0.274338, -0.190169, -0.942642,
		-0.820723, -0.557157, -0.126454,
		43.615669, 36.831581, 36.080307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897217, 37.264782, 35.475964>,  <44.190174, 37.221592, 36.168827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897217, 37.264782, 35.475964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591534, 37.145233, 35.704578>,  <43.408123, 37.073502, 35.841747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.591534, 37.145233, 35.704578>,  <43.897217, 37.264782, 35.475964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.591534, 37.145233, 35.704578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507006, 0.826117, -0.245918,
		-0.398661, -0.477707, -0.782857,
		-0.764208, -0.298875, 0.571541,
		43.362270, 37.055573, 35.876041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233006, 37.432137, 35.126434>,  <43.897217, 37.264782, 35.475964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233006, 37.432137, 35.126434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150520, 37.399017, 35.516434>,  <43.101028, 37.379147, 35.750435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150520, 37.399017, 35.516434>,  <43.233006, 37.432137, 35.126434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150520, 37.399017, 35.516434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571343, 0.819108, -0.051282,
		-0.794381, -0.567633, -0.216220,
		-0.206217, -0.082799, 0.974997,
		43.088654, 37.374176, 35.808933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521141, 37.587994, 35.043739>,  <43.233006, 37.432137, 35.126434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521141, 37.587994, 35.043739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600590, 37.619240, 35.434521>,  <42.648258, 37.637989, 35.668991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600590, 37.619240, 35.434521>,  <42.521141, 37.587994, 35.043739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600590, 37.619240, 35.434521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571843, 0.818789, 0.050789,
		-0.795955, -0.568755, 0.207301,
		0.198623, 0.078118, 0.976958,
		42.660175, 37.642673, 35.727608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916168, 37.720715, 35.446182>,  <42.521141, 37.587994, 35.043739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916168, 37.720715, 35.446182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182987, 37.840866, 35.718895>,  <42.343079, 37.912956, 35.882523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182987, 37.840866, 35.718895>,  <41.916168, 37.720715, 35.446182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182987, 37.840866, 35.718895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500472, 0.858557, 0.111388,
		-0.551886, -0.415512, 0.723029,
		0.667045, 0.300382, 0.681778,
		42.383102, 37.930981, 35.923428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520451, 37.972416, 35.988083>,  <41.916168, 37.720715, 35.446182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520451, 37.972416, 35.988083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874302, 38.154209, 36.029781>,  <42.086613, 38.263287, 36.054802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874302, 38.154209, 36.029781>,  <41.520451, 37.972416, 35.988083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874302, 38.154209, 36.029781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463951, 0.835560, 0.294260,
		0.046631, -0.308678, 0.950023,
		0.884633, 0.454486, 0.104248,
		42.139690, 38.290554, 36.061054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506397, 38.294315, 36.604916>,  <41.520451, 37.972416, 35.988083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506397, 38.294315, 36.604916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797356, 38.492802, 36.415321>,  <41.971931, 38.611893, 36.301563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797356, 38.492802, 36.415321>,  <41.506397, 38.294315, 36.604916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797356, 38.492802, 36.415321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416939, 0.868194, 0.269073,
		0.545034, 0.001903, 0.838412,
		0.727392, 0.496220, -0.473989,
		42.015572, 38.641666, 36.273125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565090, 38.827221, 37.043190>,  <41.506397, 38.294315, 36.604916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565090, 38.827221, 37.043190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.728325, 38.940357, 36.695980>,  <41.826267, 39.008240, 36.487656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.728325, 38.940357, 36.695980>,  <41.565090, 38.827221, 37.043190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.728325, 38.940357, 36.695980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455554, 0.887054, 0.074871,
		0.791158, 0.364877, 0.490850,
		0.408092, 0.282843, -0.868021,
		41.850754, 39.025211, 36.435574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885498, 39.497456, 37.218575>,  <41.565090, 38.827221, 37.043190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885498, 39.497456, 37.218575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830822, 39.473755, 36.823040>,  <41.798016, 39.459534, 36.585720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830822, 39.473755, 36.823040>,  <41.885498, 39.497456, 37.218575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830822, 39.473755, 36.823040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324499, 0.945812, -0.011816,
		0.935957, 0.319263, -0.148511,
		-0.136691, -0.059251, -0.988840,
		41.789814, 39.455978, 36.526386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268730, 40.083805, 37.000534>,  <41.885498, 39.497456, 37.218575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268730, 40.083805, 37.000534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035316, 39.980183, 36.692669>,  <41.895267, 39.918011, 36.507950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035316, 39.980183, 36.692669>,  <42.268730, 40.083805, 37.000534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035316, 39.980183, 36.692669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355633, 0.933561, -0.044587,
		0.730079, 0.247700, -0.636890,
		-0.583531, -0.259052, -0.769665,
		41.860256, 39.902466, 36.461769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265987, 40.667976, 36.515091>,  <42.268730, 40.083805, 37.000534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265987, 40.667976, 36.515091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919456, 40.493172, 36.418354>,  <41.711536, 40.388287, 36.360313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919456, 40.493172, 36.418354>,  <42.265987, 40.667976, 36.515091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919456, 40.493172, 36.418354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427628, 0.899162, -0.092957,
		0.258079, 0.022887, -0.965853,
		-0.866331, -0.437016, -0.241842,
		41.659557, 40.362068, 36.345802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.946892, 41.026318, 35.953785>,  <42.265987, 40.667976, 36.515091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.946892, 41.026318, 35.953785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654335, 40.838631, 36.151733>,  <41.478802, 40.726017, 36.270500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654335, 40.838631, 36.151733>,  <41.946892, 41.026318, 35.953785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654335, 40.838631, 36.151733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530710, 0.847340, 0.019050,
		-0.428260, -0.248698, -0.868760,
		-0.731397, -0.469218, 0.494868,
		41.434917, 40.697865, 36.300194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375858, 41.453186, 35.806499>,  <41.946892, 41.026318, 35.953785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375858, 41.453186, 35.806499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230206, 41.234993, 36.108456>,  <41.142815, 41.104076, 36.289631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230206, 41.234993, 36.108456>,  <41.375858, 41.453186, 35.806499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230206, 41.234993, 36.108456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675318, 0.712813, 0.189325,
		-0.641368, -0.440851, -0.627931,
		-0.364133, -0.545480, 0.754890,
		41.120964, 41.071350, 36.334923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666130, 41.562260, 35.833332>,  <41.375858, 41.453186, 35.806499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666130, 41.562260, 35.833332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761841, 41.409088, 36.190231>,  <40.819267, 41.317184, 36.404373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761841, 41.409088, 36.190231>,  <40.666130, 41.562260, 35.833332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761841, 41.409088, 36.190231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686465, 0.583170, 0.434372,
		-0.686669, -0.716432, -0.123331,
		0.239275, -0.382932, 0.892250,
		40.833622, 41.294209, 36.457905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979805, 41.372547, 36.224167>,  <40.666130, 41.562260, 35.833332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979805, 41.372547, 36.224167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267208, 41.412914, 36.499432>,  <40.439651, 41.437134, 36.664589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267208, 41.412914, 36.499432>,  <39.979805, 41.372547, 36.224167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267208, 41.412914, 36.499432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641109, 0.479730, 0.599031,
		-0.269675, -0.871593, 0.409391,
		0.718508, 0.100920, 0.688158,
		40.482761, 41.443192, 36.705879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666607, 41.257511, 36.798576>,  <39.979805, 41.372547, 36.224167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666607, 41.257511, 36.798576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986984, 41.467724, 36.913334>,  <40.179211, 41.593853, 36.982189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986984, 41.467724, 36.913334>,  <39.666607, 41.257511, 36.798576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986984, 41.467724, 36.913334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586086, 0.590140, 0.555192,
		0.122466, -0.612819, 0.780676,
		0.800940, 0.525536, 0.286893,
		40.227264, 41.625385, 36.999401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581085, 41.362583, 37.500801>,  <39.666607, 41.257511, 36.798576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581085, 41.362583, 37.500801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831032, 41.653416, 37.387039>,  <39.980999, 41.827915, 37.318783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831032, 41.653416, 37.387039>,  <39.581085, 41.362583, 37.500801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831032, 41.653416, 37.387039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591139, 0.678576, 0.435992,
		0.509995, -0.104314, 0.853829,
		0.624868, 0.727085, -0.284406,
		40.018494, 41.871540, 37.301716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859833, 41.641701, 38.190472>,  <39.581085, 41.362583, 37.500801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859833, 41.641701, 38.190472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927753, 41.923225, 37.914555>,  <39.968506, 42.092140, 37.749004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927753, 41.923225, 37.914555>,  <39.859833, 41.641701, 38.190472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927753, 41.923225, 37.914555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543844, 0.650649, 0.529991,
		0.821827, 0.285145, 0.493247,
		0.169806, 0.703810, -0.689795,
		39.978695, 42.134369, 37.707615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262447, 42.176910, 38.512009>,  <39.859833, 41.641701, 38.190472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262447, 42.176910, 38.512009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151840, 42.381954, 38.186859>,  <40.085476, 42.504982, 37.991768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151840, 42.381954, 38.186859>,  <40.262447, 42.176910, 38.512009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151840, 42.381954, 38.186859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380395, 0.718390, 0.582422,
		0.882519, 0.470263, -0.003651,
		-0.276514, 0.512610, -0.812878,
		40.068886, 42.535736, 37.942997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.631653, 42.836761, 38.458279>,  <40.262447, 42.176910, 38.512009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.631653, 42.836761, 38.458279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270676, 42.865997, 38.288448>,  <40.054089, 42.883537, 38.186550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270676, 42.865997, 38.288448>,  <40.631653, 42.836761, 38.458279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270676, 42.865997, 38.288448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238723, 0.735542, 0.634026,
		0.358630, 0.673525, -0.646334,
		-0.902439, 0.073087, -0.424573,
		39.999943, 42.887924, 38.161076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354439, 43.536888, 38.164330>,  <40.631653, 42.836761, 38.458279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354439, 43.536888, 38.164330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067802, 43.321548, 38.341721>,  <39.895821, 43.192345, 38.448154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067802, 43.321548, 38.341721>,  <40.354439, 43.536888, 38.164330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067802, 43.321548, 38.341721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194099, 0.764627, 0.614550,
		-0.669937, 0.354304, -0.652420,
		-0.716595, -0.538344, 0.443482,
		39.852825, 43.160046, 38.474766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780746, 43.912117, 38.186443>,  <40.354439, 43.536888, 38.164330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780746, 43.912117, 38.186443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742428, 43.666336, 38.499691>,  <39.719437, 43.518867, 38.687637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742428, 43.666336, 38.499691>,  <39.780746, 43.912117, 38.186443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742428, 43.666336, 38.499691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013519, 0.787465, 0.616211,
		-0.995309, 0.048445, -0.083744,
		-0.095798, -0.614453, 0.783116,
		39.713688, 43.481998, 38.734627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456482, 44.225258, 38.329449>,  <39.780746, 43.912117, 38.186443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456482, 44.225258, 38.329449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764374, 44.319870, 38.092278>,  <40.949108, 44.376637, 37.949974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764374, 44.319870, 38.092278>,  <40.456482, 44.225258, 38.329449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764374, 44.319870, 38.092278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638340, -0.276720, 0.718295,
		0.005826, -0.931385, -0.363989,
		0.769732, 0.236534, -0.592929,
		40.995293, 44.390831, 37.914398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072742, 44.495235, 38.711899>,  <40.456482, 44.225258, 38.329449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072742, 44.495235, 38.711899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080257, 44.846504, 38.520710>,  <41.084766, 45.057266, 38.405994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.080257, 44.846504, 38.520710>,  <41.072742, 44.495235, 38.711899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080257, 44.846504, 38.520710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999103, 0.034637, 0.024374,
		0.037960, 0.477091, 0.878034,
		0.018783, 0.878171, -0.477978,
		41.085892, 45.109955, 38.377316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276573, 43.837868, 39.140079>,  <41.072742, 44.495235, 38.711899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276573, 43.837868, 39.140079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505894, 43.723530, 38.832932>,  <41.643486, 43.654926, 38.648643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505894, 43.723530, 38.832932>,  <41.276573, 43.837868, 39.140079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505894, 43.723530, 38.832932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379213, 0.923323, -0.060591,
		0.726311, -0.256449, 0.637735,
		0.573297, -0.285845, -0.767869,
		41.677883, 43.637775, 38.602570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949139, 43.950340, 39.256195>,  <41.276573, 43.837868, 39.140079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949139, 43.950340, 39.256195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928726, 43.989758, 38.858665>,  <41.916477, 44.013409, 38.620148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.928726, 43.989758, 38.858665>,  <41.949139, 43.950340, 39.256195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928726, 43.989758, 38.858665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520959, 0.851630, 0.057693,
		0.852055, -0.514797, -0.094799,
		-0.051033, 0.098544, -0.993823,
		41.913418, 44.019321, 38.560520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214905, 44.486713, 39.121048>,  <41.949139, 43.950340, 39.256195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214905, 44.486713, 39.121048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155895, 44.436123, 38.728672>,  <42.120491, 44.405769, 38.493248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155895, 44.436123, 38.728672>,  <42.214905, 44.486713, 39.121048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155895, 44.436123, 38.728672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314012, 0.934489, -0.167711,
		0.937888, -0.332767, -0.098140,
		-0.147520, -0.126477, -0.980939,
		42.111641, 44.398178, 38.434391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654537, 44.029652, 38.622444>,  <42.214905, 44.486713, 39.121048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654537, 44.029652, 38.622444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506439, 43.753845, 38.871437>,  <42.417580, 43.588364, 39.020832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506439, 43.753845, 38.871437>,  <42.654537, 44.029652, 38.622444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506439, 43.753845, 38.871437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610119, -0.685808, -0.396764,
		0.700480, 0.232888, 0.674605,
		-0.370248, -0.689514, 0.622484,
		42.395367, 43.546989, 39.058182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179005, 43.790947, 38.902210>,  <42.654537, 44.029652, 38.622444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179005, 43.790947, 38.902210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890793, 43.513638, 38.896568>,  <42.717865, 43.347252, 38.893185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890793, 43.513638, 38.896568>,  <43.179005, 43.790947, 38.902210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890793, 43.513638, 38.896568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647452, -0.665346, -0.371646,
		0.248270, -0.276915, 0.928267,
		-0.720533, -0.693277, -0.014103,
		42.674633, 43.305653, 38.892338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424610, 43.146328, 39.315456>,  <43.179005, 43.790947, 38.902210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424610, 43.146328, 39.315456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148376, 43.070522, 39.036263>,  <42.982635, 43.025040, 38.868744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148376, 43.070522, 39.036263>,  <43.424610, 43.146328, 39.315456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148376, 43.070522, 39.036263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469766, -0.851311, -0.233643,
		-0.549926, -0.489240, 0.676924,
		-0.690580, -0.189509, -0.697986,
		42.941204, 43.013668, 38.826866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157509, 42.442875, 39.363308>,  <43.424610, 43.146328, 39.315456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157509, 42.442875, 39.363308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148495, 42.557217, 38.980106>,  <43.143085, 42.625820, 38.750183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148495, 42.557217, 38.980106>,  <43.157509, 42.442875, 39.363308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148495, 42.557217, 38.980106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441559, -0.856876, -0.266062,
		-0.896949, -0.429012, -0.106914,
		-0.022531, 0.285853, -0.958008,
		43.141735, 42.642971, 38.692703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944878, 41.909847, 39.036465>,  <43.157509, 42.442875, 39.363308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944878, 41.909847, 39.036465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122749, 42.117844, 38.744747>,  <43.229473, 42.242641, 38.569717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122749, 42.117844, 38.744747>,  <42.944878, 41.909847, 39.036465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122749, 42.117844, 38.744747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507400, -0.817223, -0.273300,
		-0.738111, -0.248515, -0.627242,
		0.444678, 0.519988, -0.729297,
		43.256153, 42.273838, 38.525959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893353, 41.526295, 38.369987>,  <42.944878, 41.909847, 39.036465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893353, 41.526295, 38.369987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196663, 41.773136, 38.285904>,  <43.378651, 41.921242, 38.235455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196663, 41.773136, 38.285904>,  <42.893353, 41.526295, 38.369987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196663, 41.773136, 38.285904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487992, -0.751094, -0.444659,
		-0.432290, 0.234595, -0.870684,
		0.758280, 0.617108, -0.210210,
		43.424149, 41.958267, 38.222839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085297, 41.347679, 37.726364>,  <42.893353, 41.526295, 38.369987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085297, 41.347679, 37.726364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410831, 41.537334, 37.860744>,  <43.606152, 41.651127, 37.941372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410831, 41.537334, 37.860744>,  <43.085297, 41.347679, 37.726364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410831, 41.537334, 37.860744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580809, -0.645500, -0.495975,
		-0.018306, 0.598765, -0.800716,
		0.813834, 0.474142, 0.335951,
		43.654984, 41.679577, 37.961529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.469433, 41.379818, 37.181229>,  <43.085297, 41.347679, 37.726364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.469433, 41.379818, 37.181229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730759, 41.426418, 37.480457>,  <43.887554, 41.454380, 37.659992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730759, 41.426418, 37.480457>,  <43.469433, 41.379818, 37.181229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730759, 41.426418, 37.480457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614324, -0.659065, -0.433866,
		0.442478, 0.743008, -0.502148,
		0.653314, 0.116505, 0.748069,
		43.926754, 41.461369, 37.704880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116840, 41.574097, 36.852978>,  <43.469433, 41.379818, 37.181229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116840, 41.574097, 36.852978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.207287, 41.414780, 37.208557>,  <44.261555, 41.319191, 37.421906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.207287, 41.414780, 37.208557>,  <44.116840, 41.574097, 36.852978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207287, 41.414780, 37.208557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478479, -0.749493, -0.457514,
		0.848487, 0.528795, 0.021102,
		0.226115, -0.398292, 0.888952,
		44.275120, 41.295292, 37.475243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.862442, 41.471218, 36.763908>,  <44.116840, 41.574097, 36.852978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.862442, 41.471218, 36.763908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.732670, 41.246433, 37.068264>,  <44.654808, 41.111565, 37.250877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.732670, 41.246433, 37.068264>,  <44.862442, 41.471218, 36.763908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732670, 41.246433, 37.068264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342753, -0.819570, -0.459157,
		0.881626, 0.111831, 0.458508,
		-0.324431, -0.561960, 0.760885,
		44.635342, 41.077847, 37.296528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.441612, 41.032669, 36.919720>,  <44.862442, 41.471218, 36.763908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.441612, 41.032669, 36.919720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.107780, 40.856621, 37.052246>,  <44.907482, 40.750992, 37.131763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.107780, 40.856621, 37.052246>,  <45.441612, 41.032669, 36.919720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.107780, 40.856621, 37.052246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335413, -0.883070, -0.328155,
		0.437004, -0.162743, 0.884614,
		-0.834581, -0.440117, 0.331319,
		44.857407, 40.724586, 37.151642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.646366, 40.483410, 37.223644>,  <45.441612, 41.032669, 36.919720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.646366, 40.483410, 37.223644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.259609, 40.394295, 37.173874>,  <45.027554, 40.340828, 37.144012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.259609, 40.394295, 37.173874>,  <45.646366, 40.483410, 37.223644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.259609, 40.394295, 37.173874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253888, -0.888813, -0.381514,
		-0.025592, -0.400473, 0.915951,
		-0.966895, -0.222786, -0.124422,
		44.969540, 40.327457, 37.136547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.550934, 39.705696, 37.444817>,  <45.646366, 40.483410, 37.223644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.550934, 39.705696, 37.444817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.224102, 39.780357, 37.226624>,  <45.028004, 39.825153, 37.095707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.224102, 39.780357, 37.226624>,  <45.550934, 39.705696, 37.444817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.224102, 39.780357, 37.226624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002400, -0.947237, -0.320526,
		-0.576525, -0.260585, 0.774413,
		-0.817076, 0.186649, -0.545480,
		44.978981, 39.836353, 37.062981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.293247, 39.093334, 37.433929>,  <45.550934, 39.705696, 37.444817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.293247, 39.093334, 37.433929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.084599, 39.274509, 37.144718>,  <44.959412, 39.383213, 36.971191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.084599, 39.274509, 37.144718>,  <45.293247, 39.093334, 37.433929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.084599, 39.274509, 37.144718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135739, -0.792597, -0.594445,
		-0.842312, -0.408216, 0.351952,
		-0.521618, 0.452934, -0.723025,
		44.928112, 39.410389, 36.927811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803810, 38.649445, 37.253220>,  <45.293247, 39.093334, 37.433929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803810, 38.649445, 37.253220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.839798, 38.875526, 36.925205>,  <44.861393, 39.011173, 36.728397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.839798, 38.875526, 36.925205>,  <44.803810, 38.649445, 37.253220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839798, 38.875526, 36.925205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011999, -0.822696, -0.568355,
		-0.995872, 0.060976, -0.067238,
		0.089972, 0.565202, -0.820031,
		44.866791, 39.045086, 36.679195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.427803, 38.323616, 36.849373>,  <44.803810, 38.649445, 37.253220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.427803, 38.323616, 36.849373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.638515, 38.546494, 36.592613>,  <44.764942, 38.680222, 36.438557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.638515, 38.546494, 36.592613>,  <44.427803, 38.323616, 36.849373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.638515, 38.546494, 36.592613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027192, -0.743739, -0.667917,
		-0.849564, 0.369303, -0.376638,
		0.526784, 0.557197, -0.641896,
		44.796551, 38.713654, 36.400043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.097012, 38.340046, 36.217583>,  <44.427803, 38.323616, 36.849373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.097012, 38.340046, 36.217583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.486603, 38.411861, 36.162266>,  <44.720360, 38.454952, 36.129078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.486603, 38.411861, 36.162266>,  <44.097012, 38.340046, 36.217583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486603, 38.411861, 36.162266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056674, -0.783795, -0.618429,
		-0.219423, 0.594501, -0.773577,
		0.973982, 0.179539, -0.138289,
		44.778797, 38.465725, 36.120777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231693, 38.132931, 35.511230>,  <44.097012, 38.340046, 36.217583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231693, 38.132931, 35.511230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618214, 38.167976, 35.608055>,  <44.850124, 38.189003, 35.666149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618214, 38.167976, 35.608055>,  <44.231693, 38.132931, 35.511230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.618214, 38.167976, 35.608055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215650, -0.789005, -0.575297,
		0.140581, 0.608108, -0.781307,
		0.966298, 0.087613, 0.242058,
		44.908104, 38.194260, 35.680672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640854, 38.121414, 34.896988>,  <44.231693, 38.132931, 35.511230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.640854, 38.121414, 34.896988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.906395, 38.026329, 35.180618>,  <45.065720, 37.969276, 35.350796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.906395, 38.026329, 35.180618>,  <44.640854, 38.121414, 34.896988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.906395, 38.026329, 35.180618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335044, -0.753133, -0.566159,
		0.668612, 0.613419, -0.420327,
		0.663855, -0.237713, 0.709076,
		45.105553, 37.955013, 35.393341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.289413, 38.041409, 34.523518>,  <44.640854, 38.121414, 34.896988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.289413, 38.041409, 34.523518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335468, 37.845276, 34.869076>,  <45.363102, 37.727596, 35.076412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335468, 37.845276, 34.869076>,  <45.289413, 38.041409, 34.523518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335468, 37.845276, 34.869076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447086, -0.751035, -0.485861,
		0.887050, 0.442176, 0.132749,
		0.115137, -0.490334, 0.863896,
		45.370010, 37.698177, 35.128246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.964466, 37.874348, 34.515907>,  <45.289413, 38.041409, 34.523518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.964466, 37.874348, 34.515907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760139, 37.616184, 34.743069>,  <45.637543, 37.461285, 34.879364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760139, 37.616184, 34.743069>,  <45.964466, 37.874348, 34.515907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.760139, 37.616184, 34.743069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448781, -0.763630, -0.464181,
		0.733254, 0.017751, 0.679723,
		-0.510818, -0.645410, 0.567901,
		45.606895, 37.422562, 34.913441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.503860, 37.379925, 34.710575>,  <45.964466, 37.874348, 34.515907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.503860, 37.379925, 34.710575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133083, 37.231346, 34.731743>,  <45.910618, 37.142197, 34.744442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133083, 37.231346, 34.731743>,  <46.503860, 37.379925, 34.710575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.133083, 37.231346, 34.731743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323280, -0.862272, -0.389842,
		0.190435, -0.344255, 0.919360,
		-0.926944, -0.371450, 0.052916,
		45.855000, 37.119911, 34.747616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.531048, 36.712883, 35.053894>,  <46.503860, 37.379925, 34.710575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.531048, 36.712883, 35.053894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.224968, 36.740967, 34.797913>,  <46.041321, 36.757816, 34.644325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.224968, 36.740967, 34.797913>,  <46.531048, 36.712883, 35.053894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.224968, 36.740967, 34.797913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370338, -0.765099, -0.526757,
		-0.526610, -0.640074, 0.559454,
		-0.765201, 0.070209, -0.639952,
		45.995407, 36.762028, 34.605927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.755432, 36.038418, 34.792969>,  <46.531048, 36.712883, 35.053894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.755432, 36.038418, 34.792969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777676, 35.900829, 35.167900>,  <46.791019, 35.818275, 35.392860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777676, 35.900829, 35.167900>,  <46.755432, 36.038418, 34.792969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.777676, 35.900829, 35.167900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864203, -0.453596, -0.217722,
		0.500060, 0.822152, 0.272040,
		0.055605, -0.343972, 0.937332,
		46.794357, 35.797638, 35.449100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.466999, 36.156734, 34.957985>,  <46.755432, 36.038418, 34.792969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.466999, 36.156734, 34.957985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.275028, 35.857685, 35.141605>,  <47.159847, 35.678257, 35.251778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.275028, 35.857685, 35.141605>,  <47.466999, 36.156734, 34.957985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.275028, 35.857685, 35.141605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751696, -0.620223, -0.224225,
		0.452352, 0.237458, 0.859646,
		-0.479928, -0.747621, 0.459055,
		47.131050, 35.633400, 35.279324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.967606, 35.676365, 35.231316>,  <47.466999, 36.156734, 34.957985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.967606, 35.676365, 35.231316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.623669, 35.482605, 35.166782>,  <47.417305, 35.366348, 35.128063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.623669, 35.482605, 35.166782>,  <47.967606, 35.676365, 35.231316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.623669, 35.482605, 35.166782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490394, -0.695631, -0.524988,
		0.142074, -0.530524, 0.835679,
		-0.859842, -0.484399, -0.161334,
		47.365715, 35.337284, 35.118382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.991077, 35.029633, 35.400490>,  <47.967606, 35.676365, 35.231316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.991077, 35.029633, 35.400490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.737057, 35.067451, 35.093826>,  <47.584644, 35.090145, 34.909828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.737057, 35.067451, 35.093826>,  <47.991077, 35.029633, 35.400490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.737057, 35.067451, 35.093826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579337, -0.598193, -0.553655,
		-0.510960, -0.795755, 0.325106,
		-0.635050, 0.094550, -0.766663,
		47.546543, 35.095818, 34.863827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.757778, 37.046177, 45.974998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.398174, 37.170509, 45.851597>,  <33.182411, 37.245110, 45.777557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.398174, 37.170509, 45.851597>,  <33.757778, 37.046177, 45.974998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398174, 37.170509, 45.851597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287881, -0.111404, -0.951164,
		-0.330017, -0.943915, 0.010671,
		-0.899007, 0.310828, -0.308500,
		33.128471, 37.263756, 45.759048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769592, 36.768375, 45.310883>,  <33.757778, 37.046177, 45.974998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769592, 36.768375, 45.310883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.468063, 37.029831, 45.284023>,  <33.287148, 37.186707, 45.267906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.468063, 37.029831, 45.284023>,  <33.769592, 36.768375, 45.310883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468063, 37.029831, 45.284023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242156, 0.181348, -0.953139,
		-0.610835, -0.734753, -0.294987,
		-0.753817, 0.653644, -0.067151,
		33.241917, 37.225925, 45.263878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475861, 36.643467, 44.723347>,  <33.769592, 36.768375, 45.310883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475861, 36.643467, 44.723347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.321251, 37.006233, 44.790405>,  <33.228485, 37.223892, 44.830639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.321251, 37.006233, 44.790405>,  <33.475861, 36.643467, 44.723347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321251, 37.006233, 44.790405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077065, 0.212898, -0.974030,
		-0.919052, -0.363571, -0.152182,
		-0.386528, 0.906913, 0.167646,
		33.205292, 37.278309, 44.840698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865719, 36.728489, 44.253124>,  <33.475861, 36.643467, 44.723347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865719, 36.728489, 44.253124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.980484, 37.103951, 44.329659>,  <33.049343, 37.329227, 44.375580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.980484, 37.103951, 44.329659>,  <32.865719, 36.728489, 44.253124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980484, 37.103951, 44.329659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013015, 0.195894, -0.980539,
		-0.957869, 0.283817, 0.043988,
		0.286911, 0.938655, 0.191335,
		33.066559, 37.385548, 44.387058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544918, 37.130131, 43.749344>,  <32.865719, 36.728489, 44.253124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544918, 37.130131, 43.749344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.811359, 37.410015, 43.852665>,  <32.971222, 37.577946, 43.914658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.811359, 37.410015, 43.852665>,  <32.544918, 37.130131, 43.749344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811359, 37.410015, 43.852665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074297, 0.282345, -0.956432,
		-0.742154, 0.656269, 0.136084,
		0.666099, 0.699708, 0.258302,
		33.011189, 37.619926, 43.930157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557426, 37.680450, 43.189205>,  <32.544918, 37.130131, 43.749344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557426, 37.680450, 43.189205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.900917, 37.773987, 43.371590>,  <33.107014, 37.830109, 43.481022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.900917, 37.773987, 43.371590>,  <32.557426, 37.680450, 43.189205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900917, 37.773987, 43.371590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415447, 0.203190, -0.886633,
		-0.299981, 0.950805, 0.077335,
		0.858729, 0.233844, 0.455962,
		33.158535, 37.844139, 43.508377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791756, 38.374474, 42.968323>,  <32.557426, 37.680450, 43.189205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791756, 38.374474, 42.968323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.124271, 38.208412, 43.116165>,  <33.323780, 38.108776, 43.204868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.124271, 38.208412, 43.116165>,  <32.791756, 38.374474, 42.968323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124271, 38.208412, 43.116165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505886, 0.289583, -0.812540,
		0.230298, 0.862433, 0.450747,
		0.831290, -0.415153, 0.369602,
		33.373657, 38.083866, 43.227047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286663, 38.891247, 42.791454>,  <32.791756, 38.374474, 42.968323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286663, 38.891247, 42.791454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.487991, 38.556644, 42.878105>,  <33.608788, 38.355881, 42.930096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.487991, 38.556644, 42.878105>,  <33.286663, 38.891247, 42.791454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487991, 38.556644, 42.878105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567087, 0.130613, -0.813236,
		0.651984, 0.532161, 0.540112,
		0.503318, -0.836508, 0.216624,
		33.638988, 38.305691, 42.943092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976818, 39.039436, 42.568184>,  <33.286663, 38.891247, 42.791454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976818, 39.039436, 42.568184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.985550, 38.640587, 42.597210>,  <33.990788, 38.401276, 42.614624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.985550, 38.640587, 42.597210>,  <33.976818, 39.039436, 42.568184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985550, 38.640587, 42.597210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468360, -0.053927, -0.881890,
		0.883268, 0.053238, 0.465836,
		0.021829, -0.997125, 0.072566,
		33.992100, 38.341450, 42.618980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681816, 38.802917, 42.585087>,  <33.976818, 39.039436, 42.568184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681816, 38.802917, 42.585087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.504086, 38.468628, 42.456005>,  <34.397446, 38.268055, 42.378555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.504086, 38.468628, 42.456005>,  <34.681816, 38.802917, 42.585087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504086, 38.468628, 42.456005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628403, -0.034016, -0.777143,
		0.638502, -0.548092, 0.540287,
		-0.444325, -0.835726, -0.322703,
		34.370789, 38.217911, 42.359196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259933, 38.427925, 42.453148>,  <34.681816, 38.802917, 42.585087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259933, 38.427925, 42.453148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.946552, 38.289928, 42.246387>,  <34.758526, 38.207130, 42.122334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.946552, 38.289928, 42.246387>,  <35.259933, 38.427925, 42.453148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946552, 38.289928, 42.246387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574759, -0.085927, -0.813799,
		0.236338, -0.934664, 0.265607,
		-0.783451, -0.344992, -0.516899,
		34.711517, 38.186432, 42.091316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364922, 37.731049, 42.280952>,  <35.259933, 38.427925, 42.453148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364922, 37.731049, 42.280952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.106617, 37.882698, 42.015846>,  <34.951633, 37.973686, 41.856781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.106617, 37.882698, 42.015846>,  <35.364922, 37.731049, 42.280952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106617, 37.882698, 42.015846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611407, -0.263189, -0.746266,
		-0.457359, -0.887130, -0.061840,
		-0.645759, 0.379121, -0.662769,
		34.912888, 37.996433, 41.817017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254063, 37.208664, 41.829166>,  <35.364922, 37.731049, 42.280952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254063, 37.208664, 41.829166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.131699, 37.530861, 41.626148>,  <35.058281, 37.724178, 41.504337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.131699, 37.530861, 41.626148>,  <35.254063, 37.208664, 41.829166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131699, 37.530861, 41.626148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497248, -0.319435, -0.806664,
		-0.811888, -0.499143, -0.302810,
		-0.305913, 0.805492, -0.507543,
		35.039925, 37.772507, 41.473885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923084, 36.933353, 41.217793>,  <35.254063, 37.208664, 41.829166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923084, 36.933353, 41.217793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.013416, 37.314850, 41.138424>,  <35.067616, 37.543747, 41.090805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.013416, 37.314850, 41.138424>,  <34.923084, 36.933353, 41.217793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013416, 37.314850, 41.138424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434351, -0.280894, -0.855826,
		-0.871975, 0.107088, -0.477695,
		0.225830, 0.953746, -0.198419,
		35.081165, 37.600975, 41.078899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692993, 36.966042, 40.538944>,  <34.923084, 36.933353, 41.217793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692993, 36.966042, 40.538944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.943230, 37.278019, 40.546169>,  <35.093372, 37.465206, 40.550503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.943230, 37.278019, 40.546169>,  <34.692993, 36.966042, 40.538944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943230, 37.278019, 40.546169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395791, -0.297344, -0.868871,
		-0.672295, 0.550710, -0.494710,
		0.625595, 0.779939, 0.018063,
		35.130909, 37.512001, 40.551590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635960, 37.302864, 39.836609>,  <34.692993, 36.966042, 40.538944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635960, 37.302864, 39.836609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.985420, 37.410294, 39.998894>,  <35.195095, 37.474751, 40.096264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.985420, 37.410294, 39.998894>,  <34.635960, 37.302864, 39.836609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985420, 37.410294, 39.998894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420425, 0.002998, -0.907323,
		-0.244898, 0.963255, -0.110295,
		0.873652, 0.268572, 0.405710,
		35.247517, 37.490864, 40.120605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841373, 37.886200, 39.515049>,  <34.635960, 37.302864, 39.836609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841373, 37.886200, 39.515049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187431, 37.740818, 39.653282>,  <35.395065, 37.653591, 39.736221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187431, 37.740818, 39.653282>,  <34.841373, 37.886200, 39.515049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187431, 37.740818, 39.653282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383725, 0.036027, -0.922744,
		0.322922, 0.930916, 0.170634,
		0.865145, -0.363451, 0.345582,
		35.446976, 37.631783, 39.756958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391956, 38.115704, 39.065731>,  <34.841373, 37.886200, 39.515049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391956, 38.115704, 39.065731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.587414, 37.813671, 39.240582>,  <35.704689, 37.632454, 39.345493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.587414, 37.813671, 39.240582>,  <35.391956, 38.115704, 39.065731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587414, 37.813671, 39.240582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408530, -0.244687, -0.879336,
		0.770928, 0.608264, 0.188907,
		0.488645, -0.755079, 0.437130,
		35.734009, 37.587147, 39.371719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122047, 38.160408, 38.860271>,  <35.391956, 38.115704, 39.065731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122047, 38.160408, 38.860271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044579, 37.783871, 38.970802>,  <35.998096, 37.557949, 39.037121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044579, 37.783871, 38.970802>,  <36.122047, 38.160408, 38.860271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044579, 37.783871, 38.970802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581474, -0.336997, -0.740487,
		0.790176, 0.017261, 0.612637,
		-0.193675, -0.941347, 0.276324,
		35.986477, 37.501465, 39.053699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794361, 37.730206, 38.877083>,  <36.122047, 38.160408, 38.860271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794361, 37.730206, 38.877083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.502586, 37.463833, 38.814533>,  <36.327522, 37.304008, 38.777004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.502586, 37.463833, 38.814533>,  <36.794361, 37.730206, 38.877083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502586, 37.463833, 38.814533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472693, -0.325471, -0.818920,
		0.494452, -0.671268, 0.552194,
		-0.729437, -0.665934, -0.156373,
		36.283756, 37.264053, 38.767620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133900, 37.168152, 38.586727>,  <36.794361, 37.730206, 38.877083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133900, 37.168152, 38.586727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.746002, 37.077545, 38.550301>,  <36.513264, 37.023182, 38.528446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.746002, 37.077545, 38.550301>,  <37.133900, 37.168152, 38.586727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746002, 37.077545, 38.550301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188092, -0.455409, -0.870186,
		0.155640, -0.860983, 0.484235,
		-0.969741, -0.226517, -0.091065,
		36.455078, 37.009590, 38.522980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640930, 36.789452, 38.036896>,  <37.133900, 37.168152, 38.586727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640930, 36.789452, 38.036896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.006218, 36.672852, 38.150772>,  <38.225391, 36.602890, 38.219097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.006218, 36.672852, 38.150772>,  <37.640930, 36.789452, 38.036896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006218, 36.672852, 38.150772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271133, 0.086814, 0.958619,
		-0.304154, -0.952623, 0.000245,
		0.913223, -0.291501, 0.284693,
		38.280186, 36.585403, 38.236179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632053, 36.443539, 38.575508>,  <37.640930, 36.789452, 38.036896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632053, 36.443539, 38.575508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.014057, 36.557732, 38.607670>,  <38.243259, 36.626247, 38.626968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.014057, 36.557732, 38.607670>,  <37.632053, 36.443539, 38.575508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014057, 36.557732, 38.607670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149000, 0.227406, 0.962334,
		0.256450, -0.931012, 0.259711,
		0.955004, 0.285488, 0.080402,
		38.300560, 36.643375, 38.631790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881115, 36.044956, 39.106277>,  <37.632053, 36.443539, 38.575508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881115, 36.044956, 39.106277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.118603, 36.366825, 39.106758>,  <38.261097, 36.559948, 39.107048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.118603, 36.366825, 39.106758>,  <37.881115, 36.044956, 39.106277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118603, 36.366825, 39.106758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149732, 0.109010, 0.982699,
		0.790619, -0.583627, 0.185206,
		0.593719, 0.804672, 0.001202,
		38.296719, 36.608227, 39.107121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396099, 35.783558, 39.538536>,  <37.881115, 36.044956, 39.106277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396099, 35.783558, 39.538536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408676, 36.183323, 39.532974>,  <38.416222, 36.423180, 39.529636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408676, 36.183323, 39.532974>,  <38.396099, 35.783558, 39.538536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408676, 36.183323, 39.532974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000175, 0.013906, 0.999903,
		0.999506, -0.031438, 0.000262,
		0.031438, 0.999409, -0.013905,
		38.418106, 36.483147, 39.528801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699306, 35.887230, 40.166401>,  <38.396099, 35.783558, 39.538536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699306, 35.887230, 40.166401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589176, 36.253220, 40.048401>,  <38.523098, 36.472813, 39.977600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589176, 36.253220, 40.048401>,  <38.699306, 35.887230, 40.166401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589176, 36.253220, 40.048401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175082, 0.254006, 0.951224,
		0.945275, 0.313542, 0.090261,
		-0.275322, 0.914971, -0.295001,
		38.506580, 36.527710, 39.959900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072453, 36.462997, 40.566479>,  <38.699306, 35.887230, 40.166401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072453, 36.462997, 40.566479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.714333, 36.597488, 40.449593>,  <38.499462, 36.678185, 40.379459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.714333, 36.597488, 40.449593>,  <39.072453, 36.462997, 40.566479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714333, 36.597488, 40.449593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180495, 0.325924, 0.928006,
		0.407264, 0.883585, -0.231112,
		-0.895298, 0.336229, -0.292220,
		38.445744, 36.698357, 40.361927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050190, 37.047318, 40.984737>,  <39.072453, 36.462997, 40.566479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050190, 37.047318, 40.984737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.679695, 36.990982, 40.844883>,  <38.457397, 36.957180, 40.760971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.679695, 36.990982, 40.844883>,  <39.050190, 37.047318, 40.984737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679695, 36.990982, 40.844883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376934, 0.347267, 0.858677,
		0.000486, 0.927131, -0.374738,
		-0.926240, -0.140834, -0.349636,
		38.401825, 36.948730, 40.739990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768234, 37.626671, 41.189232>,  <39.050190, 37.047318, 40.984737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768234, 37.626671, 41.189232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.450867, 37.399075, 41.102749>,  <38.260448, 37.262516, 41.050858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.450867, 37.399075, 41.102749>,  <38.768234, 37.626671, 41.189232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450867, 37.399075, 41.102749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414731, 0.245352, 0.876242,
		-0.445523, 0.784892, -0.430643,
		-0.793415, -0.568987, -0.216209,
		38.212841, 37.228378, 41.037888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176529, 38.080910, 41.254795>,  <38.768234, 37.626671, 41.189232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176529, 38.080910, 41.254795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.084690, 37.693142, 41.289474>,  <38.029587, 37.460484, 41.310284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.084690, 37.693142, 41.289474>,  <38.176529, 38.080910, 41.254795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084690, 37.693142, 41.289474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447856, 0.184314, 0.874902,
		-0.864125, 0.162044, -0.476477,
		-0.229594, -0.969417, 0.086698,
		38.015812, 37.402317, 41.315483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488255, 38.070717, 41.540714>,  <38.176529, 38.080910, 41.254795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488255, 38.070717, 41.540714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.598366, 37.696537, 41.629395>,  <37.664433, 37.472027, 41.682602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.598366, 37.696537, 41.629395>,  <37.488255, 38.070717, 41.540714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598366, 37.696537, 41.629395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470966, 0.069822, 0.879384,
		-0.838102, -0.346486, -0.421346,
		0.275275, -0.935453, 0.221701,
		37.680950, 37.415901, 41.695904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795589, 37.626556, 41.652836>,  <37.488255, 38.070717, 41.540714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795589, 37.626556, 41.652836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.113640, 37.468899, 41.837196>,  <37.304470, 37.374306, 41.947815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.113640, 37.468899, 41.837196>,  <36.795589, 37.626556, 41.652836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113640, 37.468899, 41.837196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498700, 0.007505, 0.866742,
		-0.345080, -0.919018, -0.190592,
		0.795121, -0.394144, 0.460904,
		37.352177, 37.350655, 41.975468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519718, 37.094219, 41.981216>,  <36.795589, 37.626556, 41.652836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519718, 37.094219, 41.981216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868515, 37.144154, 42.170547>,  <37.077793, 37.174114, 42.284145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868515, 37.144154, 42.170547>,  <36.519718, 37.094219, 41.981216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868515, 37.144154, 42.170547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451499, -0.168496, 0.876218,
		0.189142, -0.977765, -0.090562,
		0.871994, 0.124840, 0.473330,
		37.130112, 37.181606, 42.312546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542732, 36.641430, 42.541115>,  <36.519718, 37.094219, 41.981216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542732, 36.641430, 42.541115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.832706, 36.893425, 42.652531>,  <37.006691, 37.044621, 42.719379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.832706, 36.893425, 42.652531>,  <36.542732, 36.641430, 42.541115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832706, 36.893425, 42.652531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210276, -0.182668, 0.960425,
		0.655935, -0.754818, 0.000048,
		0.724937, 0.629986, 0.278538,
		37.050186, 37.082420, 42.736092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828606, 36.415169, 43.218597>,  <36.542732, 36.641430, 42.541115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828606, 36.415169, 43.218597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.893536, 36.809822, 43.224392>,  <36.932495, 37.046612, 43.227871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.893536, 36.809822, 43.224392>,  <36.828606, 36.415169, 43.218597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893536, 36.809822, 43.224392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021992, -0.011062, 0.999697,
		0.986492, -0.162594, 0.019902,
		0.162324, 0.986631, 0.014488,
		36.942234, 37.105812, 43.228737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249901, 36.571293, 43.862690>,  <36.828606, 36.415169, 43.218597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249901, 36.571293, 43.862690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098442, 36.921478, 43.742565>,  <37.007568, 37.131592, 43.670490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098442, 36.921478, 43.742565>,  <37.249901, 36.571293, 43.862690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098442, 36.921478, 43.742565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471237, 0.096909, 0.876667,
		0.796594, 0.473465, 0.375857,
		-0.378647, 0.875465, -0.300311,
		36.984848, 37.184116, 43.652473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409676, 36.941208, 44.387913>,  <37.249901, 36.571293, 43.862690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409676, 36.941208, 44.387913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138557, 37.162964, 44.194733>,  <36.975887, 37.296017, 44.078827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138557, 37.162964, 44.194733>,  <37.409676, 36.941208, 44.387913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138557, 37.162964, 44.194733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554365, 0.046137, 0.830994,
		0.482979, 0.830975, 0.276064,
		-0.677799, 0.554393, -0.482947,
		36.935219, 37.329281, 44.049847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261562, 37.563694, 44.861313>,  <37.409676, 36.941208, 44.387913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261562, 37.563694, 44.861313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.951984, 37.479759, 44.622326>,  <36.766235, 37.429398, 44.478931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.951984, 37.479759, 44.622326>,  <37.261562, 37.563694, 44.861313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951984, 37.479759, 44.622326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623520, 0.087760, 0.776866,
		-0.110584, 0.973789, -0.198761,
		-0.773947, -0.209841, -0.597472,
		36.719799, 37.416805, 44.443085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875969, 38.074184, 45.152042>,  <37.261562, 37.563694, 44.861313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875969, 38.074184, 45.152042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.650620, 37.820553, 44.940174>,  <36.515408, 37.668373, 44.813053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.650620, 37.820553, 44.940174>,  <36.875969, 38.074184, 45.152042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650620, 37.820553, 44.940174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628774, -0.086822, 0.772726,
		-0.535955, 0.768379, -0.349779,
		-0.563378, -0.634078, -0.529670,
		36.481606, 37.630329, 44.781273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178158, 38.204323, 45.208256>,  <36.875969, 38.074184, 45.152042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178158, 38.204323, 45.208256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.159492, 37.823235, 45.088154>,  <36.148293, 37.594582, 45.016094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.159492, 37.823235, 45.088154>,  <36.178158, 38.204323, 45.208256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159492, 37.823235, 45.088154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762477, -0.160210, 0.626866,
		-0.645330, 0.258188, -0.718949,
		-0.046667, -0.952718, -0.300251,
		36.145493, 37.537418, 44.998077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.416634, 37.969780, 45.214569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.638405, 37.636909, 45.218544>,  <35.771465, 37.437187, 45.220928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.638405, 37.636909, 45.218544>,  <35.416634, 37.969780, 45.214569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638405, 37.636909, 45.218544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589965, -0.384582, 0.709956,
		-0.586987, -0.399478, -0.704176,
		0.554425, -0.832174, 0.009934,
		35.804733, 37.387257, 45.221523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934601, 37.430897, 45.342613>,  <35.416634, 37.969780, 45.214569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934601, 37.430897, 45.342613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.293842, 37.272083, 45.418262>,  <35.509388, 37.176796, 45.463654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.293842, 37.272083, 45.418262>,  <34.934601, 37.430897, 45.342613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293842, 37.272083, 45.418262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383429, -0.496311, 0.778882,
		-0.215376, -0.772036, -0.597974,
		0.898106, -0.397033, 0.189127,
		35.563274, 37.152973, 45.475002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863148, 36.790283, 45.246822>,  <34.934601, 37.430897, 45.342613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863148, 36.790283, 45.246822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.164593, 36.827301, 45.507133>,  <35.345459, 36.849514, 45.663319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.164593, 36.827301, 45.507133>,  <34.863148, 36.790283, 45.246822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164593, 36.827301, 45.507133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570683, -0.399161, 0.717629,
		0.326178, -0.912198, -0.247997,
		0.753611, 0.092547, 0.650773,
		35.390675, 36.855064, 45.702366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862198, 36.256405, 45.733742>,  <34.863148, 36.790283, 45.246822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862198, 36.256405, 45.733742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.098545, 36.515041, 45.926739>,  <35.240353, 36.670223, 46.042538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.098545, 36.515041, 45.926739>,  <34.862198, 36.256405, 45.733742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098545, 36.515041, 45.926739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306675, -0.373150, 0.875620,
		0.746206, -0.665345, -0.022191,
		0.590870, 0.646587, 0.482491,
		35.275806, 36.709019, 46.071487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227985, 35.852104, 46.329586>,  <34.862198, 36.256405, 45.733742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227985, 35.852104, 46.329586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.225765, 36.240467, 46.425346>,  <35.224434, 36.473484, 46.482803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.225765, 36.240467, 46.425346>,  <35.227985, 35.852104, 46.329586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225765, 36.240467, 46.425346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308091, -0.229416, 0.923281,
		0.951341, -0.068633, 0.300400,
		-0.005549, 0.970906, 0.239398,
		35.224102, 36.531738, 46.497166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494476, 35.949902, 47.003586>,  <35.227985, 35.852104, 46.329586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494476, 35.949902, 47.003586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.281750, 36.283920, 46.947197>,  <35.154114, 36.484333, 46.913364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.281750, 36.283920, 46.947197>,  <35.494476, 35.949902, 47.003586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281750, 36.283920, 46.947197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402040, -0.102438, 0.909874,
		0.745345, 0.540560, 0.390200,
		-0.531812, 0.835046, -0.140975,
		35.122208, 36.534435, 46.904903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548767, 36.181843, 47.601578>,  <35.494476, 35.949902, 47.003586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548767, 36.181843, 47.601578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.263374, 36.427727, 47.467072>,  <35.092140, 36.575256, 47.386368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.263374, 36.427727, 47.467072>,  <35.548767, 36.181843, 47.601578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263374, 36.427727, 47.467072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475498, -0.072297, 0.876741,
		0.514634, 0.785430, 0.343877,
		-0.713480, 0.614713, -0.336264,
		35.049332, 36.612141, 47.366192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593079, 36.919125, 47.909321>,  <35.548767, 36.181843, 47.601578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593079, 36.919125, 47.909321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.219059, 36.832325, 47.797180>,  <34.994648, 36.780243, 47.729897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.219059, 36.832325, 47.797180>,  <35.593079, 36.919125, 47.909321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219059, 36.832325, 47.797180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316416, 0.154182, 0.936007,
		-0.159890, 0.963918, -0.212830,
		-0.935049, -0.217001, -0.280347,
		34.938545, 36.767223, 47.713078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168663, 37.515701, 48.141270>,  <35.593079, 36.919125, 47.909321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168663, 37.515701, 48.141270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923592, 37.205246, 48.081619>,  <34.776550, 37.018974, 48.045830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923592, 37.205246, 48.081619>,  <35.168663, 37.515701, 48.141270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923592, 37.205246, 48.081619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330921, 0.080571, 0.940212,
		-0.717717, 0.625397, -0.306203,
		-0.612677, -0.776135, -0.149130,
		34.739788, 36.972404, 48.036880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579147, 37.728371, 48.467731>,  <35.168663, 37.515701, 48.141270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579147, 37.728371, 48.467731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.534069, 37.333160, 48.425560>,  <34.507023, 37.096035, 48.400257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.534069, 37.333160, 48.425560>,  <34.579147, 37.728371, 48.467731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534069, 37.333160, 48.425560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494218, -0.036310, 0.868579,
		-0.862003, 0.149984, -0.484206,
		-0.112692, -0.988021, -0.105425,
		34.500263, 37.036755, 48.393932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997574, 37.588703, 48.966682>,  <34.579147, 37.728371, 48.467731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997574, 37.588703, 48.966682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.144848, 37.223862, 48.894558>,  <34.233212, 37.004959, 48.851284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.144848, 37.223862, 48.894558>,  <33.997574, 37.588703, 48.966682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144848, 37.223862, 48.894558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319665, -0.306299, 0.896658,
		-0.873073, -0.272493, -0.404341,
		0.368182, -0.912101, -0.180314,
		34.255302, 36.950230, 48.840466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455265, 37.017616, 49.204418>,  <33.997574, 37.588703, 48.966682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455265, 37.017616, 49.204418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.821465, 36.858089, 49.183193>,  <34.041183, 36.762375, 49.170456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.821465, 36.858089, 49.183193>,  <33.455265, 37.017616, 49.204418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821465, 36.858089, 49.183193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139383, -0.438116, 0.888047,
		-0.377414, -0.805606, -0.456681,
		0.915495, -0.398815, -0.053063,
		34.096111, 36.738445, 49.167274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291336, 36.362724, 49.510838>,  <33.455265, 37.017616, 49.204418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291336, 36.362724, 49.510838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.690762, 36.382141, 49.501820>,  <33.930416, 36.393791, 49.496410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.690762, 36.382141, 49.501820>,  <33.291336, 36.362724, 49.510838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690762, 36.382141, 49.501820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047160, -0.598906, 0.799430,
		0.025301, -0.799347, -0.600337,
		0.998567, 0.048538, -0.022544,
		33.990334, 36.396702, 49.495056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408699, 35.710201, 49.710007>,  <33.291336, 36.362724, 49.510838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408699, 35.710201, 49.710007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.765022, 35.885212, 49.759045>,  <33.978817, 35.990219, 49.788467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.765022, 35.885212, 49.759045>,  <33.408699, 35.710201, 49.710007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765022, 35.885212, 49.759045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207853, -0.632308, 0.746313,
		0.404054, -0.639338, -0.654207,
		0.890807, 0.437530, 0.122598,
		34.032265, 36.016472, 49.795826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918324, 35.268959, 49.591267>,  <33.408699, 35.710201, 49.710007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918324, 35.268959, 49.591267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.074997, 35.537769, 49.842655>,  <34.168999, 35.699055, 49.993488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.074997, 35.537769, 49.842655>,  <33.918324, 35.268959, 49.591267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074997, 35.537769, 49.842655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055883, -0.699158, 0.712780,
		0.918403, -0.244060, -0.311400,
		0.391679, 0.672021, 0.628470,
		34.192501, 35.739376, 50.031197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475231, 34.873337, 49.962269>,  <33.918324, 35.268959, 49.591267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475231, 34.873337, 49.962269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419140, 35.178707, 50.214462>,  <34.385483, 35.361931, 50.365780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419140, 35.178707, 50.214462>,  <34.475231, 34.873337, 49.962269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419140, 35.178707, 50.214462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107007, -0.644733, 0.756881,
		0.984319, 0.038673, 0.172104,
		-0.140232, 0.763429, 0.630485,
		34.377071, 35.407734, 50.403606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016479, 34.797977, 50.579590>,  <34.475231, 34.873337, 49.962269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016479, 34.797977, 50.579590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.695942, 35.016800, 50.676399>,  <34.503620, 35.148094, 50.734486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.695942, 35.016800, 50.676399>,  <35.016479, 34.797977, 50.579590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695942, 35.016800, 50.676399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211081, -0.637147, 0.741275,
		0.559722, 0.542932, 0.626049,
		-0.801347, 0.547054, 0.242023,
		34.455540, 35.180916, 50.749004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923512, 34.885139, 51.391464>,  <35.016479, 34.797977, 50.579590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923512, 34.885139, 51.391464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.568371, 34.926212, 51.212055>,  <34.355286, 34.950855, 51.104408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.568371, 34.926212, 51.212055>,  <34.923512, 34.885139, 51.391464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568371, 34.926212, 51.212055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433628, -0.512756, 0.740978,
		-0.153900, 0.852372, 0.499777,
		-0.887852, 0.102680, -0.448526,
		34.302013, 34.957016, 51.077496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477154, 34.960983, 51.924629>,  <34.923512, 34.885139, 51.391464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477154, 34.960983, 51.924629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.229988, 34.886440, 51.619091>,  <34.081688, 34.841713, 51.435768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.229988, 34.886440, 51.619091>,  <34.477154, 34.960983, 51.924629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229988, 34.886440, 51.619091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675742, -0.370770, 0.637104,
		-0.401938, 0.909836, 0.103175,
		-0.617914, -0.186356, -0.763841,
		34.044613, 34.830532, 51.389938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917953, 34.962399, 52.304459>,  <34.477154, 34.960983, 51.924629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917953, 34.962399, 52.304459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.814308, 34.778759, 51.964558>,  <33.752121, 34.668575, 51.760616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.814308, 34.778759, 51.964558>,  <33.917953, 34.962399, 52.304459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814308, 34.778759, 51.964558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642406, -0.575061, 0.506577,
		-0.721232, 0.677149, -0.145924,
		-0.259112, -0.459102, -0.849756,
		33.736576, 34.641029, 51.709629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212269, 34.948601, 52.344555>,  <33.917953, 34.962399, 52.304459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212269, 34.948601, 52.344555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.268299, 34.684067, 52.049797>,  <33.301918, 34.525345, 51.872944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.268299, 34.684067, 52.049797>,  <33.212269, 34.948601, 52.344555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268299, 34.684067, 52.049797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710526, -0.585464, 0.390366,
		-0.689587, 0.468899, -0.551908,
		0.140080, -0.661336, -0.736893,
		33.310322, 34.485664, 51.828728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546192, 34.757065, 51.998558>,  <33.212269, 34.948601, 52.344555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546192, 34.757065, 51.998558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.804958, 34.452209, 52.008755>,  <32.960220, 34.269299, 52.014874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.804958, 34.452209, 52.008755>,  <32.546192, 34.757065, 51.998558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804958, 34.452209, 52.008755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722218, -0.601622, 0.341251,
		-0.244743, -0.239171, -0.939626,
		0.646917, -0.762133, 0.025491,
		32.999035, 34.223568, 52.016403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377102, 34.054298, 51.599617>,  <32.546192, 34.757065, 51.998558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377102, 34.054298, 51.599617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.568371, 34.015682, 51.948795>,  <32.683132, 33.992512, 52.158302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.568371, 34.015682, 51.948795>,  <32.377102, 34.054298, 51.599617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568371, 34.015682, 51.948795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741576, -0.576907, 0.342409,
		0.470550, -0.811085, -0.347454,
		0.478171, -0.096543, 0.872944,
		32.711823, 33.986721, 52.210678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169079, 33.302387, 51.886810>,  <32.377102, 34.054298, 51.599617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169079, 33.302387, 51.886810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.287102, 33.528732, 52.194767>,  <32.357918, 33.664539, 52.379543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.287102, 33.528732, 52.194767>,  <32.169079, 33.302387, 51.886810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287102, 33.528732, 52.194767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698307, -0.422260, 0.577982,
		0.652155, -0.708162, 0.270556,
		0.295060, 0.565865, 0.769893,
		32.375618, 33.698490, 52.425735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520294, 33.626438, 52.162388>,  <32.169079, 33.302387, 51.886810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520294, 33.626438, 52.162388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132040, 33.665012, 52.250542>,  <30.899088, 33.688156, 52.303432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132040, 33.665012, 52.250542>,  <31.520294, 33.626438, 52.162388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132040, 33.665012, 52.250542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174278, 0.349601, -0.920546,
		-0.165820, -0.931922, -0.322529,
		-0.970634, 0.096435, 0.220385,
		30.840849, 33.693943, 52.316658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127726, 33.316402, 51.611401>,  <31.520294, 33.626438, 52.162388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127726, 33.316402, 51.611401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.867159, 33.563900, 51.787041>,  <30.710819, 33.712399, 51.892426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.867159, 33.563900, 51.787041>,  <31.127726, 33.316402, 51.611401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867159, 33.563900, 51.787041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340162, 0.279144, -0.897980,
		-0.678192, -0.734327, 0.028633,
		-0.651418, 0.618743, 0.439103,
		30.671734, 33.749523, 51.918770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491796, 33.194019, 51.363853>,  <31.127726, 33.316402, 51.611401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491796, 33.194019, 51.363853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.497202, 33.570602, 51.498600>,  <30.500444, 33.796551, 51.579449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.497202, 33.570602, 51.498600>,  <30.491796, 33.194019, 51.363853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497202, 33.570602, 51.498600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163051, 0.334462, -0.928197,
		-0.986525, -0.042384, 0.158024,
		0.013513, 0.941456, 0.336866,
		30.501255, 33.853039, 51.599659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136532, 33.509071, 50.863384>,  <30.491796, 33.194019, 51.363853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136532, 33.509071, 50.863384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.289278, 33.825535, 51.054485>,  <30.380926, 34.015411, 51.169147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.289278, 33.825535, 51.054485>,  <30.136532, 33.509071, 50.863384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289278, 33.825535, 51.054485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116008, 0.553868, -0.824483,
		-0.916908, 0.259419, 0.303284,
		0.381866, 0.791159, 0.477751,
		30.403837, 34.062881, 51.197811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780788, 34.104134, 50.685169>,  <30.136532, 33.509071, 50.863384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780788, 34.104134, 50.685169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.134340, 34.244282, 50.809101>,  <30.346472, 34.328369, 50.883461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.134340, 34.244282, 50.809101>,  <29.780788, 34.104134, 50.685169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134340, 34.244282, 50.809101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114602, 0.480011, -0.869744,
		-0.453452, 0.804259, 0.384121,
		0.883882, 0.350367, 0.309832,
		30.399506, 34.349392, 50.902050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760353, 34.726269, 50.487049>,  <29.780788, 34.104134, 50.685169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760353, 34.726269, 50.487049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.152369, 34.695103, 50.560207>,  <30.387579, 34.676403, 50.604103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.152369, 34.695103, 50.560207>,  <29.760353, 34.726269, 50.487049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152369, 34.695103, 50.560207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191988, 0.609738, -0.768999,
		-0.051604, 0.788764, 0.612526,
		0.980039, -0.077915, 0.182898,
		30.446381, 34.671730, 50.615078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079971, 35.456379, 50.365524>,  <29.760353, 34.726269, 50.487049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079971, 35.456379, 50.365524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.375978, 35.188221, 50.343803>,  <30.553583, 35.027325, 50.330772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.375978, 35.188221, 50.343803>,  <30.079971, 35.456379, 50.365524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375978, 35.188221, 50.343803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418251, 0.521907, -0.743424,
		0.526728, 0.527433, 0.666612,
		0.740016, -0.670393, -0.054303,
		30.597982, 34.987103, 50.327511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719683, 35.871319, 50.084770>,  <30.079971, 35.456379, 50.365524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719683, 35.871319, 50.084770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.805103, 35.487000, 50.014034>,  <30.856356, 35.256409, 49.971592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.805103, 35.487000, 50.014034>,  <30.719683, 35.871319, 50.084770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805103, 35.487000, 50.014034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504918, 0.263510, -0.821961,
		0.836334, 0.086243, 0.541395,
		0.213552, -0.960794, -0.176836,
		30.869169, 35.198761, 49.960983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493876, 35.792706, 50.105049>,  <30.719683, 35.871319, 50.084770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493876, 35.792706, 50.105049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.334249, 35.511662, 49.869396>,  <31.238474, 35.343033, 49.728004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.334249, 35.511662, 49.869396>,  <31.493876, 35.792706, 50.105049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334249, 35.511662, 49.869396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486367, 0.382474, -0.785596,
		0.777299, -0.600041, 0.189096,
		-0.399066, -0.702612, -0.589137,
		31.214529, 35.300877, 49.692654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061329, 35.516373, 49.876556>,  <31.493876, 35.792706, 50.105049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061329, 35.516373, 49.876556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.775436, 35.428436, 49.610977>,  <31.603901, 35.375675, 49.451630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.775436, 35.428436, 49.610977>,  <32.061329, 35.516373, 49.876556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775436, 35.428436, 49.610977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529662, 0.449820, -0.719110,
		0.456774, -0.865632, -0.205035,
		-0.714714, -0.219871, -0.663958,
		31.561018, 35.362484, 49.411793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414341, 35.337132, 49.287338>,  <32.061329, 35.516373, 49.876556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414341, 35.337132, 49.287338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.050320, 35.402905, 49.135151>,  <31.831905, 35.442368, 49.043839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.050320, 35.402905, 49.135151>,  <32.414341, 35.337132, 49.287338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050320, 35.402905, 49.135151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414472, 0.367970, -0.832353,
		0.003134, -0.915183, -0.403027,
		-0.910056, 0.164435, -0.380470,
		31.777302, 35.452236, 49.021011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504181, 35.232212, 48.496834>,  <32.414341, 35.337132, 49.287338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504181, 35.232212, 48.496834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158119, 35.425865, 48.549164>,  <31.950481, 35.542057, 48.580563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158119, 35.425865, 48.549164>,  <32.504181, 35.232212, 48.496834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158119, 35.425865, 48.549164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242743, 0.632541, -0.735505,
		-0.438840, -0.604568, -0.664768,
		-0.865156, 0.484137, 0.130830,
		31.898573, 35.571106, 48.588413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130661, 35.269375, 47.822884>,  <32.504181, 35.232212, 48.496834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130661, 35.269375, 47.822884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.982927, 35.569359, 48.042393>,  <31.894287, 35.749348, 48.174099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.982927, 35.569359, 48.042393>,  <32.130661, 35.269375, 47.822884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982927, 35.569359, 48.042393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039992, 0.577154, -0.815655,
		-0.928435, -0.323198, -0.183172,
		-0.369337, 0.749957, 0.548776,
		31.872126, 35.794346, 48.207024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610712, 35.662762, 47.340096>,  <32.130661, 35.269375, 47.822884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610712, 35.662762, 47.340096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.722614, 35.913036, 47.631371>,  <31.789755, 36.063202, 47.806137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.722614, 35.913036, 47.631371>,  <31.610712, 35.662762, 47.340096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722614, 35.913036, 47.631371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216942, 0.697659, -0.682795,
		-0.935240, 0.348990, 0.059437,
		0.279755, 0.625683, 0.728189,
		31.806541, 36.100742, 47.849827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364729, 36.261688, 47.099846>,  <31.610712, 35.662762, 47.340096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364729, 36.261688, 47.099846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.652683, 36.380482, 47.350784>,  <31.825457, 36.451756, 47.501347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.652683, 36.380482, 47.350784>,  <31.364729, 36.261688, 47.099846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652683, 36.380482, 47.350784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314544, 0.666116, -0.676278,
		-0.618727, 0.684172, 0.386115,
		0.719888, 0.296981, 0.627346,
		31.868650, 36.469578, 47.538990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306013, 37.005409, 47.123043>,  <31.364729, 36.261688, 47.099846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306013, 37.005409, 47.123043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.675442, 36.870171, 47.195385>,  <31.897099, 36.789028, 47.238789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.675442, 36.870171, 47.195385>,  <31.306013, 37.005409, 47.123043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675442, 36.870171, 47.195385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348415, 0.543118, -0.763957,
		0.160066, 0.768580, 0.619405,
		0.923572, -0.338094, 0.180850,
		31.952513, 36.768742, 47.249641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743498, 37.603512, 47.131485>,  <31.306013, 37.005409, 47.123043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743498, 37.603512, 47.131485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.010960, 37.306114, 47.127110>,  <32.171436, 37.127674, 47.124485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.010960, 37.306114, 47.127110>,  <31.743498, 37.603512, 47.131485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010960, 37.306114, 47.127110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536759, 0.492806, -0.684859,
		0.514580, 0.452061, 0.728593,
		0.668653, -0.743494, -0.010940,
		32.211555, 37.083065, 47.123829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400158, 37.959282, 46.970745>,  <31.743498, 37.603512, 47.131485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400158, 37.959282, 46.970745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501850, 37.580784, 46.890762>,  <32.562866, 37.353683, 46.842773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501850, 37.580784, 46.890762>,  <32.400158, 37.959282, 46.970745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501850, 37.580784, 46.890762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388281, 0.289222, -0.874980,
		0.885779, 0.144807, 0.440939,
		0.254232, -0.946246, -0.199961,
		32.578121, 37.296909, 46.830772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095196, 37.992229, 46.666824>,  <32.400158, 37.959282, 46.970745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095196, 37.992229, 46.666824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.921562, 37.646282, 46.565968>,  <32.817383, 37.438713, 46.505455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.921562, 37.646282, 46.565968>,  <33.095196, 37.992229, 46.666824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921562, 37.646282, 46.565968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317046, 0.115320, -0.941373,
		0.843240, -0.488576, 0.224145,
		-0.434084, -0.864867, -0.252143,
		32.791336, 37.386822, 46.490326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560028, 37.539249, 46.445835>,  <33.095196, 37.992229, 46.666824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560028, 37.539249, 46.445835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.210464, 37.467495, 46.265121>,  <33.000729, 37.424442, 46.156693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.210464, 37.467495, 46.265121>,  <33.560028, 37.539249, 46.445835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210464, 37.467495, 46.265121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446338, 0.072003, -0.891963,
		0.192534, -0.981141, 0.017142,
		-0.873907, -0.179384, -0.451784,
		32.948292, 37.413681, 46.129585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.541733, 43.058613, 36.907383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.716759, 42.906677, 37.233391>,  <39.821774, 42.815517, 37.428997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.716759, 42.906677, 37.233391>,  <39.541733, 43.058613, 36.907383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716759, 42.906677, 37.233391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489389, -0.659792, -0.570239,
		0.754343, 0.648380, -0.102814,
		0.437568, -0.379840, 0.815019,
		39.848030, 42.792725, 37.477898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213707, 43.002289, 36.763969>,  <39.541733, 43.058613, 36.907383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213707, 43.002289, 36.763969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.146744, 42.748905, 37.066151>,  <40.106564, 42.596874, 37.247459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.146744, 42.748905, 37.066151>,  <40.213707, 43.002289, 36.763969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146744, 42.748905, 37.066151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554311, -0.694156, -0.459224,
		0.815299, 0.341876, 0.467342,
		-0.167411, -0.633458, 0.755450,
		40.096519, 42.558868, 37.292786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909298, 42.778568, 37.020752>,  <40.213707, 43.002289, 36.763969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909298, 42.778568, 37.020752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.633419, 42.505474, 37.117245>,  <40.467892, 42.341618, 37.175140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.633419, 42.505474, 37.117245>,  <40.909298, 42.778568, 37.020752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633419, 42.505474, 37.117245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652714, -0.730429, -0.201093,
		0.313496, 0.018762, 0.949404,
		-0.689699, -0.682731, 0.241233,
		40.426510, 42.300655, 37.189613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286957, 42.242706, 37.398697>,  <40.909298, 42.778568, 37.020752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286957, 42.242706, 37.398697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.959373, 42.058712, 37.261452>,  <40.762825, 41.948315, 37.179104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.959373, 42.058712, 37.261452>,  <41.286957, 42.242706, 37.398697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959373, 42.058712, 37.261452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558310, -0.776896, -0.291070,
		-0.132678, -0.429938, 0.893056,
		-0.818955, -0.459983, -0.343116,
		40.713688, 41.920715, 37.158516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284180, 41.482716, 37.728439>,  <41.286957, 42.242706, 37.398697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284180, 41.482716, 37.728439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.067371, 41.489426, 37.392361>,  <40.937286, 41.493450, 37.190712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.067371, 41.489426, 37.392361>,  <41.284180, 41.482716, 37.728439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067371, 41.489426, 37.392361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386020, -0.883109, -0.266659,
		-0.746458, -0.468868, 0.472191,
		-0.542024, 0.016775, -0.840196,
		40.904766, 41.494457, 37.140301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001865, 40.793453, 37.609390>,  <41.284180, 41.482716, 37.728439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001865, 40.793453, 37.609390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.951225, 40.954102, 37.246586>,  <40.920841, 41.050491, 37.028904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.951225, 40.954102, 37.246586>,  <41.001865, 40.793453, 37.609390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951225, 40.954102, 37.246586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319978, -0.848959, -0.420575,
		-0.938928, -0.343469, -0.021032,
		-0.126599, 0.401619, -0.907014,
		40.913246, 41.074589, 36.974480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678360, 40.264332, 37.215836>,  <41.001865, 40.793453, 37.609390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678360, 40.264332, 37.215836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.815987, 40.528111, 36.948479>,  <40.898563, 40.686378, 36.788067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.815987, 40.528111, 36.948479>,  <40.678360, 40.264332, 37.215836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815987, 40.528111, 36.948479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205606, -0.747489, -0.631653,
		-0.916157, 0.079906, -0.392773,
		0.344067, 0.659450, -0.668389,
		40.919209, 40.725945, 36.747963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379124, 39.933323, 36.705555>,  <40.678360, 40.264332, 37.215836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379124, 39.933323, 36.705555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.684032, 40.159191, 36.579010>,  <40.866978, 40.294712, 36.503082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.684032, 40.159191, 36.579010>,  <40.379124, 39.933323, 36.705555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684032, 40.159191, 36.579010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441051, -0.810888, -0.384623,
		-0.473721, 0.153655, -0.867167,
		0.762275, 0.564668, -0.316365,
		40.912716, 40.328590, 36.484100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596539, 39.703037, 36.025433>,  <40.379124, 39.933323, 36.705555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596539, 39.703037, 36.025433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.923965, 39.894909, 36.151833>,  <41.120422, 40.010033, 36.227673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.923965, 39.894909, 36.151833>,  <40.596539, 39.703037, 36.025433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923965, 39.894909, 36.151833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571199, -0.737819, -0.359659,
		0.060627, 0.474902, -0.877948,
		0.818570, 0.479678, 0.315995,
		41.169537, 40.038811, 36.246632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035999, 39.473835, 35.555298>,  <40.596539, 39.703037, 36.025433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035999, 39.473835, 35.555298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.280964, 39.626553, 35.832191>,  <41.427940, 39.718185, 35.998329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.280964, 39.626553, 35.832191>,  <41.035999, 39.473835, 35.555298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280964, 39.626553, 35.832191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614567, -0.780715, -0.113099,
		0.497257, 0.494687, -0.712756,
		0.612408, 0.381797, 0.692234,
		41.464687, 39.741093, 36.039860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724293, 39.457520, 35.218529>,  <41.035999, 39.473835, 35.555298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724293, 39.457520, 35.218529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.769367, 39.462688, 35.615948>,  <41.796413, 39.465790, 35.854401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.769367, 39.462688, 35.615948>,  <41.724293, 39.457520, 35.218529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769367, 39.462688, 35.615948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643918, -0.762487, -0.063116,
		0.756750, 0.646875, -0.094247,
		0.112690, 0.012924, 0.993546,
		41.803173, 39.466564, 35.914013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385086, 39.515144, 35.351566>,  <41.724293, 39.457520, 35.218529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385086, 39.515144, 35.351566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.204185, 39.338081, 35.661282>,  <42.095646, 39.231842, 35.847111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.204185, 39.338081, 35.661282>,  <42.385086, 39.515144, 35.351566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204185, 39.338081, 35.661282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747491, -0.661708, 0.058306,
		0.486543, 0.605143, 0.630141,
		-0.452253, -0.442656, 0.774288,
		42.068508, 39.205284, 35.893570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954205, 39.313099, 35.695950>,  <42.385086, 39.515144, 35.351566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954205, 39.313099, 35.695950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.665226, 39.097649, 35.869366>,  <42.491840, 38.968380, 35.973415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.665226, 39.097649, 35.869366>,  <42.954205, 39.313099, 35.695950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.665226, 39.097649, 35.869366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651898, -0.739586, 0.167457,
		0.230442, 0.403602, 0.885439,
		-0.722444, -0.538627, 0.433539,
		42.448494, 38.936062, 35.999428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322742, 38.933784, 36.160126>,  <42.954205, 39.313099, 35.695950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322742, 38.933784, 36.160126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.975311, 38.739704, 36.119812>,  <42.766853, 38.623257, 36.095623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.975311, 38.739704, 36.119812>,  <43.322742, 38.933784, 36.160126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975311, 38.739704, 36.119812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470084, -0.871072, 0.142318,
		-0.156845, 0.076235, 0.984677,
		-0.868574, -0.485202, -0.100786,
		42.714741, 38.594143, 36.089577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422665, 38.283596, 36.649563>,  <43.322742, 38.933784, 36.160126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422665, 38.283596, 36.649563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.109482, 38.170845, 36.427746>,  <42.921570, 38.103195, 36.294655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.109482, 38.170845, 36.427746>,  <43.422665, 38.283596, 36.649563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109482, 38.170845, 36.427746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265098, -0.957639, 0.112475,
		-0.562756, -0.058945, 0.824519,
		-0.782962, -0.281874, -0.554543,
		42.874592, 38.086285, 36.261383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976608, 37.755310, 37.025841>,  <43.422665, 38.283596, 36.649563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976608, 37.755310, 37.025841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.891476, 37.725906, 36.636112>,  <42.840397, 37.708263, 36.402275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.891476, 37.725906, 36.636112>,  <42.976608, 37.755310, 37.025841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891476, 37.725906, 36.636112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199370, -0.979454, 0.030348,
		-0.956532, -0.187791, 0.223117,
		-0.212834, -0.073512, -0.974319,
		42.827625, 37.703854, 36.343815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606815, 37.264439, 36.992111>,  <42.976608, 37.755310, 37.025841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606815, 37.264439, 36.992111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.769306, 37.297844, 36.628132>,  <42.866802, 37.317886, 36.409744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.769306, 37.297844, 36.628132>,  <42.606815, 37.264439, 36.992111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769306, 37.297844, 36.628132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278655, -0.959704, 0.036319,
		-0.870247, -0.268315, -0.413130,
		0.406228, 0.083514, -0.909948,
		42.891174, 37.322899, 36.355148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433952, 36.663853, 36.653885>,  <42.606815, 37.264439, 36.992111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433952, 36.663853, 36.653885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.732864, 36.800373, 36.425819>,  <42.912212, 36.882286, 36.288979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.732864, 36.800373, 36.425819>,  <42.433952, 36.663853, 36.653885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732864, 36.800373, 36.425819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359933, -0.929149, -0.084446,
		-0.558590, -0.142116, -0.817178,
		0.747279, 0.341300, -0.570165,
		42.957047, 36.902763, 36.254768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516254, 36.131321, 36.156902>,  <42.433952, 36.663853, 36.653885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516254, 36.131321, 36.156902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.851486, 36.344341, 36.109554>,  <43.052628, 36.472153, 36.081146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.851486, 36.344341, 36.109554>,  <42.516254, 36.131321, 36.156902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851486, 36.344341, 36.109554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507213, -0.840530, -0.190381,
		-0.200880, 0.099517, -0.974548,
		0.838083, 0.532547, -0.118369,
		43.102909, 36.504105, 36.074043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785675, 35.941170, 35.543491>,  <42.516254, 36.131321, 36.156902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785675, 35.941170, 35.543491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.082813, 36.086517, 35.768394>,  <43.261097, 36.173725, 35.903336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.082813, 36.086517, 35.768394>,  <42.785675, 35.941170, 35.543491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082813, 36.086517, 35.768394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595706, -0.742008, -0.307504,
		0.305465, 0.563372, -0.767661,
		0.742849, 0.363369, 0.562261,
		43.305668, 36.195530, 35.937073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405743, 35.789181, 35.263084>,  <42.785675, 35.941170, 35.543491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405743, 35.789181, 35.263084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.508324, 35.867706, 35.641647>,  <43.569870, 35.914822, 35.868786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.508324, 35.867706, 35.641647>,  <43.405743, 35.789181, 35.263084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508324, 35.867706, 35.641647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632175, -0.774753, -0.010596,
		0.731155, 0.601015, -0.322789,
		0.256450, 0.196312, 0.946412,
		43.585258, 35.926601, 35.925571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073505, 35.857613, 35.205036>,  <43.405743, 35.789181, 35.263084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073505, 35.857613, 35.205036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.988285, 35.758896, 35.583179>,  <43.937153, 35.699665, 35.810066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.988285, 35.758896, 35.583179>,  <44.073505, 35.857613, 35.205036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.988285, 35.758896, 35.583179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710376, -0.703428, -0.023545,
		0.670803, 0.666544, 0.325182,
		-0.213048, -0.246795, 0.945358,
		43.924370, 35.684856, 35.866787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739510, 36.370834, 35.134102>,  <44.073505, 35.857613, 35.205036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739510, 36.370834, 35.134102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.064777, 36.588043, 35.050320>,  <45.259937, 36.718369, 35.000050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.064777, 36.588043, 35.050320>,  <44.739510, 36.370834, 35.134102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.064777, 36.588043, 35.050320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145234, 0.537816, 0.830458,
		0.563610, -0.644886, 0.516203,
		0.813173, 0.543025, -0.209460,
		45.308731, 36.750950, 34.987480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.998863, 36.659863, 35.774200>,  <44.739510, 36.370834, 35.134102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.998863, 36.659863, 35.774200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.201748, 36.883133, 35.511547>,  <45.323479, 37.017097, 35.353954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.201748, 36.883133, 35.511547>,  <44.998863, 36.659863, 35.774200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.201748, 36.883133, 35.511547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020454, 0.753905, 0.656665,
		0.861577, -0.346501, 0.370975,
		0.507215, 0.558180, -0.656634,
		45.353912, 37.050587, 35.314556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.510536, 36.933167, 36.135803>,  <44.998863, 36.659863, 35.774200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.510536, 36.933167, 36.135803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.472561, 37.188698, 35.830418>,  <45.449776, 37.342018, 35.647186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.472561, 37.188698, 35.830418>,  <45.510536, 36.933167, 36.135803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.472561, 37.188698, 35.830418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079026, 0.759675, 0.645484,
		0.992342, 0.121615, -0.021638,
		-0.094938, 0.638830, -0.763467,
		45.444080, 37.380348, 35.601376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.911388, 37.488930, 36.289700>,  <45.510536, 36.933167, 36.135803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.911388, 37.488930, 36.289700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.629089, 37.628696, 36.043179>,  <45.459709, 37.712555, 35.895267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.629089, 37.628696, 36.043179>,  <45.911388, 37.488930, 36.289700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.629089, 37.628696, 36.043179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093301, 0.908178, 0.408054,
		0.702288, 0.230484, -0.673549,
		-0.705752, 0.349415, -0.616298,
		45.417362, 37.733521, 35.858288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.144108, 38.179611, 36.060822>,  <45.911388, 37.488930, 36.289700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.144108, 38.179611, 36.060822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.753418, 38.169235, 35.975647>,  <45.519005, 38.163010, 35.924541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.753418, 38.169235, 35.975647>,  <46.144108, 38.179611, 36.060822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753418, 38.169235, 35.975647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112889, 0.906239, 0.407415,
		0.182402, 0.421970, -0.888072,
		-0.976722, -0.025940, -0.212936,
		45.460400, 38.161453, 35.911766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.998501, 38.811810, 35.848904>,  <46.144108, 38.179611, 36.060822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.998501, 38.811810, 35.848904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.624664, 38.697075, 35.933052>,  <45.400360, 38.628235, 35.983540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.624664, 38.697075, 35.933052>,  <45.998501, 38.811810, 35.848904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.624664, 38.697075, 35.933052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162142, 0.869913, 0.465791,
		-0.316610, 0.401216, -0.859525,
		-0.934595, -0.286839, 0.210370,
		45.344284, 38.611023, 35.996162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644009, 39.446987, 35.717442>,  <45.998501, 38.811810, 35.848904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644009, 39.446987, 35.717442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.380020, 39.232994, 35.928436>,  <45.221626, 39.104599, 36.055035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.380020, 39.232994, 35.928436>,  <45.644009, 39.446987, 35.717442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.380020, 39.232994, 35.928436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213916, 0.806849, 0.550667,
		-0.720196, 0.250585, -0.646935,
		-0.659968, -0.534978, 0.527486,
		45.182030, 39.072502, 36.086681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.058128, 39.845226, 35.674278>,  <45.644009, 39.446987, 35.717442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.058128, 39.845226, 35.674278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.011013, 39.609234, 35.993790>,  <44.982742, 39.467636, 36.185497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.011013, 39.609234, 35.993790>,  <45.058128, 39.845226, 35.674278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.011013, 39.609234, 35.993790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296008, 0.788670, 0.538868,
		-0.947895, -0.172970, -0.267539,
		-0.117791, -0.589984, 0.798777,
		44.975677, 39.432240, 36.233421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.425022, 40.044868, 35.929996>,  <45.058128, 39.845226, 35.674278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.425022, 40.044868, 35.929996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.588646, 39.848656, 36.237774>,  <44.686821, 39.730927, 36.422440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.588646, 39.848656, 36.237774>,  <44.425022, 40.044868, 35.929996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.588646, 39.848656, 36.237774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310038, 0.718344, 0.622782,
		-0.858221, -0.493315, 0.141765,
		0.409064, -0.490532, 0.769444,
		44.711365, 39.701496, 36.468609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916725, 40.087219, 36.388741>,  <44.425022, 40.044868, 35.929996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916725, 40.087219, 36.388741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.258018, 40.020119, 36.586266>,  <44.462795, 39.979858, 36.704781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.258018, 40.020119, 36.586266>,  <43.916725, 40.087219, 36.388741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258018, 40.020119, 36.586266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243743, 0.708820, 0.661939,
		-0.461067, -0.685152, 0.563900,
		0.853233, -0.167752, 0.493815,
		44.513988, 39.969791, 36.734409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721210, 39.941254, 37.009369>,  <43.916725, 40.087219, 36.388741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721210, 39.941254, 37.009369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.100307, 40.066422, 37.034229>,  <44.327766, 40.141521, 37.049145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.100307, 40.066422, 37.034229>,  <43.721210, 39.941254, 37.009369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100307, 40.066422, 37.034229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289630, 0.762227, 0.578899,
		0.133771, -0.566651, 0.813027,
		0.947745, 0.312917, 0.062155,
		44.384632, 40.160297, 37.052876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.841957, 40.142967, 37.670956>,  <43.721210, 39.941254, 37.009369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.841957, 40.142967, 37.670956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.169628, 40.316616, 37.521030>,  <44.366230, 40.420807, 37.431076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.169628, 40.316616, 37.521030>,  <43.841957, 40.142967, 37.670956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169628, 40.316616, 37.521030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182257, 0.816674, 0.547563,
		0.543813, -0.380238, 0.748122,
		0.819177, 0.434122, -0.374816,
		44.415382, 40.446854, 37.408585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.255360, 40.392033, 38.303593>,  <43.841957, 40.142967, 37.670956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.255360, 40.392033, 38.303593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.365589, 40.606079, 37.984165>,  <44.431728, 40.734509, 37.792511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.365589, 40.606079, 37.984165>,  <44.255360, 40.392033, 38.303593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365589, 40.606079, 37.984165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227505, 0.843438, 0.486677,
		0.933969, 0.047560, 0.354175,
		0.275578, 0.535117, -0.798565,
		44.448261, 40.766613, 37.744595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.629044, 40.858669, 38.602337>,  <44.255360, 40.392033, 38.303593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.629044, 40.858669, 38.602337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.482758, 40.994686, 38.255783>,  <44.394985, 41.076298, 38.047852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.482758, 40.994686, 38.255783>,  <44.629044, 40.858669, 38.602337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482758, 40.994686, 38.255783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329321, 0.823373, 0.462173,
		0.870519, 0.454341, -0.189132,
		-0.365711, 0.340045, -0.866386,
		44.373043, 41.096699, 37.995869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.601189, 41.575237, 38.736107>,  <44.629044, 40.858669, 38.602337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.601189, 41.575237, 38.736107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.378933, 41.508839, 38.410233>,  <44.245579, 41.468998, 38.214706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.378933, 41.508839, 38.410233>,  <44.601189, 41.575237, 38.736107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.378933, 41.508839, 38.410233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375338, 0.924417, 0.067631,
		0.741883, 0.343361, -0.575946,
		-0.555636, -0.166000, -0.814686,
		44.212242, 41.459038, 38.165829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538010, 42.201725, 38.661644>,  <44.601189, 41.575237, 38.736107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538010, 42.201725, 38.661644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.270042, 42.039505, 38.412888>,  <44.109264, 41.942173, 38.263634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.270042, 42.039505, 38.412888>,  <44.538010, 42.201725, 38.661644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.270042, 42.039505, 38.412888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467056, 0.881324, -0.071606,
		0.577125, 0.242487, -0.779825,
		-0.669914, -0.405547, -0.621889,
		44.069069, 41.917839, 38.226322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.391235, 42.788464, 38.160713>,  <44.538010, 42.201725, 38.661644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.391235, 42.788464, 38.160713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.090775, 42.524548, 38.169205>,  <43.910500, 42.366199, 38.174301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.090775, 42.524548, 38.169205>,  <44.391235, 42.788464, 38.160713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090775, 42.524548, 38.169205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645332, 0.740704, 0.186826,
		-0.138990, 0.126634, -0.982164,
		-0.751151, -0.659789, 0.021230,
		43.865429, 42.326611, 38.175575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824680, 43.000744, 37.657158>,  <44.391235, 42.788464, 38.160713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824680, 43.000744, 37.657158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.648296, 42.763046, 37.926208>,  <43.542465, 42.620426, 38.087639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.648296, 42.763046, 37.926208>,  <43.824680, 43.000744, 37.657158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648296, 42.763046, 37.926208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714531, 0.685943, 0.137580,
		-0.543140, -0.419947, -0.727079,
		-0.440958, -0.594245, 0.672628,
		43.516010, 42.584774, 38.127998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023735, 43.069683, 37.462177>,  <43.824680, 43.000744, 37.657158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023735, 43.069683, 37.462177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.069340, 42.956085, 37.842987>,  <43.096703, 42.887928, 38.071472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.069340, 42.956085, 37.842987>,  <43.023735, 43.069683, 37.462177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069340, 42.956085, 37.842987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717280, 0.639503, 0.276668,
		-0.687394, -0.714410, -0.130794,
		0.114011, -0.283996, 0.952023,
		43.103542, 42.870888, 38.128593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414482, 42.905769, 37.634781>,  <43.023735, 43.069683, 37.462177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414482, 42.905769, 37.634781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.591347, 42.958202, 37.989704>,  <42.697464, 42.989662, 38.202660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.591347, 42.958202, 37.989704>,  <42.414482, 42.905769, 37.634781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591347, 42.958202, 37.989704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708517, 0.657659, 0.255907,
		-0.550001, -0.741823, 0.383664,
		0.442157, 0.131083, 0.887307,
		42.723995, 42.997528, 38.255898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.901562, 37.980835, 43.025734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644535, 37.683193, 42.952610>,  <37.490318, 37.504608, 42.908737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644535, 37.683193, 42.952610>,  <37.901562, 37.980835, 43.025734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644535, 37.683193, 42.952610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504960, -0.231791, -0.831437,
		0.576304, -0.626562, 0.524684,
		-0.642564, -0.744105, -0.182807,
		37.451767, 37.459961, 42.897766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262882, 37.341473, 42.928093>,  <37.901562, 37.980835, 43.025734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262882, 37.341473, 42.928093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917667, 37.270561, 42.738884>,  <37.710541, 37.228012, 42.625359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917667, 37.270561, 42.738884>,  <38.262882, 37.341473, 42.928093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917667, 37.270561, 42.738884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504259, -0.246818, -0.827528,
		0.029957, -0.952707, 0.302408,
		-0.863032, -0.177282, -0.473018,
		37.658756, 37.217377, 42.596977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370049, 36.713074, 42.512642>,  <38.262882, 37.341473, 42.928093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370049, 36.713074, 42.512642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062614, 36.913643, 42.353722>,  <37.878155, 37.033985, 42.258369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062614, 36.913643, 42.353722>,  <38.370049, 36.713074, 42.512642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062614, 36.913643, 42.353722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283954, -0.289130, -0.914207,
		-0.573273, -0.815465, 0.079842,
		-0.768589, 0.501419, -0.397305,
		37.832039, 37.064068, 42.234531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294300, 36.356487, 41.956245>,  <38.370049, 36.713074, 42.512642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294300, 36.356487, 41.956245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066360, 36.676586, 41.881554>,  <37.929596, 36.868645, 41.836739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066360, 36.676586, 41.881554>,  <38.294300, 36.356487, 41.956245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066360, 36.676586, 41.881554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007183, -0.222370, -0.974936,
		-0.821715, -0.556912, 0.120970,
		-0.569853, 0.800251, -0.186725,
		37.895405, 36.916660, 41.825535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743752, 36.065628, 41.419964>,  <38.294300, 36.356487, 41.956245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743752, 36.065628, 41.419964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817982, 36.457909, 41.395351>,  <37.862518, 36.693275, 41.380585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817982, 36.457909, 41.395351>,  <37.743752, 36.065628, 41.419964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817982, 36.457909, 41.395351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181202, -0.095698, -0.978778,
		-0.965779, 0.170485, -0.195464,
		0.185573, 0.980702, -0.061531,
		37.873653, 36.752121, 41.376892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275845, 36.386776, 40.901665>,  <37.743752, 36.065628, 41.419964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275845, 36.386776, 40.901665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580612, 36.640011, 40.956326>,  <37.763474, 36.791954, 40.989120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580612, 36.640011, 40.956326>,  <37.275845, 36.386776, 40.901665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580612, 36.640011, 40.956326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182591, -0.007538, -0.983160,
		-0.621398, 0.774042, -0.121340,
		0.761922, 0.633089, 0.136649,
		37.809189, 36.829937, 40.997322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266769, 36.662083, 40.258606>,  <37.275845, 36.386776, 40.901665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266769, 36.662083, 40.258606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616161, 36.784340, 40.410191>,  <37.825798, 36.857693, 40.501141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616161, 36.784340, 40.410191>,  <37.266769, 36.662083, 40.258606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616161, 36.784340, 40.410191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409508, -0.040252, -0.911418,
		-0.263311, 0.951296, -0.160321,
		0.873482, 0.305639, 0.378965,
		37.878204, 36.876030, 40.523880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411598, 37.295273, 39.857445>,  <37.266769, 36.662083, 40.258606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411598, 37.295273, 39.857445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726505, 37.103424, 40.012451>,  <37.915451, 36.988316, 40.105453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726505, 37.103424, 40.012451>,  <37.411598, 37.295273, 39.857445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726505, 37.103424, 40.012451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491520, 0.108670, -0.864060,
		0.372314, 0.870718, 0.321298,
		0.787268, -0.479626, 0.387516,
		37.962685, 36.959538, 40.128708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957630, 37.724018, 39.695984>,  <37.411598, 37.295273, 39.857445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957630, 37.724018, 39.695984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128723, 37.368912, 39.764004>,  <38.231380, 37.155849, 39.804817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128723, 37.368912, 39.764004>,  <37.957630, 37.724018, 39.695984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128723, 37.368912, 39.764004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593109, 0.133685, -0.793946,
		0.682104, 0.440456, 0.583723,
		0.427733, -0.887765, 0.170051,
		38.257042, 37.102581, 39.815018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662403, 37.844009, 39.552021>,  <37.957630, 37.724018, 39.695984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662403, 37.844009, 39.552021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586384, 37.451988, 39.528790>,  <38.540771, 37.216774, 39.514851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586384, 37.451988, 39.528790>,  <38.662403, 37.844009, 39.552021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586384, 37.451988, 39.528790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407062, -0.024828, -0.913063,
		0.893411, -0.197165, 0.403662,
		-0.190046, -0.980056, -0.058077,
		38.529369, 37.157970, 39.511368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216209, 37.539623, 39.136658>,  <38.662403, 37.844009, 39.552021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216209, 37.539623, 39.136658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958057, 37.235096, 39.111732>,  <38.803165, 37.052380, 39.096775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958057, 37.235096, 39.111732>,  <39.216209, 37.539623, 39.136658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958057, 37.235096, 39.111732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287760, -0.166742, -0.943076,
		0.707590, -0.626571, 0.326688,
		-0.645377, -0.761319, -0.062317,
		38.764446, 37.006699, 39.093037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542507, 37.010105, 38.767765>,  <39.216209, 37.539623, 39.136658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542507, 37.010105, 38.767765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156715, 36.912453, 38.727409>,  <38.925240, 36.853863, 38.703197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156715, 36.912453, 38.727409>,  <39.542507, 37.010105, 38.767765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156715, 36.912453, 38.727409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164990, -0.258486, -0.951821,
		0.206287, -0.934659, 0.289584,
		-0.964481, -0.244127, -0.100887,
		38.867371, 36.839214, 38.697144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468090, 36.322495, 38.404163>,  <39.542507, 37.010105, 38.767765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468090, 36.322495, 38.404163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147671, 36.558502, 38.363773>,  <38.955418, 36.700108, 38.339539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147671, 36.558502, 38.363773>,  <39.468090, 36.322495, 38.404163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147671, 36.558502, 38.363773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033190, -0.124644, -0.991646,
		-0.597674, -0.797711, 0.080264,
		-0.801052, 0.590018, -0.100973,
		38.907356, 36.735508, 38.333481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876579, 35.757107, 38.363209>,  <39.468090, 36.322495, 38.404163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876579, 35.757107, 38.363209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933193, 35.914555, 38.726536>,  <39.967163, 36.009022, 38.944530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933193, 35.914555, 38.726536>,  <39.876579, 35.757107, 38.363209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933193, 35.914555, 38.726536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490584, 0.769064, -0.409717,
		-0.859823, 0.503593, -0.084252,
		0.141535, 0.393617, 0.908314,
		39.975655, 36.032639, 38.999031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570736, 35.966217, 37.670567>,  <39.876579, 35.757107, 38.363209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570736, 35.966217, 37.670567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755291, 35.627728, 37.563961>,  <39.866024, 35.424633, 37.499996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755291, 35.627728, 37.563961>,  <39.570736, 35.966217, 37.670567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755291, 35.627728, 37.563961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420530, -0.473109, 0.774159,
		-0.781199, -0.245113, -0.574149,
		0.461392, -0.846220, -0.266515,
		39.893707, 35.373863, 37.484005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144779, 35.498417, 37.705601>,  <39.570736, 35.966217, 37.670567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144779, 35.498417, 37.705601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468830, 35.264431, 37.721130>,  <39.663261, 35.124039, 37.730450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468830, 35.264431, 37.721130>,  <39.144779, 35.498417, 37.705601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468830, 35.264431, 37.721130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449899, -0.577872, 0.680922,
		-0.375879, -0.569103, -0.731326,
		0.810127, -0.584967, 0.038829,
		39.711868, 35.088940, 37.732780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889736, 34.887207, 37.793636>,  <39.144779, 35.498417, 37.705601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889736, 34.887207, 37.793636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269527, 34.831100, 37.905930>,  <39.497402, 34.797436, 37.973305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269527, 34.831100, 37.905930>,  <38.889736, 34.887207, 37.793636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269527, 34.831100, 37.905930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302722, -0.645180, 0.701500,
		0.082730, -0.751046, -0.655047,
		0.949481, -0.140262, 0.280733,
		39.554371, 34.789021, 37.990150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019478, 34.214314, 37.806515>,  <38.889736, 34.887207, 37.793636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019478, 34.214314, 37.806515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322437, 34.345573, 38.032314>,  <39.504215, 34.424328, 38.167793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322437, 34.345573, 38.032314>,  <39.019478, 34.214314, 37.806515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322437, 34.345573, 38.032314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294427, -0.600018, 0.743836,
		0.582799, -0.729586, -0.357839,
		0.757402, 0.328150, 0.564500,
		39.549660, 34.444019, 38.201664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320751, 33.637722, 38.186859>,  <39.019478, 34.214314, 37.806515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320751, 33.637722, 38.186859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414879, 33.960381, 38.403728>,  <39.471355, 34.153976, 38.533852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414879, 33.960381, 38.403728>,  <39.320751, 33.637722, 38.186859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414879, 33.960381, 38.403728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301544, -0.469715, 0.829722,
		0.923956, -0.358742, 0.132703,
		0.235323, 0.806643, 0.542172,
		39.485477, 34.202374, 38.566380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529125, 33.320061, 38.854958>,  <39.320751, 33.637722, 38.186859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529125, 33.320061, 38.854958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487480, 33.705334, 38.954105>,  <39.462494, 33.936497, 39.013596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487480, 33.705334, 38.954105>,  <39.529125, 33.320061, 38.854958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487480, 33.705334, 38.954105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376749, -0.268850, 0.886442,
		0.920446, -0.001094, 0.390869,
		-0.104116, 0.963181, 0.247874,
		39.456245, 33.994289, 39.028469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726715, 33.302429, 39.539833>,  <39.529125, 33.320061, 38.854958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726715, 33.302429, 39.539833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485405, 33.613907, 39.470909>,  <39.340618, 33.800793, 39.429554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485405, 33.613907, 39.470909>,  <39.726715, 33.302429, 39.539833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485405, 33.613907, 39.470909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438032, -0.142957, 0.887520,
		0.666476, 0.610896, 0.427336,
		-0.603273, 0.778697, -0.172314,
		39.304424, 33.847515, 39.419216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660370, 33.701412, 40.216263>,  <39.726715, 33.302429, 39.539833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660370, 33.701412, 40.216263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340042, 33.771931, 39.987312>,  <39.147846, 33.814243, 39.849941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340042, 33.771931, 39.987312>,  <39.660370, 33.701412, 40.216263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340042, 33.771931, 39.987312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576095, 0.034508, 0.816654,
		0.163724, 0.983732, 0.073929,
		-0.800817, 0.176296, -0.572373,
		39.099796, 33.824818, 39.815601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297318, 34.155567, 40.586113>,  <39.660370, 33.701412, 40.216263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297318, 34.155567, 40.586113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038429, 33.984917, 40.333416>,  <38.883099, 33.882526, 40.181797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038429, 33.984917, 40.333416>,  <39.297318, 34.155567, 40.586113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038429, 33.984917, 40.333416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667757, -0.082459, 0.739798,
		-0.367709, 0.900662, -0.231512,
		-0.647218, -0.426624, -0.631745,
		38.844265, 33.856930, 40.143894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665791, 34.439499, 40.655949>,  <39.297318, 34.155567, 40.586113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665791, 34.439499, 40.655949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482826, 34.154240, 40.443462>,  <38.373047, 33.983082, 40.315971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482826, 34.154240, 40.443462>,  <38.665791, 34.439499, 40.655949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482826, 34.154240, 40.443462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809725, 0.087091, 0.580310,
		-0.367585, 0.695579, -0.617293,
		-0.457413, -0.713152, -0.531214,
		38.345604, 33.940292, 40.284100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004215, 34.653419, 40.648453>,  <38.665791, 34.439499, 40.655949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004215, 34.653419, 40.648453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962688, 34.267231, 40.552883>,  <37.937771, 34.035519, 40.495541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962688, 34.267231, 40.552883>,  <38.004215, 34.653419, 40.648453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962688, 34.267231, 40.552883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857283, -0.034929, 0.513660,
		-0.504270, 0.258154, -0.824056,
		-0.103820, -0.965472, -0.238925,
		37.931541, 33.977589, 40.481205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350113, 34.549953, 40.372288>,  <38.004215, 34.653419, 40.648453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350113, 34.549953, 40.372288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458252, 34.191181, 40.512249>,  <37.523136, 33.975918, 40.596226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458252, 34.191181, 40.512249>,  <37.350113, 34.549953, 40.372288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458252, 34.191181, 40.512249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821610, -0.025484, 0.569480,
		-0.501866, -0.441440, -0.743815,
		0.270347, -0.896929, 0.349902,
		37.539356, 33.922104, 40.617218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765755, 34.337067, 40.483845>,  <37.350113, 34.549953, 40.372288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765755, 34.337067, 40.483845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992626, 34.085350, 40.696373>,  <37.128750, 33.934319, 40.823891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992626, 34.085350, 40.696373>,  <36.765755, 34.337067, 40.483845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992626, 34.085350, 40.696373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738997, -0.104057, 0.665624,
		-0.363585, -0.770171, -0.524064,
		0.567176, -0.629293, 0.531320,
		37.162781, 33.896561, 40.855770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252827, 33.818108, 40.739891>,  <36.765755, 34.337067, 40.483845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252827, 33.818108, 40.739891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583317, 33.798153, 40.964340>,  <36.781612, 33.786179, 41.099010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583317, 33.798153, 40.964340>,  <36.252827, 33.818108, 40.739891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583317, 33.798153, 40.964340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557966, 0.064705, 0.827337,
		-0.077581, -0.996657, 0.025625,
		0.826229, -0.049888, 0.561121,
		36.831184, 33.783188, 41.132675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370880, 33.043560, 40.743458>,  <36.252827, 33.818108, 40.739891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370880, 33.043560, 40.743458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033512, 32.861469, 40.629326>,  <35.831093, 32.752213, 40.560844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033512, 32.861469, 40.629326>,  <36.370880, 33.043560, 40.743458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033512, 32.861469, 40.629326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081785, 0.416115, -0.905626,
		0.531000, -0.787156, -0.313727,
		-0.843416, -0.455230, -0.285335,
		35.780487, 32.724899, 40.543724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510571, 32.784336, 40.044243>,  <36.370880, 33.043560, 40.743458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510571, 32.784336, 40.044243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116970, 32.828022, 40.100555>,  <35.880810, 32.854233, 40.134342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116970, 32.828022, 40.100555>,  <36.510571, 32.784336, 40.044243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116970, 32.828022, 40.100555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118983, 0.185340, -0.975445,
		-0.132627, -0.976586, -0.169379,
		-0.983999, 0.109218, 0.140778,
		35.821770, 32.860786, 40.142788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288021, 32.414558, 39.480499>,  <36.510571, 32.784336, 40.044243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288021, 32.414558, 39.480499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985710, 32.644039, 39.606781>,  <35.804321, 32.781727, 39.682549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985710, 32.644039, 39.606781>,  <36.288021, 32.414558, 39.480499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985710, 32.644039, 39.606781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140766, 0.328504, -0.933954,
		-0.639516, -0.750304, -0.167520,
		-0.755780, 0.573698, 0.315701,
		35.758976, 32.816147, 39.701492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747795, 32.188442, 39.085381>,  <36.288021, 32.414558, 39.480499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747795, 32.188442, 39.085381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669418, 32.560265, 39.210304>,  <35.622395, 32.783356, 39.285259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669418, 32.560265, 39.210304>,  <35.747795, 32.188442, 39.085381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669418, 32.560265, 39.210304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253921, 0.259530, -0.931755,
		-0.947171, -0.261869, 0.185182,
		-0.195937, 0.929553, 0.312313,
		35.610638, 32.839130, 39.303997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176830, 32.340622, 38.680779>,  <35.747795, 32.188442, 39.085381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176830, 32.340622, 38.680779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282852, 32.693497, 38.836464>,  <35.346466, 32.905220, 38.929874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282852, 32.693497, 38.836464>,  <35.176830, 32.340622, 38.680779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282852, 32.693497, 38.836464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236363, 0.450782, -0.860772,
		-0.934814, 0.136158, 0.328000,
		0.265057, 0.882188, 0.389215,
		35.362370, 32.958153, 38.953228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651539, 32.787441, 38.517513>,  <35.176830, 32.340622, 38.680779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651539, 32.787441, 38.517513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962727, 33.026402, 38.595356>,  <35.149441, 33.169777, 38.642063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962727, 33.026402, 38.595356>,  <34.651539, 32.787441, 38.517513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962727, 33.026402, 38.595356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186192, 0.515033, -0.836704,
		-0.600077, 0.614697, 0.511913,
		0.777972, 0.597401, 0.194608,
		35.196117, 33.205624, 38.653740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395599, 33.473011, 38.380344>,  <34.651539, 32.787441, 38.517513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395599, 33.473011, 38.380344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793701, 33.489964, 38.345299>,  <35.032562, 33.500134, 38.324272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793701, 33.489964, 38.345299>,  <34.395599, 33.473011, 38.380344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793701, 33.489964, 38.345299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096307, 0.299242, -0.949305,
		-0.014014, 0.953236, 0.301903,
		0.995253, 0.042379, -0.087610,
		35.092278, 33.502678, 38.319016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642651, 34.169933, 38.121090>,  <34.395599, 33.473011, 38.380344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642651, 34.169933, 38.121090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898224, 33.881462, 38.014004>,  <35.051567, 33.708382, 37.949753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898224, 33.881462, 38.014004>,  <34.642651, 34.169933, 38.121090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898224, 33.881462, 38.014004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139412, 0.233694, -0.962263,
		0.756522, 0.652146, 0.048775,
		0.638935, -0.721174, -0.267712,
		35.089905, 33.665112, 37.933689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954021, 34.440399, 37.565163>,  <34.642651, 34.169933, 38.121090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954021, 34.440399, 37.565163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088871, 34.064739, 37.538799>,  <35.169781, 33.839344, 37.522980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088871, 34.064739, 37.538799>,  <34.954021, 34.440399, 37.565163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088871, 34.064739, 37.538799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047356, 0.053007, -0.997471,
		0.940269, 0.339391, -0.026605,
		0.337123, -0.939151, -0.065913,
		35.190006, 33.782993, 37.519024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596088, 34.504253, 37.135723>,  <34.954021, 34.440399, 37.565163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596088, 34.504253, 37.135723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419754, 34.145741, 37.116390>,  <35.313953, 33.930634, 37.104790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419754, 34.145741, 37.116390>,  <35.596088, 34.504253, 37.135723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419754, 34.145741, 37.116390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055488, 0.080956, -0.995172,
		0.895871, -0.436025, -0.085422,
		-0.440835, -0.896286, -0.048331,
		35.287502, 33.876854, 37.101891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880550, 34.060780, 36.655865>,  <35.596088, 34.504253, 37.135723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880550, 34.060780, 36.655865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512802, 33.907383, 36.690929>,  <35.292152, 33.815346, 36.711967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512802, 33.907383, 36.690929>,  <35.880550, 34.060780, 36.655865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512802, 33.907383, 36.690929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120589, 0.062629, -0.990725,
		0.374449, -0.921417, -0.103824,
		-0.919373, -0.383496, 0.087661,
		35.236992, 33.792336, 36.717228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936886, 33.732204, 36.123150>,  <35.880550, 34.060780, 36.655865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936886, 33.732204, 36.123150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550171, 33.731766, 36.225384>,  <35.318142, 33.731503, 36.286724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550171, 33.731766, 36.225384>,  <35.936886, 33.732204, 36.123150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550171, 33.731766, 36.225384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253664, 0.126486, -0.958987,
		-0.031271, -0.991968, -0.122564,
		-0.966787, -0.001102, 0.255582,
		35.260136, 33.731434, 36.302059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.405521, 31.647551, 44.156815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.025410, 31.682196, 44.037174>,  <34.797340, 31.702984, 43.965389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.025410, 31.682196, 44.037174>,  <35.405521, 31.647551, 44.156815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025410, 31.682196, 44.037174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311347, 0.248347, -0.917271,
		-0.005169, -0.964791, -0.262967,
		-0.950282, 0.086615, -0.299101,
		34.740326, 31.708179, 43.947445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274895, 31.167095, 43.654903>,  <35.405521, 31.647551, 44.156815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274895, 31.167095, 43.654903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.023094, 31.473459, 43.602581>,  <34.872013, 31.657278, 43.571190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.023094, 31.473459, 43.602581>,  <35.274895, 31.167095, 43.654903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023094, 31.473459, 43.602581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288323, 0.073934, -0.954675,
		-0.721523, -0.638684, -0.267371,
		-0.629503, 0.765909, -0.130802,
		34.834244, 31.703232, 43.563339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996101, 31.106384, 42.921227>,  <35.274895, 31.167095, 43.654903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996101, 31.106384, 42.921227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.889610, 31.484726, 42.995506>,  <34.825714, 31.711731, 43.040073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.889610, 31.484726, 42.995506>,  <34.996101, 31.106384, 42.921227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889610, 31.484726, 42.995506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097530, 0.218094, -0.971042,
		-0.958963, -0.240410, -0.150312,
		-0.266230, 0.945853, 0.185697,
		34.809742, 31.768482, 43.051216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510986, 31.308840, 42.400528>,  <34.996101, 31.106384, 42.921227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510986, 31.308840, 42.400528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.677895, 31.644876, 42.539165>,  <34.778042, 31.846498, 42.622349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.677895, 31.644876, 42.539165>,  <34.510986, 31.308840, 42.400528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677895, 31.644876, 42.539165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178936, 0.297970, -0.937654,
		-0.890991, 0.453277, -0.025988,
		0.417273, 0.840092, 0.346596,
		34.803078, 31.896904, 42.643143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125481, 31.939945, 42.074905>,  <34.510986, 31.308840, 42.400528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125481, 31.939945, 42.074905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.477169, 32.082542, 42.201321>,  <34.688183, 32.168102, 42.277172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.477169, 32.082542, 42.201321>,  <34.125481, 31.939945, 42.074905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477169, 32.082542, 42.201321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178407, 0.368732, -0.912254,
		-0.441748, 0.858457, 0.260596,
		0.879221, 0.356494, 0.316041,
		34.740936, 32.189491, 42.296135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089653, 32.608543, 41.843018>,  <34.125481, 31.939945, 42.074905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089653, 32.608543, 41.843018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.478180, 32.575283, 41.932137>,  <34.711296, 32.555325, 41.985607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.478180, 32.575283, 41.932137>,  <34.089653, 32.608543, 41.843018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478180, 32.575283, 41.932137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228608, 0.584546, -0.778488,
		-0.065500, 0.807088, 0.586787,
		0.971313, -0.083154, 0.222795,
		34.769573, 32.550339, 41.998974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339684, 33.216454, 41.783123>,  <34.089653, 32.608543, 41.843018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339684, 33.216454, 41.783123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.677586, 33.003452, 41.761833>,  <34.880325, 32.875652, 41.749058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.677586, 33.003452, 41.761833>,  <34.339684, 33.216454, 41.783123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677586, 33.003452, 41.761833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296392, 0.548353, -0.781959,
		0.445584, 0.644785, 0.621053,
		0.844752, -0.532504, -0.053228,
		34.931011, 32.843700, 41.745865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877872, 33.683659, 41.674221>,  <34.339684, 33.216454, 41.783123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877872, 33.683659, 41.674221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.009895, 33.336937, 41.524712>,  <35.089108, 33.128902, 41.435005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.009895, 33.336937, 41.524712>,  <34.877872, 33.683659, 41.674221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009895, 33.336937, 41.524712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393928, 0.486315, -0.779947,
		0.857837, 0.110186, 0.501971,
		0.330055, -0.866808, -0.373774,
		35.108913, 33.076893, 41.412579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569427, 33.737595, 41.343941>,  <34.877872, 33.683659, 41.674221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569427, 33.737595, 41.343941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.408611, 33.404743, 41.191143>,  <35.312122, 33.205032, 41.099464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.408611, 33.404743, 41.191143>,  <35.569427, 33.737595, 41.343941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408611, 33.404743, 41.191143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074273, 0.386187, -0.919425,
		0.912603, -0.398021, -0.093459,
		-0.402043, -0.832129, -0.381998,
		35.287998, 33.155106, 41.076542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112812, 33.252773, 41.565582>,  <35.569427, 33.737595, 41.343941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112812, 33.252773, 41.565582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454525, 33.459942, 41.583290>,  <36.659554, 33.584244, 41.593914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454525, 33.459942, 41.583290>,  <36.112812, 33.252773, 41.565582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454525, 33.459942, 41.583290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144787, 0.155284, 0.977202,
		0.499240, -0.841215, 0.207644,
		0.854281, 0.517923, 0.044273,
		36.710808, 33.615318, 41.596573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397800, 33.126961, 42.261707>,  <36.112812, 33.252773, 41.565582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397800, 33.126961, 42.261707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.601105, 33.447121, 42.134567>,  <36.723087, 33.639217, 42.058285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.601105, 33.447121, 42.134567>,  <36.397800, 33.126961, 42.261707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601105, 33.447121, 42.134567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037417, 0.348205, 0.936671,
		0.860392, -0.487963, 0.147029,
		0.508257, 0.800403, -0.317851,
		36.753582, 33.687241, 42.039211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054211, 33.206177, 42.552963>,  <36.397800, 33.126961, 42.261707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054211, 33.206177, 42.552963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.957993, 33.579514, 42.446377>,  <36.900261, 33.803516, 42.382423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.957993, 33.579514, 42.446377>,  <37.054211, 33.206177, 42.552963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957993, 33.579514, 42.446377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247531, 0.324436, 0.912946,
		0.938544, 0.153649, -0.309074,
		-0.240548, 0.933345, -0.266465,
		36.885830, 33.859516, 42.366436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534481, 33.493813, 42.841064>,  <37.054211, 33.206177, 42.552963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534481, 33.493813, 42.841064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.247948, 33.768204, 42.789993>,  <37.076027, 33.932838, 42.759350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.247948, 33.768204, 42.789993>,  <37.534481, 33.493813, 42.841064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247948, 33.768204, 42.789993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349052, 0.510735, 0.785692,
		0.604177, 0.518251, -0.605299,
		-0.716333, 0.685978, -0.127678,
		37.033047, 33.973995, 42.751690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854553, 34.071648, 42.960705>,  <37.534481, 33.493813, 42.841064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854553, 34.071648, 42.960705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.466827, 34.145283, 43.025867>,  <37.234192, 34.189465, 43.064964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.466827, 34.145283, 43.025867>,  <37.854553, 34.071648, 42.960705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466827, 34.145283, 43.025867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234162, 0.489814, 0.839792,
		0.074806, 0.852169, -0.517891,
		-0.969315, 0.184092, 0.162904,
		37.176033, 34.200512, 43.074738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862076, 34.683628, 43.348297>,  <37.854553, 34.071648, 42.960705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862076, 34.683628, 43.348297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.500648, 34.526985, 43.417812>,  <37.283791, 34.432999, 43.459522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.500648, 34.526985, 43.417812>,  <37.862076, 34.683628, 43.348297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500648, 34.526985, 43.417812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007549, 0.420117, 0.907438,
		-0.428374, 0.818622, -0.382562,
		-0.903570, -0.391611, 0.173788,
		37.229576, 34.409500, 43.469948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578320, 35.282703, 43.640598>,  <37.862076, 34.683628, 43.348297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578320, 35.282703, 43.640598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.372726, 34.953236, 43.736420>,  <37.249371, 34.755554, 43.793911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.372726, 34.953236, 43.736420>,  <37.578320, 35.282703, 43.640598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372726, 34.953236, 43.736420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136535, 0.354255, 0.925128,
		-0.846864, 0.442794, -0.294541,
		-0.513984, -0.823673, 0.239549,
		37.218533, 34.706135, 43.808285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311295, 35.505791, 44.305210>,  <37.578320, 35.282703, 43.640598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311295, 35.505791, 44.305210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.286453, 35.106754, 44.292862>,  <37.271549, 34.867332, 44.285454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.286453, 35.106754, 44.292862>,  <37.311295, 35.505791, 44.305210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286453, 35.106754, 44.292862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056405, -0.027374, 0.998033,
		-0.996475, 0.063719, -0.054570,
		-0.062100, -0.997592, -0.030872,
		37.267822, 34.807476, 44.283600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672142, 35.348812, 44.592564>,  <37.311295, 35.505791, 44.305210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672142, 35.348812, 44.592564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.893616, 35.018715, 44.637115>,  <37.026501, 34.820656, 44.663849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.893616, 35.018715, 44.637115>,  <36.672142, 35.348812, 44.592564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893616, 35.018715, 44.637115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309704, -0.079910, 0.947469,
		-0.772994, -0.559091, -0.299827,
		0.553681, -0.825246, 0.111383,
		37.059719, 34.771141, 44.670528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303211, 34.942768, 45.015511>,  <36.672142, 35.348812, 44.592564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303211, 34.942768, 45.015511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.660080, 34.765324, 45.049553>,  <36.874199, 34.658855, 45.069977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.660080, 34.765324, 45.049553>,  <36.303211, 34.942768, 45.015511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660080, 34.765324, 45.049553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156522, -0.126882, 0.979491,
		-0.423720, -0.887190, -0.182635,
		0.892168, -0.443616, 0.085102,
		36.927731, 34.632240, 45.075085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241463, 34.342396, 45.401966>,  <36.303211, 34.942768, 45.015511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241463, 34.342396, 45.401966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.634960, 34.404804, 45.437523>,  <36.871059, 34.442249, 45.458855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.634960, 34.404804, 45.437523>,  <36.241463, 34.342396, 45.401966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634960, 34.404804, 45.437523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029056, -0.350186, 0.936230,
		0.177200, -0.923595, -0.339960,
		0.983746, 0.156022, 0.088888,
		36.930084, 34.451611, 45.464188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400536, 33.796772, 45.775349>,  <36.241463, 34.342396, 45.401966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400536, 33.796772, 45.775349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.687492, 34.070496, 45.827610>,  <36.859665, 34.234730, 45.858967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.687492, 34.070496, 45.827610>,  <36.400536, 33.796772, 45.775349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687492, 34.070496, 45.827610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028118, -0.215825, 0.976027,
		0.696101, -0.696522, -0.174073,
		0.717393, 0.684308, 0.130652,
		36.902710, 34.275787, 45.866806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861801, 33.480667, 46.286606>,  <36.400536, 33.796772, 45.775349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861801, 33.480667, 46.286606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.003197, 33.853619, 46.316833>,  <37.088036, 34.077389, 46.334969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.003197, 33.853619, 46.316833>,  <36.861801, 33.480667, 46.286606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003197, 33.853619, 46.316833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028383, -0.091439, 0.995406,
		0.935006, -0.349725, -0.058787,
		0.353493, 0.932379, 0.075570,
		37.109245, 34.133331, 46.339504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431427, 33.501740, 46.702370>,  <36.861801, 33.480667, 46.286606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431427, 33.501740, 46.702370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.272301, 33.868687, 46.707825>,  <37.176826, 34.088856, 46.711098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.272301, 33.868687, 46.707825>,  <37.431427, 33.501740, 46.702370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272301, 33.868687, 46.707825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260900, -0.127367, 0.956927,
		0.879587, 0.377123, 0.290009,
		-0.397816, 0.917364, 0.013639,
		37.152954, 34.143894, 46.711918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.540756, 34.136116, 45.166355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828526, 34.169445, 45.442177>,  <32.001186, 34.189442, 45.607670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828526, 34.169445, 45.442177>,  <31.540756, 34.136116, 45.166355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828526, 34.169445, 45.442177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577767, 0.479228, -0.660701,
		-0.385503, 0.873727, 0.296630,
		0.719425, 0.083319, 0.689555,
		32.044353, 34.194439, 45.649044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783073, 34.822807, 45.189789>,  <31.540756, 34.136116, 45.166355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783073, 34.822807, 45.189789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.085117, 34.614777, 45.349453>,  <32.266342, 34.489960, 45.445251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.085117, 34.614777, 45.349453>,  <31.783073, 34.822807, 45.189789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085117, 34.614777, 45.349453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625002, 0.387242, -0.677802,
		0.197938, 0.761292, 0.617459,
		0.755111, -0.520076, 0.399159,
		32.311649, 34.458755, 45.469200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271313, 35.352745, 45.294254>,  <31.783073, 34.822807, 45.189789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271313, 35.352745, 45.294254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463966, 35.002312, 45.285286>,  <32.579559, 34.792053, 45.279903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.463966, 35.002312, 45.285286>,  <32.271313, 35.352745, 45.294254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463966, 35.002312, 45.285286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651228, 0.374906, -0.659809,
		0.586453, 0.303189, 0.751099,
		0.481638, -0.876083, -0.022420,
		32.608459, 34.739487, 45.278561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927147, 35.558121, 45.333752>,  <32.271313, 35.352745, 45.294254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927147, 35.558121, 45.333752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.949074, 35.176136, 45.217102>,  <32.962231, 34.946945, 45.147110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.949074, 35.176136, 45.217102>,  <32.927147, 35.558121, 45.333752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949074, 35.176136, 45.217102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679787, 0.249623, -0.689622,
		0.731358, -0.160438, 0.662854,
		0.054822, -0.954960, -0.291628,
		32.965519, 34.889648, 45.129612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593945, 35.467918, 45.124634>,  <32.927147, 35.558121, 45.333752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593945, 35.467918, 45.124634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.420589, 35.163483, 44.931587>,  <33.316578, 34.980824, 44.815758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.420589, 35.163483, 44.931587>,  <33.593945, 35.467918, 45.124634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420589, 35.163483, 44.931587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480537, 0.257887, -0.838200,
		0.762405, -0.595181, 0.253967,
		-0.433385, -0.761088, -0.482620,
		33.290573, 34.935158, 44.786800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124584, 35.104469, 44.796452>,  <33.593945, 35.467918, 45.124634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124584, 35.104469, 44.796452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.787933, 35.039455, 44.590446>,  <33.585941, 35.000446, 44.466843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.787933, 35.039455, 44.590446>,  <34.124584, 35.104469, 44.796452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787933, 35.039455, 44.590446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466736, 0.260843, -0.845055,
		0.271704, -0.951598, -0.143663,
		-0.841626, -0.162552, -0.515017,
		33.535442, 34.990692, 44.435944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344620, 34.800732, 44.185383>,  <34.124584, 35.104469, 44.796452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344620, 34.800732, 44.185383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.977619, 34.933350, 44.097492>,  <33.757420, 35.012920, 44.044758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.977619, 34.933350, 44.097492>,  <34.344620, 34.800732, 44.185383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977619, 34.933350, 44.097492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331592, 0.332516, -0.882882,
		-0.219650, -0.882901, -0.415019,
		-0.917497, 0.331542, -0.219726,
		33.702370, 35.032810, 44.031574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153507, 34.420029, 43.603184>,  <34.344620, 34.800732, 44.185383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153507, 34.420029, 43.603184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.905750, 34.733997, 43.609528>,  <33.757095, 34.922379, 43.613335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.905750, 34.733997, 43.609528>,  <34.153507, 34.420029, 43.603184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905750, 34.733997, 43.609528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275978, 0.236600, -0.931588,
		-0.734978, -0.572639, -0.363169,
		-0.619390, 0.784923, 0.015860,
		33.719933, 34.969475, 43.614285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743519, 34.468361, 42.851910>,  <34.153507, 34.420029, 43.603184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743519, 34.468361, 42.851910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.683220, 34.840332, 42.986080>,  <33.647041, 35.063515, 43.066582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.683220, 34.840332, 42.986080>,  <33.743519, 34.468361, 42.851910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683220, 34.840332, 42.986080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056379, 0.330662, -0.942064,
		-0.986964, -0.160922, 0.002583,
		-0.150744, 0.929929, 0.335424,
		33.637997, 35.119312, 43.086708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210190, 34.659981, 42.537430>,  <33.743519, 34.468361, 42.851910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210190, 34.659981, 42.537430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.347115, 35.019150, 42.648106>,  <33.429272, 35.234650, 42.714512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.347115, 35.019150, 42.648106>,  <33.210190, 34.659981, 42.537430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347115, 35.019150, 42.648106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417683, 0.409208, -0.811227,
		-0.841642, 0.162126, 0.515125,
		0.342314, 0.897922, 0.276690,
		33.449810, 35.288525, 42.731113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606693, 35.090687, 42.445137>,  <33.210190, 34.659981, 42.537430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606693, 35.090687, 42.445137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.951027, 35.293888, 42.433105>,  <33.157627, 35.415810, 42.425888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.951027, 35.293888, 42.433105>,  <32.606693, 35.090687, 42.445137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951027, 35.293888, 42.433105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277802, 0.419580, -0.864164,
		-0.426375, 0.752255, 0.502311,
		0.860831, 0.508001, -0.030079,
		33.209278, 35.446289, 42.424080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463360, 35.780396, 42.420597>,  <32.606693, 35.090687, 42.445137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463360, 35.780396, 42.420597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.836555, 35.776333, 42.276691>,  <33.060471, 35.773895, 42.190346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.836555, 35.776333, 42.276691>,  <32.463360, 35.780396, 42.420597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836555, 35.776333, 42.276691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291573, 0.564680, -0.772089,
		0.210998, 0.825247, 0.523877,
		0.932987, -0.010161, -0.359766,
		33.116451, 35.773285, 42.168762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626205, 36.462585, 42.147266>,  <32.463360, 35.780396, 42.420597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626205, 36.462585, 42.147266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.873741, 36.204224, 41.968449>,  <33.022263, 36.049206, 41.861156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.873741, 36.204224, 41.968449>,  <32.626205, 36.462585, 42.147266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873741, 36.204224, 41.968449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251005, 0.376672, -0.891692,
		0.744339, 0.664020, 0.070972,
		0.618835, -0.645907, -0.447044,
		33.059391, 36.010452, 41.834335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022350, 36.928501, 41.660664>,  <32.626205, 36.462585, 42.147266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022350, 36.928501, 41.660664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.032955, 36.543400, 41.553024>,  <33.039318, 36.312340, 41.488441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.032955, 36.543400, 41.553024>,  <33.022350, 36.928501, 41.660664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032955, 36.543400, 41.553024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250119, 0.254237, -0.934240,
		0.967852, 0.092078, -0.234061,
		0.026517, -0.962749, -0.269094,
		33.040909, 36.254574, 41.472298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668468, 37.215130, 41.960648>,  <33.022350, 36.928501, 41.660664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668468, 37.215130, 41.960648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.888847, 37.528564, 42.075500>,  <34.021076, 37.716625, 42.144413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.888847, 37.528564, 42.075500>,  <33.668468, 37.215130, 41.960648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888847, 37.528564, 42.075500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324706, -0.115676, 0.938715,
		0.768777, -0.610421, 0.190703,
		0.550951, 0.783585, 0.287136,
		34.054134, 37.763641, 42.161640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022488, 37.073326, 42.547592>,  <33.668468, 37.215130, 41.960648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022488, 37.073326, 42.547592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.981358, 37.470940, 42.562096>,  <33.956680, 37.709507, 42.570797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.981358, 37.470940, 42.562096>,  <34.022488, 37.073326, 42.547592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981358, 37.470940, 42.562096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294253, -0.065215, 0.953500,
		0.950179, 0.087379, 0.299205,
		-0.102828, 0.994038, 0.036255,
		33.950508, 37.769150, 42.572971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561676, 37.355595, 43.009819>,  <34.022488, 37.073326, 42.547592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561676, 37.355595, 43.009819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.241280, 37.594513, 42.993603>,  <34.049042, 37.737865, 42.983871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.241280, 37.594513, 42.993603>,  <34.561676, 37.355595, 43.009819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241280, 37.594513, 42.993603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121130, -0.095372, 0.988044,
		0.586291, 0.796328, 0.148743,
		-0.800993, 0.597299, -0.040543,
		34.000980, 37.773705, 42.981441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412495, 37.445618, 43.666733>,  <34.561676, 37.355595, 43.009819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412495, 37.445618, 43.666733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.097565, 37.656071, 43.538174>,  <33.908607, 37.782345, 43.461037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.097565, 37.656071, 43.538174>,  <34.412495, 37.445618, 43.666733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097565, 37.656071, 43.538174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324754, 0.089215, 0.941581,
		0.524074, 0.845708, 0.100623,
		-0.787326, 0.526136, -0.321402,
		33.861366, 37.813911, 43.441753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261436, 37.898781, 44.143105>,  <34.412495, 37.445618, 43.666733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261436, 37.898781, 44.143105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.912651, 37.906261, 43.947418>,  <33.703381, 37.910751, 43.830006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.912651, 37.906261, 43.947418>,  <34.261436, 37.898781, 44.143105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912651, 37.906261, 43.947418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485911, 0.088916, 0.869474,
		0.059762, 0.995863, -0.068443,
		-0.871963, 0.018704, -0.489215,
		33.651062, 37.911873, 43.800655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868591, 38.416866, 44.386017>,  <34.261436, 37.898781, 44.143105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868591, 38.416866, 44.386017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.601582, 38.153923, 44.246136>,  <33.441376, 37.996159, 44.162205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.601582, 38.153923, 44.246136>,  <33.868591, 38.416866, 44.386017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601582, 38.153923, 44.246136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448919, -0.019395, 0.893362,
		-0.594040, 0.753330, -0.282153,
		-0.667524, -0.657357, -0.349705,
		33.401325, 37.956715, 44.141224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229324, 38.609035, 44.599380>,  <33.868591, 38.416866, 44.386017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229324, 38.609035, 44.599380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.188179, 38.217060, 44.531097>,  <33.163490, 37.981876, 44.490128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.188179, 38.217060, 44.531097>,  <33.229324, 38.609035, 44.599380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188179, 38.217060, 44.531097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357410, -0.123742, 0.925714,
		-0.928266, 0.156233, -0.337511,
		-0.102863, -0.979938, -0.170704,
		33.157322, 37.923080, 44.479885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827797, 38.467201, 45.142570>,  <33.229324, 38.609035, 44.599380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827797, 38.467201, 45.142570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.905674, 38.091930, 45.028080>,  <32.952400, 37.866768, 44.959385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.905674, 38.091930, 45.028080>,  <32.827797, 38.467201, 45.142570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905674, 38.091930, 45.028080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392004, -0.341917, 0.854064,
		-0.899127, -0.054072, -0.434335,
		0.194688, -0.938173, -0.286230,
		32.964081, 37.810478, 44.942211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253117, 38.104668, 45.182297>,  <32.827797, 38.467201, 45.142570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253117, 38.104668, 45.182297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.557030, 37.847328, 45.219887>,  <32.739376, 37.692924, 45.242439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.557030, 37.847328, 45.219887>,  <32.253117, 38.104668, 45.182297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557030, 37.847328, 45.219887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422096, -0.378134, 0.823924,
		-0.494539, -0.665667, -0.558855,
		0.759781, -0.643352, 0.093973,
		32.784966, 37.654324, 45.248077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960365, 37.444008, 45.311184>,  <32.253117, 38.104668, 45.182297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960365, 37.444008, 45.311184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.333012, 37.396294, 45.448505>,  <32.556599, 37.367664, 45.530899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.333012, 37.396294, 45.448505>,  <31.960365, 37.444008, 45.311184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333012, 37.396294, 45.448505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358644, -0.454666, 0.815263,
		0.058843, -0.882638, -0.466355,
		0.931618, -0.119283, 0.343307,
		32.612495, 37.360508, 45.551498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985317, 36.742893, 45.584782>,  <31.960365, 37.444008, 45.311184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985317, 36.742893, 45.584782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.266697, 36.965710, 45.761356>,  <32.435524, 37.099400, 45.867302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.266697, 36.965710, 45.761356>,  <31.985317, 36.742893, 45.584782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266697, 36.965710, 45.761356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141769, -0.498636, 0.855139,
		0.696464, -0.664128, -0.271794,
		0.703449, 0.557042, 0.441435,
		32.477730, 37.132824, 45.893787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143524, 36.291985, 46.037079>,  <31.985317, 36.742893, 45.584782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143524, 36.291985, 46.037079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.335327, 36.619549, 46.163227>,  <32.450409, 36.816086, 46.238918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.335327, 36.619549, 46.163227>,  <32.143524, 36.291985, 46.037079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335327, 36.619549, 46.163227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105732, -0.410682, 0.905627,
		0.871144, -0.400912, -0.283511,
		0.479510, 0.818908, 0.315374,
		32.479179, 36.865223, 46.257839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771294, 36.040668, 46.474979>,  <32.143524, 36.291985, 46.037079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771294, 36.040668, 46.474979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.678391, 36.414772, 46.581818>,  <32.622650, 36.639236, 46.645920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.678391, 36.414772, 46.581818>,  <32.771294, 36.040668, 46.474979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678391, 36.414772, 46.581818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206683, -0.315789, 0.926045,
		0.950441, 0.159877, 0.266647,
		-0.232258, 0.935263, 0.267095,
		32.608711, 36.695351, 46.661945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132931, 36.126904, 47.006855>,  <32.771294, 36.040668, 46.474979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132931, 36.126904, 47.006855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.864834, 36.420673, 47.049553>,  <32.703976, 36.596935, 47.075172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.864834, 36.420673, 47.049553>,  <33.132931, 36.126904, 47.006855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864834, 36.420673, 47.049553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110475, -0.240970, 0.964224,
		0.733870, 0.634475, 0.242645,
		-0.670246, 0.734421, 0.106747,
		32.663761, 36.640999, 47.081577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819141, 36.568729, 47.116341>,  <33.132931, 36.126904, 47.006855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819141, 36.568729, 47.116341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.156467, 36.654835, 47.313309>,  <34.358864, 36.706497, 47.431488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.156467, 36.654835, 47.313309>,  <33.819141, 36.568729, 47.116341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156467, 36.654835, 47.313309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477960, 0.118490, -0.870353,
		-0.245701, 0.969341, -0.002963,
		0.843318, 0.215263, 0.492419,
		34.409462, 36.719414, 47.461033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014980, 37.264652, 46.926888>,  <33.819141, 36.568729, 47.116341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014980, 37.264652, 46.926888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.339794, 37.066685, 47.050606>,  <34.534683, 36.947906, 47.124836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.339794, 37.066685, 47.050606>,  <34.014980, 37.264652, 46.926888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339794, 37.066685, 47.050606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476387, 0.255951, -0.841157,
		0.337136, 0.830390, 0.443611,
		0.812031, -0.494915, 0.309297,
		34.583405, 36.918209, 47.143394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485081, 37.608822, 46.674629>,  <34.014980, 37.264652, 46.926888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485081, 37.608822, 46.674629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.697464, 37.281364, 46.762184>,  <34.824894, 37.084892, 46.814716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.697464, 37.281364, 46.762184>,  <34.485081, 37.608822, 46.674629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697464, 37.281364, 46.762184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637569, 0.215778, -0.739557,
		0.558200, 0.532230, 0.636509,
		0.530960, -0.818639, 0.218886,
		34.856750, 37.035774, 46.827850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207378, 37.800579, 46.757561>,  <34.485081, 37.608822, 46.674629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207378, 37.800579, 46.757561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.214298, 37.410316, 46.670120>,  <35.218452, 37.176159, 46.617657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.214298, 37.410316, 46.670120>,  <35.207378, 37.800579, 46.757561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214298, 37.410316, 46.670120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658178, 0.175700, -0.732073,
		0.752663, -0.131213, 0.645198,
		0.017304, -0.975660, -0.218604,
		35.219490, 37.117619, 46.604538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999966, 37.560646, 46.760921>,  <35.207378, 37.800579, 46.757561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999966, 37.560646, 46.760921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.770058, 37.310890, 46.549347>,  <35.632111, 37.161037, 46.422401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.770058, 37.310890, 46.549347>,  <35.999966, 37.560646, 46.760921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770058, 37.310890, 46.549347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509873, 0.232304, -0.828290,
		0.640052, -0.745766, 0.184840,
		-0.574772, -0.624394, -0.528932,
		35.597626, 37.123573, 46.390667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466492, 37.159203, 46.396900>,  <35.999966, 37.560646, 46.760921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466492, 37.159203, 46.396900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.136459, 37.046410, 46.201057>,  <35.938438, 36.978733, 46.083549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.136459, 37.046410, 46.201057>,  <36.466492, 37.159203, 46.396900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136459, 37.046410, 46.201057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465813, 0.150940, -0.871915,
		0.319770, -0.947471, 0.006815,
		-0.825085, -0.281987, -0.489610,
		35.888935, 36.961815, 46.054176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644978, 36.587784, 45.898830>,  <36.466492, 37.159203, 46.396900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644978, 36.587784, 45.898830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.317146, 36.778854, 45.772266>,  <36.120445, 36.893497, 45.696327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.317146, 36.778854, 45.772266>,  <36.644978, 36.587784, 45.898830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317146, 36.778854, 45.772266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472535, 0.251205, -0.844752,
		-0.324035, -0.841856, -0.431601,
		-0.819580, 0.477676, -0.316408,
		36.071274, 36.922157, 45.677345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483608, 36.297890, 45.182671>,  <36.644978, 36.587784, 45.898830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483608, 36.297890, 45.182671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.279373, 36.640934, 45.207310>,  <36.156830, 36.846760, 45.222092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.279373, 36.640934, 45.207310>,  <36.483608, 36.297890, 45.182671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279373, 36.640934, 45.207310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402879, 0.301916, -0.864023,
		-0.759596, -0.416345, -0.499670,
		-0.510590, 0.857615, 0.061598,
		36.126198, 36.898220, 45.225788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038872, 36.319237, 44.671238>,  <36.483608, 36.297890, 45.182671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038872, 36.319237, 44.671238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.109146, 36.694946, 44.789154>,  <36.151310, 36.920372, 44.859905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.109146, 36.694946, 44.789154>,  <36.038872, 36.319237, 44.671238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109146, 36.694946, 44.789154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334897, 0.224566, -0.915103,
		-0.925731, 0.259496, -0.275107,
		0.175686, 0.939272, 0.294792,
		36.161854, 36.976727, 44.877590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810280, 36.745789, 44.158470>,  <36.038872, 36.319237, 44.671238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810280, 36.745789, 44.158470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.029507, 37.018784, 44.351894>,  <36.161045, 37.182579, 44.467949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.029507, 37.018784, 44.351894>,  <35.810280, 36.745789, 44.158470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029507, 37.018784, 44.351894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377750, 0.313846, -0.871094,
		-0.746274, 0.660086, -0.085800,
		0.548069, 0.682486, 0.483563,
		36.193928, 37.223530, 44.496964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754730, 37.271294, 43.636456>,  <35.810280, 36.745789, 44.158470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754730, 37.271294, 43.636456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.061783, 37.300190, 43.891178>,  <36.246014, 37.317528, 44.044010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.061783, 37.300190, 43.891178>,  <35.754730, 37.271294, 43.636456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061783, 37.300190, 43.891178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607308, 0.235430, -0.758781,
		-0.204741, 0.969203, 0.136849,
		0.767631, 0.072245, 0.636807,
		36.292072, 37.321865, 44.082222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947800, 37.925999, 43.517117>,  <35.754730, 37.271294, 43.636456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947800, 37.925999, 43.517117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.250660, 37.724277, 43.683201>,  <36.432377, 37.603245, 43.782852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.250660, 37.724277, 43.683201>,  <35.947800, 37.925999, 43.517117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250660, 37.724277, 43.683201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591566, 0.259734, -0.763274,
		0.277078, 0.823539, 0.494987,
		0.757151, -0.504304, 0.415211,
		36.477806, 37.572987, 43.807766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583809, 38.349117, 43.483997>,  <35.947800, 37.925999, 43.517117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583809, 38.349117, 43.483997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.700935, 37.967678, 43.512039>,  <36.771210, 37.738815, 43.528866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.700935, 37.967678, 43.512039>,  <36.583809, 38.349117, 43.483997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700935, 37.967678, 43.512039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558363, 0.111013, -0.822135,
		0.776202, 0.279878, 0.564959,
		0.292815, -0.953596, 0.070105,
		36.788780, 37.681599, 43.533070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264027, 38.336620, 43.328594>,  <36.583809, 38.349117, 43.483997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264027, 38.336620, 43.328594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.160702, 37.953075, 43.281494>,  <37.098709, 37.722950, 43.253235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.160702, 37.953075, 43.281494>,  <37.264027, 38.336620, 43.328594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160702, 37.953075, 43.281494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695743, -0.100081, -0.711284,
		0.670237, -0.265653, 0.692972,
		-0.258309, -0.958860, -0.117748,
		37.083210, 37.665417, 43.246170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.786146, 34.577408, 25.880453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.507019, 34.861710, 25.844950>,  <25.339542, 35.032291, 25.823647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.507019, 34.861710, 25.844950>,  <25.786146, 34.577408, 25.880453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.507019, 34.861710, 25.844950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093090, 0.032875, 0.995115,
		0.710200, 0.702672, 0.043223,
		-0.697819, 0.710754, -0.088760,
		25.297674, 35.074936, 25.818321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033211, 35.160336, 26.181726>,  <25.786146, 34.577408, 25.880453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033211, 35.160336, 26.181726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.633425, 35.147488, 26.184036>,  <25.393553, 35.139778, 26.185423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.633425, 35.147488, 26.184036>,  <26.033211, 35.160336, 26.181726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.633425, 35.147488, 26.184036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004705, 0.033300, 0.999434,
		-0.032293, 0.998929, -0.033131,
		-0.999467, -0.032119, 0.005775,
		25.333584, 35.137852, 26.185768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774200, 35.790371, 26.546244>,  <26.033211, 35.160336, 26.181726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774200, 35.790371, 26.546244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.481665, 35.519989, 26.582533>,  <25.306143, 35.357761, 26.604307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.481665, 35.519989, 26.582533>,  <25.774200, 35.790371, 26.546244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.481665, 35.519989, 26.582533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043832, 0.179333, 0.982811,
		-0.680601, 0.714794, -0.160782,
		-0.731342, -0.675950, 0.090724,
		25.262262, 35.317204, 26.609751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.388889, 36.002148, 27.136703>,  <25.774200, 35.790371, 26.546244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.388889, 36.002148, 27.136703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.209793, 35.651928, 27.064102>,  <25.102335, 35.441795, 27.020542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.209793, 35.651928, 27.064102>,  <25.388889, 36.002148, 27.136703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.209793, 35.651928, 27.064102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419151, 0.026214, 0.907538,
		-0.789835, 0.482420, -0.378724,
		-0.447742, -0.875548, -0.181502,
		25.075470, 35.389263, 27.009651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.636902, 36.055836, 27.451895>,  <25.388889, 36.002148, 27.136703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.636902, 36.055836, 27.451895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.724461, 35.668049, 27.407682>,  <24.776997, 35.435375, 27.381155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.724461, 35.668049, 27.407682>,  <24.636902, 36.055836, 27.451895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.724461, 35.668049, 27.407682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435861, -0.198501, 0.877851,
		-0.872988, -0.143982, -0.466005,
		0.218898, -0.969467, -0.110533,
		24.790131, 35.377209, 27.374523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.043545, 35.609352, 27.621620>,  <24.636902, 36.055836, 27.451895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.043545, 35.609352, 27.621620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.375923, 35.394302, 27.678865>,  <24.575350, 35.265270, 27.713213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.375923, 35.394302, 27.678865>,  <24.043545, 35.609352, 27.621620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.375923, 35.394302, 27.678865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259367, -0.146771, 0.954561,
		-0.492195, -0.830309, -0.261402,
		0.830947, -0.537629, 0.143115,
		24.625208, 35.233013, 27.721800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.805773, 35.105221, 28.008823>,  <24.043545, 35.609352, 27.621620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.805773, 35.105221, 28.008823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.201075, 35.094486, 28.068996>,  <24.438255, 35.088043, 28.105101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.201075, 35.094486, 28.068996>,  <23.805773, 35.105221, 28.008823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.201075, 35.094486, 28.068996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152804, -0.166273, 0.974168,
		-0.001134, -0.985714, -0.168421,
		0.988256, -0.026840, 0.150432,
		24.497551, 35.086433, 28.114126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.885326, 34.587124, 28.479225>,  <23.805773, 35.105221, 28.008823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.885326, 34.587124, 28.479225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.211281, 34.814083, 28.526588>,  <24.406855, 34.950256, 28.555006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.211281, 34.814083, 28.526588>,  <23.885326, 34.587124, 28.479225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.211281, 34.814083, 28.526588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033525, -0.157806, 0.986901,
		0.578649, -0.808183, -0.109572,
		0.814887, 0.567395, 0.118409,
		24.455748, 34.984303, 28.562111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.275576, 34.379776, 29.063866>,  <23.885326, 34.587124, 28.479225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.275576, 34.379776, 29.063866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.463902, 34.731247, 29.032209>,  <24.576897, 34.942127, 29.013216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.463902, 34.731247, 29.032209>,  <24.275576, 34.379776, 29.063866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.463902, 34.731247, 29.032209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260739, -0.052887, 0.963959,
		0.842821, -0.474483, -0.254005,
		0.470816, 0.878674, -0.079142,
		24.605146, 34.994850, 29.008467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.904953, 34.363873, 29.368092>,  <24.275576, 34.379776, 29.063866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.904953, 34.363873, 29.368092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.842493, 34.758461, 29.348089>,  <24.805017, 34.995213, 29.336088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.842493, 34.758461, 29.348089>,  <24.904953, 34.363873, 29.368092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.842493, 34.758461, 29.348089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179320, 0.078098, 0.980686,
		0.971319, 0.144168, -0.189088,
		-0.156151, 0.986467, -0.050006,
		24.795649, 35.054401, 29.333088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.395422, 34.605911, 29.841957>,  <24.904953, 34.363873, 29.368092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.395422, 34.605911, 29.841957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.143530, 34.912201, 29.789644>,  <24.992393, 35.095974, 29.758257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.143530, 34.912201, 29.789644>,  <25.395422, 34.605911, 29.841957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.143530, 34.912201, 29.789644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023520, 0.187077, 0.982064,
		0.776457, 0.615360, -0.135819,
		-0.629731, 0.765725, -0.130784,
		24.954611, 35.141918, 29.750408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696115, 35.143311, 30.100065>,  <25.395422, 34.605911, 29.841957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696115, 35.143311, 30.100065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.312740, 35.256405, 30.115332>,  <25.082716, 35.324261, 30.124493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.312740, 35.256405, 30.115332>,  <25.696115, 35.143311, 30.100065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.312740, 35.256405, 30.115332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042942, 0.010704, 0.999020,
		0.282052, 0.959137, -0.022401,
		-0.958438, 0.282738, 0.038168,
		25.025209, 35.341225, 30.126781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708490, 35.586945, 30.596018>,  <25.696115, 35.143311, 30.100065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708490, 35.586945, 30.596018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.322184, 35.484364, 30.580391>,  <25.090399, 35.422813, 30.571014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.322184, 35.484364, 30.580391>,  <25.708490, 35.586945, 30.596018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.322184, 35.484364, 30.580391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057273, 0.063910, 0.996311,
		-0.253008, 0.964442, -0.076410,
		-0.965767, -0.256451, -0.039067,
		25.032454, 35.407429, 30.568670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418894, 36.064724, 30.920012>,  <25.708490, 35.586945, 30.596018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418894, 36.064724, 30.920012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.138372, 35.780731, 30.945608>,  <24.970060, 35.610336, 30.960966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.138372, 35.780731, 30.945608>,  <25.418894, 36.064724, 30.920012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.138372, 35.780731, 30.945608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142206, 0.227298, 0.963386,
		-0.698536, 0.666525, -0.260369,
		-0.701302, -0.709986, 0.063993,
		24.927982, 35.567734, 30.964806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.852602, 36.323059, 31.319029>,  <25.418894, 36.064724, 30.920012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.852602, 36.323059, 31.319029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.825521, 35.924179, 31.331686>,  <24.809273, 35.684849, 31.339281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.825521, 35.924179, 31.331686>,  <24.852602, 36.323059, 31.319029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.825521, 35.924179, 31.331686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129278, 0.040218, 0.990793,
		-0.989295, 0.062985, -0.131639,
		-0.067700, -0.997204, 0.031644,
		24.805212, 35.625019, 31.341179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.358980, 36.212704, 31.767097>,  <24.852602, 36.323059, 31.319029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.358980, 36.212704, 31.767097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.550896, 35.862434, 31.745218>,  <24.666044, 35.652271, 31.732092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.550896, 35.862434, 31.745218>,  <24.358980, 36.212704, 31.767097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.550896, 35.862434, 31.745218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013634, -0.069774, 0.997469,
		-0.877278, -0.477829, -0.045416,
		0.479788, -0.875678, -0.054697,
		24.694832, 35.599731, 31.728809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.048088, 35.866920, 32.238873>,  <24.358980, 36.212704, 31.767097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.048088, 35.866920, 32.238873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.393553, 35.674622, 32.178246>,  <24.600832, 35.559242, 32.141869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.393553, 35.674622, 32.178246>,  <24.048088, 35.866920, 32.238873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.393553, 35.674622, 32.178246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101321, -0.128990, 0.986456,
		-0.493787, -0.867320, -0.062694,
		0.863659, -0.480747, -0.151572,
		24.652651, 35.530399, 32.132774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.990719, 35.271965, 32.707901>,  <24.048088, 35.866920, 32.238873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.990719, 35.271965, 32.707901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.371975, 35.360458, 32.625359>,  <24.600729, 35.413555, 32.575832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.371975, 35.360458, 32.625359>,  <23.990719, 35.271965, 32.707901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.371975, 35.360458, 32.625359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252128, -0.203868, 0.945975,
		0.167211, -0.953674, -0.250094,
		0.953138, 0.221233, -0.206359,
		24.657917, 35.426826, 32.563450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.399742, 34.739979, 32.929684>,  <23.990719, 35.271965, 32.707901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.399742, 34.739979, 32.929684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.672426, 35.028152, 32.878700>,  <24.836037, 35.201057, 32.848110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.672426, 35.028152, 32.878700>,  <24.399742, 34.739979, 32.929684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.672426, 35.028152, 32.878700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365313, -0.184241, 0.912470,
		0.633892, -0.668602, -0.388783,
		0.681709, 0.720435, -0.127461,
		24.876940, 35.244282, 32.840462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.000208, 34.402569, 33.073296>,  <24.399742, 34.739979, 32.929684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.000208, 34.402569, 33.073296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.096579, 34.788284, 33.117302>,  <25.154402, 35.019714, 33.143703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.096579, 34.788284, 33.117302>,  <25.000208, 34.402569, 33.073296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.096579, 34.788284, 33.117302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481631, -0.217198, 0.849033,
		0.842607, -0.151569, -0.516759,
		0.240926, 0.964288, 0.110013,
		25.168856, 35.077572, 33.150307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.646196, 34.447842, 33.234596>,  <25.000208, 34.402569, 33.073296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.646196, 34.447842, 33.234596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.469336, 34.783558, 33.361145>,  <25.363220, 34.984989, 33.437077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.469336, 34.783558, 33.361145>,  <25.646196, 34.447842, 33.234596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469336, 34.783558, 33.361145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440946, -0.103764, 0.891516,
		0.781070, 0.533689, -0.324202,
		-0.442151, 0.839291, 0.316375,
		25.336691, 35.035347, 33.456059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202822, 34.732197, 33.658581>,  <25.646196, 34.447842, 33.234596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202822, 34.732197, 33.658581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.850485, 34.894642, 33.755894>,  <25.639082, 34.992107, 33.814281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.850485, 34.894642, 33.755894>,  <26.202822, 34.732197, 33.658581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850485, 34.894642, 33.755894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106104, -0.331462, 0.937483,
		0.461363, 0.851590, 0.248877,
		-0.880844, 0.406113, 0.243281,
		25.586231, 35.016476, 33.828876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852818, 35.009850, 33.870964>,  <26.202822, 34.732197, 33.658581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852818, 35.009850, 33.870964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.223694, 35.084644, 33.741131>,  <27.446220, 35.129520, 33.663231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.223694, 35.084644, 33.741131>,  <26.852818, 35.009850, 33.870964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223694, 35.084644, 33.741131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183745, -0.528059, -0.829091,
		-0.326429, 0.828365, -0.455253,
		0.927190, 0.186989, -0.324582,
		27.501850, 35.140739, 33.643757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855350, 35.275883, 33.144993>,  <26.852818, 35.009850, 33.870964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855350, 35.275883, 33.144993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.214588, 35.111454, 33.207535>,  <27.430132, 35.012798, 33.245060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.214588, 35.111454, 33.207535>,  <26.855350, 35.275883, 33.144993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.214588, 35.111454, 33.207535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104581, -0.544924, -0.831938,
		0.427186, 0.730808, -0.532383,
		0.898095, -0.411069, 0.156356,
		27.484016, 34.988132, 33.254440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162796, 35.196762, 32.490646>,  <26.855350, 35.275883, 33.144993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.162796, 35.196762, 32.490646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.371538, 34.935669, 32.710323>,  <27.496782, 34.779015, 32.842129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.371538, 34.935669, 32.710323>,  <27.162796, 35.196762, 32.490646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.371538, 34.935669, 32.710323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077143, -0.605060, -0.792433,
		0.849540, 0.455901, -0.265400,
		0.521854, -0.652730, 0.549192,
		27.528093, 34.739849, 32.875080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725622, 35.147129, 32.066887>,  <27.162796, 35.196762, 32.490646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725622, 35.147129, 32.066887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.751598, 34.828850, 32.307766>,  <27.767183, 34.637882, 32.452293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.751598, 34.828850, 32.307766>,  <27.725622, 35.147129, 32.066887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751598, 34.828850, 32.307766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105265, -0.594642, -0.797070,
		0.992321, 0.115152, 0.045144,
		0.064939, -0.795702, 0.602197,
		27.771080, 34.590137, 32.488426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286594, 34.858013, 31.866001>,  <27.725622, 35.147129, 32.066887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286594, 34.858013, 31.866001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.096708, 34.551750, 32.039627>,  <27.982777, 34.367992, 32.143803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.096708, 34.551750, 32.039627>,  <28.286594, 34.858013, 31.866001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096708, 34.551750, 32.039627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191622, -0.571257, -0.798089,
		0.859027, -0.295688, 0.417901,
		-0.474714, -0.765659, 0.434065,
		27.954294, 34.322052, 32.169846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759882, 34.175449, 31.885284>,  <28.286594, 34.858013, 31.866001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759882, 34.175449, 31.885284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.367168, 34.099453, 31.884514>,  <28.131540, 34.053856, 31.884052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.367168, 34.099453, 31.884514>,  <28.759882, 34.175449, 31.885284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367168, 34.099453, 31.884514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130156, -0.665125, -0.735302,
		0.138423, -0.722158, 0.677737,
		-0.981783, -0.189994, -0.001925,
		28.072634, 34.042454, 31.883936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756798, 33.489899, 31.768232>,  <28.759882, 34.175449, 31.885284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756798, 33.489899, 31.768232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.399603, 33.641567, 31.671238>,  <28.185286, 33.732567, 31.613041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.399603, 33.641567, 31.671238>,  <28.756798, 33.489899, 31.768232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399603, 33.641567, 31.671238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066967, -0.420836, -0.904661,
		-0.445078, -0.824087, 0.350408,
		-0.892985, 0.379179, -0.242491,
		28.131706, 33.755318, 31.598492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431837, 33.036324, 31.264242>,  <28.756798, 33.489899, 31.768232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431837, 33.036324, 31.264242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.196178, 33.355564, 31.213730>,  <28.054783, 33.547108, 31.183422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.196178, 33.355564, 31.213730>,  <28.431837, 33.036324, 31.264242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196178, 33.355564, 31.213730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097395, -0.225281, -0.969414,
		-0.802136, -0.558827, 0.210454,
		-0.589145, 0.798098, -0.126279,
		28.019434, 33.594994, 31.175846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955416, 32.771091, 30.793613>,  <28.431837, 33.036324, 31.264242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955416, 32.771091, 30.793613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.876783, 33.161453, 30.755720>,  <27.829603, 33.395668, 30.732985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.876783, 33.161453, 30.755720>,  <27.955416, 32.771091, 30.793613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876783, 33.161453, 30.755720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242251, -0.141963, -0.959771,
		-0.950090, -0.165725, 0.264320,
		-0.196582, 0.975901, -0.094731,
		27.817808, 33.454224, 30.727301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268412, 32.835850, 30.636322>,  <27.955416, 32.771091, 30.793613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268412, 32.835850, 30.636322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.416107, 33.180107, 30.496061>,  <27.504725, 33.386662, 30.411905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.416107, 33.180107, 30.496061>,  <27.268412, 32.835850, 30.636322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416107, 33.180107, 30.496061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472143, -0.151270, -0.868446,
		-0.800464, 0.486224, 0.350491,
		0.369240, 0.860641, -0.350653,
		27.526878, 33.438301, 30.390865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718283, 33.130383, 30.241337>,  <27.268412, 32.835850, 30.636322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718283, 33.130383, 30.241337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.049789, 33.317917, 30.119133>,  <27.248693, 33.430439, 30.045811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.049789, 33.317917, 30.119133>,  <26.718283, 33.130383, 30.241337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049789, 33.317917, 30.119133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296378, -0.095339, -0.950300,
		-0.474662, 0.878125, 0.059939,
		0.828768, 0.468836, -0.305511,
		27.298420, 33.458569, 30.027479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470953, 33.656330, 29.704502>,  <26.718283, 33.130383, 30.241337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470953, 33.656330, 29.704502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.860825, 33.597939, 29.636744>,  <27.094748, 33.562904, 29.596088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.860825, 33.597939, 29.636744>,  <26.470953, 33.656330, 29.704502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860825, 33.597939, 29.636744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169837, 0.009537, -0.985426,
		0.145467, 0.989241, -0.015497,
		0.974677, -0.145979, -0.169398,
		27.153227, 33.554146, 29.585924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598307, 34.043621, 29.237509>,  <26.470953, 33.656330, 29.704502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598307, 34.043621, 29.237509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.910597, 33.796288, 29.201435>,  <27.097971, 33.647888, 29.179790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.910597, 33.796288, 29.201435>,  <26.598307, 34.043621, 29.237509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910597, 33.796288, 29.201435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214159, -0.129185, -0.968218,
		0.587029, 0.775227, -0.233280,
		0.780725, -0.618332, -0.090186,
		27.144814, 33.610786, 29.174379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798903, 34.262623, 28.647291>,  <26.598307, 34.043621, 29.237509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798903, 34.262623, 28.647291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.974277, 33.906925, 28.699478>,  <27.079502, 33.693508, 28.730791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.974277, 33.906925, 28.699478>,  <26.798903, 34.262623, 28.647291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974277, 33.906925, 28.699478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146282, -0.213834, -0.965855,
		0.886777, 0.404383, -0.223834,
		0.438438, -0.889241, 0.130469,
		27.105808, 33.640152, 28.738619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427002, 34.158752, 28.197533>,  <26.798903, 34.262623, 28.647291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427002, 34.158752, 28.197533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318937, 33.781227, 28.273664>,  <27.254099, 33.554710, 28.319344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318937, 33.781227, 28.273664>,  <27.427002, 34.158752, 28.197533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318937, 33.781227, 28.273664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034462, -0.188075, -0.981550,
		0.962197, -0.271738, 0.018286,
		-0.270164, -0.943815, 0.190330,
		27.237888, 33.498081, 28.330763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902422, 33.780758, 27.780479>,  <27.427002, 34.158752, 28.197533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902422, 33.780758, 27.780479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.594664, 33.549583, 27.889303>,  <27.410009, 33.410877, 27.954597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.594664, 33.549583, 27.889303>,  <27.902422, 33.780758, 27.780479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594664, 33.549583, 27.889303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089951, -0.323634, -0.941897,
		0.632407, -0.749163, 0.197016,
		-0.769395, -0.577941, 0.272057,
		27.363846, 33.376202, 27.970921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053471, 33.135101, 27.448921>,  <27.902422, 33.780758, 27.780479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053471, 33.135101, 27.448921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.659536, 33.118015, 27.516176>,  <27.423176, 33.107761, 27.556530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.659536, 33.118015, 27.516176>,  <28.053471, 33.135101, 27.448921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659536, 33.118015, 27.516176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142089, -0.357429, -0.923068,
		0.099529, -0.932963, 0.345940,
		-0.984837, -0.042718, 0.168139,
		27.364084, 33.105202, 27.566618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869398, 32.516953, 27.267977>,  <28.053471, 33.135101, 27.448921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869398, 32.516953, 27.267977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.524979, 32.720329, 27.264353>,  <27.318327, 32.842354, 27.262178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.524979, 32.720329, 27.264353>,  <27.869398, 32.516953, 27.267977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524979, 32.720329, 27.264353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163349, -0.293416, -0.941926,
		-0.481572, -0.809564, 0.335699,
		-0.861049, 0.508441, -0.009059,
		27.266665, 32.872860, 27.261635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393906, 32.023968, 26.921854>,  <27.869398, 32.516953, 27.267977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.393906, 32.023968, 26.921854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.239340, 32.391788, 26.893257>,  <27.146601, 32.612480, 26.876099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.239340, 32.391788, 26.893257>,  <27.393906, 32.023968, 26.921854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239340, 32.391788, 26.893257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261163, -0.183427, -0.947707,
		-0.884578, -0.347536, 0.311031,
		-0.386414, 0.919551, -0.071492,
		27.123415, 32.667652, 26.871809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786898, 31.971493, 26.645916>,  <27.393906, 32.023968, 26.921854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786898, 31.971493, 26.645916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.862440, 32.355724, 26.564308>,  <26.907766, 32.586262, 26.515343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.862440, 32.355724, 26.564308>,  <26.786898, 31.971493, 26.645916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862440, 32.355724, 26.564308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304154, -0.140326, -0.942231,
		-0.933715, 0.240001, 0.265662,
		0.188857, 0.960577, -0.204022,
		26.919098, 32.643898, 26.503101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.805935, 33.903576, 47.345219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.480621, 34.120953, 47.262032>,  <37.285435, 34.251377, 47.212120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.480621, 34.120953, 47.262032>,  <37.805935, 33.903576, 47.345219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480621, 34.120953, 47.262032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300019, -0.085404, 0.950103,
		0.498563, 0.835092, 0.232500,
		-0.813280, 0.543440, -0.207964,
		37.236637, 34.283985, 47.199642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751556, 34.362350, 47.859531>,  <37.805935, 33.903576, 47.345219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751556, 34.362350, 47.859531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.373478, 34.338146, 47.731197>,  <37.146629, 34.323624, 47.654198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.373478, 34.338146, 47.731197>,  <37.751556, 34.362350, 47.859531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373478, 34.338146, 47.731197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316928, -0.066058, 0.946146,
		-0.078450, 0.995979, 0.043259,
		-0.945199, -0.060515, -0.320836,
		37.089916, 34.319992, 47.634945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402344, 34.626808, 48.423092>,  <37.751556, 34.362350, 47.859531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402344, 34.626808, 48.423092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105816, 34.472126, 48.203674>,  <36.927898, 34.379318, 48.072025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105816, 34.472126, 48.203674>,  <37.402344, 34.626808, 48.423092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105816, 34.472126, 48.203674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502014, -0.222963, 0.835625,
		-0.445444, 0.894845, -0.028842,
		-0.741324, -0.386703, -0.548543,
		36.883419, 34.356113, 48.039112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748371, 34.898098, 48.658379>,  <37.402344, 34.626808, 48.423092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748371, 34.898098, 48.658379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.634720, 34.555134, 48.486744>,  <36.566528, 34.349354, 48.383762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.634720, 34.555134, 48.486744>,  <36.748371, 34.898098, 48.658379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634720, 34.555134, 48.486744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579271, -0.203104, 0.789426,
		-0.764013, 0.472857, -0.438966,
		-0.284130, -0.857412, -0.429086,
		36.549480, 34.297909, 48.358017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118748, 34.885090, 48.815601>,  <36.748371, 34.898098, 48.658379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118748, 34.885090, 48.815601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160236, 34.510826, 48.680672>,  <36.185131, 34.286266, 48.599716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160236, 34.510826, 48.680672>,  <36.118748, 34.885090, 48.815601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160236, 34.510826, 48.680672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650420, -0.320389, 0.688697,
		-0.752460, 0.147969, -0.641802,
		0.103721, -0.935658, -0.337322,
		36.191353, 34.230129, 48.579475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422417, 34.670479, 48.737747>,  <36.118748, 34.885090, 48.815601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422417, 34.670479, 48.737747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633163, 34.332375, 48.773396>,  <35.759613, 34.129513, 48.794785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.633163, 34.332375, 48.773396>,  <35.422417, 34.670479, 48.737747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633163, 34.332375, 48.773396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655882, -0.337645, 0.675141,
		-0.540580, -0.414163, -0.732286,
		0.526871, -0.845260, 0.089118,
		35.791225, 34.078796, 48.800129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026913, 34.044083, 48.560268>,  <35.422417, 34.670479, 48.737747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026913, 34.044083, 48.560268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.311958, 33.936161, 48.819309>,  <35.482986, 33.871410, 48.974731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.311958, 33.936161, 48.819309>,  <35.026913, 34.044083, 48.560268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311958, 33.936161, 48.819309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662233, -0.563395, 0.493998,
		0.231573, -0.780892, -0.580156,
		0.712616, -0.269802, 0.647600,
		35.525742, 33.855221, 49.013588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939964, 33.343613, 48.571201>,  <35.026913, 34.044083, 48.560268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939964, 33.343613, 48.571201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.141003, 33.454826, 48.898640>,  <35.261627, 33.521553, 49.095100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.141003, 33.454826, 48.898640>,  <34.939964, 33.343613, 48.571201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141003, 33.454826, 48.898640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493050, -0.685602, 0.535586,
		0.710138, -0.672791, -0.207498,
		0.502598, 0.278033, 0.818592,
		35.291782, 33.538235, 49.144218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034122, 32.718830, 48.861416>,  <34.939964, 33.343613, 48.571201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034122, 32.718830, 48.861416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.100998, 32.965897, 49.168804>,  <35.141125, 33.114136, 49.353237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.100998, 32.965897, 49.168804>,  <35.034122, 32.718830, 48.861416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100998, 32.965897, 49.168804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462214, -0.639371, 0.614462,
		0.870865, -0.457928, 0.178597,
		0.167190, 0.617663, 0.768466,
		35.151154, 33.151196, 49.399345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171928, 32.303829, 49.359440>,  <35.034122, 32.718830, 48.861416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171928, 32.303829, 49.359440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.102818, 32.648537, 49.550228>,  <35.061352, 32.855362, 49.664700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.102818, 32.648537, 49.550228>,  <35.171928, 32.303829, 49.359440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102818, 32.648537, 49.550228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325415, -0.507001, 0.798158,
		0.929653, -0.017312, 0.368030,
		-0.172774, 0.861772, 0.476968,
		35.050987, 32.907066, 49.693317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427483, 32.205467, 49.981735>,  <35.171928, 32.303829, 49.359440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427483, 32.205467, 49.981735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137505, 32.473106, 50.047157>,  <34.963516, 32.633690, 50.086411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137505, 32.473106, 50.047157>,  <35.427483, 32.205467, 49.981735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137505, 32.473106, 50.047157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291580, -0.513230, 0.807203,
		0.624043, 0.537491, 0.567163,
		-0.724949, 0.669103, 0.163556,
		34.920021, 32.673836, 50.096226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365978, 32.289474, 50.612106>,  <35.427483, 32.205467, 49.981735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365978, 32.289474, 50.612106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007977, 32.429165, 50.501099>,  <34.793175, 32.512978, 50.434494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007977, 32.429165, 50.501099>,  <35.365978, 32.289474, 50.612106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007977, 32.429165, 50.501099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425937, -0.484302, 0.764218,
		0.132484, 0.802179, 0.582199,
		-0.895000, 0.349227, -0.277516,
		34.739475, 32.533932, 50.417843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036072, 32.723286, 51.149055>,  <35.365978, 32.289474, 50.612106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036072, 32.723286, 51.149055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.771484, 32.531151, 50.918671>,  <34.612732, 32.415871, 50.780441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.771484, 32.531151, 50.918671>,  <35.036072, 32.723286, 51.149055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771484, 32.531151, 50.918671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450866, -0.359010, 0.817210,
		-0.599313, 0.800242, 0.020906,
		-0.661471, -0.480339, -0.575961,
		34.573044, 32.387051, 50.745884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301407, 32.819656, 51.393509>,  <35.036072, 32.723286, 51.149055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301407, 32.819656, 51.393509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.256157, 32.482300, 51.183407>,  <34.229008, 32.279884, 51.057346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.256157, 32.482300, 51.183407>,  <34.301407, 32.819656, 51.393509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256157, 32.482300, 51.183407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594326, -0.366207, 0.716009,
		-0.796228, 0.393170, -0.459823,
		-0.113123, -0.843391, -0.525256,
		34.222221, 32.229282, 51.025829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864868, 33.366962, 51.622108>,  <34.301407, 32.819656, 51.393509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864868, 33.366962, 51.622108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.576050, 33.643177, 51.639133>,  <33.402760, 33.808907, 51.649349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.576050, 33.643177, 51.639133>,  <33.864868, 33.366962, 51.622108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576050, 33.643177, 51.639133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491719, 0.555486, -0.670558,
		-0.486684, -0.463247, -0.740635,
		-0.722046, 0.690534, 0.042559,
		33.359436, 33.850338, 51.651901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778931, 33.600727, 50.947350>,  <33.864868, 33.366962, 51.622108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778931, 33.600727, 50.947350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619804, 33.864574, 51.202423>,  <33.524330, 34.022884, 51.355469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619804, 33.864574, 51.202423>,  <33.778931, 33.600727, 50.947350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619804, 33.864574, 51.202423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365154, 0.751462, -0.549516,
		-0.841669, 0.014247, -0.539807,
		-0.397815, 0.659622, 0.637684,
		33.500462, 34.062462, 51.393730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416958, 34.009331, 50.557434>,  <33.778931, 33.600727, 50.947350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416958, 34.009331, 50.557434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495453, 34.212631, 50.892853>,  <33.542549, 34.334614, 51.094105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495453, 34.212631, 50.892853>,  <33.416958, 34.009331, 50.557434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495453, 34.212631, 50.892853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419203, 0.729603, -0.540323,
		-0.886430, 0.457557, -0.069883,
		0.196241, 0.508253, 0.838551,
		33.554325, 34.365108, 51.144417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162785, 34.674706, 50.502193>,  <33.416958, 34.009331, 50.557434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162785, 34.674706, 50.502193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.430962, 34.708191, 50.797085>,  <33.591866, 34.728283, 50.974018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.430962, 34.708191, 50.797085>,  <33.162785, 34.674706, 50.502193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430962, 34.708191, 50.797085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271559, 0.896985, -0.348817,
		-0.690484, 0.434061, 0.578639,
		0.670438, 0.083718, 0.737227,
		33.632092, 34.733307, 51.018253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172020, 35.365646, 50.642120>,  <33.162785, 34.674706, 50.502193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172020, 35.365646, 50.642120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524734, 35.252296, 50.792934>,  <33.736362, 35.184288, 50.883423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524734, 35.252296, 50.792934>,  <33.172020, 35.365646, 50.642120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524734, 35.252296, 50.792934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426856, 0.819498, -0.382383,
		-0.200625, 0.498120, 0.843579,
		0.881784, -0.283372, 0.377037,
		33.789268, 35.167286, 50.906044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412163, 35.880325, 51.106300>,  <33.172020, 35.365646, 50.642120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412163, 35.880325, 51.106300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.744301, 35.680805, 51.006927>,  <33.943584, 35.561092, 50.947304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.744301, 35.680805, 51.006927>,  <33.412163, 35.880325, 51.106300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744301, 35.680805, 51.006927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375774, 0.830417, -0.411341,
		0.411476, 0.248204, 0.876973,
		0.830350, -0.498801, -0.248428,
		33.993404, 35.531166, 50.932400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077793, 36.318245, 51.223503>,  <33.412163, 35.880325, 51.106300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077793, 36.318245, 51.223503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183670, 36.050076, 50.946239>,  <34.247196, 35.889172, 50.779881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183670, 36.050076, 50.946239>,  <34.077793, 36.318245, 51.223503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183670, 36.050076, 50.946239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361936, 0.735312, -0.572991,
		0.893834, -0.099212, 0.437284,
		0.264692, -0.670428, -0.693156,
		34.263077, 35.848946, 50.738293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610481, 36.643932, 50.813278>,  <34.077793, 36.318245, 51.223503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610481, 36.643932, 50.813278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.511986, 36.354950, 50.554844>,  <34.452888, 36.181561, 50.399784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.511986, 36.354950, 50.554844>,  <34.610481, 36.643932, 50.813278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511986, 36.354950, 50.554844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387753, 0.537508, -0.748820,
		0.888265, -0.434911, 0.147778,
		-0.246239, -0.722452, -0.646088,
		34.438114, 36.138214, 50.361019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070984, 36.659389, 50.220276>,  <34.610481, 36.643932, 50.813278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070984, 36.659389, 50.220276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.762318, 36.453499, 50.070827>,  <34.577118, 36.329964, 49.981159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.762318, 36.453499, 50.070827>,  <35.070984, 36.659389, 50.220276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762318, 36.453499, 50.070827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196059, 0.366327, -0.909596,
		0.605059, -0.775155, -0.181765,
		-0.771664, -0.514722, -0.373625,
		34.530819, 36.299084, 49.958740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278240, 36.661987, 49.507580>,  <35.070984, 36.659389, 50.220276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278240, 36.661987, 49.507580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891685, 36.559418, 49.514919>,  <34.659752, 36.497875, 49.519325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891685, 36.559418, 49.514919>,  <35.278240, 36.661987, 49.507580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891685, 36.559418, 49.514919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075432, 0.214585, -0.973788,
		0.245779, -0.942440, -0.226715,
		-0.966387, -0.256438, 0.018350,
		34.601768, 36.482491, 49.520424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181068, 36.016216, 49.117405>,  <35.278240, 36.661987, 49.507580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181068, 36.016216, 49.117405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.846264, 36.234951, 49.125259>,  <34.645382, 36.366192, 49.129971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.846264, 36.234951, 49.125259>,  <35.181068, 36.016216, 49.117405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846264, 36.234951, 49.125259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002307, 0.039413, -0.999220,
		-0.547186, -0.836310, -0.034251,
		-0.837008, 0.546838, 0.019636,
		34.595161, 36.399002, 49.131149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703999, 35.691635, 48.713955>,  <35.181068, 36.016216, 49.117405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703999, 35.691635, 48.713955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.589378, 36.074841, 48.710091>,  <34.520607, 36.304764, 48.707771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.589378, 36.074841, 48.710091>,  <34.703999, 35.691635, 48.713955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589378, 36.074841, 48.710091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015634, -0.005402, -0.999863,
		-0.957939, -0.286658, -0.013430,
		-0.286546, 0.958018, -0.009657,
		34.503414, 36.362247, 48.707195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174099, 35.804218, 48.224220>,  <34.703999, 35.691635, 48.713955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174099, 35.804218, 48.224220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.298626, 36.181789, 48.268192>,  <34.373341, 36.408333, 48.294575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.298626, 36.181789, 48.268192>,  <34.174099, 35.804218, 48.224220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298626, 36.181789, 48.268192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095653, 0.083969, -0.991867,
		-0.945480, 0.319300, -0.064148,
		0.311316, 0.943926, 0.109933,
		34.392021, 36.464966, 48.301170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808041, 36.124893, 47.693649>,  <34.174099, 35.804218, 48.224220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808041, 36.124893, 47.693649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.094482, 36.379677, 47.807827>,  <34.266346, 36.532547, 47.876331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.094482, 36.379677, 47.807827>,  <33.808041, 36.124893, 47.693649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094482, 36.379677, 47.807827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308291, 0.078262, -0.948067,
		-0.626220, 0.766914, -0.140326,
		0.716104, 0.636960, 0.285442,
		34.309315, 36.570766, 47.893459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165237, 36.566200, 47.677200>,  <33.808041, 36.124893, 47.693649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165237, 36.566200, 47.677200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.791039, 36.659954, 47.571442>,  <32.566517, 36.716206, 47.507988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.791039, 36.659954, 47.571442>,  <33.165237, 36.566200, 47.677200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791039, 36.659954, 47.571442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344894, -0.443272, 0.827380,
		0.076725, 0.865202, 0.495518,
		-0.935500, 0.234382, -0.264393,
		32.510387, 36.730270, 47.492123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835857, 36.894730, 48.308578>,  <33.165237, 36.566200, 47.677200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835857, 36.894730, 48.308578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.542377, 36.749565, 48.078804>,  <32.366291, 36.662464, 47.940937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.542377, 36.749565, 48.078804>,  <32.835857, 36.894730, 48.308578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542377, 36.749565, 48.078804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474615, -0.331257, 0.815481,
		-0.486238, 0.870954, 0.070797,
		-0.733698, -0.362916, -0.574438,
		32.322269, 36.640690, 47.906471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258526, 36.803905, 48.827518>,  <32.835857, 36.894730, 48.308578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258526, 36.803905, 48.827518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.127560, 36.585880, 48.518791>,  <32.048981, 36.455067, 48.333553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.127560, 36.585880, 48.518791>,  <32.258526, 36.803905, 48.827518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127560, 36.585880, 48.518791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675250, -0.436403, 0.594635,
		-0.660938, 0.715863, -0.225169,
		-0.327412, -0.545062, -0.771821,
		32.029335, 36.422363, 48.287243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516754, 36.707611, 49.027245>,  <32.258526, 36.803905, 48.827518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516754, 36.707611, 49.027245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.611561, 36.417488, 48.768707>,  <31.668446, 36.243416, 48.613586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.611561, 36.417488, 48.768707>,  <31.516754, 36.707611, 49.027245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611561, 36.417488, 48.768707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579340, -0.639583, 0.505272,
		-0.779865, 0.254694, -0.571788,
		0.237016, -0.725303, -0.646343,
		31.682665, 36.199898, 48.574806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867025, 36.372963, 48.768215>,  <31.516754, 36.707611, 49.027245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867025, 36.372963, 48.768215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.176905, 36.122643, 48.731949>,  <31.362831, 35.972450, 48.710190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.176905, 36.122643, 48.731949>,  <30.867025, 36.372963, 48.768215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176905, 36.122643, 48.731949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511270, -0.704279, 0.492537,
		-0.372085, -0.335211, -0.865555,
		0.774697, -0.625799, -0.090668,
		31.409313, 35.934902, 48.704750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586508, 35.793987, 48.660118>,  <30.867025, 36.372963, 48.768215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586508, 35.793987, 48.660118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.961561, 35.690990, 48.753532>,  <31.186594, 35.629192, 48.809582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.961561, 35.690990, 48.753532>,  <30.586508, 35.793987, 48.660118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961561, 35.690990, 48.753532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347595, -0.702396, 0.621142,
		0.004099, -0.663581, -0.748093,
		0.937636, -0.257487, 0.233537,
		31.242851, 35.613743, 48.823593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734396, 35.062950, 48.400368>,  <30.586508, 35.793987, 48.660118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734396, 35.062950, 48.400368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.922091, 35.198124, 48.726707>,  <31.034708, 35.279228, 48.922512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.922091, 35.198124, 48.726707>,  <30.734396, 35.062950, 48.400368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922091, 35.198124, 48.726707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454850, -0.699407, 0.551308,
		0.756920, -0.629785, -0.174478,
		0.469237, 0.337935, 0.815853,
		31.062862, 35.299503, 48.971462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871204, 34.296658, 48.266636>,  <30.734396, 35.062950, 48.400368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871204, 34.296658, 48.266636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.793022, 33.922188, 48.149761>,  <30.746113, 33.697506, 48.079636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.793022, 33.922188, 48.149761>,  <30.871204, 34.296658, 48.266636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793022, 33.922188, 48.149761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640710, 0.103671, -0.760752,
		0.742488, -0.335903, 0.579553,
		-0.195456, -0.936174, -0.292190,
		30.734385, 33.641335, 48.062103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531137, 33.859192, 48.177872>,  <30.871204, 34.296658, 48.266636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531137, 33.859192, 48.177872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.258680, 33.675926, 47.949440>,  <31.095205, 33.565968, 47.812382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.258680, 33.675926, 47.949440>,  <31.531137, 33.859192, 48.177872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258680, 33.675926, 47.949440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625217, 0.041892, -0.779325,
		0.380982, -0.887880, 0.257917,
		-0.681143, -0.458164, -0.571078,
		31.054337, 33.538479, 47.778118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970901, 33.499977, 47.773472>,  <31.531137, 33.859192, 48.177872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970901, 33.499977, 47.773472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.613997, 33.508690, 47.593075>,  <31.399853, 33.513916, 47.484837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.613997, 33.508690, 47.593075>,  <31.970901, 33.499977, 47.773472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613997, 33.508690, 47.593075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451476, 0.056655, -0.890483,
		0.006158, -0.998156, -0.060383,
		-0.892262, 0.021778, -0.450992,
		31.346317, 33.515224, 47.457779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021450, 32.960789, 47.209030>,  <31.970901, 33.499977, 47.773472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021450, 32.960789, 47.209030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.721369, 33.207809, 47.114521>,  <31.541321, 33.356022, 47.057816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.721369, 33.207809, 47.114521>,  <32.021450, 32.960789, 47.209030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721369, 33.207809, 47.114521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428611, 0.182093, -0.884949,
		-0.503478, -0.765161, -0.401296,
		-0.750202, 0.617552, -0.236277,
		31.496307, 33.393074, 47.043636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809753, 32.773365, 46.504620>,  <32.021450, 32.960789, 47.209030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809753, 32.773365, 46.504620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.685574, 33.149853, 46.557877>,  <31.611065, 33.375744, 46.589832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.685574, 33.149853, 46.557877>,  <31.809753, 32.773365, 46.504620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685574, 33.149853, 46.557877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483787, 0.277011, -0.830190,
		-0.818273, -0.193319, -0.541347,
		-0.310450, 0.941219, 0.133145,
		31.592438, 33.432217, 46.597820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649115, 33.003635, 45.902706>,  <31.809753, 32.773365, 46.504620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649115, 33.003635, 45.902706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.709133, 33.339920, 46.110821>,  <31.745144, 33.541691, 46.235687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.709133, 33.339920, 46.110821>,  <31.649115, 33.003635, 45.902706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709133, 33.339920, 46.110821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450611, 0.410253, -0.792869,
		-0.880020, 0.353412, -0.317276,
		0.150046, 0.840709, 0.520283,
		31.754147, 33.592133, 46.266907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546877, 33.469067, 45.445518>,  <31.649115, 33.003635, 45.902706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546877, 33.469067, 45.445518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.760096, 33.665615, 45.721031>,  <31.888027, 33.783543, 45.886337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.760096, 33.665615, 45.721031>,  <31.546877, 33.469067, 45.445518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760096, 33.665615, 45.721031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523871, 0.447583, -0.724727,
		-0.664393, 0.747146, -0.018830,
		0.533048, 0.491368, 0.688779,
		31.920010, 33.813026, 45.927666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.712479, 30.776398, 50.289818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.873405, 31.127897, 50.392529>,  <32.969963, 31.338797, 50.454155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.873405, 31.127897, 50.392529>,  <32.712479, 30.776398, 50.289818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873405, 31.127897, 50.392529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342726, 0.115518, -0.932306,
		-0.848927, 0.463091, -0.254695,
		0.402321, 0.878750, 0.256780,
		32.994102, 31.391521, 50.469563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394436, 31.259722, 49.907146>,  <32.712479, 30.776398, 50.289818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394436, 31.259722, 49.907146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.747940, 31.422115, 50.000229>,  <32.960041, 31.519552, 50.056080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.747940, 31.422115, 50.000229>,  <32.394436, 31.259722, 49.907146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747940, 31.422115, 50.000229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202636, 0.116234, -0.972331,
		-0.421799, 0.906459, 0.020455,
		0.883756, 0.405983, 0.232709,
		33.013065, 31.543911, 50.070042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401405, 31.927521, 49.604889>,  <32.394436, 31.259722, 49.907146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401405, 31.927521, 49.604889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.783352, 31.823729, 49.662724>,  <33.012520, 31.761454, 49.697422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.783352, 31.823729, 49.662724>,  <32.401405, 31.927521, 49.604889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783352, 31.823729, 49.662724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224038, 0.309506, -0.924128,
		0.195044, 0.914809, 0.353670,
		0.954864, -0.259481, 0.144584,
		33.069813, 31.745884, 49.706100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873863, 32.428047, 49.373222>,  <32.401405, 31.927521, 49.604889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873863, 32.428047, 49.373222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.116352, 32.110020, 49.380768>,  <33.261845, 31.919203, 49.385296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.116352, 32.110020, 49.380768>,  <32.873863, 32.428047, 49.373222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116352, 32.110020, 49.380768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328412, 0.228660, -0.916439,
		0.724320, 0.561762, 0.399730,
		0.606223, -0.795071, 0.018867,
		33.298218, 31.871498, 49.386429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573708, 32.660416, 49.202686>,  <32.873863, 32.428047, 49.373222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573708, 32.660416, 49.202686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.521645, 32.271408, 49.125462>,  <33.490406, 32.038006, 49.079128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.521645, 32.271408, 49.125462>,  <33.573708, 32.660416, 49.202686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521645, 32.271408, 49.125462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290630, 0.148739, -0.945204,
		0.947941, -0.179138, 0.263282,
		-0.130162, -0.972515, -0.193059,
		33.482597, 31.979654, 49.067543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102314, 32.440670, 48.667099>,  <33.573708, 32.660416, 49.202686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102314, 32.440670, 48.667099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.864120, 32.119331, 48.669342>,  <33.721207, 31.926527, 48.670689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.864120, 32.119331, 48.669342>,  <34.102314, 32.440670, 48.667099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864120, 32.119331, 48.669342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003207, -0.004604, -0.999984,
		0.803364, -0.595489, 0.000165,
		-0.595480, -0.803351, 0.005609,
		33.685478, 31.878326, 48.671024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391560, 32.130722, 48.205990>,  <34.102314, 32.440670, 48.667099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391560, 32.130722, 48.205990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.058849, 31.911098, 48.238705>,  <33.859222, 31.779324, 48.258331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.058849, 31.911098, 48.238705>,  <34.391560, 32.130722, 48.205990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058849, 31.911098, 48.238705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074548, -0.256477, -0.963671,
		0.550089, -0.795458, 0.254262,
		-0.831772, -0.549060, 0.081785,
		33.809319, 31.746380, 48.263241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508923, 31.475079, 47.906387>,  <34.391560, 32.130722, 48.205990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508923, 31.475079, 47.906387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.108932, 31.476789, 47.904247>,  <33.868938, 31.477816, 47.902962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.108932, 31.476789, 47.904247>,  <34.508923, 31.475079, 47.906387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108932, 31.476789, 47.904247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003817, -0.301237, -0.953542,
		-0.005693, -0.953540, 0.301214,
		-0.999977, 0.004279, -0.005354,
		33.808941, 31.478073, 47.902641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268501, 30.822596, 47.602650>,  <34.508923, 31.475079, 47.906387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268501, 30.822596, 47.602650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.000778, 31.117641, 47.566990>,  <33.840145, 31.294668, 47.545593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.000778, 31.117641, 47.566990>,  <34.268501, 30.822596, 47.602650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000778, 31.117641, 47.566990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052020, -0.166215, -0.984716,
		-0.741159, -0.654444, 0.149620,
		-0.669311, 0.737615, -0.089148,
		33.799984, 31.338926, 47.540245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816624, 30.669004, 47.074669>,  <34.268501, 30.822596, 47.602650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816624, 30.669004, 47.074669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.721989, 31.057238, 47.092552>,  <33.665207, 31.290176, 47.103283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.721989, 31.057238, 47.092552>,  <33.816624, 30.669004, 47.074669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721989, 31.057238, 47.092552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221688, -0.009120, -0.975075,
		-0.945982, -0.240599, 0.217324,
		-0.236584, 0.970582, 0.044711,
		33.651012, 31.348412, 47.105965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114185, 30.754404, 46.788589>,  <33.816624, 30.669004, 47.074669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114185, 30.754404, 46.788589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.330212, 31.087788, 46.741821>,  <33.459827, 31.287819, 46.713760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.330212, 31.087788, 46.741821>,  <33.114185, 30.754404, 46.788589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330212, 31.087788, 46.741821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172659, -0.026247, -0.984632,
		-0.823721, 0.551955, 0.129730,
		0.540068, 0.833460, -0.116920,
		33.492233, 31.337826, 46.706745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695019, 31.189342, 46.324760>,  <33.114185, 30.754404, 46.788589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695019, 31.189342, 46.324760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.051769, 31.370115, 46.317738>,  <33.265820, 31.478579, 46.313526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.051769, 31.370115, 46.317738>,  <32.695019, 31.189342, 46.324760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051769, 31.370115, 46.317738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002261, -0.043265, -0.999061,
		-0.452267, 0.891003, -0.039609,
		0.891880, 0.451932, -0.017553,
		33.319332, 31.505695, 46.312473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920116, 31.589577, 46.349941>,  <32.695019, 31.189342, 46.324760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920116, 31.589577, 46.349941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.614656, 31.373745, 46.208130>,  <31.431379, 31.244246, 46.123043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.614656, 31.373745, 46.208130>,  <31.920116, 31.589577, 46.349941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614656, 31.373745, 46.208130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394748, -0.044307, 0.917720,
		-0.510892, 0.840768, -0.179163,
		-0.763651, -0.539580, -0.354528,
		31.385561, 31.211870, 46.101772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372849, 31.920052, 46.726830>,  <31.920116, 31.589577, 46.349941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372849, 31.920052, 46.726830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.211369, 31.572767, 46.611423>,  <31.114481, 31.364397, 46.542179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.211369, 31.572767, 46.611423>,  <31.372849, 31.920052, 46.726830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211369, 31.572767, 46.611423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607988, 0.018942, 0.793720,
		-0.683650, 0.495837, -0.535508,
		-0.403699, -0.868209, -0.288514,
		31.090260, 31.312305, 46.524868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669937, 32.051880, 46.726109>,  <31.372849, 31.920052, 46.726830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669937, 32.051880, 46.726109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.728970, 31.657146, 46.752560>,  <30.764389, 31.420305, 46.768429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.728970, 31.657146, 46.752560>,  <30.669937, 32.051880, 46.726109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728970, 31.657146, 46.752560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748434, -0.067721, 0.659742,
		-0.646580, -0.146857, -0.748577,
		0.147582, -0.986837, 0.066126,
		30.773245, 31.361095, 46.772396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131096, 31.901081, 47.073807>,  <30.669937, 32.051880, 46.726109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131096, 31.901081, 47.073807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.325909, 31.552614, 47.098671>,  <30.442797, 31.343534, 47.113590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.325909, 31.552614, 47.098671>,  <30.131096, 31.901081, 47.073807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325909, 31.552614, 47.098671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541913, -0.245609, 0.803746,
		-0.684931, -0.425136, -0.591717,
		0.487032, -0.871169, 0.062161,
		30.472019, 31.291264, 47.117321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690599, 31.313011, 47.119411>,  <30.131096, 31.901081, 47.073807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690599, 31.313011, 47.119411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.029026, 31.183100, 47.288498>,  <30.232082, 31.105154, 47.389950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.029026, 31.183100, 47.288498>,  <29.690599, 31.313011, 47.119411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029026, 31.183100, 47.288498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478307, -0.112395, 0.870971,
		-0.235361, -0.939088, -0.250437,
		0.846066, -0.324778, 0.422719,
		30.282846, 31.085667, 47.415314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522329, 30.710144, 47.413746>,  <29.690599, 31.313011, 47.119411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522329, 30.710144, 47.413746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.848562, 30.839434, 47.605724>,  <30.044302, 30.917007, 47.720913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.848562, 30.839434, 47.605724>,  <29.522329, 30.710144, 47.413746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848562, 30.839434, 47.605724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435615, -0.202988, 0.876946,
		0.380876, -0.924295, -0.024752,
		0.815581, 0.323225, 0.479950,
		30.093237, 30.936401, 47.749710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555208, 30.318119, 47.988739>,  <29.522329, 30.710144, 47.413746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555208, 30.318119, 47.988739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.855907, 30.558018, 48.098412>,  <30.036327, 30.701958, 48.164215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.855907, 30.558018, 48.098412>,  <29.555208, 30.318119, 47.988739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855907, 30.558018, 48.098412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318910, -0.033286, 0.947200,
		0.577208, -0.799496, 0.166243,
		0.751750, 0.599748, 0.274180,
		30.081432, 30.737942, 48.180664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957111, 29.944561, 48.450893>,  <29.555208, 30.318119, 47.988739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957111, 29.944561, 48.450893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.986984, 30.340696, 48.497623>,  <30.004908, 30.578379, 48.525661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.986984, 30.340696, 48.497623>,  <29.957111, 29.944561, 48.450893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986984, 30.340696, 48.497623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110250, -0.108232, 0.987993,
		0.991094, -0.086667, 0.101102,
		0.074684, 0.990341, 0.116823,
		30.009390, 30.637798, 48.532669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386065, 29.963078, 48.967644>,  <29.957111, 29.944561, 48.450893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386065, 29.963078, 48.967644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.211920, 30.322611, 48.987892>,  <30.107433, 30.538330, 49.000042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.211920, 30.322611, 48.987892>,  <30.386065, 29.963078, 48.967644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211920, 30.322611, 48.987892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186496, -0.145057, 0.971688,
		0.880727, 0.413594, 0.230780,
		-0.435360, 0.898832, 0.050622,
		30.081312, 30.592260, 49.003078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706770, 30.348969, 49.546600>,  <30.386065, 29.963078, 48.967644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706770, 30.348969, 49.546600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.372833, 30.562998, 49.494850>,  <30.172472, 30.691416, 49.463802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.372833, 30.562998, 49.494850>,  <30.706770, 30.348969, 49.546600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372833, 30.562998, 49.494850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219872, -0.108652, 0.969459,
		0.504675, 0.837790, 0.208354,
		-0.834841, 0.535073, -0.129372,
		30.122381, 30.723520, 49.456039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652008, 30.846830, 50.103306>,  <30.706770, 30.348969, 49.546600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652008, 30.846830, 50.103306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.276100, 30.821774, 49.968895>,  <30.050556, 30.806740, 49.888248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.276100, 30.821774, 49.968895>,  <30.652008, 30.846830, 50.103306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276100, 30.821774, 49.968895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341099, 0.108379, 0.933759,
		-0.022074, 0.992134, -0.123218,
		-0.939768, -0.062641, -0.336024,
		29.994169, 30.802980, 49.868088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340487, 31.078716, 50.632977>,  <30.652008, 30.846830, 50.103306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340487, 31.078716, 50.632977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.030554, 30.932924, 50.426369>,  <29.844593, 30.845449, 50.302406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.030554, 30.932924, 50.426369>,  <30.340487, 31.078716, 50.632977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030554, 30.932924, 50.426369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509311, -0.124094, 0.851589,
		-0.374482, 0.922907, -0.089481,
		-0.774833, -0.364478, -0.516517,
		29.798103, 30.823582, 50.271412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759520, 31.482368, 50.800568>,  <30.340487, 31.078716, 50.632977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759520, 31.482368, 50.800568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.546469, 31.174433, 50.659908>,  <29.418638, 30.989672, 50.575512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.546469, 31.174433, 50.659908>,  <29.759520, 31.482368, 50.800568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546469, 31.174433, 50.659908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487965, -0.060153, 0.870788,
		-0.691519, 0.635398, -0.343615,
		-0.532628, -0.769838, -0.351649,
		29.386681, 30.943481, 50.554413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996790, 31.650776, 50.786888>,  <29.759520, 31.482368, 50.800568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996790, 31.650776, 50.786888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.078150, 31.261368, 50.828625>,  <29.126966, 31.027723, 50.853664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.078150, 31.261368, 50.828625>,  <28.996790, 31.650776, 50.786888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078150, 31.261368, 50.828625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631450, -0.048991, 0.773867,
		-0.748264, -0.223289, -0.624695,
		0.203400, -0.973521, 0.104338,
		29.139170, 30.969311, 50.859924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219311, 32.389019, 50.560623>,  <28.996790, 31.650776, 50.786888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219311, 32.389019, 50.560623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.054895, 32.660137, 50.316772>,  <28.956245, 32.822807, 50.170464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.054895, 32.660137, 50.316772>,  <29.219311, 32.389019, 50.560623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054895, 32.660137, 50.316772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729007, -0.157126, -0.666229,
		-0.547354, -0.718266, -0.429532,
		-0.411039, 0.677794, -0.609624,
		28.931583, 32.863476, 50.133884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176945, 32.106873, 49.854195>,  <29.219311, 32.389019, 50.560623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176945, 32.106873, 49.854195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.174362, 32.506447, 49.835957>,  <29.172813, 32.746193, 49.825012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.174362, 32.506447, 49.835957>,  <29.176945, 32.106873, 49.854195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174362, 32.506447, 49.835957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729505, -0.026480, -0.683463,
		-0.683945, -0.037674, -0.728560,
		-0.006457, 0.998939, -0.045594,
		29.172424, 32.806129, 49.822277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069729, 32.344429, 49.140087>,  <29.176945, 32.106873, 49.854195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069729, 32.344429, 49.140087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.196428, 32.682659, 49.311977>,  <29.272448, 32.885597, 49.415112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.196428, 32.682659, 49.311977>,  <29.069729, 32.344429, 49.140087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196428, 32.682659, 49.311977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539997, 0.211707, -0.814606,
		-0.779790, 0.490079, -0.389551,
		0.316751, 0.845578, 0.429729,
		29.291454, 32.936333, 49.440895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966118, 32.891972, 48.628826>,  <29.069729, 32.344429, 49.140087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966118, 32.891972, 48.628826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.259172, 33.008129, 48.875050>,  <29.435005, 33.077824, 49.022785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.259172, 33.008129, 48.875050>,  <28.966118, 32.891972, 48.628826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259172, 33.008129, 48.875050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568481, 0.236231, -0.788051,
		-0.374259, 0.927290, 0.007989,
		0.732638, 0.290394, 0.615559,
		29.478964, 33.095249, 49.059715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127766, 33.535694, 48.324284>,  <28.966118, 32.891972, 48.628826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127766, 33.535694, 48.324284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.436014, 33.450447, 48.564526>,  <29.620964, 33.399300, 48.708672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.436014, 33.450447, 48.564526>,  <29.127766, 33.535694, 48.324284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436014, 33.450447, 48.564526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629079, 0.405203, -0.663378,
		-0.101988, 0.889040, 0.446326,
		0.770622, -0.213117, 0.600602,
		29.667200, 33.386513, 48.744705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567215, 34.078968, 48.275555>,  <29.127766, 33.535694, 48.324284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567215, 34.078968, 48.275555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.801062, 33.795101, 48.432827>,  <29.941370, 33.624783, 48.527191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.801062, 33.795101, 48.432827>,  <29.567215, 34.078968, 48.275555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801062, 33.795101, 48.432827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748549, 0.284920, -0.598745,
		0.312884, 0.644355, 0.697790,
		0.584619, -0.709667, 0.393184,
		29.976448, 33.582203, 48.550781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134085, 34.331577, 48.440353>,  <29.567215, 34.078968, 48.275555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134085, 34.331577, 48.440353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.252136, 33.955627, 48.371601>,  <30.322968, 33.730057, 48.330349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.252136, 33.955627, 48.371601>,  <30.134085, 34.331577, 48.440353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252136, 33.955627, 48.371601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704087, 0.335538, -0.625840,
		0.645880, 0.063686, 0.760778,
		0.295127, -0.939872, -0.171877,
		30.340673, 33.673664, 48.320038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592812, 34.420254, 48.983822>,  <30.134085, 34.331577, 48.440353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592812, 34.420254, 48.983822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.795937, 34.692303, 49.195316>,  <30.917810, 34.855534, 49.322212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.795937, 34.692303, 49.195316>,  <30.592812, 34.420254, 48.983822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795937, 34.692303, 49.195316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232807, -0.482579, 0.844345,
		0.829415, -0.551861, -0.086722,
		0.507811, 0.680123, 0.528735,
		30.948280, 34.896339, 49.353935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055613, 34.019669, 49.515060>,  <30.592812, 34.420254, 48.983822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055613, 34.019669, 49.515060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.011023, 34.394176, 49.648312>,  <30.984268, 34.618881, 49.728264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.011023, 34.394176, 49.648312>,  <31.055613, 34.019669, 49.515060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011023, 34.394176, 49.648312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124966, -0.345767, 0.929962,
		0.985879, 0.062036, 0.155545,
		-0.111474, 0.936267, 0.333132,
		30.977581, 34.675056, 49.748253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609264, 34.177391, 50.065971>,  <31.055613, 34.019669, 49.515060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609264, 34.177391, 50.065971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.291079, 34.400887, 50.159821>,  <31.100166, 34.534985, 50.216129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.291079, 34.400887, 50.159821>,  <31.609264, 34.177391, 50.065971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291079, 34.400887, 50.159821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023304, -0.358671, 0.933173,
		0.605551, 0.747774, 0.272289,
		-0.795465, 0.558739, 0.234620,
		31.052439, 34.568508, 50.230206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710011, 34.431248, 50.737831>,  <31.609264, 34.177391, 50.065971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710011, 34.431248, 50.737831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.317404, 34.494144, 50.694195>,  <31.081841, 34.531883, 50.668015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.317404, 34.494144, 50.694195>,  <31.710011, 34.431248, 50.737831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317404, 34.494144, 50.694195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151489, -0.290047, 0.944947,
		0.116941, 0.944007, 0.308506,
		-0.981517, 0.157239, -0.109088,
		31.022949, 34.541317, 50.661469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485960, 34.906773, 51.295441>,  <31.710011, 34.431248, 50.737831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485960, 34.906773, 51.295441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.134958, 34.753597, 51.179962>,  <30.924356, 34.661694, 51.110676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.134958, 34.753597, 51.179962>,  <31.485960, 34.906773, 51.295441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134958, 34.753597, 51.179962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252135, -0.143694, 0.956964,
		-0.407938, 0.912532, 0.029541,
		-0.877505, -0.382934, -0.288699,
		30.871706, 34.638718, 51.093353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921925, 35.165344, 51.714611>,  <31.485960, 34.906773, 51.295441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921925, 35.165344, 51.714611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.792671, 34.822437, 51.554268>,  <30.715120, 34.616695, 51.458061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.792671, 34.822437, 51.554268>,  <30.921925, 35.165344, 51.714611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792671, 34.822437, 51.554268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330691, -0.294594, 0.896581,
		-0.886696, 0.422274, -0.188297,
		-0.323131, -0.857263, -0.400858,
		30.695732, 34.565258, 51.434010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299496, 34.996704, 52.046326>,  <30.921925, 35.165344, 51.714611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299496, 34.996704, 52.046326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.420633, 34.636604, 51.921207>,  <30.493315, 34.420544, 51.846138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.420633, 34.636604, 51.921207>,  <30.299496, 34.996704, 52.046326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420633, 34.636604, 51.921207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137602, -0.366068, 0.920359,
		-0.943055, -0.235683, -0.234737,
		0.302843, -0.900249, -0.312791,
		30.511486, 34.366531, 51.827370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860798, 34.587780, 52.444595>,  <30.299496, 34.996704, 52.046326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860798, 34.587780, 52.444595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.116562, 34.322628, 52.288776>,  <30.270021, 34.163536, 52.195286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.116562, 34.322628, 52.288776>,  <29.860798, 34.587780, 52.444595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116562, 34.322628, 52.288776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023698, -0.489417, 0.871728,
		-0.768500, -0.566624, -0.297230,
		0.639411, -0.662879, -0.389545,
		30.308386, 34.123764, 52.171913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585497, 33.962444, 52.575058>,  <29.860798, 34.587780, 52.444595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585497, 33.962444, 52.575058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.971951, 33.887901, 52.503662>,  <30.203823, 33.843178, 52.460827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.971951, 33.887901, 52.503662>,  <29.585497, 33.962444, 52.575058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971951, 33.887901, 52.503662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012917, -0.655904, 0.754734,
		-0.257717, -0.731480, -0.631284,
		0.966134, -0.186353, -0.178486,
		30.261791, 33.831997, 52.450115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.504509, 37.200375, 37.855915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758675, 36.902126, 37.936203>,  <35.911175, 36.723175, 37.984375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758675, 36.902126, 37.936203>,  <35.504509, 37.200375, 37.855915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758675, 36.902126, 37.936203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090520, 0.186225, 0.978328,
		-0.766846, -0.639815, 0.050836,
		0.635416, -0.745625, 0.200722,
		35.949299, 36.678440, 37.996418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258953, 36.585114, 38.246304>,  <35.504509, 37.200375, 37.855915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258953, 36.585114, 38.246304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632607, 36.704506, 38.324585>,  <35.856800, 36.776142, 38.371552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632607, 36.704506, 38.324585>,  <35.258953, 36.585114, 38.246304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632607, 36.704506, 38.324585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243365, 0.131581, 0.960968,
		0.261081, -0.945301, 0.195555,
		0.934136, 0.298482, 0.195700,
		35.912846, 36.794048, 38.383297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544685, 36.224468, 38.832325>,  <35.258953, 36.585114, 38.246304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544685, 36.224468, 38.832325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747387, 36.569057, 38.819248>,  <35.869007, 36.775810, 38.811401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747387, 36.569057, 38.819248>,  <35.544685, 36.224468, 38.832325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747387, 36.569057, 38.819248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186842, 0.146767, 0.971365,
		0.841598, -0.486138, 0.235334,
		0.506757, 0.861469, -0.032688,
		35.899414, 36.827499, 38.809441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908089, 36.246391, 39.477428>,  <35.544685, 36.224468, 38.832325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908089, 36.246391, 39.477428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925011, 36.629486, 39.363625>,  <35.935165, 36.859344, 39.295341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925011, 36.629486, 39.363625>,  <35.908089, 36.246391, 39.477428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925011, 36.629486, 39.363625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034955, 0.286005, 0.957590,
		0.998493, -0.030566, 0.045578,
		0.042305, 0.957740, -0.284506,
		35.937702, 36.916809, 39.278275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368980, 36.562927, 39.933300>,  <35.908089, 36.246391, 39.477428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368980, 36.562927, 39.933300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167660, 36.870762, 39.776115>,  <36.046867, 37.055462, 39.681805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167660, 36.870762, 39.776115>,  <36.368980, 36.562927, 39.933300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167660, 36.870762, 39.776115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072075, 0.415787, 0.906602,
		0.861100, 0.484616, -0.153798,
		-0.503301, 0.769590, -0.392963,
		36.016670, 37.101639, 39.658226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466057, 37.201050, 40.367794>,  <36.368980, 36.562927, 39.933300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466057, 37.201050, 40.367794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146679, 37.331116, 40.165112>,  <35.955051, 37.409157, 40.043503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146679, 37.331116, 40.165112>,  <36.466057, 37.201050, 40.367794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146679, 37.331116, 40.165112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324000, 0.477287, 0.816836,
		0.507451, 0.816373, -0.275735,
		-0.798447, 0.325165, -0.506705,
		35.907146, 37.428665, 40.013100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340405, 37.909206, 40.653019>,  <36.466057, 37.201050, 40.367794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340405, 37.909206, 40.653019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000969, 37.797153, 40.473495>,  <35.797310, 37.729919, 40.365780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000969, 37.797153, 40.473495>,  <36.340405, 37.909206, 40.653019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000969, 37.797153, 40.473495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528922, 0.468506, 0.707632,
		0.012037, 0.837870, -0.545737,
		-0.848585, -0.280134, -0.448807,
		35.746395, 37.713112, 40.338852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889301, 38.513908, 40.802982>,  <36.340405, 37.909206, 40.653019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889301, 38.513908, 40.802982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671097, 38.186646, 40.730278>,  <35.540173, 37.990288, 40.686657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671097, 38.186646, 40.730278>,  <35.889301, 38.513908, 40.802982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671097, 38.186646, 40.730278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618780, 0.246902, 0.745755,
		-0.565265, 0.519292, -0.640946,
		-0.545515, -0.818154, -0.181762,
		35.507442, 37.941200, 40.675751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241207, 38.833313, 40.770538>,  <35.889301, 38.513908, 40.802982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241207, 38.833313, 40.770538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173805, 38.449814, 40.862110>,  <35.133366, 38.219715, 40.917053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173805, 38.449814, 40.862110>,  <35.241207, 38.833313, 40.770538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173805, 38.449814, 40.862110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554272, 0.284214, 0.782307,
		-0.815100, 0.004936, -0.579300,
		-0.168506, -0.958748, 0.228927,
		35.123253, 38.162189, 40.930790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530910, 38.746357, 40.818939>,  <35.241207, 38.833313, 40.770538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530910, 38.746357, 40.818939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684017, 38.429913, 41.009789>,  <34.775879, 38.240047, 41.124298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684017, 38.429913, 41.009789>,  <34.530910, 38.746357, 40.818939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684017, 38.429913, 41.009789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603470, 0.176940, 0.777507,
		-0.699512, -0.585528, -0.409683,
		0.382763, -0.791107, 0.477120,
		34.798847, 38.192581, 41.152924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944420, 38.372391, 41.023323>,  <34.530910, 38.746357, 40.818939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944420, 38.372391, 41.023323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233765, 38.235218, 41.263039>,  <34.407372, 38.152916, 41.406868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233765, 38.235218, 41.263039>,  <33.944420, 38.372391, 41.023323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233765, 38.235218, 41.263039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642434, -0.016181, 0.766170,
		-0.253046, -0.939222, -0.232015,
		0.723358, -0.342930, 0.599294,
		34.450771, 38.132339, 41.442825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648537, 37.773113, 41.454147>,  <33.944420, 38.372391, 41.023323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648537, 37.773113, 41.454147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973423, 37.893597, 41.653976>,  <34.168354, 37.965889, 41.773872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973423, 37.893597, 41.653976>,  <33.648537, 37.773113, 41.454147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973423, 37.893597, 41.653976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501309, -0.077527, 0.861788,
		0.298312, -0.950400, 0.088031,
		0.812219, 0.301212, 0.499572,
		34.217087, 37.983959, 41.803848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399418, 37.007710, 41.018261>,  <33.648537, 37.773113, 41.454147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399418, 37.007710, 41.018261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236610, 36.642494, 41.028797>,  <33.138927, 36.423363, 41.035118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236610, 36.642494, 41.028797>,  <33.399418, 37.007710, 41.018261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236610, 36.642494, 41.028797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335007, 0.122392, -0.934233,
		0.849769, -0.389072, -0.355690,
		-0.407017, -0.913041, 0.026337,
		33.114506, 36.368584, 41.036697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724323, 36.616165, 40.521469>,  <33.399418, 37.007710, 41.018261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724323, 36.616165, 40.521469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360100, 36.459240, 40.573566>,  <33.141563, 36.365086, 40.604824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360100, 36.459240, 40.573566>,  <33.724323, 36.616165, 40.521469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360100, 36.459240, 40.573566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176802, 0.084817, -0.980585,
		0.373652, -0.915912, -0.146594,
		-0.910563, -0.392316, 0.130243,
		33.086929, 36.341545, 40.612640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679600, 36.347885, 39.960911>,  <33.724323, 36.616165, 40.521469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679600, 36.347885, 39.960911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302189, 36.352116, 40.093357>,  <33.075741, 36.354656, 40.172825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302189, 36.352116, 40.093357>,  <33.679600, 36.347885, 39.960911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302189, 36.352116, 40.093357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320745, 0.220962, -0.921031,
		-0.082907, -0.975225, -0.205091,
		-0.943530, 0.010578, 0.331118,
		33.019131, 36.355289, 40.192692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198669, 35.833939, 39.438217>,  <33.679600, 36.347885, 39.960911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198669, 35.833939, 39.438217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923233, 36.054901, 39.626129>,  <32.757973, 36.187477, 39.738876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.923233, 36.054901, 39.626129>,  <33.198669, 35.833939, 39.438217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923233, 36.054901, 39.626129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461871, 0.165326, -0.871403,
		-0.559032, -0.817018, 0.141296,
		-0.688592, 0.552403, 0.469780,
		32.716656, 36.220623, 39.767063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457073, 35.634678, 39.355324>,  <33.198669, 35.833939, 39.438217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457073, 35.634678, 39.355324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403339, 36.014442, 39.468868>,  <32.371101, 36.242302, 39.536995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403339, 36.014442, 39.468868>,  <32.457073, 35.634678, 39.355324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403339, 36.014442, 39.468868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587056, 0.154534, -0.794660,
		-0.798324, -0.273391, 0.536597,
		-0.134331, 0.949409, 0.283864,
		32.363041, 36.299267, 39.554028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805201, 35.691875, 39.312183>,  <32.457073, 35.634678, 39.355324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805201, 35.691875, 39.312183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962189, 36.058540, 39.282001>,  <32.056381, 36.278542, 39.263893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962189, 36.058540, 39.282001>,  <31.805201, 35.691875, 39.312183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962189, 36.058540, 39.282001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547772, 0.167046, -0.819781,
		-0.738859, 0.363075, 0.567683,
		0.392471, 0.916664, -0.075459,
		32.079929, 36.333538, 39.259365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302166, 36.158581, 39.286903>,  <31.805201, 35.691875, 39.312183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302166, 36.158581, 39.286903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610661, 36.370934, 39.146416>,  <31.795757, 36.498344, 39.062122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610661, 36.370934, 39.146416>,  <31.302166, 36.158581, 39.286903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610661, 36.370934, 39.146416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512120, 0.189797, -0.837681,
		-0.378053, 0.825917, 0.418256,
		0.771239, 0.530885, -0.351215,
		31.842031, 36.530197, 39.041050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949270, 36.657539, 38.853748>,  <31.302166, 36.158581, 39.286903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949270, 36.657539, 38.853748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333670, 36.647053, 38.743626>,  <31.564310, 36.640759, 38.677551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333670, 36.647053, 38.743626>,  <30.949270, 36.657539, 38.853748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333670, 36.647053, 38.743626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274684, 0.024915, -0.961212,
		0.032062, 0.999346, 0.016741,
		0.961000, -0.026220, -0.275303,
		31.621969, 36.639187, 38.661034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006369, 37.207542, 38.272732>,  <30.949270, 36.657539, 38.853748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006369, 37.207542, 38.272732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320185, 36.965424, 38.218903>,  <31.508474, 36.820152, 38.186604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320185, 36.965424, 38.218903>,  <31.006369, 37.207542, 38.272732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320185, 36.965424, 38.218903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157542, 0.015331, -0.987393,
		0.599732, 0.795850, -0.083332,
		0.784540, -0.605300, -0.134574,
		31.555546, 36.783833, 38.178532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381815, 37.433994, 37.600109>,  <31.006369, 37.207542, 38.272732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381815, 37.433994, 37.600109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482544, 37.050579, 37.653469>,  <31.542982, 36.820530, 37.685486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482544, 37.050579, 37.653469>,  <31.381815, 37.433994, 37.600109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482544, 37.050579, 37.653469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185889, -0.183185, -0.965344,
		0.949753, 0.218299, -0.224311,
		0.251824, -0.958535, 0.133401,
		31.558090, 36.763020, 37.693489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618345, 37.043079, 36.941883>,  <31.381815, 37.433994, 37.600109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618345, 37.043079, 36.941883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559811, 36.702976, 37.144131>,  <31.524691, 36.498917, 37.265480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559811, 36.702976, 37.144131>,  <31.618345, 37.043079, 36.941883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559811, 36.702976, 37.144131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198375, -0.475518, -0.857047,
		0.969140, -0.225720, -0.099084,
		-0.146337, -0.850255, 0.505621,
		31.515909, 36.447899, 37.295818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076252, 36.570122, 36.565556>,  <31.618345, 37.043079, 36.941883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076252, 36.570122, 36.565556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790892, 36.369968, 36.761787>,  <31.619675, 36.249878, 36.879528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790892, 36.369968, 36.761787>,  <32.076252, 36.570122, 36.565556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790892, 36.369968, 36.761787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294571, -0.421080, -0.857857,
		0.635832, -0.756510, 0.153002,
		-0.713404, -0.500383, 0.490583,
		31.576870, 36.219852, 36.908962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057774, 35.960823, 36.194801>,  <32.076252, 36.570122, 36.565556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057774, 35.960823, 36.194801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712852, 35.941788, 36.396461>,  <31.505899, 35.930367, 36.517460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712852, 35.941788, 36.396461>,  <32.057774, 35.960823, 36.194801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712852, 35.941788, 36.396461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473665, -0.276318, -0.836236,
		0.179103, -0.959887, 0.215727,
		-0.862301, -0.047590, 0.504154,
		31.454163, 35.927509, 36.547707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745308, 35.203674, 36.190800>,  <32.057774, 35.960823, 36.194801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745308, 35.203674, 36.190800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491461, 35.508335, 36.243176>,  <31.339151, 35.691132, 36.274601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491461, 35.508335, 36.243176>,  <31.745308, 35.203674, 36.190800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491461, 35.508335, 36.243176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583892, -0.361551, -0.726877,
		-0.506288, -0.537743, 0.674170,
		-0.634620, 0.761652, 0.130935,
		31.301075, 35.736832, 36.282455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846735, 34.465363, 36.169991>,  <31.745308, 35.203674, 36.190800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846735, 34.465363, 36.169991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078556, 34.283710, 35.899323>,  <32.217648, 34.174721, 35.736919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078556, 34.283710, 35.899323>,  <31.846735, 34.465363, 36.169991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078556, 34.283710, 35.899323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146539, -0.874881, 0.461639,
		-0.801649, -0.168386, -0.573590,
		0.579556, -0.454125, -0.676672,
		32.252422, 34.147472, 35.696320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535070, 33.904896, 35.887009>,  <31.846735, 34.465363, 36.169991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535070, 33.904896, 35.887009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920275, 33.802197, 35.854286>,  <32.151398, 33.740578, 35.834652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920275, 33.802197, 35.854286>,  <31.535070, 33.904896, 35.887009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920275, 33.802197, 35.854286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186909, -0.855132, 0.483543,
		-0.194107, -0.450366, -0.871489,
		0.963010, -0.256748, -0.081810,
		32.209179, 33.725170, 35.829742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423531, 33.223114, 35.831486>,  <31.535070, 33.904896, 35.887009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423531, 33.223114, 35.831486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777962, 33.319450, 35.989910>,  <31.990620, 33.377254, 36.084965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777962, 33.319450, 35.989910>,  <31.423531, 33.223114, 35.831486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777962, 33.319450, 35.989910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017358, -0.836583, 0.547565,
		0.463212, -0.492060, -0.737097,
		0.886077, 0.240844, 0.396057,
		32.043785, 33.391705, 36.108727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720898, 32.542362, 36.077606>,  <31.423531, 33.223114, 35.831486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720898, 32.542362, 36.077606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956123, 32.810741, 36.258274>,  <32.097260, 32.971771, 36.366676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956123, 32.810741, 36.258274>,  <31.720898, 32.542362, 36.077606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956123, 32.810741, 36.258274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056285, -0.591030, 0.804683,
		0.806854, -0.447783, -0.385327,
		0.588063, 0.670950, 0.451672,
		32.132542, 33.012028, 36.393776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146816, 32.128765, 36.386265>,  <31.720898, 32.542362, 36.077606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146816, 32.128765, 36.386265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203293, 32.471996, 36.583752>,  <32.237179, 32.677937, 36.702244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203293, 32.471996, 36.583752>,  <32.146816, 32.128765, 36.386265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203293, 32.471996, 36.583752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053622, -0.504612, 0.861679,
		0.988528, -0.095192, -0.117261,
		0.141196, 0.858082, 0.493719,
		32.245651, 32.729420, 36.731869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757591, 32.156639, 36.791653>,  <32.146816, 32.128765, 36.386265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757591, 32.156639, 36.791653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527821, 32.435673, 36.962959>,  <32.389957, 32.603092, 37.065742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527821, 32.435673, 36.962959>,  <32.757591, 32.156639, 36.791653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527821, 32.435673, 36.962959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198878, -0.388587, 0.899693,
		0.794028, 0.601982, 0.084482,
		-0.574428, 0.697580, 0.428270,
		32.355492, 32.644947, 37.091438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151703, 32.419331, 37.325645>,  <32.757591, 32.156639, 36.791653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151703, 32.419331, 37.325645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772892, 32.521770, 37.403168>,  <32.545605, 32.583233, 37.449680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772892, 32.521770, 37.403168>,  <33.151703, 32.419331, 37.325645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772892, 32.521770, 37.403168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133863, -0.233774, 0.963032,
		0.291934, 0.937958, 0.187108,
		-0.947024, 0.256095, 0.193805,
		32.488785, 32.598598, 37.461308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221138, 32.668091, 37.953838>,  <33.151703, 32.419331, 37.325645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221138, 32.668091, 37.953838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830521, 32.593853, 37.910187>,  <32.596149, 32.549313, 37.883995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830521, 32.593853, 37.910187>,  <33.221138, 32.668091, 37.953838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830521, 32.593853, 37.910187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032718, -0.373073, 0.927225,
		-0.212801, 0.909050, 0.358251,
		-0.976548, -0.185593, -0.109133,
		32.537556, 32.538174, 37.877445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954590, 32.956264, 38.550579>,  <33.221138, 32.668091, 37.953838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954590, 32.956264, 38.550579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690907, 32.695473, 38.400723>,  <32.532696, 32.538998, 38.310806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690907, 32.695473, 38.400723>,  <32.954590, 32.956264, 38.550579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690907, 32.695473, 38.400723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164007, -0.361566, 0.917808,
		-0.733855, 0.666473, 0.131419,
		-0.659211, -0.651984, -0.374643,
		32.493145, 32.499878, 38.288330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337654, 33.118225, 38.771439>,  <32.954590, 32.956264, 38.550579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337654, 33.118225, 38.771439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300900, 32.730797, 38.678989>,  <32.278847, 32.498341, 38.623520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300900, 32.730797, 38.678989>,  <32.337654, 33.118225, 38.771439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300900, 32.730797, 38.678989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119491, -0.219706, 0.968221,
		-0.988574, 0.116585, -0.095547,
		-0.091888, -0.968575, -0.231127,
		32.273335, 32.440224, 38.609650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826706, 32.844200, 39.319366>,  <32.337654, 33.118225, 38.771439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826706, 32.844200, 39.319366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007538, 32.521164, 39.167889>,  <32.116039, 32.327339, 39.077000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007538, 32.521164, 39.167889>,  <31.826706, 32.844200, 39.319366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007538, 32.521164, 39.167889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003116, -0.425987, 0.904724,
		-0.891971, -0.407829, -0.195098,
		0.452082, -0.807595, -0.378698,
		32.143162, 32.278885, 39.054279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340103, 32.279556, 39.556740>,  <31.826706, 32.844200, 39.319366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340103, 32.279556, 39.556740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700825, 32.123676, 39.482033>,  <31.917257, 32.030148, 39.437210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700825, 32.123676, 39.482033>,  <31.340103, 32.279556, 39.556740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700825, 32.123676, 39.482033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076346, -0.569060, 0.818744,
		-0.425345, -0.724089, -0.542933,
		0.901805, -0.389700, -0.186766,
		31.971367, 32.006767, 39.426003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177040, 31.632200, 39.530846>,  <31.340103, 32.279556, 39.556740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177040, 31.632200, 39.530846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565334, 31.653095, 39.624611>,  <31.798311, 31.665632, 39.680870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565334, 31.653095, 39.624611>,  <31.177040, 31.632200, 39.530846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565334, 31.653095, 39.624611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163676, -0.570374, 0.804912,
		0.175747, -0.819722, -0.545132,
		0.970734, 0.052236, 0.234410,
		31.856554, 31.668766, 39.694935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447746, 30.875820, 39.753471>,  <31.177040, 31.632200, 39.530846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447746, 30.875820, 39.753471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713854, 31.142685, 39.887520>,  <31.873518, 31.302805, 39.967949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713854, 31.142685, 39.887520>,  <31.447746, 30.875820, 39.753471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713854, 31.142685, 39.887520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025879, -0.469203, 0.882711,
		0.746155, -0.578568, -0.329412,
		0.665269, 0.667164, 0.335125,
		31.913435, 31.342834, 39.988056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909487, 30.458786, 40.151150>,  <31.447746, 30.875820, 39.753471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909487, 30.458786, 40.151150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924913, 30.842413, 40.263367>,  <31.934170, 31.072590, 40.330696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924913, 30.842413, 40.263367>,  <31.909487, 30.458786, 40.151150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924913, 30.842413, 40.263367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151163, -0.271920, 0.950373,
		0.987756, -0.079060, 0.134488,
		0.038567, 0.959067, 0.280541,
		31.936483, 31.130133, 40.347530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407463, 30.492954, 40.731312>,  <31.909487, 30.458786, 40.151150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407463, 30.492954, 40.731312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202419, 30.834316, 40.769108>,  <32.079391, 31.039133, 40.791786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202419, 30.834316, 40.769108>,  <32.407463, 30.492954, 40.731312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202419, 30.834316, 40.769108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185408, -0.217471, 0.958295,
		0.838363, 0.473715, 0.269707,
		-0.512612, 0.853405, 0.094489,
		32.048637, 31.090338, 40.797455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721996, 30.897541, 41.219460>,  <32.407463, 30.492954, 40.731312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721996, 30.897541, 41.219460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336403, 31.003435, 41.229706>,  <32.105049, 31.066971, 41.235855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336403, 31.003435, 41.229706>,  <32.721996, 30.897541, 41.219460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336403, 31.003435, 41.229706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015971, -0.038533, 0.999130,
		0.265490, 0.963551, 0.032917,
		-0.963981, 0.264733, 0.025619,
		32.047207, 31.082855, 41.237392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655544, 31.334635, 41.782242>,  <32.721996, 30.897541, 41.219460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655544, 31.334635, 41.782242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268753, 31.259945, 41.712868>,  <32.036678, 31.215130, 41.671242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268753, 31.259945, 41.712868>,  <32.655544, 31.334635, 41.782242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268753, 31.259945, 41.712868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145348, -0.154920, 0.977177,
		-0.209332, 0.970121, 0.122664,
		-0.966982, -0.186726, -0.173435,
		31.978659, 31.203928, 41.660839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456097, 31.718340, 42.306961>,  <32.655544, 31.334635, 41.782242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456097, 31.718340, 42.306961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171303, 31.456451, 42.205441>,  <32.000427, 31.299318, 42.144527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171303, 31.456451, 42.205441>,  <32.456097, 31.718340, 42.306961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171303, 31.456451, 42.205441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297336, -0.046339, 0.953648,
		-0.636135, 0.754448, -0.161679,
		-0.711986, -0.654722, -0.253803,
		31.957706, 31.260035, 42.129299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787912, 32.073719, 42.514492>,  <32.456097, 31.718340, 42.306961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787912, 32.073719, 42.514492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713926, 31.681366, 42.490292>,  <31.669535, 31.445955, 42.475773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713926, 31.681366, 42.490292>,  <31.787912, 32.073719, 42.514492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713926, 31.681366, 42.490292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352473, 0.008745, 0.935781,
		-0.917361, 0.194411, -0.347351,
		-0.184964, -0.980881, -0.060502,
		31.658438, 31.387102, 42.472141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240501, 31.961855, 42.926682>,  <31.787912, 32.073719, 42.514492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240501, 31.961855, 42.926682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381170, 31.590307, 42.880157>,  <31.465572, 31.367378, 42.852242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381170, 31.590307, 42.880157>,  <31.240501, 31.961855, 42.926682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381170, 31.590307, 42.880157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336640, -0.241421, 0.910159,
		-0.873498, -0.280924, -0.397596,
		0.351674, -0.928869, -0.116310,
		31.486673, 31.311647, 42.845264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695225, 31.514147, 43.126999>,  <31.240501, 31.961855, 42.926682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695225, 31.514147, 43.126999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030739, 31.302788, 43.179508>,  <31.232048, 31.175972, 43.211014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030739, 31.302788, 43.179508>,  <30.695225, 31.514147, 43.126999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030739, 31.302788, 43.179508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265963, -0.187267, 0.945619,
		-0.475079, -0.828087, -0.297611,
		0.838787, -0.528397, 0.131274,
		31.282375, 31.144268, 43.218891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520668, 31.073919, 43.689323>,  <30.695225, 31.514147, 43.126999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520668, 31.073919, 43.689323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919558, 31.065676, 43.660709>,  <31.158892, 31.060730, 43.643543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919558, 31.065676, 43.660709>,  <30.520668, 31.073919, 43.689323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919558, 31.065676, 43.660709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072158, 0.031430, 0.996898,
		-0.018302, -0.999293, 0.032831,
		0.997225, -0.020615, -0.071532,
		31.218725, 31.059492, 43.639252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662823, 30.491783, 44.036671>,  <30.520668, 31.073919, 43.689323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662823, 30.491783, 44.036671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979500, 30.735744, 44.050755>,  <31.169506, 30.882120, 44.059204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979500, 30.735744, 44.050755>,  <30.662823, 30.491783, 44.036671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979500, 30.735744, 44.050755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090219, 0.059718, 0.994130,
		0.604219, -0.790224, 0.102303,
		0.791694, 0.609902, 0.035210,
		31.217009, 30.918715, 44.061317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062258, 30.241173, 44.592472>,  <30.662823, 30.491783, 44.036671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062258, 30.241173, 44.592472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195951, 30.614374, 44.539116>,  <31.276167, 30.838295, 44.507103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195951, 30.614374, 44.539116>,  <31.062258, 30.241173, 44.592472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195951, 30.614374, 44.539116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102306, 0.176612, 0.978949,
		0.936922, -0.313549, 0.154481,
		0.334232, 0.933004, -0.133393,
		31.296221, 30.894276, 44.499100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611832, 30.298828, 44.987957>,  <31.062258, 30.241173, 44.592472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611832, 30.298828, 44.987957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499640, 30.676529, 44.919003>,  <31.432323, 30.903151, 44.877632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499640, 30.676529, 44.919003>,  <31.611832, 30.298828, 44.987957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499640, 30.676529, 44.919003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035753, 0.189745, 0.981182,
		0.959193, 0.269041, -0.086980,
		-0.280482, 0.944253, -0.172383,
		31.415495, 30.959805, 44.867287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051010, 30.578051, 45.445049>,  <31.611832, 30.298828, 44.987957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051010, 30.578051, 45.445049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743425, 30.818226, 45.357250>,  <31.558876, 30.962332, 45.304573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743425, 30.818226, 45.357250>,  <32.051010, 30.578051, 45.445049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743425, 30.818226, 45.357250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074704, 0.256591, 0.963629,
		0.634921, 0.757387, -0.152452,
		-0.768957, 0.600439, -0.219494,
		31.512737, 30.998358, 45.291401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139122, 31.249340, 45.759457>,  <32.051010, 30.578051, 45.445049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139122, 31.249340, 45.759457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748825, 31.174013, 45.714790>,  <31.514648, 31.128817, 45.687988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748825, 31.174013, 45.714790>,  <32.139122, 31.249340, 45.759457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748825, 31.174013, 45.714790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140910, 0.149799, 0.978624,
		-0.167565, 0.970616, -0.172700,
		-0.975739, -0.188318, -0.111668,
		31.456104, 31.117517, 45.681290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695442, 31.772655, 45.600044>,  <32.139122, 31.249340, 45.759457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695442, 31.772655, 45.600044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068787, 31.699911, 45.723824>,  <33.292793, 31.656263, 45.798092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068787, 31.699911, 45.723824>,  <32.695442, 31.772655, 45.600044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068787, 31.699911, 45.723824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354021, 0.324339, -0.877196,
		0.059163, 0.928294, 0.367109,
		0.933364, -0.181862, 0.309447,
		33.348797, 31.645353, 45.816658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155701, 32.454998, 45.660011>,  <32.695442, 31.772655, 45.600044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155701, 32.454998, 45.660011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390053, 32.142029, 45.575577>,  <33.530663, 31.954247, 45.524918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390053, 32.142029, 45.575577>,  <33.155701, 32.454998, 45.660011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390053, 32.142029, 45.575577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406133, 0.508880, -0.759010,
		0.701283, 0.358962, 0.615912,
		0.585882, -0.782424, -0.211083,
		33.565819, 31.907301, 45.512253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754108, 32.774178, 45.312233>,  <33.155701, 32.454998, 45.660011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754108, 32.774178, 45.312233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806831, 32.384640, 45.238209>,  <33.838463, 32.150917, 45.193794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806831, 32.384640, 45.238209>,  <33.754108, 32.774178, 45.312233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806831, 32.384640, 45.238209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407914, 0.223438, -0.885258,
		0.903457, 0.041190, 0.426696,
		0.131804, -0.973847, -0.185065,
		33.846375, 32.092487, 45.182690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335171, 32.752151, 44.924778>,  <33.754108, 32.774178, 45.312233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335171, 32.752151, 44.924778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239040, 32.373280, 44.839836>,  <34.181362, 32.145958, 44.788872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239040, 32.373280, 44.839836>,  <34.335171, 32.752151, 44.924778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239040, 32.373280, 44.839836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501927, 0.065994, -0.862389,
		0.830851, -0.313843, 0.459554,
		-0.240327, -0.947179, -0.212357,
		34.166943, 32.089127, 44.776131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008892, 32.406216, 44.828503>,  <34.335171, 32.752151, 44.924778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008892, 32.406216, 44.828503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724388, 32.208508, 44.628582>,  <34.553684, 32.089882, 44.508629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724388, 32.208508, 44.628582>,  <35.008892, 32.406216, 44.828503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724388, 32.208508, 44.628582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498617, 0.146415, -0.854368,
		0.495468, -0.856889, 0.142313,
		-0.711261, -0.494271, -0.499803,
		34.511009, 32.060226, 44.478642>
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
