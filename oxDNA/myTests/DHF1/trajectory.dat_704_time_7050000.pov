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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.050428, 3.175763, -0.927670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.088049, 2.777585, -0.933951>,  <4.110621, 2.538679, -0.937720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.088049, 2.777585, -0.933951>,  <4.050428, 3.175763, -0.927670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.088049, 2.777585, -0.933951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230922, 0.006468, 0.972951,
		-0.968416, -0.095134, 0.230478,
		0.094051, -0.995443, -0.015704,
		4.116264, 2.478952, -0.938663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.640025, 2.918594, -0.420041>,  <4.050428, 3.175763, -0.927670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.640025, 2.918594, -0.420041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.963964, 2.694934, -0.491034>,  <4.158328, 2.560739, -0.533629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.963964, 2.694934, -0.491034>,  <3.640025, 2.918594, -0.420041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.963964, 2.694934, -0.491034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385526, 0.279238, 0.879429,
		-0.442172, -0.780627, 0.441707,
		0.809848, -0.559149, -0.177481,
		4.206919, 2.527190, -0.544278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.726821, 2.500752, 0.151494>,  <3.640025, 2.918594, -0.420041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.726821, 2.500752, 0.151494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.068245, 2.586858, -0.038284>,  <4.273099, 2.638521, -0.152151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.068245, 2.586858, -0.038284>,  <3.726821, 2.500752, 0.151494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.068245, 2.586858, -0.038284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395604, 0.324785, 0.859076,
		0.339038, -0.920960, 0.192055,
		0.853552, 0.215282, -0.474450,
		4.324313, 2.651437, -0.180618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.295757, 2.068229, 0.355187>,  <3.726821, 2.500752, 0.151494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.295757, 2.068229, 0.355187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.454750, 2.421915, 0.257069>,  <4.550146, 2.634127, 0.198198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.454750, 2.421915, 0.257069>,  <4.295757, 2.068229, 0.355187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.454750, 2.421915, 0.257069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415245, 0.065057, 0.907380,
		0.818278, -0.462526, -0.341307,
		0.397482, 0.884216, -0.245296,
		4.573995, 2.687180, 0.183480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.888143, 2.086883, 0.646942>,  <4.295757, 2.068229, 0.355187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.888143, 2.086883, 0.646942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.796461, 2.472648, 0.594216>,  <4.741452, 2.704107, 0.562581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.796461, 2.472648, 0.594216>,  <4.888143, 2.086883, 0.646942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.796461, 2.472648, 0.594216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308524, 0.200418, 0.929863,
		0.923189, 0.172460, -0.343481,
		-0.229204, 0.964412, -0.131815,
		4.727700, 2.761971, 0.554672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.413959, 2.472548, 0.900629>,  <4.888143, 2.086883, 0.646942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.413959, 2.472548, 0.900629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.117781, 2.740931, 0.916406>,  <4.940073, 2.901961, 0.925872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.117781, 2.740931, 0.916406>,  <5.413959, 2.472548, 0.900629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.117781, 2.740931, 0.916406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397776, 0.390158, 0.830392,
		0.541770, 0.630549, -0.555782,
		-0.740446, 0.670958, 0.039441,
		4.895647, 2.942219, 0.928238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.679330, 3.049442, 1.359264>,  <5.413959, 2.472548, 0.900629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.679330, 3.049442, 1.359264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.285887, 3.115278, 1.329807>,  <5.049820, 3.154779, 1.312133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.285887, 3.115278, 1.329807>,  <5.679330, 3.049442, 1.359264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.285887, 3.115278, 1.329807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024778, 0.281164, 0.959340,
		0.178602, 0.945440, -0.272477,
		-0.983609, 0.164589, -0.073643,
		4.990804, 3.164654, 1.307714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.469400, 3.708304, 1.674959>,  <5.679330, 3.049442, 1.359264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.469400, 3.708304, 1.674959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.139532, 3.484322, 1.706882>,  <4.941611, 3.349933, 1.726035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.139532, 3.484322, 1.706882>,  <5.469400, 3.708304, 1.674959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.139532, 3.484322, 1.706882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011593, 0.124333, 0.992173,
		-0.565494, 0.819141, -0.096042,
		-0.824671, -0.559955, 0.079806,
		4.892131, 3.316336, 1.730823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.695271, 3.939750, 3.092351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.361652, 3.835161, 2.898033>,  <4.161481, 3.772408, 2.781442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.361652, 3.835161, 2.898033>,  <4.695271, 3.939750, 3.092351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.361652, 3.835161, 2.898033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532328, -0.612669, -0.584178,
		-0.144885, -0.745835, 0.650183,
		-0.834047, -0.261472, -0.485796,
		4.111438, 3.756720, 2.752294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.655392, 3.118098, 2.842997>,  <4.695271, 3.939750, 3.092351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.655392, 3.118098, 2.842997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.428871, 3.346693, 2.605441>,  <4.292959, 3.483850, 2.462908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.428871, 3.346693, 2.605441>,  <4.655392, 3.118098, 2.842997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.428871, 3.346693, 2.605441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260661, -0.559396, -0.786849,
		-0.781895, -0.600397, 0.167821,
		-0.566300, 0.571489, -0.593889,
		4.258981, 3.518140, 2.427274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.438093, 2.796876, 2.316163>,  <4.655392, 3.118098, 2.842997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.438093, 2.796876, 2.316163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.416599, 3.160244, 2.150327>,  <4.403703, 3.378265, 2.050825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.416599, 3.160244, 2.150327>,  <4.438093, 2.796876, 2.316163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.416599, 3.160244, 2.150327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084456, -0.409569, -0.908361,
		-0.994977, -0.083824, -0.054714,
		-0.053733, 0.908420, -0.414591,
		4.400479, 3.432770, 2.025949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.002344, 2.805488, 1.762159>,  <4.438093, 2.796876, 2.316163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.002344, 2.805488, 1.762159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.240437, 3.121700, 1.704523>,  <4.383292, 3.311428, 1.669942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.240437, 3.121700, 1.704523>,  <4.002344, 2.805488, 1.762159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.240437, 3.121700, 1.704523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172988, -0.301172, -0.937748,
		-0.784714, 0.533251, -0.316019,
		0.595231, 0.790531, -0.144088,
		4.419006, 3.358860, 1.661297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.710152, 3.254966, 1.276570>,  <4.002344, 2.805488, 1.762159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.710152, 3.254966, 1.276570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.109436, 3.242104, 1.296739>,  <4.349007, 3.234386, 1.308840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.109436, 3.242104, 1.296739>,  <3.710152, 3.254966, 1.276570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.109436, 3.242104, 1.296739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032596, -0.414310, -0.909552,
		0.050138, 0.909568, -0.412520,
		0.998210, -0.032156, 0.050421,
		4.408899, 3.232457, 1.311865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.906798, 3.748917, 0.847167>,  <3.710152, 3.254966, 1.276570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.906798, 3.748917, 0.847167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.224285, 3.506536, 0.868472>,  <4.414777, 3.361108, 0.881255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.224285, 3.506536, 0.868472>,  <3.906798, 3.748917, 0.847167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.224285, 3.506536, 0.868472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067465, 0.000672, -0.997721,
		0.604534, 0.795502, 0.041414,
		0.793717, -0.605950, 0.053262,
		4.462400, 3.324751, 0.884451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.487402, 4.019044, 0.386734>,  <3.906798, 3.748917, 0.847167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.487402, 4.019044, 0.386734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.564228, 3.631952, 0.451983>,  <4.610324, 3.399697, 0.491133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.564228, 3.631952, 0.451983>,  <4.487402, 4.019044, 0.386734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.564228, 3.631952, 0.451983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093357, -0.147448, -0.984654,
		0.976932, 0.204347, 0.062024,
		0.192066, -0.967730, 0.163124,
		4.621848, 3.341633, 0.500921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.016708, 3.891735, -0.035427>,  <4.487402, 4.019044, 0.386734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.016708, 3.891735, -0.035427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.847683, 3.537085, 0.039765>,  <4.746268, 3.324295, 0.084881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.847683, 3.537085, 0.039765>,  <5.016708, 3.891735, -0.035427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.847683, 3.537085, 0.039765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085966, -0.245682, -0.965531,
		0.902248, -0.391837, 0.180035,
		-0.422563, -0.886625, 0.187982,
		4.720914, 3.271097, 0.096160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
