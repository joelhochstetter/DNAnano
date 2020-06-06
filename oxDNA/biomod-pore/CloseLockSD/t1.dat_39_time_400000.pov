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
	<4.332336, 14.908011, 14.551840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.336134, 14.975913, 14.946016>,  <4.338413, 15.016654, 15.182522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.336134, 14.975913, 14.946016>,  <4.332336, 14.908011, 14.551840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.336134, 14.975913, 14.946016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828498, -0.553145, 0.087304,
		0.559912, 0.815607, -0.145893,
		0.009494, 0.169754, 0.985441,
		4.338982, 15.026839, 15.241649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.014235, 15.020153, 14.667856>,  <4.332336, 14.908011, 14.551840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.014235, 15.020153, 14.667856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.802847, 14.876858, 14.975722>,  <4.676014, 14.790881, 15.160442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.802847, 14.876858, 14.975722>,  <5.014235, 15.020153, 14.667856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.802847, 14.876858, 14.975722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651078, -0.752834, 0.096641,
		0.544810, 0.552184, 0.631090,
		-0.528469, -0.358238, 0.769666,
		4.644306, 14.769386, 15.206622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.427080, 14.886917, 15.301557>,  <5.014235, 15.020153, 14.667856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.427080, 14.886917, 15.301557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.129151, 14.620168, 15.292442>,  <4.950394, 14.460117, 15.286974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.129151, 14.620168, 15.292442>,  <5.427080, 14.886917, 15.301557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.129151, 14.620168, 15.292442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665397, -0.744857, 0.049350,
		-0.049882, 0.021596, 0.998522,
		-0.744821, -0.666875, -0.022785,
		4.905704, 14.420105, 15.285606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.935042, 14.366544, 15.456119>,  <5.427080, 14.886917, 15.301557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.935042, 14.366544, 15.456119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.288593, 14.210817, 15.352431>,  <6.500723, 14.117382, 15.290219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.288593, 14.210817, 15.352431>,  <5.935042, 14.366544, 15.456119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.288593, 14.210817, 15.352431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021386, 0.519998, -0.853900,
		0.467229, 0.760286, 0.451289,
		0.883878, -0.389315, -0.259218,
		6.553756, 14.094023, 15.274666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.289366, 14.911804, 15.092196>,  <5.935042, 14.366544, 15.456119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.289366, 14.911804, 15.092196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.471801, 14.572415, 14.984807>,  <6.581263, 14.368782, 14.920374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.471801, 14.572415, 14.984807>,  <6.289366, 14.911804, 15.092196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.471801, 14.572415, 14.984807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195475, 0.389821, -0.899905,
		0.868201, 0.357957, 0.343648,
		0.456089, -0.848473, -0.268471,
		6.608628, 14.317873, 14.904265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.990110, 15.085955, 15.074657>,  <6.289366, 14.911804, 15.092196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.990110, 15.085955, 15.074657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.917042, 14.760318, 14.854155>,  <6.873200, 14.564936, 14.721852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.917042, 14.760318, 14.854155>,  <6.990110, 15.085955, 15.074657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.917042, 14.760318, 14.854155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241517, 0.506355, -0.827812,
		0.953048, -0.284356, 0.104120,
		-0.182672, -0.814092, -0.551258,
		6.862240, 14.516090, 14.688777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.589031, 14.954196, 14.686648>,  <6.990110, 15.085955, 15.074657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.589031, 14.954196, 14.686648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.318284, 14.743796, 14.480668>,  <7.155836, 14.617557, 14.357080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.318284, 14.743796, 14.480668>,  <7.589031, 14.954196, 14.686648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.318284, 14.743796, 14.480668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346767, 0.389226, -0.853379,
		0.649309, -0.756193, -0.081056,
		-0.676868, -0.525999, -0.514951,
		7.115224, 14.585997, 14.326182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.942432, 14.696321, 14.062861>,  <7.589031, 14.954196, 14.686648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.942432, 14.696321, 14.062861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.549727, 14.684301, 13.987771>,  <7.314105, 14.677090, 13.942717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.549727, 14.684301, 13.987771>,  <7.942432, 14.696321, 14.062861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.549727, 14.684301, 13.987771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154726, 0.447476, -0.880809,
		0.110470, -0.893791, -0.434665,
		-0.981762, -0.030049, -0.187725,
		7.255199, 14.675286, 13.931454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.963463, 14.456532, 13.398158>,  <7.942432, 14.696321, 14.062861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.963463, 14.456532, 13.398158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.606715, 14.626876, 13.459100>,  <7.392667, 14.729083, 13.495665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.606715, 14.626876, 13.459100>,  <7.963463, 14.456532, 13.398158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.606715, 14.626876, 13.459100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193339, 0.663483, -0.722780,
		-0.408889, -0.615168, -0.674075,
		-0.891869, 0.425862, 0.152355,
		7.339155, 14.754634, 13.504807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.642728, 14.512190, 12.771304>,  <7.963463, 14.456532, 13.398158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.642728, 14.512190, 12.771304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.454086, 14.793498, 12.984095>,  <7.340900, 14.962283, 13.111769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.454086, 14.793498, 12.984095>,  <7.642728, 14.512190, 12.771304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.454086, 14.793498, 12.984095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128932, 0.541800, -0.830560,
		-0.872333, -0.460285, -0.164841,
		-0.471605, 0.703272, 0.531975,
		7.312604, 15.004479, 13.143687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.279715, 14.836246, 12.266946>,  <7.642728, 14.512190, 12.771304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.279715, 14.836246, 12.266946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.242239, 15.077723, 12.583623>,  <7.219754, 15.222609, 12.773629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.242239, 15.077723, 12.583623>,  <7.279715, 14.836246, 12.266946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.242239, 15.077723, 12.583623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288441, 0.744629, -0.601938,
		-0.952903, -0.284752, 0.104366,
		-0.093689, 0.603692, 0.791693,
		7.214132, 15.258830, 12.821131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.705129, 15.214063, 12.201913>,  <7.279715, 14.836246, 12.266946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.705129, 15.214063, 12.201913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.941014, 15.430161, 12.442038>,  <7.082545, 15.559819, 12.586112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.941014, 15.430161, 12.442038>,  <6.705129, 15.214063, 12.201913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.941014, 15.430161, 12.442038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097260, 0.785414, -0.611282,
		-0.801735, 0.302095, 0.515713,
		0.589713, 0.540244, 0.600312,
		7.117929, 15.592234, 12.622131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.481151, 15.815605, 12.019059>,  <6.705129, 15.214063, 12.201913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.481151, 15.815605, 12.019059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.809205, 15.916528, 12.224474>,  <7.006037, 15.977081, 12.347723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.809205, 15.916528, 12.224474>,  <6.481151, 15.815605, 12.019059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.809205, 15.916528, 12.224474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102390, 0.818321, -0.565567,
		-0.562935, 0.516423, 0.645300,
		0.820135, 0.252305, 0.513538,
		7.055245, 15.992219, 12.378535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.367910, 16.477621, 12.461609>,  <6.481151, 15.815605, 12.019059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.367910, 16.477621, 12.461609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.765118, 16.437168, 12.437330>,  <7.003443, 16.412897, 12.422763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.765118, 16.437168, 12.437330>,  <6.367910, 16.477621, 12.461609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.765118, 16.437168, 12.437330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081486, 0.960285, -0.266855,
		0.085273, 0.260047, 0.961823,
		0.993020, -0.101131, -0.060696,
		7.063024, 16.406828, 12.419122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.571003, 17.160536, 12.636897>,  <6.367910, 16.477621, 12.461609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.571003, 17.160536, 12.636897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.870409, 16.972744, 12.449573>,  <7.050052, 16.860069, 12.337178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.870409, 16.972744, 12.449573>,  <6.571003, 17.160536, 12.636897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.870409, 16.972744, 12.449573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174929, 0.821005, -0.543462,
		0.639631, 0.324868, 0.696659,
		0.748514, -0.469481, -0.468311,
		7.094963, 16.831900, 12.309079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.125254, 17.729160, 12.583816>,  <6.571003, 17.160536, 12.636897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.125254, 17.729160, 12.583816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.240055, 17.447582, 12.323942>,  <7.308936, 17.278635, 12.168018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.240055, 17.447582, 12.323942>,  <7.125254, 17.729160, 12.583816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.240055, 17.447582, 12.323942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084660, 0.694201, -0.714785,
		0.954181, 0.150143, 0.258834,
		0.287003, -0.703947, -0.649683,
		7.326156, 17.236399, 12.129038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.698035, 18.002790, 12.237971>,  <7.125254, 17.729160, 12.583816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.698035, 18.002790, 12.237971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.591303, 17.712151, 11.984720>,  <7.527264, 17.537766, 11.832769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.591303, 17.712151, 11.984720>,  <7.698035, 18.002790, 12.237971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.591303, 17.712151, 11.984720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209681, 0.597440, -0.774015,
		0.940657, -0.339285, -0.007061,
		-0.266830, -0.726602, -0.633128,
		7.511254, 17.494169, 11.794782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.146451, 17.894928, 11.638764>,  <7.698035, 18.002790, 12.237971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.146451, 17.894928, 11.638764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.824055, 17.714857, 11.485026>,  <7.630618, 17.606813, 11.392784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.824055, 17.714857, 11.485026>,  <8.146451, 17.894928, 11.638764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.824055, 17.714857, 11.485026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135630, 0.491579, -0.860206,
		0.576183, -0.745445, -0.335150,
		-0.805989, -0.450179, -0.384344,
		7.582258, 17.579803, 11.369723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.313552, 17.737160, 10.986378>,  <8.146451, 17.894928, 11.638764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.313552, 17.737160, 10.986378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.913728, 17.739294, 10.974680>,  <7.673834, 17.740574, 10.967661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.913728, 17.739294, 10.974680>,  <8.313552, 17.737160, 10.986378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.913728, 17.739294, 10.974680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029340, 0.335266, -0.941667,
		0.004779, -0.942109, -0.335274,
		-0.999558, 0.005337, -0.029244,
		7.613861, 17.740894, 10.965907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.119260, 17.452126, 10.305413>,  <8.313552, 17.737160, 10.986378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.119260, 17.452126, 10.305413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.785953, 17.633224, 10.432337>,  <7.585968, 17.741884, 10.508491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.785953, 17.633224, 10.432337>,  <8.119260, 17.452126, 10.305413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.785953, 17.633224, 10.432337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202214, 0.284585, -0.937081,
		-0.514562, -0.845004, -0.145583,
		-0.833268, 0.452747, 0.317308,
		7.535973, 17.769049, 10.527530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.530341, 17.299404, 9.855293>,  <8.119260, 17.452126, 10.305413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.530341, 17.299404, 9.855293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.448786, 17.650290, 10.029155>,  <7.399853, 17.860821, 10.133471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.448786, 17.650290, 10.029155>,  <7.530341, 17.299404, 9.855293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.448786, 17.650290, 10.029155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135257, 0.414483, -0.899950,
		-0.969606, -0.242278, 0.034142,
		-0.203887, 0.877215, 0.434655,
		7.387620, 17.913454, 10.159552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.837293, 17.512678, 9.599294>,  <7.530341, 17.299404, 9.855293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.837293, 17.512678, 9.599294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.013077, 17.841436, 9.744270>,  <7.118547, 18.038691, 9.831256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.013077, 17.841436, 9.744270>,  <6.837293, 17.512678, 9.599294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.013077, 17.841436, 9.744270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185667, 0.477891, -0.858573,
		-0.878865, 0.310015, 0.362612,
		0.439460, 0.821895, 0.362442,
		7.144915, 18.088005, 9.853003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.416455, 17.910885, 9.195209>,  <6.837293, 17.512678, 9.599294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.416455, 17.910885, 9.195209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.731151, 18.130587, 9.307895>,  <6.919968, 18.262407, 9.375506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.731151, 18.130587, 9.307895>,  <6.416455, 17.910885, 9.195209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.731151, 18.130587, 9.307895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109174, 0.572992, -0.812257,
		-0.607555, 0.608278, 0.510759,
		0.786739, 0.549252, 0.281716,
		6.967172, 18.295362, 9.392409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.179690, 18.541199, 9.006248>,  <6.416455, 17.910885, 9.195209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.179690, 18.541199, 9.006248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.568766, 18.581751, 9.089769>,  <6.802211, 18.606083, 9.139882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.568766, 18.581751, 9.089769>,  <6.179690, 18.541199, 9.006248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.568766, 18.581751, 9.089769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127495, 0.518361, -0.845604,
		-0.193964, 0.849131, 0.491278,
		0.972689, 0.101381, 0.208804,
		6.860572, 18.612165, 9.152411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.483020, 19.258289, 8.951304>,  <6.179690, 18.541199, 9.006248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.483020, 19.258289, 8.951304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.758687, 18.984287, 8.856805>,  <6.924088, 18.819885, 8.800105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.758687, 18.984287, 8.856805>,  <6.483020, 19.258289, 8.951304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.758687, 18.984287, 8.856805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147701, 0.451996, -0.879707,
		0.709387, 0.571373, 0.412678,
		0.689169, -0.685006, -0.236248,
		6.965438, 18.778786, 8.785931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.973385, 19.660006, 8.609554>,  <6.483020, 19.258289, 8.951304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.973385, 19.660006, 8.609554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.018079, 19.280748, 8.490533>,  <7.044895, 19.053194, 8.419120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.018079, 19.280748, 8.490533>,  <6.973385, 19.660006, 8.609554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.018079, 19.280748, 8.490533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080596, 0.307088, -0.948262,
		0.990464, 0.081972, 0.110729,
		0.111735, -0.948144, -0.297553,
		7.051599, 18.996305, 8.401267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.721158, 19.492882, 8.210135>,  <6.973385, 19.660006, 8.609554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.721158, 19.492882, 8.210135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.371486, 19.326073, 8.110613>,  <7.161683, 19.225988, 8.050900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.371486, 19.326073, 8.110613>,  <7.721158, 19.492882, 8.210135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.371486, 19.326073, 8.110613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100910, 0.345181, -0.933096,
		0.475005, -0.840799, -0.259668,
		-0.874179, -0.417022, -0.248807,
		7.109232, 19.200966, 8.035971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.822018, 19.169840, 7.537387>,  <7.721158, 19.492882, 8.210135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.822018, 19.169840, 7.537387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.437476, 19.257940, 7.603464>,  <7.206751, 19.310801, 7.643110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.437476, 19.257940, 7.603464>,  <7.822018, 19.169840, 7.537387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.437476, 19.257940, 7.603464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098643, 0.284623, -0.953551,
		-0.257038, -0.932995, -0.251897,
		-0.961354, 0.220251, 0.165193,
		7.149070, 19.324015, 7.653022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.350907, 18.804087, 6.991592>,  <7.822018, 19.169840, 7.537387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.350907, 18.804087, 6.991592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.211865, 19.160336, 7.108870>,  <7.128440, 19.374084, 7.179236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.211865, 19.160336, 7.108870>,  <7.350907, 18.804087, 6.991592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.211865, 19.160336, 7.108870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058868, 0.332804, -0.941157,
		-0.935792, -0.309891, -0.168113,
		-0.347605, 0.890623, 0.293193,
		7.107584, 19.427523, 7.196827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.040621, 18.441511, 6.959737>,  <7.350907, 18.804087, 6.991592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.040621, 18.441511, 6.959737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.211400, 18.771584, 7.107677>,  <8.313868, 18.969627, 7.196441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.211400, 18.771584, 7.107677>,  <8.040621, 18.441511, 6.959737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.211400, 18.771584, 7.107677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330840, -0.523186, 0.785379,
		0.841582, -0.212956, -0.496377,
		0.426949, 0.825182, 0.369850,
		8.339484, 19.019138, 7.218632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.739461, 18.329666, 7.228976>,  <8.040621, 18.441511, 6.959737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.739461, 18.329666, 7.228976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.569155, 18.623104, 7.440849>,  <8.466971, 18.799168, 7.567973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.569155, 18.623104, 7.440849>,  <8.739461, 18.329666, 7.228976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.569155, 18.623104, 7.440849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168464, -0.510889, 0.842978,
		0.889013, 0.448143, 0.093935,
		-0.425765, 0.733594, 0.529683,
		8.441425, 18.843182, 7.599754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.460242, 17.681643, 6.968553>,  <8.739461, 18.329666, 7.228976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.460242, 17.681643, 6.968553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.835308, 17.542631, 6.969769>,  <9.060348, 17.459225, 6.970498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.835308, 17.542631, 6.969769>,  <8.460242, 17.681643, 6.968553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.835308, 17.542631, 6.969769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298317, -0.800340, 0.520061,
		-0.178304, -0.488549, -0.854124,
		0.937664, -0.347529, 0.003038,
		9.116608, 17.438372, 6.970680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.470570, 17.009951, 6.559669>,  <8.460242, 17.681643, 6.968553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.470570, 17.009951, 6.559669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.734206, 17.065247, 6.855369>,  <8.892388, 17.098423, 7.032788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.734206, 17.065247, 6.855369>,  <8.470570, 17.009951, 6.559669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.734206, 17.065247, 6.855369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179320, -0.925724, 0.332985,
		0.730372, -0.352029, -0.585349,
		0.659092, 0.138238, 0.739248,
		8.931933, 17.106718, 7.077143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.911113, 16.370861, 6.647182>,  <8.470570, 17.009951, 6.559669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.911113, 16.370861, 6.647182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.886327, 16.567577, 6.994584>,  <8.871455, 16.685608, 7.203025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.886327, 16.567577, 6.994584>,  <8.911113, 16.370861, 6.647182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.886327, 16.567577, 6.994584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033977, -0.870712, 0.490619,
		0.997500, 0.000892, 0.070663,
		-0.061965, 0.491793, 0.868504,
		8.867737, 16.715115, 7.255136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.404099, 16.074837, 7.149511>,  <8.911113, 16.370861, 6.647182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.404099, 16.074837, 7.149511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.125905, 16.259668, 7.369615>,  <8.958989, 16.370567, 7.501677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.125905, 16.259668, 7.369615>,  <9.404099, 16.074837, 7.149511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.125905, 16.259668, 7.369615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055066, -0.729274, 0.682002,
		0.716428, 0.504623, 0.481754,
		-0.695485, 0.462077, 0.550260,
		8.917259, 16.398291, 7.534693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.653076, 16.456839, 7.874326>,  <9.404099, 16.074837, 7.149511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.653076, 16.456839, 7.874326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.292521, 16.286175, 7.844754>,  <9.076189, 16.183777, 7.827011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.292521, 16.286175, 7.844754>,  <9.653076, 16.456839, 7.874326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.292521, 16.286175, 7.844754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152574, -0.472723, 0.867902,
		-0.405246, 0.771035, 0.491203,
		-0.901386, -0.426659, -0.073929,
		9.022105, 16.158176, 7.822576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.163417, 16.540432, 8.452893>,  <9.653076, 16.456839, 7.874326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.163417, 16.540432, 8.452893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.072297, 16.190578, 8.281720>,  <9.017626, 15.980667, 8.179016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.072297, 16.190578, 8.281720>,  <9.163417, 16.540432, 8.452893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.072297, 16.190578, 8.281720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073827, -0.453736, 0.888072,
		-0.970905, 0.170709, 0.167932,
		-0.227799, -0.874632, -0.427932,
		9.003958, 15.928188, 8.153340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.519662, 16.202755, 8.792768>,  <9.163417, 16.540432, 8.452893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.519662, 16.202755, 8.792768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.747230, 15.916063, 8.631458>,  <8.883770, 15.744048, 8.534672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.747230, 15.916063, 8.631458>,  <8.519662, 16.202755, 8.792768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.747230, 15.916063, 8.631458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100521, -0.547295, 0.830881,
		-0.816227, -0.432167, -0.383412,
		0.568919, -0.716729, -0.403276,
		8.917905, 15.701045, 8.510475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.224593, 15.492052, 9.066148>,  <8.519662, 16.202755, 8.792768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.224593, 15.492052, 9.066148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.597568, 15.381651, 8.972866>,  <8.821352, 15.315410, 8.916897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.597568, 15.381651, 8.972866>,  <8.224593, 15.492052, 9.066148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.597568, 15.381651, 8.972866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001735, -0.648812, 0.760947,
		-0.361330, -0.709130, -0.605454,
		0.932437, -0.276003, -0.233205,
		8.877298, 15.298850, 8.902905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.280331, 14.833747, 9.212530>,  <8.224593, 15.492052, 9.066148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.280331, 14.833747, 9.212530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.669724, 14.919996, 9.181966>,  <8.903359, 14.971746, 9.163627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.669724, 14.919996, 9.181966>,  <8.280331, 14.833747, 9.212530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.669724, 14.919996, 9.181966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203089, -0.660846, 0.722521,
		0.105296, -0.718880, -0.687113,
		0.973482, 0.215624, -0.076412,
		8.961768, 14.984683, 9.159042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.629873, 14.215815, 8.986037>,  <8.280331, 14.833747, 9.212530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.629873, 14.215815, 8.986037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.891430, 14.454882, 9.171604>,  <9.048364, 14.598322, 9.282944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.891430, 14.454882, 9.171604>,  <8.629873, 14.215815, 8.986037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.891430, 14.454882, 9.171604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214816, -0.734596, 0.643601,
		0.725451, -0.321189, -0.608736,
		0.653893, 0.597667, 0.463917,
		9.087598, 14.634182, 9.310779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.167104, 13.740389, 9.214907>,  <8.629873, 14.215815, 8.986037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.167104, 13.740389, 9.214907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.224687, 14.092052, 9.396612>,  <9.259236, 14.303051, 9.505635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.224687, 14.092052, 9.396612>,  <9.167104, 13.740389, 9.214907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.224687, 14.092052, 9.396612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253907, -0.476492, 0.841717,
		0.956456, -0.005830, -0.291819,
		0.143956, 0.879160, 0.454263,
		9.267874, 14.355801, 9.532891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.803194, 13.700528, 9.520167>,  <9.167104, 13.740389, 9.214907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.803194, 13.700528, 9.520167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.592520, 13.967731, 9.730452>,  <9.466115, 14.128052, 9.856622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.592520, 13.967731, 9.730452>,  <9.803194, 13.700528, 9.520167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.592520, 13.967731, 9.730452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396357, -0.354115, 0.847056,
		0.752000, 0.654501, -0.078262,
		-0.526685, 0.668006, 0.525710,
		9.434514, 14.168132, 9.888165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.260557, 13.793178, 10.046599>,  <9.803194, 13.700528, 9.520167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.260557, 13.793178, 10.046599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.914685, 13.932129, 10.191736>,  <9.707162, 14.015500, 10.278818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.914685, 13.932129, 10.191736>,  <10.260557, 13.793178, 10.046599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.914685, 13.932129, 10.191736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307841, -0.204338, 0.929236,
		0.396940, 0.915191, 0.069750,
		-0.864681, 0.347379, 0.362843,
		9.655281, 14.036343, 10.300590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.484921, 14.121268, 10.553939>,  <10.260557, 13.793178, 10.046599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.484921, 14.121268, 10.553939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.100875, 14.052472, 10.642123>,  <9.870448, 14.011194, 10.695034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.100875, 14.052472, 10.642123>,  <10.484921, 14.121268, 10.553939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.100875, 14.052472, 10.642123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251001, -0.182697, 0.950590,
		-0.123214, 0.968009, 0.218579,
		-0.960113, -0.171989, 0.220461,
		9.812841, 14.000875, 10.708261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.537671, 14.384189, 11.157866>,  <10.484921, 14.121268, 10.553939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.537671, 14.384189, 11.157866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.165192, 14.238704, 11.148211>,  <9.941704, 14.151413, 11.142417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.165192, 14.238704, 11.148211>,  <10.537671, 14.384189, 11.157866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.165192, 14.238704, 11.148211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114395, -0.354473, 0.928043,
		-0.346097, 0.861431, 0.371691,
		-0.931199, -0.363712, -0.024138,
		9.885832, 14.129590, 11.140969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.118714, 14.577679, 11.805813>,  <10.537671, 14.384189, 11.157866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.118714, 14.577679, 11.805813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.952913, 14.246330, 11.655087>,  <9.853433, 14.047522, 11.564652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.952913, 14.246330, 11.655087>,  <10.118714, 14.577679, 11.805813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.952913, 14.246330, 11.655087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197323, -0.322398, 0.925810,
		-0.888398, 0.458105, -0.029822,
		-0.414504, -0.828371, -0.376812,
		9.828562, 13.997819, 11.542044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.440585, 14.557572, 12.078633>,  <10.118714, 14.577679, 11.805813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.440585, 14.557572, 12.078633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.556734, 14.186230, 11.985822>,  <9.626424, 13.963424, 11.930135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.556734, 14.186230, 11.985822>,  <9.440585, 14.557572, 12.078633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.556734, 14.186230, 11.985822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116816, -0.275053, 0.954306,
		-0.949757, -0.249999, -0.188314,
		0.290372, -0.928357, -0.232030,
		9.643846, 13.907722, 11.916213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.076162, 14.134615, 12.541821>,  <9.440585, 14.557572, 12.078633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.076162, 14.134615, 12.541821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.312012, 13.843948, 12.400795>,  <9.453522, 13.669549, 12.316180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.312012, 13.843948, 12.400795>,  <9.076162, 14.134615, 12.541821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.312012, 13.843948, 12.400795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071646, -0.481850, 0.873320,
		-0.804494, -0.489671, -0.336173,
		0.589624, -0.726666, -0.352563,
		9.488899, 13.625949, 12.295026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.744442, 13.457682, 12.511480>,  <9.076162, 14.134615, 12.541821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.744442, 13.457682, 12.511480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.135113, 13.373816, 12.530002>,  <9.369515, 13.323497, 12.541115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.135113, 13.373816, 12.530002>,  <8.744442, 13.457682, 12.511480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.135113, 13.373816, 12.530002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165833, -0.599588, 0.782939,
		-0.136390, -0.772357, -0.620372,
		0.976677, -0.209664, 0.046304,
		9.428116, 13.310917, 12.543893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.777817, 12.759306, 12.548114>,  <8.744442, 13.457682, 12.511480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.777817, 12.759306, 12.548114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.126965, 12.900561, 12.682809>,  <9.336453, 12.985314, 12.763626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.126965, 12.900561, 12.682809>,  <8.777817, 12.759306, 12.548114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.126965, 12.900561, 12.682809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082336, -0.573616, 0.814976,
		0.480957, -0.739093, -0.471616,
		0.872869, 0.353138, 0.336739,
		9.388825, 13.006503, 12.783831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.907350, 12.230628, 12.962290>,  <8.777817, 12.759306, 12.548114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.907350, 12.230628, 12.962290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.130479, 12.536509, 13.091328>,  <9.264357, 12.720037, 13.168751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.130479, 12.536509, 13.091328>,  <8.907350, 12.230628, 12.962290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.130479, 12.536509, 13.091328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143924, -0.293672, 0.945009,
		0.817386, -0.573576, -0.053758,
		0.557822, 0.764700, 0.322594,
		9.297826, 12.765919, 13.188106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.115469, 11.959651, 13.615152>,  <8.907350, 12.230628, 12.962290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.115469, 11.959651, 13.615152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.214952, 12.345177, 13.653535>,  <9.274642, 12.576492, 13.676564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.214952, 12.345177, 13.653535>,  <9.115469, 11.959651, 13.615152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.214952, 12.345177, 13.653535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191049, -0.048307, 0.980391,
		0.949550, -0.262163, 0.172122,
		0.248707, 0.963814, 0.095955,
		9.289565, 12.634321, 13.682322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.537680, 12.039000, 14.235592>,  <9.115469, 11.959651, 13.615152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.537680, 12.039000, 14.235592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.362903, 12.390856, 14.160424>,  <9.258037, 12.601970, 14.115323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.362903, 12.390856, 14.160424>,  <9.537680, 12.039000, 14.235592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.362903, 12.390856, 14.160424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317316, 0.044746, 0.947263,
		0.841660, 0.473531, 0.259573,
		-0.436943, 0.879640, -0.187920,
		9.231820, 12.654748, 14.104048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.648350, 12.390338, 14.852350>,  <9.537680, 12.039000, 14.235592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.648350, 12.390338, 14.852350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.351979, 12.592916, 14.675921>,  <9.174157, 12.714462, 14.570065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.351979, 12.592916, 14.675921>,  <9.648350, 12.390338, 14.852350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.351979, 12.592916, 14.675921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313000, 0.320666, 0.893982,
		0.594189, 0.800429, -0.079072,
		-0.740925, 0.506445, -0.441071,
		9.129702, 12.744849, 14.543600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.540181, 13.064947, 15.108536>,  <9.648350, 12.390338, 14.852350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.540181, 13.064947, 15.108536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.189129, 12.963345, 14.945934>,  <8.978498, 12.902383, 14.848373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.189129, 12.963345, 14.945934>,  <9.540181, 13.064947, 15.108536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.189129, 12.963345, 14.945934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464835, 0.243971, 0.851121,
		-0.117016, 0.935926, -0.332188,
		-0.877631, -0.254007, -0.406503,
		8.925839, 12.887142, 14.823983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.063309, 13.604656, 15.279013>,  <9.540181, 13.064947, 15.108536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.063309, 13.604656, 15.279013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.833153, 13.287947, 15.197018>,  <8.695059, 13.097921, 15.147820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.833153, 13.287947, 15.197018>,  <9.063309, 13.604656, 15.279013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.833153, 13.287947, 15.197018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511573, 0.152860, 0.845533,
		-0.638137, 0.591378, -0.493005,
		-0.575391, -0.791774, -0.204988,
		8.660536, 13.050415, 15.135521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.467442, 14.018847, 14.904748>,  <9.063309, 13.604656, 15.279013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.467442, 14.018847, 14.904748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.662288, 13.876423, 14.585765>,  <9.779196, 13.790968, 14.394375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.662288, 13.876423, 14.585765>,  <9.467442, 14.018847, 14.904748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.662288, 13.876423, 14.585765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792987, 0.562903, 0.233049,
		0.365911, -0.745895, 0.556552,
		0.487115, -0.356063, -0.797458,
		9.808422, 13.769604, 14.346528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.159740, 13.814856, 15.127209>,  <9.467442, 14.018847, 14.904748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.159740, 13.814856, 15.127209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.162907, 13.915476, 14.740084>,  <10.164806, 13.975848, 14.507809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.162907, 13.915476, 14.740084>,  <10.159740, 13.814856, 15.127209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.162907, 13.915476, 14.740084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795969, 0.584254, 0.158368,
		0.605285, -0.771601, -0.195604,
		0.007914, 0.251552, -0.967811,
		10.165281, 13.990941, 14.449740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.792877, 13.648843, 14.755371>,  <10.159740, 13.814856, 15.127209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.792877, 13.648843, 14.755371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.650371, 13.967410, 14.559905>,  <10.564867, 14.158550, 14.442625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.650371, 13.967410, 14.559905>,  <10.792877, 13.648843, 14.755371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.650371, 13.967410, 14.559905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784945, 0.538805, 0.305861,
		0.506888, -0.274607, -0.817102,
		-0.356267, 0.796417, -0.488665,
		10.543490, 14.206335, 14.413305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.446720, 13.720792, 14.498968>,  <10.792877, 13.648843, 14.755371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.446720, 13.720792, 14.498968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.238744, 14.061964, 14.517619>,  <11.113958, 14.266667, 14.528810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.238744, 14.061964, 14.517619>,  <11.446720, 13.720792, 14.498968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.238744, 14.061964, 14.517619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833247, 0.494411, 0.247502,
		0.188048, 0.167538, -0.967765,
		-0.519940, 0.852929, 0.046628,
		11.082762, 14.317842, 14.531608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.781888, 14.312442, 14.236109>,  <11.446720, 13.720792, 14.498968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.781888, 14.312442, 14.236109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.538241, 14.448632, 14.522619>,  <11.392054, 14.530347, 14.694526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.538241, 14.448632, 14.522619>,  <11.781888, 14.312442, 14.236109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.538241, 14.448632, 14.522619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770406, 0.468439, 0.432481,
		-0.188282, 0.815255, -0.547640,
		-0.609118, 0.340477, 0.716276,
		11.355506, 14.550776, 14.737502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.001568, 14.969334, 14.472208>,  <11.781888, 14.312442, 14.236109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.001568, 14.969334, 14.472208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.742013, 14.904366, 14.769547>,  <11.586280, 14.865386, 14.947951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.742013, 14.904366, 14.769547>,  <12.001568, 14.969334, 14.472208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.742013, 14.904366, 14.769547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595809, 0.499167, 0.629162,
		-0.473242, 0.851148, -0.227132,
		-0.648887, -0.162418, 0.743348,
		11.547347, 14.855641, 14.992552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.869798, 15.557214, 14.777617>,  <12.001568, 14.969334, 14.472208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.869798, 15.557214, 14.777617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.776355, 15.304060, 15.072883>,  <11.720289, 15.152168, 15.250042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.776355, 15.304060, 15.072883>,  <11.869798, 15.557214, 14.777617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.776355, 15.304060, 15.072883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398716, 0.630055, 0.666376,
		-0.886822, 0.449988, 0.105155,
		-0.233607, -0.632883, 0.738164,
		11.706272, 15.114195, 15.294332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.311594, 15.853115, 15.321383>,  <11.869798, 15.557214, 14.777617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.311594, 15.853115, 15.321383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.552172, 15.579714, 15.486835>,  <11.696518, 15.415673, 15.586106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.552172, 15.579714, 15.486835>,  <11.311594, 15.853115, 15.321383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.552172, 15.579714, 15.486835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286960, 0.668011, 0.686597,
		-0.745600, -0.294255, 0.597909,
		0.601444, -0.683503, 0.413630,
		11.732605, 15.374663, 15.610925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.206287, 16.015638, 15.970472>,  <11.311594, 15.853115, 15.321383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.206287, 16.015638, 15.970472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.546499, 15.805948, 15.987379>,  <11.750627, 15.680134, 15.997523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.546499, 15.805948, 15.987379>,  <11.206287, 16.015638, 15.970472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.546499, 15.805948, 15.987379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404427, 0.703298, 0.584646,
		-0.336212, -0.480165, 0.810187,
		0.850529, -0.524227, 0.042266,
		11.801658, 15.648681, 16.000059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.388049, 16.132093, 16.615818>,  <11.206287, 16.015638, 15.970472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.388049, 16.132093, 16.615818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.723539, 16.008966, 16.436134>,  <11.924833, 15.935090, 16.328325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.723539, 16.008966, 16.436134>,  <11.388049, 16.132093, 16.615818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.723539, 16.008966, 16.436134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522630, 0.686728, 0.505236,
		0.152963, -0.658523, 0.736851,
		0.838726, -0.307818, -0.449208,
		11.975157, 15.916621, 16.301373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.891161, 15.830255, 17.123911>,  <11.388049, 16.132093, 16.615818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.891161, 15.830255, 17.123911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.129245, 15.928455, 16.817852>,  <12.272096, 15.987376, 16.634216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.129245, 15.928455, 16.817852>,  <11.891161, 15.830255, 17.123911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.129245, 15.928455, 16.817852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547920, 0.572519, 0.609923,
		0.587804, -0.782271, 0.206249,
		0.595206, 0.245507, -0.765151,
		12.307808, 16.002106, 16.588306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.598646, 15.878272, 17.415436>,  <11.891161, 15.830255, 17.123911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.598646, 15.878272, 17.415436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.606617, 16.107065, 17.087427>,  <12.611400, 16.244341, 16.890621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.606617, 16.107065, 17.087427>,  <12.598646, 15.878272, 17.415436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.606617, 16.107065, 17.087427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737763, 0.545132, 0.398168,
		0.674766, -0.612916, -0.411125,
		0.019926, 0.571983, -0.820023,
		12.612595, 16.278660, 16.841419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.329601, 15.997881, 17.446726>,  <12.598646, 15.878272, 17.415436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.329601, 15.997881, 17.446726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.159824, 16.254236, 17.190878>,  <13.057959, 16.408051, 17.037369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.159824, 16.254236, 17.190878>,  <13.329601, 15.997881, 17.446726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.159824, 16.254236, 17.190878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660734, 0.702224, 0.265165,
		0.619096, -0.310070, -0.721510,
		-0.424441, 0.640889, -0.639618,
		13.032492, 16.446503, 16.998993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.874996, 16.411261, 17.079823>,  <13.329601, 15.997881, 17.446726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.874996, 16.411261, 17.079823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.548284, 16.634605, 17.021721>,  <13.352256, 16.768612, 16.986860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.548284, 16.634605, 17.021721>,  <13.874996, 16.411261, 17.079823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.548284, 16.634605, 17.021721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499717, 0.810489, 0.305598,
		0.288361, 0.177021, -0.941016,
		-0.816781, 0.558364, -0.145253,
		13.303249, 16.802114, 16.978146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.255040, 17.050362, 16.853401>,  <13.874996, 16.411261, 17.079823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.255040, 17.050362, 16.853401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.877326, 17.126139, 16.961056>,  <13.650698, 17.171606, 17.025648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.877326, 17.126139, 16.961056>,  <14.255040, 17.050362, 16.853401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.877326, 17.126139, 16.961056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293483, 0.854789, 0.428024,
		-0.148969, 0.483164, -0.862763,
		-0.944286, 0.189444, 0.269137,
		13.594040, 17.182972, 17.041798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.134381, 17.775583, 16.587635>,  <14.255040, 17.050362, 16.853401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.134381, 17.775583, 16.587635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.845748, 17.695536, 16.852745>,  <13.672568, 17.647507, 17.011810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.845748, 17.695536, 16.852745>,  <14.134381, 17.775583, 16.587635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.845748, 17.695536, 16.852745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265952, 0.803741, 0.532232,
		-0.639210, 0.560315, -0.526743,
		-0.721582, -0.200119, 0.662775,
		13.629273, 17.635500, 17.051579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.785968, 18.417999, 16.709429>,  <14.134381, 17.775583, 16.587635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.785968, 18.417999, 16.709429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.718823, 18.215834, 17.047985>,  <13.678536, 18.094534, 17.251120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.718823, 18.215834, 17.047985>,  <13.785968, 18.417999, 16.709429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.718823, 18.215834, 17.047985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139882, 0.837676, 0.527951,
		-0.975836, 0.207017, -0.069915,
		-0.167861, -0.505414, 0.846392,
		13.668466, 18.064209, 17.301903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.481386, 18.948149, 17.121399>,  <13.785968, 18.417999, 16.709429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.481386, 18.948149, 17.121399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.602241, 18.662708, 17.374218>,  <13.674753, 18.491444, 17.525909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.602241, 18.662708, 17.374218>,  <13.481386, 18.948149, 17.121399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.602241, 18.662708, 17.374218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079886, 0.641750, 0.762742,
		-0.949911, -0.280944, 0.136890,
		0.302137, -0.713601, 0.632049,
		13.692882, 18.448627, 17.563833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.197583, 19.239471, 17.771143>,  <13.481386, 18.948149, 17.121399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.197583, 19.239471, 17.771143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.447719, 18.944794, 17.874088>,  <13.597800, 18.767988, 17.935856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.447719, 18.944794, 17.874088>,  <13.197583, 19.239471, 17.771143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.447719, 18.944794, 17.874088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120912, 0.417292, 0.900693,
		-0.770930, -0.532119, 0.350024,
		0.625338, -0.736693, 0.257363,
		13.635320, 18.723785, 17.951298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.092330, 19.022911, 18.450912>,  <13.197583, 19.239471, 17.771143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.092330, 19.022911, 18.450912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.471882, 18.906584, 18.401838>,  <13.699613, 18.836788, 18.372393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.471882, 18.906584, 18.401838>,  <13.092330, 19.022911, 18.450912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.471882, 18.906584, 18.401838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271815, 0.555301, 0.785975,
		-0.160448, -0.779144, 0.605963,
		0.948880, -0.290818, -0.122686,
		13.756546, 18.819338, 18.365032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.292838, 18.768618, 19.067734>,  <13.092330, 19.022911, 18.450912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.292838, 18.768618, 19.067734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.618886, 18.901817, 18.878126>,  <13.814514, 18.981737, 18.764362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.618886, 18.901817, 18.878126>,  <13.292838, 18.768618, 19.067734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.618886, 18.901817, 18.878126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311703, 0.437599, 0.843415,
		0.488284, -0.835237, 0.252899,
		0.815120, 0.332997, -0.474018,
		13.863421, 19.001717, 18.735920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.699152, 18.584553, 19.561506>,  <13.292838, 18.768618, 19.067734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.699152, 18.584553, 19.561506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.907242, 18.845942, 19.341564>,  <14.032096, 19.002775, 19.209599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.907242, 18.845942, 19.341564>,  <13.699152, 18.584553, 19.561506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.907242, 18.845942, 19.341564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272656, 0.483062, 0.832051,
		0.809336, -0.582776, 0.073128,
		0.520225, 0.653470, -0.549857,
		14.063310, 19.041983, 19.176607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.352756, 18.745377, 19.976273>,  <13.699152, 18.584553, 19.561506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.352756, 18.745377, 19.976273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.366942, 19.030682, 19.696272>,  <14.375455, 19.201864, 19.528271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.366942, 19.030682, 19.696272>,  <14.352756, 18.745377, 19.976273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.366942, 19.030682, 19.696272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159179, 0.687468, 0.708555,
		0.986612, -0.136556, -0.089153,
		0.035468, 0.713260, -0.700001,
		14.377583, 19.244659, 19.486271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.772592, 19.269518, 20.255365>,  <14.352756, 18.745377, 19.976273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.772592, 19.269518, 20.255365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.561816, 19.442705, 19.962826>,  <14.435350, 19.546618, 19.787302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.561816, 19.442705, 19.962826>,  <14.772592, 19.269518, 20.255365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.561816, 19.442705, 19.962826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011953, 0.864201, 0.503006,
		0.849819, 0.256311, -0.460556,
		-0.526939, 0.432969, -0.731350,
		14.403734, 19.572596, 19.743422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.195061, 19.783506, 19.993719>,  <14.772592, 19.269518, 20.255365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.195061, 19.783506, 19.993719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.808904, 19.875280, 19.944120>,  <14.577209, 19.930346, 19.914362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.808904, 19.875280, 19.944120>,  <15.195061, 19.783506, 19.993719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.808904, 19.875280, 19.944120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159863, 0.896253, 0.413732,
		0.206056, 0.379592, -0.901915,
		-0.965394, 0.229435, -0.123995,
		14.519285, 19.944111, 19.906921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.209199, 20.460722, 19.905842>,  <15.195061, 19.783506, 19.993719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.209199, 20.460722, 19.905842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.825496, 20.395760, 19.998320>,  <14.595274, 20.356783, 20.053806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.825496, 20.395760, 19.998320>,  <15.209199, 20.460722, 19.905842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.825496, 20.395760, 19.998320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023239, 0.770159, 0.637429,
		-0.281578, 0.616831, -0.735006,
		-0.959257, -0.162405, 0.231194,
		14.537719, 20.347038, 20.067678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.855949, 21.121012, 19.871605>,  <15.209199, 20.460722, 19.905842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.855949, 21.121012, 19.871605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.606563, 20.890560, 20.083025>,  <14.456930, 20.752289, 20.209877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.606563, 20.890560, 20.083025>,  <14.855949, 21.121012, 19.871605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.606563, 20.890560, 20.083025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094802, 0.726745, 0.680334,
		-0.776081, 0.374058, -0.507719,
		-0.623467, -0.576127, 0.528551,
		14.419522, 20.717722, 20.241590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.278599, 21.468845, 20.012754>,  <14.855949, 21.121012, 19.871605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.278599, 21.468845, 20.012754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.234406, 21.190784, 20.296883>,  <14.207891, 21.023947, 20.467360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.234406, 21.190784, 20.296883>,  <14.278599, 21.468845, 20.012754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.234406, 21.190784, 20.296883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140013, 0.718455, 0.681336,
		-0.983967, -0.024179, -0.176707,
		-0.110482, -0.695153, 0.710321,
		14.201262, 20.982239, 20.509979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.763952, 21.766111, 20.458780>,  <14.278599, 21.468845, 20.012754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.763952, 21.766111, 20.458780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.956637, 21.488100, 20.672281>,  <14.072248, 21.321293, 20.800381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.956637, 21.488100, 20.672281>,  <13.763952, 21.766111, 20.458780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.956637, 21.488100, 20.672281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067205, 0.636581, 0.768276,
		-0.873748, -0.334217, 0.353359,
		0.481713, -0.695027, 0.533751,
		14.101151, 21.279593, 20.832407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.458520, 21.883608, 21.072935>,  <13.763952, 21.766111, 20.458780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.458520, 21.883608, 21.072935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.780860, 21.666771, 21.168221>,  <13.974264, 21.536669, 21.225391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.780860, 21.666771, 21.168221>,  <13.458520, 21.883608, 21.072935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.780860, 21.666771, 21.168221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157774, 0.584340, 0.796024,
		-0.570714, -0.603891, 0.556418,
		0.805849, -0.542090, 0.238213,
		14.022614, 21.504145, 21.239685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.424068, 21.777021, 21.769575>,  <13.458520, 21.883608, 21.072935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.424068, 21.777021, 21.769575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.814939, 21.732500, 21.697201>,  <14.049462, 21.705788, 21.653776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.814939, 21.732500, 21.697201>,  <13.424068, 21.777021, 21.769575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.814939, 21.732500, 21.697201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212213, 0.549848, 0.807857,
		0.009569, -0.827815, 0.560918,
		0.977177, -0.111304, -0.180934,
		14.108092, 21.699108, 21.642920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.769751, 21.679249, 22.450329>,  <13.424068, 21.777021, 21.769575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.769751, 21.679249, 22.450329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.045966, 21.801462, 22.188091>,  <14.211696, 21.874790, 22.030748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.045966, 21.801462, 22.188091>,  <13.769751, 21.679249, 22.450329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.045966, 21.801462, 22.188091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384544, 0.612603, 0.690539,
		0.612603, -0.728949, 0.305535,
		-0.690539, -0.305535, 0.655595,
		14.253128, 21.893122, 21.991413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.345531, 21.548166, 22.724579>,  <13.769751, 21.679249, 22.450329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.345531, 21.548166, 22.724579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.436643, 21.836132, 22.462330>,  <14.491309, 22.008911, 22.304979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.436643, 21.836132, 22.462330>,  <14.345531, 21.548166, 22.724579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.436643, 21.836132, 22.462330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453028, 0.517657, 0.725808,
		0.861907, -0.462339, -0.208230,
		0.227777, 0.719912, -0.655625,
		14.504976, 22.052105, 22.265642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.878263, 21.719749, 22.974089>,  <14.345531, 21.548166, 22.724579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.878263, 21.719749, 22.974089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.813436, 22.024038, 22.722681>,  <14.774539, 22.206612, 22.571836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.813436, 22.024038, 22.722681>,  <14.878263, 21.719749, 22.974089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.813436, 22.024038, 22.722681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422625, 0.629074, 0.652421,
		0.891696, -0.159891, -0.423453,
		-0.162067, 0.760724, -0.628517,
		14.764815, 22.252254, 22.534126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549489, 22.138008, 22.728193>,  <14.878263, 21.719749, 22.974089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.549489, 22.138008, 22.728193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.243533, 22.392193, 22.685991>,  <15.059959, 22.544704, 22.660671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.243533, 22.392193, 22.685991>,  <15.549489, 22.138008, 22.728193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.243533, 22.392193, 22.685991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475999, 0.667931, 0.572096,
		0.434014, 0.387371, -0.813373,
		-0.764890, 0.635462, -0.105503,
		15.014066, 22.582832, 22.654341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.860694, 22.748232, 22.626156>,  <15.549489, 22.138008, 22.728193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.860694, 22.748232, 22.626156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.489638, 22.823774, 22.755039>,  <15.267005, 22.869101, 22.832369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.489638, 22.823774, 22.755039>,  <15.860694, 22.748232, 22.626156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.489638, 22.823774, 22.755039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367438, 0.616017, 0.696787,
		-0.066893, 0.764759, -0.640834,
		-0.927639, 0.188857, 0.322209,
		15.211347, 22.880432, 22.851702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.893837, 23.450802, 22.859394>,  <15.860694, 22.748232, 22.626156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.893837, 23.450802, 22.859394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.552430, 23.317465, 23.019590>,  <15.347586, 23.237463, 23.115707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.552430, 23.317465, 23.019590>,  <15.893837, 23.450802, 22.859394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.552430, 23.317465, 23.019590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240097, 0.430548, 0.870047,
		-0.462453, 0.838756, -0.287445,
		-0.853517, -0.333341, 0.400491,
		15.296375, 23.217463, 23.139738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.454192, 24.086077, 23.089621>,  <15.893837, 23.450802, 22.859394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.454192, 24.086077, 23.089621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.355433, 23.752712, 23.287395>,  <15.296179, 23.552694, 23.406059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.355433, 23.752712, 23.287395>,  <15.454192, 24.086077, 23.089621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.355433, 23.752712, 23.287395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228352, 0.445826, 0.865503,
		-0.941752, 0.326594, 0.080238,
		-0.246896, -0.833412, 0.494436,
		15.281364, 23.502689, 23.435726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.051811, 24.344910, 23.626619>,  <15.454192, 24.086077, 23.089621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.051811, 24.344910, 23.626619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.158920, 23.978617, 23.746443>,  <15.223186, 23.758841, 23.818336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.158920, 23.978617, 23.746443>,  <15.051811, 24.344910, 23.626619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.158920, 23.978617, 23.746443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203222, 0.357596, 0.911497,
		-0.941806, -0.183198, 0.281851,
		0.267773, -0.915731, 0.299556,
		15.239252, 23.703897, 23.836309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667604, 24.224937, 24.290770>,  <15.051811, 24.344910, 23.626619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.667604, 24.224937, 24.290770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.957829, 23.949707, 24.294899>,  <15.131965, 23.784569, 24.297377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.957829, 23.949707, 24.294899>,  <14.667604, 24.224937, 24.290770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.957829, 23.949707, 24.294899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334573, 0.365830, 0.868464,
		-0.601348, -0.626671, 0.495646,
		0.725563, -0.688078, 0.010324,
		15.175498, 23.743284, 24.297997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.688000, 23.977564, 24.989944>,  <14.667604, 24.224937, 24.290770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.688000, 23.977564, 24.989944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.040215, 23.875870, 24.829933>,  <15.251543, 23.814854, 24.733927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.040215, 23.875870, 24.829933>,  <14.688000, 23.977564, 24.989944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.040215, 23.875870, 24.829933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447041, 0.164993, 0.879165,
		-0.157512, -0.952965, 0.258935,
		0.880536, -0.254234, -0.400026,
		15.304376, 23.799601, 24.709925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.965128, 23.474716, 25.390509>,  <14.688000, 23.977564, 24.989944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.965128, 23.474716, 25.390509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.251723, 23.681377, 25.203014>,  <15.423680, 23.805374, 25.090519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.251723, 23.681377, 25.203014>,  <14.965128, 23.474716, 25.390509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.251723, 23.681377, 25.203014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383438, 0.269648, 0.883326,
		0.582768, -0.812624, -0.004905,
		0.716489, 0.516655, -0.468733,
		15.466670, 23.836374, 25.062395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.448420, 23.297142, 25.770906>,  <14.965128, 23.474716, 25.390509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.448420, 23.297142, 25.770906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.618792, 23.610565, 25.589968>,  <15.721015, 23.798620, 25.481405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.618792, 23.610565, 25.589968>,  <15.448420, 23.297142, 25.770906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.618792, 23.610565, 25.589968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421071, 0.270847, 0.865645,
		0.800801, -0.559175, -0.214572,
		0.425931, 0.783559, -0.452347,
		15.746571, 23.845633, 25.454264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.126867, 23.183468, 25.774391>,  <15.448420, 23.297142, 25.770906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.126867, 23.183468, 25.774391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.091866, 23.580938, 25.746258>,  <16.070866, 23.819422, 25.729378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.091866, 23.580938, 25.746258>,  <16.126867, 23.183468, 25.774391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.091866, 23.580938, 25.746258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593650, 0.108712, 0.797347,
		0.799952, 0.028017, -0.599409,
		-0.087502, 0.993678, -0.070332,
		16.065615, 23.879042, 25.725159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806973, 23.430872, 25.846979>,  <16.126867, 23.183468, 25.774391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.806973, 23.430872, 25.846979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.562418, 23.736267, 25.930212>,  <16.415686, 23.919504, 25.980152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.562418, 23.736267, 25.930212>,  <16.806973, 23.430872, 25.846979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.562418, 23.736267, 25.930212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574797, 0.247733, 0.779895,
		0.543891, 0.596420, -0.590310,
		-0.611384, 0.763487, 0.208081,
		16.379004, 23.965313, 25.992636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.341553, 23.944221, 25.984842>,  <16.806973, 23.430872, 25.846979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.341553, 23.944221, 25.984842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.987459, 24.000982, 26.162033>,  <16.775003, 24.035040, 26.268347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.987459, 24.000982, 26.162033>,  <17.341553, 23.944221, 25.984842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.987459, 24.000982, 26.162033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449705, 0.017714, 0.893001,
		0.118872, 0.989722, -0.079496,
		-0.885231, 0.141903, 0.442977,
		16.721889, 24.043552, 26.294926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.445463, 24.482359, 26.404469>,  <17.341553, 23.944221, 25.984842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.445463, 24.482359, 26.404469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.096478, 24.360340, 26.557178>,  <16.887087, 24.287128, 26.648804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.096478, 24.360340, 26.557178>,  <17.445463, 24.482359, 26.404469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.096478, 24.360340, 26.557178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372973, 0.089109, 0.923553,
		-0.315747, 0.948159, 0.036030,
		-0.872465, -0.305048, 0.381774,
		16.834738, 24.268826, 26.671711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.326725, 25.006836, 26.870970>,  <17.445463, 24.482359, 26.404469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.326725, 25.006836, 26.870970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.115648, 24.686844, 26.985210>,  <16.989002, 24.494848, 27.053755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.115648, 24.686844, 26.985210>,  <17.326725, 25.006836, 26.870970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.115648, 24.686844, 26.985210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368946, 0.087001, 0.925370,
		-0.765127, 0.593683, 0.249240,
		-0.527692, -0.799982, 0.285604,
		16.957340, 24.446850, 27.070892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.028273, 25.209961, 27.476799>,  <17.326725, 25.006836, 26.870970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.028273, 25.209961, 27.476799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.097963, 24.816294, 27.463808>,  <17.139778, 24.580093, 27.456013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.097963, 24.816294, 27.463808>,  <17.028273, 25.209961, 27.476799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.097963, 24.816294, 27.463808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378901, 0.036560, 0.924715,
		-0.908889, -0.173415, 0.379273,
		0.174225, -0.984170, -0.032478,
		17.150230, 24.521042, 27.454065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.731827, 24.930412, 28.146557>,  <17.028273, 25.209961, 27.476799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.731827, 24.930412, 28.146557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.046305, 24.723640, 28.011099>,  <17.234991, 24.599577, 27.929825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.046305, 24.723640, 28.011099>,  <16.731827, 24.930412, 28.146557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.046305, 24.723640, 28.011099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375873, -0.034977, 0.926011,
		-0.490529, -0.855312, 0.166803,
		0.786193, -0.516932, -0.338646,
		17.282164, 24.568562, 27.909506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.923847, 24.166624, 28.477797>,  <16.731827, 24.930412, 28.146557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.923847, 24.166624, 28.477797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.234739, 24.375315, 28.337105>,  <17.421274, 24.500530, 28.252689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.234739, 24.375315, 28.337105>,  <16.923847, 24.166624, 28.477797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.234739, 24.375315, 28.337105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415563, -0.005888, 0.909545,
		0.472465, -0.853091, -0.221388,
		0.777228, 0.521729, -0.351731,
		17.467907, 24.531834, 28.231585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.525524, 23.993429, 28.926662>,  <16.923847, 24.166624, 28.477797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.525524, 23.993429, 28.926662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.633501, 24.330658, 28.740602>,  <17.698288, 24.532995, 28.628967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.633501, 24.330658, 28.740602>,  <17.525524, 23.993429, 28.926662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.633501, 24.330658, 28.740602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371226, 0.354612, 0.858162,
		0.888438, -0.404329, -0.217246,
		0.269942, 0.843071, -0.465148,
		17.714483, 24.583580, 28.601059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.185648, 24.108892, 29.169460>,  <17.525524, 23.993429, 28.926662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.185648, 24.108892, 29.169460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.035683, 24.451181, 29.026814>,  <17.945704, 24.656555, 28.941225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.035683, 24.451181, 29.026814>,  <18.185648, 24.108892, 29.169460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.035683, 24.451181, 29.026814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414367, 0.498791, 0.761254,
		0.829300, 0.137636, -0.541588,
		-0.374915, 0.855724, -0.356616,
		17.923208, 24.707899, 28.919828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.083014, 23.592505, 29.613861>,  <18.185648, 24.108892, 29.169460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.083014, 23.592505, 29.613861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.300703, 23.263268, 29.548952>,  <18.431316, 23.065725, 29.510006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.300703, 23.263268, 29.548952>,  <18.083014, 23.592505, 29.613861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.300703, 23.263268, 29.548952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738761, -0.378527, -0.557628,
		0.397556, 0.423358, -0.814075,
		0.544226, -0.823095, -0.162274,
		18.463970, 23.016338, 29.500269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.256725, 23.398331, 28.892504>,  <18.083014, 23.592505, 29.613861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.256725, 23.398331, 28.892504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.184155, 23.101238, 29.150320>,  <18.140612, 22.922983, 29.305010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.184155, 23.101238, 29.150320>,  <18.256725, 23.398331, 28.892504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.184155, 23.101238, 29.150320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865360, -0.190774, -0.463419,
		0.467158, -0.641838, -0.608118,
		-0.181427, -0.742731, 0.644543,
		18.129726, 22.878420, 29.343683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.054188, 22.771389, 28.557560>,  <18.256725, 23.398331, 28.892504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.054188, 22.771389, 28.557560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.915564, 22.749113, 28.932110>,  <17.832390, 22.735748, 29.156839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.915564, 22.749113, 28.932110>,  <18.054188, 22.771389, 28.557560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.915564, 22.749113, 28.932110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876321, -0.336855, -0.344369,
		0.334600, -0.939908, 0.067938,
		-0.346560, -0.055690, 0.936373,
		17.811596, 22.732407, 29.213022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.694534, 22.118486, 28.730007>,  <18.054188, 22.771389, 28.557560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.694534, 22.118486, 28.730007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.535410, 22.430239, 28.923632>,  <17.439936, 22.617290, 29.039806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.535410, 22.430239, 28.923632>,  <17.694534, 22.118486, 28.730007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.535410, 22.430239, 28.923632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916430, -0.312459, -0.250051,
		-0.043634, -0.543083, 0.838544,
		-0.397809, 0.779378, 0.484064,
		17.416067, 22.664053, 29.068851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.157515, 21.840334, 29.178185>,  <17.694534, 22.118486, 28.730007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.157515, 21.840334, 29.178185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.058849, 22.207062, 29.052584>,  <16.999651, 22.427099, 28.977222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.058849, 22.207062, 29.052584>,  <17.157515, 21.840334, 29.178185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.058849, 22.207062, 29.052584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946419, -0.297585, -0.125431,
		-0.208440, 0.266239, 0.941100,
		-0.246663, 0.916820, -0.314003,
		16.984850, 22.482107, 28.958384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.454294, 21.928125, 29.356640>,  <17.157515, 21.840334, 29.178185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.454294, 21.928125, 29.356640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.501911, 22.214684, 29.081654>,  <16.530481, 22.386618, 28.916662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.501911, 22.214684, 29.081654>,  <16.454294, 21.928125, 29.356640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.501911, 22.214684, 29.081654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906427, -0.204179, -0.369731,
		-0.405239, 0.667151, 0.625053,
		0.119044, 0.716394, -0.687465,
		16.537624, 22.429602, 28.875414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.817465, 22.376505, 29.306683>,  <16.454294, 21.928125, 29.356640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.817465, 22.376505, 29.306683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.010824, 22.405277, 28.957706>,  <16.126841, 22.422541, 28.748322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.010824, 22.405277, 28.957706>,  <15.817465, 22.376505, 29.306683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.010824, 22.405277, 28.957706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803130, -0.360082, -0.474682,
		-0.348293, 0.930143, -0.116294,
		0.483398, 0.071929, -0.872441,
		16.155844, 22.426855, 28.695974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.426445, 22.734415, 28.911402>,  <15.817465, 22.376505, 29.306683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.426445, 22.734415, 28.911402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.667416, 22.525864, 28.669661>,  <15.811998, 22.400732, 28.524616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.667416, 22.525864, 28.669661>,  <15.426445, 22.734415, 28.911402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.667416, 22.525864, 28.669661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794234, -0.316439, -0.518709,
		0.079203, 0.792483, -0.604730,
		0.602427, -0.521381, -0.604354,
		15.848144, 22.369450, 28.488354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.096343, 22.898170, 28.180344>,  <15.426445, 22.734415, 28.911402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.096343, 22.898170, 28.180344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.350923, 22.592827, 28.136133>,  <15.503670, 22.409620, 28.109608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.350923, 22.592827, 28.136133>,  <15.096343, 22.898170, 28.180344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.350923, 22.592827, 28.136133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649867, -0.453516, -0.609915,
		0.415460, 0.460006, -0.784721,
		0.636448, -0.763360, -0.110526,
		15.541857, 22.363819, 28.102976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.050610, 22.705750, 27.435896>,  <15.096343, 22.898170, 28.180344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.050610, 22.705750, 27.435896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.203925, 22.392958, 27.632507>,  <15.295915, 22.205282, 27.750473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.203925, 22.392958, 27.632507>,  <15.050610, 22.705750, 27.435896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.203925, 22.392958, 27.632507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473182, -0.623276, -0.622596,
		0.793214, 0.006051, -0.608913,
		0.383288, -0.781979, 0.491528,
		15.318912, 22.158363, 27.779966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.424638, 22.320906, 26.998798>,  <15.050610, 22.705750, 27.435896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.424638, 22.320906, 26.998798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.288752, 22.070559, 27.279621>,  <15.207220, 21.920351, 27.448114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.288752, 22.070559, 27.279621>,  <15.424638, 22.320906, 26.998798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.288752, 22.070559, 27.279621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523834, -0.494051, -0.693910,
		0.781147, -0.603493, -0.160014,
		-0.339715, -0.625867, 0.702057,
		15.186837, 21.882799, 27.490238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.449619, 21.741512, 26.662409>,  <15.424638, 22.320906, 26.998798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.449619, 21.741512, 26.662409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.237896, 21.617680, 26.978382>,  <15.110862, 21.543379, 27.167965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.237896, 21.617680, 26.978382>,  <15.449619, 21.741512, 26.662409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.237896, 21.617680, 26.978382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491552, -0.646971, -0.582928,
		0.691527, -0.696841, 0.190271,
		-0.529308, -0.309583, 0.789931,
		15.079103, 21.524805, 27.215361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.482742, 21.070187, 26.534225>,  <15.449619, 21.741512, 26.662409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.482742, 21.070187, 26.534225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.172804, 21.153563, 26.772943>,  <14.986841, 21.203588, 26.916174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.172804, 21.153563, 26.772943>,  <15.482742, 21.070187, 26.534225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.172804, 21.153563, 26.772943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580892, -0.607171, -0.542132,
		0.249356, -0.766743, 0.591546,
		-0.774845, 0.208440, 0.596797,
		14.940351, 21.216095, 26.951982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.329047, 20.443331, 26.713055>,  <15.482742, 21.070187, 26.534225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.329047, 20.443331, 26.713055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.006939, 20.669872, 26.783237>,  <14.813674, 20.805798, 26.825348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.006939, 20.669872, 26.783237>,  <15.329047, 20.443331, 26.713055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.006939, 20.669872, 26.783237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573129, -0.667742, -0.475020,
		-0.151868, -0.483080, 0.862305,
		-0.805270, 0.566353, 0.175459,
		14.765358, 20.839779, 26.835875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.797134, 19.981886, 26.910221>,  <15.329047, 20.443331, 26.713055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.797134, 19.981886, 26.910221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.598585, 20.310749, 26.798744>,  <14.479455, 20.508066, 26.731857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.598585, 20.310749, 26.798744>,  <14.797134, 19.981886, 26.910221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.598585, 20.310749, 26.798744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701335, -0.568985, -0.429402,
		-0.511606, -0.017689, 0.859038,
		-0.496375, 0.822158, -0.278690,
		14.449673, 20.557396, 26.715137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.098422, 19.798685, 26.995033>,  <14.797134, 19.981886, 26.910221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.098422, 19.798685, 26.995033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.068908, 20.112698, 26.749014>,  <14.051199, 20.301105, 26.601402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.068908, 20.112698, 26.749014>,  <14.098422, 19.798685, 26.995033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.068908, 20.112698, 26.749014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647431, -0.506803, -0.569196,
		-0.758544, 0.356202, 0.545647,
		-0.073787, 0.785029, -0.615049,
		14.046772, 20.348206, 26.564499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.385163, 19.706764, 26.680285>,  <14.098422, 19.798685, 26.995033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.385163, 19.706764, 26.680285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.567770, 19.973272, 26.444427>,  <13.677334, 20.133177, 26.302914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.567770, 19.973272, 26.444427>,  <13.385163, 19.706764, 26.680285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.567770, 19.973272, 26.444427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328763, -0.489502, -0.807653,
		-0.826746, 0.562559, -0.004421,
		0.456516, 0.666270, -0.589642,
		13.704725, 20.173153, 26.267534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.931234, 19.892231, 26.098557>,  <13.385163, 19.706764, 26.680285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.931234, 19.892231, 26.098557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.298144, 19.952389, 25.951050>,  <13.518291, 19.988483, 25.862547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.298144, 19.952389, 25.951050>,  <12.931234, 19.892231, 26.098557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.298144, 19.952389, 25.951050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220104, -0.580247, -0.784135,
		-0.331905, 0.800434, -0.499144,
		0.917275, 0.150395, -0.368765,
		13.573327, 19.997507, 25.840420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.902914, 20.043173, 25.391476>,  <12.931234, 19.892231, 26.098557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.902914, 20.043173, 25.391476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.281242, 19.916801, 25.361511>,  <13.508240, 19.840979, 25.343533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.281242, 19.916801, 25.361511>,  <12.902914, 20.043173, 25.391476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.281242, 19.916801, 25.361511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227003, -0.478473, -0.848253,
		0.232145, 0.819301, -0.524266,
		0.945822, -0.315928, -0.074909,
		13.564989, 19.822023, 25.339039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.188334, 20.085680, 24.641127>,  <12.902914, 20.043173, 25.391476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.188334, 20.085680, 24.641127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.458259, 19.851688, 24.821095>,  <13.620214, 19.711294, 24.929075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.458259, 19.851688, 24.821095>,  <13.188334, 20.085680, 24.641127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.458259, 19.851688, 24.821095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042549, -0.577803, -0.815066,
		0.736762, 0.569160, -0.365018,
		0.674812, -0.584979, 0.449921,
		13.660702, 19.676195, 24.956070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.921504, 20.104412, 24.357983>,  <13.188334, 20.085680, 24.641127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.921504, 20.104412, 24.357983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.885527, 19.744429, 24.528622>,  <13.863940, 19.528439, 24.631006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.885527, 19.744429, 24.528622>,  <13.921504, 20.104412, 24.357983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.885527, 19.744429, 24.528622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178203, -0.435966, -0.882144,
		0.979874, -0.003322, 0.199588,
		-0.089944, -0.899957, 0.426600,
		13.858543, 19.474442, 24.656601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.265726, 19.711069, 23.973001>,  <13.921504, 20.104412, 24.357983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.265726, 19.711069, 23.973001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.085088, 19.429649, 24.192484>,  <13.976705, 19.260798, 24.324173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.085088, 19.429649, 24.192484>,  <14.265726, 19.711069, 23.973001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.085088, 19.429649, 24.192484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194844, -0.677910, -0.708854,
		0.870688, -0.213202, 0.443223,
		-0.451595, -0.703550, 0.548707,
		13.949610, 19.218584, 24.357096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.710597, 19.117685, 23.925644>,  <14.265726, 19.711069, 23.973001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.710597, 19.117685, 23.925644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.345300, 18.974705, 24.003839>,  <14.126122, 18.888916, 24.050758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.345300, 18.974705, 24.003839>,  <14.710597, 19.117685, 23.925644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.345300, 18.974705, 24.003839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088327, -0.642127, -0.761493,
		0.397727, -0.678160, 0.617990,
		-0.913242, -0.357452, 0.195492,
		14.071327, 18.867470, 24.062487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.728705, 18.403961, 23.697275>,  <14.710597, 19.117685, 23.925644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.728705, 18.403961, 23.697275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.338997, 18.492687, 23.713243>,  <14.105172, 18.545923, 23.722824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.338997, 18.492687, 23.713243>,  <14.728705, 18.403961, 23.697275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.338997, 18.492687, 23.713243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158253, -0.547173, -0.821923,
		-0.160471, -0.807094, 0.568198,
		-0.974271, 0.221814, 0.039920,
		14.046716, 18.559231, 23.725220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.493749, 17.857639, 23.417379>,  <14.728705, 18.403961, 23.697275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.493749, 17.857639, 23.417379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.177209, 18.102146, 23.421715>,  <13.987285, 18.248850, 23.424316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.177209, 18.102146, 23.421715>,  <14.493749, 17.857639, 23.417379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.177209, 18.102146, 23.421715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410312, -0.517883, -0.750627,
		-0.453217, -0.598459, 0.660637,
		-0.791352, 0.611264, 0.010841,
		13.939804, 18.285526, 23.424967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.939822, 17.367769, 23.434578>,  <14.493749, 17.857639, 23.417379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.939822, 17.367769, 23.434578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806759, 17.715080, 23.287374>,  <13.726921, 17.923468, 23.199053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806759, 17.715080, 23.287374>,  <13.939822, 17.367769, 23.434578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.806759, 17.715080, 23.287374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328975, -0.472563, -0.817593,
		-0.883806, -0.150914, 0.442844,
		-0.332658, 0.868279, -0.368008,
		13.706962, 17.975565, 23.176971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.283359, 17.209337, 23.191710>,  <13.939822, 17.367769, 23.434578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.283359, 17.209337, 23.191710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.356618, 17.551249, 22.997469>,  <13.400574, 17.756395, 22.880924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.356618, 17.551249, 22.997469>,  <13.283359, 17.209337, 23.191710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.356618, 17.551249, 22.997469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452981, -0.365020, -0.813369,
		-0.872505, 0.368935, 0.320346,
		0.183148, 0.854779, -0.485603,
		13.411562, 17.807682, 22.851788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.646963, 17.348982, 22.891415>,  <13.283359, 17.209337, 23.191710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.646963, 17.348982, 22.891415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.923994, 17.528650, 22.665642>,  <13.090213, 17.636452, 22.530178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.923994, 17.528650, 22.665642>,  <12.646963, 17.348982, 22.891415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.923994, 17.528650, 22.665642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467163, -0.316916, -0.825423,
		-0.549633, 0.835351, -0.009653,
		0.692577, 0.449169, -0.564433,
		13.131767, 17.663401, 22.496311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.293337, 17.574293, 22.228716>,  <12.646963, 17.348982, 22.891415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.293337, 17.574293, 22.228716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.686127, 17.577137, 22.153166>,  <12.921801, 17.578844, 22.107836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.686127, 17.577137, 22.153166>,  <12.293337, 17.574293, 22.228716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.686127, 17.577137, 22.153166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168074, -0.424259, -0.889806,
		-0.086457, 0.905513, -0.415417,
		0.981976, 0.007109, -0.188874,
		12.980720, 17.579269, 22.096504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.347392, 17.802229, 21.572781>,  <12.293337, 17.574293, 22.228716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.347392, 17.802229, 21.572781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.696088, 17.615995, 21.633841>,  <12.905306, 17.504255, 21.670477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.696088, 17.615995, 21.633841>,  <12.347392, 17.802229, 21.572781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.696088, 17.615995, 21.633841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100936, -0.475509, -0.873901,
		0.479459, 0.746407, -0.461514,
		0.871740, -0.465584, 0.152648,
		12.957610, 17.476320, 21.679634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.688625, 17.803492, 20.936241>,  <12.347392, 17.802229, 21.572781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.688625, 17.803492, 20.936241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.880656, 17.503984, 21.119049>,  <12.995875, 17.324280, 21.228735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.880656, 17.503984, 21.119049>,  <12.688625, 17.803492, 20.936241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.880656, 17.503984, 21.119049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081229, -0.556692, -0.826738,
		0.873457, 0.359776, -0.328077,
		0.480078, -0.748770, 0.457022,
		13.024680, 17.279354, 21.256155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.232916, 17.530191, 20.548527>,  <12.688625, 17.803492, 20.936241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.232916, 17.530191, 20.548527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.182825, 17.218119, 20.793684>,  <13.152771, 17.030876, 20.940779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.182825, 17.218119, 20.793684>,  <13.232916, 17.530191, 20.548527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.182825, 17.218119, 20.793684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110456, -0.602952, -0.790094,
		0.985960, -0.166638, -0.010670,
		-0.125226, -0.780180, 0.612893,
		13.145257, 16.984064, 20.977552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.496195, 16.923428, 20.285780>,  <13.232916, 17.530191, 20.548527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.496195, 16.923428, 20.285780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.245490, 16.752205, 20.546223>,  <13.095067, 16.649471, 20.702488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.245490, 16.752205, 20.546223>,  <13.496195, 16.923428, 20.285780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.245490, 16.752205, 20.546223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215512, -0.707773, -0.672764,
		0.748816, -0.561983, 0.351354,
		-0.626761, -0.428056, 0.651106,
		13.057462, 16.623789, 20.741554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.651443, 16.170139, 20.305166>,  <13.496195, 16.923428, 20.285780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.651443, 16.170139, 20.305166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.274791, 16.211639, 20.433273>,  <13.048800, 16.236540, 20.510138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.274791, 16.211639, 20.433273>,  <13.651443, 16.170139, 20.305166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.274791, 16.211639, 20.433273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300829, -0.686353, -0.662134,
		0.151120, -0.719831, 0.677500,
		-0.941629, 0.103750, 0.320268,
		12.992302, 16.242765, 20.529354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.334225, 15.446836, 20.273090>,  <13.651443, 16.170139, 20.305166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.334225, 15.446836, 20.273090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.009162, 15.679878, 20.278099>,  <12.814124, 15.819704, 20.281103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.009162, 15.679878, 20.278099>,  <13.334225, 15.446836, 20.273090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.009162, 15.679878, 20.278099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480214, -0.657353, -0.580760,
		-0.330124, -0.477972, 0.813979,
		-0.812658, 0.582606, 0.012521,
		12.765365, 15.854660, 20.281855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.789901, 15.053482, 20.581104>,  <13.334225, 15.446836, 20.273090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.789901, 15.053482, 20.581104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.628419, 15.346015, 20.361221>,  <12.531530, 15.521535, 20.229292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.628419, 15.346015, 20.361221>,  <12.789901, 15.053482, 20.581104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.628419, 15.346015, 20.361221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382248, -0.680717, -0.624908,
		-0.831210, -0.042153, 0.554359,
		-0.403703, 0.731332, -0.549706,
		12.507308, 15.565414, 20.196310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.170134, 14.787766, 20.473478>,  <12.789901, 15.053482, 20.581104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.170134, 14.787766, 20.473478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.273400, 15.047062, 20.186945>,  <12.335361, 15.202640, 20.015024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.273400, 15.047062, 20.186945>,  <12.170134, 14.787766, 20.473478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.273400, 15.047062, 20.186945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360079, -0.623480, -0.693985,
		-0.896489, 0.437101, 0.072455,
		0.258168, 0.648239, -0.716335,
		12.350850, 15.241533, 19.972044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.672000, 14.704029, 19.983330>,  <12.170134, 14.787766, 20.473478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.672000, 14.704029, 19.983330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.954676, 14.905161, 19.784231>,  <12.124281, 15.025840, 19.664772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.954676, 14.905161, 19.784231>,  <11.672000, 14.704029, 19.983330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.954676, 14.905161, 19.784231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124200, -0.604420, -0.786925,
		-0.696538, 0.617931, -0.364686,
		0.706689, 0.502829, -0.497749,
		12.166682, 15.056009, 19.634907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.333996, 14.835302, 19.369612>,  <11.672000, 14.704029, 19.983330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.333996, 14.835302, 19.369612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.725632, 14.877990, 19.300339>,  <11.960613, 14.903603, 19.258776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.725632, 14.877990, 19.300339>,  <11.333996, 14.835302, 19.369612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.725632, 14.877990, 19.300339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048664, -0.703741, -0.708788,
		-0.197517, 0.702396, -0.683833,
		0.979091, 0.106719, -0.173182,
		12.019359, 14.910006, 19.248384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.448996, 14.909956, 18.534904>,  <11.333996, 14.835302, 19.369612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.448996, 14.909956, 18.534904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.805699, 14.828038, 18.696310>,  <12.019722, 14.778888, 18.793154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.805699, 14.828038, 18.696310>,  <11.448996, 14.909956, 18.534904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.805699, 14.828038, 18.696310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210282, -0.602045, -0.770275,
		0.400681, 0.771752, -0.493815,
		0.891760, -0.204794, 0.403514,
		12.073228, 14.766600, 18.817364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.857599, 14.953444, 18.043598>,  <11.448996, 14.909956, 18.534904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.857599, 14.953444, 18.043598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.074691, 14.715748, 18.281027>,  <12.204946, 14.573131, 18.423485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.074691, 14.715748, 18.281027>,  <11.857599, 14.953444, 18.043598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.074691, 14.715748, 18.281027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094316, -0.659121, -0.746099,
		0.834596, 0.460912, -0.301677,
		0.542728, -0.594238, 0.593572,
		12.237510, 14.537477, 18.459099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.424081, 14.841228, 17.647505>,  <11.857599, 14.953444, 18.043598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.424081, 14.841228, 17.647505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.403531, 14.551538, 17.922564>,  <12.391201, 14.377725, 18.087599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.403531, 14.551538, 17.922564>,  <12.424081, 14.841228, 17.647505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.403531, 14.551538, 17.922564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112831, -0.688358, -0.716542,
		0.992285, 0.040776, 0.117079,
		-0.051375, -0.724224, 0.687648,
		12.388119, 14.334271, 18.128859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.926180, 14.368831, 17.400236>,  <12.424081, 14.841228, 17.647505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.926180, 14.368831, 17.400236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.712989, 14.151015, 17.659285>,  <12.585074, 14.020327, 17.814714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.712989, 14.151015, 17.659285>,  <12.926180, 14.368831, 17.400236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.712989, 14.151015, 17.659285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176031, -0.820006, -0.544613,
		0.827615, -0.176266, 0.532901,
		-0.532978, -0.544537, 0.647621,
		12.553095, 13.987654, 17.853571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.441648, 13.787119, 17.701151>,  <12.926180, 14.368831, 17.400236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.441648, 13.787119, 17.701151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.053456, 13.696342, 17.733810>,  <12.820541, 13.641876, 17.753407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.053456, 13.696342, 17.733810>,  <13.441648, 13.787119, 17.701151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.053456, 13.696342, 17.733810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153596, -0.842563, -0.516232,
		0.185949, -0.488452, 0.852548,
		-0.970480, -0.226941, 0.081649,
		12.762312, 13.628261, 17.758305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.366169, 13.084771, 18.066427>,  <13.441648, 13.787119, 17.701151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.366169, 13.084771, 18.066427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.092835, 13.192506, 17.794983>,  <12.928835, 13.257147, 17.632116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.092835, 13.192506, 17.794983>,  <13.366169, 13.084771, 18.066427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.092835, 13.192506, 17.794983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175463, -0.841646, -0.510730,
		-0.708708, -0.468070, 0.527867,
		-0.683335, 0.269337, -0.678610,
		12.887836, 13.273307, 17.591400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.604313, 12.611214, 18.619499>,  <13.366169, 13.084771, 18.066427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.604313, 12.611214, 18.619499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.875052, 12.316774, 18.621857>,  <14.037497, 12.140111, 18.623270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.875052, 12.316774, 18.621857>,  <13.604313, 12.611214, 18.619499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.875052, 12.316774, 18.621857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568438, 0.527736, 0.631168,
		-0.467712, -0.423856, 0.775624,
		0.676848, -0.736099, 0.005892,
		14.078107, 12.095944, 18.623625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.786976, 12.499904, 19.233768>,  <13.604313, 12.611214, 18.619499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.786976, 12.499904, 19.233768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.090143, 12.393143, 18.995668>,  <14.272043, 12.329086, 18.852808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.090143, 12.393143, 18.995668>,  <13.786976, 12.499904, 19.233768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.090143, 12.393143, 18.995668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597004, 0.651598, 0.467982,
		0.262958, -0.710059, 0.653200,
		0.757918, -0.266903, -0.595251,
		14.317518, 12.313072, 18.817093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.223475, 12.248032, 19.734413>,  <13.786976, 12.499904, 19.233768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.223475, 12.248032, 19.734413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.435558, 12.357862, 19.413542>,  <14.562808, 12.423760, 19.221020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.435558, 12.357862, 19.413542>,  <14.223475, 12.248032, 19.734413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.435558, 12.357862, 19.413542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565752, 0.590111, 0.575929,
		0.631510, -0.759195, 0.157538,
		0.530207, 0.274578, -0.802177,
		14.594621, 12.440235, 19.172890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.967823, 12.109741, 19.893826>,  <14.223475, 12.248032, 19.734413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.967823, 12.109741, 19.893826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.977304, 12.385530, 19.604256>,  <14.982993, 12.551004, 19.430513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.977304, 12.385530, 19.604256>,  <14.967823, 12.109741, 19.893826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.977304, 12.385530, 19.604256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602903, 0.567767, 0.560490,
		0.797463, -0.449740, -0.402228,
		0.023703, 0.689474, -0.723923,
		14.984415, 12.592373, 19.387079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.728694, 12.343529, 19.684437>,  <14.967823, 12.109741, 19.893826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.728694, 12.343529, 19.684437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.468711, 12.632461, 19.589952>,  <15.312721, 12.805820, 19.533262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.468711, 12.632461, 19.589952>,  <15.728694, 12.343529, 19.684437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.468711, 12.632461, 19.589952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555648, 0.663720, 0.500730,
		0.518469, 0.194204, -0.832751,
		-0.649957, 0.722330, -0.236210,
		15.273724, 12.849159, 19.519089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.192806, 12.808889, 19.487703>,  <15.728694, 12.343529, 19.684437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.192806, 12.808889, 19.487703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.851573, 13.012635, 19.532961>,  <15.646833, 13.134883, 19.560116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.851573, 13.012635, 19.532961>,  <16.192806, 12.808889, 19.487703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.851573, 13.012635, 19.532961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519056, 0.806316, 0.283610,
		0.053231, 0.300670, -0.952242,
		-0.853081, 0.509364, 0.113144,
		15.595649, 13.165444, 19.566904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.377165, 13.527987, 19.312460>,  <16.192806, 12.808889, 19.487703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.377165, 13.527987, 19.312460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.029785, 13.544124, 19.510115>,  <15.821358, 13.553805, 19.628708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.029785, 13.544124, 19.510115>,  <16.377165, 13.527987, 19.312460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.029785, 13.544124, 19.510115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339669, 0.774431, 0.533743,
		-0.361143, 0.631371, -0.686255,
		-0.868447, 0.040342, 0.494137,
		15.769251, 13.556227, 19.658356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.150959, 14.204682, 19.235195>,  <16.377165, 13.527987, 19.312460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.150959, 14.204682, 19.235195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.962522, 14.068812, 19.560818>,  <15.849459, 13.987290, 19.756191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.962522, 14.068812, 19.560818>,  <16.150959, 14.204682, 19.235195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.962522, 14.068812, 19.560818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435192, 0.713240, 0.549452,
		-0.767253, 0.613116, -0.188179,
		-0.471094, -0.339674, 0.814059,
		15.821194, 13.966910, 19.805035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.902019, 14.827009, 19.499479>,  <16.150959, 14.204682, 19.235195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.902019, 14.827009, 19.499479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.897771, 14.538745, 19.776762>,  <15.895223, 14.365787, 19.943132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.897771, 14.538745, 19.776762>,  <15.902019, 14.827009, 19.499479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.897771, 14.538745, 19.776762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049079, 0.692785, 0.719472,
		-0.998738, -0.026382, -0.042726,
		-0.010619, -0.720661, 0.693206,
		15.894586, 14.322547, 19.984724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.373646, 15.038037, 19.919876>,  <15.902019, 14.827009, 19.499479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.373646, 15.038037, 19.919876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.590343, 14.779312, 20.134594>,  <15.720362, 14.624077, 20.263424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.590343, 14.779312, 20.134594>,  <15.373646, 15.038037, 19.919876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.590343, 14.779312, 20.134594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008117, 0.642622, 0.766141,
		-0.840505, -0.410694, 0.353386,
		0.541743, -0.646814, 0.536793,
		15.752867, 14.585268, 20.295631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.022806, 15.050485, 20.511679>,  <15.373646, 15.038037, 19.919876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.022806, 15.050485, 20.511679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.382733, 14.899084, 20.598457>,  <15.598690, 14.808244, 20.650524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.382733, 14.899084, 20.598457>,  <15.022806, 15.050485, 20.511679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.382733, 14.899084, 20.598457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057928, 0.596535, 0.800494,
		-0.432403, -0.707731, 0.558699,
		0.899818, -0.378500, 0.216947,
		15.652678, 14.785534, 20.663542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.912851, 14.910272, 21.173599>,  <15.022806, 15.050485, 20.511679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.912851, 14.910272, 21.173599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.311533, 14.918999, 21.142351>,  <15.550742, 14.924235, 21.123602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.311533, 14.918999, 21.142351>,  <14.912851, 14.910272, 21.173599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.311533, 14.918999, 21.142351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061829, 0.419038, 0.905861,
		0.052499, -0.907707, 0.416309,
		0.996705, 0.021817, -0.078122,
		15.610544, 14.925544, 21.118914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.095446, 14.592641, 21.871145>,  <14.912851, 14.910272, 21.173599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.095446, 14.592641, 21.871145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.396935, 14.793605, 21.701683>,  <15.577829, 14.914184, 21.600006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.396935, 14.793605, 21.701683>,  <15.095446, 14.592641, 21.871145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.396935, 14.793605, 21.701683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160199, 0.484740, 0.859863,
		0.637367, -0.715968, 0.284874,
		0.753723, 0.502412, -0.423655,
		15.623053, 14.944328, 21.574587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.451745, 14.540030, 22.405413>,  <15.095446, 14.592641, 21.871145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.451745, 14.540030, 22.405413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577917, 14.849126, 22.185095>,  <15.653621, 15.034584, 22.052904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577917, 14.849126, 22.185095>,  <15.451745, 14.540030, 22.405413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.577917, 14.849126, 22.185095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244135, 0.494807, 0.834005,
		0.917007, -0.397539, -0.032576,
		0.315430, 0.772741, -0.550795,
		15.672546, 15.080948, 22.019855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.091011, 14.707455, 22.688927>,  <15.451745, 14.540030, 22.405413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.091011, 14.707455, 22.688927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.988539, 15.040560, 22.492609>,  <15.927055, 15.240423, 22.374819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.988539, 15.040560, 22.492609>,  <16.091011, 14.707455, 22.688927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.988539, 15.040560, 22.492609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277784, 0.549742, 0.787794,
		0.925855, 0.065483, -0.372161,
		-0.256180, 0.832764, -0.490792,
		15.911685, 15.290389, 22.345371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.605465, 15.188264, 22.761101>,  <16.091011, 14.707455, 22.688927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.605465, 15.188264, 22.761101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.320877, 15.438210, 22.632505>,  <16.150124, 15.588177, 22.555349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.320877, 15.438210, 22.632505>,  <16.605465, 15.188264, 22.761101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.320877, 15.438210, 22.632505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186658, 0.609105, 0.770811,
		0.677471, 0.488402, -0.549996,
		-0.711471, 0.624864, -0.321487,
		16.107435, 15.625669, 22.536060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.867737, 15.873702, 22.831911>,  <16.605465, 15.188264, 22.761101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.867737, 15.873702, 22.831911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.478514, 15.955744, 22.789787>,  <16.244980, 16.004969, 22.764513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.478514, 15.955744, 22.789787>,  <16.867737, 15.873702, 22.831911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.478514, 15.955744, 22.789787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066047, 0.685583, 0.724993,
		0.220897, 0.698505, -0.680658,
		-0.973058, 0.205105, -0.105309,
		16.186596, 16.017275, 22.758194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.851679, 16.604042, 22.821676>,  <16.867737, 15.873702, 22.831911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.851679, 16.604042, 22.821676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.479069, 16.490318, 22.912384>,  <16.255503, 16.422085, 22.966808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.479069, 16.490318, 22.912384>,  <16.851679, 16.604042, 22.821676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.479069, 16.490318, 22.912384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119948, 0.828861, 0.546445,
		-0.343321, 0.481827, -0.806209,
		-0.931527, -0.284309, 0.226771,
		16.199610, 16.405025, 22.980415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.396564, 17.136852, 22.679512>,  <16.851679, 16.604042, 22.821676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.396564, 17.136852, 22.679512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.230219, 16.901674, 22.957037>,  <16.130411, 16.760567, 23.123552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.230219, 16.901674, 22.957037>,  <16.396564, 17.136852, 22.679512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.230219, 16.901674, 22.957037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197086, 0.803048, 0.562380,
		-0.887813, 0.097134, -0.449836,
		-0.415866, -0.587945, 0.693812,
		16.105459, 16.725290, 23.165180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.839403, 17.547306, 22.895353>,  <16.396564, 17.136852, 22.679512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.839403, 17.547306, 22.895353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.888198, 17.284075, 23.192554>,  <15.917475, 17.126137, 23.370876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.888198, 17.284075, 23.192554>,  <15.839403, 17.547306, 22.895353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.888198, 17.284075, 23.192554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104843, 0.735863, 0.668964,
		-0.986979, -0.159503, 0.020770,
		0.121986, -0.658076, 0.743004,
		15.924793, 17.086653, 23.415455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.458382, 17.870502, 23.363546>,  <15.839403, 17.547306, 22.895353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.458382, 17.870502, 23.363546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.650089, 17.595505, 23.581778>,  <15.765114, 17.430506, 23.712717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.650089, 17.595505, 23.581778>,  <15.458382, 17.870502, 23.363546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.650089, 17.595505, 23.581778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056900, 0.644653, 0.762355,
		-0.875822, -0.334329, 0.348080,
		0.479268, -0.687493, 0.545578,
		15.793870, 17.389257, 23.745451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.059719, 17.787853, 24.062086>,  <15.458382, 17.870502, 23.363546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.059719, 17.787853, 24.062086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.442300, 17.672182, 24.077967>,  <15.671848, 17.602779, 24.087496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.442300, 17.672182, 24.077967>,  <15.059719, 17.787853, 24.062086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.442300, 17.672182, 24.077967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177285, 0.683578, 0.708019,
		-0.231883, -0.670148, 0.705076,
		0.956452, -0.289177, 0.039703,
		15.729236, 17.585428, 24.089878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.129191, 17.891701, 24.798038>,  <15.059719, 17.787853, 24.062086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.129191, 17.891701, 24.798038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.478813, 17.864990, 24.605551>,  <15.688586, 17.848963, 24.490059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.478813, 17.864990, 24.605551>,  <15.129191, 17.891701, 24.798038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.478813, 17.864990, 24.605551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379222, 0.712914, 0.589867,
		0.303676, -0.698064, 0.648450,
		0.874054, -0.066778, -0.481217,
		15.741030, 17.844957, 24.461185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.533823, 17.739437, 25.283596>,  <15.129191, 17.891701, 24.798038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.533823, 17.739437, 25.283596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.772788, 17.887800, 24.999195>,  <15.916167, 17.976818, 24.828554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.772788, 17.887800, 24.999195>,  <15.533823, 17.739437, 25.283596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.772788, 17.887800, 24.999195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443877, 0.585465, 0.678383,
		0.667887, -0.720872, 0.185125,
		0.597412, 0.370910, -0.711003,
		15.952012, 17.999073, 24.785894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.106998, 17.850111, 25.584955>,  <15.533823, 17.739437, 25.283596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.106998, 17.850111, 25.584955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.164202, 18.102781, 25.280184>,  <16.198524, 18.254383, 25.097321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.164202, 18.102781, 25.280184>,  <16.106998, 17.850111, 25.584955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.164202, 18.102781, 25.280184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530054, 0.601247, 0.597951,
		0.835818, -0.489375, -0.248839,
		0.143009, 0.631676, -0.761928,
		16.207104, 18.292284, 25.051605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.722618, 18.130163, 25.702906>,  <16.106998, 17.850111, 25.584955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.722618, 18.130163, 25.702906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.554005, 18.381506, 25.441378>,  <16.452837, 18.532310, 25.284460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.554005, 18.381506, 25.441378>,  <16.722618, 18.130163, 25.702906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.554005, 18.381506, 25.441378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419283, 0.774363, 0.473882,
		0.804060, -0.074379, -0.589877,
		-0.421532, 0.628355, -0.653820,
		16.427546, 18.570013, 25.245232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.240784, 18.515179, 25.494627>,  <16.722618, 18.130163, 25.702906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.240784, 18.515179, 25.494627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.899458, 18.720615, 25.458668>,  <16.694662, 18.843878, 25.437092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.899458, 18.720615, 25.458668>,  <17.240784, 18.515179, 25.494627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.899458, 18.720615, 25.458668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415215, 0.773642, 0.478617,
		0.315360, 0.371085, -0.873409,
		-0.853314, 0.513590, -0.089896,
		16.643463, 18.874693, 25.431700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.447823, 19.172968, 25.368898>,  <17.240784, 18.515179, 25.494627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.447823, 19.172968, 25.368898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.061148, 19.222031, 25.458765>,  <16.829144, 19.251469, 25.512684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.061148, 19.222031, 25.458765>,  <17.447823, 19.172968, 25.368898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.061148, 19.222031, 25.458765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201364, 0.906274, 0.371645,
		-0.158023, 0.404503, -0.900781,
		-0.966686, 0.122656, 0.224664,
		16.771141, 19.258827, 25.526165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.368843, 19.796700, 25.207514>,  <17.447823, 19.172968, 25.368898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.368843, 19.796700, 25.207514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.033909, 19.744438, 25.419851>,  <16.832949, 19.713081, 25.547255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.033909, 19.744438, 25.419851>,  <17.368843, 19.796700, 25.207514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.033909, 19.744438, 25.419851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144422, 0.883658, 0.445298,
		-0.527265, 0.449530, -0.721051,
		-0.837337, -0.130654, 0.530845,
		16.782707, 19.705242, 25.579105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.970205, 20.485979, 25.150280>,  <17.368843, 19.796700, 25.207514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.970205, 20.485979, 25.150280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.855967, 20.278532, 25.472639>,  <16.787424, 20.154064, 25.666054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.855967, 20.278532, 25.472639>,  <16.970205, 20.485979, 25.150280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.855967, 20.278532, 25.472639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205780, 0.788120, 0.580105,
		-0.935997, 0.331512, -0.118362,
		-0.285595, -0.518620, 0.805896,
		16.770288, 20.122946, 25.714409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.642632, 20.929550, 25.519783>,  <16.970205, 20.485979, 25.150280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.642632, 20.929550, 25.519783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.765764, 20.644539, 25.771986>,  <16.839643, 20.473532, 25.923307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.765764, 20.644539, 25.771986>,  <16.642632, 20.929550, 25.519783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.765764, 20.644539, 25.771986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440587, 0.694109, 0.569294,
		-0.843280, 0.102547, 0.527601,
		0.307833, -0.712528, 0.630509,
		16.858114, 20.430780, 25.961140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.577042, 21.173658, 26.171478>,  <16.642632, 20.929550, 25.519783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.577042, 21.173658, 26.171478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.871964, 20.903532, 26.178759>,  <17.048916, 20.741457, 26.183126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.871964, 20.903532, 26.178759>,  <16.577042, 21.173658, 26.171478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.871964, 20.903532, 26.178759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586720, 0.653466, 0.478270,
		-0.334875, -0.341953, 0.878024,
		0.737305, -0.675315, 0.018199,
		17.093155, 20.700937, 26.184217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.834524, 21.174124, 26.888796>,  <16.577042, 21.173658, 26.171478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.834524, 21.174124, 26.888796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.076773, 21.058529, 26.592226>,  <17.222122, 20.989172, 26.414284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.076773, 21.058529, 26.592226>,  <16.834524, 21.174124, 26.888796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.076773, 21.058529, 26.592226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680677, 0.670759, 0.294553,
		0.412194, -0.683058, 0.602933,
		0.605620, -0.288989, -0.741424,
		17.258459, 20.971832, 26.369799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.458992, 21.070429, 27.225864>,  <16.834524, 21.174124, 26.888796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.458992, 21.070429, 27.225864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.497330, 21.171150, 26.840656>,  <17.520332, 21.231583, 26.609531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.497330, 21.171150, 26.840656>,  <17.458992, 21.070429, 27.225864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.497330, 21.171150, 26.840656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619990, 0.741789, 0.255659,
		0.778734, -0.621566, -0.085020,
		0.095842, 0.251802, -0.963021,
		17.526083, 21.246691, 26.551750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.169876, 21.137220, 27.175692>,  <17.458992, 21.070429, 27.225864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.169876, 21.137220, 27.175692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.029835, 21.386482, 26.895947>,  <17.945810, 21.536039, 26.728100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.029835, 21.386482, 26.895947>,  <18.169876, 21.137220, 27.175692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.029835, 21.386482, 26.895947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706880, 0.665644, 0.239247,
		0.614613, -0.410603, -0.673540,
		-0.350102, 0.623156, -0.699361,
		17.924805, 21.573429, 26.686138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.677824, 21.410305, 26.777254>,  <18.169876, 21.137220, 27.175692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.677824, 21.410305, 26.777254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.391253, 21.688404, 26.800436>,  <18.219311, 21.855265, 26.814346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.391253, 21.688404, 26.800436>,  <18.677824, 21.410305, 26.777254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.391253, 21.688404, 26.800436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663310, 0.653052, 0.365434,
		0.216220, 0.300250, -0.929031,
		-0.716428, 0.695250, 0.057956,
		18.176325, 21.896978, 26.817823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.754332, 22.096476, 26.308100>,  <18.677824, 21.410305, 26.777254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.754332, 22.096476, 26.308100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.547379, 22.145802, 26.646828>,  <18.423206, 22.175398, 26.850065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.547379, 22.145802, 26.646828>,  <18.754332, 22.096476, 26.308100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.547379, 22.145802, 26.646828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656284, 0.692236, 0.300166,
		-0.549186, 0.711057, -0.439082,
		-0.517384, 0.123316, 0.846822,
		18.392164, 22.182796, 26.900875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.709539, 22.740923, 26.431034>,  <18.754332, 22.096476, 26.308100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.709539, 22.740923, 26.431034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.676489, 22.571760, 26.791994>,  <18.656658, 22.470263, 27.008570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.676489, 22.571760, 26.791994>,  <18.709539, 22.740923, 26.431034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.676489, 22.571760, 26.791994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699267, 0.620567, 0.354856,
		-0.710069, 0.660338, 0.244449,
		-0.082628, -0.422907, 0.902398,
		18.651701, 22.444887, 27.062714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.954981, 23.331121, 26.042841>,  <18.709539, 22.740923, 26.431034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.954981, 23.331121, 26.042841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.340343, 23.385290, 25.950317>,  <19.571562, 23.417791, 25.894802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.340343, 23.385290, 25.950317>,  <18.954981, 23.331121, 26.042841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.340343, 23.385290, 25.950317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094650, -0.635503, -0.766275,
		-0.250770, 0.760129, -0.599432,
		0.963409, 0.135422, -0.231311,
		19.629366, 23.425917, 25.880924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926559, 23.431967, 25.346603>,  <18.954981, 23.331121, 26.042841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.926559, 23.431967, 25.346603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.289480, 23.303356, 25.454990>,  <19.507233, 23.226191, 25.520023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.289480, 23.303356, 25.454990>,  <18.926559, 23.431967, 25.346603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.289480, 23.303356, 25.454990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031688, -0.694878, -0.718429,
		0.419285, 0.643246, -0.640652,
		0.907302, -0.321527, 0.270969,
		19.561670, 23.206898, 25.536282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.279369, 23.300062, 24.733345>,  <18.926559, 23.431967, 25.346603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.279369, 23.300062, 24.733345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.511448, 23.096807, 24.987957>,  <19.650694, 22.974855, 25.140724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.511448, 23.096807, 24.987957>,  <19.279369, 23.300062, 24.733345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.511448, 23.096807, 24.987957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293717, -0.598400, -0.745418,
		0.759674, 0.619448, -0.197940,
		0.580195, -0.508136, 0.636531,
		19.685507, 22.944366, 25.178917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.835159, 23.052828, 24.329498>,  <19.279369, 23.300062, 24.733345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.835159, 23.052828, 24.329498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.834368, 22.818087, 24.653374>,  <19.833893, 22.677242, 24.847700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.834368, 22.818087, 24.653374>,  <19.835159, 23.052828, 24.329498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.834368, 22.818087, 24.653374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268024, -0.780378, -0.564954,
		0.963410, 0.215897, 0.158837,
		-0.001981, -0.586854, 0.809690,
		19.833773, 22.642031, 24.896280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.540972, 22.794044, 24.388344>,  <19.835159, 23.052828, 24.329498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.540972, 22.794044, 24.388344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.293095, 22.544577, 24.578930>,  <20.144369, 22.394896, 24.693283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.293095, 22.544577, 24.578930>,  <20.540972, 22.794044, 24.388344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.293095, 22.544577, 24.578930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422996, -0.776765, -0.466595,
		0.661104, -0.087601, 0.745163,
		-0.619691, -0.623668, 0.476468,
		20.107187, 22.357475, 24.721870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.993244, 22.088615, 24.432135>,  <20.540972, 22.794044, 24.388344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.993244, 22.088615, 24.432135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.618240, 22.011328, 24.547890>,  <20.393238, 21.964954, 24.617344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.618240, 22.011328, 24.547890>,  <20.993244, 22.088615, 24.432135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.618240, 22.011328, 24.547890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076710, -0.925963, -0.369739,
		0.339405, -0.324434, 0.882919,
		-0.937507, -0.193220, 0.289390,
		20.336988, 21.953362, 24.634706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.046961, 21.458046, 24.778963>,  <20.993244, 22.088615, 24.432135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.046961, 21.458046, 24.778963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.689905, 21.517483, 24.608732>,  <20.475672, 21.553144, 24.506594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.689905, 21.517483, 24.608732>,  <21.046961, 21.458046, 24.778963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.689905, 21.517483, 24.608732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100563, -0.854668, -0.509342,
		-0.439413, -0.497456, 0.747966,
		-0.892638, 0.148594, -0.425578,
		20.422113, 21.562061, 24.481058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.701155, 20.752523, 24.765255>,  <21.046961, 21.458046, 24.778963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.701155, 20.752523, 24.765255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.433149, 20.942587, 24.537113>,  <20.272346, 21.056625, 24.400229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.433149, 20.942587, 24.537113>,  <20.701155, 20.752523, 24.765255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.433149, 20.942587, 24.537113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115017, -0.825482, -0.552586,
		-0.733383, -0.304640, 0.607737,
		-0.670016, 0.475157, -0.570355,
		20.232145, 21.085135, 24.366007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.093845, 20.349895, 24.736158>,  <20.701155, 20.752523, 24.765255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.093845, 20.349895, 24.736158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.099691, 20.594027, 24.419353>,  <20.103199, 20.740505, 24.229271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.099691, 20.594027, 24.419353>,  <20.093845, 20.349895, 24.736158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.099691, 20.594027, 24.419353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039223, -0.791138, -0.610379,
		-0.999124, 0.039987, 0.012374,
		0.014617, 0.610329, -0.792013,
		20.104076, 20.777124, 24.181749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.711632, 19.976456, 24.296068>,  <20.093845, 20.349895, 24.736158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.711632, 19.976456, 24.296068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867167, 20.270893, 24.074448>,  <19.960487, 20.447556, 23.941475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867167, 20.270893, 24.074448>,  <19.711632, 19.976456, 24.296068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.867167, 20.270893, 24.074448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041721, -0.614827, -0.787558,
		-0.920362, 0.283114, -0.269777,
		0.388835, 0.736094, -0.554052,
		19.983816, 20.491722, 23.908232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.306545, 20.086010, 23.782404>,  <19.711632, 19.976456, 24.296068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.306545, 20.086010, 23.782404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.662910, 20.214792, 23.654264>,  <19.876730, 20.292061, 23.577381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.662910, 20.214792, 23.654264>,  <19.306545, 20.086010, 23.782404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.662910, 20.214792, 23.654264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165137, -0.427433, -0.888837,
		-0.423093, 0.844776, -0.327637,
		0.890911, 0.321956, -0.320348,
		19.930183, 20.311378, 23.558161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.238693, 20.181978, 22.998240>,  <19.306545, 20.086010, 23.782404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.238693, 20.181978, 22.998240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.629318, 20.148012, 23.077349>,  <19.863693, 20.127632, 23.124815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.629318, 20.148012, 23.077349>,  <19.238693, 20.181978, 22.998240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.629318, 20.148012, 23.077349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102981, -0.622532, -0.775789,
		0.188997, 0.777974, -0.599197,
		0.976563, -0.084915, 0.197773,
		19.922287, 20.122538, 23.136681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.655672, 20.423326, 22.402143>,  <19.238693, 20.181978, 22.998240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.655672, 20.423326, 22.402143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.860332, 20.149317, 22.609587>,  <19.983130, 19.984911, 22.734053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.860332, 20.149317, 22.609587>,  <19.655672, 20.423326, 22.402143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.860332, 20.149317, 22.609587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015424, -0.596180, -0.802703,
		0.859054, 0.418704, -0.294472,
		0.511653, -0.685023, 0.518608,
		20.013828, 19.943810, 22.765169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.255232, 20.323757, 22.062513>,  <19.655672, 20.423326, 22.402143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.255232, 20.323757, 22.062513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.165154, 19.998575, 22.277321>,  <20.111107, 19.803467, 22.406206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.165154, 19.998575, 22.277321>,  <20.255232, 20.323757, 22.062513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.165154, 19.998575, 22.277321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124481, -0.522654, -0.843408,
		0.966329, -0.256782, 0.016502,
		-0.225197, -0.812955, 0.537020,
		20.097595, 19.754688, 22.438427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.023848, 19.876011, 21.506514>,  <20.255232, 20.323757, 22.062513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.023848, 19.876011, 21.506514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.029076, 19.626383, 21.819017>,  <20.032213, 19.476606, 22.006519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.029076, 19.626383, 21.819017>,  <20.023848, 19.876011, 21.506514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.029076, 19.626383, 21.819017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273531, -0.753754, -0.597525,
		0.961774, -0.205887, -0.180556,
		0.013072, -0.624072, 0.781258,
		20.032997, 19.439161, 22.053394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.417845, 19.266315, 21.398882>,  <20.023848, 19.876011, 21.506514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.417845, 19.266315, 21.398882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.160387, 19.177946, 21.691980>,  <20.005913, 19.124924, 21.867840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.160387, 19.177946, 21.691980>,  <20.417845, 19.266315, 21.398882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.160387, 19.177946, 21.691980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342621, -0.772949, -0.534004,
		0.684349, -0.594762, 0.421811,
		-0.643644, -0.220923, 0.732745,
		19.967295, 19.111670, 21.911804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.487858, 18.508986, 21.532215>,  <20.417845, 19.266315, 21.398882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.487858, 18.508986, 21.532215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.122639, 18.582541, 21.677834>,  <19.903507, 18.626673, 21.765203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.122639, 18.582541, 21.677834>,  <20.487858, 18.508986, 21.532215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.122639, 18.582541, 21.677834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337891, -0.840933, -0.422683,
		0.228413, -0.508938, 0.829946,
		-0.913048, 0.183886, 0.364045,
		19.848724, 18.637707, 21.787046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.333662, 17.856705, 21.744932>,  <20.487858, 18.508986, 21.532215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.333662, 17.856705, 21.744932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.993126, 18.064661, 21.716843>,  <19.788805, 18.189436, 21.699989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.993126, 18.064661, 21.716843>,  <20.333662, 17.856705, 21.744932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.993126, 18.064661, 21.716843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469745, -0.815038, -0.339194,
		-0.233581, -0.255781, 0.938092,
		-0.851340, 0.519893, -0.070225,
		19.737724, 18.220629, 21.695774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.767689, 17.450731, 21.973793>,  <20.333662, 17.856705, 21.744932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.767689, 17.450731, 21.973793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.582930, 17.713392, 21.735313>,  <19.472075, 17.870989, 21.592226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.582930, 17.713392, 21.735313>,  <19.767689, 17.450731, 21.973793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.582930, 17.713392, 21.735313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497320, -0.748341, -0.438929,
		-0.734385, 0.093759, 0.672227,
		-0.461901, 0.656655, -0.596198,
		19.444361, 17.910389, 21.556454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.059347, 17.222984, 22.000179>,  <19.767689, 17.450731, 21.973793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.059347, 17.222984, 22.000179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.072346, 17.471869, 21.687309>,  <19.080145, 17.621199, 21.499586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.072346, 17.471869, 21.687309>,  <19.059347, 17.222984, 22.000179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.072346, 17.471869, 21.687309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674662, -0.563739, -0.476476,
		-0.737411, 0.543189, 0.401460,
		0.032498, 0.622208, -0.782177,
		19.082094, 17.658531, 21.452656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.373035, 17.286434, 21.816017>,  <19.059347, 17.222984, 22.000179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.373035, 17.286434, 21.816017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.582176, 17.379902, 21.488110>,  <18.707661, 17.435982, 21.291365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.582176, 17.379902, 21.488110>,  <18.373035, 17.286434, 21.816017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.582176, 17.379902, 21.488110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679938, -0.465690, -0.566407,
		-0.514111, 0.853541, -0.084607,
		0.522852, 0.233669, -0.819771,
		18.739033, 17.450003, 21.242178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.850504, 17.548819, 21.238379>,  <18.373035, 17.286434, 21.816017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.850504, 17.548819, 21.238379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.180498, 17.424290, 21.049709>,  <18.378494, 17.349573, 20.936508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.180498, 17.424290, 21.049709>,  <17.850504, 17.548819, 21.238379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.180498, 17.424290, 21.049709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556500, -0.592972, -0.581972,
		-0.098510, 0.742606, -0.662444,
		0.824987, -0.311320, -0.471674,
		18.427994, 17.330894, 20.908207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.582680, 17.537512, 20.699717>,  <17.850504, 17.548819, 21.238379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.582680, 17.537512, 20.699717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.924791, 17.333673, 20.662172>,  <18.130058, 17.211370, 20.639645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.924791, 17.333673, 20.662172>,  <17.582680, 17.537512, 20.699717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.924791, 17.333673, 20.662172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460342, -0.664105, -0.589109,
		0.237873, 0.547061, -0.802584,
		0.855279, -0.509596, -0.093862,
		18.181376, 17.180794, 20.634014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.670492, 17.410412, 19.969564>,  <17.582680, 17.537512, 20.699717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.670492, 17.410412, 19.969564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.869869, 17.135731, 20.181223>,  <17.989496, 16.970922, 20.308218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.869869, 17.135731, 20.181223>,  <17.670492, 17.410412, 19.969564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.869869, 17.135731, 20.181223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400138, -0.723701, -0.562269,
		0.769055, 0.068527, -0.635499,
		0.498442, -0.686703, 0.529146,
		18.019402, 16.929720, 20.339966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.965155, 16.964151, 19.568535>,  <17.670492, 17.410412, 19.969564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.965155, 16.964151, 19.568535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.965452, 16.725599, 19.889616>,  <17.965630, 16.582468, 20.082264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.965452, 16.725599, 19.889616>,  <17.965155, 16.964151, 19.568535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.965452, 16.725599, 19.889616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407228, -0.733308, -0.544448,
		0.913326, -0.326479, -0.243407,
		0.000742, -0.596381, 0.802701,
		17.965675, 16.546684, 20.130426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.198997, 16.356377, 19.302172>,  <17.965155, 16.964151, 19.568535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.198997, 16.356377, 19.302172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.044334, 16.223959, 19.646475>,  <17.951536, 16.144508, 19.853056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.044334, 16.223959, 19.646475>,  <18.198997, 16.356377, 19.302172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.044334, 16.223959, 19.646475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225095, -0.871245, -0.436193,
		0.894332, -0.362409, 0.262356,
		-0.386656, -0.331046, 0.860759,
		17.928337, 16.124645, 19.904703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.688860, 15.845500, 19.622828>,  <18.198997, 16.356377, 19.302172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.688860, 15.845500, 19.622828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.341331, 15.753333, 19.798126>,  <18.132814, 15.698032, 19.903305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.341331, 15.753333, 19.798126>,  <18.688860, 15.845500, 19.622828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.341331, 15.753333, 19.798126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020395, -0.901019, -0.433300,
		0.494707, -0.367522, 0.787523,
		-0.868820, -0.230418, 0.438244,
		18.080685, 15.684208, 19.929600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.780668, 15.175909, 19.937117>,  <18.688860, 15.845500, 19.622828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.780668, 15.175909, 19.937117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.389807, 15.228796, 19.870560>,  <18.155289, 15.260529, 19.830626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.389807, 15.228796, 19.870560>,  <18.780668, 15.175909, 19.937117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.389807, 15.228796, 19.870560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045774, -0.895473, -0.442756,
		-0.207538, -0.425025, 0.881068,
		-0.977155, 0.132219, -0.166390,
		18.096661, 15.268461, 19.820642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.474815, 14.541508, 19.979866>,  <18.780668, 15.175909, 19.937117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.474815, 14.541508, 19.979866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.182962, 14.735309, 19.786829>,  <18.007851, 14.851589, 19.671007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.182962, 14.735309, 19.786829>,  <18.474815, 14.541508, 19.979866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.182962, 14.735309, 19.786829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071797, -0.756083, -0.650526,
		-0.680063, -0.439994, 0.586447,
		-0.729630, 0.484504, -0.482594,
		17.964073, 14.880660, 19.642052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.938494, 14.051498, 19.888657>,  <18.474815, 14.541508, 19.979866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.938494, 14.051498, 19.888657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.901028, 14.335176, 19.609152>,  <17.878548, 14.505383, 19.441448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.901028, 14.335176, 19.609152>,  <17.938494, 14.051498, 19.888657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.901028, 14.335176, 19.609152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068634, -0.704779, -0.706099,
		-0.993235, -0.018179, 0.114689,
		-0.093667, 0.709194, -0.698763,
		17.872929, 14.547935, 19.399523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.392553, 13.842252, 19.497734>,  <17.938494, 14.051498, 19.888657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.392553, 13.842252, 19.497734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.561800, 14.096928, 19.239866>,  <17.663349, 14.249733, 19.085146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.561800, 14.096928, 19.239866>,  <17.392553, 13.842252, 19.497734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.561800, 14.096928, 19.239866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117585, -0.666893, -0.735817,
		-0.898412, 0.387141, -0.207310,
		0.423118, 0.636690, -0.644668,
		17.688736, 14.287935, 19.046467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907354, 13.837755, 18.883799>,  <17.392553, 13.842252, 19.497734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.907354, 13.837755, 18.883799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.275942, 13.956690, 18.783810>,  <17.497095, 14.028050, 18.723816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.275942, 13.956690, 18.783810>,  <16.907354, 13.837755, 18.883799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.275942, 13.956690, 18.783810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040425, -0.566610, -0.822994,
		-0.386343, 0.768469, -0.510093,
		0.921469, 0.297337, -0.249972,
		17.552383, 14.045891, 18.708818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.835993, 13.909696, 18.216675>,  <16.907354, 13.837755, 18.883799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.835993, 13.909696, 18.216675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.232315, 13.908106, 18.270765>,  <17.470108, 13.907152, 18.303219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.232315, 13.908106, 18.270765>,  <16.835993, 13.909696, 18.216675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.232315, 13.908106, 18.270765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111408, -0.543077, -0.832259,
		0.076746, 0.839673, -0.537642,
		0.990807, -0.003975, 0.135225,
		17.529556, 13.906914, 18.311333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.154415, 14.016294, 17.576805>,  <16.835993, 13.909696, 18.216675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.154415, 14.016294, 17.576805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.485193, 13.880803, 17.756329>,  <17.683661, 13.799508, 17.864042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.485193, 13.880803, 17.756329>,  <17.154415, 14.016294, 17.576805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.485193, 13.880803, 17.756329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286216, -0.433463, -0.854512,
		0.483987, 0.835089, -0.261500,
		0.826944, -0.338727, 0.448806,
		17.733276, 13.779185, 17.890970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.713032, 14.165530, 17.140041>,  <17.154415, 14.016294, 17.576805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.713032, 14.165530, 17.140041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.853264, 13.884039, 17.387220>,  <17.937403, 13.715144, 17.535528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.853264, 13.884039, 17.387220>,  <17.713032, 14.165530, 17.140041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.853264, 13.884039, 17.387220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437225, -0.460520, -0.772499,
		0.828207, 0.541007, 0.146237,
		0.350582, -0.703728, 0.617948,
		17.958439, 13.672920, 17.572605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.339443, 14.115565, 16.991339>,  <17.713032, 14.165530, 17.140041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.339443, 14.115565, 16.991339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.261194, 13.777045, 17.189533>,  <18.214245, 13.573933, 17.308451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.261194, 13.777045, 17.189533>,  <18.339443, 14.115565, 16.991339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.261194, 13.777045, 17.189533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460336, -0.525369, -0.715596,
		0.865923, 0.088104, 0.492357,
		-0.195621, -0.846301, 0.495486,
		18.202507, 13.523155, 17.338179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.941267, 13.771299, 17.014668>,  <18.339443, 14.115565, 16.991339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.941267, 13.771299, 17.014668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.672909, 13.475955, 17.042162>,  <18.511894, 13.298749, 17.058659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.672909, 13.475955, 17.042162>,  <18.941267, 13.771299, 17.014668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.672909, 13.475955, 17.042162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469276, -0.494506, -0.731604,
		0.574178, -0.458572, 0.678256,
		-0.670894, -0.738360, 0.068738,
		18.471640, 13.254447, 17.062784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.322981, 13.093512, 17.052774>,  <18.941267, 13.771299, 17.014668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.322981, 13.093512, 17.052774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.952351, 13.019663, 16.921703>,  <18.729973, 12.975353, 16.843061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.952351, 13.019663, 16.921703>,  <19.322981, 13.093512, 17.052774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.952351, 13.019663, 16.921703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376003, -0.475384, -0.795381,
		-0.008927, -0.860188, 0.509898,
		-0.926575, -0.184623, -0.327677,
		18.674377, 12.964276, 16.823400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.329472, 12.313206, 16.838970>,  <19.322981, 13.093512, 17.052774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.329472, 12.313206, 16.838970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.038445, 12.517866, 16.656166>,  <18.863829, 12.640662, 16.546484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.038445, 12.517866, 16.656166>,  <19.329472, 12.313206, 16.838970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.038445, 12.517866, 16.656166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313910, -0.344042, -0.884927,
		-0.610004, -0.787305, 0.089702,
		-0.727568, 0.511651, -0.457009,
		18.820173, 12.671361, 16.519064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.067215, 11.799722, 16.537987>,  <19.329472, 12.313206, 16.838970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.067215, 11.799722, 16.537987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.931486, 12.111208, 16.326908>,  <18.850048, 12.298100, 16.200262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.931486, 12.111208, 16.326908>,  <19.067215, 11.799722, 16.537987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.931486, 12.111208, 16.326908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310914, -0.436604, -0.844221,
		-0.887802, -0.450532, -0.093963,
		-0.339324, 0.778716, -0.527695,
		18.829689, 12.344823, 16.168600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.856495, 11.464160, 15.934397>,  <19.067215, 11.799722, 16.537987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.856495, 11.464160, 15.934397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.933262, 11.851102, 15.868191>,  <18.979322, 12.083267, 15.828467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.933262, 11.851102, 15.868191>,  <18.856495, 11.464160, 15.934397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.933262, 11.851102, 15.868191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323480, -0.221575, -0.919927,
		-0.926569, 0.123008, -0.355443,
		0.191916, 0.967354, -0.165514,
		18.990837, 12.141308, 15.818537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.384712, 11.598775, 15.377028>,  <18.856495, 11.464160, 15.934397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.384712, 11.598775, 15.377028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.683792, 11.864387, 15.378386>,  <18.863239, 12.023753, 15.379200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.683792, 11.864387, 15.378386>,  <18.384712, 11.598775, 15.377028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.683792, 11.864387, 15.378386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172051, -0.188789, -0.966828,
		-0.641361, 0.723481, -0.255404,
		0.747699, 0.664029, 0.003394,
		18.908102, 12.063596, 15.379404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.454819, 11.923555, 14.769253>,  <18.384712, 11.598775, 15.377028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.454819, 11.923555, 14.769253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.845392, 11.903428, 14.853197>,  <19.079737, 11.891352, 14.903563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.845392, 11.903428, 14.853197>,  <18.454819, 11.923555, 14.769253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.845392, 11.903428, 14.853197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206271, -0.068307, -0.976108,
		0.063450, 0.996395, -0.056319,
		0.976436, -0.050317, 0.209861,
		19.138323, 11.888332, 14.916156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.722336, 12.325520, 14.230527>,  <18.454819, 11.923555, 14.769253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.722336, 12.325520, 14.230527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.039865, 12.089348, 14.288816>,  <19.230383, 11.947645, 14.323790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.039865, 12.089348, 14.288816>,  <18.722336, 12.325520, 14.230527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.039865, 12.089348, 14.288816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192076, 0.016063, -0.981249,
		0.577016, 0.806930, 0.126159,
		0.793826, -0.590428, 0.145723,
		19.278013, 11.912219, 14.332533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.310888, 12.517609, 13.716121>,  <18.722336, 12.325520, 14.230527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.310888, 12.517609, 13.716121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.318817, 12.135564, 13.834352>,  <19.323574, 11.906337, 13.905292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.318817, 12.135564, 13.834352>,  <19.310888, 12.517609, 13.716121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.318817, 12.135564, 13.834352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085001, -0.292956, -0.952340,
		0.996184, 0.044000, 0.075379,
		0.019820, -0.955113, 0.295578,
		19.324762, 11.849030, 13.923026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.286997, 13.093971, 14.117220>,  <19.310888, 12.517609, 13.716121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.286997, 13.093971, 14.117220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.601629, 12.886310, 14.250947>,  <19.790409, 12.761712, 14.331183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.601629, 12.886310, 14.250947>,  <19.286997, 13.093971, 14.117220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.601629, 12.886310, 14.250947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320341, -0.119777, -0.939699,
		0.527892, 0.846246, 0.072093,
		0.786582, -0.519154, 0.334317,
		19.837605, 12.730563, 14.351242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.966343, 13.353741, 13.967251>,  <19.286997, 13.093971, 14.117220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.966343, 13.353741, 13.967251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.995564, 12.955449, 13.989826>,  <20.013096, 12.716474, 14.003371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.995564, 12.955449, 13.989826>,  <19.966343, 13.353741, 13.967251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.995564, 12.955449, 13.989826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428888, -0.019725, -0.903143,
		0.900399, 0.090182, 0.425615,
		0.073052, -0.995730, 0.056438,
		20.017479, 12.656730, 14.006758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.592691, 13.457806, 13.726893>,  <19.966343, 13.353741, 13.967251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.592691, 13.457806, 13.726893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.940062, 13.260944, 13.750978>,  <21.148483, 13.142827, 13.765429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.940062, 13.260944, 13.750978>,  <20.592691, 13.457806, 13.726893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.940062, 13.260944, 13.750978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135437, 0.118638, -0.983657,
		0.476967, 0.862386, 0.169684,
		0.868423, -0.492154, 0.060213,
		21.200588, 13.113298, 13.769042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.147224, 13.840945, 13.522554>,  <20.592691, 13.457806, 13.726893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.147224, 13.840945, 13.522554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.264273, 13.466283, 13.445561>,  <21.334501, 13.241486, 13.399365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.264273, 13.466283, 13.445561>,  <21.147224, 13.840945, 13.522554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.264273, 13.466283, 13.445561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155061, 0.245109, -0.957015,
		0.943573, 0.250196, 0.216962,
		0.292620, -0.936656, -0.192482,
		21.352058, 13.185287, 13.387816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.768505, 13.903212, 13.161231>,  <21.147224, 13.840945, 13.522554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.768505, 13.903212, 13.161231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.603870, 13.554287, 13.055653>,  <21.505089, 13.344933, 12.992306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.603870, 13.554287, 13.055653>,  <21.768505, 13.903212, 13.161231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.603870, 13.554287, 13.055653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136553, 0.227319, -0.964199,
		0.901082, -0.432896, 0.025555,
		-0.411589, -0.872311, -0.263947,
		21.480394, 13.292594, 12.976469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.086010, 13.711711, 12.551950>,  <21.768505, 13.903212, 13.161231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.086010, 13.711711, 12.551950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.810001, 13.423123, 12.528796>,  <21.644396, 13.249970, 12.514904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.810001, 13.423123, 12.528796>,  <22.086010, 13.711711, 12.551950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.810001, 13.423123, 12.528796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137687, -0.052332, -0.989092,
		0.710571, -0.690466, 0.135447,
		-0.690023, -0.721469, -0.057883,
		21.602995, 13.206682, 12.511432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.368587, 13.179414, 12.073951>,  <22.086010, 13.711711, 12.551950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.368587, 13.179414, 12.073951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.971466, 13.132398, 12.083083>,  <21.733192, 13.104188, 12.088562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.971466, 13.132398, 12.083083>,  <22.368587, 13.179414, 12.073951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.971466, 13.132398, 12.083083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021038, -0.016470, -0.999643,
		0.117877, -0.992931, 0.013879,
		-0.992805, -0.117542, 0.022831,
		21.673624, 13.097136, 12.089932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.227501, 12.480640, 11.587102>,  <22.368587, 13.179414, 12.073951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.227501, 12.480640, 11.587102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.873432, 12.663740, 11.620414>,  <21.660992, 12.773601, 11.640401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.873432, 12.663740, 11.620414>,  <22.227501, 12.480640, 11.587102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.873432, 12.663740, 11.620414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054628, 0.075505, -0.995648,
		-0.462046, -0.885869, -0.041829,
		-0.885172, 0.457750, 0.083280,
		21.607880, 12.801065, 11.645398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.847120, 12.154468, 10.989758>,  <22.227501, 12.480640, 11.587102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.847120, 12.154468, 10.989758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.680819, 12.504951, 11.087256>,  <21.581038, 12.715240, 11.145756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.680819, 12.504951, 11.087256>,  <21.847120, 12.154468, 10.989758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.680819, 12.504951, 11.087256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157691, 0.194500, -0.968144,
		-0.895703, -0.440945, 0.057306,
		-0.415752, 0.876206, 0.243747,
		21.556093, 12.767813, 11.160380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.154797, 12.253041, 10.658159>,  <21.847120, 12.154468, 10.989758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.154797, 12.253041, 10.658159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.281811, 12.623936, 10.737561>,  <21.358019, 12.846473, 10.785202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.281811, 12.623936, 10.737561>,  <21.154797, 12.253041, 10.658159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.281811, 12.623936, 10.737561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173350, 0.262574, -0.949213,
		-0.932267, 0.266998, 0.244113,
		0.317535, 0.927236, 0.198505,
		21.377071, 12.902106, 10.797112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.780554, 12.614792, 10.148190>,  <21.154797, 12.253041, 10.658159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.780554, 12.614792, 10.148190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.049799, 12.891156, 10.253690>,  <21.211346, 13.056974, 10.316990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.049799, 12.891156, 10.253690>,  <20.780554, 12.614792, 10.148190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.049799, 12.891156, 10.253690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105863, 0.442984, -0.890257,
		-0.731924, 0.571322, 0.371319,
		0.673112, 0.690910, 0.263748,
		21.251732, 13.098430, 10.332814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.527470, 13.387859, 10.122958>,  <20.780554, 12.614792, 10.148190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.527470, 13.387859, 10.122958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.922939, 13.353768, 10.073545>,  <21.160221, 13.333314, 10.043898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.922939, 13.353768, 10.073545>,  <20.527470, 13.387859, 10.122958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.922939, 13.353768, 10.073545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067768, 0.480890, -0.874158,
		0.133907, 0.872629, 0.469668,
		0.988674, -0.085227, -0.123531,
		21.219542, 13.328200, 10.036486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.769899, 13.978595, 9.771787>,  <20.527470, 13.387859, 10.122958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.769899, 13.978595, 9.771787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.090294, 13.744731, 9.720259>,  <21.282530, 13.604413, 9.689342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.090294, 13.744731, 9.720259>,  <20.769899, 13.978595, 9.771787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.090294, 13.744731, 9.720259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095649, 0.337379, -0.936497,
		0.590993, 0.737800, 0.326158,
		0.800986, -0.584660, -0.128819,
		21.330589, 13.569333, 9.681613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.116732, 14.381348, 9.311575>,  <20.769899, 13.978595, 9.771787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.116732, 14.381348, 9.311575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.313726, 14.033509, 9.297392>,  <21.431923, 13.824806, 9.288882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.313726, 14.033509, 9.297392>,  <21.116732, 14.381348, 9.311575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.313726, 14.033509, 9.297392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141994, 0.120478, -0.982508,
		0.858658, 0.478839, 0.182812,
		0.492488, -0.869597, -0.035457,
		21.461473, 13.772630, 9.286755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.801172, 14.539980, 8.975618>,  <21.116732, 14.381348, 9.311575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.801172, 14.539980, 8.975618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.702612, 14.153665, 8.943277>,  <21.643476, 13.921875, 8.923873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.702612, 14.153665, 8.943277>,  <21.801172, 14.539980, 8.975618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.702612, 14.153665, 8.943277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091389, 0.059899, -0.994012,
		0.964849, -0.252315, 0.073503,
		-0.246401, -0.965789, -0.080853,
		21.628691, 13.863928, 8.919022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.303410, 14.220905, 8.585959>,  <21.801172, 14.539980, 8.975618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.303410, 14.220905, 8.585959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.983223, 13.986039, 8.537816>,  <21.791111, 13.845119, 8.508930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.983223, 13.986039, 8.537816>,  <22.303410, 14.220905, 8.585959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.983223, 13.986039, 8.537816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146197, 0.003470, -0.989249,
		0.581272, -0.809459, 0.083065,
		-0.800469, -0.587166, -0.120358,
		21.743082, 13.809890, 8.501709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.445251, 13.709167, 7.929970>,  <22.303410, 14.220905, 8.585959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.445251, 13.709167, 7.929970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.054697, 13.651123, 7.993992>,  <21.820364, 13.616297, 8.032405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.054697, 13.651123, 7.993992>,  <22.445251, 13.709167, 7.929970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.054697, 13.651123, 7.993992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144531, -0.111926, -0.983150,
		0.160579, -0.983064, 0.088310,
		-0.976384, -0.145110, 0.160056,
		21.761782, 13.607591, 8.042008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.114025, 13.087039, 7.487527>,  <22.445251, 13.709167, 7.929970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.114025, 13.087039, 7.487527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.823002, 13.347911, 7.572684>,  <21.648388, 13.504434, 7.623777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.823002, 13.347911, 7.572684>,  <22.114025, 13.087039, 7.487527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.823002, 13.347911, 7.572684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288433, -0.009228, -0.957456,
		-0.622468, -0.758008, 0.194824,
		-0.727557, 0.652179, 0.212890,
		21.604734, 13.543565, 7.636551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.632536, 12.883166, 6.949594>,  <22.114025, 13.087039, 7.487527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.632536, 12.883166, 6.949594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.498215, 13.235661, 7.082656>,  <21.417622, 13.447157, 7.162494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.498215, 13.235661, 7.082656>,  <21.632536, 12.883166, 6.949594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.498215, 13.235661, 7.082656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286519, 0.240865, -0.927303,
		-0.897298, -0.406703, 0.171608,
		-0.335803, 0.881236, 0.332656,
		21.397474, 13.500031, 7.182453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.878399, 13.001332, 6.763468>,  <21.632536, 12.883166, 6.949594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.878399, 13.001332, 6.763468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.056196, 13.355919, 6.815004>,  <21.162874, 13.568671, 6.845925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.056196, 13.355919, 6.815004>,  <20.878399, 13.001332, 6.763468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.056196, 13.355919, 6.815004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181112, 0.229795, -0.956239,
		-0.877281, 0.401709, 0.262693,
		0.444495, 0.886468, 0.128840,
		21.189545, 13.621860, 6.853656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.607023, 13.342695, 6.267620>,  <20.878399, 13.001332, 6.763468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.607023, 13.342695, 6.267620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.864576, 13.634850, 6.358789>,  <21.019108, 13.810143, 6.413491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.864576, 13.634850, 6.358789>,  <20.607023, 13.342695, 6.267620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.864576, 13.634850, 6.358789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108861, 0.382314, -0.917597,
		-0.757339, 0.566014, 0.325677,
		0.643884, 0.730386, 0.227925,
		21.057741, 13.853966, 6.427167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.317799, 13.934810, 6.001323>,  <20.607023, 13.342695, 6.267620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.317799, 13.934810, 6.001323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.701328, 14.033196, 6.058112>,  <20.931446, 14.092229, 6.092186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.701328, 14.033196, 6.058112>,  <20.317799, 13.934810, 6.001323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.701328, 14.033196, 6.058112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014531, 0.541740, -0.840421,
		-0.283628, 0.803753, 0.523007,
		0.958824, 0.245967, 0.141974,
		20.988976, 14.106986, 6.100704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.450422, 14.651423, 5.703793>,  <20.317799, 13.934810, 6.001323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.450422, 14.651423, 5.703793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.813007, 14.484415, 5.729105>,  <21.030558, 14.384211, 5.744293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.813007, 14.484415, 5.729105>,  <20.450422, 14.651423, 5.703793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.813007, 14.484415, 5.729105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118734, 0.108180, -0.987015,
		0.405251, 0.902206, 0.147635,
		0.906462, -0.417518, 0.063283,
		21.084946, 14.359159, 5.748090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.961260, 15.123704, 5.447971>,  <20.450422, 14.651423, 5.703793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.961260, 15.123704, 5.447971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.115404, 14.757087, 5.405173>,  <21.207891, 14.537117, 5.379495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.115404, 14.757087, 5.405173>,  <20.961260, 15.123704, 5.447971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.115404, 14.757087, 5.405173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226601, 0.206393, -0.951869,
		0.894511, 0.342567, 0.287225,
		0.385360, -0.916542, -0.106995,
		21.231012, 14.482124, 5.373075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.707668, 15.035559, 5.018872>,  <20.961260, 15.123704, 5.447971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.707668, 15.035559, 5.018872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.458286, 14.724189, 4.989583>,  <21.308657, 14.537367, 4.972010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.458286, 14.724189, 4.989583>,  <21.707668, 15.035559, 5.018872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.458286, 14.724189, 4.989583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289668, -0.142978, -0.946388,
		0.726222, -0.611239, 0.314624,
		-0.623453, -0.778424, -0.073223,
		21.271250, 14.490662, 4.967616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.309608, 14.670581, 5.235604>,  <21.707668, 15.035559, 5.018872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.309608, 14.670581, 5.235604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.540962, 14.745824, 4.918092>,  <22.679775, 14.790970, 4.727585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.540962, 14.745824, 4.918092>,  <22.309608, 14.670581, 5.235604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.540962, 14.745824, 4.918092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127912, -0.940102, -0.315986,
		-0.805672, 0.284296, -0.519680,
		0.578386, 0.188108, -0.793779,
		22.714478, 14.802257, 4.679958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.015915, 14.303012, 5.253175>,  <22.309608, 14.670581, 5.235604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.015915, 14.303012, 5.253175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.369381, 14.205815, 5.093128>,  <23.581461, 14.147497, 4.997099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.369381, 14.205815, 5.093128>,  <23.015915, 14.303012, 5.253175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.369381, 14.205815, 5.093128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394515, -0.073534, 0.915943,
		-0.251988, -0.967238, 0.030884,
		0.883663, -0.242991, -0.400119,
		23.634480, 14.132918, 4.973092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.692812, 14.546494, 5.528390>,  <23.015915, 14.303012, 5.253175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.692812, 14.546494, 5.528390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.059782, 14.643995, 5.402584>,  <24.279964, 14.702497, 5.327101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.059782, 14.643995, 5.402584>,  <23.692812, 14.546494, 5.528390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.059782, 14.643995, 5.402584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382056, -0.760506, 0.525036,
		-0.111210, -0.601842, -0.790834,
		0.917423, 0.243754, -0.314514,
		24.335009, 14.717121, 5.308230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.932417, 13.927594, 5.429416>,  <23.692812, 14.546494, 5.528390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.932417, 13.927594, 5.429416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.237978, 14.183270, 5.464947>,  <24.421314, 14.336675, 5.486265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.237978, 14.183270, 5.464947>,  <23.932417, 13.927594, 5.429416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.237978, 14.183270, 5.464947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429063, -0.605880, 0.669936,
		0.482034, -0.473653, -0.737086,
		0.763903, 0.639189, 0.088828,
		24.467150, 14.375026, 5.491595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.597836, 13.801582, 6.174104>,  <23.932417, 13.927594, 5.429416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.597836, 13.801582, 6.174104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.334063, 13.803377, 5.873405>,  <23.175798, 13.804454, 5.692985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.334063, 13.803377, 5.873405>,  <23.597836, 13.801582, 6.174104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.334063, 13.803377, 5.873405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717280, 0.295629, 0.630962,
		0.225070, 0.955292, -0.191729,
		-0.659434, 0.004487, -0.751749,
		23.136232, 13.804723, 5.647880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.307421, 14.378492, 6.306818>,  <23.597836, 13.801582, 6.174104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.307421, 14.378492, 6.306818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.085268, 14.122763, 6.094098>,  <22.951977, 13.969325, 5.966465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.085268, 14.122763, 6.094098>,  <23.307421, 14.378492, 6.306818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.085268, 14.122763, 6.094098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793400, 0.215784, 0.569170,
		-0.249131, 0.738039, -0.627082,
		-0.555384, -0.639325, -0.531802,
		22.918653, 13.930965, 5.934557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.838081, 14.793287, 6.569449>,  <23.307421, 14.378492, 6.306818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.838081, 14.793287, 6.569449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.174452, 14.850411, 6.360662>,  <24.376274, 14.884686, 6.235389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.174452, 14.850411, 6.360662>,  <23.838081, 14.793287, 6.569449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.174452, 14.850411, 6.360662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536157, -0.350636, 0.767848,
		-0.073364, -0.925559, -0.371427,
		0.840924, 0.142811, -0.521969,
		24.426729, 14.893254, 6.204072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.166071, 14.192044, 6.660200>,  <23.838081, 14.793287, 6.569449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.166071, 14.192044, 6.660200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.462624, 14.435806, 6.547788>,  <24.640554, 14.582064, 6.480341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.462624, 14.435806, 6.547788>,  <24.166071, 14.192044, 6.660200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.462624, 14.435806, 6.547788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519560, -0.256180, 0.815126,
		0.424748, -0.750331, -0.506550,
		0.741382, 0.609406, -0.281030,
		24.685038, 14.618628, 6.463479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.823568, 13.810750, 6.676107>,  <24.166071, 14.192044, 6.660200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.823568, 13.810750, 6.676107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.862442, 14.205935, 6.724246>,  <24.885767, 14.443047, 6.753129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.862442, 14.205935, 6.724246>,  <24.823568, 13.810750, 6.676107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.862442, 14.205935, 6.724246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527334, -0.153666, 0.835647,
		0.844082, -0.017750, -0.535921,
		0.097185, 0.987963, 0.120347,
		24.891598, 14.502324, 6.760350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551575, 13.858751, 6.929987>,  <24.823568, 13.810750, 6.676107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551575, 13.858751, 6.929987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364498, 14.201200, 7.017918>,  <25.252253, 14.406669, 7.070677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364498, 14.201200, 7.017918>,  <25.551575, 13.858751, 6.929987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364498, 14.201200, 7.017918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416417, -0.005961, 0.909154,
		0.779655, 0.516743, -0.353715,
		-0.467691, 0.856120, 0.219828,
		25.224192, 14.458035, 7.083867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075071, 14.324154, 7.134630>,  <25.551575, 13.858751, 6.929987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075071, 14.324154, 7.134630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740280, 14.478384, 7.289960>,  <25.539406, 14.570922, 7.383158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740280, 14.478384, 7.289960>,  <26.075071, 14.324154, 7.134630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740280, 14.478384, 7.289960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462074, 0.117781, 0.878986,
		0.293177, 0.915128, -0.276744,
		-0.836980, 0.385575, 0.388326,
		25.489185, 14.594056, 7.406458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347061, 14.763885, 7.685687>,  <26.075071, 14.324154, 7.134630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347061, 14.763885, 7.685687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.967379, 14.709308, 7.799100>,  <25.739569, 14.676561, 7.867148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.967379, 14.709308, 7.799100>,  <26.347061, 14.763885, 7.685687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.967379, 14.709308, 7.799100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280581, 0.040807, 0.958962,
		-0.142412, 0.989807, -0.000452,
		-0.949207, -0.136441, 0.283533,
		25.682617, 14.668375, 7.884160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221704, 15.310951, 8.171265>,  <26.347061, 14.763885, 7.685687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221704, 15.310951, 8.171265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932028, 15.041604, 8.230763>,  <25.758223, 14.879996, 8.266462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.932028, 15.041604, 8.230763>,  <26.221704, 15.310951, 8.171265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932028, 15.041604, 8.230763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196071, 0.005739, 0.980573,
		-0.661139, 0.739286, 0.127871,
		-0.724190, -0.673367, 0.148747,
		25.714771, 14.839594, 8.275388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.817350, 15.475411, 8.836684>,  <26.221704, 15.310951, 8.171265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.817350, 15.475411, 8.836684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752575, 15.085602, 8.774615>,  <25.713709, 14.851716, 8.737374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752575, 15.085602, 8.774615>,  <25.817350, 15.475411, 8.836684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.752575, 15.085602, 8.774615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070482, -0.168268, 0.983218,
		-0.984281, 0.148284, 0.095935,
		-0.161938, -0.974524, -0.155171,
		25.703993, 14.793244, 8.728064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.296518, 15.311133, 9.401586>,  <25.817350, 15.475411, 8.836684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.296518, 15.311133, 9.401586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467491, 14.967287, 9.289614>,  <25.570076, 14.760980, 9.222430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467491, 14.967287, 9.289614>,  <25.296518, 15.311133, 9.401586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467491, 14.967287, 9.289614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015066, -0.316371, 0.948516,
		-0.903921, -0.401210, -0.148179,
		0.427434, -0.859616, -0.279930,
		25.595722, 14.709402, 9.205635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.887648, 14.738767, 9.656422>,  <25.296518, 15.311133, 9.401586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.887648, 14.738767, 9.656422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.257233, 14.593457, 9.608551>,  <25.478985, 14.506271, 9.579829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.257233, 14.593457, 9.608551>,  <24.887648, 14.738767, 9.656422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.257233, 14.593457, 9.608551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026419, -0.372766, 0.927549,
		-0.381582, -0.853854, -0.354018,
		0.923957, -0.363289, -0.119683,
		25.534422, 14.484475, 9.572648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804214, 14.133585, 9.900842>,  <24.887648, 14.738767, 9.656422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804214, 14.133585, 9.900842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203487, 14.155837, 9.910151>,  <25.443050, 14.169188, 9.915736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203487, 14.155837, 9.910151>,  <24.804214, 14.133585, 9.900842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203487, 14.155837, 9.910151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001788, -0.413067, 0.910699,
		0.060277, -0.909000, -0.412415,
		0.998180, 0.055632, 0.023273,
		25.502941, 14.172526, 9.917132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.016127, 13.454971, 10.252015>,  <24.804214, 14.133585, 9.900842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.016127, 13.454971, 10.252015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334169, 13.696815, 10.270981>,  <25.524996, 13.841922, 10.282360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334169, 13.696815, 10.270981>,  <25.016127, 13.454971, 10.252015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334169, 13.696815, 10.270981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245411, -0.392255, 0.886515,
		0.554595, -0.693240, -0.460263,
		0.795109, 0.604610, 0.047414,
		25.572702, 13.878199, 10.285205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618395, 13.056611, 10.553729>,  <25.016127, 13.454971, 10.252015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618395, 13.056611, 10.553729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720703, 13.440362, 10.601354>,  <25.782087, 13.670612, 10.629929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720703, 13.440362, 10.601354>,  <25.618395, 13.056611, 10.553729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720703, 13.440362, 10.601354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444537, -0.226080, 0.866761,
		0.858469, -0.168765, -0.484303,
		0.255770, 0.959378, 0.119061,
		25.797434, 13.728175, 10.637072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419611, 13.095116, 10.775151>,  <25.618395, 13.056611, 10.553729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419611, 13.095116, 10.775151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228415, 13.429276, 10.883688>,  <26.113697, 13.629773, 10.948810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.228415, 13.429276, 10.883688>,  <26.419611, 13.095116, 10.775151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228415, 13.429276, 10.883688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279363, -0.148286, 0.948666,
		0.832754, 0.529258, -0.162501,
		-0.477993, 0.835402, 0.271341,
		26.085016, 13.679897, 10.965091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866173, 13.480886, 11.256433>,  <26.419611, 13.095116, 10.775151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866173, 13.480886, 11.256433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485659, 13.592898, 11.308033>,  <26.257351, 13.660106, 11.338993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.485659, 13.592898, 11.308033>,  <26.866173, 13.480886, 11.256433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.485659, 13.592898, 11.308033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072213, -0.204399, 0.976220,
		0.299740, 0.937978, 0.174219,
		-0.951284, 0.280031, 0.129001,
		26.200274, 13.676908, 11.346733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855137, 14.009919, 11.835361>,  <26.866173, 13.480886, 11.256433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855137, 14.009919, 11.835361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472456, 13.895307, 11.814878>,  <26.242847, 13.826539, 11.802588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472456, 13.895307, 11.814878>,  <26.855137, 14.009919, 11.835361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472456, 13.895307, 11.814878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050064, -0.011323, 0.998682,
		-0.286734, 0.958004, -0.003512,
		-0.956701, -0.286532, -0.051208,
		26.185446, 13.809347, 11.799516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583666, 14.419065, 12.329926>,  <26.855137, 14.009919, 11.835361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583666, 14.419065, 12.329926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347910, 14.097069, 12.302782>,  <26.206455, 13.903871, 12.286495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347910, 14.097069, 12.302782>,  <26.583666, 14.419065, 12.329926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347910, 14.097069, 12.302782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039232, -0.112426, 0.992885,
		-0.806895, 0.582536, 0.097844,
		-0.589391, -0.804992, -0.067862,
		26.171093, 13.855571, 12.282423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070913, 14.435968, 12.861012>,  <26.583666, 14.419065, 12.329926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070913, 14.435968, 12.861012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103622, 14.042129, 12.799201>,  <26.123247, 13.805825, 12.762115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103622, 14.042129, 12.799201>,  <26.070913, 14.435968, 12.861012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103622, 14.042129, 12.799201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063512, -0.159878, 0.985092,
		-0.994625, -0.070738, -0.075607,
		0.081772, -0.984599, -0.154526,
		26.128155, 13.746749, 12.752843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432940, 13.942525, 12.994269>,  <26.070913, 14.435968, 12.861012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432940, 13.942525, 12.994269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785124, 13.765804, 13.063088>,  <25.996435, 13.659772, 13.104380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785124, 13.765804, 13.063088>,  <25.432940, 13.942525, 12.994269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.785124, 13.765804, 13.063088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226895, -0.074008, 0.971103,
		-0.416301, -0.894055, -0.165404,
		0.880461, -0.441801, 0.172047,
		26.049263, 13.633264, 13.114702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.796587, 13.730494, 13.360219>,  <25.432940, 13.942525, 12.994269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.796587, 13.730494, 13.360219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.937372, 14.069441, 13.201175>,  <25.021843, 14.272809, 13.105748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.937372, 14.069441, 13.201175>,  <24.796587, 13.730494, 13.360219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.937372, 14.069441, 13.201175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714581, 0.517619, 0.470580,
		0.604564, 0.118499, 0.787693,
		0.351962, 0.847366, -0.397611,
		25.042961, 14.323650, 13.081891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.464045, 13.398629, 13.516146>,  <24.796587, 13.730494, 13.360219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.464045, 13.398629, 13.516146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853729, 13.477232, 13.560495>,  <26.087540, 13.524394, 13.587105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853729, 13.477232, 13.560495>,  <25.464045, 13.398629, 13.516146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853729, 13.477232, 13.560495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081633, -0.151131, 0.985137,
		0.210343, -0.968785, -0.131192,
		0.974213, 0.196507, 0.110875,
		26.145994, 13.536184, 13.593758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896507, 12.865571, 13.887516>,  <25.464045, 13.398629, 13.516146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896507, 12.865571, 13.887516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029625, 13.236112, 13.958084>,  <26.109495, 13.458436, 14.000424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.029625, 13.236112, 13.958084>,  <25.896507, 12.865571, 13.887516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.029625, 13.236112, 13.958084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210154, -0.109523, 0.971514,
		0.919285, -0.360388, 0.158228,
		0.332792, 0.926350, 0.176420,
		26.129463, 13.514017, 14.011010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367990, 12.770072, 14.353742>,  <25.896507, 12.865571, 13.887516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367990, 12.770072, 14.353742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204447, 13.134122, 14.380594>,  <26.106319, 13.352551, 14.396706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204447, 13.134122, 14.380594>,  <26.367990, 12.770072, 14.353742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204447, 13.134122, 14.380594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167032, -0.146950, 0.974939,
		0.897181, 0.387401, 0.212102,
		-0.408861, 0.910124, 0.067132,
		26.081789, 13.407159, 14.400734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679285, 13.186420, 14.988193>,  <26.367990, 12.770072, 14.353742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679285, 13.186420, 14.988193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484228, 13.519213, 15.094034>,  <26.367195, 13.718888, 15.157539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484228, 13.519213, 15.094034>,  <26.679285, 13.186420, 14.988193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484228, 13.519213, 15.094034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852478, 0.519155, -0.061314,
		-0.188382, 0.195670, -0.962406,
		-0.487641, 0.831980, 0.264604,
		26.337936, 13.768806, 15.173415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687149, 13.610065, 14.430784>,  <26.679285, 13.186420, 14.988193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687149, 13.610065, 14.430784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654900, 13.811687, 14.774745>,  <26.635550, 13.932659, 14.981121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654900, 13.811687, 14.774745>,  <26.687149, 13.610065, 14.430784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654900, 13.811687, 14.774745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818223, 0.526144, -0.231700,
		-0.569221, 0.684910, -0.454847,
		-0.080621, 0.504054, 0.859901,
		26.630713, 13.962903, 15.032715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494173, 14.340654, 14.389709>,  <26.687149, 13.610065, 14.430784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494173, 14.340654, 14.389709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731083, 14.270666, 14.704313>,  <26.873228, 14.228673, 14.893076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731083, 14.270666, 14.704313>,  <26.494173, 14.340654, 14.389709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731083, 14.270666, 14.704313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691237, 0.611905, -0.384401,
		-0.414011, 0.771335, 0.483360,
		0.592272, -0.174970, 0.786511,
		26.908764, 14.218175, 14.940267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233059, 15.061740, 14.637815>,  <26.494173, 14.340654, 14.389709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233059, 15.061740, 14.637815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432178, 15.278291, 14.908845>,  <26.551649, 15.408221, 15.071464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432178, 15.278291, 14.908845>,  <26.233059, 15.061740, 14.637815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432178, 15.278291, 14.908845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839267, 0.103691, 0.533740,
		0.218698, -0.834360, 0.505979,
		0.497797, 0.541379, 0.677574,
		26.581518, 15.440703, 15.112118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<17.726324, 22.138506, 19.636511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.349791, 22.111881, 19.768848>,  <17.123871, 22.095907, 19.848251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.349791, 22.111881, 19.768848>,  <17.726324, 22.138506, 19.636511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.349791, 22.111881, 19.768848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105396, -0.873335, -0.475582,
		0.320593, -0.482552, 0.815086,
		-0.941335, -0.066561, 0.330844,
		17.067390, 22.091913, 19.868101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.662895, 21.431540, 19.890593>,  <17.726324, 22.138506, 19.636511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.662895, 21.431540, 19.890593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.324049, 21.606112, 19.769316>,  <17.120741, 21.710855, 19.696550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.324049, 21.606112, 19.769316>,  <17.662895, 21.431540, 19.890593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.324049, 21.606112, 19.769316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149981, -0.743696, -0.651477,
		-0.509807, -0.506403, 0.695452,
		-0.847114, 0.436432, -0.303191,
		17.069914, 21.737041, 19.678358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.184361, 20.868704, 19.925722>,  <17.662895, 21.431540, 19.890593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.184361, 20.868704, 19.925722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.975214, 21.132895, 19.710175>,  <16.849726, 21.291409, 19.580845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.975214, 21.132895, 19.710175>,  <17.184361, 20.868704, 19.925722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.975214, 21.132895, 19.710175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237133, -0.719920, -0.652291,
		-0.818766, -0.213278, 0.533043,
		-0.522868, 0.660476, -0.538871,
		16.818354, 21.331038, 19.548513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.544041, 20.500288, 19.825232>,  <17.184361, 20.868704, 19.925722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.544041, 20.500288, 19.825232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.635529, 20.755337, 19.530985>,  <16.690420, 20.908365, 19.354437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.635529, 20.755337, 19.530985>,  <16.544041, 20.500288, 19.825232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.635529, 20.755337, 19.530985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174378, -0.716589, -0.675346,
		-0.957747, 0.282739, -0.052710,
		0.228718, 0.637620, -0.735615,
		16.704144, 20.946623, 19.310301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.942755, 20.443981, 19.345144>,  <16.544041, 20.500288, 19.825232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.942755, 20.443981, 19.345144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.225407, 20.637316, 19.138432>,  <16.394997, 20.753317, 19.014404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.225407, 20.637316, 19.138432>,  <15.942755, 20.443981, 19.345144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.225407, 20.637316, 19.138432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194198, -0.569827, -0.798489,
		-0.680414, 0.664593, -0.308793,
		0.706629, 0.483335, -0.516781,
		16.437395, 20.782316, 18.983397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.613811, 20.448170, 18.701838>,  <15.942755, 20.443981, 19.345144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.613811, 20.448170, 18.701838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.993687, 20.525066, 18.602936>,  <16.221613, 20.571203, 18.543594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.993687, 20.525066, 18.602936>,  <15.613811, 20.448170, 18.701838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.993687, 20.525066, 18.602936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071480, -0.635581, -0.768718,
		-0.304928, 0.747717, -0.589863,
		0.949689, 0.192240, -0.247253,
		16.278593, 20.582739, 18.528759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.622406, 20.610899, 17.952772>,  <15.613811, 20.448170, 18.701838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.622406, 20.610899, 17.952772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.994534, 20.497574, 18.045933>,  <16.217810, 20.429579, 18.101830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.994534, 20.497574, 18.045933>,  <15.622406, 20.610899, 17.952772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.994534, 20.497574, 18.045933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061230, -0.746099, -0.663014,
		0.361607, 0.602553, -0.711456,
		0.930318, -0.283313, 0.232900,
		16.273628, 20.412580, 18.115803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.932893, 20.481878, 17.348825>,  <15.622406, 20.610899, 17.952772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.932893, 20.481878, 17.348825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.153704, 20.281193, 17.615223>,  <16.286190, 20.160782, 17.775061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.153704, 20.281193, 17.615223>,  <15.932893, 20.481878, 17.348825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.153704, 20.281193, 17.615223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025682, -0.788112, -0.614996,
		0.833430, 0.356599, -0.422175,
		0.552028, -0.501714, 0.665994,
		16.319313, 20.130678, 17.815022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.387625, 20.168070, 16.958870>,  <15.932893, 20.481878, 17.348825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.387625, 20.168070, 16.958870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.400545, 19.948780, 17.293154>,  <16.408298, 19.817205, 17.493723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.400545, 19.948780, 17.293154>,  <16.387625, 20.168070, 16.958870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.400545, 19.948780, 17.293154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024003, -0.836328, -0.547704,
		0.999190, -0.002367, -0.040175,
		0.032303, -0.548224, 0.835707,
		16.410236, 19.784313, 17.543865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.008158, 19.849028, 16.988806>,  <16.387625, 20.168070, 16.958870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.008158, 19.849028, 16.988806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.757708, 19.632866, 17.213636>,  <16.607437, 19.503168, 17.348534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.757708, 19.632866, 17.213636>,  <17.008158, 19.849028, 16.988806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.757708, 19.632866, 17.213636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239267, -0.819251, -0.521132,
		0.742103, -0.191809, 0.642256,
		-0.626127, -0.540404, 0.562075,
		16.569870, 19.470745, 17.382259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.352465, 19.213917, 17.161755>,  <17.008158, 19.849028, 16.988806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.352465, 19.213917, 17.161755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.972998, 19.115368, 17.241087>,  <16.745317, 19.056238, 17.288687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.972998, 19.115368, 17.241087>,  <17.352465, 19.213917, 17.161755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.972998, 19.115368, 17.241087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136261, -0.884259, -0.446677,
		0.285424, -0.396722, 0.872436,
		-0.948665, -0.246371, 0.198331,
		16.688398, 19.041456, 17.300587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439476, 18.634796, 17.495583>,  <17.352465, 19.213917, 17.161755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.439476, 18.634796, 17.495583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.065197, 18.650414, 17.355330>,  <16.840630, 18.659784, 17.271177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.065197, 18.650414, 17.355330>,  <17.439476, 18.634796, 17.495583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.065197, 18.650414, 17.355330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108420, -0.913942, -0.391094,
		-0.335726, -0.403962, 0.850943,
		-0.935699, 0.039041, -0.350631,
		16.784487, 18.662127, 17.250139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.271240, 17.968439, 17.617437>,  <17.439476, 18.634796, 17.495583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.271240, 17.968439, 17.617437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.041027, 18.142385, 17.340410>,  <16.902899, 18.246754, 17.174194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.041027, 18.142385, 17.340410>,  <17.271240, 17.968439, 17.617437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.041027, 18.142385, 17.340410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005833, -0.849052, -0.528277,
		-0.817755, -0.300004, 0.491198,
		-0.575537, 0.434866, -0.692566,
		16.868366, 18.272846, 17.132639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.863365, 17.428667, 17.523888>,  <17.271240, 17.968439, 17.617437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.863365, 17.428667, 17.523888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.824202, 17.678823, 17.214230>,  <16.800703, 17.828917, 17.028435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.824202, 17.678823, 17.214230>,  <16.863365, 17.428667, 17.523888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.824202, 17.678823, 17.214230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049060, -0.779971, -0.623890,
		-0.993986, -0.023104, 0.107046,
		-0.097907, 0.625389, -0.774147,
		16.794830, 17.866440, 16.981985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.312223, 17.193642, 17.145718>,  <16.863365, 17.428667, 17.523888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.312223, 17.193642, 17.145718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.539827, 17.415436, 16.902809>,  <16.676390, 17.548512, 16.757065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.539827, 17.415436, 16.902809>,  <16.312223, 17.193642, 17.145718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.539827, 17.415436, 16.902809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029579, -0.724196, -0.688960,
		-0.821799, 0.409988, -0.395673,
		0.569010, 0.554483, -0.607270,
		16.710529, 17.581781, 16.720629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.969430, 17.239082, 16.444477>,  <16.312223, 17.193642, 17.145718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.969430, 17.239082, 16.444477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.349380, 17.344454, 16.377138>,  <16.577351, 17.407677, 16.336735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.349380, 17.344454, 16.377138>,  <15.969430, 17.239082, 16.444477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.349380, 17.344454, 16.377138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045159, -0.648460, -0.759908,
		-0.309347, 0.714216, -0.627853,
		0.949876, 0.263428, -0.168346,
		16.634344, 17.423483, 16.326633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.972560, 17.401264, 15.819598>,  <15.969430, 17.239082, 16.444477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.972560, 17.401264, 15.819598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.351801, 17.309099, 15.907246>,  <16.579346, 17.253799, 15.959834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.351801, 17.309099, 15.907246>,  <15.972560, 17.401264, 15.819598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.351801, 17.309099, 15.907246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067894, -0.526531, -0.847440,
		0.310635, 0.818336, -0.483562,
		0.948102, -0.230414, 0.219119,
		16.636230, 17.239975, 15.972981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.263414, 17.404470, 15.238985>,  <15.972560, 17.401264, 15.819598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.263414, 17.404470, 15.238985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.534561, 17.188412, 15.438478>,  <16.697250, 17.058777, 15.558173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.534561, 17.188412, 15.438478>,  <16.263414, 17.404470, 15.238985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.534561, 17.188412, 15.438478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047915, -0.709395, -0.703181,
		0.733620, 0.452768, -0.506758,
		0.677869, -0.540149, 0.498732,
		16.737923, 17.026367, 15.588097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.709618, 17.293699, 14.743643>,  <16.263414, 17.404470, 15.238985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.709618, 17.293699, 14.743643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.805586, 17.031921, 15.030457>,  <16.863167, 16.874855, 15.202546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.805586, 17.031921, 15.030457>,  <16.709618, 17.293699, 14.743643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.805586, 17.031921, 15.030457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062493, -0.747489, -0.661328,
		0.968779, 0.113857, -0.220237,
		0.239921, -0.654444, 0.717037,
		16.877562, 16.835588, 15.245568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.253996, 16.910776, 14.472372>,  <16.709618, 17.293699, 14.743643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.253996, 16.910776, 14.472372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.072601, 16.681147, 14.745074>,  <16.963764, 16.543369, 14.908695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.072601, 16.681147, 14.745074>,  <17.253996, 16.910776, 14.472372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.072601, 16.681147, 14.745074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176384, -0.691996, -0.700022,
		0.873635, -0.437701, 0.212553,
		-0.453487, -0.574073, 0.681756,
		16.936556, 16.508924, 14.949601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.492830, 16.283810, 14.375690>,  <17.253996, 16.910776, 14.472372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.492830, 16.283810, 14.375690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.155352, 16.198700, 14.572828>,  <16.952864, 16.147635, 14.691112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.155352, 16.198700, 14.572828>,  <17.492830, 16.283810, 14.375690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.155352, 16.198700, 14.572828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229038, -0.687654, -0.688966,
		0.485505, -0.694160, 0.531438,
		-0.843698, -0.212776, 0.492848,
		16.902243, 16.134867, 14.720683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.407631, 15.642067, 14.458410>,  <17.492830, 16.283810, 14.375690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.407631, 15.642067, 14.458410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.025852, 15.758212, 14.485904>,  <16.796785, 15.827899, 14.502399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.025852, 15.758212, 14.485904>,  <17.407631, 15.642067, 14.458410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.025852, 15.758212, 14.485904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227489, -0.559038, -0.797324,
		-0.193087, -0.776638, 0.599625,
		-0.954446, 0.290361, 0.068734,
		16.739519, 15.845321, 14.506524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.673594, 15.221695, 15.019068>,  <17.407631, 15.642067, 14.458410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.673594, 15.221695, 15.019068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.014893, 15.029017, 14.939129>,  <18.219671, 14.913411, 14.891166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.014893, 15.029017, 14.939129>,  <17.673594, 15.221695, 15.019068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.014893, 15.029017, 14.939129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488565, 0.604296, 0.629390,
		-0.182406, -0.634664, 0.750953,
		0.853248, -0.481693, -0.199848,
		18.270866, 14.884510, 14.879174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.912066, 15.038017, 15.646443>,  <17.673594, 15.221695, 15.019068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.912066, 15.038017, 15.646443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.215918, 15.046727, 15.386448>,  <18.398230, 15.051953, 15.230451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.215918, 15.046727, 15.386448>,  <17.912066, 15.038017, 15.646443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.215918, 15.046727, 15.386448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483006, 0.650379, 0.586270,
		0.435504, -0.759298, 0.483532,
		0.759632, 0.021774, -0.649988,
		18.443808, 15.053260, 15.191451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.421141, 15.023393, 16.072567>,  <17.912066, 15.038017, 15.646443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.421141, 15.023393, 16.072567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.577293, 15.143989, 15.724612>,  <18.670986, 15.216346, 15.515840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.577293, 15.143989, 15.724612>,  <18.421141, 15.023393, 16.072567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.577293, 15.143989, 15.724612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697310, 0.520110, 0.493198,
		0.601131, -0.799118, -0.007190,
		0.390383, 0.301490, -0.869887,
		18.694408, 15.234435, 15.463646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.054377, 15.065946, 16.236090>,  <18.421141, 15.023393, 16.072567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.054377, 15.065946, 16.236090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.008530, 15.295492, 15.911735>,  <18.981022, 15.433220, 15.717121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.008530, 15.295492, 15.911735>,  <19.054377, 15.065946, 16.236090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.008530, 15.295492, 15.911735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523516, 0.728616, 0.441645,
		0.844271, -0.373895, -0.383939,
		-0.114615, 0.573866, -0.810889,
		18.974146, 15.467652, 15.668468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.719799, 15.330279, 16.236088>,  <19.054377, 15.065946, 16.236090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.719799, 15.330279, 16.236088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.494446, 15.580433, 16.020126>,  <19.359234, 15.730525, 15.890550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.494446, 15.580433, 16.020126>,  <19.719799, 15.330279, 16.236088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.494446, 15.580433, 16.020126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455731, 0.780302, 0.428297,
		0.689136, -0.004754, -0.724616,
		-0.563383, 0.625385, -0.539901,
		19.325432, 15.768048, 15.858156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.200422, 15.888572, 16.287148>,  <19.719799, 15.330279, 16.236088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.200422, 15.888572, 16.287148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.838711, 16.016956, 16.174530>,  <19.621685, 16.093987, 16.106960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.838711, 16.016956, 16.174530>,  <20.200422, 15.888572, 16.287148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.838711, 16.016956, 16.174530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190851, 0.893762, 0.405912,
		0.381916, 0.313324, -0.869464,
		-0.904277, 0.320962, -0.281543,
		19.567429, 16.113245, 16.090067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.362469, 16.543690, 15.988861>,  <20.200422, 15.888572, 16.287148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.362469, 16.543690, 15.988861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.977852, 16.525072, 16.097137>,  <19.747082, 16.513901, 16.162104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.977852, 16.525072, 16.097137>,  <20.362469, 16.543690, 15.988861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.977852, 16.525072, 16.097137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060594, 0.925305, 0.374352,
		-0.267896, 0.376357, -0.886897,
		-0.961541, -0.046546, 0.270690,
		19.689390, 16.511108, 16.178345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.070862, 17.202473, 15.856017>,  <20.362469, 16.543690, 15.988861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.070862, 17.202473, 15.856017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.809807, 17.036072, 16.109318>,  <19.653173, 16.936232, 16.261297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.809807, 17.036072, 16.109318>,  <20.070862, 17.202473, 15.856017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.809807, 17.036072, 16.109318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088007, 0.871750, 0.481982,
		-0.752543, 0.258828, -0.605546,
		-0.652635, -0.416004, 0.633251,
		19.614016, 16.911270, 16.299294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.480740, 17.611517, 15.844602>,  <20.070862, 17.202473, 15.856017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.480740, 17.611517, 15.844602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.480171, 17.413898, 16.192375>,  <19.479830, 17.295328, 16.401039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.480171, 17.413898, 16.192375>,  <19.480740, 17.611517, 15.844602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.480171, 17.413898, 16.192375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023751, 0.869174, 0.493936,
		-0.999717, 0.021352, 0.010498,
		-0.001423, -0.494046, 0.869435,
		19.479744, 17.265684, 16.453205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.914928, 17.801540, 16.178259>,  <19.480740, 17.611517, 15.844602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.914928, 17.801540, 16.178259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.172722, 17.684498, 16.460825>,  <19.327398, 17.614273, 16.630365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.172722, 17.684498, 16.460825>,  <18.914928, 17.801540, 16.178259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.172722, 17.684498, 16.460825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111530, 0.878025, 0.465438,
		-0.756440, -0.378754, 0.533239,
		0.644483, -0.292604, 0.706416,
		19.366068, 17.596716, 16.672750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.575201, 18.168104, 16.764061>,  <18.914928, 17.801540, 16.178259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.575201, 18.168104, 16.764061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.931110, 18.035482, 16.889521>,  <19.144657, 17.955910, 16.964796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.931110, 18.035482, 16.889521>,  <18.575201, 18.168104, 16.764061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.931110, 18.035482, 16.889521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136985, 0.849540, 0.509429,
		-0.435359, -0.410311, 0.801316,
		0.889774, -0.331552, 0.313648,
		19.198042, 17.936016, 16.983616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.662727, 18.431643, 17.503695>,  <18.575201, 18.168104, 16.764061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.662727, 18.431643, 17.503695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.033184, 18.378000, 17.362684>,  <19.255459, 18.345816, 17.278078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.033184, 18.378000, 17.362684>,  <18.662727, 18.431643, 17.503695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.033184, 18.378000, 17.362684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273817, 0.881844, 0.383896,
		0.259392, -0.452070, 0.853433,
		0.926142, -0.134105, -0.352528,
		19.311028, 18.337769, 17.256926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.233042, 18.531549, 17.997906>,  <18.662727, 18.431643, 17.503695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.233042, 18.531549, 17.997906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.370588, 18.635624, 17.637005>,  <19.453115, 18.698069, 17.420464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.370588, 18.635624, 17.637005>,  <19.233042, 18.531549, 17.997906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.370588, 18.635624, 17.637005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419562, 0.817029, 0.395515,
		0.840075, -0.514554, 0.171781,
		0.343864, 0.260189, -0.902252,
		19.473747, 18.713680, 17.366329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.000813, 18.591486, 17.901270>,  <19.233042, 18.531549, 17.997906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.000813, 18.591486, 17.901270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.810766, 18.840330, 17.652355>,  <19.696739, 18.989637, 17.503006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.810766, 18.840330, 17.652355>,  <20.000813, 18.591486, 17.901270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.810766, 18.840330, 17.652355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324993, 0.781269, 0.532915,
		0.817707, 0.050957, -0.573375,
		-0.475116, 0.622111, -0.622289,
		19.668232, 19.026964, 17.465668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.400845, 19.083858, 17.798943>,  <20.000813, 18.591486, 17.901270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.400845, 19.083858, 17.798943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.058245, 19.241232, 17.665308>,  <19.852684, 19.335657, 17.585127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.058245, 19.241232, 17.665308>,  <20.400845, 19.083858, 17.798943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.058245, 19.241232, 17.665308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290685, 0.902551, 0.317653,
		0.426508, 0.174956, -0.887401,
		-0.856501, 0.393436, -0.334088,
		19.801294, 19.359262, 17.565081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.573772, 19.707485, 17.554289>,  <20.400845, 19.083858, 17.798943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.573772, 19.707485, 17.554289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.177002, 19.708466, 17.605013>,  <19.938940, 19.709055, 17.635447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.177002, 19.708466, 17.605013>,  <20.573772, 19.707485, 17.554289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.177002, 19.708466, 17.605013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043971, 0.944456, 0.325683,
		-0.118966, 0.328629, -0.936937,
		-0.991924, 0.002453, 0.126808,
		19.879425, 19.709202, 17.643055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.495913, 20.451450, 17.601542>,  <20.573772, 19.707485, 17.554289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.495913, 20.451450, 17.601542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.149458, 20.307526, 17.740305>,  <19.941586, 20.221170, 17.823563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.149458, 20.307526, 17.740305>,  <20.495913, 20.451450, 17.601542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.149458, 20.307526, 17.740305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114445, 0.818416, 0.563115,
		-0.486529, 0.448032, -0.750038,
		-0.866136, -0.359810, 0.346908,
		19.889618, 20.199583, 17.844378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.073280, 20.969248, 17.601665>,  <20.495913, 20.451450, 17.601542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.073280, 20.969248, 17.601665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.912764, 20.710770, 17.861326>,  <19.816454, 20.555683, 18.017122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.912764, 20.710770, 17.861326>,  <20.073280, 20.969248, 17.601665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.912764, 20.710770, 17.861326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149319, 0.745392, 0.649688,
		-0.903698, 0.163782, -0.395608,
		-0.401290, -0.646194, 0.649153,
		19.792377, 20.516912, 18.056072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<19.493513, 21.262211, 17.943802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.551260, 20.969603, 18.210346>,  <19.585907, 20.794037, 18.370272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.551260, 20.969603, 18.210346>,  <19.493513, 21.262211, 17.943802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.551260, 20.969603, 18.210346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138883, 0.651769, 0.745593,
		-0.979729, -0.200185, -0.007503,
		0.144366, -0.731521, 0.666360,
		19.594570, 20.750147, 18.410254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.872589, 21.236906, 18.370247>,  <19.493513, 21.262211, 17.943802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.872589, 21.236906, 18.370247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.152624, 21.065626, 18.598814>,  <19.320644, 20.962858, 18.735954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.152624, 21.065626, 18.598814>,  <18.872589, 21.236906, 18.370247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.152624, 21.065626, 18.598814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267587, 0.584605, 0.765921,
		-0.662023, -0.689116, 0.294694,
		0.700088, -0.428201, 0.571420,
		19.362650, 20.937166, 18.770241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.528948, 21.233408, 18.992270>,  <18.872589, 21.236906, 18.370247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.528948, 21.233408, 18.992270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.910517, 21.158548, 19.086084>,  <19.139458, 21.113632, 19.142374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.910517, 21.158548, 19.086084>,  <18.528948, 21.233408, 18.992270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.910517, 21.158548, 19.086084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135358, 0.429197, 0.893010,
		-0.267790, -0.883609, 0.384088,
		0.953922, -0.187150, 0.234539,
		19.196693, 21.102404, 19.156446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.544403, 21.118992, 19.703457>,  <18.528948, 21.233408, 18.992270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.544403, 21.118992, 19.703457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.917473, 21.224552, 19.605089>,  <19.141315, 21.287888, 19.546068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.917473, 21.224552, 19.605089>,  <18.544403, 21.118992, 19.703457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.917473, 21.224552, 19.605089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046348, 0.588423, 0.807224,
		0.357729, -0.764275, 0.536576,
		0.932675, 0.263898, -0.245918,
		19.197275, 21.303722, 19.531313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.013315, 20.928282, 20.327057>,  <18.544403, 21.118992, 19.703457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.013315, 20.928282, 20.327057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.182220, 21.218779, 20.110071>,  <19.283564, 21.393076, 19.979879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.182220, 21.218779, 20.110071>,  <19.013315, 20.928282, 20.327057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.182220, 21.218779, 20.110071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046379, 0.580340, 0.813052,
		0.905286, -0.368481, 0.211374,
		0.422263, 0.726242, -0.542464,
		19.308899, 21.436651, 19.947332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.533024, 21.264015, 20.760630>,  <19.013315, 20.928282, 20.327057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.533024, 21.264015, 20.760630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.503458, 21.526358, 20.460125>,  <19.485718, 21.683764, 20.279823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.503458, 21.526358, 20.460125>,  <19.533024, 21.264015, 20.760630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.503458, 21.526358, 20.460125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271942, 0.738027, 0.617546,
		0.959471, -0.158652, -0.232907,
		-0.073917, 0.655855, -0.751260,
		19.481283, 21.723114, 20.234747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.087376, 21.640856, 20.805651>,  <19.533024, 21.264015, 20.760630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.087376, 21.640856, 20.805651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.841152, 21.865719, 20.584719>,  <19.693419, 22.000637, 20.452160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.841152, 21.865719, 20.584719>,  <20.087376, 21.640856, 20.805651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.841152, 21.865719, 20.584719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316738, 0.818222, 0.479781,
		0.721642, 0.120388, -0.681718,
		-0.615556, 0.562156, -0.552332,
		19.656485, 22.034367, 20.419020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.458282, 22.269926, 20.649996>,  <20.087376, 21.640856, 20.805651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.458282, 22.269926, 20.649996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.077147, 22.370161, 20.581528>,  <19.848465, 22.430302, 20.540447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.077147, 22.370161, 20.581528>,  <20.458282, 22.269926, 20.649996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.077147, 22.370161, 20.581528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193783, 0.936492, 0.292287,
		0.233545, 0.245333, -0.940887,
		-0.952840, 0.250590, -0.171171,
		19.791294, 22.445337, 20.530176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.390755, 22.910170, 20.182255>,  <20.458282, 22.269926, 20.649996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.390755, 22.910170, 20.182255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.049492, 22.896629, 20.390476>,  <19.844734, 22.888506, 20.515409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.049492, 22.896629, 20.390476>,  <20.390755, 22.910170, 20.182255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.049492, 22.896629, 20.390476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072087, 0.980668, 0.181918,
		-0.516648, 0.192730, -0.834224,
		-0.853158, -0.033850, 0.520553,
		19.793545, 22.886475, 20.546642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.023630, 23.682631, 20.156591>,  <20.390755, 22.910170, 20.182255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.023630, 23.682631, 20.156591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.859751, 23.493263, 20.468494>,  <19.761423, 23.379642, 20.655636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.859751, 23.493263, 20.468494>,  <20.023630, 23.682631, 20.156591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.859751, 23.493263, 20.468494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056923, 0.866392, 0.496109,
		-0.910443, 0.158870, -0.381909,
		-0.409700, -0.473418, 0.779757,
		19.736841, 23.351238, 20.702421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.555376, 24.070730, 20.354313>,  <20.023630, 23.682631, 20.156591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.555376, 24.070730, 20.354313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.616074, 23.843859, 20.678112>,  <19.652493, 23.707737, 20.872391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.616074, 23.843859, 20.678112>,  <19.555376, 24.070730, 20.354313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.616074, 23.843859, 20.678112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205105, 0.819222, 0.535543,
		-0.966905, 0.084765, 0.240644,
		0.151746, -0.567177, 0.809496,
		19.661598, 23.673706, 20.920961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.180269, 24.354063, 20.816572>,  <19.555376, 24.070730, 20.354313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.180269, 24.354063, 20.816572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.449152, 24.149258, 21.030481>,  <19.610481, 24.026375, 21.158827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.449152, 24.149258, 21.030481>,  <19.180269, 24.354063, 20.816572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.449152, 24.149258, 21.030481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239166, 0.833757, 0.497643,
		-0.700670, -0.206620, 0.682913,
		0.672206, -0.512013, 0.534772,
		19.650814, 23.995653, 21.190912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.023531, 24.476078, 21.590786>,  <19.180269, 24.354063, 20.816572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.023531, 24.476078, 21.590786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.406427, 24.361376, 21.575500>,  <19.636166, 24.292555, 21.566330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.406427, 24.361376, 21.575500>,  <19.023531, 24.476078, 21.590786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.406427, 24.361376, 21.575500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204867, 0.578695, 0.789393,
		-0.204249, -0.763469, 0.612697,
		0.957242, -0.286754, -0.038212,
		19.693600, 24.275349, 21.564037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.080639, 24.268532, 22.270803>,  <19.023531, 24.476078, 21.590786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.080639, 24.268532, 22.270803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.454153, 24.340803, 22.147255>,  <19.678261, 24.384167, 22.073126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.454153, 24.340803, 22.147255>,  <19.080639, 24.268532, 22.270803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.454153, 24.340803, 22.147255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191929, 0.475619, 0.858457,
		0.302010, -0.860896, 0.409448,
		0.933784, 0.180678, -0.308873,
		19.734289, 24.395006, 22.054592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.464216, 24.057896, 22.806664>,  <19.080639, 24.268532, 22.270803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.464216, 24.057896, 22.806664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.682871, 24.325975, 22.605856>,  <19.814064, 24.486824, 22.485373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.682871, 24.325975, 22.605856>,  <19.464216, 24.057896, 22.806664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.682871, 24.325975, 22.605856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147943, 0.512788, 0.845672,
		0.824197, -0.536546, 0.181159,
		0.546638, 0.670199, -0.502016,
		19.846863, 24.527035, 22.455252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.173706, 24.197790, 23.144863>,  <19.464216, 24.057896, 22.806664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.173706, 24.197790, 23.144863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.130980, 24.523533, 22.916685>,  <20.105345, 24.718979, 22.779778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.130980, 24.523533, 22.916685>,  <20.173706, 24.197790, 23.144863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.130980, 24.523533, 22.916685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315206, 0.571871, 0.757370,
		0.942993, -0.098911, -0.317775,
		-0.106814, 0.814359, -0.570447,
		20.098936, 24.767841, 22.745550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.707680, 24.618200, 23.430023>,  <20.173706, 24.197790, 23.144863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.707680, 24.618200, 23.430023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.445116, 24.859499, 23.248817>,  <20.287579, 25.004278, 23.140095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.445116, 24.859499, 23.248817>,  <20.707680, 24.618200, 23.430023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.445116, 24.859499, 23.248817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176615, 0.706685, 0.685130,
		0.733441, 0.369715, -0.570416,
		-0.656407, 0.603247, -0.453015,
		20.248194, 25.040474, 23.112913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.027836, 25.232841, 23.468590>,  <20.707680, 24.618200, 23.430023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.027836, 25.232841, 23.468590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.652338, 25.345581, 23.389269>,  <20.427040, 25.413225, 23.341677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.652338, 25.345581, 23.389269>,  <21.027836, 25.232841, 23.468590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.652338, 25.345581, 23.389269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101927, 0.776756, 0.621499,
		0.329200, 0.563216, -0.757902,
		-0.938743, 0.281848, -0.198301,
		20.370714, 25.430136, 23.329779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.061846, 25.960295, 23.318289>,  <21.027836, 25.232841, 23.468590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.061846, 25.960295, 23.318289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.683664, 25.883089, 23.423254>,  <20.456755, 25.836765, 23.486233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.683664, 25.883089, 23.423254>,  <21.061846, 25.960295, 23.318289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.683664, 25.883089, 23.423254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029084, 0.752322, 0.658153,
		-0.324453, 0.629886, -0.705673,
		-0.945455, -0.193016, 0.262413,
		20.400028, 25.825184, 23.501978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.766155, 26.659525, 23.492476>,  <21.061846, 25.960295, 23.318289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.766155, 26.659525, 23.492476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.530102, 26.400797, 23.685707>,  <20.388470, 26.245560, 23.801645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.530102, 26.400797, 23.685707>,  <20.766155, 26.659525, 23.492476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.530102, 26.400797, 23.685707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012145, 0.605428, 0.795807,
		-0.807213, 0.463768, -0.365140,
		-0.590136, -0.646820, 0.483077,
		20.353062, 26.206751, 23.830629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.199356, 27.057281, 23.957291>,  <20.766155, 26.659525, 23.492476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.199356, 27.057281, 23.957291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.182379, 26.693624, 24.123018>,  <20.172194, 26.475430, 24.222454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.182379, 26.693624, 24.123018>,  <20.199356, 27.057281, 23.957291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.182379, 26.693624, 24.123018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189029, 0.414509, 0.890197,
		-0.981054, -0.040537, -0.189447,
		-0.042441, -0.909142, 0.414318,
		20.169647, 26.420881, 24.247314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.619717, 27.112494, 24.304964>,  <20.199356, 27.057281, 23.957291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.619717, 27.112494, 24.304964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.860771, 26.821424, 24.436005>,  <20.005404, 26.646784, 24.514629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.860771, 26.821424, 24.436005>,  <19.619717, 27.112494, 24.304964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.860771, 26.821424, 24.436005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139777, 0.307924, 0.941087,
		-0.785678, -0.612926, 0.083855,
		0.602638, -0.727670, 0.327602,
		20.041563, 26.603123, 24.534285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.890734, 27.348705, 24.943487>,  <19.619717, 27.112494, 24.304964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.890734, 27.348705, 24.943487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.937744, 26.961163, 25.030664>,  <19.965950, 26.728636, 25.082972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.937744, 26.961163, 25.030664>,  <19.890734, 27.348705, 24.943487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.937744, 26.961163, 25.030664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171753, 0.235988, 0.956457,
		-0.978105, -0.074977, 0.194139,
		0.117527, -0.968859, 0.217943,
		19.973001, 26.670506, 25.096048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.453548, 27.208158, 25.632408>,  <19.890734, 27.348705, 24.943487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.453548, 27.208158, 25.632408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.757786, 26.958942, 25.559393>,  <19.940329, 26.809414, 25.515583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.757786, 26.958942, 25.559393>,  <19.453548, 27.208158, 25.632408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.757786, 26.958942, 25.559393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367439, 0.181304, 0.912205,
		-0.535244, -0.760889, 0.366827,
		0.760594, -0.623039, -0.182539,
		19.985964, 26.772032, 25.504631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.674572, 27.316660, 25.456373>,  <19.453548, 27.208158, 25.632408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.674572, 27.316660, 25.456373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.360926, 27.366554, 25.699554>,  <18.172739, 27.396490, 25.845463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.360926, 27.366554, 25.699554>,  <18.674572, 27.316660, 25.456373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.360926, 27.366554, 25.699554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424575, -0.822303, -0.378887,
		0.452662, -0.555212, 0.697738,
		-0.784114, 0.124734, 0.607953,
		18.125692, 27.403975, 25.881941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.581928, 26.702417, 25.985849>,  <18.674572, 27.316660, 25.456373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.581928, 26.702417, 25.985849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.252609, 26.881609, 25.846426>,  <18.055017, 26.989124, 25.762772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.252609, 26.881609, 25.846426>,  <18.581928, 26.702417, 25.985849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.252609, 26.881609, 25.846426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231069, -0.825415, -0.515069,
		-0.518445, -0.343516, 0.783079,
		-0.823300, 0.447980, -0.348556,
		18.005619, 27.016003, 25.741859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.126049, 26.144926, 26.092896>,  <18.581928, 26.702417, 25.985849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.126049, 26.144926, 26.092896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.917608, 26.392265, 25.857574>,  <17.792543, 26.540668, 25.716383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.917608, 26.392265, 25.857574>,  <18.126049, 26.144926, 26.092896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.917608, 26.392265, 25.857574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321443, -0.780716, -0.535870,
		-0.790646, -0.090143, 0.605602,
		-0.521108, 0.618350, -0.588294,
		17.761278, 26.577770, 25.681084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.376463, 25.819550, 25.884890>,  <18.126049, 26.144926, 26.092896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.376463, 25.819550, 25.884890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.421284, 26.106045, 25.609367>,  <17.448175, 26.277941, 25.444054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.421284, 26.106045, 25.609367>,  <17.376463, 25.819550, 25.884890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.421284, 26.106045, 25.609367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394951, -0.603967, -0.692270,
		-0.911843, 0.349613, 0.215203,
		0.112051, 0.716236, -0.688803,
		17.454899, 26.320915, 25.402727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.768339, 25.767159, 25.457355>,  <17.376463, 25.819550, 25.884890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.768339, 25.767159, 25.457355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.052206, 25.929792, 25.227203>,  <17.222527, 26.027372, 25.089111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.052206, 25.929792, 25.227203>,  <16.768339, 25.767159, 25.457355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.052206, 25.929792, 25.227203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215230, -0.652524, -0.726560,
		-0.670857, 0.639454, -0.375565,
		0.709666, 0.406585, -0.575380,
		17.265106, 26.051767, 25.054590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.445126, 25.883036, 24.876503>,  <16.768339, 25.767159, 25.457355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.445126, 25.883036, 24.876503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.824169, 25.901806, 24.750114>,  <17.051596, 25.913069, 24.674282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.824169, 25.901806, 24.750114>,  <16.445126, 25.883036, 24.876503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.824169, 25.901806, 24.750114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263088, -0.446370, -0.855300,
		-0.181177, 0.893618, -0.410637,
		0.947607, 0.046927, -0.315972,
		17.108452, 25.915884, 24.655323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.432611, 25.969656, 24.155159>,  <16.445126, 25.883036, 24.876503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.432611, 25.969656, 24.155159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.807974, 25.845161, 24.215193>,  <17.033192, 25.770464, 24.251213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.807974, 25.845161, 24.215193>,  <16.432611, 25.969656, 24.155159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.807974, 25.845161, 24.215193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016676, -0.474637, -0.880024,
		0.345132, 0.823316, -0.450593,
		0.938406, -0.311239, 0.150084,
		17.089495, 25.751789, 24.260218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.599318, 25.820904, 23.485849>,  <16.432611, 25.969656, 24.155159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.599318, 25.820904, 23.485849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.899942, 25.641378, 23.679228>,  <17.080317, 25.533663, 23.795256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.899942, 25.641378, 23.679228>,  <16.599318, 25.820904, 23.485849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.899942, 25.641378, 23.679228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155735, -0.591435, -0.791171,
		0.641018, 0.669902, -0.374603,
		0.751560, -0.448816, 0.483448,
		17.125410, 25.506733, 23.824263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.259739, 25.869572, 23.080643>,  <16.599318, 25.820904, 23.485849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.259739, 25.869572, 23.080643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.294144, 25.542936, 23.308952>,  <17.314787, 25.346954, 23.445938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.294144, 25.542936, 23.308952>,  <17.259739, 25.869572, 23.080643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.294144, 25.542936, 23.308952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287985, -0.528065, -0.798882,
		0.953764, 0.233088, 0.189745,
		0.086012, -0.816589, 0.570776,
		17.319946, 25.297960, 23.480185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.961727, 25.442486, 22.929888>,  <17.259739, 25.869572, 23.080643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.961727, 25.442486, 22.929888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.686562, 25.196333, 23.083815>,  <17.521463, 25.048641, 23.176170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.686562, 25.196333, 23.083815>,  <17.961727, 25.442486, 22.929888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.686562, 25.196333, 23.083815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244187, -0.695525, -0.675735,
		0.683483, -0.370880, 0.628728,
		-0.687912, -0.615381, 0.384815,
		17.480188, 25.011719, 23.199259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.253565, 24.793331, 22.803888>,  <17.961727, 25.442486, 22.929888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.253565, 24.793331, 22.803888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.870987, 24.707523, 22.883080>,  <17.641439, 24.656038, 22.930595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.870987, 24.707523, 22.883080>,  <18.253565, 24.793331, 22.803888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.870987, 24.707523, 22.883080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021743, -0.728680, -0.684509,
		0.291103, -0.650390, 0.701607,
		-0.956444, -0.214518, 0.197980,
		17.584053, 24.643167, 22.942474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.177088, 24.004419, 22.880320>,  <18.253565, 24.793331, 22.803888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.177088, 24.004419, 22.880320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.798307, 24.114828, 22.814470>,  <17.571039, 24.181072, 22.774961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.798307, 24.114828, 22.814470>,  <18.177088, 24.004419, 22.880320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.798307, 24.114828, 22.814470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074340, -0.686463, -0.723355,
		-0.312667, -0.672742, 0.670565,
		-0.946949, 0.276019, -0.164623,
		17.514223, 24.197634, 22.765083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.800039, 23.407412, 22.928211>,  <18.177088, 24.004419, 22.880320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.800039, 23.407412, 22.928211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.582285, 23.660793, 22.708256>,  <17.451632, 23.812822, 22.576283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.582285, 23.660793, 22.708256>,  <17.800039, 23.407412, 22.928211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.582285, 23.660793, 22.708256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209511, -0.737441, -0.642095,
		-0.812250, -0.234339, 0.534167,
		-0.544384, 0.633456, -0.549890,
		17.418970, 23.850830, 22.543289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.208574, 23.048779, 22.725021>,  <17.800039, 23.407412, 22.928211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.208574, 23.048779, 22.725021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.208881, 23.349581, 22.461359>,  <17.209066, 23.530062, 22.303162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.208881, 23.349581, 22.461359>,  <17.208574, 23.048779, 22.725021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.208881, 23.349581, 22.461359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276317, -0.633334, -0.722868,
		-0.961066, 0.182691, 0.207306,
		0.000767, 0.752006, -0.659157,
		17.209112, 23.575182, 22.263613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.572891, 22.965555, 22.349020>,  <17.208574, 23.048779, 22.725021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.572891, 22.965555, 22.349020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.836512, 23.174286, 22.132374>,  <16.994684, 23.299524, 22.002386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.836512, 23.174286, 22.132374>,  <16.572891, 22.965555, 22.349020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.836512, 23.174286, 22.132374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214099, -0.560173, -0.800230,
		-0.720979, 0.643353, -0.257461,
		0.659053, 0.521827, -0.541614,
		17.034227, 23.330833, 21.969889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.245173, 23.169043, 21.747658>,  <16.572891, 22.965555, 22.349020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.245173, 23.169043, 21.747658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.630989, 23.191256, 21.644447>,  <16.862478, 23.204582, 21.582521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.630989, 23.191256, 21.644447>,  <16.245173, 23.169043, 21.747658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.630989, 23.191256, 21.644447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222501, -0.354760, -0.908096,
		-0.141964, 0.933307, -0.329825,
		0.964541, 0.055530, -0.258025,
		16.920351, 23.207914, 21.567039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.221090, 23.567396, 21.114014>,  <16.245173, 23.169043, 21.747658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.221090, 23.567396, 21.114014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.530945, 23.315914, 21.141350>,  <16.716858, 23.165026, 21.157751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.530945, 23.315914, 21.141350>,  <16.221090, 23.567396, 21.114014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.530945, 23.315914, 21.141350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210891, -0.358687, -0.909323,
		0.596209, 0.689981, -0.410440,
		0.774635, -0.628705, 0.068342,
		16.763336, 23.127302, 21.161852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.331554, 23.560913, 20.359949>,  <16.221090, 23.567396, 21.114014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.331554, 23.560913, 20.359949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.601536, 23.302149, 20.501902>,  <16.763525, 23.146891, 20.587072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.601536, 23.302149, 20.501902>,  <16.331554, 23.560913, 20.359949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.601536, 23.302149, 20.501902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129318, -0.369803, -0.920067,
		0.726439, 0.666895, -0.165942,
		0.674954, -0.646913, 0.354881,
		16.804022, 23.108074, 20.608366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.822683, 23.409801, 19.865496>,  <16.331554, 23.560913, 20.359949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.822683, 23.409801, 19.865496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.869406, 23.104059, 20.119146>,  <16.897438, 22.920614, 20.271338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.869406, 23.104059, 20.119146>,  <16.822683, 23.409801, 19.865496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.869406, 23.104059, 20.119146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058052, -0.642661, -0.763949,
		0.991457, 0.052420, -0.119438,
		0.116804, -0.764356, 0.634127,
		16.904448, 22.874752, 20.309385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.308731, 22.997574, 19.630381>,  <16.822683, 23.409801, 19.865496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.308731, 22.997574, 19.630381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.076149, 22.765190, 19.858204>,  <16.936600, 22.625759, 19.994898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.076149, 22.765190, 19.858204>,  <17.308731, 22.997574, 19.630381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.076149, 22.765190, 19.858204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092518, -0.742740, -0.663158,
		0.808300, -0.332903, 0.485621,
		-0.581457, -0.580959, 0.569557,
		16.901712, 22.590902, 20.029070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.372282, 13.905279, 2.168761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.532455, 13.723538, 2.487061>,  <19.628559, 13.614493, 2.678041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.532455, 13.723538, 2.487061>,  <19.372282, 13.905279, 2.168761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.532455, 13.723538, 2.487061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531063, 0.822769, 0.202541,
		-0.746744, 0.341489, 0.570753,
		0.400432, -0.454352, 0.795750,
		19.652586, 13.587233, 2.725786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.276979, 14.290410, 2.675724>,  <19.372282, 13.905279, 2.168761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.276979, 14.290410, 2.675724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.610270, 14.098971, 2.786493>,  <19.810244, 13.984108, 2.852954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.610270, 14.098971, 2.786493>,  <19.276979, 14.290410, 2.675724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.610270, 14.098971, 2.786493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487270, 0.872270, 0.041383,
		-0.261355, 0.100454, 0.960001,
		0.833223, -0.478596, 0.276921,
		19.860237, 13.955393, 2.869569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.628893, 14.629154, 3.281480>,  <19.276979, 14.290410, 2.675724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.628893, 14.629154, 3.281480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.916391, 14.463406, 3.058160>,  <20.088890, 14.363956, 2.924168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.916391, 14.463406, 3.058160>,  <19.628893, 14.629154, 3.281480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.916391, 14.463406, 3.058160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554873, 0.825722, 0.101482,
		0.418949, -0.382726, 0.823409,
		0.718747, -0.414372, -0.558300,
		20.132015, 14.339094, 2.890670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.333532, 14.704640, 3.666746>,  <19.628893, 14.629154, 3.281480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.333532, 14.704640, 3.666746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.360146, 14.679700, 3.268412>,  <20.376114, 14.664736, 3.029412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.360146, 14.679700, 3.268412>,  <20.333532, 14.704640, 3.666746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.360146, 14.679700, 3.268412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594957, 0.803688, -0.010571,
		0.800999, -0.591775, 0.090569,
		0.066533, -0.062352, -0.995834,
		20.380106, 14.660995, 2.969662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.770645, 15.225882, 3.451165>,  <20.333532, 14.704640, 3.666746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.770645, 15.225882, 3.451165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.029028, 14.974422, 3.277941>,  <21.184057, 14.823545, 3.174007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.029028, 14.974422, 3.277941>,  <20.770645, 15.225882, 3.451165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.029028, 14.974422, 3.277941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603173, -0.768029, 0.215207,
		-0.467891, 0.122195, -0.875298,
		0.645957, -0.628650, -0.433059,
		21.222815, 14.785827, 3.148024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.165346, 14.602197, 3.604302>,  <20.770645, 15.225882, 3.451165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.165346, 14.602197, 3.604302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.378729, 14.271098, 3.673884>,  <21.506758, 14.072439, 3.715634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.378729, 14.271098, 3.673884>,  <21.165346, 14.602197, 3.604302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.378729, 14.271098, 3.673884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380040, -0.050830, 0.923572,
		-0.755641, -0.558797, -0.341692,
		0.533458, -0.827746, 0.173956,
		21.538767, 14.022775, 3.726071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.787123, 14.205683, 4.137333>,  <21.165346, 14.602197, 3.604302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.787123, 14.205683, 4.137333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.172436, 14.100574, 4.159370>,  <21.403624, 14.037509, 4.172592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.172436, 14.100574, 4.159370>,  <20.787123, 14.205683, 4.137333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.172436, 14.100574, 4.159370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108130, -0.191883, 0.975443,
		-0.245752, -0.945584, -0.213252,
		0.963283, -0.262776, 0.055090,
		21.461422, 14.021743, 4.175898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.749945, 13.588711, 4.483419>,  <20.787123, 14.205683, 4.137333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.749945, 13.588711, 4.483419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.089409, 13.795149, 4.529766>,  <21.293087, 13.919012, 4.557574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.089409, 13.795149, 4.529766>,  <20.749945, 13.588711, 4.483419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.089409, 13.795149, 4.529766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131456, -0.006392, 0.991301,
		0.512347, -0.856507, 0.062419,
		0.848658, 0.516095, 0.115868,
		21.344006, 13.949977, 4.564527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.280556, 13.291916, 4.978170>,  <20.749945, 13.588711, 4.483419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.280556, 13.291916, 4.978170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.379982, 13.679200, 4.989361>,  <21.439638, 13.911571, 4.996076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.379982, 13.679200, 4.989361>,  <21.280556, 13.291916, 4.978170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.379982, 13.679200, 4.989361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101708, -0.054813, 0.993303,
		0.963261, -0.244055, -0.112099,
		0.248565, 0.968211, 0.027977,
		21.454552, 13.969664, 4.997755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.891874, 13.410913, 5.341431>,  <21.280556, 13.291916, 4.978170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.891874, 13.410913, 5.341431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.680319, 13.749513, 5.365818>,  <21.553385, 13.952672, 5.380450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.680319, 13.749513, 5.365818>,  <21.891874, 13.410913, 5.341431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.680319, 13.749513, 5.365818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168874, 0.034567, 0.985031,
		0.831720, 0.531267, -0.161233,
		-0.528889, 0.846499, 0.060967,
		21.521652, 14.003462, 5.384108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.270826, 13.895865, 5.789637>,  <21.891874, 13.410913, 5.341431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.270826, 13.895865, 5.789637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.897711, 14.040035, 5.790188>,  <21.673841, 14.126537, 5.790519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.897711, 14.040035, 5.790188>,  <22.270826, 13.895865, 5.789637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.897711, 14.040035, 5.790188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008064, -0.024691, 0.999663,
		0.360336, 0.932462, 0.025938,
		-0.932788, 0.360423, 0.001378,
		21.617874, 14.148162, 5.790601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.216846, 14.436331, 6.139997>,  <22.270826, 13.895865, 5.789637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.216846, 14.436331, 6.139997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.833469, 14.322236, 6.138062>,  <21.603443, 14.253779, 6.136901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.833469, 14.322236, 6.138062>,  <22.216846, 14.436331, 6.139997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.833469, 14.322236, 6.138062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012597, -0.059255, 0.998163,
		-0.285000, 0.956623, 0.060386,
		-0.958445, -0.285238, -0.004837,
		21.545937, 14.236665, 6.136611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.013760, 14.657331, 6.719214>,  <22.216846, 14.436331, 6.139997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.013760, 14.657331, 6.719214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.724051, 14.395248, 6.633300>,  <21.550224, 14.237999, 6.581752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.724051, 14.395248, 6.633300>,  <22.013760, 14.657331, 6.719214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.724051, 14.395248, 6.633300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114859, -0.192503, 0.974551,
		-0.679877, 0.730513, 0.064169,
		-0.724275, -0.655205, -0.214784,
		21.506767, 14.198687, 6.568865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.513420, 14.878537, 7.115023>,  <22.013760, 14.657331, 6.719214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.513420, 14.878537, 7.115023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.441874, 14.496964, 7.018678>,  <21.398945, 14.268019, 6.960872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.441874, 14.496964, 7.018678>,  <21.513420, 14.878537, 7.115023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.441874, 14.496964, 7.018678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173601, -0.210368, 0.962085,
		-0.968436, 0.213900, -0.127976,
		-0.178868, -0.953935, -0.240861,
		21.388214, 14.210783, 6.946420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.156364, 14.660670, 7.664912>,  <21.513420, 14.878537, 7.115023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.156364, 14.660670, 7.664912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.211195, 14.298409, 7.504411>,  <21.244093, 14.081053, 7.408111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.211195, 14.298409, 7.504411>,  <21.156364, 14.660670, 7.664912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.211195, 14.298409, 7.504411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182260, -0.421219, 0.888457,
		-0.973648, -0.048655, -0.222803,
		0.137077, -0.905653, -0.401251,
		21.252317, 14.026713, 7.384036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.569506, 14.238860, 7.857687>,  <21.156364, 14.660670, 7.664912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.569506, 14.238860, 7.857687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.896086, 14.014443, 7.803070>,  <21.092033, 13.879793, 7.770299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.896086, 14.014443, 7.803070>,  <20.569506, 14.238860, 7.857687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.896086, 14.014443, 7.803070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089403, -0.356449, 0.930027,
		-0.570455, -0.747112, -0.341181,
		0.816448, -0.561042, -0.136544,
		21.141020, 13.846131, 7.762107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.520817, 13.610003, 8.236361>,  <20.569506, 14.238860, 7.857687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.520817, 13.610003, 8.236361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.913984, 13.604446, 8.162959>,  <21.149885, 13.601112, 8.118918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.913984, 13.604446, 8.162959>,  <20.520817, 13.610003, 8.236361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.913984, 13.604446, 8.162959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150477, -0.513373, 0.844870,
		-0.105942, -0.858053, -0.502514,
		0.982921, -0.013891, -0.183505,
		21.208860, 13.600279, 8.107907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.767164, 12.899459, 8.472826>,  <20.520817, 13.610003, 8.236361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.767164, 12.899459, 8.472826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.091652, 13.133126, 8.483177>,  <21.286345, 13.273327, 8.489388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.091652, 13.133126, 8.483177>,  <20.767164, 12.899459, 8.472826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.091652, 13.133126, 8.483177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158731, -0.262587, 0.951763,
		0.562786, -0.767980, -0.305742,
		0.811219, 0.584170, 0.025878,
		21.335018, 13.308377, 8.490940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.382318, 12.564731, 8.828323>,  <20.767164, 12.899459, 8.472826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.382318, 12.564731, 8.828323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.470100, 12.954437, 8.848892>,  <21.522770, 13.188261, 8.861234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.470100, 12.954437, 8.848892>,  <21.382318, 12.564731, 8.828323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.470100, 12.954437, 8.848892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248348, -0.106756, 0.962770,
		0.943485, -0.198513, -0.265386,
		0.219454, 0.974267, 0.051422,
		21.535936, 13.246717, 8.864319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.066797, 12.618540, 9.172027>,  <21.382318, 12.564731, 8.828323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.066797, 12.618540, 9.172027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.885656, 12.973391, 9.207650>,  <21.776972, 13.186301, 9.229024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.885656, 12.973391, 9.207650>,  <22.066797, 12.618540, 9.172027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.885656, 12.973391, 9.207650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101060, -0.048171, 0.993713,
		0.885839, 0.459006, -0.067839,
		-0.452853, 0.887126, 0.089059,
		21.749800, 13.239529, 9.234368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.425203, 12.870994, 9.727726>,  <22.066797, 12.618540, 9.172027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.425203, 12.870994, 9.727726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.086132, 13.080995, 9.697223>,  <21.882690, 13.206995, 9.678921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.086132, 13.080995, 9.697223>,  <22.425203, 12.870994, 9.727726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.086132, 13.080995, 9.697223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039752, 0.080480, 0.995963,
		0.529021, 0.847287, -0.047351,
		-0.847677, 0.525003, -0.076257,
		21.831829, 13.238496, 9.674345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.459942, 13.359076, 10.247154>,  <22.425203, 12.870994, 9.727726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.459942, 13.359076, 10.247154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.067499, 13.351306, 10.170159>,  <21.832033, 13.346643, 10.123962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.067499, 13.351306, 10.170159>,  <22.459942, 13.359076, 10.247154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.067499, 13.351306, 10.170159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191711, -0.036067, 0.980789,
		-0.025995, 0.999161, 0.031661,
		-0.981107, -0.019426, -0.192487,
		21.773167, 13.345478, 10.112413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.139425, 13.977507, 10.682538>,  <22.459942, 13.359076, 10.247154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.139425, 13.977507, 10.682538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.905022, 13.663884, 10.600712>,  <21.764380, 13.475711, 10.551617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.905022, 13.663884, 10.600712>,  <22.139425, 13.977507, 10.682538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.905022, 13.663884, 10.600712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308179, -0.017828, 0.951161,
		-0.749411, 0.620434, -0.231182,
		-0.586011, -0.784056, -0.204565,
		21.729218, 13.428667, 10.539342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.618229, 14.133396, 11.103377>,  <22.139425, 13.977507, 10.682538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.618229, 14.133396, 11.103377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.559135, 13.748715, 11.011025>,  <21.523680, 13.517907, 10.955614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.559135, 13.748715, 11.011025>,  <21.618229, 14.133396, 11.103377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.559135, 13.748715, 11.011025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339474, -0.169952, 0.925134,
		-0.928941, 0.215052, -0.301365,
		-0.147734, -0.961701, -0.230880,
		21.514814, 13.460205, 10.941761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.056526, 13.963574, 11.424783>,  <21.618229, 14.133396, 11.103377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.056526, 13.963574, 11.424783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.230160, 13.609289, 11.358953>,  <21.334339, 13.396718, 11.319456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.230160, 13.609289, 11.358953>,  <21.056526, 13.963574, 11.424783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.230160, 13.609289, 11.358953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122455, -0.238998, 0.963268,
		-0.892511, -0.397987, -0.212205,
		0.434084, -0.885713, -0.164573,
		21.360386, 13.343575, 11.309582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.538979, 13.485764, 11.592007>,  <21.056526, 13.963574, 11.424783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.538979, 13.485764, 11.592007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.877951, 13.273992, 11.607828>,  <21.081335, 13.146929, 11.617321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.877951, 13.273992, 11.607828>,  <20.538979, 13.485764, 11.592007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.877951, 13.273992, 11.607828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175264, -0.208655, 0.962157,
		-0.501142, -0.822294, -0.269611,
		0.847431, -0.529430, 0.039552,
		21.132179, 13.115163, 11.619694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.371151, 12.924358, 11.961102>,  <20.538979, 13.485764, 11.592007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.371151, 12.924358, 11.961102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.764458, 12.977057, 12.011430>,  <21.000443, 13.008677, 12.041626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.764458, 12.977057, 12.011430>,  <20.371151, 12.924358, 11.961102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.764458, 12.977057, 12.011430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070284, -0.362827, 0.929202,
		0.168069, -0.922496, -0.347495,
		0.983266, 0.131747, 0.125817,
		21.059437, 13.016582, 12.049175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.604750, 12.443059, 12.384792>,  <20.371151, 12.924358, 11.961102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.604750, 12.443059, 12.384792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.929432, 12.673384, 12.423927>,  <21.124241, 12.811579, 12.447408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.929432, 12.673384, 12.423927>,  <20.604750, 12.443059, 12.384792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.929432, 12.673384, 12.423927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048426, -0.233282, 0.971203,
		0.582054, -0.783594, -0.217240,
		0.811707, 0.575813, 0.097837,
		21.172943, 12.846128, 12.453279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.147566, 12.018991, 12.672855>,  <20.604750, 12.443059, 12.384792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.147566, 12.018991, 12.672855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.205160, 12.406461, 12.753786>,  <21.239717, 12.638943, 12.802344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.205160, 12.406461, 12.753786>,  <21.147566, 12.018991, 12.672855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.205160, 12.406461, 12.753786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046014, -0.210790, 0.976448,
		0.988509, -0.131284, -0.074923,
		0.143985, 0.968675, 0.202327,
		21.248356, 12.697063, 12.814485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.701122, 11.950700, 13.122646>,  <21.147566, 12.018991, 12.672855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.701122, 11.950700, 13.122646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.585014, 12.327516, 13.189941>,  <21.515350, 12.553605, 13.230319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.585014, 12.327516, 13.189941>,  <21.701122, 11.950700, 13.122646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.585014, 12.327516, 13.189941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197845, -0.112932, 0.973706,
		0.936270, 0.315922, -0.153598,
		-0.290269, 0.942040, 0.168238,
		21.497934, 12.610127, 13.240413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.380291, 11.833020, 13.239928>,  <21.701122, 11.950700, 13.122646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.380291, 11.833020, 13.239928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.278538, 11.948681, 12.870782>,  <22.217485, 12.018077, 12.649294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.278538, 11.948681, 12.870782>,  <22.380291, 11.833020, 13.239928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.278538, 11.948681, 12.870782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452566, 0.878916, 0.150633,
		0.854677, -0.379339, -0.354441,
		-0.254382, 0.289151, -0.922866,
		22.202223, 12.035426, 12.593922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.973768, 12.335263, 12.987220>,  <22.380291, 11.833020, 13.239928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.973768, 12.335263, 12.987220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.641148, 12.416511, 12.780430>,  <22.441576, 12.465260, 12.656356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.641148, 12.416511, 12.780430>,  <22.973768, 12.335263, 12.987220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.641148, 12.416511, 12.780430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257719, 0.965580, -0.035166,
		0.492039, -0.162477, -0.855277,
		-0.831552, 0.203119, -0.516976,
		22.391682, 12.477447, 12.625337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.698404, 12.454117, 12.922915>,  <22.973768, 12.335263, 12.987220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.698404, 12.454117, 12.922915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.709562, 12.172740, 13.206998>,  <23.716257, 12.003914, 13.377447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.709562, 12.172740, 13.206998>,  <23.698404, 12.454117, 12.922915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.709562, 12.172740, 13.206998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998483, -0.014123, -0.053210,
		0.047460, 0.710612, 0.701981,
		0.027897, -0.703442, 0.710205,
		23.717932, 11.961707, 13.420059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.679043, 12.382356, 12.186072>,  <23.698404, 12.454117, 12.922915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.679043, 12.382356, 12.186072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.935183, 12.662705, 12.060390>,  <24.088867, 12.830915, 11.984980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.935183, 12.662705, 12.060390>,  <23.679043, 12.382356, 12.186072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.935183, 12.662705, 12.060390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767121, -0.604066, 0.215939,
		-0.038456, -0.379312, -0.924469,
		0.640349, 0.700876, -0.314208,
		24.127287, 12.872968, 11.966127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.036751, 12.120023, 11.566978>,  <23.679043, 12.382356, 12.186072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.036751, 12.120023, 11.566978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.227249, 12.342008, 11.839802>,  <24.341549, 12.475199, 12.003496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.227249, 12.342008, 11.839802>,  <24.036751, 12.120023, 11.566978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.227249, 12.342008, 11.839802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653421, -0.742421, 0.147828,
		0.588415, 0.375270, -0.716199,
		0.476245, 0.554963, 0.682060,
		24.370123, 12.508496, 12.044420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.773676, 11.844486, 11.651199>,  <24.036751, 12.120023, 11.566978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.773676, 11.844486, 11.651199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.718788, 12.057614, 11.985211>,  <24.685856, 12.185492, 12.185618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.718788, 12.057614, 11.985211>,  <24.773676, 11.844486, 11.651199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.718788, 12.057614, 11.985211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790373, -0.449233, 0.416532,
		0.597060, 0.717142, -0.359482,
		-0.137221, 0.532820, 0.835029,
		24.677622, 12.217461, 12.235720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.340178, 12.206828, 11.740252>,  <24.773676, 11.844486, 11.651199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.340178, 12.206828, 11.740252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.174940, 12.141979, 12.098708>,  <25.075798, 12.103069, 12.313782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.174940, 12.141979, 12.098708>,  <25.340178, 12.206828, 11.740252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.174940, 12.141979, 12.098708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870761, -0.358494, 0.336538,
		0.266701, 0.919347, 0.289262,
		-0.413094, -0.162123, 0.896141,
		25.051012, 12.093342, 12.367551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.342278, 12.893358, 12.146357>,  <25.340178, 12.206828, 11.740252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.342278, 12.893358, 12.146357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.603930, 13.192113, 12.194145>,  <25.760921, 13.371366, 12.222818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.603930, 13.192113, 12.194145>,  <25.342278, 12.893358, 12.146357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.603930, 13.192113, 12.194145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250502, 0.362955, -0.897504,
		-0.713697, 0.557156, 0.424516,
		0.654130, 0.746887, 0.119471,
		25.800169, 13.416179, 12.229986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.019388, 13.550961, 12.045144>,  <25.342278, 12.893358, 12.146357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.019388, 13.550961, 12.045144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.396570, 13.593108, 11.918824>,  <25.622879, 13.618396, 11.843032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.396570, 13.593108, 11.918824>,  <25.019388, 13.550961, 12.045144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396570, 13.593108, 11.918824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332848, 0.317225, -0.888020,
		0.006612, 0.942479, 0.334201,
		0.942957, 0.105367, -0.315800,
		25.679457, 13.624718, 11.824084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.044661, 14.201363, 11.609687>,  <25.019388, 13.550961, 12.045144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.044661, 14.201363, 11.609687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.416313, 14.071367, 11.539150>,  <25.639305, 13.993370, 11.496828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.416313, 14.071367, 11.539150>,  <25.044661, 14.201363, 11.609687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416313, 14.071367, 11.539150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010029, 0.498898, -0.866603,
		0.369613, 0.803419, 0.466801,
		0.929132, -0.324989, -0.176342,
		25.695053, 13.973870, 11.486248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.491852, 14.793726, 11.386198>,  <25.044661, 14.201363, 11.609687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.491852, 14.793726, 11.386198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.644232, 14.447763, 11.255468>,  <25.735661, 14.240186, 11.177031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.644232, 14.447763, 11.255468>,  <25.491852, 14.793726, 11.386198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.644232, 14.447763, 11.255468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053741, 0.332166, -0.941689,
		0.923032, 0.376302, 0.080058,
		0.380952, -0.864906, -0.326823,
		25.758516, 14.188292, 11.157421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017792, 15.011379, 10.786910>,  <25.491852, 14.793726, 11.386198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017792, 15.011379, 10.786910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.930382, 14.623467, 10.743506>,  <25.877935, 14.390720, 10.717464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.930382, 14.623467, 10.743506>,  <26.017792, 15.011379, 10.786910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930382, 14.623467, 10.743506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004122, 0.110279, -0.993892,
		0.975823, -0.217637, -0.020101,
		-0.218524, -0.969780, -0.108510,
		25.864824, 14.332534, 10.710954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515194, 14.828369, 10.325108>,  <26.017792, 15.011379, 10.786910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515194, 14.828369, 10.325108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.233908, 14.543995, 10.321992>,  <26.065136, 14.373370, 10.320123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.233908, 14.543995, 10.321992>,  <26.515194, 14.828369, 10.325108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233908, 14.543995, 10.321992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075997, -0.064271, -0.995035,
		0.706904, -0.700315, 0.099225,
		-0.703215, -0.710935, -0.007789,
		26.022943, 14.330714, 10.319655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783844, 14.260111, 9.909066>,  <26.515194, 14.828369, 10.325108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783844, 14.260111, 9.909066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.384369, 14.239639, 9.910097>,  <26.144684, 14.227356, 9.910715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.384369, 14.239639, 9.910097>,  <26.783844, 14.260111, 9.909066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.384369, 14.239639, 9.910097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013493, 0.214136, -0.976711,
		0.049434, -0.975462, -0.214545,
		-0.998686, -0.051177, 0.002577,
		26.084763, 14.224285, 9.910870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631090, 13.898066, 9.335950>,  <26.783844, 14.260111, 9.909066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631090, 13.898066, 9.335950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.291512, 14.089187, 9.426280>,  <26.087765, 14.203859, 9.480478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.291512, 14.089187, 9.426280>,  <26.631090, 13.898066, 9.335950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.291512, 14.089187, 9.426280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202962, 0.099771, -0.974090,
		-0.487956, -0.872782, 0.012277,
		-0.848944, 0.477804, 0.225825,
		26.036829, 14.232528, 9.494028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119644, 13.584660, 8.987446>,  <26.631090, 13.898066, 9.335950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119644, 13.584660, 8.987446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.955868, 13.946236, 9.036846>,  <25.857603, 14.163181, 9.066486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.955868, 13.946236, 9.036846>,  <26.119644, 13.584660, 8.987446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.955868, 13.946236, 9.036846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374029, -0.042843, -0.926427,
		-0.832143, -0.425509, 0.355641,
		-0.409440, 0.903939, 0.123501,
		25.833036, 14.217418, 9.073896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437799, 13.557405, 8.481702>,  <26.119644, 13.584660, 8.987446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437799, 13.557405, 8.481702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.524231, 13.938325, 8.567895>,  <25.576090, 14.166878, 8.619611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.524231, 13.938325, 8.567895>,  <25.437799, 13.557405, 8.481702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524231, 13.938325, 8.567895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367926, 0.283843, -0.885474,
		-0.904401, 0.112049, 0.411708,
		0.216077, 0.952302, 0.215482,
		25.589054, 14.224015, 8.632540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.850557, 13.882991, 8.422748>,  <25.437799, 13.557405, 8.481702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.850557, 13.882991, 8.422748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.116833, 14.180504, 8.398583>,  <25.276598, 14.359012, 8.384085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.116833, 14.180504, 8.398583>,  <24.850557, 13.882991, 8.422748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.116833, 14.180504, 8.398583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332935, 0.223574, -0.916062,
		-0.667844, 0.629923, 0.396461,
		0.665687, 0.743782, -0.060411,
		25.316540, 14.403639, 8.380460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.488081, 14.454717, 8.370381>,  <24.850557, 13.882991, 8.422748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.488081, 14.454717, 8.370381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.839571, 14.536007, 8.197620>,  <25.050465, 14.584782, 8.093964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.839571, 14.536007, 8.197620>,  <24.488081, 14.454717, 8.370381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.839571, 14.536007, 8.197620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466380, 0.172890, -0.867525,
		-0.101632, 0.963747, 0.246703,
		0.878726, 0.203226, -0.431901,
		25.103189, 14.596974, 8.068050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.387440, 15.021096, 7.940038>,  <24.488081, 14.454717, 8.370381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.387440, 15.021096, 7.940038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.727028, 14.880247, 7.782425>,  <24.930780, 14.795738, 7.687857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.727028, 14.880247, 7.782425>,  <24.387440, 15.021096, 7.940038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.727028, 14.880247, 7.782425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219247, 0.443740, -0.868922,
		0.480815, 0.824078, 0.299520,
		0.848969, -0.352122, -0.394033,
		24.981718, 14.774611, 7.664215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.588305, 15.544587, 7.450248>,  <24.387440, 15.021096, 7.940038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.588305, 15.544587, 7.450248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.775042, 15.211752, 7.330456>,  <24.887083, 15.012051, 7.258581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.775042, 15.211752, 7.330456>,  <24.588305, 15.544587, 7.450248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.775042, 15.211752, 7.330456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173225, 0.246046, -0.953653,
		0.867210, 0.497082, -0.029274,
		0.466841, -0.832088, -0.299480,
		24.915094, 14.962126, 7.240612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.078878, 15.815730, 6.918182>,  <24.588305, 15.544587, 7.450248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.078878, 15.815730, 6.918182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.000359, 15.427073, 6.865451>,  <24.953247, 15.193879, 6.833813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.000359, 15.427073, 6.865451>,  <25.078878, 15.815730, 6.918182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.000359, 15.427073, 6.865451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214234, 0.173694, -0.961215,
		0.956854, -0.160446, -0.242255,
		-0.196301, -0.971642, -0.131827,
		24.941467, 15.135581, 6.825903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<20.538370, 18.100597, 17.016420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.150089, 18.163015, 17.089506>,  <19.917120, 18.200466, 17.133358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.150089, 18.163015, 17.089506>,  <20.538370, 18.100597, 17.016420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.150089, 18.163015, 17.089506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182541, -0.973398, -0.138476,
		0.156245, -0.167772, 0.973365,
		-0.970704, 0.156043, 0.182714,
		19.858877, 18.209827, 17.144320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.343790, 17.664976, 17.454660>,  <20.538370, 18.100597, 17.016420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.343790, 17.664976, 17.454660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.007753, 17.759968, 17.259583>,  <19.806131, 17.816963, 17.142536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.007753, 17.759968, 17.259583>,  <20.343790, 17.664976, 17.454660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.007753, 17.759968, 17.259583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119875, -0.958124, -0.260053,
		-0.529031, -0.160006, 0.833381,
		-0.840093, 0.237477, -0.487697,
		19.755726, 17.831211, 17.113274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.860912, 17.139587, 17.724720>,  <20.343790, 17.664976, 17.454660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.860912, 17.139587, 17.724720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.731293, 17.284098, 17.374985>,  <19.653521, 17.370804, 17.165144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.731293, 17.284098, 17.374985>,  <19.860912, 17.139587, 17.724720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.731293, 17.284098, 17.374985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153454, -0.932044, -0.328248,
		-0.933506, 0.027797, 0.357482,
		-0.324064, 0.361278, -0.874334,
		19.634079, 17.392481, 17.112682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.346840, 16.632355, 17.599770>,  <19.860912, 17.139587, 17.724720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.346840, 16.632355, 17.599770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.399696, 16.836857, 17.260086>,  <19.431410, 16.959558, 17.056276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.399696, 16.836857, 17.260086>,  <19.346840, 16.632355, 17.599770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.399696, 16.836857, 17.260086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323369, -0.787616, -0.524493,
		-0.937001, 0.343916, 0.061246,
		0.132144, 0.511256, -0.849209,
		19.439339, 16.990234, 17.005323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.770376, 16.495897, 17.202707>,  <19.346840, 16.632355, 17.599770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.770376, 16.495897, 17.202707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.049278, 16.604465, 16.937326>,  <19.216619, 16.669607, 16.778099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.049278, 16.604465, 16.937326>,  <18.770376, 16.495897, 17.202707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.049278, 16.604465, 16.937326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313749, -0.716622, -0.622907,
		-0.644513, 0.642482, -0.414511,
		0.697255, 0.271420, -0.663451,
		19.258455, 16.685892, 16.738291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.447666, 16.531183, 16.527269>,  <18.770376, 16.495897, 17.202707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.447666, 16.531183, 16.527269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.838104, 16.510622, 16.442801>,  <19.072367, 16.498285, 16.392118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.838104, 16.510622, 16.442801>,  <18.447666, 16.531183, 16.527269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.838104, 16.510622, 16.442801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193224, -0.650079, -0.734888,
		-0.099503, 0.758125, -0.644473,
		0.976096, -0.051404, -0.211173,
		19.130934, 16.495201, 16.379448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.396599, 16.608315, 15.805929>,  <18.447666, 16.531183, 16.527269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.396599, 16.608315, 15.805929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.751211, 16.440569, 15.884106>,  <18.963978, 16.339922, 15.931011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.751211, 16.440569, 15.884106>,  <18.396599, 16.608315, 15.805929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.751211, 16.440569, 15.884106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110242, -0.601722, -0.791061,
		0.449343, 0.679755, -0.579676,
		0.886531, -0.419362, 0.195442,
		19.017170, 16.314760, 15.942739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.524689, 16.479984, 15.106246>,  <18.396599, 16.608315, 15.805929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.524689, 16.479984, 15.106246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.762953, 16.257866, 15.338396>,  <18.905910, 16.124596, 15.477686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.762953, 16.257866, 15.338396>,  <18.524689, 16.479984, 15.106246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.762953, 16.257866, 15.338396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126209, -0.778274, -0.615110,
		0.793259, 0.293148, -0.533670,
		0.595660, -0.555296, 0.580375,
		18.941650, 16.091278, 15.512508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.009068, 16.236435, 14.655452>,  <18.524689, 16.479984, 15.106246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.009068, 16.236435, 14.655452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.984623, 15.982725, 14.963727>,  <18.969955, 15.830499, 15.148692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.984623, 15.982725, 14.963727>,  <19.009068, 16.236435, 14.655452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.984623, 15.982725, 14.963727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128189, -0.760749, -0.636261,
		0.989865, -0.137677, -0.034816,
		-0.061112, -0.634275, 0.770688,
		18.966290, 15.792442, 15.194934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.193974, 15.698272, 14.360053>,  <19.009068, 16.236435, 14.655452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.193974, 15.698272, 14.360053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.054605, 15.540079, 14.699982>,  <18.970984, 15.445164, 14.903939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.054605, 15.540079, 14.699982>,  <19.193974, 15.698272, 14.360053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.054605, 15.540079, 14.699982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372541, -0.773523, -0.512713,
		0.860126, -0.495233, 0.122179,
		-0.348421, -0.395481, 0.849822,
		18.950079, 15.421434, 14.954928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.380482, 14.921582, 14.338339>,  <19.193974, 15.698272, 14.360053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.380482, 14.921582, 14.338339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.083374, 14.987928, 14.597810>,  <18.905109, 15.027737, 14.753492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.083374, 14.987928, 14.597810>,  <19.380482, 14.921582, 14.338339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.083374, 14.987928, 14.597810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575436, -0.653440, -0.491822,
		0.342295, -0.738583, 0.580801,
		-0.742769, 0.165866, 0.648677,
		18.860542, 15.037688, 14.792413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.180134, 14.155069, 14.394241>,  <19.380482, 14.921582, 14.338339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.180134, 14.155069, 14.394241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.883308, 14.381629, 14.537648>,  <18.705214, 14.517565, 14.623693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.883308, 14.381629, 14.537648>,  <19.180134, 14.155069, 14.394241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.883308, 14.381629, 14.537648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657512, -0.719112, -0.224848,
		0.130460, -0.402581, 0.906040,
		-0.742064, 0.566398, 0.358517,
		18.660688, 14.551549, 14.645204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.836426, 13.795296, 14.947427>,  <19.180134, 14.155069, 14.394241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.836426, 13.795296, 14.947427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.595058, 14.054369, 14.761354>,  <18.450237, 14.209813, 14.649711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.595058, 14.054369, 14.761354>,  <18.836426, 13.795296, 14.947427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.595058, 14.054369, 14.761354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639723, -0.741448, -0.202508,
		-0.476069, 0.175390, 0.861741,
		-0.603418, 0.647683, -0.465182,
		18.414034, 14.248673, 14.621799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.122860, 13.807802, 15.102776>,  <18.836426, 13.795296, 14.947427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.122860, 13.807802, 15.102776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.200706, 13.876296, 14.716449>,  <18.247414, 13.917393, 14.484653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.200706, 13.876296, 14.716449>,  <18.122860, 13.807802, 15.102776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.200706, 13.876296, 14.716449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533894, -0.807515, -0.250751,
		-0.822849, 0.564445, -0.065734,
		0.194617, 0.171235, -0.965817,
		18.259092, 13.927667, 14.426703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.355436, 13.296402, 15.473747>,  <18.122860, 13.807802, 15.102776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.355436, 13.296402, 15.473747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.493048, 12.988495, 15.688821>,  <18.575615, 12.803751, 15.817865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.493048, 12.988495, 15.688821>,  <18.355436, 13.296402, 15.473747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.493048, 12.988495, 15.688821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392659, 0.402219, 0.827066,
		-0.852916, -0.495659, -0.163882,
		0.344026, -0.769768, 0.537684,
		18.596256, 12.757565, 15.850126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.764818, 13.027271, 15.854436>,  <18.355436, 13.296402, 15.473747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.764818, 13.027271, 15.854436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.077013, 12.898660, 16.068897>,  <18.264330, 12.821492, 16.197575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.077013, 12.898660, 16.068897>,  <17.764818, 13.027271, 15.854436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.077013, 12.898660, 16.068897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492631, 0.211715, 0.844092,
		-0.384913, -0.922927, 0.006844,
		0.780485, -0.321530, 0.536154,
		18.311159, 12.802200, 16.229744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.461246, 12.778916, 16.441622>,  <17.764818, 13.027271, 15.854436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.461246, 12.778916, 16.441622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.839169, 12.833225, 16.560894>,  <18.065922, 12.865810, 16.632458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.839169, 12.833225, 16.560894>,  <17.461246, 12.778916, 16.441622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.839169, 12.833225, 16.560894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324230, 0.256543, 0.910528,
		0.047127, -0.956949, 0.286404,
		0.944804, 0.135771, 0.298182,
		18.122610, 12.873958, 16.650349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.548946, 12.383119, 17.124388>,  <17.461246, 12.778916, 16.441622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.548946, 12.383119, 17.124388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.841761, 12.654577, 17.100510>,  <18.017448, 12.817452, 17.086184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.841761, 12.654577, 17.100510>,  <17.548946, 12.383119, 17.124388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.841761, 12.654577, 17.100510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291540, 0.391255, 0.872883,
		0.615736, -0.621576, 0.484265,
		0.732034, 0.678648, -0.059695,
		18.061371, 12.858171, 17.082602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.884220, 12.363282, 17.816492>,  <17.548946, 12.383119, 17.124388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.884220, 12.363282, 17.816492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.971607, 12.723022, 17.664999>,  <18.024038, 12.938867, 17.574102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.971607, 12.723022, 17.664999>,  <17.884220, 12.363282, 17.816492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.971607, 12.723022, 17.664999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242666, 0.425986, 0.871578,
		0.945191, -0.098505, 0.311306,
		0.218467, 0.899351, -0.378735,
		18.037148, 12.992827, 17.551378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.267271, 12.730800, 18.500656>,  <17.884220, 12.363282, 17.816492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.267271, 12.730800, 18.500656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.195778, 13.017266, 18.230793>,  <18.152882, 13.189146, 18.068876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.195778, 13.017266, 18.230793>,  <18.267271, 12.730800, 18.500656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.195778, 13.017266, 18.230793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167690, 0.653492, 0.738125,
		0.969502, 0.245062, 0.003292,
		-0.178735, 0.716166, -0.674656,
		18.142157, 13.232116, 18.028397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.515638, 13.262589, 18.756287>,  <18.267271, 12.730800, 18.500656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.515638, 13.262589, 18.756287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.305216, 13.426203, 18.458036>,  <18.178963, 13.524371, 18.279087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.305216, 13.426203, 18.458036>,  <18.515638, 13.262589, 18.756287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.305216, 13.426203, 18.458036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087903, 0.845894, 0.526058,
		0.845894, 0.342279, -0.409034,
		-0.526058, 0.409034, -0.745623,
		18.147398, 13.548913, 18.234350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.829565, 13.899975, 18.447613>,  <18.515638, 13.262589, 18.756287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.829565, 13.899975, 18.447613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.432549, 13.903760, 18.398991>,  <18.194340, 13.906031, 18.369818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.432549, 13.903760, 18.398991>,  <18.829565, 13.899975, 18.447613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.432549, 13.903760, 18.398991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064507, 0.805261, 0.589400,
		0.103461, 0.592844, -0.798643,
		-0.992540, 0.009462, -0.121556,
		18.134787, 13.906599, 18.362524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.688204, 14.549326, 18.317261>,  <18.829565, 13.899975, 18.447613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.688204, 14.549326, 18.317261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.330986, 14.411350, 18.432838>,  <18.116655, 14.328565, 18.502186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.330986, 14.411350, 18.432838>,  <18.688204, 14.549326, 18.317261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.330986, 14.411350, 18.432838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201474, 0.880704, 0.428682,
		-0.402343, 0.324617, -0.856004,
		-0.893044, -0.344940, 0.288944,
		18.063072, 14.307868, 18.519522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.340729, 15.205123, 18.371986>,  <18.688204, 14.549326, 18.317261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.340729, 15.205123, 18.371986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.117546, 14.933839, 18.563282>,  <17.983637, 14.771069, 18.678061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.117546, 14.933839, 18.563282>,  <18.340729, 15.205123, 18.371986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.117546, 14.933839, 18.563282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287384, 0.698535, 0.655331,
		-0.778521, 0.228207, -0.584659,
		-0.557956, -0.678211, 0.478241,
		17.950159, 14.730375, 18.706755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.701128, 15.463931, 18.510038>,  <18.340729, 15.205123, 18.371986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.701128, 15.463931, 18.510038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.727449, 15.183414, 18.793970>,  <17.743242, 15.015104, 18.964329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.727449, 15.183414, 18.793970>,  <17.701128, 15.463931, 18.510038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.727449, 15.183414, 18.793970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135135, 0.698556, 0.702680,
		-0.988640, -0.142163, -0.048800,
		0.065805, -0.701292, 0.709831,
		17.747190, 14.973027, 19.006920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.082424, 15.464231, 18.931446>,  <17.701128, 15.463931, 18.510038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.082424, 15.464231, 18.931446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.345915, 15.276536, 19.166697>,  <17.504009, 15.163918, 19.307846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.345915, 15.276536, 19.166697>,  <17.082424, 15.464231, 18.931446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.345915, 15.276536, 19.166697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151268, 0.683125, 0.714464,
		-0.737017, -0.559603, 0.379013,
		0.658729, -0.469239, 0.588125,
		17.543533, 15.135764, 19.343134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860531, 15.562169, 19.525557>,  <17.082424, 15.464231, 18.931446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.860531, 15.562169, 19.525557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.243067, 15.471124, 19.598888>,  <17.472588, 15.416496, 19.642887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.243067, 15.471124, 19.598888>,  <16.860531, 15.562169, 19.525557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.243067, 15.471124, 19.598888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009326, 0.650722, 0.759259,
		-0.292113, -0.724399, 0.624433,
		0.956338, -0.227613, 0.183329,
		17.529968, 15.402840, 19.653887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.877331, 15.340776, 20.263475>,  <16.860531, 15.562169, 19.525557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.877331, 15.340776, 20.263475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.234959, 15.481077, 20.152037>,  <17.449535, 15.565258, 20.085173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.234959, 15.481077, 20.152037>,  <16.877331, 15.340776, 20.263475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.234959, 15.481077, 20.152037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017786, 0.649271, 0.760349,
		0.447579, -0.674848, 0.586731,
		0.894068, 0.350752, -0.278597,
		17.503180, 15.586303, 20.068457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.906736, 14.929338, 20.988516>,  <16.877331, 15.340776, 20.263475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.906736, 14.929338, 20.988516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.509403, 14.906870, 21.028782>,  <16.271004, 14.893389, 21.052942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.509403, 14.906870, 21.028782>,  <16.906736, 14.929338, 20.988516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.509403, 14.906870, 21.028782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025436, -0.744930, -0.666657,
		0.112435, -0.664773, 0.738536,
		-0.993333, -0.056170, 0.100665,
		16.211403, 14.890018, 21.058981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.739939, 14.289786, 21.243465>,  <16.906736, 14.929338, 20.988516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.739939, 14.289786, 21.243465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.426611, 14.436140, 21.042452>,  <16.238615, 14.523952, 20.921843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.426611, 14.436140, 21.042452>,  <16.739939, 14.289786, 21.243465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.426611, 14.436140, 21.042452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028816, -0.828931, -0.558609,
		-0.620952, -0.423088, 0.659860,
		-0.783319, 0.365884, -0.502535,
		16.191616, 14.545905, 20.891691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.483686, 13.721790, 20.953384>,  <16.739939, 14.289786, 21.243465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.483686, 13.721790, 20.953384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.230766, 13.981233, 20.783913>,  <16.079014, 14.136898, 20.682230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.230766, 13.981233, 20.783913>,  <16.483686, 13.721790, 20.953384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.230766, 13.981233, 20.783913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332238, -0.721058, -0.608024,
		-0.699865, -0.243693, 0.671418,
		-0.632303, 0.648606, -0.423679,
		16.041075, 14.175815, 20.656809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.804122, 13.473645, 20.952246>,  <16.483686, 13.721790, 20.953384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.804122, 13.473645, 20.952246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.833699, 13.730819, 20.647308>,  <15.851445, 13.885123, 20.464346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.833699, 13.730819, 20.647308>,  <15.804122, 13.473645, 20.952246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.833699, 13.730819, 20.647308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422559, -0.672222, -0.607915,
		-0.903314, 0.367086, 0.221972,
		0.073943, 0.642935, -0.762343,
		15.855882, 13.923699, 20.418606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.135400, 13.531258, 20.830189>,  <15.804122, 13.473645, 20.952246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.135400, 13.531258, 20.830189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320580, 13.664256, 20.501526>,  <15.431688, 13.744056, 20.304327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.320580, 13.664256, 20.501526>,  <15.135400, 13.531258, 20.830189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.320580, 13.664256, 20.501526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522185, -0.646735, -0.555929,
		-0.716240, 0.686425, -0.125781,
		0.462951, 0.332497, -0.821658,
		15.459466, 13.764005, 20.255028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.657030, 13.608246, 20.339195>,  <15.135400, 13.531258, 20.830189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.657030, 13.608246, 20.339195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.994156, 13.601506, 20.124020>,  <15.196431, 13.597463, 19.994915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.994156, 13.601506, 20.124020>,  <14.657030, 13.608246, 20.339195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.994156, 13.601506, 20.124020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468742, -0.514128, -0.718299,
		-0.264467, 0.857548, -0.441213,
		0.842815, -0.016848, -0.537939,
		15.247001, 13.596452, 19.962639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.488095, 13.815242, 19.646618>,  <14.657030, 13.608246, 20.339195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.488095, 13.815242, 19.646618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.831909, 13.611230, 19.633532>,  <15.038198, 13.488823, 19.625679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.831909, 13.611230, 19.633532>,  <14.488095, 13.815242, 19.646618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.831909, 13.611230, 19.633532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361015, -0.560602, -0.745247,
		0.361757, 0.652377, -0.665985,
		0.859535, -0.510029, -0.032716,
		15.089769, 13.458221, 19.623716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.582872, 13.801146, 19.019644>,  <14.488095, 13.815242, 19.646618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.582872, 13.801146, 19.019644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.793617, 13.509140, 19.193768>,  <14.920064, 13.333937, 19.298243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.793617, 13.509140, 19.193768>,  <14.582872, 13.801146, 19.019644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.793617, 13.509140, 19.193768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208512, -0.607523, -0.766446,
		0.823977, 0.313044, -0.472298,
		0.526863, -0.730013, 0.435311,
		14.951676, 13.290136, 19.324360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.884989, 13.455585, 18.437777>,  <14.582872, 13.801146, 19.019644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.884989, 13.455585, 18.437777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.933232, 13.180213, 18.723858>,  <14.962178, 13.014989, 18.895506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.933232, 13.180213, 18.723858>,  <14.884989, 13.455585, 18.437777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.933232, 13.180213, 18.723858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234628, -0.719819, -0.653308,
		0.964574, -0.089012, -0.248342,
		0.120609, -0.688432, 0.715203,
		14.969415, 12.973683, 18.938419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.214524, 12.841140, 18.112989>,  <14.884989, 13.455585, 18.437777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.214524, 12.841140, 18.112989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.050545, 12.697989, 18.448576>,  <14.952157, 12.612098, 18.649927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.050545, 12.697989, 18.448576>,  <15.214524, 12.841140, 18.112989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.050545, 12.697989, 18.448576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327706, -0.800602, -0.501643,
		0.851206, -0.480582, 0.210926,
		-0.409949, -0.357879, 0.838966,
		14.927560, 12.590625, 18.700266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.454281, 12.134507, 18.212606>,  <15.214524, 12.841140, 18.112989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.454281, 12.134507, 18.212606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.100677, 12.187582, 18.391903>,  <14.888515, 12.219427, 18.499481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.100677, 12.187582, 18.391903>,  <15.454281, 12.134507, 18.212606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.100677, 12.187582, 18.391903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356596, -0.811421, -0.463072,
		0.302270, -0.569202, 0.764619,
		-0.884009, 0.132688, 0.448244,
		14.835475, 12.227388, 18.526377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.314967, 11.479795, 18.616375>,  <15.454281, 12.134507, 18.212606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.314967, 11.479795, 18.616375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.009292, 11.692182, 18.469902>,  <14.825887, 11.819613, 18.382019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.009292, 11.692182, 18.469902>,  <15.314967, 11.479795, 18.616375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.009292, 11.692182, 18.469902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269144, -0.778449, -0.567079,
		-0.586154, -0.334800, 0.737789,
		-0.764189, 0.530967, -0.366181,
		14.780035, 11.851472, 18.360048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<15.861104, 19.438753, 24.430151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.059143, 19.174000, 24.655287>,  <16.177967, 19.015148, 24.790367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.059143, 19.174000, 24.655287>,  <15.861104, 19.438753, 24.430151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.059143, 19.174000, 24.655287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212648, -0.720416, -0.660138,
		0.842412, 0.207147, -0.497425,
		0.495099, -0.661884, 0.562838,
		16.207672, 18.975435, 24.824139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218864, 18.928751, 23.939095>,  <15.861104, 19.438753, 24.430151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.218864, 18.928751, 23.939095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.231638, 18.748577, 24.295990>,  <16.239302, 18.640472, 24.510128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.231638, 18.748577, 24.295990>,  <16.218864, 18.928751, 23.939095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.231638, 18.748577, 24.295990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075487, -0.889057, -0.451531,
		0.996635, 0.081771, 0.005612,
		0.031933, -0.450435, 0.892238,
		16.241219, 18.613447, 24.563662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.761734, 18.450130, 23.926224>,  <16.218864, 18.928751, 23.939095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.761734, 18.450130, 23.926224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.516520, 18.307388, 24.208170>,  <16.369390, 18.221743, 24.377338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.516520, 18.307388, 24.208170>,  <16.761734, 18.450130, 23.926224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.516520, 18.307388, 24.208170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006613, -0.894464, -0.447092,
		0.790026, -0.269423, 0.550700,
		-0.613038, -0.356856, 0.704868,
		16.332607, 18.200331, 24.419630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.880680, 17.842741, 23.820187>,  <16.761734, 18.450130, 23.926224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.880680, 17.842741, 23.820187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.544586, 17.830721, 24.036741>,  <16.342930, 17.823509, 24.166674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.544586, 17.830721, 24.036741>,  <16.880680, 17.842741, 23.820187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.544586, 17.830721, 24.036741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168076, -0.934848, -0.312745,
		0.515513, -0.353774, 0.780442,
		-0.840236, -0.030050, 0.541387,
		16.292515, 17.821707, 24.199158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.974077, 17.169888, 24.115545>,  <16.880680, 17.842741, 23.820187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.974077, 17.169888, 24.115545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.596441, 17.301729, 24.118633>,  <16.369860, 17.380835, 24.120487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.596441, 17.301729, 24.118633>,  <16.974077, 17.169888, 24.115545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.596441, 17.301729, 24.118633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283485, -0.799584, -0.529435,
		-0.168330, -0.502022, 0.848315,
		-0.944088, 0.329604, 0.007721,
		16.313215, 17.400610, 24.120949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.636038, 16.570814, 24.345770>,  <16.974077, 17.169888, 24.115545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.636038, 16.570814, 24.345770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.362017, 16.821165, 24.196650>,  <16.197603, 16.971375, 24.107178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.362017, 16.821165, 24.196650>,  <16.636038, 16.570814, 24.345770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.362017, 16.821165, 24.196650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376449, -0.742258, -0.554382,
		-0.623688, -0.239441, 0.744098,
		-0.685054, 0.625876, -0.372800,
		16.156500, 17.008928, 24.084810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.909333, 16.263975, 24.437010>,  <16.636038, 16.570814, 24.345770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.909333, 16.263975, 24.437010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.924652, 16.503363, 24.116917>,  <15.933844, 16.646996, 23.924862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.924652, 16.503363, 24.116917>,  <15.909333, 16.263975, 24.437010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.924652, 16.503363, 24.116917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351578, -0.741546, -0.571404,
		-0.935375, 0.303228, 0.182008,
		0.038298, 0.598467, -0.800232,
		15.936141, 16.682903, 23.876846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.351264, 16.075188, 24.027727>,  <15.909333, 16.263975, 24.437010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.351264, 16.075188, 24.027727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.587765, 16.265491, 23.767242>,  <15.729665, 16.379673, 23.610952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.587765, 16.265491, 23.767242>,  <15.351264, 16.075188, 24.027727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.587765, 16.265491, 23.767242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301763, -0.618307, -0.725696,
		-0.747905, 0.625580, -0.222009,
		0.591251, 0.475758, -0.651212,
		15.765140, 16.408218, 23.571878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.072545, 15.944209, 23.398264>,  <15.351264, 16.075188, 24.027727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.072545, 15.944209, 23.398264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.414408, 16.097591, 23.258251>,  <15.619526, 16.189621, 23.174244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.414408, 16.097591, 23.258251>,  <15.072545, 15.944209, 23.398264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.414408, 16.097591, 23.258251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075439, -0.575311, -0.814448,
		-0.513682, 0.722480, -0.462766,
		0.854658, 0.383457, -0.350031,
		15.670805, 16.212629, 23.153242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.866197, 16.125322, 22.804403>,  <15.072545, 15.944209, 23.398264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.866197, 16.125322, 22.804403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.264387, 16.094465, 22.782209>,  <15.503302, 16.075951, 22.768892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.264387, 16.094465, 22.782209>,  <14.866197, 16.125322, 22.804403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.264387, 16.094465, 22.782209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090768, -0.599206, -0.795433,
		0.028114, 0.796870, -0.603497,
		0.995475, -0.077142, -0.055484,
		15.563029, 16.071323, 22.765564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.043286, 16.255692, 22.081856>,  <14.866197, 16.125322, 22.804403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.043286, 16.255692, 22.081856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.366549, 16.069420, 22.226091>,  <15.560507, 15.957657, 22.312634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.366549, 16.069420, 22.226091>,  <15.043286, 16.255692, 22.081856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.366549, 16.069420, 22.226091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016514, -0.594082, -0.804235,
		0.588735, 0.655904, -0.472421,
		0.808158, -0.465680, 0.360588,
		15.608996, 15.929716, 22.334269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.639019, 16.383188, 21.672367>,  <15.043286, 16.255692, 22.081856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.639019, 16.383188, 21.672367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.704382, 16.043615, 21.873407>,  <15.743600, 15.839871, 21.994032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.704382, 16.043615, 21.873407>,  <15.639019, 16.383188, 21.672367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.704382, 16.043615, 21.873407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195706, -0.471432, -0.859914,
		0.966952, 0.238879, 0.089106,
		0.163408, -0.848934, 0.502602,
		15.753405, 15.788935, 22.024187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.093241, 16.057112, 21.300667>,  <15.639019, 16.383188, 21.672367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.093241, 16.057112, 21.300667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.956118, 15.744686, 21.509441>,  <15.873844, 15.557230, 21.634706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.956118, 15.744686, 21.509441>,  <16.093241, 16.057112, 21.300667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.956118, 15.744686, 21.509441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300689, -0.617606, -0.726739,
		0.889983, -0.092189, 0.446577,
		-0.342806, -0.781066, 0.521939,
		15.853276, 15.510366, 21.666023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575319, 15.599780, 20.955753>,  <16.093241, 16.057112, 21.300667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.575319, 15.599780, 20.955753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.311220, 15.387744, 21.168571>,  <16.152760, 15.260522, 21.296263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.311220, 15.387744, 21.168571>,  <16.575319, 15.599780, 20.955753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.311220, 15.387744, 21.168571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011014, -0.701497, -0.712587,
		0.750966, -0.476345, 0.457325,
		-0.660250, -0.530091, 0.532047,
		16.113146, 15.228717, 21.328186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.360876, 15.694738, 20.988352>,  <16.575319, 15.599780, 20.955753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.360876, 15.694738, 20.988352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.521427, 15.842786, 20.653231>,  <17.617758, 15.931614, 20.452158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.521427, 15.842786, 20.653231>,  <17.360876, 15.694738, 20.988352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.521427, 15.842786, 20.653231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231111, 0.844191, 0.483663,
		0.886277, -0.387755, 0.253298,
		0.401375, 0.370119, -0.837801,
		17.641840, 15.953821, 20.401890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.037865, 15.801036, 21.168558>,  <17.360876, 15.694738, 20.988352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.037865, 15.801036, 21.168558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.997629, 16.031164, 20.843870>,  <17.973488, 16.169241, 20.649057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.997629, 16.031164, 20.843870>,  <18.037865, 15.801036, 21.168558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.997629, 16.031164, 20.843870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686875, 0.630389, 0.361681,
		0.719781, -0.521168, -0.458584,
		-0.100590, 0.575321, -0.811719,
		17.967453, 16.203760, 20.600355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.691273, 16.049343, 21.001173>,  <18.037865, 15.801036, 21.168558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.691273, 16.049343, 21.001173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.466711, 16.316372, 20.805552>,  <18.331974, 16.476589, 20.688179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.466711, 16.316372, 20.805552>,  <18.691273, 16.049343, 21.001173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.466711, 16.316372, 20.805552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712351, 0.690609, 0.124965,
		0.421169, -0.278224, -0.863254,
		-0.561403, 0.667571, -0.489056,
		18.298290, 16.516644, 20.658834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.149458, 16.300997, 20.516500>,  <18.691273, 16.049343, 21.001173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.149458, 16.300997, 20.516500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.856594, 16.564400, 20.586140>,  <18.680876, 16.722441, 20.627924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.856594, 16.564400, 20.586140>,  <19.149458, 16.300997, 20.516500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.856594, 16.564400, 20.586140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667395, 0.744639, -0.009832,
		-0.136116, 0.108995, -0.984679,
		-0.732159, 0.658508, 0.174100,
		18.636946, 16.761951, 20.638369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.350426, 16.965694, 20.112396>,  <19.149458, 16.300997, 20.516500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.350426, 16.965694, 20.112396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.072857, 17.063971, 20.383131>,  <18.906315, 17.122936, 20.545572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.072857, 17.063971, 20.383131>,  <19.350426, 16.965694, 20.112396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.072857, 17.063971, 20.383131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529997, 0.810576, 0.249139,
		-0.487418, 0.531605, -0.692691,
		-0.693922, 0.245689, 0.676838,
		18.864681, 17.137678, 20.586182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.444771, 17.712894, 20.154596>,  <19.350426, 16.965694, 20.112396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.444771, 17.712894, 20.154596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.219402, 17.626972, 20.473700>,  <19.084181, 17.575418, 20.665161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.219402, 17.626972, 20.473700>,  <19.444771, 17.712894, 20.154596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.219402, 17.626972, 20.473700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278735, 0.859568, 0.428310,
		-0.777730, 0.463682, -0.424425,
		-0.563421, -0.214807, 0.797756,
		19.050377, 17.562531, 20.713026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.013817, 18.391821, 20.339434>,  <19.444771, 17.712894, 20.154596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.013817, 18.391821, 20.339434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.059586, 18.181976, 20.676880>,  <19.087048, 18.056070, 20.879349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.059586, 18.181976, 20.676880>,  <19.013817, 18.391821, 20.339434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.059586, 18.181976, 20.676880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089712, 0.851181, 0.517148,
		-0.989373, 0.016509, 0.144458,
		0.114422, -0.524612, 0.843617,
		19.093912, 18.024593, 20.929966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.742115, 18.751577, 20.871138>,  <19.013817, 18.391821, 20.339434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.742115, 18.751577, 20.871138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.971067, 18.499338, 21.080793>,  <19.108438, 18.347994, 21.206587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.971067, 18.499338, 21.080793>,  <18.742115, 18.751577, 20.871138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.971067, 18.499338, 21.080793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139806, 0.704896, 0.695396,
		-0.807982, -0.324754, 0.491630,
		0.572381, -0.630600, 0.524140,
		19.142782, 18.310158, 21.238035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.667032, 18.974131, 21.537897>,  <18.742115, 18.751577, 20.871138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.667032, 18.974131, 21.537897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.996386, 18.753674, 21.591974>,  <19.193998, 18.621399, 21.624420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.996386, 18.753674, 21.591974>,  <18.667032, 18.974131, 21.537897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.996386, 18.753674, 21.591974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268934, 0.588754, 0.762262,
		-0.499712, -0.591277, 0.632993,
		0.823384, -0.551145, 0.135193,
		19.243401, 18.588329, 21.632532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.668728, 18.755745, 22.243338>,  <18.667032, 18.974131, 21.537897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.668728, 18.755745, 22.243338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.046206, 18.725067, 22.114618>,  <19.272694, 18.706661, 22.037386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.046206, 18.725067, 22.114618>,  <18.668728, 18.755745, 22.243338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.046206, 18.725067, 22.114618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308425, 0.555738, 0.772029,
		0.119627, -0.827812, 0.548102,
		0.943697, -0.076693, -0.321800,
		19.329315, 18.702059, 22.018078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.121834, 18.802788, 22.854973>,  <18.668728, 18.755745, 22.243338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.121834, 18.802788, 22.854973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.388411, 18.881210, 22.567245>,  <19.548357, 18.928265, 22.394609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.388411, 18.881210, 22.567245>,  <19.121834, 18.802788, 22.854973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.388411, 18.881210, 22.567245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588053, 0.454861, 0.668801,
		0.458313, -0.868713, 0.187845,
		0.666440, 0.196058, -0.719318,
		19.588343, 18.940027, 22.351450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.802437, 18.592419, 23.093700>,  <19.121834, 18.802788, 22.854973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.802437, 18.592419, 23.093700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.895811, 18.847593, 22.800158>,  <19.951836, 19.000698, 22.624033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.895811, 18.847593, 22.800158>,  <19.802437, 18.592419, 23.093700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.895811, 18.847593, 22.800158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632906, 0.473270, 0.612737,
		0.738198, -0.607497, -0.293275,
		0.233438, 0.637936, -0.733856,
		19.965843, 19.038975, 22.580002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.352167, 18.820000, 23.329277>,  <19.802437, 18.592419, 23.093700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.352167, 18.820000, 23.329277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.265348, 19.085699, 23.043154>,  <20.213257, 19.245119, 22.871481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.265348, 19.085699, 23.043154>,  <20.352167, 18.820000, 23.329277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.265348, 19.085699, 23.043154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385548, 0.731531, 0.562330,
		0.896796, -0.153733, -0.414877,
		-0.217047, 0.664250, -0.715306,
		20.200235, 19.284975, 22.828562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.956221, 19.224068, 23.207024>,  <20.352167, 18.820000, 23.329277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.956221, 19.224068, 23.207024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.635080, 19.436169, 23.098021>,  <20.442396, 19.563429, 23.032618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.635080, 19.436169, 23.098021>,  <20.956221, 19.224068, 23.207024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.635080, 19.436169, 23.098021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288615, 0.745648, 0.600591,
		0.521662, 0.403535, -0.751684,
		-0.802851, 0.530253, -0.272510,
		20.394224, 19.595245, 23.016268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<14.456141, 23.183754, 21.705009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.557957, 22.885170, 21.950939>,  <14.619045, 22.706020, 22.098497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.557957, 22.885170, 21.950939>,  <14.456141, 23.183754, 21.705009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.557957, 22.885170, 21.950939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204701, -0.662948, -0.720137,
		0.945150, 0.057447, -0.321546,
		0.254538, -0.746458, 0.614826,
		14.634318, 22.661232, 22.135387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.841278, 22.849434, 21.323448>,  <14.456141, 23.183754, 21.705009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.841278, 22.849434, 21.323448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.741567, 22.603733, 21.622929>,  <14.681740, 22.456312, 21.802616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.741567, 22.603733, 21.622929>,  <14.841278, 22.849434, 21.323448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.741567, 22.603733, 21.622929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008160, -0.771746, -0.635878,
		0.968397, -0.164621, 0.187368,
		-0.249279, -0.614254, 0.748700,
		14.666783, 22.419456, 21.847538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.137163, 22.277143, 21.132845>,  <14.841278, 22.849434, 21.323448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.137163, 22.277143, 21.132845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.894162, 22.136292, 21.417646>,  <14.748362, 22.051781, 21.588528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.894162, 22.136292, 21.417646>,  <15.137163, 22.277143, 21.132845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.894162, 22.136292, 21.417646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096559, -0.856983, -0.506218,
		0.788427, -0.376279, 0.486618,
		-0.607503, -0.352128, 0.712001,
		14.711911, 22.030653, 21.631247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.366986, 21.580515, 21.468296>,  <15.137163, 22.277143, 21.132845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.366986, 21.580515, 21.468296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.969748, 21.613979, 21.501190>,  <14.731405, 21.634058, 21.520927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.969748, 21.613979, 21.501190>,  <15.366986, 21.580515, 21.468296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.969748, 21.613979, 21.501190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112194, -0.882104, -0.457499,
		0.034268, -0.463566, 0.885399,
		-0.993095, 0.083659, 0.082238,
		14.671820, 21.639076, 21.525862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.195591, 20.836710, 21.464975>,  <15.366986, 21.580515, 21.468296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.195591, 20.836710, 21.464975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.842675, 21.021830, 21.430601>,  <14.630926, 21.132900, 21.409977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.842675, 21.021830, 21.430601>,  <15.195591, 20.836710, 21.464975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.842675, 21.021830, 21.430601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346068, -0.761512, -0.548030,
		-0.319067, -0.453781, 0.832033,
		-0.882289, 0.462798, -0.085934,
		14.577989, 21.160669, 21.404821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.653307, 20.368246, 21.542028>,  <15.195591, 20.836710, 21.464975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.653307, 20.368246, 21.542028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.484324, 20.655577, 21.320927>,  <14.382936, 20.827976, 21.188265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.484324, 20.655577, 21.320927>,  <14.653307, 20.368246, 21.542028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.484324, 20.655577, 21.320927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227642, -0.674386, -0.702412,
		-0.877332, -0.170907, 0.448419,
		-0.422455, 0.718328, -0.552755,
		14.357588, 20.871075, 21.155100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.015810, 20.060205, 21.363474>,  <14.653307, 20.368246, 21.542028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.015810, 20.060205, 21.363474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.082198, 20.358393, 21.105255>,  <14.122031, 20.537306, 20.950323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.082198, 20.358393, 21.105255>,  <14.015810, 20.060205, 21.363474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.082198, 20.358393, 21.105255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218678, -0.610505, -0.761225,
		-0.961579, 0.267507, 0.061692,
		0.165970, 0.745469, -0.645547,
		14.131989, 20.582033, 20.911591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.543347, 19.894758, 20.772772>,  <14.015810, 20.060205, 21.363474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.543347, 19.894758, 20.772772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.837902, 20.136238, 20.650606>,  <14.014635, 20.281126, 20.577307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.837902, 20.136238, 20.650606>,  <13.543347, 19.894758, 20.772772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.837902, 20.136238, 20.650606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073750, -0.520359, -0.850757,
		-0.672528, 0.603963, -0.427709,
		0.736388, 0.603701, -0.305414,
		14.058819, 20.317348, 20.558981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.273596, 20.263170, 20.189386>,  <13.543347, 19.894758, 20.772772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.273596, 20.263170, 20.189386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.673226, 20.256205, 20.173681>,  <13.913005, 20.252026, 20.164259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.673226, 20.256205, 20.173681>,  <13.273596, 20.263170, 20.189386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.673226, 20.256205, 20.173681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041853, -0.599992, -0.798910,
		-0.009644, 0.799816, -0.600168,
		0.999077, -0.017414, -0.039261,
		13.972950, 20.250980, 20.161903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.375516, 20.289898, 19.562790>,  <13.273596, 20.263170, 20.189386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.375516, 20.289898, 19.562790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.742383, 20.182732, 19.680790>,  <13.962503, 20.118433, 19.751589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.742383, 20.182732, 19.680790>,  <13.375516, 20.289898, 19.562790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.742383, 20.182732, 19.680790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124457, -0.510665, -0.850724,
		0.378566, 0.816972, -0.435022,
		0.917169, -0.267913, 0.294998,
		14.017533, 20.102358, 19.769289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.705738, 20.296602, 18.936382>,  <13.375516, 20.289898, 19.562790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.705738, 20.296602, 18.936382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.911943, 20.055872, 19.180365>,  <14.035667, 19.911434, 19.326754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.911943, 20.055872, 19.180365>,  <13.705738, 20.296602, 18.936382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.911943, 20.055872, 19.180365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240251, -0.581766, -0.777064,
		0.822511, 0.547131, -0.155319,
		0.515515, -0.601828, 0.609958,
		14.066598, 19.875324, 19.363352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.297349, 20.260744, 18.582285>,  <13.705738, 20.296602, 18.936382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.297349, 20.260744, 18.582285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.297601, 19.959000, 18.844870>,  <14.297751, 19.777954, 19.002420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.297601, 19.959000, 18.844870>,  <14.297349, 20.260744, 18.582285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.297601, 19.959000, 18.844870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287377, -0.628633, -0.722658,
		0.957817, 0.189106, 0.216391,
		0.000629, -0.754360, 0.656460,
		14.297790, 19.732691, 19.041807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.802470, 19.845974, 18.463722>,  <14.297349, 20.260744, 18.582285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.802470, 19.845974, 18.463722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.575715, 19.592487, 18.674259>,  <14.439662, 19.440395, 18.800581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.575715, 19.592487, 18.674259>,  <14.802470, 19.845974, 18.463722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.575715, 19.592487, 18.674259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094933, -0.684925, -0.722402,
		0.818306, -0.359554, 0.448437,
		-0.566889, -0.633718, 0.526345,
		14.405648, 19.402372, 18.832163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.974328, 19.271772, 18.168224>,  <14.802470, 19.845974, 18.463722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.974328, 19.271772, 18.168224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.651263, 19.169193, 18.380608>,  <14.457424, 19.107645, 18.508038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.651263, 19.169193, 18.380608>,  <14.974328, 19.271772, 18.168224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.651263, 19.169193, 18.380608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078570, -0.845634, -0.527950,
		0.584389, -0.468122, 0.662836,
		-0.807661, -0.256449, 0.530959,
		14.408965, 19.092258, 18.539896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.748691, 18.918720, 18.184320>,  <14.974328, 19.271772, 18.168224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.748691, 18.918720, 18.184320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.023123, 19.083107, 17.944187>,  <16.187782, 19.181738, 17.800106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.023123, 19.083107, 17.944187>,  <15.748691, 18.918720, 18.184320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.023123, 19.083107, 17.944187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153655, 0.724706, 0.671708,
		0.711109, -0.553093, 0.434065,
		0.686086, 0.410962, -0.600330,
		16.228947, 19.206396, 17.764088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.493372, 18.963554, 18.558603>,  <15.748691, 18.918720, 18.184320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.493372, 18.963554, 18.558603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.457956, 19.227991, 18.260578>,  <16.436707, 19.386654, 18.081764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.457956, 19.227991, 18.260578>,  <16.493372, 18.963554, 18.558603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.457956, 19.227991, 18.260578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160025, 0.747724, 0.644439,
		0.983134, -0.062170, -0.171995,
		-0.088540, 0.661093, -0.745061,
		16.431395, 19.426319, 18.037060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.137259, 19.444529, 18.627296>,  <16.493372, 18.963554, 18.558603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.137259, 19.444529, 18.627296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.896864, 19.660456, 18.391529>,  <16.752628, 19.790012, 18.250069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.896864, 19.660456, 18.391529>,  <17.137259, 19.444529, 18.627296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.896864, 19.660456, 18.391529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259946, 0.829375, 0.494535,
		0.755807, 0.143992, -0.638766,
		-0.600986, 0.539818, -0.589417,
		16.716568, 19.822401, 18.214705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.484701, 20.046312, 18.359970>,  <17.137259, 19.444529, 18.627296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.484701, 20.046312, 18.359970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.103632, 20.153809, 18.303127>,  <16.874990, 20.218307, 18.269022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.103632, 20.153809, 18.303127>,  <17.484701, 20.046312, 18.359970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.103632, 20.153809, 18.303127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171317, 0.860760, 0.479314,
		0.251130, 0.432284, -0.866062,
		-0.952672, 0.268742, -0.142106,
		16.817831, 20.234430, 18.260496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.566383, 20.759247, 18.256098>,  <17.484701, 20.046312, 18.359970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.566383, 20.759247, 18.256098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.176773, 20.705545, 18.329039>,  <16.943007, 20.673325, 18.372803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.176773, 20.705545, 18.329039>,  <17.566383, 20.759247, 18.256098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.176773, 20.705545, 18.329039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042896, 0.900106, 0.433553,
		-0.222341, 0.414470, -0.882485,
		-0.974025, -0.134251, 0.182351,
		16.884565, 20.665270, 18.383743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.474897, 21.378920, 18.494291>,  <17.566383, 20.759247, 18.256098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.474897, 21.378920, 18.494291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.144945, 21.187349, 18.614426>,  <16.946974, 21.072407, 18.686506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.144945, 21.187349, 18.614426>,  <17.474897, 21.378920, 18.494291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.144945, 21.187349, 18.614426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157295, 0.704745, 0.691804,
		-0.542984, 0.523414, -0.656663,
		-0.824880, -0.478928, 0.300336,
		16.897482, 21.043671, 18.704527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.935938, 21.915306, 18.496967>,  <17.474897, 21.378920, 18.494291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.935938, 21.915306, 18.496967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.861746, 21.604319, 18.737347>,  <16.817230, 21.417727, 18.881575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.861746, 21.604319, 18.737347>,  <16.935938, 21.915306, 18.496967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.861746, 21.604319, 18.737347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169946, 0.627723, 0.759659,
		-0.967840, 0.038775, -0.248559,
		-0.185482, -0.777470, 0.600946,
		16.806101, 21.371077, 18.917631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.270103, 22.231236, 18.845903>,  <16.935938, 21.915306, 18.496967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.270103, 22.231236, 18.845903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.417810, 21.932570, 19.067221>,  <16.506435, 21.753370, 19.200012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.417810, 21.932570, 19.067221>,  <16.270103, 22.231236, 18.845903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.417810, 21.932570, 19.067221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042092, 0.581325, 0.812582,
		-0.928369, -0.323351, 0.183237,
		0.369269, -0.746663, 0.553295,
		16.528591, 21.708570, 19.233210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.902104, 22.232874, 19.455093>,  <16.270103, 22.231236, 18.845903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.902104, 22.232874, 19.455093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.240614, 22.045824, 19.557188>,  <16.443720, 21.933594, 19.618444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.240614, 22.045824, 19.557188>,  <15.902104, 22.232874, 19.455093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.240614, 22.045824, 19.557188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056764, 0.555515, 0.829567,
		-0.529714, -0.687553, 0.496663,
		0.846275, -0.467626, 0.255236,
		16.494497, 21.905537, 19.633759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.769552, 21.889803, 20.124796>,  <15.902104, 22.232874, 19.455093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.769552, 21.889803, 20.124796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.160608, 21.943558, 20.060101>,  <16.395243, 21.975811, 20.021284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.160608, 21.943558, 20.060101>,  <15.769552, 21.889803, 20.124796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.160608, 21.943558, 20.060101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065394, 0.536712, 0.841228,
		0.199858, -0.832995, 0.515923,
		0.977641, 0.134388, -0.161739,
		16.453899, 21.983873, 20.011580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.164074, 21.801714, 20.780832>,  <15.769552, 21.889803, 20.124796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.164074, 21.801714, 20.780832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.391525, 22.033890, 20.547680>,  <16.527996, 22.173195, 20.407787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.391525, 22.033890, 20.547680>,  <16.164074, 21.801714, 20.780832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.391525, 22.033890, 20.547680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231943, 0.566705, 0.790600,
		0.789217, -0.584754, 0.187616,
		0.568629, 0.580438, -0.582883,
		16.562115, 22.208021, 20.372814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.875532, 21.809362, 21.046537>,  <16.164074, 21.801714, 20.780832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.875532, 21.809362, 21.046537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.925751, 22.127262, 20.809013>,  <16.955881, 22.318001, 20.666498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.925751, 22.127262, 20.809013>,  <16.875532, 21.809362, 21.046537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.925751, 22.127262, 20.809013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353814, 0.523321, 0.775210,
		0.926852, -0.307424, -0.215492,
		0.125546, 0.794749, -0.593812,
		16.963415, 22.365686, 20.630869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.479067, 22.097778, 21.181458>,  <16.875532, 21.809362, 21.046537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.479067, 22.097778, 21.181458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.302515, 22.404051, 20.994303>,  <17.196585, 22.587814, 20.882010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.302515, 22.404051, 20.994303>,  <17.479067, 22.097778, 21.181458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.302515, 22.404051, 20.994303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239715, 0.603088, 0.760803,
		0.864709, 0.223643, -0.449736,
		-0.441379, 0.765682, -0.467885,
		17.170101, 22.633755, 20.853937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.985680, 22.574987, 21.074825>,  <17.479067, 22.097778, 21.181458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.985680, 22.574987, 21.074825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.632925, 22.762760, 21.092316>,  <17.421272, 22.875423, 21.102810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.632925, 22.762760, 21.092316>,  <17.985680, 22.574987, 21.074825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.632925, 22.762760, 21.092316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376284, 0.644937, 0.665182,
		0.284056, 0.603068, -0.745400,
		-0.881886, 0.469431, 0.043726,
		17.368359, 22.903589, 21.105434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.527737, 22.682234, 20.410625>,  <17.985680, 22.574987, 21.074825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.527737, 22.682234, 20.410625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.920837, 22.612959, 20.436558>,  <19.156698, 22.571394, 20.452118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.920837, 22.612959, 20.436558>,  <18.527737, 22.682234, 20.410625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.920837, 22.612959, 20.436558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108091, -0.822437, -0.558492,
		0.150042, 0.541852, -0.826973,
		0.982753, -0.173185, 0.064831,
		19.215664, 22.561003, 20.456007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.736483, 22.657148, 19.778561>,  <18.527737, 22.682234, 20.410625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.736483, 22.657148, 19.778561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.017117, 22.463131, 19.987371>,  <19.185497, 22.346720, 20.112658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.017117, 22.463131, 19.987371>,  <18.736483, 22.657148, 19.778561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.017117, 22.463131, 19.987371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029434, -0.751681, -0.658870,
		0.711977, 0.446888, -0.541646,
		0.701586, -0.485043, 0.522026,
		19.227592, 22.317617, 20.143980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.302843, 22.554363, 19.230562>,  <18.736483, 22.657148, 19.778561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.302843, 22.554363, 19.230562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.344988, 22.312059, 19.546019>,  <19.370275, 22.166677, 19.735292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.344988, 22.312059, 19.546019>,  <19.302843, 22.554363, 19.230562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.344988, 22.312059, 19.546019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102010, -0.782286, -0.614510,
		0.989188, 0.145196, -0.020631,
		0.105364, -0.605761, 0.788639,
		19.376596, 22.130331, 19.782610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.967188, 22.351515, 19.350025>,  <19.302843, 22.554363, 19.230562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.967188, 22.351515, 19.350025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.719492, 22.065388, 19.479557>,  <19.570875, 21.893711, 19.557276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.719492, 22.065388, 19.479557>,  <19.967188, 22.351515, 19.350025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.719492, 22.065388, 19.479557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405840, -0.644627, -0.647881,
		0.672189, -0.269770, 0.689482,
		-0.619238, -0.715318, 0.323828,
		19.533720, 21.850792, 19.576706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.334154, 21.720526, 19.189692>,  <19.967188, 22.351515, 19.350025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.334154, 21.720526, 19.189692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.985340, 21.567848, 19.312241>,  <19.776052, 21.476242, 19.385771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.985340, 21.567848, 19.312241>,  <20.334154, 21.720526, 19.189692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.985340, 21.567848, 19.312241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228251, -0.870870, -0.435301,
		0.432964, -0.309667, 0.846551,
		-0.872034, -0.381696, 0.306373,
		19.723730, 21.453339, 19.404152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.416574, 21.032833, 19.436722>,  <20.334154, 21.720526, 19.189692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.416574, 21.032833, 19.436722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.028362, 21.038057, 19.340473>,  <19.795435, 21.041191, 19.282724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.028362, 21.038057, 19.340473>,  <20.416574, 21.032833, 19.436722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.028362, 21.038057, 19.340473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145985, -0.762584, -0.630201,
		-0.191725, -0.646757, 0.738205,
		-0.970530, 0.013058, -0.240624,
		19.737204, 21.041975, 19.268286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.283083, 20.315777, 19.433723>,  <20.416574, 21.032833, 19.436722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.283083, 20.315777, 19.433723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.992979, 20.515064, 19.243660>,  <19.818916, 20.634636, 19.129622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.992979, 20.515064, 19.243660>,  <20.283083, 20.315777, 19.433723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.992979, 20.515064, 19.243660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030507, -0.712743, -0.700762,
		-0.687791, -0.493744, 0.532128,
		-0.725268, 0.498211, -0.475155,
		19.775400, 20.664530, 19.101112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.898281, 19.772331, 19.161974>,  <20.283083, 20.315777, 19.433723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.898281, 19.772331, 19.161974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.796062, 20.084442, 18.933636>,  <19.734732, 20.271709, 18.796633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.796062, 20.084442, 18.933636>,  <19.898281, 19.772331, 19.161974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.796062, 20.084442, 18.933636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276173, -0.624761, -0.730344,
		-0.926513, -0.028983, 0.375145,
		-0.255544, 0.780278, -0.570845,
		19.719398, 20.318525, 18.762383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.186962, 19.682468, 18.861946>,  <19.898281, 19.772331, 19.161974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.186962, 19.682468, 18.861946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.378189, 19.931072, 18.613695>,  <19.492926, 20.080235, 18.464745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.378189, 19.931072, 18.613695>,  <19.186962, 19.682468, 18.861946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.378189, 19.931072, 18.613695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208401, -0.606159, -0.767555,
		-0.853240, 0.496283, -0.160263,
		0.478069, 0.621510, -0.620625,
		19.521610, 20.117525, 18.427507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.815651, 19.654003, 18.299170>,  <19.186962, 19.682468, 18.861946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.815651, 19.654003, 18.299170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.149921, 19.819916, 18.155167>,  <19.350483, 19.919462, 18.068766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.149921, 19.819916, 18.155167>,  <18.815651, 19.654003, 18.299170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.149921, 19.819916, 18.155167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114319, -0.509763, -0.852686,
		-0.537195, 0.753724, -0.378578,
		0.835675, 0.414780, -0.360007,
		19.400623, 19.944349, 18.047165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.636326, 20.045675, 17.720947>,  <18.815651, 19.654003, 18.299170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.636326, 20.045675, 17.720947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.017910, 19.926561, 17.706602>,  <19.246861, 19.855093, 17.697994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.017910, 19.926561, 17.706602>,  <18.636326, 20.045675, 17.720947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.017910, 19.926561, 17.706602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170578, -0.440287, -0.881505,
		0.246706, 0.847038, -0.470811,
		0.953960, -0.297783, -0.035865,
		19.304098, 19.837227, 17.695843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.822769, 19.985409, 16.962929>,  <18.636326, 20.045675, 17.720947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.822769, 19.985409, 16.962929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.109543, 19.785580, 17.157425>,  <19.281607, 19.665682, 17.274122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.109543, 19.785580, 17.157425>,  <18.822769, 19.985409, 16.962929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.109543, 19.785580, 17.157425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017225, -0.684574, -0.728740,
		0.696927, 0.530835, -0.482190,
		0.716935, -0.499573, 0.486242,
		19.324623, 19.635708, 17.303297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.037846, 19.610025, 16.512367>,  <18.822769, 19.985409, 16.962929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.037846, 19.610025, 16.512367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.251551, 19.439407, 16.804293>,  <19.379774, 19.337036, 16.979448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.251551, 19.439407, 16.804293>,  <19.037846, 19.610025, 16.512367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.251551, 19.439407, 16.804293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054989, -0.843992, -0.533530,
		0.843529, 0.325176, -0.427456,
		0.534261, -0.426543, 0.729813,
		19.411829, 19.311445, 17.023237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.703606, 19.376024, 16.279415>,  <19.037846, 19.610025, 16.512367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.703606, 19.376024, 16.279415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.584534, 19.164539, 16.597372>,  <19.513090, 19.037649, 16.788145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.584534, 19.164539, 16.597372>,  <19.703606, 19.376024, 16.279415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.584534, 19.164539, 16.597372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063264, -0.819881, -0.569027,
		0.952567, -0.219676, 0.210613,
		-0.297679, -0.528713, 0.794890,
		19.495230, 19.005926, 16.835838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<4.637408, 15.721164, 7.472145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.958991, 15.891863, 7.306476>,  <5.151940, 15.994283, 7.207074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.958991, 15.891863, 7.306476>,  <4.637408, 15.721164, 7.472145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.958991, 15.891863, 7.306476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515031, -0.151448, 0.843686,
		0.297316, -0.891599, -0.341546,
		0.803957, 0.426749, -0.414173,
		5.200178, 16.019888, 7.182224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.123268, 15.337948, 7.693206>,  <4.637408, 15.721164, 7.472145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.123268, 15.337948, 7.693206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.344778, 15.642325, 7.557973>,  <5.477683, 15.824952, 7.476834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.344778, 15.642325, 7.557973>,  <5.123268, 15.337948, 7.693206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.344778, 15.642325, 7.557973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524134, -0.003064, 0.851630,
		0.647007, -0.648810, -0.400533,
		0.553774, 0.760944, -0.338082,
		5.510910, 15.870608, 7.456549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.931123, 15.330606, 7.544936>,  <5.123268, 15.337948, 7.693206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.931123, 15.330606, 7.544936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.847270, 15.702705, 7.665397>,  <5.796957, 15.925965, 7.737674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.847270, 15.702705, 7.665397>,  <5.931123, 15.330606, 7.544936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.847270, 15.702705, 7.665397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447513, -0.182563, 0.875444,
		0.869359, 0.318291, -0.378027,
		-0.209633, 0.930248, 0.301152,
		5.784380, 15.981780, 7.755743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.585102, 15.495099, 7.742642>,  <5.931123, 15.330606, 7.544936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.585102, 15.495099, 7.742642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.269006, 15.697900, 7.880320>,  <6.079349, 15.819580, 7.962927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.269006, 15.697900, 7.880320>,  <6.585102, 15.495099, 7.742642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.269006, 15.697900, 7.880320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157468, -0.374810, 0.913631,
		0.592220, 0.776187, 0.216353,
		-0.790240, 0.507002, 0.344195,
		6.031934, 15.850000, 7.983579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.653858, 15.777783, 8.555991>,  <6.585102, 15.495099, 7.742642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.653858, 15.777783, 8.555991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.271753, 15.718168, 8.453808>,  <6.042490, 15.682399, 8.392498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.271753, 15.718168, 8.453808>,  <6.653858, 15.777783, 8.555991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.271753, 15.718168, 8.453808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214805, -0.244104, 0.945660,
		-0.203298, 0.958228, 0.201169,
		-0.955264, -0.149039, -0.255458,
		5.985174, 15.673456, 8.377171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.327830, 16.337109, 8.778272>,  <6.653858, 15.777783, 8.555991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.327830, 16.337109, 8.778272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.125637, 15.992038, 8.784891>,  <6.004321, 15.784995, 8.788862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.125637, 15.992038, 8.784891>,  <6.327830, 16.337109, 8.778272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.125637, 15.992038, 8.784891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028492, 0.002479, 0.999591,
		-0.862366, 0.505748, 0.023326,
		-0.505483, -0.862678, 0.016548,
		5.973992, 15.733234, 8.789856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.648121, 16.824961, 9.210132>,  <6.327830, 16.337109, 8.778272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.648121, 16.824961, 9.210132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.786191, 16.610622, 8.901918>,  <6.869034, 16.482019, 8.716990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.786191, 16.610622, 8.901918>,  <6.648121, 16.824961, 9.210132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.786191, 16.610622, 8.901918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005070, 0.819916, -0.572462,
		0.938524, 0.201507, 0.280298,
		0.345176, -0.535848, -0.770533,
		6.889744, 16.449867, 8.670758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.124461, 17.235390, 8.906039>,  <6.648121, 16.824961, 9.210132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.124461, 17.235390, 8.906039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.017727, 16.995188, 8.604525>,  <6.953687, 16.851067, 8.423615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.017727, 16.995188, 8.604525>,  <7.124461, 17.235390, 8.906039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.017727, 16.995188, 8.604525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008887, 0.780580, -0.624993,
		0.963701, -0.173469, -0.202948,
		-0.266834, -0.600503, -0.753787,
		6.937677, 16.815037, 8.378388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.511086, 17.371353, 8.190745>,  <7.124461, 17.235390, 8.906039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.511086, 17.371353, 8.190745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.144252, 17.229464, 8.117942>,  <6.924152, 17.144329, 8.074260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.144252, 17.229464, 8.117942>,  <7.511086, 17.371353, 8.190745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.144252, 17.229464, 8.117942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172471, 0.764559, -0.621051,
		0.359458, -0.538164, -0.762344,
		-0.917085, -0.354724, -0.182009,
		6.869127, 17.123047, 8.063339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.374168, 18.101959, 8.145821>,  <7.511086, 17.371353, 8.190745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.374168, 18.101959, 8.145821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.491307, 18.471436, 8.244644>,  <7.561590, 18.693121, 8.303938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.491307, 18.471436, 8.244644>,  <7.374168, 18.101959, 8.145821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.491307, 18.471436, 8.244644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193683, -0.195724, 0.961342,
		0.936337, -0.329376, 0.121586,
		0.292846, 0.923690, 0.247058,
		7.579161, 18.748543, 8.318762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.959052, 18.085224, 8.711207>,  <7.374168, 18.101959, 8.145821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.959052, 18.085224, 8.711207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.699572, 18.386518, 8.754708>,  <7.543884, 18.567295, 8.780808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.699572, 18.386518, 8.754708>,  <7.959052, 18.085224, 8.711207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.699572, 18.386518, 8.754708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079538, -0.209217, 0.974629,
		0.756877, 0.623592, 0.195629,
		-0.648699, 0.753234, 0.108753,
		7.504962, 18.612490, 8.787334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.214352, 18.617661, 9.202669>,  <7.959052, 18.085224, 8.711207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.214352, 18.617661, 9.202669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.816362, 18.654415, 9.186734>,  <7.577569, 18.676468, 9.177174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.816362, 18.654415, 9.186734>,  <8.214352, 18.617661, 9.202669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.816362, 18.654415, 9.186734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052722, -0.142371, 0.988408,
		0.085149, 0.985539, 0.146500,
		-0.994972, 0.091886, -0.039837,
		7.517871, 18.681980, 9.174783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.039449, 19.081211, 9.706470>,  <8.214352, 18.617661, 9.202669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.039449, 19.081211, 9.706470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.725025, 18.838978, 9.656867>,  <7.536371, 18.693638, 9.627105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.725025, 18.838978, 9.656867>,  <8.039449, 19.081211, 9.706470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.725025, 18.838978, 9.656867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050869, -0.263304, 0.963371,
		-0.616055, 0.750958, 0.237777,
		-0.786059, -0.605585, -0.124010,
		7.489208, 18.657303, 9.619664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.410777, 19.247654, 10.254818>,  <8.039449, 19.081211, 9.706470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.410777, 19.247654, 10.254818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.370852, 18.869678, 10.130155>,  <7.346897, 18.642893, 10.055357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.370852, 18.869678, 10.130155>,  <7.410777, 19.247654, 10.254818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.370852, 18.869678, 10.130155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096405, -0.302564, 0.948241,
		-0.990325, 0.124691, -0.060898,
		-0.099812, -0.944938, -0.311657,
		7.340909, 18.586197, 10.036657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.997648, 19.039375, 10.717736>,  <7.410777, 19.247654, 10.254818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.997648, 19.039375, 10.717736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.145834, 18.698877, 10.569067>,  <7.234746, 18.494579, 10.479865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.145834, 18.698877, 10.569067>,  <6.997648, 19.039375, 10.717736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.145834, 18.698877, 10.569067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054599, -0.419411, 0.906153,
		-0.927240, -0.315405, -0.201854,
		0.370465, -0.851243, -0.371674,
		7.256974, 18.443504, 10.457565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.467169, 18.410488, 10.845659>,  <6.997648, 19.039375, 10.717736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.467169, 18.410488, 10.845659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.812726, 18.222164, 10.774075>,  <7.020060, 18.109169, 10.731124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.812726, 18.222164, 10.774075>,  <6.467169, 18.410488, 10.845659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.812726, 18.222164, 10.774075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180971, -0.621727, 0.762040,
		-0.470043, -0.625934, -0.622308,
		0.863892, -0.470811, -0.178962,
		7.071894, 18.080921, 10.720386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.286963, 17.763281, 11.092310>,  <6.467169, 18.410488, 10.845659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.286963, 17.763281, 11.092310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.680681, 17.726875, 11.031799>,  <6.916911, 17.705032, 10.995493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.680681, 17.726875, 11.031799>,  <6.286963, 17.763281, 11.092310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.680681, 17.726875, 11.031799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010449, -0.825342, 0.564536,
		-0.176234, -0.557249, -0.811428,
		0.984293, -0.091011, -0.151276,
		6.975968, 17.699572, 10.986416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.439956, 17.078829, 10.999451>,  <6.286963, 17.763281, 11.092310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.439956, 17.078829, 10.999451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.802986, 17.219469, 11.091266>,  <7.020803, 17.303852, 11.146355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.802986, 17.219469, 11.091266>,  <6.439956, 17.078829, 10.999451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.802986, 17.219469, 11.091266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066121, -0.659511, 0.748781,
		0.414653, -0.664397, -0.621803,
		0.907574, 0.351599, 0.229537,
		7.075258, 17.324949, 11.160127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.950740, 16.487196, 11.133433>,  <6.439956, 17.078829, 10.999451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.950740, 16.487196, 11.133433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.146297, 16.797504, 11.293016>,  <7.263631, 16.983688, 11.388766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.146297, 16.797504, 11.293016>,  <6.950740, 16.487196, 11.133433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.146297, 16.797504, 11.293016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133281, -0.518395, 0.844691,
		0.862103, -0.359789, -0.356834,
		0.488892, 0.775770, 0.398957,
		7.292964, 17.030235, 11.412704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.627848, 16.260681, 11.216583>,  <6.950740, 16.487196, 11.133433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.627848, 16.260681, 11.216583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.536369, 16.551779, 11.475222>,  <7.481482, 16.726437, 11.630404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.536369, 16.551779, 11.475222>,  <7.627848, 16.260681, 11.216583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.536369, 16.551779, 11.475222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264883, -0.592620, 0.760683,
		0.936768, 0.345238, -0.057237,
		-0.228696, 0.727745, 0.646596,
		7.467761, 16.770102, 11.669200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.147544, 16.275597, 11.708780>,  <7.627848, 16.260681, 11.216583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.147544, 16.275597, 11.708780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.818774, 16.435280, 11.871297>,  <7.621512, 16.531090, 11.968807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.818774, 16.435280, 11.871297>,  <8.147544, 16.275597, 11.708780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.818774, 16.435280, 11.871297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048235, -0.759519, 0.648695,
		0.567550, 0.513581, 0.643523,
		-0.821925, 0.399207, 0.406292,
		7.572196, 16.555042, 11.993184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.334983, 16.356583, 12.254502>,  <8.147544, 16.275597, 11.708780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.334983, 16.356583, 12.254502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.938790, 16.378214, 12.305137>,  <7.701075, 16.391193, 12.335517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.938790, 16.378214, 12.305137>,  <8.334983, 16.356583, 12.254502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.938790, 16.378214, 12.305137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048063, -0.725859, 0.686162,
		0.128990, 0.685714, 0.716350,
		-0.990480, 0.054078, 0.126586,
		7.641646, 16.394438, 12.343112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.267461, 16.225788, 12.869698>,  <8.334983, 16.356583, 12.254502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.267461, 16.225788, 12.869698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.886869, 16.175638, 12.757290>,  <7.658515, 16.145548, 12.689845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.886869, 16.175638, 12.757290>,  <8.267461, 16.225788, 12.869698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.886869, 16.175638, 12.757290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074212, -0.792788, 0.604963,
		-0.298635, 0.596464, 0.745016,
		-0.951477, -0.125374, -0.281019,
		7.601426, 16.138025, 12.672984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.922291, 16.189985, 13.419016>,  <8.267461, 16.225788, 12.869698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.922291, 16.189985, 13.419016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.668519, 16.006439, 13.170197>,  <7.516256, 15.896312, 13.020906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.668519, 16.006439, 13.170197>,  <7.922291, 16.189985, 13.419016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.668519, 16.006439, 13.170197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122258, -0.735041, 0.666909,
		-0.763251, 0.499157, 0.410232,
		-0.634430, -0.458865, -0.622047,
		7.478190, 15.868780, 12.983583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.274107, 16.101919, 13.801772>,  <7.922291, 16.189985, 13.419016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.274107, 16.101919, 13.801772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.321726, 15.842714, 13.500866>,  <7.350298, 15.687191, 13.320322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.321726, 15.842714, 13.500866>,  <7.274107, 16.101919, 13.801772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.321726, 15.842714, 13.500866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261465, -0.751373, 0.605867,
		-0.957843, 0.124563, -0.258883,
		0.119049, -0.648014, -0.752266,
		7.357441, 15.648310, 13.275186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.611990, 15.822429, 13.843205>,  <7.274107, 16.101919, 13.801772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.611990, 15.822429, 13.843205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.837537, 15.577972, 13.621013>,  <6.972866, 15.431299, 13.487697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.837537, 15.577972, 13.621013>,  <6.611990, 15.822429, 13.843205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.837537, 15.577972, 13.621013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381059, -0.789257, 0.481526,
		-0.732699, -0.059845, -0.677917,
		0.563868, -0.611140, -0.555483,
		7.006698, 15.394630, 13.454369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.139058, 15.278018, 13.641847>,  <6.611990, 15.822429, 13.843205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.139058, 15.278018, 13.641847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.513133, 15.141818, 13.602885>,  <6.737577, 15.060099, 13.579508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.513133, 15.141818, 13.602885>,  <6.139058, 15.278018, 13.641847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.513133, 15.141818, 13.602885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203907, -0.742546, 0.638003,
		-0.289566, -0.576791, -0.763848,
		0.935187, -0.340499, -0.097404,
		6.793688, 15.039668, 13.573664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.009893, 14.500755, 13.595354>,  <6.139058, 15.278018, 13.641847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.009893, 14.500755, 13.595354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.385791, 14.586293, 13.702048>,  <6.611331, 14.637616, 13.766065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.385791, 14.586293, 13.702048>,  <6.009893, 14.500755, 13.595354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.385791, 14.586293, 13.702048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072504, -0.637807, 0.766776,
		0.334097, -0.739914, -0.583872,
		0.939746, 0.213844, 0.266736,
		6.667715, 14.650447, 13.782069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.293506, 13.873491, 13.697015>,  <6.009893, 14.500755, 13.595354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.293506, 13.873491, 13.697015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.557631, 14.115851, 13.874496>,  <6.716106, 14.261268, 13.980984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.557631, 14.115851, 13.874496>,  <6.293506, 13.873491, 13.697015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.557631, 14.115851, 13.874496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134000, -0.676399, 0.724243,
		0.738939, -0.418771, -0.527826,
		0.660313, 0.605900, 0.443702,
		6.755725, 14.297622, 14.007607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.789263, 13.391333, 13.964703>,  <6.293506, 13.873491, 13.697015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.789263, 13.391333, 13.964703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.798796, 13.735110, 14.168971>,  <6.804515, 13.941378, 14.291533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.798796, 13.735110, 14.168971>,  <6.789263, 13.391333, 13.964703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.798796, 13.735110, 14.168971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117915, -0.509668, 0.852253,
		0.992738, 0.039905, -0.113488,
		0.023832, 0.859445, 0.510672,
		6.805945, 13.992944, 14.322173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.223830, 13.307805, 14.394240>,  <6.789263, 13.391333, 13.964703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.223830, 13.307805, 14.394240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.998312, 13.599570, 14.549208>,  <6.863002, 13.774630, 14.642188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.998312, 13.599570, 14.549208>,  <7.223830, 13.307805, 14.394240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.998312, 13.599570, 14.549208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160839, -0.557062, 0.814747,
		0.810103, 0.397038, 0.431386,
		-0.563795, 0.729412, 0.387419,
		6.829174, 13.818394, 14.665433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.751441, 12.803082, 14.185647>,  <7.223830, 13.307805, 14.394240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.751441, 12.803082, 14.185647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.095901, 12.822732, 14.388036>,  <8.302578, 12.834522, 14.509469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.095901, 12.822732, 14.388036>,  <7.751441, 12.803082, 14.185647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.095901, 12.822732, 14.388036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486827, 0.206859, -0.848651,
		-0.146355, 0.977137, 0.154221,
		0.861150, 0.049125, 0.505971,
		8.354246, 12.837469, 14.539827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.155993, 13.210596, 13.762790>,  <7.751441, 12.803082, 14.185647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.155993, 13.210596, 13.762790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.437624, 13.074765, 14.012257>,  <8.606603, 12.993267, 14.161937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.437624, 13.074765, 14.012257>,  <8.155993, 13.210596, 13.762790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.437624, 13.074765, 14.012257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705323, 0.232487, -0.669679,
		0.082413, 0.911393, 0.403200,
		0.704080, -0.339576, 0.623666,
		8.648848, 12.972893, 14.199357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.581300, 13.752436, 13.866088>,  <8.155993, 13.210596, 13.762790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.581300, 13.752436, 13.866088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.805366, 13.429538, 13.940462>,  <8.939805, 13.235799, 13.985086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.805366, 13.429538, 13.940462>,  <8.581300, 13.752436, 13.866088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.805366, 13.429538, 13.940462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631187, 0.270562, -0.726911,
		0.536488, 0.524550, 0.661081,
		0.560164, -0.807245, 0.185936,
		8.973414, 13.187365, 13.996243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.360816, 13.915583, 13.850115>,  <8.581300, 13.752436, 13.866088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.360816, 13.915583, 13.850115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.381905, 13.519855, 13.795749>,  <9.394558, 13.282419, 13.763129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.381905, 13.519855, 13.795749>,  <9.360816, 13.915583, 13.850115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.381905, 13.519855, 13.795749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556023, 0.142136, -0.818923,
		0.829493, -0.032397, 0.557577,
		0.052721, -0.989317, -0.135915,
		9.397721, 13.223061, 13.754974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.031303, 13.733405, 13.607192>,  <9.360816, 13.915583, 13.850115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.031303, 13.733405, 13.607192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.808887, 13.424318, 13.484731>,  <9.675438, 13.238867, 13.411254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.808887, 13.424318, 13.484731>,  <10.031303, 13.733405, 13.607192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.808887, 13.424318, 13.484731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271351, 0.179395, -0.945614,
		0.785614, -0.608874, 0.109927,
		-0.556039, -0.772716, -0.306153,
		9.642076, 13.192504, 13.392884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.551238, 13.247995, 13.286358>,  <10.031303, 13.733405, 13.607192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.551238, 13.247995, 13.286358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.190049, 13.199454, 13.121474>,  <9.973336, 13.170329, 13.022544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.190049, 13.199454, 13.121474>,  <10.551238, 13.247995, 13.286358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.190049, 13.199454, 13.121474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372480, 0.257240, -0.891676,
		0.214242, -0.958698, -0.187080,
		-0.902972, -0.121351, -0.412208,
		9.919158, 13.163049, 12.997812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.638285, 12.979695, 12.588668>,  <10.551238, 13.247995, 13.286358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.638285, 12.979695, 12.588668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.260083, 13.109930, 12.590188>,  <10.033162, 13.188070, 12.591101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.260083, 13.109930, 12.590188>,  <10.638285, 12.979695, 12.588668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.260083, 13.109930, 12.590188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145238, 0.432164, -0.890023,
		-0.291422, -0.840969, -0.455901,
		-0.945504, 0.325586, 0.003801,
		9.976432, 13.207605, 12.591329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.420144, 12.858365, 11.842321>,  <10.638285, 12.979695, 12.588668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.420144, 12.858365, 11.842321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.129867, 13.090429, 11.990258>,  <9.955700, 13.229668, 12.079021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.129867, 13.090429, 11.990258>,  <10.420144, 12.858365, 11.842321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.129867, 13.090429, 11.990258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103068, 0.439811, -0.892157,
		-0.680255, -0.685550, -0.259371,
		-0.725692, 0.580161, 0.369842,
		9.912159, 13.264478, 12.101211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.789772, 12.710440, 11.480719>,  <10.420144, 12.858365, 11.842321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.789772, 12.710440, 11.480719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.739656, 13.079849, 11.625718>,  <9.709587, 13.301496, 11.712718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.739656, 13.079849, 11.625718>,  <9.789772, 12.710440, 11.480719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.739656, 13.079849, 11.625718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158237, 0.342100, -0.926244,
		-0.979420, -0.173409, 0.103275,
		-0.125288, 0.923524, 0.362499,
		9.702070, 13.356907, 11.734468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.175488, 12.904070, 11.203704>,  <9.789772, 12.710440, 11.480719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.175488, 12.904070, 11.203704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.363527, 13.246494, 11.289648>,  <9.476352, 13.451949, 11.341214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.363527, 13.246494, 11.289648>,  <9.175488, 12.904070, 11.203704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.363527, 13.246494, 11.289648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208467, 0.344243, -0.915444,
		-0.857641, 0.385559, 0.340289,
		0.470100, 0.856061, 0.214860,
		9.504558, 13.503313, 11.354106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.807689, 13.359336, 10.946637>,  <9.175488, 12.904070, 11.203704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.807689, 13.359336, 10.946637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.122131, 13.598750, 11.008334>,  <9.310797, 13.742398, 11.045352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.122131, 13.598750, 11.008334>,  <8.807689, 13.359336, 10.946637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.122131, 13.598750, 11.008334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337467, 0.624694, -0.704183,
		-0.517832, 0.501512, 0.693062,
		0.786108, 0.598535, 0.154243,
		9.357964, 13.778311, 11.054607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.526790, 13.976582, 10.922263>,  <8.807689, 13.359336, 10.946637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.526790, 13.976582, 10.922263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.917755, 13.996599, 10.840133>,  <9.152334, 14.008610, 10.790854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.917755, 13.996599, 10.840133>,  <8.526790, 13.976582, 10.922263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.917755, 13.996599, 10.840133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200603, 0.525371, -0.826888,
		0.066492, 0.849400, 0.523543,
		0.977414, 0.050043, -0.205325,
		9.210979, 14.011612, 10.778535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.545555, 14.658548, 10.709754>,  <8.526790, 13.976582, 10.922263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.545555, 14.658548, 10.709754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.872110, 14.459119, 10.593181>,  <9.068044, 14.339461, 10.523236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.872110, 14.459119, 10.593181>,  <8.545555, 14.658548, 10.709754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.872110, 14.459119, 10.593181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107952, 0.627499, -0.771097,
		0.567323, 0.598054, 0.566105,
		0.816389, -0.498574, -0.291434,
		9.117027, 14.309546, 10.505751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.033112, 15.174686, 10.541102>,  <8.545555, 14.658548, 10.709754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.033112, 15.174686, 10.541102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.152116, 14.848952, 10.341764>,  <9.223518, 14.653512, 10.222162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.152116, 14.848952, 10.341764>,  <9.033112, 15.174686, 10.541102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.152116, 14.848952, 10.341764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182297, 0.560830, -0.807612,
		0.937153, 0.149426, 0.315303,
		0.297510, -0.814335, -0.498344,
		9.241369, 14.604651, 10.192262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.578774, 15.409418, 10.174591>,  <9.033112, 15.174686, 10.541102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.578774, 15.409418, 10.174591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.480543, 15.064377, 9.997683>,  <9.421604, 14.857352, 9.891538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.480543, 15.064377, 9.997683>,  <9.578774, 15.409418, 10.174591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.480543, 15.064377, 9.997683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249871, 0.384497, -0.888665,
		0.936619, -0.328749, 0.121115,
		-0.245579, -0.862604, -0.442272,
		9.406869, 14.805595, 9.865001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.195068, 15.281105, 9.789373>,  <9.578774, 15.409418, 10.174591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.195068, 15.281105, 9.789373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.891418, 15.081911, 9.621690>,  <9.709227, 14.962395, 9.521080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.891418, 15.081911, 9.621690>,  <10.195068, 15.281105, 9.789373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.891418, 15.081911, 9.621690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121391, 0.524404, -0.842772,
		0.639524, -0.690659, -0.337638,
		-0.759127, -0.497987, -0.419209,
		9.663679, 14.932515, 9.495928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.215862, 15.328472, 9.016957>,  <10.195068, 15.281105, 9.789373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.215862, 15.328472, 9.016957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.829086, 15.227424, 9.030877>,  <9.597021, 15.166795, 9.039229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.829086, 15.227424, 9.030877>,  <10.215862, 15.328472, 9.016957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.829086, 15.227424, 9.030877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156018, 0.478112, -0.864331,
		0.201710, -0.841185, -0.501719,
		-0.966939, -0.252621, 0.034800,
		9.539004, 15.151637, 9.041317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.105459, 15.123384, 8.360339>,  <10.215862, 15.328472, 9.016957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.105459, 15.123384, 8.360339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.737556, 15.147791, 8.515426>,  <9.516814, 15.162436, 8.608478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.737556, 15.147791, 8.515426>,  <10.105459, 15.123384, 8.360339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.737556, 15.147791, 8.515426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341184, 0.364001, -0.866659,
		-0.194011, -0.929398, -0.313974,
		-0.919757, 0.061019, 0.387715,
		9.461629, 15.166097, 8.631741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.673049, 14.758097, 7.987481>,  <10.105459, 15.123384, 8.360339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.673049, 14.758097, 7.987481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.443564, 15.036550, 8.160110>,  <9.305874, 15.203622, 8.263687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.443564, 15.036550, 8.160110>,  <9.673049, 14.758097, 7.987481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.443564, 15.036550, 8.160110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241423, 0.359777, -0.901263,
		-0.782669, -0.621256, -0.038346,
		-0.573710, 0.696133, 0.431572,
		9.271451, 15.245390, 8.289581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.975063, 14.793249, 7.595145>,  <9.673049, 14.758097, 7.987481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.975063, 14.793249, 7.595145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.980570, 15.164346, 7.744334>,  <8.983873, 15.387004, 7.833847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.980570, 15.164346, 7.744334>,  <8.975063, 14.793249, 7.595145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.980570, 15.164346, 7.744334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262898, 0.363241, -0.893835,
		-0.964725, -0.085748, 0.248902,
		0.013766, 0.927741, 0.372971,
		8.984700, 15.442668, 7.856225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.396773, 15.151366, 7.348484>,  <8.975063, 14.793249, 7.595145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.396773, 15.151366, 7.348484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.680569, 15.417542, 7.441276>,  <8.850845, 15.577249, 7.496951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.680569, 15.417542, 7.441276>,  <8.396773, 15.151366, 7.348484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.680569, 15.417542, 7.441276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070788, 0.394812, -0.916031,
		-0.701153, 0.633491, 0.327219,
		0.709488, 0.665441, 0.231981,
		8.893415, 15.617175, 7.510870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<21.170012, 19.947138, 23.363844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.775658, 19.975101, 23.302986>,  <20.539045, 19.991879, 23.266472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.775658, 19.975101, 23.302986>,  <21.170012, 19.947138, 23.363844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.775658, 19.975101, 23.302986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047894, 0.752962, 0.656319,
		0.160441, 0.654341, -0.738984,
		-0.985883, 0.069908, -0.152145,
		20.479893, 19.996075, 23.257343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.050472, 20.674444, 23.175987>,  <21.170012, 19.947138, 23.363844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.050472, 20.674444, 23.175987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.726124, 20.514153, 23.346588>,  <20.531515, 20.417978, 23.448948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.726124, 20.514153, 23.346588>,  <21.050472, 20.674444, 23.175987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.726124, 20.514153, 23.346588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091733, 0.806808, 0.583648,
		-0.577989, 0.434140, -0.690979,
		-0.810873, -0.400728, 0.426501,
		20.482862, 20.393934, 23.474539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.550539, 21.171627, 22.969730>,  <21.050472, 20.674444, 23.175987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.550539, 21.171627, 22.969730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.381514, 20.966234, 23.268469>,  <20.280098, 20.842999, 23.447712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.381514, 20.966234, 23.268469>,  <20.550539, 21.171627, 22.969730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.381514, 20.966234, 23.268469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092916, 0.844231, 0.527864,
		-0.901558, 0.153662, -0.404451,
		-0.422563, -0.513481, 0.746846,
		20.254745, 20.812189, 23.492523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.062019, 21.631161, 23.166845>,  <20.550539, 21.171627, 22.969730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.062019, 21.631161, 23.166845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.082769, 21.372442, 23.471205>,  <20.095219, 21.217211, 23.653820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.082769, 21.372442, 23.471205>,  <20.062019, 21.631161, 23.166845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.082769, 21.372442, 23.471205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058700, 0.758630, 0.648872,
		-0.996927, -0.078325, 0.001388,
		0.051876, -0.646796, 0.760897,
		20.098331, 21.178404, 23.699474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.530123, 21.833441, 23.525011>,  <20.062019, 21.631161, 23.166845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.530123, 21.833441, 23.525011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.741186, 21.616827, 23.786795>,  <19.867825, 21.486858, 23.943865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.741186, 21.616827, 23.786795>,  <19.530123, 21.833441, 23.525011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.741186, 21.616827, 23.786795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185742, 0.678248, 0.710971,
		-0.828902, -0.496709, 0.257296,
		0.527657, -0.541535, 0.654461,
		19.899483, 21.454367, 23.983133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.191095, 21.783796, 24.108265>,  <19.530123, 21.833441, 23.525011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.191095, 21.783796, 24.108265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.557436, 21.709127, 24.250460>,  <19.777241, 21.664326, 24.335775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.557436, 21.709127, 24.250460>,  <19.191095, 21.783796, 24.108265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.557436, 21.709127, 24.250460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161793, 0.638720, 0.752237,
		-0.367477, -0.746452, 0.554770,
		0.915851, -0.186672, 0.355485,
		19.832191, 21.653126, 24.357105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.097631, 21.724312, 24.793514>,  <19.191095, 21.783796, 24.108265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.097631, 21.724312, 24.793514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.495871, 21.761166, 24.800440>,  <19.734814, 21.783278, 24.804594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.495871, 21.761166, 24.800440>,  <19.097631, 21.724312, 24.793514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.495871, 21.761166, 24.800440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076460, 0.691184, 0.718623,
		0.054245, -0.716781, 0.695185,
		0.995596, 0.092135, 0.017312,
		19.794550, 21.788807, 24.805634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.307583, 21.602047, 25.471025>,  <19.097631, 21.724312, 24.793514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.307583, 21.602047, 25.471025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.554491, 21.822567, 25.246510>,  <19.702637, 21.954880, 25.111801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.554491, 21.822567, 25.246510>,  <19.307583, 21.602047, 25.471025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.554491, 21.822567, 25.246510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021062, 0.701590, 0.712269,
		0.786471, -0.451483, 0.421458,
		0.617269, 0.551303, -0.561289,
		19.739672, 21.987957, 25.078123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.891766, 21.776783, 25.894367>,  <19.307583, 21.602047, 25.471025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.891766, 21.776783, 25.894367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.881010, 22.038792, 25.592316>,  <19.874556, 22.195997, 25.411085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.881010, 22.038792, 25.592316>,  <19.891766, 21.776783, 25.894367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.881010, 22.038792, 25.592316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094697, 0.753675, 0.650390,
		0.995143, -0.054019, -0.082296,
		-0.026891, 0.655024, -0.755130,
		19.872942, 22.235298, 25.365776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.293657, 22.301794, 26.165285>,  <19.891766, 21.776783, 25.894367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.293657, 22.301794, 26.165285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.121048, 22.492561, 25.858994>,  <20.017483, 22.607021, 25.675219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.121048, 22.492561, 25.858994>,  <20.293657, 22.301794, 26.165285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.121048, 22.492561, 25.858994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109116, 0.870189, 0.480485,
		0.895479, 0.123787, -0.427545,
		-0.431522, 0.476916, -0.765728,
		19.991590, 22.635635, 25.629274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.777842, 22.870649, 25.963675>,  <20.293657, 22.301794, 26.165285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.777842, 22.870649, 25.963675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.414351, 22.968288, 25.828247>,  <20.196255, 23.026871, 25.746990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.414351, 22.968288, 25.828247>,  <20.777842, 22.870649, 25.963675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.414351, 22.968288, 25.828247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073088, 0.891690, 0.446706,
		0.410937, 0.381190, -0.828146,
		-0.908729, 0.244096, -0.338568,
		20.141731, 23.041517, 25.726677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.876377, 23.539650, 25.551289>,  <20.777842, 22.870649, 25.963675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.876377, 23.539650, 25.551289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.502958, 23.488152, 25.685101>,  <20.278906, 23.457253, 25.765388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.502958, 23.488152, 25.685101>,  <20.876377, 23.539650, 25.551289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.502958, 23.488152, 25.685101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013709, 0.919762, 0.392236,
		-0.358187, 0.370758, -0.856879,
		-0.933549, -0.128747, 0.334530,
		20.222893, 23.449528, 25.785460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.380873, 24.086721, 25.287539>,  <20.876377, 23.539650, 25.551289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.380873, 24.086721, 25.287539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.252533, 23.941996, 25.637657>,  <20.175529, 23.855160, 25.847729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.252533, 23.941996, 25.637657>,  <20.380873, 24.086721, 25.287539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.252533, 23.941996, 25.637657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312569, 0.912832, 0.262752,
		-0.894067, -0.189288, -0.405973,
		-0.320850, -0.361813, 0.875299,
		20.156279, 23.833452, 25.900248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.571480, 24.770082, 25.311569>,  <20.380873, 24.086721, 25.287539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.571480, 24.770082, 25.311569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.842529, 24.529842, 25.141813>,  <21.005159, 24.385698, 25.039961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.842529, 24.529842, 25.141813>,  <20.571480, 24.770082, 25.311569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.842529, 24.529842, 25.141813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731179, -0.488408, -0.476272,
		0.078776, 0.633036, -0.770104,
		0.677622, -0.600602, -0.424388,
		21.045816, 24.349661, 25.014496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.338387, 25.468695, 25.170841>,  <20.571480, 24.770082, 25.311569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.338387, 25.468695, 25.170841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.265524, 25.803602, 24.964619>,  <20.221806, 26.004547, 24.840885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.265524, 25.803602, 24.964619>,  <20.338387, 25.468695, 25.170841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.265524, 25.803602, 24.964619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059349, -0.532737, -0.844197,
		-0.981477, -0.123178, 0.146732,
		-0.182156, 0.837269, -0.515558,
		20.210876, 26.054783, 24.809952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.057207, 25.145206, 24.645140>,  <20.338387, 25.468695, 25.170841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.057207, 25.145206, 24.645140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.071190, 25.528194, 24.530577>,  <20.079580, 25.757988, 24.461838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.071190, 25.528194, 24.530577>,  <20.057207, 25.145206, 24.645140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.071190, 25.528194, 24.530577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211367, -0.273018, -0.938502,
		-0.976782, 0.093347, 0.192833,
		0.034959, 0.957469, -0.286410,
		20.081678, 25.815435, 24.444654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.460899, 25.403473, 24.394407>,  <20.057207, 25.145206, 24.645140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.460899, 25.403473, 24.394407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.724602, 25.654259, 24.228373>,  <19.882824, 25.804729, 24.128752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.724602, 25.654259, 24.228373>,  <19.460899, 25.403473, 24.394407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.724602, 25.654259, 24.228373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283430, -0.304110, -0.909497,
		-0.696452, 0.717241, -0.022787,
		0.659258, 0.626963, -0.415086,
		19.922379, 25.842348, 24.103848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.151182, 25.596096, 23.798393>,  <19.460899, 25.403473, 24.394407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.151182, 25.596096, 23.798393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.526686, 25.694983, 23.702383>,  <19.751987, 25.754314, 23.644777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.526686, 25.694983, 23.702383>,  <19.151182, 25.596096, 23.798393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.526686, 25.694983, 23.702383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108889, -0.448054, -0.887350,
		-0.326913, 0.859145, -0.393697,
		0.938760, 0.247217, -0.240026,
		19.808313, 25.769148, 23.630375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.166975, 25.770590, 23.030834>,  <19.151182, 25.596096, 23.798393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.166975, 25.770590, 23.030834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.536674, 25.655779, 23.131535>,  <19.758495, 25.586893, 23.191954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.536674, 25.655779, 23.131535>,  <19.166975, 25.770590, 23.030834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.536674, 25.655779, 23.131535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139825, -0.359102, -0.922765,
		0.355261, 0.888066, -0.291766,
		0.924250, -0.287026, 0.251749,
		19.813950, 25.569672, 23.207060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.497400, 25.879652, 22.479347>,  <19.166975, 25.770590, 23.030834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.497400, 25.879652, 22.479347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.737066, 25.614862, 22.659475>,  <19.880865, 25.455988, 22.767553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.737066, 25.614862, 22.659475>,  <19.497400, 25.879652, 22.479347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.737066, 25.614862, 22.659475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233109, -0.393854, -0.889123,
		0.765939, 0.637704, -0.081670,
		0.599164, -0.661976, 0.450323,
		19.916815, 25.416269, 22.794573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.018713, 25.768007, 21.971695>,  <19.497400, 25.879652, 22.479347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.018713, 25.768007, 21.971695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.069948, 25.457512, 22.218611>,  <20.100689, 25.271215, 22.366760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.069948, 25.457512, 22.218611>,  <20.018713, 25.768007, 21.971695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.069948, 25.457512, 22.218611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344233, -0.548926, -0.761698,
		0.930106, 0.310057, 0.196896,
		0.128089, -0.776238, 0.617291,
		20.108376, 25.224640, 22.403797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.669113, 25.325504, 21.770674>,  <20.018713, 25.768007, 21.971695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.669113, 25.325504, 21.770674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.457659, 25.061317, 21.983965>,  <20.330786, 24.902805, 22.111938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.457659, 25.061317, 21.983965>,  <20.669113, 25.325504, 21.770674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.457659, 25.061317, 21.983965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099691, -0.672134, -0.733688,
		0.842975, -0.334695, 0.421156,
		-0.528635, -0.660466, 0.533226,
		20.299068, 24.863178, 22.143932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.969288, 24.641094, 21.772823>,  <20.669113, 25.325504, 21.770674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.969288, 24.641094, 21.772823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.584200, 24.553915, 21.836906>,  <20.353148, 24.501608, 21.875357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.584200, 24.553915, 21.836906>,  <20.969288, 24.641094, 21.772823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.584200, 24.553915, 21.836906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066994, -0.765944, -0.639407,
		0.262067, -0.604838, 0.751992,
		-0.962722, -0.217947, 0.160208,
		20.295383, 24.488531, 21.884968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.875036, 23.877428, 21.694778>,  <20.969288, 24.641094, 21.772823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.875036, 23.877428, 21.694778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.484123, 23.961464, 21.683582>,  <20.249577, 24.011887, 21.676865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.484123, 23.961464, 21.683582>,  <20.875036, 23.877428, 21.694778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.484123, 23.961464, 21.683582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160337, -0.819204, -0.550633,
		-0.138613, -0.533635, 0.834278,
		-0.977281, 0.210091, -0.027991,
		20.190939, 24.024490, 21.675184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.480730, 23.301758, 21.919285>,  <20.875036, 23.877428, 21.694778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.480730, 23.301758, 21.919285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.213005, 23.510210, 21.707458>,  <20.052370, 23.635283, 21.580362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.213005, 23.510210, 21.707458>,  <20.480730, 23.301758, 21.919285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.213005, 23.510210, 21.707458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334627, -0.847815, -0.411380,
		-0.663358, -0.098134, 0.741839,
		-0.669313, 0.521132, -0.529567,
		20.012211, 23.666550, 21.548588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.800543, 22.928808, 22.000383>,  <20.480730, 23.301758, 21.919285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.800543, 22.928808, 22.000383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.755424, 23.157465, 21.675299>,  <19.728354, 23.294659, 21.480247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.755424, 23.157465, 21.675299>,  <19.800543, 22.928808, 22.000383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.755424, 23.157465, 21.675299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352598, -0.787729, -0.505132,
		-0.928952, 0.229583, 0.290413,
		-0.112797, 0.571642, -0.812712,
		19.721584, 23.328959, 21.431484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.198502, 22.698530, 21.701366>,  <19.800543, 22.928808, 22.000383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.198502, 22.698530, 21.701366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.334064, 22.909067, 21.389441>,  <19.415401, 23.035389, 21.202286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.334064, 22.909067, 21.389441>,  <19.198502, 22.698530, 21.701366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.334064, 22.909067, 21.389441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315226, -0.717430, -0.621231,
		-0.886440, 0.456356, -0.077225,
		0.338906, 0.526340, -0.779813,
		19.435736, 23.066969, 21.155497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.691563, 22.803505, 21.239594>,  <19.198502, 22.698530, 21.701366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.691563, 22.803505, 21.239594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.034752, 22.820793, 21.034845>,  <19.240665, 22.831165, 20.911997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.034752, 22.820793, 21.034845>,  <18.691563, 22.803505, 21.239594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.034752, 22.820793, 21.034845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308662, -0.753138, -0.580956,
		-0.410618, 0.656441, -0.632833,
		0.857974, 0.043219, -0.511871,
		19.292145, 22.833759, 20.881285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.166225, 23.404613, 21.179056>,  <18.691563, 22.803505, 21.239594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.166225, 23.404613, 21.179056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.785091, 23.349304, 21.287117>,  <17.556410, 23.316118, 21.351954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.785091, 23.349304, 21.287117>,  <18.166225, 23.404613, 21.179056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.785091, 23.349304, 21.287117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074474, 0.756423, 0.649829,
		-0.294202, 0.639301, -0.710450,
		-0.952837, -0.138271, 0.270153,
		17.499241, 23.307823, 21.368162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.783855, 24.059198, 21.125425>,  <18.166225, 23.404613, 21.179056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.783855, 24.059198, 21.125425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.595533, 23.829214, 21.393085>,  <17.482540, 23.691223, 21.553682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.595533, 23.829214, 21.393085>,  <17.783855, 24.059198, 21.125425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.595533, 23.829214, 21.393085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087110, 0.724468, 0.683782,
		-0.877927, 0.380217, -0.290997,
		-0.470804, -0.574962, 0.669150,
		17.454292, 23.656725, 21.593830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.147512, 24.504366, 21.377218>,  <17.783855, 24.059198, 21.125425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.147512, 24.504366, 21.377218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.187889, 24.212605, 21.647856>,  <17.212114, 24.037548, 21.810238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.187889, 24.212605, 21.647856>,  <17.147512, 24.504366, 21.377218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.187889, 24.212605, 21.647856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065662, 0.673701, 0.736081,
		-0.992723, -0.118727, 0.020109,
		0.100940, -0.729405, 0.676594,
		17.218172, 23.993784, 21.850834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.639528, 24.680950, 21.879963>,  <17.147512, 24.504366, 21.377218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.639528, 24.680950, 21.879963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.872932, 24.426838, 22.082323>,  <17.012976, 24.274370, 22.203739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.872932, 24.426838, 22.082323>,  <16.639528, 24.680950, 21.879963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.872932, 24.426838, 22.082323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084411, 0.572129, 0.815808,
		-0.807706, -0.518737, 0.280220,
		0.583512, -0.635279, 0.505899,
		17.047987, 24.236254, 22.234093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.360844, 24.605587, 22.484625>,  <16.639528, 24.680950, 21.879963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.360844, 24.605587, 22.484625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.740206, 24.503269, 22.559561>,  <16.967823, 24.441879, 22.604523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.740206, 24.503269, 22.559561>,  <16.360844, 24.605587, 22.484625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.740206, 24.503269, 22.559561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054829, 0.449647, 0.891522,
		-0.312282, -0.855796, 0.412423,
		0.948406, -0.255793, 0.187339,
		17.024727, 24.426531, 22.615763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.322067, 24.408468, 23.270540>,  <16.360844, 24.605587, 22.484625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.322067, 24.408468, 23.270540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.706255, 24.466383, 23.175432>,  <16.936768, 24.501133, 23.118366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.706255, 24.466383, 23.175432>,  <16.322067, 24.408468, 23.270540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.706255, 24.466383, 23.175432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139243, 0.489733, 0.860682,
		0.241060, -0.859766, 0.450213,
		0.960469, 0.144787, -0.237772,
		16.994396, 24.509819, 23.104101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.748241, 24.059246, 23.809135>,  <16.322067, 24.408468, 23.270540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.748241, 24.059246, 23.809135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.956406, 24.346323, 23.624058>,  <17.081305, 24.518570, 23.513012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.956406, 24.346323, 23.624058>,  <16.748241, 24.059246, 23.809135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.956406, 24.346323, 23.624058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097062, 0.588056, 0.802975,
		0.848381, -0.372968, 0.375692,
		0.520412, 0.717695, -0.462695,
		17.112530, 24.561632, 23.485249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.533356, 23.508940, 24.346251>,  <16.748241, 24.059246, 23.809135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.533356, 23.508940, 24.346251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.155893, 23.598917, 24.443342>,  <15.929417, 23.652905, 24.501596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.155893, 23.598917, 24.443342>,  <16.533356, 23.508940, 24.346251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.155893, 23.598917, 24.443342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330754, -0.616921, -0.714150,
		-0.010899, -0.754194, 0.656562,
		-0.943654, 0.224944, 0.242729,
		15.872797, 23.666401, 24.516161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.071959, 22.854370, 24.201689>,  <16.533356, 23.508940, 24.346251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.071959, 22.854370, 24.201689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.800519, 23.145859, 24.238504>,  <15.637655, 23.320751, 24.260593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.800519, 23.145859, 24.238504>,  <16.071959, 22.854370, 24.201689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.800519, 23.145859, 24.238504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489632, -0.355391, -0.796215,
		-0.547508, -0.585374, 0.597973,
		-0.678597, 0.728721, 0.092039,
		15.596940, 23.364475, 24.266117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.489295, 22.498770, 24.150389>,  <16.071959, 22.854370, 24.201689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.489295, 22.498770, 24.150389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.402063, 22.878473, 24.059744>,  <15.349724, 23.106295, 24.005358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.402063, 22.878473, 24.059744>,  <15.489295, 22.498770, 24.150389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.402063, 22.878473, 24.059744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659805, -0.314501, -0.682456,
		-0.719096, 0.000690, 0.694910,
		-0.218079, 0.949256, -0.226612,
		15.336639, 23.163250, 23.991760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.727617, 22.487789, 24.022060>,  <15.489295, 22.498770, 24.150389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.727617, 22.487789, 24.022060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.887949, 22.806576, 23.841316>,  <14.984148, 22.997849, 23.732870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.887949, 22.806576, 23.841316>,  <14.727617, 22.487789, 24.022060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.887949, 22.806576, 23.841316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426241, -0.274359, -0.862001,
		-0.810959, 0.538118, 0.229729,
		0.400830, 0.796967, -0.451862,
		15.008198, 23.045666, 23.705757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.182731, 22.855057, 23.648674>,  <14.727617, 22.487789, 24.022060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.182731, 22.855057, 23.648674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.527406, 22.981316, 23.489746>,  <14.734211, 23.057072, 23.394390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.527406, 22.981316, 23.489746>,  <14.182731, 22.855057, 23.648674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.527406, 22.981316, 23.489746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376420, -0.127475, -0.917637,
		-0.340298, 0.940275, 0.008972,
		0.861687, 0.315648, -0.397318,
		14.785912, 23.076010, 23.370550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.968872, 23.270033, 23.179827>,  <14.182731, 22.855057, 23.648674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.968872, 23.270033, 23.179827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.334641, 23.150114, 23.071051>,  <14.554103, 23.078163, 23.005785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.334641, 23.150114, 23.071051>,  <13.968872, 23.270033, 23.179827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.334641, 23.150114, 23.071051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366294, -0.327068, -0.871123,
		0.172216, 0.896186, -0.408892,
		0.914423, -0.299796, -0.271941,
		14.608969, 23.060175, 22.989468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.085418, 23.430643, 22.395079>,  <13.968872, 23.270033, 23.179827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.085418, 23.430643, 22.395079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.362863, 23.158094, 22.488575>,  <14.529329, 22.994566, 22.544674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.362863, 23.158094, 22.488575>,  <14.085418, 23.430643, 22.395079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.362863, 23.158094, 22.488575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276547, -0.551495, -0.787004,
		0.665150, 0.481234, -0.570955,
		0.693611, -0.681372, 0.233743,
		14.570946, 22.953682, 22.558699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<18.714485, 18.768147, 28.356647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.980042, 18.540318, 28.162809>,  <19.139376, 18.403620, 28.046507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.980042, 18.540318, 28.162809>,  <18.714485, 18.768147, 28.356647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.980042, 18.540318, 28.162809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716584, -0.299170, -0.630083,
		0.213901, 0.765561, -0.606764,
		0.663893, -0.569573, -0.484596,
		19.179209, 18.369446, 28.017431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.160229, 19.081425, 28.826351>,  <18.714485, 18.768147, 28.356647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.160229, 19.081425, 28.826351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.933313, 19.044300, 28.499043>,  <17.797165, 19.022026, 28.302656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.933313, 19.044300, 28.499043>,  <18.160229, 19.081425, 28.826351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.933313, 19.044300, 28.499043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042151, 0.995599, -0.083700,
		0.822440, -0.012991, -0.568703,
		-0.567288, -0.092810, -0.818273,
		17.763126, 19.016457, 28.253561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.017263, 19.789816, 28.729475>,  <18.160229, 19.081425, 28.826351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.017263, 19.789816, 28.729475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.877851, 19.640814, 28.385437>,  <17.794205, 19.551413, 28.179014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.877851, 19.640814, 28.385437>,  <18.017263, 19.789816, 28.729475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.877851, 19.640814, 28.385437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022117, 0.914111, -0.404860,
		0.937036, -0.160130, -0.310359,
		-0.348533, -0.372504, -0.860096,
		17.773293, 19.529062, 28.127407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.526936, 19.970743, 28.133614>,  <18.017263, 19.789816, 28.729475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.526936, 19.970743, 28.133614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.142559, 19.950525, 28.024771>,  <17.911934, 19.938395, 27.959465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.142559, 19.950525, 28.024771>,  <18.526936, 19.970743, 28.133614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.142559, 19.950525, 28.024771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099273, 0.854801, -0.509373,
		0.258343, -0.516489, -0.816394,
		-0.960939, -0.050546, -0.272105,
		17.854277, 19.935362, 27.943140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.502878, 20.069553, 27.407022>,  <18.526936, 19.970743, 28.133614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.502878, 20.069553, 27.407022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.170694, 20.174406, 27.603642>,  <17.971384, 20.237318, 27.721613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.170694, 20.174406, 27.603642>,  <18.502878, 20.069553, 27.407022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.170694, 20.174406, 27.603642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070505, 0.924734, -0.374026,
		-0.552597, -0.275957, -0.786438,
		-0.830461, 0.262133, 0.491549,
		17.921556, 20.253046, 27.751106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.294933, 19.463932, 26.997581>,  <18.502878, 20.069553, 27.407022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.294933, 19.463932, 26.997581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.353136, 19.075924, 27.075438>,  <18.388058, 18.843119, 27.122150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.353136, 19.075924, 27.075438>,  <18.294933, 19.463932, 26.997581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.353136, 19.075924, 27.075438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987923, 0.153049, 0.024197,
		-0.053260, 0.188767, 0.980577,
		0.145509, -0.970022, 0.194639,
		18.396790, 18.784918, 27.133829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.823801, 19.975531, 26.717371>,  <18.294933, 19.463932, 26.997581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.823801, 19.975531, 26.717371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.483927, 20.174948, 26.648685>,  <17.280003, 20.294598, 26.607473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.483927, 20.174948, 26.648685>,  <17.823801, 19.975531, 26.717371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.483927, 20.174948, 26.648685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448880, -0.854774, -0.260516,
		-0.276657, -0.144277, 0.950076,
		-0.849687, 0.498544, -0.171716,
		17.229021, 20.324511, 26.597170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.264118, 19.555948, 26.805868>,  <17.823801, 19.975531, 26.717371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.264118, 19.555948, 26.805868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.120852, 19.835569, 26.558308>,  <17.034891, 20.003342, 26.409771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.120852, 19.835569, 26.558308>,  <17.264118, 19.555948, 26.805868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.120852, 19.835569, 26.558308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691640, -0.643939, -0.327072,
		-0.627177, 0.310911, 0.714131,
		-0.358167, 0.699054, -0.618903,
		17.013401, 20.045286, 26.372637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.577044, 19.372290, 26.740473>,  <17.264118, 19.555948, 26.805868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.577044, 19.372290, 26.740473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.646896, 19.604055, 26.422031>,  <16.688808, 19.743114, 26.230967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.646896, 19.604055, 26.422031>,  <16.577044, 19.372290, 26.740473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.646896, 19.604055, 26.422031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524664, -0.629425, -0.573194,
		-0.833205, 0.517787, 0.194079,
		0.174635, 0.579415, -0.796104,
		16.699287, 19.777880, 26.183201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.853729, 19.416212, 26.428165>,  <16.577044, 19.372290, 26.740473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.853729, 19.416212, 26.428165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.146772, 19.490177, 26.166145>,  <16.322598, 19.534557, 26.008932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.146772, 19.490177, 26.166145>,  <15.853729, 19.416212, 26.428165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.146772, 19.490177, 26.166145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336493, -0.738165, -0.584709,
		-0.591658, 0.648783, -0.478563,
		0.732607, 0.184915, -0.655052,
		16.366554, 19.545652, 25.969629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.507044, 19.512819, 25.850994>,  <15.853729, 19.416212, 26.428165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.507044, 19.512819, 25.850994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.884923, 19.437784, 25.743397>,  <16.111650, 19.392763, 25.678839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.884923, 19.437784, 25.743397>,  <15.507044, 19.512819, 25.850994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.884923, 19.437784, 25.743397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326573, -0.612962, -0.719464,
		-0.029919, 0.767522, -0.640325,
		0.944698, -0.187587, -0.268991,
		16.168333, 19.381508, 25.662699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.517797, 19.548542, 25.113323>,  <15.507044, 19.512819, 25.850994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.517797, 19.548542, 25.113323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.846504, 19.348021, 25.221685>,  <16.043728, 19.227707, 25.286703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.846504, 19.348021, 25.221685>,  <15.517797, 19.548542, 25.113323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.846504, 19.348021, 25.221685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091678, -0.585543, -0.805441,
		0.562399, 0.637049, -0.527139,
		0.821768, -0.501306, 0.270905,
		16.093035, 19.197628, 25.302958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.838383, 19.524828, 25.501671>,  <15.517797, 19.548542, 25.113323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.838383, 19.524828, 25.501671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.453139, 19.622561, 25.456549>,  <14.221993, 19.681200, 25.429476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.453139, 19.622561, 25.456549>,  <14.838383, 19.524828, 25.501671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.453139, 19.622561, 25.456549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152470, 0.840809, 0.519416,
		0.221756, 0.483054, -0.847043,
		-0.963108, 0.244332, -0.112804,
		14.164207, 19.695860, 25.422709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.764254, 20.333714, 25.507288>,  <14.838383, 19.524828, 25.501671>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.764254, 20.333714, 25.507288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.392196, 20.223198, 25.604031>,  <14.168961, 20.156889, 25.662077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.392196, 20.223198, 25.604031>,  <14.764254, 20.333714, 25.507288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.392196, 20.223198, 25.604031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076972, 0.790743, 0.607290,
		-0.359033, 0.546252, -0.756772,
		-0.930145, -0.276288, 0.241857,
		14.113153, 20.140312, 25.676588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.421911, 20.971748, 25.420126>,  <14.764254, 20.333714, 25.507288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.421911, 20.971748, 25.420126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.198577, 20.748465, 25.665617>,  <14.064576, 20.614494, 25.812912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.198577, 20.748465, 25.665617>,  <14.421911, 20.971748, 25.420126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.198577, 20.748465, 25.665617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133219, 0.669851, 0.730447,
		-0.818849, 0.489595, -0.299638,
		-0.558336, -0.558208, 0.613730,
		14.031076, 20.581001, 25.849735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.979679, 21.386816, 25.769934>,  <14.421911, 20.971748, 25.420126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.979679, 21.386816, 25.769934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.996632, 21.076014, 26.021160>,  <14.006804, 20.889532, 26.171896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.996632, 21.076014, 26.021160>,  <13.979679, 21.386816, 25.769934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.996632, 21.076014, 26.021160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168085, 0.625214, 0.762138,
		-0.984861, 0.073267, 0.157101,
		0.042382, -0.777006, 0.628064,
		14.009346, 20.842911, 26.209579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.839486, 21.629755, 26.368427>,  <13.979679, 21.386816, 25.769934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.839486, 21.629755, 26.368427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.027696, 21.296198, 26.483828>,  <14.140621, 21.096064, 26.553068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.027696, 21.296198, 26.483828>,  <13.839486, 21.629755, 26.368427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.027696, 21.296198, 26.483828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372390, 0.484073, 0.791833,
		-0.799958, -0.265140, 0.538301,
		0.470523, -0.833891, 0.288503,
		14.168853, 21.046030, 26.570379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.679609, 21.570347, 27.063450>,  <13.839486, 21.629755, 26.368427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.679609, 21.570347, 27.063450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.000854, 21.339270, 27.005100>,  <14.193602, 21.200623, 26.970091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.000854, 21.339270, 27.005100>,  <13.679609, 21.570347, 27.063450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.000854, 21.339270, 27.005100> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476705, 0.476121, 0.738959,
		-0.357437, -0.663008, 0.657768,
		0.803113, -0.577693, -0.145876,
		14.241789, 21.165962, 26.961338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.868305, 21.361469, 27.700766>,  <13.679609, 21.570347, 27.063450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.868305, 21.361469, 27.700766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.195866, 21.302986, 27.478765>,  <14.392402, 21.267897, 27.345566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.195866, 21.302986, 27.478765>,  <13.868305, 21.361469, 27.700766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.195866, 21.302986, 27.478765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546972, 0.491728, 0.677514,
		0.173849, -0.858386, 0.482649,
		0.818900, -0.146210, -0.555000,
		14.441536, 21.259123, 27.312265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.294164, 21.110434, 28.164660>,  <13.868305, 21.361469, 27.700766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.294164, 21.110434, 28.164660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.549550, 21.233667, 27.882540>,  <14.702782, 21.307608, 27.713268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.549550, 21.233667, 27.882540>,  <14.294164, 21.110434, 28.164660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.549550, 21.233667, 27.882540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645150, 0.285483, 0.708718,
		0.419696, -0.907515, -0.016490,
		0.638465, 0.308084, -0.705299,
		14.741090, 21.326092, 27.670950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.992483, 21.025043, 28.482908>,  <14.294164, 21.110434, 28.164660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.992483, 21.025043, 28.482908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.059033, 21.262192, 28.167740>,  <15.098964, 21.404482, 27.978638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.059033, 21.262192, 28.167740>,  <14.992483, 21.025043, 28.482908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.059033, 21.262192, 28.167740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750025, 0.442654, 0.491448,
		0.640142, -0.672726, -0.371022,
		0.166376, 0.592872, -0.787923,
		15.108946, 21.440054, 27.931362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.687008, 21.132584, 28.381935>,  <14.992483, 21.025043, 28.482908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.687008, 21.132584, 28.381935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.592844, 21.458378, 28.169823>,  <15.536345, 21.653854, 28.042555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.592844, 21.458378, 28.169823>,  <15.687008, 21.132584, 28.381935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.592844, 21.458378, 28.169823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737652, 0.504989, 0.448169,
		0.632813, -0.285660, -0.719685,
		-0.235409, 0.814484, -0.530281,
		15.522222, 21.702723, 28.010738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.276114, 21.311983, 27.971605>,  <15.687008, 21.132584, 28.381935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.276114, 21.311983, 27.971605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.058527, 21.643024, 28.026997>,  <15.927976, 21.841650, 28.060232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.058527, 21.643024, 28.026997>,  <16.276114, 21.311983, 27.971605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.058527, 21.643024, 28.026997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798930, 0.460362, 0.387011,
		0.256542, 0.321154, -0.911618,
		-0.543964, 0.827603, 0.138478,
		15.895338, 21.891306, 28.068541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.664974, 21.814705, 27.689867>,  <16.276114, 21.311983, 27.971605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.664974, 21.814705, 27.689867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.414921, 22.001339, 27.940149>,  <16.264889, 22.113319, 28.090319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.414921, 22.001339, 27.940149>,  <16.664974, 21.814705, 27.689867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.414921, 22.001339, 27.940149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754867, 0.565247, 0.332674,
		-0.198457, 0.680290, -0.705564,
		-0.625132, 0.466586, 0.625705,
		16.227381, 22.141315, 28.127861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.719322, 22.625084, 27.540630>,  <16.664974, 21.814705, 27.689867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.719322, 22.625084, 27.540630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.573895, 22.532619, 27.901602>,  <16.486637, 22.477140, 28.118185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.573895, 22.532619, 27.901602>,  <16.719322, 22.625084, 27.540630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.573895, 22.532619, 27.901602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649220, 0.631853, 0.423409,
		-0.668079, 0.739815, -0.079649,
		-0.363571, -0.231162, 0.902430,
		16.464823, 22.463270, 28.172331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.583990, 23.213245, 27.810879>,  <16.719322, 22.625084, 27.540630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.583990, 23.213245, 27.810879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.610674, 22.987688, 28.140139>,  <16.626684, 22.852354, 28.337694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.610674, 22.987688, 28.140139>,  <16.583990, 23.213245, 27.810879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.610674, 22.987688, 28.140139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789139, 0.534663, 0.302317,
		-0.610582, 0.629411, 0.480657,
		0.066708, -0.563895, 0.823148,
		16.630686, 22.818520, 28.387083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.005842, 23.547722, 27.375246>,  <16.583990, 23.213245, 27.810879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.005842, 23.547722, 27.375246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.263506, 23.842201, 27.292233>,  <16.418104, 24.018888, 27.242424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.263506, 23.842201, 27.292233>,  <16.005842, 23.547722, 27.375246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.263506, 23.842201, 27.292233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464563, 0.161013, -0.870779,
		-0.607651, 0.657332, 0.445730,
		0.644159, 0.736200, -0.207532,
		16.456753, 24.063061, 27.229973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.633080, 24.002071, 26.951147>,  <16.005842, 23.547722, 27.375246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.633080, 24.002071, 26.951147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.011585, 24.117538, 26.892832>,  <16.238689, 24.186819, 26.857843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.011585, 24.117538, 26.892832>,  <15.633080, 24.002071, 26.951147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.011585, 24.117538, 26.892832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223448, 0.257730, -0.940025,
		-0.233782, 0.922088, 0.308383,
		0.946265, 0.288669, -0.145786,
		16.295465, 24.204140, 26.849096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.643683, 24.732689, 26.709097>,  <15.633080, 24.002071, 26.951147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.643683, 24.732689, 26.709097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.965088, 24.524168, 26.594128>,  <16.157930, 24.399055, 26.525146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.965088, 24.524168, 26.594128>,  <15.643683, 24.732689, 26.709097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.965088, 24.524168, 26.594128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298113, 0.065549, -0.952277,
		0.515264, 0.850851, -0.102738,
		0.803512, -0.521302, -0.287424,
		16.206142, 24.367777, 26.507900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.782871, 25.109762, 26.167486>,  <15.643683, 24.732689, 26.709097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.782871, 25.109762, 26.167486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.970275, 24.760195, 26.115696>,  <16.082718, 24.550455, 26.084621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.970275, 24.760195, 26.115696>,  <15.782871, 25.109762, 26.167486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.970275, 24.760195, 26.115696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193587, 0.041441, -0.980207,
		0.861988, 0.484302, -0.149764,
		0.468510, -0.873919, -0.129476,
		16.110828, 24.498018, 26.076853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.164036, 25.137253, 25.526789>,  <15.782871, 25.109762, 26.167486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.164036, 25.137253, 25.526789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.110371, 24.749228, 25.607763>,  <16.078171, 24.516413, 25.656347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.110371, 24.749228, 25.607763>,  <16.164036, 25.137253, 25.526789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.110371, 24.749228, 25.607763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269490, -0.160868, -0.949472,
		0.953612, -0.181939, -0.239840,
		-0.134163, -0.970062, 0.202436,
		16.070122, 24.458208, 25.668493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.344873, 24.789064, 24.846909>,  <16.164036, 25.137253, 25.526789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.344873, 24.789064, 24.846909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.193525, 24.479258, 25.049671>,  <16.102716, 24.293373, 25.171329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.193525, 24.479258, 25.049671>,  <16.344873, 24.789064, 24.846909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.193525, 24.479258, 25.049671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099704, -0.510335, -0.854176,
		0.920269, -0.373736, 0.115872,
		-0.378370, -0.774519, 0.506909,
		16.080015, 24.246902, 25.201744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.534399, 24.206362, 24.468634>,  <16.344873, 24.789064, 24.846909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.534399, 24.206362, 24.468634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.208780, 24.083748, 24.665962>,  <16.013409, 24.010180, 24.784359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.208780, 24.083748, 24.665962>,  <16.534399, 24.206362, 24.468634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.208780, 24.083748, 24.665962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305403, -0.496559, -0.812501,
		0.494022, -0.812075, 0.310606,
		-0.814046, -0.306533, 0.493321,
		15.964566, 23.991787, 24.813959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.242722, 24.312323, 24.351963>,  <16.534399, 24.206362, 24.468634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.242722, 24.312323, 24.351963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.273315, 24.612171, 24.088989>,  <17.291672, 24.792080, 23.931206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.273315, 24.612171, 24.088989>,  <17.242722, 24.312323, 24.351963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.273315, 24.612171, 24.088989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076662, 0.661834, 0.745720,
		0.994119, -0.006636, 0.108088,
		0.076485, 0.749621, -0.657434,
		17.296261, 24.837057, 23.891760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.885227, 24.643393, 24.411169>,  <17.242722, 24.312323, 24.351963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.885227, 24.643393, 24.411169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.651157, 24.923647, 24.247862>,  <17.510715, 25.091799, 24.149878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.651157, 24.923647, 24.247862>,  <17.885227, 24.643393, 24.411169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.651157, 24.923647, 24.247862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153617, 0.590132, 0.792556,
		0.796225, 0.401065, -0.452959,
		-0.585172, 0.700636, -0.408268,
		17.475605, 25.133837, 24.125381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.296522, 25.316259, 24.381111>,  <17.885227, 24.643393, 24.411169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.296522, 25.316259, 24.381111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.914801, 25.431860, 24.350685>,  <17.685768, 25.501221, 24.332430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.914801, 25.431860, 24.350685>,  <18.296522, 25.316259, 24.381111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.914801, 25.431860, 24.350685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203702, 0.815296, 0.542031,
		0.218661, 0.501767, -0.836909,
		-0.954302, 0.289001, -0.076063,
		17.628510, 25.518560, 24.327866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.379128, 26.026106, 24.383644>,  <18.296522, 25.316259, 24.381111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.379128, 26.026106, 24.383644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.988514, 25.974947, 24.452948>,  <17.754145, 25.944252, 24.494530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.988514, 25.974947, 24.452948>,  <18.379128, 26.026106, 24.383644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.988514, 25.974947, 24.452948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022991, 0.861856, 0.506632,
		-0.214122, 0.490761, -0.844574,
		-0.976536, -0.127899, 0.173260,
		17.695553, 25.936577, 24.504925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.048239, 26.670372, 24.173019>,  <18.379128, 26.026106, 24.383644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.048239, 26.670372, 24.173019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.825768, 26.485367, 24.449207>,  <17.692286, 26.374365, 24.614920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.825768, 26.485367, 24.449207>,  <18.048239, 26.670372, 24.173019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.825768, 26.485367, 24.449207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035203, 0.816971, 0.575603,
		-0.830318, 0.344444, -0.438099,
		-0.556178, -0.462511, 0.690471,
		17.658915, 26.346613, 24.656349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.790756, 27.170568, 24.531410>,  <18.048239, 26.670372, 24.173019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.790756, 27.170568, 24.531410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.652645, 26.901939, 24.793640>,  <17.569778, 26.740763, 24.950977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.652645, 26.901939, 24.793640>,  <17.790756, 27.170568, 24.531410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.652645, 26.901939, 24.793640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005938, 0.696955, 0.717091,
		-0.938482, 0.251488, -0.236655,
		-0.345277, -0.671571, 0.655573,
		17.549063, 26.700468, 24.990313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.061773, 27.374821, 24.768400>,  <17.790756, 27.170568, 24.531410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.061773, 27.374821, 24.768400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.287066, 27.168091, 25.026289>,  <17.422241, 27.044054, 25.181023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.287066, 27.168091, 25.026289>,  <17.061773, 27.374821, 24.768400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.287066, 27.168091, 25.026289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016908, 0.787296, 0.616344,
		-0.826128, -0.336242, 0.452166,
		0.563229, -0.516824, 0.644722,
		17.456034, 27.013044, 25.219706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.833397, 27.585518, 25.440975>,  <17.061773, 27.374821, 24.768400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.833397, 27.585518, 25.440975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.195101, 27.430267, 25.512165>,  <17.412123, 27.337116, 25.554880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.195101, 27.430267, 25.512165>,  <16.833397, 27.585518, 25.440975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.195101, 27.430267, 25.512165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151168, 0.680824, 0.716677,
		-0.399332, -0.621157, 0.674313,
		0.904258, -0.388127, 0.177976,
		17.466377, 27.313829, 25.565557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.869844, 27.109398, 26.056051>,  <16.833397, 27.585518, 25.440975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.869844, 27.109398, 26.056051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.199255, 27.319344, 25.969959>,  <17.396902, 27.445311, 25.918304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.199255, 27.319344, 25.969959>,  <16.869844, 27.109398, 26.056051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.199255, 27.319344, 25.969959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145490, 0.562134, 0.814149,
		0.548292, -0.639168, 0.539297,
		0.823534, 0.524853, -0.215221,
		17.446312, 27.476803, 25.905390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<15.696322, 16.368563, 14.806271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.990115, 16.107735, 14.731076>,  <16.166391, 15.951238, 14.685960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.990115, 16.107735, 14.731076>,  <15.696322, 16.368563, 14.806271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.990115, 16.107735, 14.731076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436218, 0.241444, 0.866844,
		-0.519856, -0.718684, 0.461782,
		0.734482, -0.652072, -0.187987,
		16.210459, 15.912113, 14.674680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.843966, 15.956187, 15.451941>,  <15.696322, 16.368563, 14.806271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.843966, 15.956187, 15.451941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.183332, 15.979591, 15.241507>,  <16.386951, 15.993634, 15.115246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.183332, 15.979591, 15.241507>,  <15.843966, 15.956187, 15.451941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.183332, 15.979591, 15.241507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479495, 0.336045, 0.810653,
		0.224221, -0.940027, 0.257050,
		0.848416, 0.058511, -0.526086,
		16.437857, 15.997145, 15.083680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.471611, 15.694458, 15.913405>,  <15.843966, 15.956187, 15.451941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.471611, 15.694458, 15.913405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.599844, 15.945048, 15.629221>,  <16.676785, 16.095402, 15.458711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.599844, 15.945048, 15.629221>,  <16.471611, 15.694458, 15.913405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.599844, 15.945048, 15.629221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509356, 0.518359, 0.686921,
		0.798613, -0.582093, -0.152921,
		0.320584, 0.626475, -0.710461,
		16.696018, 16.132992, 15.416082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.052401, 15.969462, 16.223480>,  <16.471611, 15.694458, 15.913405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.052401, 15.969462, 16.223480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.012203, 16.225533, 15.918830>,  <16.988085, 16.379175, 15.736039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.012203, 16.225533, 15.918830>,  <17.052401, 15.969462, 16.223480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.012203, 16.225533, 15.918830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397784, 0.727511, 0.559014,
		0.911959, -0.246785, -0.327762,
		-0.100495, 0.640176, -0.761627,
		16.982056, 16.417585, 15.690342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.684429, 16.426462, 16.214645>,  <17.052401, 15.969462, 16.223480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.684429, 16.426462, 16.214645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.386429, 16.608332, 16.019403>,  <17.207628, 16.717453, 15.902259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.386429, 16.608332, 16.019403>,  <17.684429, 16.426462, 16.214645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.386429, 16.608332, 16.019403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159224, 0.831777, 0.531784,
		0.647782, 0.318461, -0.692070,
		-0.745001, 0.454674, -0.488104,
		17.162930, 16.744734, 15.872972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.927235, 17.081278, 16.274929>,  <17.684429, 16.426462, 16.214645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.927235, 17.081278, 16.274929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.554552, 17.164000, 16.155493>,  <17.330942, 17.213633, 16.083832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.554552, 17.164000, 16.155493>,  <17.927235, 17.081278, 16.274929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.554552, 17.164000, 16.155493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005658, 0.830241, 0.557375,
		0.363170, 0.517621, -0.774711,
		-0.931706, 0.206805, -0.298590,
		17.275040, 17.226042, 16.065916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.842855, 17.843676, 16.056181>,  <17.927235, 17.081278, 16.274929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.842855, 17.843676, 16.056181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.481432, 17.697874, 16.146263>,  <17.264578, 17.610394, 16.200314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.481432, 17.697874, 16.146263>,  <17.842855, 17.843676, 16.056181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.481432, 17.697874, 16.146263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195631, 0.818596, 0.540027,
		-0.381196, 0.443889, -0.810958,
		-0.903559, -0.364505, 0.225207,
		17.210365, 17.588522, 16.213825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.391088, 18.307980, 15.883186>,  <17.842855, 17.843676, 16.056181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.391088, 18.307980, 15.883186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.179363, 18.083986, 16.138136>,  <17.052328, 17.949591, 16.291105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.179363, 18.083986, 16.138136>,  <17.391088, 18.307980, 15.883186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.179363, 18.083986, 16.138136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385333, 0.827962, 0.407428,
		-0.755875, -0.029945, -0.654031,
		-0.529312, -0.559984, 0.637375,
		17.020569, 17.915991, 16.329348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.678688, 18.573301, 15.850523>,  <17.391088, 18.307980, 15.883186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.678688, 18.573301, 15.850523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.725691, 18.354290, 16.181921>,  <16.753893, 18.222883, 16.380760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.725691, 18.354290, 16.181921>,  <16.678688, 18.573301, 15.850523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.725691, 18.354290, 16.181921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332422, 0.764459, 0.552356,
		-0.935782, -0.340317, -0.092181,
		0.117508, -0.547528, 0.828496,
		16.760942, 18.190031, 16.430470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.060041, 18.617529, 16.195448>,  <16.678688, 18.573301, 15.850523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.060041, 18.617529, 16.195448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327465, 18.527330, 16.478905>,  <16.487919, 18.473211, 16.648979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327465, 18.527330, 16.478905>,  <16.060041, 18.617529, 16.195448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.327465, 18.527330, 16.478905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420495, 0.671326, 0.610333,
		-0.613360, -0.706026, 0.354001,
		0.668561, -0.225498, 0.708644,
		16.528034, 18.459681, 16.691498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.622413, 18.698166, 16.744652>,  <16.060041, 18.617529, 16.195448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.622413, 18.698166, 16.744652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.994058, 18.685024, 16.891985>,  <16.217045, 18.677139, 16.980385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.994058, 18.685024, 16.891985>,  <15.622413, 18.698166, 16.744652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.994058, 18.685024, 16.891985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282691, 0.579032, 0.764727,
		-0.238401, -0.814643, 0.528699,
		0.929113, -0.032854, 0.368334,
		16.272791, 18.675169, 17.002485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.461479, 18.844156, 17.523323>,  <15.622413, 18.698166, 16.744652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.461479, 18.844156, 17.523323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.847919, 18.909126, 17.443052>,  <16.079782, 18.948109, 17.394890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.847919, 18.909126, 17.443052>,  <15.461479, 18.844156, 17.523323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.847919, 18.909126, 17.443052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030231, 0.843125, 0.536867,
		0.256397, -0.512600, 0.819452,
		0.966098, 0.162424, -0.200679,
		16.137749, 18.957853, 17.382849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.018775, 18.534687, 18.110132>,  <15.461479, 18.844156, 17.523323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.018775, 18.534687, 18.110132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.635664, 18.628498, 18.176657>,  <14.405797, 18.684784, 18.216572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.635664, 18.628498, 18.176657>,  <15.018775, 18.534687, 18.110132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.635664, 18.628498, 18.176657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286813, -0.739098, -0.609485,
		-0.020022, -0.631451, 0.775157,
		-0.957777, 0.234528, 0.166310,
		14.348330, 18.698856, 18.226549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.626453, 17.818735, 18.242802>,  <15.018775, 18.534687, 18.110132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.626453, 17.818735, 18.242802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.358787, 18.107531, 18.172436>,  <14.198186, 18.280807, 18.130217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.358787, 18.107531, 18.172436>,  <14.626453, 17.818735, 18.242802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.358787, 18.107531, 18.172436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461845, -0.589528, -0.662688,
		-0.582147, -0.362218, 0.727944,
		-0.669181, 0.721979, -0.175903,
		14.158036, 18.324127, 18.119661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.049403, 17.569221, 18.382706>,  <14.626453, 17.818735, 18.242802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.049403, 17.569221, 18.382706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.942719, 17.851879, 18.120554>,  <13.878708, 18.021473, 17.963263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.942719, 17.851879, 18.120554>,  <14.049403, 17.569221, 18.382706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.942719, 17.851879, 18.120554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521947, -0.677563, -0.518151,
		-0.810207, 0.203876, 0.549544,
		-0.266712, 0.706642, -0.655379,
		13.862704, 18.063871, 17.923941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.360178, 17.479216, 18.410175>,  <14.049403, 17.569221, 18.382706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.360178, 17.479216, 18.410175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.478451, 17.646717, 18.066730>,  <13.549415, 17.747219, 17.860662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.478451, 17.646717, 18.066730>,  <13.360178, 17.479216, 18.410175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.478451, 17.646717, 18.066730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543120, -0.665712, -0.511710,
		-0.785871, 0.617633, 0.030596,
		0.295682, 0.418755, -0.858613,
		13.567155, 17.772345, 17.809147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.834270, 17.257891, 18.079628>,  <13.360178, 17.479216, 18.410175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.834270, 17.257891, 18.079628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.075875, 17.395590, 17.792112>,  <13.220839, 17.478209, 17.619602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.075875, 17.395590, 17.792112>,  <12.834270, 17.257891, 18.079628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.075875, 17.395590, 17.792112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442291, -0.605478, -0.661645,
		-0.662982, 0.717558, -0.213460,
		0.604014, 0.344248, -0.718791,
		13.257079, 17.498865, 17.576475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.386686, 17.499746, 17.458218>,  <12.834270, 17.257891, 18.079628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.386686, 17.499746, 17.458218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.749765, 17.398966, 17.323992>,  <12.967613, 17.338497, 17.243456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.749765, 17.398966, 17.323992>,  <12.386686, 17.499746, 17.458218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.749765, 17.398966, 17.323992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417452, -0.623438, -0.661104,
		-0.042638, 0.740166, -0.671071,
		0.907698, -0.251952, -0.335566,
		13.022075, 17.323380, 17.223322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.268981, 17.509901, 16.795576>,  <12.386686, 17.499746, 17.458218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.268981, 17.509901, 16.795576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.605239, 17.302574, 16.858397>,  <12.806993, 17.178179, 16.896088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.605239, 17.302574, 16.858397>,  <12.268981, 17.509901, 16.795576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.605239, 17.302574, 16.858397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320476, -0.709829, -0.627246,
		0.436589, 0.476961, -0.762822,
		0.840646, -0.518315, 0.157049,
		12.857432, 17.147079, 16.905512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.309582, 17.246969, 16.102903>,  <12.268981, 17.509901, 16.795576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.309582, 17.246969, 16.102903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.528579, 17.039087, 16.365250>,  <12.659977, 16.914358, 16.522657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.528579, 17.039087, 16.365250>,  <12.309582, 17.246969, 16.102903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.528579, 17.039087, 16.365250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272850, -0.851802, -0.447199,
		0.791078, 0.065886, -0.608157,
		0.547493, -0.519705, 0.655865,
		12.692826, 16.883175, 16.562010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.686422, 16.758461, 15.664104>,  <12.309582, 17.246969, 16.102903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.686422, 16.758461, 15.664104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.683453, 16.624004, 16.040817>,  <12.681671, 16.543329, 16.266846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.683453, 16.624004, 16.040817>,  <12.686422, 16.758461, 15.664104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.683453, 16.624004, 16.040817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370088, -0.874008, -0.314871,
		0.928967, -0.350880, -0.117915,
		-0.007423, -0.336144, 0.941782,
		12.681226, 16.523161, 16.323351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.168481, 16.206968, 15.678291>,  <12.686422, 16.758461, 15.664104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.168481, 16.206968, 15.678291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.885283, 16.160011, 15.956848>,  <12.715364, 16.131838, 16.123983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.885283, 16.160011, 15.956848>,  <13.168481, 16.206968, 15.678291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.885283, 16.160011, 15.956848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352275, -0.795943, -0.492317,
		0.612083, -0.593880, 0.522169,
		-0.707994, -0.117392, 0.696393,
		12.672885, 16.124794, 16.165766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.133116, 15.524405, 15.778237>,  <13.168481, 16.206968, 15.678291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.133116, 15.524405, 15.778237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.781740, 15.638348, 15.931705>,  <12.570915, 15.706713, 16.023785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.781740, 15.638348, 15.931705>,  <13.133116, 15.524405, 15.778237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.781740, 15.638348, 15.931705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435519, -0.807659, -0.397505,
		0.196642, -0.516280, 0.833539,
		-0.878439, 0.284856, 0.383669,
		12.518209, 15.723804, 16.046804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.873497, 14.929197, 16.037348>,  <13.133116, 15.524405, 15.778237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.873497, 14.929197, 16.037348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.544994, 15.155193, 16.005535>,  <12.347893, 15.290791, 15.986447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.544994, 15.155193, 16.005535>,  <12.873497, 14.929197, 16.037348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.544994, 15.155193, 16.005535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529500, -0.806638, -0.262610,
		-0.212526, -0.173558, 0.961619,
		-0.821256, 0.564989, -0.079532,
		12.298617, 15.324690, 15.981675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.257062, 14.480416, 16.280750>,  <12.873497, 14.929197, 16.037348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.257062, 14.480416, 16.280750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.094687, 14.774723, 16.063913>,  <11.997261, 14.951307, 15.933811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.094687, 14.774723, 16.063913>,  <12.257062, 14.480416, 16.280750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.094687, 14.774723, 16.063913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432726, -0.677199, -0.595104,
		-0.804960, -0.006999, 0.593287,
		-0.405939, 0.735766, -0.542090,
		11.972905, 14.995453, 15.901286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.426241, 14.330654, 16.245144>,  <12.257062, 14.480416, 16.280750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.426241, 14.330654, 16.245144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.569533, 14.557006, 15.948104>,  <11.655509, 14.692817, 15.769880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.569533, 14.557006, 15.948104>,  <11.426241, 14.330654, 16.245144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.569533, 14.557006, 15.948104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379208, -0.638634, -0.669588,
		-0.853154, 0.521467, -0.014193,
		0.358232, 0.565879, -0.742598,
		11.677003, 14.726769, 15.725325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.198114, 13.650546, 16.509630>,  <11.426241, 14.330654, 16.245144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.198114, 13.650546, 16.509630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.487145, 13.374356, 16.496199>,  <11.660564, 13.208643, 16.488140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.487145, 13.374356, 16.496199>,  <11.198114, 13.650546, 16.509630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.487145, 13.374356, 16.496199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315529, 0.286201, 0.904727,
		-0.615080, -0.664331, 0.424667,
		0.722578, -0.690474, -0.033579,
		11.703918, 13.167214, 16.486124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.141501, 13.204803, 17.088951>,  <11.198114, 13.650546, 16.509630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.141501, 13.204803, 17.088951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.523963, 13.254763, 16.982992>,  <11.753440, 13.284739, 16.919416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.523963, 13.254763, 16.982992>,  <11.141501, 13.204803, 17.088951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.523963, 13.254763, 16.982992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208217, 0.346163, 0.914777,
		0.205953, -0.929823, 0.304979,
		0.956153, 0.124899, -0.264898,
		11.810809, 13.292233, 16.903522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.542214, 12.877778, 17.603304>,  <11.141501, 13.204803, 17.088951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.542214, 12.877778, 17.603304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.750700, 13.193742, 17.474072>,  <11.875792, 13.383320, 17.396532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.750700, 13.193742, 17.474072>,  <11.542214, 12.877778, 17.603304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.750700, 13.193742, 17.474072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057794, 0.410369, 0.910086,
		0.851467, -0.455676, 0.259542,
		0.521213, 0.789909, -0.323081,
		11.907063, 13.430715, 17.377148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.405059, 13.422643, 18.043713>,  <11.542214, 12.877778, 17.603304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.405059, 13.422643, 18.043713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.801594, 13.433447, 17.992302>,  <12.039515, 13.439930, 17.961454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.801594, 13.433447, 17.992302>,  <11.405059, 13.422643, 18.043713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.801594, 13.433447, 17.992302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083114, 0.628709, 0.773186,
		0.101691, -0.777171, 0.621018,
		0.991338, 0.027011, -0.128528,
		12.098995, 13.441550, 17.953743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.831464, 13.194483, 18.610796>,  <11.405059, 13.422643, 18.043713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.831464, 13.194483, 18.610796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.047880, 13.459310, 18.403358>,  <12.177730, 13.618206, 18.278896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.047880, 13.459310, 18.403358>,  <11.831464, 13.194483, 18.610796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.047880, 13.459310, 18.403358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161954, 0.523080, 0.836755,
		0.825255, -0.536707, 0.175783,
		0.541041, 0.662067, -0.518596,
		12.210193, 13.657929, 18.247780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.397363, 13.447723, 19.080282>,  <11.831464, 13.194483, 18.610796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.397363, 13.447723, 19.080282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.377832, 13.702627, 18.772642>,  <12.366115, 13.855570, 18.588058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.377832, 13.702627, 18.772642>,  <12.397363, 13.447723, 19.080282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.377832, 13.702627, 18.772642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307802, 0.742143, 0.595384,
		0.950197, -0.207661, -0.232386,
		-0.048826, 0.637260, -0.769101,
		12.363185, 13.893806, 18.541912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.959171, 13.846112, 19.271397>,  <12.397363, 13.447723, 19.080282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.959171, 13.846112, 19.271397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.717880, 14.065901, 19.040157>,  <12.573106, 14.197774, 18.901413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.717880, 14.065901, 19.040157>,  <12.959171, 13.846112, 19.271397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.717880, 14.065901, 19.040157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180443, 0.800055, 0.572148,
		0.776890, 0.240821, -0.581763,
		-0.603227, 0.549471, -0.578100,
		12.536912, 14.230742, 18.866728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.244011, 14.497229, 19.330814>,  <12.959171, 13.846112, 19.271397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.244011, 14.497229, 19.330814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.890099, 14.579191, 19.163397>,  <12.677752, 14.628368, 19.062946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.890099, 14.579191, 19.163397>,  <13.244011, 14.497229, 19.330814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.890099, 14.579191, 19.163397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042530, 0.858888, 0.510395,
		0.464064, 0.469388, -0.751213,
		-0.884780, 0.204906, -0.418542,
		12.624664, 14.640663, 19.037834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.292328, 15.156603, 19.053308>,  <13.244011, 14.497229, 19.330814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.292328, 15.156603, 19.053308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.905005, 15.072934, 19.107901>,  <12.672610, 15.022733, 19.140656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.905005, 15.072934, 19.107901>,  <13.292328, 15.156603, 19.053308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.905005, 15.072934, 19.107901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099239, 0.823682, 0.558301,
		-0.229197, 0.527063, -0.818336,
		-0.968308, -0.209172, 0.136480,
		12.614512, 15.010182, 19.148844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.001958, 15.807419, 18.986830>,  <13.292328, 15.156603, 19.053308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.001958, 15.807419, 18.986830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.743796, 15.568634, 19.177444>,  <12.588900, 15.425363, 19.291813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.743796, 15.568634, 19.177444>,  <13.001958, 15.807419, 18.986830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.743796, 15.568634, 19.177444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157841, 0.714636, 0.681456,
		-0.747355, 0.364598, -0.555455,
		-0.645405, -0.596962, 0.476538,
		12.550175, 15.389545, 19.320406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.468091, 16.232267, 19.108534>,  <13.001958, 15.807419, 18.986830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.468091, 16.232267, 19.108534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431915, 15.935540, 19.374323>,  <12.410210, 15.757504, 19.533796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431915, 15.935540, 19.374323>,  <12.468091, 16.232267, 19.108534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.431915, 15.935540, 19.374323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060184, 0.670058, 0.739865,
		-0.994082, 0.026922, -0.105245,
		-0.090439, -0.741820, 0.664472,
		12.404783, 15.712995, 19.573664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.875796, 16.550688, 19.529240>,  <12.468091, 16.232267, 19.108534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.875796, 16.550688, 19.529240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.086091, 16.265566, 19.714933>,  <12.212268, 16.094494, 19.826349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.086091, 16.265566, 19.714933>,  <11.875796, 16.550688, 19.529240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.086091, 16.265566, 19.714933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120344, 0.602577, 0.788935,
		-0.842091, -0.358905, 0.402579,
		0.525737, -0.712803, 0.464233,
		12.243813, 16.051725, 19.854204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.838220, 16.718914, 20.338503>,  <11.875796, 16.550688, 19.529240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.838220, 16.718914, 20.338503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.121782, 16.438828, 20.304676>,  <12.291920, 16.270777, 20.284380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.121782, 16.438828, 20.304676>,  <11.838220, 16.718914, 20.338503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.121782, 16.438828, 20.304676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326706, 0.219747, 0.919225,
		-0.625072, -0.679273, 0.384544,
		0.708907, -0.700214, -0.084565,
		12.334455, 16.228764, 20.279306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.764755, 16.386091, 20.968784>,  <11.838220, 16.718914, 20.338503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.764755, 16.386091, 20.968784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.140700, 16.322783, 20.847717>,  <12.366267, 16.284798, 20.775076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.140700, 16.322783, 20.847717>,  <11.764755, 16.386091, 20.968784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.140700, 16.322783, 20.847717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341511, 0.421471, 0.840079,
		-0.005396, -0.892924, 0.450176,
		0.939863, -0.158273, -0.302668,
		12.422659, 16.275301, 20.756916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.160367, 16.054893, 21.437193>,  <11.764755, 16.386091, 20.968784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.160367, 16.054893, 21.437193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.447097, 16.241583, 21.229990>,  <12.619135, 16.353598, 21.105669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.447097, 16.241583, 21.229990>,  <12.160367, 16.054893, 21.437193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.447097, 16.241583, 21.229990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400053, 0.333170, 0.853789,
		0.571068, -0.819247, 0.052110,
		0.716825, 0.466724, -0.518005,
		12.662145, 16.381599, 21.074589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.774010, 16.071350, 21.886618>,  <12.160367, 16.054893, 21.437193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.774010, 16.071350, 21.886618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.896519, 16.329889, 21.607067>,  <12.970024, 16.485014, 21.439337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.896519, 16.329889, 21.607067>,  <12.774010, 16.071350, 21.886618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.896519, 16.329889, 21.607067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417176, 0.568774, 0.708844,
		0.855665, -0.508653, -0.095442,
		0.306271, 0.646349, -0.698878,
		12.988400, 16.523794, 21.397404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.427971, 16.310013, 22.012896>,  <12.774010, 16.071350, 21.886618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.427971, 16.310013, 22.012896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.290104, 16.608450, 21.785019>,  <13.207383, 16.787512, 21.648293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.290104, 16.608450, 21.785019>,  <13.427971, 16.310013, 22.012896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.290104, 16.608450, 21.785019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346395, 0.665135, 0.661518,
		0.872476, 0.030667, -0.487694,
		-0.344669, 0.746093, -0.569691,
		13.186704, 16.832277, 21.614111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.990536, 16.767506, 21.913795>,  <13.427971, 16.310013, 22.012896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.990536, 16.767506, 21.913795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.668922, 16.994780, 21.843714>,  <13.475955, 17.131144, 21.801666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.668922, 16.994780, 21.843714>,  <13.990536, 16.767506, 21.913795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.668922, 16.994780, 21.843714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329471, 0.671036, 0.664198,
		0.494956, 0.476313, -0.726736,
		-0.804032, 0.568187, -0.175202,
		13.427712, 17.165236, 21.791153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.242377, 17.564035, 21.831053>,  <13.990536, 16.767506, 21.913795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.242377, 17.564035, 21.831053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.850410, 17.562899, 21.910809>,  <13.615231, 17.562216, 21.958662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.850410, 17.562899, 21.910809>,  <14.242377, 17.564035, 21.831053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.850410, 17.562899, 21.910809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129369, 0.751856, 0.646511,
		-0.151749, 0.659321, -0.736388,
		-0.979916, -0.002842, 0.199389,
		13.556436, 17.562046, 21.970625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.065328, 18.308086, 21.767229>,  <14.242377, 17.564035, 21.831053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.065328, 18.308086, 21.767229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.792642, 18.108366, 21.981131>,  <13.629030, 17.988533, 22.109472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.792642, 18.108366, 21.981131>,  <14.065328, 18.308086, 21.767229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.792642, 18.108366, 21.981131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060471, 0.689965, 0.721313,
		-0.729113, 0.524067, -0.440167,
		-0.681716, -0.499301, 0.534753,
		13.588127, 17.958576, 22.141556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.700371, 18.736963, 22.041561>,  <14.065328, 18.308086, 21.767229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.700371, 18.736963, 22.041561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.626074, 18.434883, 22.293013>,  <13.581495, 18.253635, 22.443884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.626074, 18.434883, 22.293013>,  <13.700371, 18.736963, 22.041561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.626074, 18.434883, 22.293013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163197, 0.607167, 0.777634,
		-0.968951, 0.247031, 0.010469,
		-0.185743, -0.755198, 0.628630,
		13.570351, 18.208324, 22.481602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.349630, 19.149635, 22.602098>,  <13.700371, 18.736963, 22.041561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.349630, 19.149635, 22.602098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.459124, 18.810730, 22.784182>,  <13.524819, 18.607388, 22.893431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.459124, 18.810730, 22.784182>,  <13.349630, 19.149635, 22.602098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.459124, 18.810730, 22.784182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073743, 0.490380, 0.868383,
		-0.958974, -0.204137, 0.196713,
		0.273734, -0.847264, 0.455208,
		13.541244, 18.556551, 22.920744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.956147, 19.063131, 23.221144>,  <13.349630, 19.149635, 22.602098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.956147, 19.063131, 23.221144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.274700, 18.829786, 23.284975>,  <13.465832, 18.689779, 23.323275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.274700, 18.829786, 23.284975>,  <12.956147, 19.063131, 23.221144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.274700, 18.829786, 23.284975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128591, 0.421151, 0.897829,
		-0.590965, -0.694494, 0.410412,
		0.796382, -0.583361, 0.159579,
		13.513615, 18.654778, 23.332850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.782842, 18.732412, 23.694244>,  <12.956147, 19.063131, 23.221144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.782842, 18.732412, 23.694244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.176012, 18.666409, 23.726810>,  <13.411914, 18.626806, 23.746349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.176012, 18.666409, 23.726810>,  <12.782842, 18.732412, 23.694244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.176012, 18.666409, 23.726810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009039, 0.398636, 0.917065,
		-0.183779, -0.902143, 0.390339,
		0.982926, -0.165009, 0.081416,
		13.470890, 18.616905, 23.751236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.857227, 18.585459, 24.415443>,  <12.782842, 18.732412, 23.694244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.857227, 18.585459, 24.415443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.240567, 18.640032, 24.315083>,  <13.470572, 18.672775, 24.254866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.240567, 18.640032, 24.315083>,  <12.857227, 18.585459, 24.415443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.240567, 18.640032, 24.315083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172121, 0.425134, 0.888614,
		0.227903, -0.894789, 0.383945,
		0.958350, 0.136433, -0.250901,
		13.528072, 18.680962, 24.239813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.371170, 18.231159, 24.970291>,  <12.857227, 18.585459, 24.415443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.371170, 18.231159, 24.970291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.523038, 18.546137, 24.776062>,  <13.614159, 18.735123, 24.659525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.523038, 18.546137, 24.776062>,  <13.371170, 18.231159, 24.970291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.523038, 18.546137, 24.776062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153893, 0.463804, 0.872469,
		0.912232, -0.405976, 0.054910,
		0.379669, 0.787444, -0.485574,
		13.636939, 18.782370, 24.630390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.042120, 18.400175, 25.342947>,  <13.371170, 18.231159, 24.970291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.042120, 18.400175, 25.342947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.968353, 18.711336, 25.102661>,  <13.924093, 18.898033, 24.958490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.968353, 18.711336, 25.102661>,  <14.042120, 18.400175, 25.342947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.968353, 18.711336, 25.102661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245491, 0.628281, 0.738239,
		0.951695, -0.011325, -0.306835,
		-0.184418, 0.777904, -0.600713,
		13.913028, 18.944708, 24.922447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.415021, 18.894119, 25.671886>,  <14.042120, 18.400175, 25.342947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.415021, 18.894119, 25.671886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.187085, 19.129450, 25.442400>,  <14.050323, 19.270649, 25.304707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.187085, 19.129450, 25.442400>,  <14.415021, 18.894119, 25.671886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.187085, 19.129450, 25.442400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209905, 0.779212, 0.590567,
		0.794495, 0.216103, -0.567519,
		-0.569840, 0.588327, -0.573718,
		14.016133, 19.305948, 25.270285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
